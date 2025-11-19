uint64_t sub_2250B7EE8()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    type metadata accessor for SessionID();
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;

    v19 = sub_225095AFC(v16, v18, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_22506F000, v11, v12, "%s: cancelling daemon acquisition", v14, 0xCu);
    sub_225073BF0(v15);
    MEMORY[0x22AA65DF0](v15, -1, -1);
    v20 = v14;
    v5 = v25;
    MEMORY[0x22AA65DF0](v20, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
  v21 = v1 + *(*v1 + 304);
  os_unfair_lock_lock(v21);
  *(v21 + 4) = 1;
  os_unfair_lock_unlock(v21);
  v22 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v5, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v1;

  sub_2250E1D44();
}

uint64_t sub_2250B8220()
{
  sub_225072C10();
  v1 = *(v0 + 16);
  sub_2250B8278();
  sub_225075274();

  return v2();
}

uint64_t sub_2250B8278()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    type metadata accessor for SessionID();
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    v14 = sub_225095AFC(v11, v13, v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22506F000, v7, v8, "%s: cancelling daemon acquisition on actor", v9, 0xCu);
    sub_225073BF0(v10);
    MEMORY[0x22AA65DF0](v10, -1, -1);
    MEMORY[0x22AA65DF0](v9, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  v15 = v1 + *(*v1 + 304);
  os_unfair_lock_lock(v15);
  *(v15 + 4) = 1;
  os_unfair_lock_unlock(v15);
  return sub_2250B84E4();
}

uint64_t sub_2250B84E4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(*v0 + 304);
  os_unfair_lock_lock(v6);
  v7 = *(v6 + 4);
  os_unfair_lock_unlock(v6);
  if (v7 & 1) != 0 || (result = static Task<>.isCancelled.getter(), (result))
  {
    CCLog.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v1;
      v13 = v12;
      v20 = v12;
      *v11 = 136315138;
      type metadata accessor for SessionID();
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;

      v17 = sub_225095AFC(v14, v16, &v20);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_22506F000, v9, v10, "%s: daemon acquisition was cancelled", v11, 0xCu);
      sub_225073BF0(v13);
      MEMORY[0x22AA65DF0](v13, -1, -1);
      MEMORY[0x22AA65DF0](v11, -1, -1);

      (*(v2 + 8))(v5, v19);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    sub_2250B7520(1u);
    type metadata accessor for CancellationError();
    sub_2250C8748(&qword_280D535B0, MEMORY[0x277D85678]);
    swift_allocError();
    CancellationError.init()();
    return swift_willThrow();
  }

  return result;
}

void sub_2250B87CC()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315138;
    type metadata accessor for SessionID();
    v20 = v1;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    v17 = sub_225095AFC(v14, v16, v21);
    v2 = v20;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22506F000, v9, v10, "%s: starting daemon acquisition", v12, 0xCu);
    sub_225073BF0(v13);
    MEMORY[0x22AA65DF0](v13, -1, -1);
    MEMORY[0x22AA65DF0](v12, -1, -1);

    (*(v5 + 8))(v8, v19);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  sub_2250B84E4();
  if (!v2)
  {
    v18 = *(*v3 + 296);
    if (*(v3 + v18))
    {
      if (*(v3 + v18) != 1)
      {
        v21[0] = 0;
        v21[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
        MEMORY[0x22AA62E50](0xD000000000000012, 0x80000002254797A0);
        MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
        v22 = *(v3 + v18);
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    else
    {
      sub_2250B7520(2u);
    }
  }
}

uint64_t sub_2250B8B48()
{
  v1 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v137 = *(v1 - 8);
  v138 = v1;
  v2 = *(v137 + 64);
  MEMORY[0x28223BE20](v1);
  v136 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v133 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = &v132 - v8;
  v9 = type metadata accessor for Logger();
  v147 = *(v9 - 8);
  v148 = v9;
  v10 = *(v147 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v134 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v132 - v14;
  MEMORY[0x28223BE20](v13);
  v139 = &v132 - v15;
  v16 = type metadata accessor for SaltedHash();
  v141 = *(v16 - 8);
  v17 = *(v141 + 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v149 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v132 - v24;
  v26 = type metadata accessor for SessionInvalidationContext();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v144 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v143 = &v132 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v132 - v33;
  v35 = qword_280D538D0;
  swift_beginAccess();
  v146 = v35;
  sub_2250C853C(v0 + v35, v25, &unk_27D718E60, &unk_225444780);
  if (sub_22507C8E8(v25, 1, v26) == 1)
  {
    sub_2250C86F4(v25, &unk_27D718E60, &unk_225444780);
    return 1;
  }

  v37 = *(v27 + 32);
  v135 = v26;
  v37(v34, v25, v26);
  v38 = *(*v0 + 280);
  v145 = v0;
  v39 = *&v38[v0];
  v40 = v27;
  if (v39)
  {
    v41 = v39;
    v42 = [v41 deviceID];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    SessionInvalidationContext.deviceIDHash.getter();
    sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_225444480;
    *(v46 + 32) = v43;
    *(v46 + 40) = v45;
    LOBYTE(v41) = SaltedHash.matches(_:)();

    (*(v141 + 1))(v19, v16);
    if ((v41 & 1) == 0)
    {
      v60 = v139;
      CCLog.getter();
      v61 = v145;

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v151[0] = v65;
        *v64 = 136315138;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;

        v69 = sub_225095AFC(v66, v68, v151);

        *(v64 + 4) = v69;
        _os_log_impl(&dword_22506F000, v62, v63, "%s: Previous invalidation context is from a different device ID.", v64, 0xCu);
        sub_225073BF0(v65);
        MEMORY[0x22AA65DF0](v65, -1, -1);
        MEMORY[0x22AA65DF0](v64, -1, -1);

        (*(v147 + 8))(v139, v148);
      }

      else
      {

        (*(v147 + 8))(v60, v148);
      }

      v70 = v135;
      (*(v27 + 8))(v34, v135);
      v71 = v149;
      sub_22507C8C0(v149, 1, 1, v70);
      v72 = v146;
      swift_beginAccess();
      v73 = v61 + v72;
      goto LABEL_49;
    }
  }

  v139 = v38;
  v141 = v34;
  v47 = SessionInvalidationContext.primaryServiceName.getter();
  v49 = v48;
  v50 = v142;
  AnySessionConfiguration.encryption.getter();
  v51 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v50, 1, v51) == 1)
  {
    sub_2250C86F4(v50, &unk_27D7190E0, &unk_2254447D0);
    v53 = v143;
    v52 = v144;
    if (!v49)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  v54 = v136;
  AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
  (*(*(v51 - 8) + 8))(v50, v51);
  v55 = AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
  v57 = v56;
  (*(v137 + 8))(v54, v138);
  v53 = v143;
  if (!v49)
  {
    v52 = v144;
    if (!v57)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  v52 = v144;
  if (!v57)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v47 == v55 && v49 == v57)
  {

    goto LABEL_39;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
LABEL_39:
    v99 = v145;
    v100 = *&v139[v145];
    if (!v100)
    {
LABEL_53:
      (*(v40 + 8))(v141, v135);
      return 1;
    }

    v101 = v40;
    v102 = [v100 account];
    v103 = [v102 accountID];
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;

    v107 = sub_2250C8B38(v104, v106);
    v109 = v108;

    sub_22508D04C(v107, v109);
    v111 = SessionInvalidationContext.privilegedInfoHash.getter();
    v112 = v110;
    if (v109 >> 60 == 15)
    {
      if (v110 >> 60 == 15)
      {
        sub_22508D128(v107, v109);

        sub_2250C7B18(v107, v109);
LABEL_52:
        v40 = v101;
        goto LABEL_53;
      }
    }

    else if (v110 >> 60 != 15)
    {
      sub_22508D04C(v107, v109);
      sub_2250C7B2C(v111, v112);
      v131 = MEMORY[0x22AA62370](v107, v109, v111, v112);
      sub_2250C7B18(v111, v112);
      sub_22508D128(v107, v109);
      sub_2250C7B18(v111, v112);
      sub_2250C7B18(v107, v109);
      if (v131)
      {
        sub_22508D128(v107, v109);

        goto LABEL_52;
      }

      goto LABEL_45;
    }

    sub_2250C7B18(v107, v109);
    sub_2250C7B18(v111, v112);
LABEL_45:
    CCLog.getter();
    v113 = v135;
    (*(v101 + 16))(v52, v141, v135);
    sub_22508D04C(v107, v109);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();
    sub_22508D128(v107, v109);
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v144 = v102;
      v117 = v52;
      v118 = v116;
      v143 = swift_slowAlloc();
      v150 = v143;
      *v118 = 136315394;
      v151[0] = SessionInvalidationContext.privilegedInfoHash.getter();
      v151[1] = v119;
      sub_2250B0DFC(&qword_27D718EA8, &qword_2254447E0);
      v120 = String.init<A>(describing:)();
      v122 = v121;
      v123 = *(v101 + 8);
      v123(v117, v135);
      v124 = sub_225095AFC(v120, v122, &v150);

      *(v118 + 4) = v124;
      *(v118 + 12) = 2080;
      sub_22508D04C(v107, v109);
      v125 = Data.description.getter();
      v127 = v126;
      sub_22508D128(v107, v109);
      v128 = sub_225095AFC(v125, v127, &v150);
      v113 = v135;

      *(v118 + 14) = v128;
      _os_log_impl(&dword_22506F000, v114, v115, "Previous invalidation context has a different privileged info hash from the new session configuration, ignoring it. Previous privileged info hash %s, session configuration privileged info hash %s", v118, 0x16u);
      v129 = v143;
      swift_arrayDestroy();
      v99 = v145;
      MEMORY[0x22AA65DF0](v129, -1, -1);
      MEMORY[0x22AA65DF0](v118, -1, -1);

      sub_22508D128(v107, v109);
    }

    else
    {

      sub_22508D128(v107, v109);
      v123 = *(v101 + 8);
      v123(v52, v113);
    }

    (*(v147 + 8))(v134, v148);
    v123(v141, v113);
    v71 = v149;
    sub_22507C8C0(v149, 1, 1, v113);
    v130 = v146;
    swift_beginAccess();
    v73 = v99 + v130;
    goto LABEL_49;
  }

LABEL_23:
  v74 = v140;
  CCLog.getter();
  v75 = v141;
  v76 = v135;
  (*(v40 + 16))(v53, v141, v135);
  v77 = v145;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v151[0] = v143;
    *v80 = 136315394;
    v81 = SessionInvalidationContext.primaryServiceName.getter();
    if (v82)
    {
      v83 = v81;
    }

    else
    {
      v83 = 7104878;
    }

    v84 = v76;
    if (v82)
    {
      v85 = v82;
    }

    else
    {
      v85 = 0xE300000000000000;
    }

    v144 = *(v40 + 8);
    (v144)(v53, v84);
    v86 = sub_225095AFC(v83, v85, v151);

    *(v80 + 4) = v86;
    *(v80 + 12) = 2080;
    v87 = v133;
    AnySessionConfiguration.encryption.getter();
    if (sub_22507C8E8(v87, 1, v51) == 1)
    {
      sub_2250C86F4(v87, &unk_27D7190E0, &unk_2254447D0);
      v88 = v140;
      v89 = v141;
    }

    else
    {
      v91 = v136;
      AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
      (*(*(v51 - 8) + 8))(v87, v51);
      v92 = AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
      v94 = v93;
      (*(v137 + 8))(v91, v138);
      v88 = v140;
      v89 = v141;
      if (v94)
      {
        v95 = v92;
LABEL_36:
        v96 = sub_225095AFC(v95, v94, v151);

        *(v80 + 14) = v96;
        _os_log_impl(&dword_22506F000, v78, v79, "Previous invalidation context has a different primary service name from the new session configuration, ignoring it. Previous service name %s. Session configuration service name %s", v80, 0x16u);
        v97 = v143;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v97, -1, -1);
        MEMORY[0x22AA65DF0](v80, -1, -1);

        (*(v147 + 8))(v88, v148);
        v76 = v135;
        (v144)(v89, v135);
        goto LABEL_37;
      }
    }

    v94 = 0xE300000000000000;
    v95 = 7104878;
    goto LABEL_36;
  }

  v90 = *(v40 + 8);
  v90(v53, v76);
  (*(v147 + 8))(v74, v148);
  v90(v75, v76);
LABEL_37:
  v71 = v149;
  sub_22507C8C0(v149, 1, 1, v76);
  v98 = v146;
  swift_beginAccess();
  v73 = v77 + v98;
LABEL_49:
  sub_2250C7ACC(v71, v73, &unk_27D718E60, &unk_225444780);
  swift_endAccess();
  return 0;
}

uint64_t sub_2250B9AE8()
{
  v1 = (v0 + *(*v0 + 272));
  if (!v1[1])
  {
    v2 = [objc_opt_self() currentPersona];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 identifier];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = v1[1];
      *v1 = v5;
      v1[1] = v7;
    }
  }

  return sub_2250B7520(3);
}

uint64_t sub_2250B9BA8(void (*a1)(void, void), uint64_t a2)
{
  v187 = a2;
  v186 = a1;
  v184 = type metadata accessor for SessionReadinessError();
  v175 = *(v184 - 8);
  v3 = *(v175 + 64);
  v4 = MEMORY[0x28223BE20](v184);
  v176 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v177 = &v165 - v7;
  MEMORY[0x28223BE20](v6);
  v181 = &v165 - v8;
  v182 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v9 = *(*(v182 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v182);
  v174 = (&v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v183 = &v165 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v173 = (&v165 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v180 = &v165 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v178 = &v165 - v19;
  MEMORY[0x28223BE20](v18);
  v179 = &v165 - v20;
  v21 = type metadata accessor for Logger();
  v185 = *(v21 - 8);
  v22 = *(v185 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v165 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v165 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v165 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v165 - v35;
  v37 = sub_2250B0DFC(&qword_27D718EC8, &qword_225444818);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v165 - v39;
  v41 = v188;
  result = sub_2250B84E4();
  if (v41)
  {
    return result;
  }

  v166 = v31;
  v170 = v34;
  v171 = 0;
  v188 = v40;
  v43 = v183;
  v168 = v25;
  v169 = v28;
  v44 = v184;
  v172 = v21;
  v45 = sub_2250B7308();
  v46 = v45;
  v47 = v186;
  if (!v45 || v45 != v186)
  {
    CKLog.getter();
    v75 = v179;
    sub_2250C853C(v187, v179, &unk_27D719000, &qword_225444F50);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *v189 = v47;
      v190 = v188;
      *v78 = 136315394;
      _s11DeviceCheckCMa(0);

      v79 = String.init<A>(describing:)();
      v167 = v46;
      v81 = sub_225095AFC(v79, v80, &v190);

      *(v78 + 4) = v81;
      *(v78 + 12) = 2080;
      sub_2250C853C(v75, v180, &unk_27D719000, &qword_225444F50);
      v82 = String.init<A>(describing:)();
      v83 = v75;
      v85 = v84;
      sub_2250C86F4(v83, &unk_27D719000, &qword_225444F50);
      v86 = sub_225095AFC(v82, v85, &v190);

      *(v78 + 14) = v86;
      _os_log_impl(&dword_22506F000, v76, v77, "Ignoring event from obsolete device check instance %s %s", v78, 0x16u);
      v87 = v188;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v87, -1, -1);
      MEMORY[0x22AA65DF0](v78, -1, -1);

      return (*(v185 + 8))(v36, v172);
    }

    sub_2250C86F4(v75, &unk_27D719000, &qword_225444F50);
    v73 = *(v185 + 8);
    v74 = v36;
    goto LABEL_12;
  }

  v48 = v2;
  v179 = *(*v2 + 296);
  v49 = v179[v2];
  v50 = *(v37 + 48);
  v51 = v187;
  v52 = v188;
  *v188 = v49;
  sub_2250C853C(v51, v52 + v50, &unk_27D719000, &qword_225444F50);
  v53 = v172;
  v54 = v181;
  if (v49 == 1)
  {
LABEL_7:
    sub_2250C86F4(&v188[v50], &unk_27D719000, &qword_225444F50);
    v55 = v170;
    CCLog.getter();
    v56 = v178;
    sub_2250C853C(v187, v178, &unk_27D719000, &qword_225444F50);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v57, v58))
    {

      sub_2250C86F4(v56, &unk_27D719000, &qword_225444F50);
      v73 = *(v185 + 8);
      v74 = v55;
      v88 = v53;
      return v73(v74, v88);
    }

    v59 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v190 = v188;
    *v59 = 136315650;
    type metadata accessor for SessionID();
    v167 = v46;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;

    v63 = sub_225095AFC(v60, v62, &v190);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = v56;
    sub_2250C853C(v56, v180, &unk_27D719000, &qword_225444F50);
    v65 = String.init<A>(describing:)();
    v67 = v66;
    sub_2250C86F4(v64, &unk_27D719000, &qword_225444F50);
    v68 = sub_225095AFC(v65, v67, &v190);

    *(v59 + 14) = v68;
    *(v59 + 22) = 2080;
    v189[0] = v179[v48];
    sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
    v69 = String.init<A>(describing:)();
    v71 = sub_225095AFC(v69, v70, &v190);

    *(v59 + 24) = v71;
    _os_log_impl(&dword_22506F000, v57, v58, "%s: Ignoring received device acquisition event: %s in state: %s", v59, 0x20u);
    v72 = v188;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v72, -1, -1);
    MEMORY[0x22AA65DF0](v59, -1, -1);

    v73 = *(v185 + 8);
    v74 = v170;
LABEL_12:
    v88 = v172;
    return v73(v74, v88);
  }

  if (v49 != 3)
  {
    if (v49 == 9)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_14:
    v89 = v188;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v167 = v46;
      v90 = v175;
      v91 = &v89[v50];
      v92 = v54;
      v93 = v54;
      v94 = v44;
      (*(v175 + 32))(v92, v91, v44);
      CCLog.getter();
      v95 = v43;
      sub_2250C853C(v187, v43, &unk_27D719000, &qword_225444F50);
      v96 = *(v90 + 16);
      v97 = v177;
      v187 = (v90 + 16);
      v188 = v96;
      (v96)(v177, v93, v44);
      v98 = v48;

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = v90;
        LODWORD(v178) = v100;
        v103 = v101;
        v174 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v190 = v179;
        *v103 = 136315650;
        v173 = v99;
        type metadata accessor for SessionID();
        v104 = v180;
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = v106;

        v108 = sub_225095AFC(v105, v107, &v190);

        *(v103 + 4) = v108;
        *(v103 + 12) = 2080;
        sub_2250C853C(v95, v104, &unk_27D719000, &qword_225444F50);
        v109 = String.init<A>(describing:)();
        v111 = v110;
        sub_2250C86F4(v95, &unk_27D719000, &qword_225444F50);
        v112 = v109;
        v48 = v98;
        v113 = sub_225095AFC(v112, v111, &v190);

        *(v103 + 14) = v113;
        *(v103 + 22) = 2112;
        sub_2250C8748(&qword_280D53600, MEMORY[0x277CFAA78]);
        swift_allocError();
        v114 = v177;
        (v188)(v115, v177, v94);
        v116 = _swift_stdlib_bridgeErrorToNSError();
        v186 = *(v102 + 8);
        v186(v114, v94);
        *(v103 + 24) = v116;
        v117 = v174;
        *v174 = v116;
        v118 = v173;
        _os_log_impl(&dword_22506F000, v173, v178, "%s: Received blocking device device acquisition event: %s, readinessError: %@", v103, 0x20u);
        sub_2250C86F4(v117, &unk_27D719030, &qword_225443AB0);
        MEMORY[0x22AA65DF0](v117, -1, -1);
        v119 = v179;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v119, -1, -1);
        MEMORY[0x22AA65DF0](v103, -1, -1);
      }

      else
      {

        v186 = *(v90 + 8);
        v186(v97, v44);
        sub_2250C86F4(v95, &unk_27D719000, &qword_225444F50);
      }

      (*(v185 + 8))(v169, v172);
      v120 = v94;
      v159 = *(v48 + qword_280D538C0);
      type metadata accessor for CKSessionReadinessErrorBox();
      v160 = v181;
      (v188)(v176, v181, v120);
      v161 = CKSessionReadinessErrorBox.__allocating_init(_:)();
      [v159 noteSessionReadinessError_];

      sub_2250B7520(3u);

      return (v186)(v160, v120);
    }

    else
    {
      v121 = v168;
      CCLog.getter();
      v122 = v174;
      sub_2250C853C(v187, v174, &unk_27D719000, &qword_225444F50);
      v123 = v48;

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = v122;
        v127 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v190 = v187;
        *v127 = 136315650;
        type metadata accessor for SessionID();
        LODWORD(v186) = v125;
        v128 = v180;
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v129 = dispatch thunk of CustomStringConvertible.description.getter();
        v131 = v130;

        v132 = sub_225095AFC(v129, v131, &v190);

        *(v127 + 4) = v132;
        v167 = v46;
        *(v127 + 12) = 2080;
        sub_2250C853C(v126, v128, &unk_27D719000, &qword_225444F50);
        v133 = String.init<A>(describing:)();
        v134 = v172;
        v135 = v133;
        v137 = v136;
        sub_2250C86F4(v126, &unk_27D719000, &qword_225444F50);
        v138 = sub_225095AFC(v135, v137, &v190);

        *(v127 + 14) = v138;
        *(v127 + 22) = 2080;
        v189[0] = v179[v123];
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        v139 = String.init<A>(describing:)();
        v141 = sub_225095AFC(v139, v140, &v190);

        *(v127 + 24) = v141;
        _os_log_impl(&dword_22506F000, v124, v186, "%s: Ignoring received device acquisition event: %s in unexpected state: %s", v127, 0x20u);
        v142 = v187;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v142, -1, -1);
        MEMORY[0x22AA65DF0](v127, -1, -1);

        (*(v185 + 8))(v168, v134);
      }

      else
      {

        sub_2250C86F4(v122, &unk_27D719000, &qword_225444F50);
        (*(v185 + 8))(v121, v172);
      }

      return sub_2250C86F4(v188, &qword_27D718EC8, &qword_225444818);
    }
  }

  v143 = v166;
  CCLog.getter();
  v144 = v173;
  sub_2250C853C(v187, v173, &unk_27D719000, &qword_225444F50);
  v145 = v48;

  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v190 = v188;
    *v148 = 136315394;
    type metadata accessor for SessionID();
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v149 = dispatch thunk of CustomStringConvertible.description.getter();
    v151 = v150;

    v152 = sub_225095AFC(v149, v151, &v190);

    *(v148 + 4) = v152;
    *(v148 + 12) = 2080;
    sub_2250C853C(v144, v180, &unk_27D719000, &qword_225444F50);
    v153 = String.init<A>(describing:)();
    v167 = v46;
    v154 = v153;
    v156 = v155;
    sub_2250C86F4(v144, &unk_27D719000, &qword_225444F50);
    v157 = sub_225095AFC(v154, v156, &v190);

    *(v148 + 14) = v157;
    _os_log_impl(&dword_22506F000, v146, v147, "%s: received device acquisition event: %s", v148, 0x16u);
    v158 = v188;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v158, -1, -1);
    MEMORY[0x22AA65DF0](v148, -1, -1);

    (*(v185 + 8))(v166, v172);
  }

  else
  {

    sub_2250C86F4(v144, &unk_27D719000, &qword_225444F50);
    (*(v185 + 8))(v143, v172);
  }

  v162 = v145 + *(*v145 + 240);
  v163 = *v162;
  *v162 = v186;
  v164 = *(v162 + 8);
  *(v162 + 8) = 1;

  sub_2250C79F8(v163, v164);
  sub_2250B7520(4u);
}

void sub_2250BAEEC(char *a1, void (*a2)(void, void, void))
{
  v183 = a2;
  v182 = a1;
  v176 = type metadata accessor for SessionReadinessError();
  v172 = *(v176 - 8);
  v3 = *(v172 + 64);
  v4 = MEMORY[0x28223BE20](v176);
  v173 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v174 = &v161 - v7;
  MEMORY[0x28223BE20](v6);
  v178 = &v161 - v8;
  v180 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v9 = *(*(v180 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v180);
  v170 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v171 = &v161 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v169 = &v161 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v179 = &v161 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v175 = (&v161 - v19);
  MEMORY[0x28223BE20](v18);
  v177 = &v161 - v20;
  v21 = type metadata accessor for Logger();
  v181 = *(v21 - 8);
  v22 = *(v181 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v161 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v161 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v161 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v161 - v35;
  v37 = sub_2250B0DFC(&unk_27D718EF8, &qword_225444850);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v161 - v39;
  v41 = v184;
  sub_2250B84E4();
  if (v41)
  {
    return;
  }

  v163 = v31;
  v165 = v34;
  v167 = v40;
  v164 = v25;
  v42 = v28;
  v168 = v21;
  v184 = 0;
  v43 = sub_2250B735C();
  v44 = v43;
  v45 = v182;
  if (v43 && v43 == v182)
  {
    v46 = v2;
    v166 = v43;
    v177 = *(*v2 + 296);
    v47 = v177[v2];
    v48 = *(v37 + 48);
    v49 = v167;
    *v167 = v47;
    sub_2250C853C(v183, &v49[v48], &qword_27D719010, &qword_225444830);
    v50 = v168;
    v51 = v178;
    if (v47 == 1)
    {
      goto LABEL_7;
    }

    if (v47 != 4)
    {
      if (v47 == 9)
      {
LABEL_7:
        sub_2250C86F4(&v49[v48], &qword_27D719010, &qword_225444830);
        v52 = v165;
        CCLog.getter();
        v53 = v175;
        sub_2250C853C(v183, v175, &qword_27D719010, &qword_225444830);

        v54 = Logger.logObject.getter();
        v55 = v46;
        v56 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v54, v56))
        {
          v57 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v186 = v183;
          *v57 = 136315650;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
          v58 = dispatch thunk of CustomStringConvertible.description.getter();
          v60 = v59;

          v61 = sub_225095AFC(v58, v60, &v186);

          *(v57 + 4) = v61;
          *(v57 + 12) = 2080;
          v62 = v53;
          sub_2250C853C(v53, v179, &qword_27D719010, &qword_225444830);
          v63 = String.init<A>(describing:)();
          v65 = v64;
          sub_2250C86F4(v62, &qword_27D719010, &qword_225444830);
          v66 = sub_225095AFC(v63, v65, &v186);

          *(v57 + 14) = v66;
          *(v57 + 22) = 2080;
          LOBYTE(v185) = v177[v55];
          sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
          v67 = String.init<A>(describing:)();
          v69 = sub_225095AFC(v67, v68, &v186);

          *(v57 + 24) = v69;
          _os_log_impl(&dword_22506F000, v54, v56, "%s: Ignoring received account acquisition event: %s in state: %s", v57, 0x20u);
          v70 = v183;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v70, -1, -1);
          MEMORY[0x22AA65DF0](v57, -1, -1);

          (*(v181 + 8))(v165, v168);
        }

        else
        {

          sub_2250C86F4(v53, &qword_27D719010, &qword_225444830);
          (*(v181 + 8))(v52, v168);
        }

        return;
      }

      goto LABEL_14;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_14:
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v85 = v172;
        v86 = &v49[v48];
        v87 = v176;
        (*(v172 + 32))(v51, v86, v176);
        CCLog.getter();
        v88 = v171;
        sub_2250C853C(v183, v171, &qword_27D719010, &qword_225444830);
        v183 = *(v85 + 16);
        v183(v174, v51, v87);

        v182 = v42;
        v89 = Logger.logObject.getter();
        v90 = v46;
        v91 = static os_log_type_t.default.getter();
        v92 = os_log_type_enabled(v89, v91);
        v93 = v179;
        if (v92)
        {
          v94 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          v186 = v177;
          *v94 = 136315650;
          LODWORD(v170) = v91;
          v162 = v90;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v97 = v96;

          v98 = sub_225095AFC(v95, v97, &v186);

          *(v94 + 4) = v98;
          *(v94 + 12) = 2080;
          sub_2250C853C(v88, v93, &qword_27D719010, &qword_225444830);
          v99 = String.init<A>(describing:)();
          v100 = v88;
          v101 = v99;
          v103 = v102;
          sub_2250C86F4(v100, &qword_27D719010, &qword_225444830);
          v104 = sub_225095AFC(v101, v103, &v186);

          *(v94 + 14) = v104;
          *(v94 + 22) = 2112;
          sub_2250C8748(&qword_280D53600, MEMORY[0x277CFAA78]);
          swift_allocError();
          v105 = v174;
          v183(v106, v174, v176);
          v107 = _swift_stdlib_bridgeErrorToNSError();
          v108 = *(v85 + 8);
          v108(v105, v176);
          *(v94 + 24) = v107;
          v109 = v175;
          *v175 = v107;
          _os_log_impl(&dword_22506F000, v89, v170, "%s: Received blocking account acquisition event: %s, readinessError: %@", v94, 0x20u);
          sub_2250C86F4(v109, &unk_27D719030, &qword_225443AB0);
          MEMORY[0x22AA65DF0](v109, -1, -1);
          v110 = v177;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v110, -1, -1);
          v111 = v94;
          v87 = v176;
          MEMORY[0x22AA65DF0](v111, -1, -1);

          (*(v181 + 8))(v182, v168);
          v112 = v162;
        }

        else
        {

          v108 = *(v85 + 8);
          v108(v174, v87);
          sub_2250C86F4(v88, &qword_27D719010, &qword_225444830);
          (*(v181 + 8))(v182, v168);
          v112 = v90;
        }

        v153 = *(v112 + qword_280D538C0);
        type metadata accessor for CKSessionReadinessErrorBox();
        v154 = v178;
        v183(v173, v178, v87);
        v155 = CKSessionReadinessErrorBox.__allocating_init(_:)();
        [v153 noteSessionReadinessError_];

        sub_2250B7520(4u);

        v108(v154, v87);
      }

      else
      {
        v113 = v164;
        CCLog.getter();
        v114 = v170;
        sub_2250C853C(v183, v170, &qword_27D719010, &qword_225444830);

        v115 = Logger.logObject.getter();
        v116 = v46;
        v117 = static os_log_type_t.default.getter();
        v118 = os_log_type_enabled(v115, v117);
        v119 = v179;
        if (v118)
        {
          v120 = v114;
          v121 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v186 = v183;
          *v121 = 136315650;
          type metadata accessor for SessionID();
          LODWORD(v182) = v117;
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
          v122 = dispatch thunk of CustomStringConvertible.description.getter();
          v124 = v123;

          v125 = sub_225095AFC(v122, v124, &v186);

          *(v121 + 4) = v125;
          *(v121 + 12) = 2080;
          sub_2250C853C(v120, v119, &qword_27D719010, &qword_225444830);
          v126 = v50;
          v127 = String.init<A>(describing:)();
          v129 = v128;
          sub_2250C86F4(v120, &qword_27D719010, &qword_225444830);
          v130 = sub_225095AFC(v127, v129, &v186);

          *(v121 + 14) = v130;
          *(v121 + 22) = 2080;
          LOBYTE(v185) = v177[v116];
          sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
          v131 = String.init<A>(describing:)();
          v133 = sub_225095AFC(v131, v132, &v186);

          *(v121 + 24) = v133;
          _os_log_impl(&dword_22506F000, v115, v182, "%s: Ignoring received account acquisition event: %s in unexpected state: %s", v121, 0x20u);
          v134 = v183;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v134, -1, -1);
          MEMORY[0x22AA65DF0](v121, -1, -1);

          (*(v181 + 8))(v164, v126);
        }

        else
        {

          sub_2250C86F4(v114, &qword_27D719010, &qword_225444830);
          (*(v181 + 8))(v113, v50);
        }

        sub_2250C86F4(v167, &unk_27D718EF8, &qword_225444850);
      }

      return;
    }

    v135 = *&v49[v48];
    v136 = v163;
    CCLog.getter();
    v137 = v169;
    sub_2250C853C(v183, v169, &qword_27D719010, &qword_225444830);

    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v162 = v46;
      v141 = v137;
      v142 = v140;
      v183 = swift_slowAlloc();
      v186 = v183;
      *v142 = 136315394;
      type metadata accessor for SessionID();
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v145 = v144;

      v146 = sub_225095AFC(v143, v145, &v186);

      *(v142 + 4) = v146;
      *(v142 + 12) = 2080;
      v147 = v135;
      sub_2250C853C(v141, v179, &qword_27D719010, &qword_225444830);
      v148 = String.init<A>(describing:)();
      v150 = v149;
      sub_2250C86F4(v141, &qword_27D719010, &qword_225444830);
      v151 = sub_225095AFC(v148, v150, &v186);
      v135 = v147;

      *(v142 + 14) = v151;
      _os_log_impl(&dword_22506F000, v138, v139, "%s: received account acquisition event: %s", v142, 0x16u);
      v152 = v183;
      swift_arrayDestroy();
      v45 = v182;
      MEMORY[0x22AA65DF0](v152, -1, -1);
      v46 = v162;
      MEMORY[0x22AA65DF0](v142, -1, -1);

      (*(v181 + 8))(v163, v168);
    }

    else
    {

      sub_2250C86F4(v137, &qword_27D719010, &qword_225444830);
      (*(v181 + 8))(v136, v50);
    }

    v156 = v46 + *(*v46 + 248);
    v157 = *v156;
    v158 = *(v156 + 8);
    *v156 = v45;
    *(v156 + 8) = v135;
    v159 = *(v156 + 16);
    *(v156 + 16) = 1;

    v160 = v135;
    sub_2250C7A0C(v157, v158, v159);
    sub_2250B7520(5u);
  }

  else
  {
    CKLog.getter();
    v71 = v177;
    sub_2250C853C(v183, v177, &qword_27D719010, &qword_225444830);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v186 = v183;
      *v74 = 136315394;
      v185 = v45;
      _s12AccountCheckCMa(0);

      v75 = String.init<A>(describing:)();
      v166 = v44;
      v77 = sub_225095AFC(v75, v76, &v186);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      sub_2250C853C(v71, v179, &qword_27D719010, &qword_225444830);
      v78 = String.init<A>(describing:)();
      v79 = v71;
      v80 = v78;
      v82 = v81;
      sub_2250C86F4(v79, &qword_27D719010, &qword_225444830);
      v83 = sub_225095AFC(v80, v82, &v186);

      *(v74 + 14) = v83;
      _os_log_impl(&dword_22506F000, v72, v73, "Ignoring event from obsolete account check instance %s %s", v74, 0x16u);
      v84 = v183;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v84, -1, -1);
      MEMORY[0x22AA65DF0](v74, -1, -1);
    }

    else
    {

      sub_2250C86F4(v71, &qword_27D719010, &qword_225444830);
    }

    (*(v181 + 8))(v36, v168);
  }
}

uint64_t sub_2250BC1F8(void (*a1)(void, void, void), uint64_t a2)
{
  v185 = a2;
  v182 = a1;
  v184 = type metadata accessor for SessionReadinessError();
  v173 = *(v184 - 8);
  v3 = *(v173 + 64);
  v4 = MEMORY[0x28223BE20](v184);
  v174 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v175 = &v163 - v7;
  MEMORY[0x28223BE20](v6);
  v178 = &v163 - v8;
  v179 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v9 = *(*(v179 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v179);
  v172 = (&v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v181 = &v163 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v171 = &v163 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v180 = &v163 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v176 = &v163 - v19;
  MEMORY[0x28223BE20](v18);
  v177 = &v163 - v20;
  v21 = type metadata accessor for Logger();
  v183 = *(v21 - 8);
  v22 = *(v183 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v163 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v163 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v163 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v163 - v35;
  v37 = sub_2250B0DFC(&qword_27D718F28, &qword_225444888);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v163 - v39;
  v41 = v186;
  result = sub_2250B84E4();
  if (v41)
  {
    return result;
  }

  v164 = v31;
  v186 = 0;
  v169 = v40;
  v167 = v34;
  v43 = v181;
  v165 = v25;
  v166 = v28;
  v44 = v184;
  v170 = v21;
  v45 = sub_2250B73A4();
  v46 = v45;
  v47 = v182;
  if (v45 && v45 == v182)
  {
    v48 = v2;
    v168 = v45;
    v177 = *(*v2 + 296);
    v49 = *(v2 + v177);
    v50 = *(v37 + 48);
    v51 = v169;
    v52 = &v169[v50];
    *v169 = v49;
    sub_2250C853C(v185, &v51[v50], &qword_27D718F08, &qword_225444868);
    v53 = v170;
    v54 = v180;
    v55 = v178;
    if (v49 == 1)
    {
LABEL_7:
      v56 = v180;
      sub_2250C86F4(v52, &qword_27D718F08, &qword_225444868);
      v57 = v167;
      CCLog.getter();
      v58 = v176;
      sub_2250C853C(v185, v176, &qword_27D718F08, &qword_225444868);

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v188 = v185;
        *v61 = 136315650;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;

        v65 = sub_225095AFC(v62, v64, &v188);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2080;
        sub_2250C853C(v58, v56, &qword_27D718F08, &qword_225444868);
        v66 = String.init<A>(describing:)();
        v67 = v58;
        v69 = v68;
        sub_2250C86F4(v67, &qword_27D718F08, &qword_225444868);
        v70 = sub_225095AFC(v66, v69, &v188);

        *(v61 + 14) = v70;
        *(v61 + 22) = 2080;
        v187[0] = *(v48 + v177);
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        v71 = String.init<A>(describing:)();
        v73 = sub_225095AFC(v71, v72, &v188);

        *(v61 + 24) = v73;
        _os_log_impl(&dword_22506F000, v59, v60, "%s: Ignoring received encryption acquisition event: %s in state: %s", v61, 0x20u);
        v74 = v185;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v74, -1, -1);
        MEMORY[0x22AA65DF0](v61, -1, -1);
      }

      else
      {

        sub_2250C86F4(v58, &qword_27D718F08, &qword_225444868);
      }

      return (*(v183 + 8))(v57, v170);
    }

    if (v49 != 5)
    {
      if (v49 == 9)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_14:
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v87 = v173;
        (*(v173 + 32))(v55, v52, v44);
        CCLog.getter();
        v88 = v43;
        sub_2250C853C(v185, v43, &qword_27D718F08, &qword_225444868);
        v89 = *(v87 + 16);
        v90 = v175;
        v185 = (v87 + 16);
        v182 = v89;
        v89(v175, v55, v44);

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v177 = v48;
          v94 = v180;
          v95 = v93;
          v172 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v188 = v176;
          *v95 = 136315650;
          LODWORD(v171) = v92;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
          v96 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = v97;

          v99 = sub_225095AFC(v96, v98, &v188);

          *(v95 + 4) = v99;
          *(v95 + 12) = 2080;
          sub_2250C853C(v43, v94, &qword_27D718F08, &qword_225444868);
          v100 = String.init<A>(describing:)();
          v102 = v101;
          sub_2250C86F4(v88, &qword_27D718F08, &qword_225444868);
          v103 = sub_225095AFC(v100, v102, &v188);

          *(v95 + 14) = v103;
          *(v95 + 22) = 2112;
          sub_2250C8748(&qword_280D53600, MEMORY[0x277CFAA78]);
          v104 = v184;
          swift_allocError();
          v105 = v175;
          v182(v106, v175, v104);
          v107 = _swift_stdlib_bridgeErrorToNSError();
          v108 = *(v87 + 8);
          v108(v105, v104);
          *(v95 + 24) = v107;
          v109 = v172;
          *v172 = v107;
          _os_log_impl(&dword_22506F000, v91, v171, "%s: Received blocking encryption acquisition event: %s, readinessError: %@", v95, 0x20u);
          sub_2250C86F4(v109, &unk_27D719030, &qword_225443AB0);
          MEMORY[0x22AA65DF0](v109, -1, -1);
          v110 = v176;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v110, -1, -1);
          v111 = v95;
          v48 = v177;
          MEMORY[0x22AA65DF0](v111, -1, -1);
        }

        else
        {

          v108 = *(v87 + 8);
          v154 = v90;
          v104 = v184;
          v108(v154, v184);
          sub_2250C86F4(v43, &qword_27D718F08, &qword_225444868);
        }

        (*(v183 + 8))(v166, v170);
        v155 = *(v48 + qword_280D538C0);
        type metadata accessor for CKSessionReadinessErrorBox();
        v156 = v178;
        v182(v174, v178, v104);
        v157 = CKSessionReadinessErrorBox.__allocating_init(_:)();
        [v155 noteSessionReadinessError_];

        sub_2250B7520(5u);

        return (v108)(v156, v104);
      }

      else
      {
        v112 = v165;
        CCLog.getter();
        v113 = v172;
        sub_2250C853C(v185, v172, &qword_27D718F08, &qword_225444868);

        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = v48;
          v117 = v54;
          v118 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v188 = v185;
          *v118 = 136315650;
          LODWORD(v184) = v115;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
          v119 = dispatch thunk of CustomStringConvertible.description.getter();
          v121 = v120;

          v122 = sub_225095AFC(v119, v121, &v188);

          *(v118 + 4) = v122;
          *(v118 + 12) = 2080;
          sub_2250C853C(v113, v117, &qword_27D718F08, &qword_225444868);
          v123 = v112;
          v124 = String.init<A>(describing:)();
          v126 = v125;
          sub_2250C86F4(v113, &qword_27D718F08, &qword_225444868);
          v127 = sub_225095AFC(v124, v126, &v188);

          *(v118 + 14) = v127;
          *(v118 + 22) = 2080;
          v187[0] = *(v116 + v177);
          sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
          v128 = String.init<A>(describing:)();
          v130 = sub_225095AFC(v128, v129, &v188);

          *(v118 + 24) = v130;
          _os_log_impl(&dword_22506F000, v114, v184, "%s: Ignoring received encryption acquisition event: %s in unexpected state: %s", v118, 0x20u);
          v131 = v185;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v131, -1, -1);
          MEMORY[0x22AA65DF0](v118, -1, -1);

          (*(v183 + 8))(v123, v170);
        }

        else
        {

          sub_2250C86F4(v113, &qword_27D718F08, &qword_225444868);
          (*(v183 + 8))(v112, v53);
        }

        return sub_2250C86F4(v169, &qword_27D718F28, &qword_225444888);
      }
    }

    v132 = v54;
    v133 = *v52;
    v184 = v52[1];
    v134 = v164;
    CCLog.getter();
    v135 = v171;
    sub_2250C853C(v185, v171, &qword_27D718F08, &qword_225444868);

    v136 = v48;
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v188 = v181;
      *v139 = 136315394;
      LODWORD(v178) = v138;
      type metadata accessor for SessionID();
      v185 = v133;
      v140 = v134;
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
      v141 = dispatch thunk of CustomStringConvertible.description.getter();
      v143 = v142;

      v144 = sub_225095AFC(v141, v143, &v188);

      *(v139 + 4) = v144;
      *(v139 + 12) = 2080;
      sub_2250C853C(v135, v132, &qword_27D718F08, &qword_225444868);
      v145 = String.init<A>(describing:)();
      v146 = v135;
      v147 = v145;
      v148 = v47;
      v150 = v149;
      sub_2250C86F4(v146, &qword_27D718F08, &qword_225444868);
      v151 = sub_225095AFC(v147, v150, &v188);
      v47 = v148;

      *(v139 + 14) = v151;
      _os_log_impl(&dword_22506F000, v137, v178, "%s: received encryption acquisition event: %s", v139, 0x16u);
      v152 = v181;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v152, -1, -1);
      MEMORY[0x22AA65DF0](v139, -1, -1);

      v153 = v140;
      v133 = v185;
      (*(v183 + 8))(v153, v170);
    }

    else
    {

      sub_2250C86F4(v135, &qword_27D718F08, &qword_225444868);
      (*(v183 + 8))(v134, v170);
    }

    v158 = v136 + *(*v136 + 256);
    v160 = *v158;
    v159 = *(v158 + 8);
    v161 = *(v158 + 16);
    *v158 = v47;
    *(v158 + 8) = v133;
    *(v158 + 16) = v184;
    v162 = *(v158 + 24);
    *(v158 + 24) = 1;

    sub_2250C7A68(v160, v159, v161, v162, MEMORY[0x277D85008]);
    sub_2250B7520(6u);
  }

  else
  {
    CKLog.getter();
    v75 = v177;
    sub_2250C853C(v185, v177, &qword_27D718F08, &qword_225444868);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v188 = v185;
      *v78 = 136315394;
      *v187 = v47;
      _s15EncryptionCheckCMa(0);

      v79 = String.init<A>(describing:)();
      v168 = v46;
      v81 = sub_225095AFC(v79, v80, &v188);

      *(v78 + 4) = v81;
      *(v78 + 12) = 2080;
      sub_2250C853C(v75, v180, &qword_27D718F08, &qword_225444868);
      v82 = String.init<A>(describing:)();
      v84 = v83;
      sub_2250C86F4(v75, &qword_27D718F08, &qword_225444868);
      v85 = sub_225095AFC(v82, v84, &v188);

      *(v78 + 14) = v85;
      _os_log_impl(&dword_22506F000, v76, v77, "Ignoring event from obsolete encryption check instance %s %s", v78, 0x16u);
      v86 = v185;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v86, -1, -1);
      MEMORY[0x22AA65DF0](v78, -1, -1);
    }

    else
    {

      sub_2250C86F4(v75, &qword_27D718F08, &qword_225444868);
    }

    return (*(v183 + 8))(v36, v170);
  }
}

uint64_t sub_2250BD514(uint64_t a1, NSObject *a2)
{
  v194 = a2;
  v191 = a1;
  v192 = type metadata accessor for SessionReadinessError();
  v183 = *(v192 - 8);
  v3 = *(v183 + 64);
  v4 = MEMORY[0x28223BE20](v192);
  v184 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v182 = &v170 - v7;
  MEMORY[0x28223BE20](v6);
  v188 = &v170 - v8;
  v177 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  v9 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v178 = &v170 - v10;
  v11 = type metadata accessor for DataSecurityAcquiredPayload(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v181 = (&v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
  v14 = *(*(v189 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v189);
  v180 = (&v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v185 = &v170 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v179 = &v170 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v193 = &v170 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v186 = &v170 - v24;
  MEMORY[0x28223BE20](v23);
  v187 = &v170 - v25;
  v26 = type metadata accessor for Logger();
  v190 = *(v26 - 8);
  v27 = *(v190 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v170 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v170 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v170 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v170 - v40;
  v42 = sub_2250B0DFC(&qword_27D718F50, &qword_2254448C0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v170 - v44;
  v46 = v195;
  result = sub_2250B84E4();
  if (v46)
  {
    return result;
  }

  v176 = 0;
  v171 = v36;
  v174 = v39;
  v195 = v45;
  v172 = v30;
  v173 = v33;
  v48 = v192;
  v175 = v26;
  v49 = v2;
  v50 = sub_2250B73EC();
  v51 = v50;
  v52 = v191;
  if (!v50 || v50 != v191)
  {
    v82 = v41;
    CKLog.getter();
    v83 = v187;
    sub_2250C853C(v194, v187, &qword_27D718F30, &qword_2254448A0);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    v86 = os_log_type_enabled(v84, v85);
    v87 = v193;
    if (v86)
    {
      v88 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v196[0] = v195;
      *v88 = 136315394;
      v197 = v52;
      _s17DataSecurityCheckCMa(0);

      v89 = String.init<A>(describing:)();
      v91 = sub_225095AFC(v89, v90, v196);
      v191 = v51;
      v92 = v91;

      *(v88 + 4) = v92;
      *(v88 + 12) = 2080;
      sub_2250C853C(v83, v87, &qword_27D718F30, &qword_2254448A0);
      v93 = String.init<A>(describing:)();
      v95 = v94;
      sub_2250C86F4(v83, &qword_27D718F30, &qword_2254448A0);
      v96 = sub_225095AFC(v93, v95, v196);

      *(v88 + 14) = v96;
      _os_log_impl(&dword_22506F000, v84, v85, "Ignoring event from obsolete data security check instance %s %s", v88, 0x16u);
      v97 = v195;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v97, -1, -1);
      MEMORY[0x22AA65DF0](v88, -1, -1);

      return (*(v190 + 8))(v82, v175);
    }

    else
    {

      sub_2250C86F4(v83, &qword_27D718F30, &qword_2254448A0);
      return (*(v190 + 8))(v41, v175);
    }
  }

  v53 = v50;
  v54 = v2;
  v187 = *(*v2 + 296);
  v55 = *(v2 + v187);
  v56 = *(v42 + 48);
  v57 = v194;
  v58 = v195;
  *v195 = v55;
  sub_2250C853C(v57, &v58[v56], &qword_27D718F30, &qword_2254448A0);
  v59 = v188;
  v60 = v193;
  if (v55 == 1)
  {
    goto LABEL_7;
  }

  if (v55 != 6)
  {
    if (v55 == 9)
    {
LABEL_7:
      v191 = v53;
      sub_2250C86F4(&v195[v56], &qword_27D718F30, &qword_2254448A0);
      v61 = v174;
      CCLog.getter();
      v62 = v186;
      sub_2250C853C(v194, v186, &qword_27D718F30, &qword_2254448A0);

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v196[0] = v195;
        *v65 = 136315650;
        v194 = v63;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;

        v69 = sub_225095AFC(v66, v68, v196);

        *(v65 + 4) = v69;
        *(v65 + 12) = 2080;
        sub_2250C853C(v62, v193, &qword_27D718F30, &qword_2254448A0);
        v70 = v54;
        v71 = String.init<A>(describing:)();
        v73 = v72;
        sub_2250C86F4(v62, &qword_27D718F30, &qword_2254448A0);
        v74 = sub_225095AFC(v71, v73, v196);

        *(v65 + 14) = v74;
        *(v65 + 22) = 2080;
        LOBYTE(v197) = *(v70 + v187);
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        v75 = String.init<A>(describing:)();
        v77 = v61;
        v78 = v64;
        v79 = sub_225095AFC(v75, v76, v196);

        *(v65 + 24) = v79;
        v80 = v194;
        _os_log_impl(&dword_22506F000, v194, v78, "%s: Ignoring received data security acquisition event: %s in state: %s", v65, 0x20u);
        v81 = v195;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v81, -1, -1);
        MEMORY[0x22AA65DF0](v65, -1, -1);

        return (*(v190 + 8))(v77, v175);
      }

      else
      {

        sub_2250C86F4(v62, &qword_27D718F30, &qword_2254448A0);
        return (*(v190 + 8))(v61, v175);
      }
    }

    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_13:
    v98 = v195;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v191 = v53;
      v99 = &v98[v56];
      v100 = v48;
      v101 = v183;
      (*(v183 + 32))(v59, v99, v100);
      v102 = v173;
      CCLog.getter();
      sub_2250C853C(v194, v185, &qword_27D718F30, &qword_2254448A0);
      v103 = v182;
      v194 = *(v101 + 16);
      v195 = (v101 + 16);
      (v194)(v182, v59, v100);

      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        LODWORD(v187) = v105;
        v107 = v106;
        v181 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        v196[0] = v186;
        *v107 = 136315650;
        v180 = v104;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = v109;

        v111 = sub_225095AFC(v108, v110, v196);

        *(v107 + 4) = v111;
        *(v107 + 12) = 2080;
        v112 = v185;
        sub_2250C853C(v185, v193, &qword_27D718F30, &qword_2254448A0);
        v113 = v103;
        v114 = v101;
        v115 = String.init<A>(describing:)();
        v117 = v116;
        sub_2250C86F4(v112, &qword_27D718F30, &qword_2254448A0);
        v118 = sub_225095AFC(v115, v117, v196);
        v54 = v49;

        *(v107 + 14) = v118;
        *(v107 + 22) = 2112;
        sub_2250C8748(&qword_280D53600, MEMORY[0x277CFAA78]);
        v119 = v192;
        swift_allocError();
        (v194)(v120, v113, v119);
        v121 = _swift_stdlib_bridgeErrorToNSError();
        v122 = *(v114 + 8);
        v122(v113, v119);
        *(v107 + 24) = v121;
        v123 = v181;
        *v181 = v121;
        v124 = v180;
        _os_log_impl(&dword_22506F000, v180, v187, "%s: Received blocking data security acquisition event: %s, readinessError: %@", v107, 0x20u);
        sub_2250C86F4(v123, &unk_27D719030, &qword_225443AB0);
        MEMORY[0x22AA65DF0](v123, -1, -1);
        v125 = v186;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v125, -1, -1);
        v59 = v188;
        MEMORY[0x22AA65DF0](v107, -1, -1);

        (*(v190 + 8))(v173, v175);
        v126 = v119;
      }

      else
      {

        v122 = *(v101 + 8);
        v126 = v192;
        v122(v103, v192);
        sub_2250C86F4(v185, &qword_27D718F30, &qword_2254448A0);
        (*(v190 + 8))(v102, v175);
      }

      v165 = *(v54 + qword_280D538C0);
      type metadata accessor for CKSessionReadinessErrorBox();
      (v194)(v184, v59, v126);
      v166 = CKSessionReadinessErrorBox.__allocating_init(_:)();
      [v165 noteSessionReadinessError_];

      sub_2250B7520(6u);

      return (v122)(v59, v126);
    }

    else
    {
      v127 = v172;
      CCLog.getter();
      v128 = v180;
      sub_2250C853C(v194, v180, &qword_27D718F30, &qword_2254448A0);

      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = v60;
        v132 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v196[0] = v194;
        *v132 = 136315650;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v133 = dispatch thunk of CustomStringConvertible.description.getter();
        v135 = v134;

        v136 = sub_225095AFC(v133, v135, v196);

        *(v132 + 4) = v136;
        v191 = v53;
        *(v132 + 12) = 2080;
        sub_2250C853C(v128, v131, &qword_27D718F30, &qword_2254448A0);
        v137 = String.init<A>(describing:)();
        v138 = v128;
        v139 = v137;
        v140 = v54;
        v142 = v141;
        sub_2250C86F4(v138, &qword_27D718F30, &qword_2254448A0);
        v143 = sub_225095AFC(v139, v142, v196);

        *(v132 + 14) = v143;
        *(v132 + 22) = 2080;
        LOBYTE(v197) = *(v140 + v187);
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        v144 = String.init<A>(describing:)();
        v146 = sub_225095AFC(v144, v145, v196);

        *(v132 + 24) = v146;
        _os_log_impl(&dword_22506F000, v129, v130, "%s: Ignoring received data security acquisition event: %s in unexpected state: %s", v132, 0x20u);
        v147 = v194;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v147, -1, -1);
        MEMORY[0x22AA65DF0](v132, -1, -1);

        (*(v190 + 8))(v172, v175);
      }

      else
      {

        sub_2250C86F4(v128, &qword_27D718F30, &qword_2254448A0);
        (*(v190 + 8))(v127, v175);
      }

      return sub_2250C86F4(v195, &qword_27D718F50, &qword_2254448C0);
    }
  }

  v148 = v181;
  sub_2250C7E68(&v195[v56], v181);
  v149 = v171;
  CCLog.getter();
  v150 = v179;
  sub_2250C853C(v194, v179, &qword_27D718F30, &qword_2254448A0);

  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v196[0] = v195;
    *v153 = 136315394;
    type metadata accessor for SessionID();
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v154 = dispatch thunk of CustomStringConvertible.description.getter();
    v156 = v155;

    v157 = sub_225095AFC(v154, v156, v196);

    *(v153 + 4) = v157;
    *(v153 + 12) = 2080;
    LODWORD(v194) = v152;
    v158 = v179;
    sub_2250C853C(v179, v193, &qword_27D718F30, &qword_2254448A0);
    v159 = String.init<A>(describing:)();
    v161 = v160;
    sub_2250C86F4(v158, &qword_27D718F30, &qword_2254448A0);
    v162 = v159;
    v148 = v181;
    v163 = sub_225095AFC(v162, v161, v196);
    v54 = v49;

    *(v153 + 14) = v163;
    _os_log_impl(&dword_22506F000, v151, v194, "%s: received data security acquisition event: %s", v153, 0x16u);
    v164 = v195;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v164, -1, -1);
    MEMORY[0x22AA65DF0](v153, -1, -1);

    (*(v190 + 8))(v171, v175);
  }

  else
  {

    sub_2250C86F4(v150, &qword_27D718F30, &qword_2254448A0);
    (*(v190 + 8))(v149, v175);
  }

  v167 = v178;
  v168 = *(sub_2250B0DFC(&qword_27D718F58, &qword_2254448C8) + 48);
  *v167 = v191;
  sub_2250C7ECC(v148, v167 + v168);
  swift_storeEnumTagMultiPayload();
  v169 = *(*v54 + 264);
  swift_beginAccess();

  sub_2250C7ACC(v167, v54 + v169, &unk_27D718E90, &qword_2254447C8);
  swift_endAccess();
  sub_2250B7520(7u);

  return sub_2250C7F30(v148);
}

uint64_t sub_2250BE96C()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for AnySessionConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1 + *(*v1 + 240);
  v18 = *(v17 + 8);
  if (*(v17 + 8))
  {
    v43 = v7;
    if (v18 == 2)
    {
      v44 = v5;
      CCLog.getter();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v40 = v21;
        v41 = swift_slowAlloc();
        v45 = v41;
        *v21 = 136315138;
        type metadata accessor for SessionID();
        v42 = v6;
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;

        v25 = sub_225095AFC(v22, v24, &v45);
        v6 = v42;

        v26 = v40;
        *(v40 + 1) = v25;
        v27 = v26;
        _os_log_impl(&dword_22506F000, v19, v20, "%s: starting device check", v26, 0xCu);
        v28 = v41;
        sub_225073BF0(v41);
        MEMORY[0x22AA65DF0](v28, -1, -1);
        MEMORY[0x22AA65DF0](v27, -1, -1);
      }

      else
      {
      }

      (*(v12 + 8))(v16, v11);
      v29 = *(v1 + qword_280D538C8);
      (*(v43 + 16))(v10, v1 + qword_280D538E8, v6);
      v30 = _s11DeviceCheckCMa(0);
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      v33 = sub_2250DE0A4(v10, v29);
      v34 = *v17;
      *v17 = v33;
      v35 = *(v17 + 8);
      *(v17 + 8) = 0;
      swift_unknownObjectRetain();

      sub_2250C79F8(v34, v35);
      v36 = type metadata accessor for TaskPriority();
      v37 = v44;
      sub_22507C8C0(v44, 1, 1, v36);
      v38 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
      v39 = swift_allocObject();
      v39[2] = v1;
      v39[3] = v38;
      v39[4] = v33;
      v39[5] = v1;
      swift_retain_n();
      sub_2250B5ADC(0, 0, v37, &unk_2254447F0, v39);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2250BEE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v5[4] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v9 = *(*(sub_2250B0DFC(&unk_27D718EB0, &qword_225444800) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = sub_2250B0DFC(&qword_27D719190, &qword_225444808);
  v5[7] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v12 = sub_2250B0DFC(&qword_27D718EC0, &qword_225444810);
  v5[9] = v12;
  v13 = *(v12 - 8);
  v5[10] = v13;
  v14 = *(v13 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250BEFA0, a5, 0);
}

uint64_t sub_2250BEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22507CE94();
  sub_22507D3A4();
  sub_2250DE128(v10);
  v11 = sub_22507CA2C(&qword_280D53458, &qword_27D719190, &qword_225444808);
  sub_225097DC4(v11);
  v12 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  sub_2250C87A8(v12);
  sub_22507CD0C(&unk_280D53480, &qword_27D718EC0, &qword_225444810);
  v13 = *(MEMORY[0x277D856D8] + 4);
  v14 = swift_task_alloc();
  v15 = sub_22507E994(v14);
  *v15 = v16;
  v17 = sub_225072D30(v15);

  return MEMORY[0x282200310](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_2250BF094()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v10 = *(v3 + 24);
    v11 = sub_225095410();

    return MEMORY[0x2822009F8](v11);
  }

  return result;
}

uint64_t sub_2250BF18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_225093BD0();
  if (v13)
  {
    v14 = sub_22507E6D0();
    v15(v14);

    sub_22507CC50();
LABEL_6:
    sub_225095898();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  sub_225095448();
  sub_2250C8950(v16, v17, &unk_27D719000, &qword_225444F50);
  v18 = sub_225097640();
  sub_2250B9BA8(v18, v19);
  if (v10)
  {
    sub_2250981AC();
    sub_2250C86F4(v12, &unk_27D719000, &qword_225444F50);
    v20 = sub_2250C8798();
    v21(v20);

    sub_225082628();
    goto LABEL_6;
  }

  sub_2250C86F4(*(v11 + 40), &unk_27D719000, &qword_225444F50);
  sub_22509575C();
  sub_22507CD0C(&unk_280D53480, &qword_27D718EC0, &qword_225444810);
  v31 = *(MEMORY[0x277D856D8] + 4);
  v32 = swift_task_alloc();
  v33 = sub_22507E994(v32);
  *v33 = v34;
  sub_225072D30(v33);
  sub_225095898();

  return MEMORY[0x282200310](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_2250BF334()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v60 - v4;
  v5 = type metadata accessor for AnySessionConfiguration();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v60 - v9;
  v65 = type metadata accessor for Entitlements();
  v10 = *(v65 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v65);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v60 - v20;
  v22 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v23 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v24 = sub_22507C8E8(v21, 1, v23);
  result = sub_2250C86F4(v21, &unk_27D718ED0, &qword_225444FF0);
  if (v24 == 1)
  {
    return sub_2250B7520(5);
  }

  v26 = v1 + *(*v1 + 248);
  if (*(v26 + 16))
  {
    if (*(v26 + 16) == 2)
    {
      v63 = (v1 + *(*v1 + 248));
      CCLog.getter();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v74 = v62;
        *v29 = 136315138;
        LODWORD(v61) = v28;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;

        v33 = sub_225095AFC(v30, v32, &v74);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_22506F000, v27, v61, "%s: starting account check", v29, 0xCu);
        v34 = v62;
        sub_225073BF0(v62);
        MEMORY[0x22AA65DF0](v34, -1, -1);
        MEMORY[0x22AA65DF0](v29, -1, -1);
      }

      else
      {
      }

      (*(v14 + 8))(v17, v13);
      v35 = *(*v1 + 200);
      v36 = *(v1 + qword_280D538C8);
      v61 = v10[2];
      v62 = v36;
      v38 = v64;
      v37 = v65;
      v61(v64, v1 + v35, v65);
      v39 = v66;
      v40 = v67;
      v41 = *(v67 + 16);
      v42 = v1 + v22;
      v43 = v68;
      v41(v66, v42, v68);
      v41(v70, v39, v43);
      v44 = _s12AccountCheckCMa(0);
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      v47 = swift_allocObject();
      v48 = MEMORY[0x277CFA990];
      v49 = (v47 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_entitlements);
      v49[3] = v37;
      v49[4] = v48;
      v50 = sub_225073808(v49);
      v61(v50, v38, v37);
      v75 = &_s10TCCCheckerVN;
      v76 = &off_28385ABF8;
      v72 = &_s14AccountFactoryVN;
      v73 = &off_28385AB50;
      v51 = v10[1];
      v52 = v62;
      swift_unknownObjectRetain();
      v51(v38, v37);
      (*(v40 + 8))(v39, v43);
      *(v47 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor) = 0;
      (*(v40 + 32))(v47 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_sessionConfiguration, v70, v43);
      *(v47 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_testDeviceReferenceProtocol) = v52;
      sub_2250A93B4(&v74, v47 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_tccChecker);
      sub_2250A93B4(&v71, v47 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_accountFactory);
      v53 = v63;
      v54 = *v63;
      v55 = v63[1];
      *v63 = v47;
      v53[1] = 0;
      LOBYTE(v37) = *(v53 + 16);
      *(v53 + 16) = 0;

      sub_2250C7A0C(v54, v55, v37);
      v56 = type metadata accessor for TaskPriority();
      v57 = v69;
      sub_22507C8C0(v69, 1, 1, v56);
      v58 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
      v59 = swift_allocObject();
      v59[2] = v1;
      v59[3] = v58;
      v59[4] = v47;
      v59[5] = v1;
      swift_retain_n();
      sub_2250B5ADC(0, 0, v57, &unk_225444828, v59);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2250BFA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v5[4] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v9 = *(*(sub_2250B0DFC(&qword_27D718EE0, &qword_225444838) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = sub_2250B0DFC(&qword_27D718EE8, &qword_225444840);
  v5[7] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v12 = sub_2250B0DFC(&qword_27D718EF0, &qword_225444848);
  v5[9] = v12;
  v13 = *(v12 - 8);
  v5[10] = v13;
  v14 = *(v13 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250BFBF0, a5, 0);
}

uint64_t sub_2250BFBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22507CE94();
  sub_22507D3A4();
  sub_2250C9F08(v10);
  v11 = sub_22507CA2C(&qword_280D53460, &qword_27D718EE8, &qword_225444840);
  sub_225097DC4(v11);
  v12 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  sub_2250C87A8(v12);
  sub_22507CD0C(&qword_280D53490, &qword_27D718EF0, &qword_225444848);
  v13 = *(MEMORY[0x277D856D8] + 4);
  v14 = swift_task_alloc();
  v15 = sub_22507E994(v14);
  *v15 = v16;
  v17 = sub_225072D30(v15);

  return MEMORY[0x282200310](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_2250BFCE4()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v10 = *(v3 + 24);
    v11 = sub_225095410();

    return MEMORY[0x2822009F8](v11);
  }

  return result;
}

uint64_t sub_2250BFDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_225093BD0();
  if (v13)
  {
    v14 = sub_22507E6D0();
    v15(v14);

    sub_22507CC50();
LABEL_6:
    sub_225095898();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  sub_225095448();
  sub_2250C8950(v16, v17, &qword_27D719010, &qword_225444830);
  v18 = sub_225097640();
  sub_2250BAEEC(v18, v19);
  if (v10)
  {
    sub_2250981AC();
    sub_2250C86F4(v12, &qword_27D719010, &qword_225444830);
    v20 = sub_2250C8798();
    v21(v20);

    sub_225082628();
    goto LABEL_6;
  }

  sub_2250C86F4(*(v11 + 40), &qword_27D719010, &qword_225444830);
  sub_22509575C();
  sub_22507CD0C(&qword_280D53490, &qword_27D718EF0, &qword_225444848);
  v31 = *(MEMORY[0x277D856D8] + 4);
  v32 = swift_task_alloc();
  v33 = sub_22507E994(v32);
  *v33 = v34;
  sub_225072D30(v33);
  sub_225095898();

  return MEMORY[0x282200310](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_2250BFF84()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v73 - v4;
  v5 = type metadata accessor for AnySessionConfiguration();
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v84 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v73 - v9;
  v10 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v83 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v73 - v15;
  MEMORY[0x28223BE20](v14);
  v78 = &v73 - v16;
  v76 = type metadata accessor for Logger();
  v75 = *(v76 - 1);
  v17 = v75[8];
  MEMORY[0x28223BE20](v76);
  v74 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v73 - v26;
  v28 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v73 - v30;
  v32 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v33 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v34 = sub_22507C8E8(v31, 1, v33);
  sub_2250C86F4(v31, &unk_27D718ED0, &qword_225444FF0);
  if (v34 == 1)
  {
    return sub_2250B7520(6);
  }

  AnySessionConfiguration.encryption.getter();
  v35 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v27, 1, v35) == 1)
  {
    sub_2250C86F4(v27, &unk_27D7190E0, &unk_2254447D0);
    return sub_2250B7520(6);
  }

  AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
  (*(*(v35 - 8) + 8))(v27, v35);
  AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
  v37 = v36;
  (*(v20 + 8))(v23, v19);
  if (!v37)
  {
    return sub_2250B7520(6);
  }

  v39 = v1 + *(*v1 + 256);
  if (*(v39 + 24))
  {
    if (*(v39 + 24) == 2)
    {
      v40 = v74;
      CCLog.getter();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      v43 = os_log_type_enabled(v41, v42);
      v73 = v39;
      if (v43)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v88 = v45;
        *v44 = 136315138;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;

        v49 = sub_225095AFC(v46, v48, &v88);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_22506F000, v41, v42, "%s: starting encryption check", v44, 0xCu);
        sub_225073BF0(v45);
        MEMORY[0x22AA65DF0](v45, -1, -1);
        MEMORY[0x22AA65DF0](v44, -1, -1);
      }

      else
      {
      }

      (v75[1])(v40, v76);
      v50 = v1 + *(*v1 + 248);
      if (*(v50 + 16) == 1)
      {
        v51 = qword_280D538D0;
        v76 = *(v50 + 8);
        swift_beginAccess();
        v52 = v78;
        sub_2250C853C(v1 + v51, v78, &unk_27D718E60, &unk_225444780);
        v74 = *(v1 + qword_280D538C8);
        v75 = *(v1 + *(*v1 + 216));
        v54 = v79;
        v53 = v80;
        v55 = *(v80 + 16);
        v56 = v1 + v32;
        v57 = v81;
        v55(v79, v56, v81);
        v58 = v77;
        sub_2250C853C(v52, v77, &unk_27D718E60, &unk_225444780);
        v55(v84, v54, v57);
        sub_2250C853C(v58, v83, &unk_27D718E60, &unk_225444780);
        v59 = _s15EncryptionCheckCMa(0);
        v60 = *(v59 + 48);
        v61 = *(v59 + 52);
        v62 = swift_allocObject();
        v89 = sub_2250C7F8C(0, &qword_280D53450, off_278543938);
        v90 = &off_28385A390;
        v63 = v76;
        *&v88 = v76;
        v86 = &_s17SystemInteractionVN_0;
        v87 = &off_283859F78;
        v64 = v74;
        swift_unknownObjectRetain();
        v76 = v63;
        v75 = v75;
        sub_2250C86F4(v58, &unk_27D718E60, &unk_225444780);
        (*(v53 + 8))(v54, v57);
        sub_2250C86F4(v52, &unk_27D718E60, &unk_225444780);
        *(v62 + 16) = 0;
        (*(v53 + 32))(v62 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_sessionConfiguration, v84, v57);
        sub_2250C8588(v83, v62 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_previousInvalidationContext, &unk_27D718E60, &unk_225444780);
        *(v62 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_testDeviceReferenceProtocol) = v64;
        sub_2250A93B4(&v88, v62 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account);
        *(v62 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_applicationID) = v75;
        sub_2250A93B4(&v85, v62 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_systemInteraction);
        v65 = v73;
        v66 = *v73;
        v67 = v73[1];
        v68 = v73[2];
        v73[1] = 0;
        v65[2] = 0;
        *v65 = v62;
        LOBYTE(v54) = *(v65 + 24);
        *(v65 + 24) = 0;

        sub_2250C7A68(v66, v67, v68, v54, MEMORY[0x277D85008]);
        v69 = type metadata accessor for TaskPriority();
        v70 = v82;
        sub_22507C8C0(v82, 1, 1, v69);
        v71 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
        v72 = swift_allocObject();
        v72[2] = v1;
        v72[3] = v71;
        v72[4] = v62;
        v72[5] = v1;
        swift_retain_n();

        sub_2250B5ADC(0, 0, v70, &unk_225444860, v72);
      }
    }

    else
    {
      *&v88 = 0;
      *(&v88 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      MEMORY[0x22AA62E50](0xD000000000000012, 0x80000002254798D0);
      MEMORY[0x22AA62E50](0xD00000000000001BLL, 0x80000002254798F0);
      MEMORY[0x22AA62E50](0xD000000000000020, 0x8000000225479910);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_2250C0A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v5[4] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v9 = *(*(sub_2250B0DFC(&unk_27D718F10, &qword_225444870) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = sub_2250B0DFC(&qword_27D719240, &qword_225444878);
  v5[7] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v12 = sub_2250B0DFC(&qword_27D718F20, &qword_225444880);
  v5[9] = v12;
  v13 = *(v12 - 8);
  v5[10] = v13;
  v14 = *(v13 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250C0BB8, a5, 0);
}

uint64_t sub_2250C0BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22507CE94();
  sub_22507D3A4();
  sub_2250E2650();
  v10 = sub_22507CA2C(&qword_280D53478, &qword_27D719240, &qword_225444878);
  sub_225097DC4(v10);
  v11 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  sub_2250C87A8(v11);
  sub_22507CD0C(&unk_280D534A0, &qword_27D718F20, &qword_225444880);
  v12 = *(MEMORY[0x277D856D8] + 4);
  v13 = swift_task_alloc();
  v14 = sub_22507E994(v13);
  *v14 = v15;
  v16 = sub_225072D30(v14);

  return MEMORY[0x282200310](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_2250C0CAC()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v10 = *(v3 + 24);
    v11 = sub_225095410();

    return MEMORY[0x2822009F8](v11);
  }

  return result;
}

uint64_t sub_2250C0DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_225093BD0();
  if (v13)
  {
    v14 = sub_22507E6D0();
    v15(v14);

    sub_22507CC50();
LABEL_6:
    sub_225095898();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  sub_225095448();
  sub_2250C8950(v16, v17, &qword_27D718F08, &qword_225444868);
  v18 = sub_225097640();
  sub_2250BC1F8(v18, v19);
  if (v10)
  {
    sub_2250981AC();
    sub_2250C86F4(v12, &qword_27D718F08, &qword_225444868);
    v20 = sub_2250C8798();
    v21(v20);

    sub_225082628();
    goto LABEL_6;
  }

  sub_2250C86F4(*(v11 + 40), &qword_27D718F08, &qword_225444868);
  sub_22509575C();
  sub_22507CD0C(&unk_280D534A0, &qword_27D718F20, &qword_225444880);
  v31 = *(MEMORY[0x277D856D8] + 4);
  v32 = swift_task_alloc();
  v33 = sub_22507E994(v32);
  *v33 = v34;
  sub_225072D30(v33);
  sub_225095898();

  return MEMORY[0x282200310](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_2250C0F4C()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v94 = &v86 - v4;
  v5 = type metadata accessor for AnySessionConfiguration();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v86 - v9;
  v10 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v96 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v86 - v15;
  MEMORY[0x28223BE20](v14);
  v95 = &v86 - v16;
  v88 = type metadata accessor for Logger();
  v87 = *(v88 - 1);
  v17 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  v19 = *(*(v98 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v98);
  v91 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v23 = &v86 - v22;
  v24 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v99 = *(v24 - 8);
  v25 = *(v99 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v86 - v30;
  v32 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v86 - v34;
  v36 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v37 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v38 = sub_22507C8E8(v35, 1, v37);
  sub_2250C86F4(v35, &unk_27D718ED0, &qword_225444FF0);
  if (v38 == 1)
  {
    return sub_2250B7520(7);
  }

  AnySessionConfiguration.encryption.getter();
  v39 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  v40 = v1;
  if (sub_22507C8E8(v31, 1, v39) == 1)
  {
    sub_2250C86F4(v31, &unk_27D7190E0, &unk_2254447D0);
    return sub_2250B7520(7);
  }

  AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
  (*(*(v39 - 8) + 8))(v31, v39);
  AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
  v42 = v41;
  (*(v99 + 8))(v27, v24);
  if (!v42)
  {
    return sub_2250B7520(7);
  }

  v43 = *(*v1 + 264);
  swift_beginAccess();
  sub_2250C853C(v1 + v43, v23, &unk_27D718E90, &qword_2254447C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_2250C86F4(v23, &unk_27D718E90, &qword_2254447C8);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v46 = v86;
    CCLog.getter();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v99 = v43;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v100[0] = v51;
      *v50 = 136315138;
      type metadata accessor for SessionID();
      v52 = v36;
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;

      v56 = sub_225095AFC(v53, v55, v100);
      v36 = v52;

      *(v50 + 4) = v56;
      _os_log_impl(&dword_22506F000, v47, v48, "%s: starting data security check", v50, 0xCu);
      sub_225073BF0(v51);
      MEMORY[0x22AA65DF0](v51, -1, -1);
      MEMORY[0x22AA65DF0](v50, -1, -1);
    }

    else
    {
    }

    (*(v87 + 8))(v46, v88);
    v57 = v40 + *(*v40 + 248);
    if (*(v57 + 16) == 1)
    {
      v58 = qword_280D538D0;
      v88 = *(v57 + 8);
      swift_beginAccess();
      v59 = v40;
      v60 = v40 + v58;
      v61 = v95;
      sub_2250C853C(v60, v95, &unk_27D718E60, &unk_225444780);
      v62 = *(v59 + qword_280D538C8);
      v64 = v92;
      v63 = v93;
      v65 = *(v92 + 16);
      v66 = v59 + v36;
      v67 = v90;
      v65(v90, v66, v93);
      v68 = v61;
      v69 = v89;
      sub_2250C853C(v68, v89, &unk_27D718E60, &unk_225444780);
      v65(v97, v67, v63);
      sub_2250C853C(v69, v96, &unk_27D718E60, &unk_225444780);
      v70 = _s17DataSecurityCheckCMa(0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      v73 = swift_allocObject();
      v74 = (v73 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account);
      v74[3] = sub_2250C7F8C(0, &qword_280D53450, off_278543938);
      v74[4] = &off_28385A390;
      v75 = v88;
      *v74 = v88;
      v76 = v73 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_systemInteraction;
      *(v76 + 24) = &_s17SystemInteractionVN;
      *(v76 + 32) = &off_28385ADB8;
      swift_unknownObjectRetain();
      v88 = v75;
      sub_2250C86F4(v69, &unk_27D718E60, &unk_225444780);
      (*(v64 + 8))(v67, v63);
      *(v73 + 16) = 0;
      v77 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_dataProtectionStatus;
      v78 = *MEMORY[0x277CFA9C8];
      v79 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
      (*(*(v79 - 8) + 104))(v73 + v77, v78, v79);
      (*(v64 + 32))(v73 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_sessionConfiguration, v97, v63);
      sub_2250C8588(v96, v73 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_previousInvalidationContext, &unk_27D718E60, &unk_225444780);
      *(v73 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_testDeviceReferenceProtocol) = v62;
      sub_2250C86F4(v95, &unk_27D718E60, &unk_225444780);
      v80 = v91;
      *v91 = v73;
      swift_storeEnumTagMultiPayload();
      v81 = v99;
      swift_beginAccess();

      sub_2250C7ACC(v80, v59 + v81, &unk_27D718E90, &qword_2254447C8);
      swift_endAccess();
      v82 = type metadata accessor for TaskPriority();
      v83 = v94;
      sub_22507C8C0(v94, 1, 1, v82);
      v84 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
      v85 = swift_allocObject();
      v85[2] = v59;
      v85[3] = v84;
      v85[4] = v73;
      v85[5] = v59;
      swift_retain_n();

      sub_2250B5ADC(0, 0, v83, &unk_225444898, v85);
    }
  }

  else
  {
    v100[0] = 0;
    v100[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x22AA62E50](0xD000000000000012, 0x80000002254798D0);
    MEMORY[0x22AA62E50](0xD00000000000001DLL, 0x8000000225479990);
    MEMORY[0x22AA62E50](0xD000000000000023, 0x80000002254799B0);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250C1AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
  v5[4] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v9 = *(*(sub_2250B0DFC(&qword_27D718F38, &qword_2254448A8) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = sub_2250B0DFC(&qword_27D718F40, &qword_2254448B0);
  v5[7] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v12 = sub_2250B0DFC(&qword_27D718F48, &qword_2254448B8);
  v5[9] = v12;
  v13 = *(v12 - 8);
  v5[10] = v13;
  v14 = *(v13 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250C1C44, a5, 0);
}

uint64_t sub_2250C1C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22507CE94();
  sub_22507D3A4();
  sub_2250D88CC(v10);
  v11 = sub_22507CA2C(&qword_280D53470, &qword_27D718F40, &qword_2254448B0);
  sub_225097DC4(v11);
  v12 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  sub_2250C87A8(v12);
  sub_22507CD0C(&qword_280D53498, &qword_27D718F48, &qword_2254448B8);
  v13 = *(MEMORY[0x277D856D8] + 4);
  v14 = swift_task_alloc();
  v15 = sub_22507E994(v14);
  *v15 = v16;
  v17 = sub_225072D30(v15);

  return MEMORY[0x282200310](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_2250C1D38()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v10 = *(v3 + 24);
    v11 = sub_225095410();

    return MEMORY[0x2822009F8](v11);
  }

  return result;
}

uint64_t sub_2250C1E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_225093BD0();
  if (v13)
  {
    v14 = sub_22507E6D0();
    v15(v14);

    sub_22507CC50();
LABEL_6:
    sub_225095898();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  sub_225095448();
  sub_2250C8950(v16, v17, &qword_27D718F30, &qword_2254448A0);
  v18 = sub_225097640();
  sub_2250BD514(v18, v19);
  if (v10)
  {
    sub_2250981AC();
    sub_2250C86F4(v12, &qword_27D718F30, &qword_2254448A0);
    v20 = sub_2250C8798();
    v21(v20);

    sub_225082628();
    goto LABEL_6;
  }

  sub_2250C86F4(*(v11 + 40), &qword_27D718F30, &qword_2254448A0);
  sub_22509575C();
  sub_22507CD0C(&qword_280D53498, &qword_27D718F48, &qword_2254448B8);
  v31 = *(MEMORY[0x277D856D8] + 4);
  v32 = swift_task_alloc();
  v33 = sub_22507E994(v32);
  *v33 = v34;
  sub_225072D30(v33);
  sub_225095898();

  return MEMORY[0x282200310](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_2250C1FD8()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v73 - v4;
  v6 = type metadata accessor for AnySessionConfiguration();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6);
  v78 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContainerID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v77 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v73 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v73 - v23;
  v79 = *(*v0 + 280);
  if (*(v0 + v79))
  {
    goto LABEL_12;
  }

  v83 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v25 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v26 = sub_22507C8E8(v24, 1, v25);
  sub_2250C86F4(v24, &unk_27D718ED0, &qword_225444FF0);
  if (v26 == 1)
  {
    return sub_2250B7520(8);
  }

  v82 = v15;
  CCLog.getter();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v75 = v5;
  v76 = v10;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v84 = v32;
    *v31 = 136315138;
    type metadata accessor for SessionID();
    v74 = v9;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;

    v36 = sub_225095AFC(v33, v35, &v84);
    v9 = v74;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_22506F000, v28, v29, "%s: fetching user info", v31, 0xCu);
    sub_225073BF0(v32);
    v37 = v32;
    v10 = v76;
    MEMORY[0x22AA65DF0](v37, -1, -1);
    MEMORY[0x22AA65DF0](v31, -1, -1);
  }

  else
  {
  }

  (*(v17 + 8))(v20, v16);
  v38 = v82;
  AnySessionConfiguration.containerID.getter();
  v39 = *(v1 + *(*v1 + 216));
  sub_2250C7F8C(0, &unk_280D53420, 0x277CBC220);
  (*(v10 + 16))(v77, v38, v9);
  v40 = v39;
  v41 = CKContainerID.init(_:)();
  v42 = (v1 + *(*v1 + 272));
  v43 = *v42;
  v44 = v42[1];
  objc_allocWithZone(CKDAppContainerTuple);

  v45 = sub_2250C72F8(v40, v41, v43, v44);
  if (*(v1 + *(*v1 + 248) + 16) != 1)
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v46 = v45;
    v47 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    v48 = [v40 applicationBundleIdentifierOverrideForTCC];
    [v47 setApplicationBundleIdentifierOverrideForTCC_];

    v49 = [v40 applicationBundleIdentifierOverrideForContainerAccess];
    [v47 setApplicationBundleIdentifierOverrideForContainerAccess_];

    v50 = [v40 applicationBundleIdentifierOverrideForNetworkAttribution];
    [v47 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

    v51 = [v40 applicationBundleIdentifierOverrideForPushTopicGeneration];
    [v47 setApplicationBundleIdentifierOverrideForPushTopicGeneration_];

    v52 = v42[1];
    v53 = v9;
    if (v52)
    {
      v54 = *v42;
      v55 = v42[1];

      v56 = MEMORY[0x22AA62D80](v54, v52);
    }

    else
    {
      v56 = 0;
    }

    [v47 setPersonaIdentifier_];

    [v47 setTestDeviceReferenceProtocol_];
    sub_2250C7F8C(0, &qword_280D53418, 0x277CBC170);
    (*(v80 + 16))(v78, v1 + v83, v81);
    v57 = CKAccountOverrideInfo.init(sessionConfiguration:)();
    [v47 setAccountOverrideInfo_];

    v58 = *(v1 + qword_280D538D8);
    v59 = *(v1 + *(*v1 + 208));
    sub_2250C7F8C(0, &qword_280D53430, off_2785439F8);
    v60 = objc_opt_self();
    v61 = v58;
    v62 = v59;
    v63 = v47;
    v64 = v46;
    v65 = sub_2250C6F60(v64, v58, 0, v59, v63, [v60 sharedInternalUseContainers]);
    v66 = *(v1 + v79);
    *(v1 + v79) = v65;
    v67 = v65;

    v68 = type metadata accessor for TaskPriority();
    v69 = v75;
    sub_22507C8C0(v75, 1, 1, v68);
    v70 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
    v71 = swift_allocObject();
    v71[2] = v1;
    v71[3] = v70;
    v71[4] = v1;
    v71[5] = v67;
    swift_retain_n();
    v72 = v67;
    sub_2250B5ADC(0, 0, v69, &unk_2254448D8, v71);

    return (*(v76 + 8))(v82, v53);
  }

  return result;
}

uint64_t sub_2250C292C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2250C294C, a4, 0);
}

uint64_t sub_2250C294C()
{
  sub_225094938();
  sub_22507E6E8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v1 + 232);
  v0[4] = v3;
  v4 = *(v1 + v3);
  sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  v5 = swift_task_alloc();
  sub_2250C8854(v5);
  v6 = *(MEMORY[0x277CFAAB8] + 4);
  swift_task_alloc();
  sub_22508E734();
  v0[6] = v7;
  *v7 = v8;
  sub_22509535C(v7);
  sub_22507F1C8();
  sub_2250957B8();

  return MEMORY[0x28214D190](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2250C2A1C()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    v9 = v3[2];
    v10 = sub_2250C2C50;
  }

  else
  {
    v11 = v3[5];
    v12 = v3[2];

    v10 = sub_2250C2B2C;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2250C2B2C()
{
  sub_225094938();
  sub_22507E6E8();
  v1 = *(v0 + 16);
  if (*(v0 + 64))
  {
    v2 = *(v0 + 56);
    v3 = *(v1 + *(v0 + 32));
    ExponentialNetworkBackoff.reset()();
    sub_2250B84E4();
    if (v2)
    {
      sub_225082628();
    }

    else
    {
      v18 = *(v0 + 16);
      sub_2250B7520(8u);
      sub_22507CC50();
    }

    sub_2250957B8();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = *(v1 + *(v0 + 32));
    sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
    v6 = swift_task_alloc();
    sub_2250C8854(v6);
    v7 = *(MEMORY[0x277CFAAB8] + 4);
    swift_task_alloc();
    sub_22508E734();
    *(v0 + 48) = v8;
    *v8 = v9;
    sub_22509535C();
    sub_22507F1C8();
    sub_2250957B8();

    return MEMORY[0x28214D190](v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_2250C2C50()
{
  sub_225072C10();
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  sub_225075274();

  return v3();
}

uint64_t sub_2250C2CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = type metadata accessor for Logger();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250C2D70, a3, 0);
}

uint64_t sub_2250C2D70()
{
  sub_22507CE94();
  v1 = v0[2];
  sub_2250B84E4();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2250C2E54;
  v3 = v0[3];

  return sub_2250B2DDC();
}

uint64_t sub_2250C2E54()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  v3[8] = v0;

  if (!v0)
  {
    v11 = v3[6];

    sub_2250C87DC();
    v13 = v3[8];

    __asm { BRAA            X2, X16 }
  }

  v9 = v3[2];
  v10 = sub_225095410();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2250C2F7C()
{
  sub_22507E6E8();
  v1 = v0[8];
  v2 = v0[6];
  CKLog.getter();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_2250C88A8(&dword_22506F000, v11, v12, "Failed to obtain user ids, will try again after backoff: %@");
    sub_2250C86F4(v8, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  v17 = v0[2];

  (*(v15 + 8))(v14, v16);
  v18 = *(v17 + *(*v17 + 232));
  ExponentialNetworkBackoff.incrementBackoffCount()();

  v19 = v0[6];

  sub_2250C87DC();
  v20 = sub_2250C8804(v0[8]);

  return v21(v20);
}

uint64_t sub_2250C3100()
{
  v1 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v55 = &v51 - v3;
  v4 = type metadata accessor for Logger();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration.Payload();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v51 - v11;
  v12 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AuthenticatedSession.Configuration.Application();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v51 - v23;
  v25 = v0;
  AnySessionConfiguration.account.getter();
  v26 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v27 = sub_22507C8E8(v24, 1, v26);
  sub_2250C86F4(v24, &unk_27D718ED0, &qword_225444FF0);
  if (v27 == 1)
  {
    return sub_2250B7520(9);
  }

  AnySessionConfiguration.application.getter();
  AuthenticatedSession.Configuration.Application.pushRegistration.getter();
  (*(v17 + 8))(v20, v16);
  v28 = v58;
  AuthenticatedSession.Configuration.Application.PushRegistration.payload.getter();
  (*(v56 + 8))(v15, v57);
  v30 = v59;
  v29 = v60;
  v31 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x277CFA9F8], v61);
  sub_2250C8748(&unk_280D53608, MEMORY[0x277CFAA08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v29 + 8);
  v33(v30, v31);
  v33(v28, v31);
  if (v32)
  {
    return sub_2250B7520(9);
  }

  v35 = *(v25 + *(*v25 + 280));
  if (v35)
  {
    v36 = v35;
    v37 = v52;
    CCLog.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62 = v41;
      *v40 = 136315138;
      type metadata accessor for SessionID();
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;

      v45 = sub_225095AFC(v42, v44, &v62);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_22506F000, v38, v39, "%s: registering push", v40, 0xCu);
      sub_225073BF0(v41);
      MEMORY[0x22AA65DF0](v41, -1, -1);
      MEMORY[0x22AA65DF0](v40, -1, -1);
    }

    else
    {
    }

    (*(v53 + 8))(v37, v54);
    v46 = [objc_opt_self() deviceContextForTestDeviceReference_];
    v47 = type metadata accessor for TaskPriority();
    v48 = v55;
    sub_22507C8C0(v55, 1, 1, v47);
    v49 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
    v50 = swift_allocObject();
    v50[2] = v25;
    v50[3] = v49;
    v50[4] = v25;
    v50[5] = v36;
    v50[6] = v46;
    swift_retain_n();
    sub_2250B5ADC(0, 0, v48, &unk_225444900, v50);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_2250C3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2250C3834, a4, 0);
}

uint64_t sub_2250C3834()
{
  sub_22507CE94();
  v1 = *(v0 + 16);
  v2 = *(*v1 + 232);
  *(v0 + 40) = v2;
  v3 = *(v1 + v2);
  v4 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v6;
  v7 = *(MEMORY[0x277CFAAB8] + 4);
  swift_task_alloc();
  sub_22508E734();
  *(v0 + 56) = v8;
  *v8 = v9;
  sub_225095798(v8);
  v10 = sub_22508D0C0();

  return MEMORY[0x28214D190](v10, v1, v4, v11, v5, v12, v13, v14);
}

uint64_t sub_2250C3924()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[2];
    v10 = sub_2250C3B80;
  }

  else
  {
    v11 = v3[6];
    v12 = v3[2];

    v10 = sub_2250C3A34;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2250C3A34()
{
  sub_225094938();
  sub_22507E6E8();
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);
    v2 = *(*(v0 + 16) + *(v0 + 40));
    ExponentialNetworkBackoff.reset()();
    sub_2250B84E4();
    if (v1)
    {
      sub_225082628();
    }

    else
    {
      v20 = *(v0 + 16);
      sub_2250B7520(9u);
      sub_22507CC50();
    }

    sub_2250957B8();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
    v6 = swift_task_alloc();
    v7 = *(v0 + 16);
    v8 = *(v7 + v3);
    *(v0 + 48) = v6;
    *(v6 + 16) = v7;
    *(v6 + 24) = v5;
    *(v6 + 32) = v7;
    *(v6 + 48) = v4;
    v9 = *(MEMORY[0x277CFAAB8] + 4);
    swift_task_alloc();
    sub_22508E734();
    *(v0 + 56) = v10;
    *v10 = v11;
    sub_225095798();
    sub_22508D0C0();
    sub_2250957B8();

    return MEMORY[0x28214D190](v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_2250C3B80()
{
  sub_225072C10();
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  sub_225075274();

  return v3();
}

uint64_t sub_2250C3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v7 = type metadata accessor for Logger();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250C3CA4, a3, 0);
}

uint64_t sub_2250C3CA4()
{
  sub_22507CE94();
  v1 = v0[2];
  sub_2250B84E4();
  v0[8] = [objc_allocWithZone(CKDTokenRegistrationScheduler) initWithDeviceContext_];

  return MEMORY[0x2822009F8](sub_2250C3D7C, 0, 0);
}

uint64_t sub_2250C3D7C()
{
  sub_225072C10();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_2250C3E28;
  v2 = v0[8];
  v3 = v0[3];

  return sub_2250C7000(0, 0, v3);
}

uint64_t sub_2250C3E28()
{
  sub_22507CE94();
  v2 = *v1;
  sub_22507D320();
  *v4 = v3;
  v5 = *(v2 + 72);
  *v4 = *v1;
  *(v3 + 80) = v0;

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_2250C3FB0;
  }

  else
  {
    v7 = sub_2250C3F48;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2250C3F48()
{
  sub_225072C10();

  v1 = *(v0 + 56);

  sub_2250C87DC();
  v2 = sub_2250C8804(*(v0 + 80));

  return v3(v2);
}

uint64_t sub_2250C3FB0()
{
  sub_22507E6E8();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  CKLog.getter();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_2250C88A8(&dword_22506F000, v11, v12, "Failed to register push tokens, will try again after backoff: %@");
    sub_2250C86F4(v8, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  v13 = *(v0 + 80);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(v0 + 16);

  (*(v15 + 8))(v14, v16);
  v18 = *(v17 + *(*v17 + 232));
  ExponentialNetworkBackoff.incrementBackoffCount()();

  v19 = *(v0 + 56);

  sub_2250C87DC();
  v20 = sub_2250C8804(*(v0 + 80));

  return v21(v20);
}

uint64_t sub_2250C4138()
{
  v1 = v0;
  v2 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v203 = *(v2 - 8);
  v3 = *(v203 + 64);
  MEMORY[0x28223BE20](v2);
  v202 = v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v212 = v180 - v7;
  v8 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v229 = (v180 - v10);
  v213 = type metadata accessor for SessionID();
  v210 = *(v213 - 8);
  v11 = *(v210 + 64);
  MEMORY[0x28223BE20](v213);
  v228 = v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for AnySessionAcquiredInfo();
  v215 = *(v231 - 8);
  v13 = *(v215 + 64);
  v14 = MEMORY[0x28223BE20](v231);
  v16 = v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v214 = v180 - v18;
  MEMORY[0x28223BE20](v17);
  v230 = v180 - v19;
  v201 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v199 = *(v201 - 8);
  v20 = *(v199 + 64);
  MEMORY[0x28223BE20](v201);
  v200 = v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  v22 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v197 = (v180 - v23);
  v24 = type metadata accessor for DataSecurityAcquiredPayload(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v198 = v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Logger();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v180 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v189 = v180 - v33;
  v225 = type metadata accessor for AuthenticatedSession.ResolvedUser.PartitionType();
  v209 = *(v225 - 8);
  v34 = *(v209 + 64);
  v35 = MEMORY[0x28223BE20](v225);
  v196 = v180 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v191 = v180 - v38;
  MEMORY[0x28223BE20](v37);
  v208 = v180 - v39;
  v40 = sub_2250B0DFC(&qword_27D718F70, &qword_225444938);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v205 = v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v206 = v180 - v44;
  v207 = type metadata accessor for AuthenticatedSession.ResolvedUser.ID();
  v194 = *(v207 - 8);
  v45 = *(v194 + 64);
  v46 = MEMORY[0x28223BE20](v207);
  v193 = v180 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v224 = v180 - v48;
  v49 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = v180 - v51;
  v53 = sub_2250B0DFC(&qword_27D718F78, &unk_225444940);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v227 = v180 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v59 = v180 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = v180 - v60;
  v62 = sub_2250B0DFC(&qword_27D718F80, &qword_2254453B0);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v226 = v180 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v192 = v180 - v67;
  MEMORY[0x28223BE20](v66);
  v69 = v180 - v68;
  v70 = (v1 + *(*v1 + 288));
  v218 = *v70;
  if (!v218)
  {
    goto LABEL_45;
  }

  v219 = v28;
  v220 = v27;
  v216 = v16;
  v211 = v70;
  v71 = v70[1];
  v72 = sub_2250B7308();
  v232 = v1;
  if (v72)
  {
    v73 = *(v72 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor);
    *(v72 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor) = 0;

    v1 = v232;
  }

  else
  {
  }

  v74 = sub_2250B735C();
  if (v74)
  {
    v75 = *(v74 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor);
    *(v74 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor) = 0;
  }

  v76 = sub_2250B73A4();
  if (v76)
  {
    v77 = *(v76 + 16);
    *(v76 + 16) = 0;
  }

  v204 = v2;
  v78 = sub_2250B73EC();
  if (v78)
  {
    v79 = *(v78 + 16);
    *(v78 + 16) = 0;
  }

  v190 = type metadata accessor for AuthenticatedSession.ResolvedUser();
  sub_22507C8C0(v69, 1, 1, v190);
  v80 = type metadata accessor for SaltedHash();
  sub_22507C8C0(v61, 1, 1, v80);
  v81 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v82 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v83 = sub_22507C8E8(v52, 1, v82);
  sub_2250C86F4(v52, &unk_27D718ED0, &qword_225444FF0);
  v84 = 0;
  v85 = 0;
  v222 = v69;
  v223 = v61;
  v221 = v32;
  v217 = v71;
  if (v83 == 1)
  {
    goto LABEL_33;
  }

  v184 = v80;
  v86 = *(v1 + *(*v1 + 280));
  if (!v86)
  {
    goto LABEL_45;
  }

  v87 = v59;
  v88 = v86;
  v89 = sub_2250C8060(v88, &selRef_containerScopedUserID);
  if (!v90)
  {
    goto LABEL_45;
  }

  v183 = v89;
  v185 = v81;
  v180[1] = sub_2250C8060(v88, &selRef_orgAdminUserID);
  v186 = v91;
  v188 = v88;
  v92 = [v88 account];
  v93 = (v1 + *(*v1 + 248));
  if (*(v93 + 16) != 1)
  {
    goto LABEL_45;
  }

  v94 = v92;
  v95 = v93[1];
  v96 = [v94 accountID];
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  v187 = v95;
  v100 = [v95 accountID];
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;

  v104 = v97 == v101 && v99 == v103;
  v105 = v94;
  if (v104)
  {

    v107 = v87;
  }

  else
  {
    v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v107 = v87;
    if ((v106 & 1) == 0)
    {
      v108 = v105;

      v109 = v189;
      CKLog.getter();
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_22506F000, v110, v111, "AccountID changed during acquisition, going back to .validatingAccount", v112, 2u);
        MEMORY[0x22AA65DF0](v112, -1, -1);
      }

      (*(v219 + 8))(v109, v220);
      sub_2250B7520(4);

      sub_2250C76A8(v218);
      sub_2250C86F4(v223, &qword_27D718F78, &unk_225444940);
      return sub_2250C86F4(v222, &qword_27D718F80, &qword_2254453B0);
    }
  }

  v114 = [v105 accountID];
  v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v182 = v115;

  v116 = v206;
  v117 = v207;
  sub_22507C8C0(v206, 1, 1, v207);

  AuthenticatedSession.ResolvedUser.ID.init(userRecordName:)();
  if (v186)
  {

    v118 = v205;
    AuthenticatedSession.ResolvedUser.ID.init(userRecordName:)();
    sub_2250C86F4(v116, &qword_27D718F70, &qword_225444938);
    sub_22507C8C0(v118, 0, 1, v117);
    sub_2250C8588(v118, v116, &qword_27D718F70, &qword_225444938);
  }

  v189 = v105;
  v119 = [v105 isCarryAccount];
  v120 = v209;
  v121 = MEMORY[0x277CFA9B8];
  if (!v119)
  {
    v121 = MEMORY[0x277CFA9B0];
  }

  v122 = v191;
  v123 = v225;
  (*(v209 + 104))(v191, *v121, v225);
  (*(v120 + 32))(v208, v122, v123);
  v124 = v232;
  v125 = *v232;
  v126 = v124 + *(*v124 + 256);
  v127 = v184;
  if (v126[24] != 1)
  {
LABEL_45:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v129 = *(v126 + 1);
  v128 = *(v126 + 2);

  if (v128)
  {
    sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_225444480;
    *(v130 + 32) = v129;
    *(v130 + 40) = v128;

    SaltedHash.init(_:)();
    v131 = v223;
    sub_2250C86F4(v223, &qword_27D718F78, &unk_225444940);
    sub_22507C8C0(v107, 0, 1, v127);
    sub_2250C8588(v107, v131, &qword_27D718F78, &unk_225444940);
  }

  v132 = *(*v124 + 264);
  swift_beginAccess();
  v133 = v124 + v132;
  v134 = v197;
  sub_2250C853C(v133, v197, &unk_27D718E90, &qword_2254447C8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2250C86F4(v134, &unk_27D718E90, &qword_2254447C8);
    goto LABEL_45;
  }

  v135 = *v134;

  v136 = sub_2250B0DFC(&qword_27D718F58, &qword_2254448C8);
  v137 = v198;
  sub_2250C7E68(v134 + *(v136 + 48), v198);
  v138 = v194;
  (*(v194 + 16))(v193, v224, v117);
  v139 = v209;
  v140 = v208;
  (*(v209 + 16))(v196, v208, v225);
  (*(v199 + 16))(v200, v137, v201);
  v141 = v206;
  sub_2250C853C(v206, v205, &qword_27D718F70, &qword_225444938);
  v142 = v192;
  AuthenticatedSession.ResolvedUser.init(id:accountPartition:dataProtection:organizationAdminID:)();

  sub_2250C7F30(v137);
  (*(v139 + 8))(v140, v225);
  sub_2250C86F4(v141, &qword_27D718F70, &qword_225444938);
  (*(v138 + 8))(v224, v207);
  v69 = v222;
  sub_2250C86F4(v222, &qword_27D718F80, &qword_2254453B0);
  sub_22507C8C0(v142, 0, 1, v190);
  sub_2250C8588(v142, v69, &qword_27D718F80, &qword_2254453B0);
  v61 = v223;
  v1 = v232;
  v85 = v182;
  v84 = v181;
LABEL_33:
  v143 = sub_2250C8B38(v84, v85);
  v224 = v144;
  v225 = v143;

  (*(v210 + 16))(v228, v1 + qword_280D53830, v213);
  sub_2250C853C(v69, v226, &qword_27D718F80, &qword_2254453B0);
  v145 = (v1 + *(*v1 + 272));
  v146 = *v145;
  v147 = v145[1];
  sub_2250C853C(v61, v227, &qword_27D718F78, &unk_225444940);
  v148 = qword_280D538D0;
  swift_beginAccess();
  sub_2250C853C(v1 + v148, v229, &unk_27D718E60, &unk_225444780);

  v149 = v212;
  AnySessionConfiguration.encryption.getter();
  v150 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v149, 1, v150) == 1)
  {
    sub_2250C86F4(v149, &unk_27D7190E0, &unk_2254447D0);
  }

  else
  {
    v151 = v149;
    v152 = v202;
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
    (*(*(v150 - 8) + 8))(v151, v150);
    AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
    (*(v203 + 8))(v152, v204);
  }

  sub_22508D04C(v225, v224);
  v153 = v230;
  AnySessionAcquiredInfo.init(sessionID:privilegedInfoHash:user:userPersonaUniqueString:keySyncRequestIdentityPublicKeyIDHash:previousInvalidationContext:serviceName:)();
  CCLog.getter();
  v154 = v215;
  v155 = v214;
  v156 = v153;
  v157 = v231;
  v229 = *(v215 + 16);
  v229(v214, v156, v231);

  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = v155;
    v161 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    v233 = v228;
    *v161 = 136315394;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v162 = dispatch thunk of CustomStringConvertible.description.getter();
    v164 = v163;

    v165 = sub_225095AFC(v162, v164, &v233);

    *(v161 + 4) = v165;
    *(v161 + 12) = 2080;
    sub_2250C8748(&qword_280D535F8, MEMORY[0x277CFAA88]);
    v166 = dispatch thunk of CustomStringConvertible.description.getter();
    v168 = v167;
    v169 = *(v154 + 8);
    v169(v160, v231);
    v170 = sub_225095AFC(v166, v168, &v233);

    *(v161 + 14) = v170;
    _os_log_impl(&dword_22506F000, v158, v159, "%s: acquired daemon session %s", v161, 0x16u);
    v171 = v228;
    swift_arrayDestroy();
    v172 = v231;
    MEMORY[0x22AA65DF0](v171, -1, -1);
    MEMORY[0x22AA65DF0](v161, -1, -1);

    (*(v219 + 8))(v221, v220);
    v173 = v216;
  }

  else
  {

    v169 = *(v154 + 8);
    v169(v155, v157);
    (*(v219 + 8))(v221, v220);
    v173 = v216;
    v172 = v157;
  }

  type metadata accessor for CKSessionAcquiredInfo();
  v174 = v230;
  v229(v173, v230, v172);
  v175 = CKSessionAcquiredInfo.__allocating_init(_:)();
  v176 = v218;
  v218();

  sub_2250C76A8(v176);
  sub_22508D128(v225, v224);
  v169(v174, v172);
  sub_2250C86F4(v223, &qword_27D718F78, &unk_225444940);
  sub_2250C86F4(v222, &qword_27D718F80, &qword_2254453B0);
  v177 = v211;
  v178 = *v211;
  v179 = v211[1];
  *v211 = 0;
  v177[1] = 0;
  return sub_2250C76A8(v178);
}

char *sub_2250C5920()
{
  v1 = *v0;
  v45 = *v0;
  v2 = qword_280D53830;
  v3 = type metadata accessor for SessionID();
  sub_225072D54(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = qword_280D538E8;
  v6 = type metadata accessor for AnySessionConfiguration();
  sub_225072D54(v6);
  (*(v7 + 8))(&v0[v5]);
  sub_2250C86F4(&v0[qword_280D538D0], &unk_27D718E60, &unk_225444780);
  v8 = *&v0[qword_280D538C8];
  swift_unknownObjectRelease();
  v9 = *&v0[qword_280D538C0];
  swift_unknownObjectRelease();

  sub_22509492C();
  v11 = v1[11];
  (*(*(v11 - 8) + 8))(&v0[*(v10 + 200)], v11);
  sub_22509492C();

  sub_22509492C();
  sub_22509492C();
  v15 = v1[10];
  (*(*(v15 - 8) + 8))(&v0[*(v14 + 224)], v15);
  sub_22509492C();
  v17 = *&v0[*(v16 + 232)];

  sub_22509492C();
  sub_2250C7694(*&v0[*(v18 + 240)], v0[*(v18 + 240) + 8]);
  sub_22509492C();
  v20 = *(v19 + 248);
  v21 = v1[14];
  v22 = sub_2250C8900();
  v23 = v1[15];
  v24 = v1[16];
  v25 = v1[17];
  v26 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v27 = v15;
  *(&v27 + 1) = v11;
  v49 = v22;
  v50 = v21;
  v51 = v23;
  v52 = v24;
  v53 = v25;
  v54 = v26;
  v46 = *(v45 + 6);
  v47 = v27;
  v48 = v46;
  v28 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(0, &v47);
  sub_225072D54(v28);
  (*(v29 + 8))(&v0[v20]);
  sub_22509492C();
  sub_2250C87B8(*&v0[*(v30 + 256)], *&v0[*(v30 + 256) + 8], *&v0[*(v30 + 256) + 16], v0[*(v30 + 256) + 24]);
  sub_22509492C();
  v32 = *(v31 + 264);
  v33 = sub_2250C8900();
  v34 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v47 = v15;
  *(&v47 + 1) = v11;
  v48 = v46;
  v49 = v33;
  v50 = v21;
  v51 = v23;
  v52 = v24;
  v53 = v25;
  v54 = v34;
  v35 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(0, &v47);
  sub_225072D54(v35);
  (*(v36 + 8))(&v0[v32]);
  sub_22509492C();
  v38 = *&v0[*(v37 + 272) + 8];

  sub_22509492C();
  v40 = *&v0[*(v39 + 280)];
  swift_unknownObjectRelease();
  sub_22509492C();
  v42 = &v0[*(v41 + 288)];
  v43 = v42[1];
  sub_2250C76A8(*v42);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2250C5D4C()
{
  sub_2250C5920();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2250C5DB0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2250C5E38(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2250C5F2C(uint64_t a1)
{
  v2 = *(a1 + 48);
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 88);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_2250C5FE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 88);
  v6 = *(a3 + 48);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 80) + 8) & ~*(v7 + 80)) + *(v7 + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 253) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_22:
      v16 = *(a1 + v9);
      if (v16 >= 3)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return (v10 | v15) + 254;
}

void sub_2250C6180(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 88);
  v8 = *(a4 + 48);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((*(v9 + 80) + 8) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if (a3 < 0xFE)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 + ~(-1 << v12) - 253) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFD)
  {
    v14 = a2 - 254;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v10 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v10 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v11] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v10] = -a2;
        }

        break;
    }
  }
}

void sub_2250C63DC()
{
  sub_2250C88E8();
  v2 = v0;
  v3 = *v0;
  v129 = type metadata accessor for PropertyDescription();
  v4 = *(v129 - 8);
  sub_2250C8890();
  v6 = v5;
  v7 = *(v4 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v9);
  v123 = &v120 - v10;
  sub_22507E434();
  v11 = type metadata accessor for OSLogPrivacy();
  v12 = sub_22507CD44(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_2250986C0();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  sub_2250C8890();
  v16 = *(v15 + 72);
  v127 = v6;
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v126 = 3 * v16;
  v124 = v18;
  v121 = v17 + 3 * v16;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_225444490;
  v128 = v17;
  v20 = type metadata accessor for SessionID();
  sub_2250C8938(v20);
  sub_22507E428(v20);
  (*(v21 + 16))();
  static OSLogPrivacy.public.getter();
  sub_2250C8868();
  PropertyDescription.init(_:_:privacy:)();
  sub_2250C87E8();
  v23 = *(v2 + *(v22 + 296));
  v24 = v3[10];
  sub_2250C889C();
  v26 = *(v25 + 88);
  sub_2250C889C();
  v28 = *(v27 + 96);
  sub_2250C889C();
  v30 = *(v29 + 104);
  sub_2250C889C();
  v32 = *(v31 + 112);
  v33 = v3[15];
  v34 = v3[16];
  v35 = v3[17];
  v37 = v36;
  v137 = v36;
  v138 = v38;
  v135 = v39;
  v136 = v38;
  v130 = v34;
  v131 = v40;
  v139 = v40;
  v140 = v39;
  v141 = v32;
  v142 = v33;
  v133 = v35;
  v134 = v33;
  v143 = v34;
  v144 = v35;
  v41 = sub_2250C8848();
  v140 = type metadata accessor for CKDSessionAcquirer.Actor.State(v41, v42);
  LOBYTE(v137) = v23;
  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  v125 = 2 * v16;
  v132 = v16;
  v43 = type metadata accessor for AnySessionConfiguration();
  sub_2250C8938(v43);
  sub_22507E428(v43);
  (*(v44 + 16))();
  static OSLogPrivacy.auto.getter();
  v45 = v129;
  PropertyDescription.init(_:_:privacy:)();
  v147 = v19;
  if (*(v2 + qword_280D538C8))
  {
    v46 = *(v2 + qword_280D538C8);
    ObjectType = swift_getObjectType();
    sub_2250C88C8(ObjectType);
    static OSLogPrivacy.auto.getter();
    v48 = v123;
    PropertyDescription.init(_:_:privacy:)();
    sub_225072BD8();
    v53 = sub_22509891C(1uLL, 4, 1, v19, v49, v50, v51, v52);
    swift_unknownObjectRelease();
    *(v53 + 16) = 4;
    (*(v127 + 32))(v53 + v121, v48, v45);
    v147 = v53;
  }

  v54 = v128;
  v55 = swift_allocObject();
  v124 = v55;
  *(v55 + 16) = xmmword_2254444A0;
  v56 = (v55 + v54);
  sub_2250C87E8();
  v58 = v2 + *(v57 + 240);
  v59 = *v58;
  v60 = v58[8];
  sub_2250C8814();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(swift_getAssociatedConformanceWitness() + 8);
  v63 = v136;
  v137 = v37;
  v138 = v136;
  v64 = v131;
  v139 = v131;
  v140 = v135;
  v141 = AssociatedTypeWitness;
  v142 = v32;
  v65 = v130;
  v143 = v134;
  v144 = v130;
  v145 = v133;
  v146 = v62;
  v66 = sub_2250C8848();
  v140 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(v66, v67);
  v137 = v59;
  LOBYTE(v138) = v60;
  sub_2250C7534(v59, v60);
  static OSLogPrivacy.auto.getter();
  v123 = v56;
  PropertyDescription.init(_:_:privacy:)();
  sub_2250C8814();
  v68 = swift_getAssociatedTypeWitness();
  v69 = *(swift_getAssociatedConformanceWitness() + 8);
  v137 = v37;
  v138 = v63;
  v70 = v135;
  v139 = v64;
  v140 = v135;
  v141 = v68;
  v142 = v32;
  v143 = v134;
  v144 = v65;
  v71 = v1;
  v72 = v133;
  v145 = v133;
  v146 = v69;
  v73 = sub_2250C8848();
  v75 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(v73, v74);
  sub_2250C8938(v75);
  sub_2250C87E8();
  v77 = *(v76 + 248);
  (*(*(v75 - 8) + 16))();
  v122 = v71;
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  sub_2250C87E8();
  v79 = v2 + *(v78 + 256);
  v80 = *(v79 + 1);
  v121 = *v79;
  v81 = *(v79 + 2);
  LOBYTE(v65) = v79[24];
  sub_2250C8814();
  v82 = swift_getAssociatedTypeWitness();
  v83 = *(swift_getAssociatedConformanceWitness() + 8);
  v84 = v37;
  v137 = v37;
  v138 = v136;
  v85 = v131;
  v139 = v131;
  v140 = v70;
  v141 = v82;
  v142 = v32;
  v86 = v134;
  v87 = v130;
  v143 = v134;
  v144 = v130;
  v145 = v72;
  v146 = v83;
  v88 = v84;
  v89 = sub_2250C8848();
  v140 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(v89, v90);
  v91 = swift_allocObject();
  v137 = v91;
  v92 = v121;
  *(v91 + 16) = v121;
  *(v91 + 24) = v80;
  *(v91 + 32) = v81;
  *(v91 + 40) = v65;
  sub_2250C7548(v92, v80, v81, v65);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v93 = swift_getAssociatedTypeWitness();
  v94 = *(swift_getAssociatedConformanceWitness() + 8);
  v137 = v88;
  v138 = v136;
  v139 = v85;
  v140 = v135;
  v141 = v93;
  v142 = v32;
  v143 = v86;
  v144 = v87;
  v145 = v133;
  v146 = v94;
  v95 = sub_2250C8848();
  v97 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(v95, v96);
  v98 = sub_2250C8938(v97);
  sub_2250C87E8();
  v100 = *(v99 + 264);
  swift_beginAccess();
  sub_22507E428(v97);
  (*(v101 + 16))(v98, v2 + v100, v97);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  sub_2250C6DF8(v124, &qword_27D718E40, &qword_225444760, MEMORY[0x277CFA9A8], MEMORY[0x277CFA9A8]);
  sub_2250C87E8();
  if (*(v2 + *(v102 + 280)))
  {
    v103 = swift_getAssociatedTypeWitness();
    sub_2250C88C8(v103);
    static OSLogPrivacy.auto.getter();
    v104 = v120;
    PropertyDescription.init(_:_:privacy:)();
    v105 = v147;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = *(v105 + 16);
      sub_225072BD8();
      v105 = sub_22509891C(0, v110 + 1, 1, v105, v111, v112, v113, v114);
    }

    v106 = v129;
    v107 = v127;
    v108 = *(v105 + 16);
    if (v108 >= *(v105 + 24) >> 1)
    {
      sub_225072BD8();
      v105 = sub_22509891C(v115, v108 + 1, 1, v105, v116, v117, v118, v119);
    }

    swift_unknownObjectRelease();
    *(v105 + 16) = v108 + 1;
    (*(v107 + 32))(v105 + v128 + v108 * v132, v104, v106);
  }

  sub_2250C8920();
}

int64_t sub_2250C6DF8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *(a1 + 16);
  v8 = *(*v5 + 16);
  result = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2250C7600(result, 1, a2, a3, a4);
  v11 = *v5;
  if (!*(a1 + 16))
  {

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = a5(0);
  v13 = *(result - 8);
  if (v12 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = *(v13 + 72);
  swift_arrayInitWithCopy();

  if (!v7)
  {
LABEL_8:
    *v5 = v11;
    return result;
  }

  v16 = *(v11 + 16);
  v17 = __OFADD__(v16, v7);
  v18 = v16 + v7;
  if (!v17)
  {
    *(v11 + 16) = v18;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_2250C6F60(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = [swift_getObjCClassFromMetadata() containerWithAppContainerTuple:a1 processScopedClientProxy:a2 logicalDeviceScopedClientProxy:a3 containerEntitlements:a4 containerOptions:a5 sharedContainerTable:a6];

  return v12;
}

uint64_t sub_2250C7000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2250B0DFC(&unk_27D718F60, &unk_225444928);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v4[18] = v9;
  v4[2] = v4;
  v4[3] = sub_2250C71DC;
  swift_continuation_init();
  v4[17] = v6;
  v10 = sub_225073808(v4 + 14);
  sub_2250B4150();
  (*(v7 + 32))(v10, v9, v6);
  v4[10] = MEMORY[0x277D85DD0];
  v4[11] = 1107296256;
  v4[12] = sub_2250ED984;
  v4[13] = &unk_28385A720;
  [v3 registerTokenForAdopterContainer:a3 completionBlock:v4 + 10];
  (*(v7 + 8))(v10, v6);

  return MEMORY[0x282200938](v4 + 2);
}

uint64_t sub_2250C71DC()
{
  sub_22507E6E8();
  sub_225075560();
  v1 = *v0;
  sub_22507D320();
  *v3 = v1;
  v4 = *(v2 + 144);
  if (*(v2 + 48))
  {
    v5 = *(v2 + 48);
    swift_willThrow();
  }

  v6 = *(v1 + 8);

  return v6();
}

id sub_2250C72F8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    v8 = MEMORY[0x22AA62D80](a3, a4);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithApplicationID:a1 containerID:a2 personaID:v8];

  return v9;
}

char *sub_2250C73B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2250B0DFC(&qword_27D718E50, &unk_225444770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_2250C74B4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2250B0DFC(&qword_27D718E48, &qword_225444768);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_2250C7534(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_2250C7548(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }

  return swift_unknownObjectRetain();
}

char *sub_2250C75A0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_225075254(a3, result);
  }

  return result;
}

char *sub_2250C75C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_225075254(a3, result);
  }

  return result;
}

char *sub_2250C75E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_225075254(a3, result);
  }

  return result;
}

size_t sub_2250C7600(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if (!result || a1 > *(v11 + 24) >> 1)
  {
    if (*(v11 + 16) <= a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = *(v11 + 16);
    }

    result = sub_22509891C(result, v13, a2 & 1, v11, a3, a4, a5, a5);
    *v5 = result;
  }

  return result;
}

uint64_t sub_2250C7694(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2250C76A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2250C76CC(uint64_t a1)
{
  v2 = type metadata accessor for SessionID();
  sub_22507D394(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35 = v4;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for AnySessionConfiguration();
  sub_22507D394(v7);
  v34 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v9 + 64);
  v11 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507D394(v11);
  v13 = (v34 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v15 = (*(v14 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = type metadata accessor for Entitlements();
  sub_22507D394(v18);
  v21 = (*(v20 + 64) + ((*(v19 + 80) + v17 + 8) & ~*(v19 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = *(v1 + 24);
  v33 = *(v1 + 16);
  v23 = *(v1 + v15);
  v24 = *(v1 + v16);
  v25 = *(v1 + v17);
  v26 = *(v1 + v21);
  v28 = *(v1 + v22);
  v27 = *(v1 + v22 + 8);
  v29 = *(v1 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  v30 = swift_task_alloc();
  *(v36 + 16) = v30;
  *v30 = v36;
  v30[1] = sub_22507F4D4;

  return sub_2250B5188(a1, v33, v32, v1 + v35, v1 + v34, v1 + v13, v23, v24);
}

uint64_t sub_2250C7960()
{
  sub_22507CE94();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_225075264(v3);
  *v4 = v5;
  v6 = sub_22507C92C(v4);

  return sub_2250B59B8(v6, v7, v1);
}

uint64_t sub_2250C79F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

void sub_2250C7A0C(uint64_t a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_2250C7A68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  if (a4 == 1)
  {
    a5();
  }

  else if (!a4)
  {

    return (a5)();
  }

  return result;
}

uint64_t sub_2250C7ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0(v5);
  v7 = *(v6 + 40);
  v8 = sub_225075280();
  v9(v8);
  return v4;
}

uint64_t sub_2250C7B18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22508D128(a1, a2);
  }

  return a1;
}

uint64_t sub_2250C7B2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22508D04C(a1, a2);
  }

  return a1;
}

uint64_t sub_2250C7B40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2250C7B88()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250BEE20(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C7C1C()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250BFA70(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C7CB0()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250C0A38(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C7D44()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2250C7D8C()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250C1AC4(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C7E20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2250C7B40(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2250C7E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSecurityAcquiredPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250C7ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSecurityAcquiredPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250C7F30(uint64_t a1)
{
  v2 = type metadata accessor for DataSecurityAcquiredPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2250C7F8C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2250C7FCC()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250C292C(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C8060(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_225075280();
}

uint64_t sub_2250C80BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_2250C8184;

  return sub_2250C3BDC(a2, a3, a4, a5, a6);
}

uint64_t sub_2250C8184()
{
  sub_22507CE94();
  v3 = v2;
  sub_225075560();
  v5 = v4;
  sub_22507D320();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_225072D68();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_2250C8280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_2250C8794;

  return sub_2250C2CAC(a2, a3, a4, a5);
}

uint64_t sub_2250C8338()
{
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  v3 = sub_22509862C();

  return v4(v3);
}

uint64_t sub_2250C83E0()
{
  sub_22507E6E8();
  sub_2250C887C();
  v2 = swift_task_alloc();
  v3 = sub_225075264(v2);
  *v3 = v4;
  v3[1] = sub_225095DA4;
  v5 = sub_22509862C();

  return sub_2250C3810(v5, v6, v7, v8, v1, v0);
}

uint64_t sub_2250C8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_2250C887C();
  v10 = swift_task_alloc();
  v11 = sub_225075264(v10);
  *v11 = v12;
  v11[1] = sub_225095DA4;
  sub_22509862C();
  sub_225095898();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2250C853C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0(v5);
  v7 = *(v6 + 16);
  v8 = sub_225075280();
  v9(v8);
  return v4;
}

uint64_t sub_2250C8588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0(v5);
  v7 = *(v6 + 32);
  v8 = sub_225075280();
  v9(v8);
  return v4;
}

uint64_t sub_2250C85D4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2250C85E8()
{
  sub_22507CE94();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_225075264(v4);
  *v5 = v6;
  v7 = sub_22507C92C(v5);

  return sub_2250B8200(v7, v8, v2, v3);
}

uint64_t sub_2250C8684(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250C86F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2250B0DFC(a2, a3);
  sub_225072D54(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2250C8748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2250C87A8(uint64_t result)
{
  *(v1 + 96) = result;
  v2 = *(v1 + 24);
  return result;
}

uint64_t sub_2250C87B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = MEMORY[0x277D85028];

  return sub_2250C7A68(a1, a2, a3, a4, v5);
}

uint64_t sub_2250C8830()
{
  result = v0;
  v3 = *(v1 - 192);
  v4 = *(v1 - 304);
  return result;
}

void *sub_2250C8854(void *result)
{
  *(v3 + 40) = result;
  result[2] = v1;
  result[3] = v2;
  result[4] = v1;
  result[5] = v4;
  return result;
}

void sub_2250C887C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

void sub_2250C88A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_2250C88C8(uint64_t a1)
{
  *(v2 - 152) = a1;
  *(v2 - 176) = v1;

  return swift_unknownObjectRetain_n();
}

uint64_t sub_2250C8900()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t *sub_2250C8938(uint64_t a1)
{
  *(v1 - 152) = a1;

  return sub_225073808((v1 - 176));
}

uint64_t sub_2250C8950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2250C8588(v5, v4, a3, a4);
}

uint64_t sub_2250C8A98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2250C8AE4()
{
  result = qword_27D718FA0;
  if (!qword_27D718FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D718FA0);
  }

  return result;
}

uint64_t sub_2250C8B38(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = type metadata accessor for SHA256();
  v3 = sub_225072D1C(v2);
  v57 = v4;
  v58 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_225072C00();
  v9 = v8 - v7;
  v10 = type metadata accessor for SHA256Digest();
  v11 = sub_225072D1C(v10);
  v59 = v12;
  v60 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v55 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v52 - v17;
  v52 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v18 = sub_225072D1C(v52);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_225072C00();
  v25 = v24 - v23;
  v26 = type metadata accessor for JSONEncoder.OutputFormatting();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_225072C00();
  v29 = type metadata accessor for JSONEncoder();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_2250B0DFC(&qword_27D718FB0, &qword_225444AA0);
  v32 = *(v27 + 72);
  v33 = *(v27 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_225444480;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v61 = v34;
  sub_2250C99DC(&qword_280D54D60, MEMORY[0x277CC8718]);
  sub_2250B0DFC(&qword_27D718FB8, qword_225444AA8);
  sub_2250C9810();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v20 + 104))(v25, *MEMORY[0x277CC8778], v52);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v35 = *(v29 + 48);
  v36 = *(v29 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v61 = v53;
  v62 = v54;
  sub_2250C9874();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  sub_2250C99DC(&qword_280D535C0, MEMORY[0x277CC5540]);
  v37 = v58;
  dispatch thunk of HashFunction.init()();
  v38 = sub_22507F2E8();
  sub_22508D04C(v38, v39);
  v40 = sub_22507F2E8();
  sub_2250C9940(v40, v41);
  v42 = sub_22507F2E8();
  sub_22508D128(v42, v43);
  v44 = v56;
  dispatch thunk of HashFunction.finalize()();
  (*(v57 + 8))(v9, v37);
  v46 = v59;
  v45 = v60;
  v47 = v55;
  (*(v59 + 16))(v55, v44, v60);
  v48 = sub_2250C8FF0(v47);
  v49 = sub_22507F2E8();
  sub_22508D128(v49, v50);

  (*(v46 + 8))(v44, v45);
  return v48;
}

uint64_t sub_2250C8FF0(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v8 = v2;
  v9 = sub_2250C99DC(&unk_280D535C8, MEMORY[0x277CC5290]);
  v3 = sub_225073808(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_225073BAC(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_225073BF0(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_2250C9130(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_2250C91B8()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](0);
  return Hasher._finalize()();
}

Swift::Int sub_2250C922C()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](0);
  return Hasher._finalize()();
}

uint64_t sub_2250C9270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250C9130(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2250C92B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250C91B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2250C92E4(uint64_t a1)
{
  v2 = sub_2250C9C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250C9320(uint64_t a1)
{
  v2 = sub_2250C9C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250C935C(void *a1)
{
  v2 = sub_2250B0DFC(&qword_27D718FC0, &qword_225444B48);
  v3 = sub_225072D1C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_225073BAC(a1, a1[3]);
  sub_2250C9C98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_2250C9490(uint64_t *a1)
{
  v3 = sub_2250B0DFC(&qword_27D718FC8, &qword_225444B50);
  v4 = sub_225072D1C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v13 = sub_22507F2E8();
  v15 = sub_225073BAC(v13, v14);
  sub_2250C9C98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v10, v3);
  }

  sub_225073BF0(a1);
  return v15;
}

uint64_t sub_2250C95DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250C9490(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2250C9608(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_2250C935C(a1);
}

uint64_t sub_2250C9624(uint64_t a1)
{
  v2 = sub_2250C97BC();

  return MEMORY[0x28214D000](a1, v2);
}

uint64_t sub_2250C9660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSLogPrivacy();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v6 = *(type metadata accessor for PropertyDescription() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_225444480;
  sub_2250C8B38(a1, a2);
  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v9;
}

unint64_t sub_2250C97BC()
{
  result = qword_27D718FA8;
  if (!qword_27D718FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D718FA8);
  }

  return result;
}

unint64_t sub_2250C9810()
{
  result = qword_280D534F0;
  if (!qword_280D534F0)
  {
    sub_2250C7B40(&qword_27D718FB8, qword_225444AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D534F0);
  }

  return result;
}

unint64_t sub_2250C9874()
{
  result = qword_280D53650;
  if (!qword_280D53650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53650);
  }

  return result;
}

uint64_t sub_2250C98C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x22AA62320]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x22AA62330]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_2250C9940(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_2250C9AF8(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_2250C9A24();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_2250C99DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2250C9A24()
{
  v2 = *MEMORY[0x277D85DE8];
  type metadata accessor for SHA256();
  sub_2250C99DC(&qword_280D535C0, MEMORY[0x277CC5540]);
  result = dispatch thunk of HashFunction.update(bufferPointer:)();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2250C9AF8(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x22AA62190]();
      type metadata accessor for SHA256();
      sub_2250C99DC(&qword_280D535C0, MEMORY[0x277CC5540]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_2250C9BD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2250C9BE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2250C9C38(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2250C9C98()
{
  result = qword_280D53668[0];
  if (!qword_280D53668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D53668);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKDSessionAcquisitionPrivilegedInfo.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CKDSessionAcquisitionPrivilegedInfo.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2250C9DF4()
{
  result = qword_27D718FD0;
  if (!qword_27D718FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D718FD0);
  }

  return result;
}

unint64_t sub_2250C9E4C()
{
  result = qword_280D53658;
  if (!qword_280D53658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53658);
  }

  return result;
}

unint64_t sub_2250C9EA4()
{
  result = qword_280D53660;
  if (!qword_280D53660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53660);
  }

  return result;
}

uint64_t sub_2250C9F08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v39 = type metadata accessor for AnySessionConfiguration();
  v3 = sub_225072D1C(v39);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_225072C00();
  v10 = v9 - v8;
  v11 = sub_2250B0DFC(&qword_27D719048, &qword_225444FB0);
  v12 = sub_225072D1C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v38 - v17;
  v41 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v19 = sub_225072D1C(v41);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22507F304();
  v26 = v24 - v25;
  result = MEMORY[0x28223BE20](v27);
  v30 = &v38 - v29;
  v40 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor;
  if (*(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor))
  {
    __break(1u);
  }

  else
  {
    sub_2250B0DFC(&qword_27D719010, &qword_225444830);
    (*(v14 + 104))(v18, *MEMORY[0x277D85778], v11);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v14 + 8))(v18, v11);
    (*(v5 + 16))(v10, v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_sessionConfiguration, v39);
    v31 = *(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_testDeviceReferenceProtocol);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_entitlements, v44);
    v32 = v41;
    (*(v21 + 16))(v26, v30, v41);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_tccChecker, v43);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_accountFactory, v42);
    v33 = _s12AccountCheckC5ActorCMa(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v36 = sub_2250CBB70(v10, v31, v44, v26, v43, v42);
    (*(v21 + 8))(v30, v32);
    v37 = *(v2 + v40);
    *(v2 + v40) = v36;
  }

  return result;
}

uint64_t sub_2250CA240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v7[3] = &_s10TCCCheckerVN;
  v7[4] = &off_28385ABF8;
  v6[3] = &_s14AccountFactoryVN;
  v6[4] = &off_28385AB50;
  sub_2250CA2A0(a1, a2, a3, a4, v7, v6, a5);
  sub_225073BF0(v6);
  return sub_225073BF0(v7);
}

uint64_t sub_2250CA2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v254 = a5;
  v250 = a4;
  v274 = a3;
  v277 = a2;
  v278 = a7;
  v9 = type metadata accessor for AnySessionAcquiredInfo();
  v10 = sub_225072D1C(v9);
  v271 = v11;
  v272 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_225072C00();
  v270 = v15 - v14;
  sub_22507E434();
  v253 = type metadata accessor for BundleID.Payload();
  v16 = sub_225072D1C(v253);
  v252 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_225072C00();
  v251 = (v21 - v20);
  sub_22507E434();
  v256 = type metadata accessor for ResolvedBundleID();
  v22 = sub_225072D1C(v256);
  v260 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22507F304();
  v255 = v26 - v27;
  sub_22507C940();
  MEMORY[0x28223BE20](v28);
  v258 = &v247 - v29;
  sub_22507E434();
  v259 = type metadata accessor for BundleID();
  v30 = sub_225072D1C(v259);
  v266 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_225072C00();
  v265 = v35 - v34;
  sub_22507E434();
  v36 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  v37 = sub_225072D1C(v36);
  v263 = v38;
  v264 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_225072C00();
  v262 = (v42 - v41);
  sub_22507E434();
  v43 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  v44 = sub_225072D1C(v43);
  v261 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_225072C00();
  v50 = v49 - v48;
  v51 = type metadata accessor for Logger();
  v275 = sub_225072D1C(v51);
  v276 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v275);
  sub_22507F304();
  v57 = v55 - v56;
  MEMORY[0x28223BE20](v58);
  sub_22507E6C4();
  v273 = v59;
  sub_22507C940();
  MEMORY[0x28223BE20](v60);
  sub_22507E6C4();
  v257 = v61;
  sub_22507C940();
  MEMORY[0x28223BE20](v62);
  sub_22507E6C4();
  v249 = v63;
  sub_22507C940();
  MEMORY[0x28223BE20](v64);
  sub_22507E6C4();
  v267 = v65;
  sub_22507C940();
  MEMORY[0x28223BE20](v66);
  sub_22507E6C4();
  v269 = v67;
  sub_22507C940();
  MEMORY[0x28223BE20](v68);
  sub_22507E6C4();
  v268 = v69;
  sub_22507C940();
  MEMORY[0x28223BE20](v70);
  v72 = &v247 - v71;
  v73 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v76 = &v247 - v75;
  v77 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v78 = sub_225072D1C(v77);
  v80 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v78);
  sub_225072C00();
  v85 = v84 - v83;
  AnySessionConfiguration.account.getter();
  if (sub_22507C8E8(v76, 1, v77) == 1)
  {
    sub_2250D4224(v76, &unk_27D718ED0, &qword_225444FF0);
LABEL_38:
    sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
    return swift_storeEnumTagMultiPayload();
  }

  v248 = v80;
  (*(v80 + 32))(v85, v76, v77);
  sub_225073BAC(a6, a6[3]);
  v86 = sub_2250D4824(a1, v277);
  if (!v86)
  {
    CCLog.getter();
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_22506F000, v115, v116, "Account has logged out since session acquisition.", v117, 2u);
      sub_22507C9FC();
    }

    sub_22507F268();
    v118(v57);
    sub_22507F2F4();
    v120 = v85;
    v121 = v77;
    goto LABEL_20;
  }

  v87 = v86;
  v277 = v77;
  v247 = v85;
  v88 = [v86 accountID];
  v89 = v87;
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  v93 = sub_2250C8B38(v90, v92);
  v95 = v94;

  v96 = v274;
  v97 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
  v99 = v98;
  LOBYTE(v92) = MEMORY[0x22AA62370](v93, v95, v97, v98);
  sub_22508D128(v97, v99);
  if ((v92 & 1) == 0)
  {
    v122 = v273;
    CCLog.getter();
    v123 = v270;
    v124 = v271;
    v125 = v272;
    (*(v271 + 16))(v270, v96, v272);
    v126 = v89;
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = sub_2250957CC();
      LODWORD(v269) = v128;
      v130 = v129;
      v274 = swift_slowAlloc();
      v279 = v274;
      *v130 = 136315394;
      v268 = v127;
      v131 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
      v132 = v123;
      v134 = v133;
      Data.description.getter();
      sub_22507CEA0();
      sub_22508D128(v131, v134);
      (*(v124 + 8))(v132, v125);
      v135 = sub_2250956C4();

      *(v130 + 4) = v135;
      *(v130 + 12) = 2080;
      v136 = [v126 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v137 = sub_22507F1F4();

      *(v130 + 14) = v137;
      v138 = v268;
      _os_log_impl(&dword_22506F000, v268, v269, "Current account has changed since session acquisition. Previous hash %s, new account %s", v130, 0x16u);
      swift_arrayDestroy();
      sub_22507C9FC();
      sub_22507D330();
      sub_22508D128(v93, v267);

      sub_22507CBD0();
      v140 = v273;
    }

    else
    {
      sub_22508D128(v93, v95);

      (*(v124 + 8))(v123, v125);
      sub_22507CBD0();
      v140 = v122;
    }

    v139(v140, v275);
    v120 = sub_22507CD50();
    v121 = v277;
LABEL_20:
    v119(v120, v121);
    v155 = *MEMORY[0x277CFAA30];
    v156 = type metadata accessor for SessionReadinessError();
    sub_225072BF0(v156);
    (*(v157 + 104))(v278, v155, v158);
    goto LABEL_38;
  }

  v274 = v93;
  v100 = v89;
  if ([v89 isRenewingAuthToken])
  {
    CCLog.getter();
    v101 = v89;
    v102 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v103 = sub_22509341C();
    v104 = v278;
    v105 = v247;
    if (v103)
    {
      sub_22507CA14();
      v106 = sub_225093BF8();
      v279 = v106;
      *v96 = 136315138;
      v107 = [v101 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_22507CEA0();

      v108 = sub_2250956C4();

      *(v96 + 4) = v108;
      sub_2250986D8(&dword_22506F000, v109, v110, "Auth token needs renewal since session acquisition for account %s");
      sub_225073BF0(v106);
      sub_22507CA50();
      sub_22507D330();
      sub_22508D0E0();

      sub_22507CBD0();
      v112 = v72;
LABEL_8:
      v111(v112, v275);
      v113 = sub_22507CD50();
LABEL_26:
      v114(v113, v277);
      v172 = MEMORY[0x277CFAA48];
LABEL_37:
      v198 = *v172;
      v199 = type metadata accessor for SessionReadinessError();
      (*(*(v199 - 8) + 104))(v104, v198, v199);
      goto LABEL_38;
    }

    sub_22508CFD0();

    sub_22507CBD0();
    v171 = v72;
    goto LABEL_25;
  }

  v105 = v247;
  v141 = AuthenticatedSession.Configuration.Account.allowAccessDuringAccountWarmUp.getter();
  v104 = v278;
  if ((v141 & 1) == 0 && [v100 isWarmingUp])
  {
    v142 = v268;
    CCLog.getter();
    v143 = v100;
    v144 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_22509341C())
    {
      sub_22507CA14();
      v145 = sub_225093BF8();
      v279 = v145;
      LODWORD(v142->isa) = 136315138;
      v146 = [v143 accountID];
      v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v267 = v95;
      v149 = v148;

      v150 = sub_225095AFC(v147, v149, &v279);

      *(&v142->isa + 4) = v150;
      sub_2250986D8(&dword_22506F000, v151, v152, "State has changed to warmingUp since session acquisition for account %s");
      sub_225073BF0(v145);
      sub_22507CA50();
      sub_22507D330();
      sub_22508D0E0();

      sub_22507CBD0();
      v154 = v268;
    }

    else
    {
      sub_22508CFD0();

      sub_22507CBD0();
      v154 = v142;
    }

    v153(v154, v275);
    sub_22507F2F4();
    v197(v105, v277);
    v172 = MEMORY[0x277CFAA30];
    goto LABEL_37;
  }

  if ([v100 needsToVerifyTerms])
  {
    v159 = v269;
    CCLog.getter();
    v160 = v100;
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();

    if (sub_22509341C())
    {
      v163 = sub_22507CA14();
      v164 = swift_slowAlloc();
      v279 = v164;
      *v163 = 136315138;
      v165 = [v160 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_22507CEA0();

      v166 = sub_2250956C4();

      *(v163 + 4) = v166;
      _os_log_impl(&dword_22506F000, v161, v162, "Terms and Conditions have been updated since session acquisition for account %s", v163, 0xCu);
      sub_225073BF0(v164);
      sub_22507C9FC();
      sub_22507CA50();
      sub_22508D0E0();

      sub_22507F268();
      v167(v159);
      v168 = sub_22507CD50();
    }

    else
    {
      sub_22508CFD0();

      sub_22507F268();
      v188(v159);
      sub_22507F2F4();
      v168 = v105;
    }

    v169(v168, v277);
    v172 = MEMORY[0x277CFAA68];
    goto LABEL_37;
  }

  if (([v100 hasCredentials] & 1) == 0)
  {
    v189 = v267;
    CCLog.getter();
    v190 = v100;
    v191 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_22509341C())
    {
      sub_22507CA14();
      v192 = sub_225093BF8();
      v279 = v192;
      *v189 = 136315138;
      v193 = [v190 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v194 = sub_22507F1F4();

      *(v189 + 4) = v194;
      sub_2250986D8(&dword_22506F000, v195, v196, "Credentials have changed since session acquisition for account %s");
      sub_225073BF0(v192);
      sub_22507CA50();
      sub_22507D330();
      sub_22508CFD0();

      sub_22507CBD0();
      v112 = v267;
      goto LABEL_8;
    }

    sub_22508CFD0();

    sub_22507CBD0();
    v171 = v189;
LABEL_25:
    v170(v171, v275);
    sub_22507F2F4();
    v113 = v105;
    goto LABEL_26;
  }

  AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
  v173 = v262;
  AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
  (*(v261 + 8))(v50, v43);
  v175 = v263;
  v174 = v264;
  v176 = (*(v263 + 88))(v173, v264);
  if (v176 == *MEMORY[0x277CFAA20])
  {
    v177 = v100;
    (*(v175 + 96))(v173, v174);
    v178 = v259;
    (*(v266 + 32))(v265, v173, v259);
    v179 = v251;
    BundleID.payload.getter();
    v180 = v252;
    v181 = v253;
    v182 = (*(v252 + 88))(v179, v253);
    if (v182 == *MEMORY[0x277CFAAF8])
    {
      (*(v180 + 96))(v179, v181);
      v183 = *v179;
      v184 = v179[1];
      v185 = v258;
      ResolvedBundleID.init(_:)();
      v186 = v256;
      v187 = v260;
      goto LABEL_45;
    }

    v186 = v256;
    v187 = v260;
    if (v182 == *MEMORY[0x277CFAB00])
    {
      v203 = v250[4];
      sub_225073BAC(v250, v250[3]);
      v185 = v258;
      dispatch thunk of EntitlementsProtocol.bundleID.getter();
LABEL_45:
      sub_225073BAC(v254, v254[3]);
      v204 = sub_2250D6B78(v185);
      v205 = v257;
      v206 = v255;
      if (v204 == 2 || (v204 & 1) != 0)
      {
        sub_22508CFD0();

        (*(v187 + 8))(v185, v186);
        (*(v266 + 8))(v265, v178);
        v207 = sub_22507CD50();
        v208(v207, v277);
        goto LABEL_38;
      }

      CCLog.getter();
      (*(v187 + 16))(v206, v185, v186);
      v224 = v177;
      v225 = v185;
      v226 = Logger.logObject.getter();
      v227 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v226, v227))
      {
        v228 = sub_2250957CC();
        v272 = v224;
        v229 = v228;
        v273 = swift_slowAlloc();
        v279 = v273;
        *v229 = 136315394;
        v230 = MEMORY[0x22AA62510]();
        v231 = v187;
        v233 = v232;
        v267 = v95;
        v234 = *(v231 + 8);
        v260 = v231 + 8;
        v235 = v206;
        v236 = v186;
        v234(v235, v186);
        v237 = sub_225095AFC(v230, v233, &v279);

        *(v229 + 4) = v237;
        *(v229 + 12) = 2080;
        v238 = v272;
        v239 = [v272 accountID];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v240 = sub_22507F1F4();

        *(v229 + 14) = v240;
        _os_log_impl(&dword_22506F000, v226, v227, "TCC has been disabled for %s since session acquisition for account %s", v229, 0x16u);
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507D330();
        sub_22508D0E0();

        sub_22507F268();
        v241(v257);
        v234(v258, v236);
      }

      else
      {
        sub_22508CFD0();

        v245 = *(v187 + 8);
        v245(v206, v186);
        sub_22507F268();
        v246(v205);
        v245(v225, v186);
      }

      v223 = v265;
      v222 = *(v266 + 8);
      v221 = v259;
      goto LABEL_57;
    }
  }

  else
  {
    if (v176 == *MEMORY[0x277CFAA28])
    {
      (*(v175 + 96))(v173, v174);
      v201 = *v173;
      if ([v100 isDataclassEnabled_])
      {
        sub_22507F2F4();
        v202(v105, v277);

        sub_22508CFD0();
        goto LABEL_38;
      }

      v209 = v100;
      v210 = v249;
      CCLog.getter();
      v211 = v209;
      v212 = v201;
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.error.getter();

      if (!sub_22509341C())
      {
        sub_22508CFD0();

        sub_22507F268();
        v242(v210);
        sub_22507F2F4();
        v244 = v105;
LABEL_58:
        v243(v244, v277);
        v172 = MEMORY[0x277CFAA40];
        goto LABEL_37;
      }

      v215 = sub_2250957CC();
      v279 = swift_slowAlloc();
      *v215 = 136315394;
      v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v218 = sub_225095AFC(v216, v217, &v279);

      *(v215 + 4) = v218;
      *(v215 + 12) = 2080;
      v219 = [v211 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_22507CEA0();

      v220 = sub_2250956C4();

      *(v215 + 14) = v220;
      _os_log_impl(&dword_22506F000, v213, v214, "Dataclass %s has been disabled since session acquisition for account %s", v215, 0x16u);
      swift_arrayDestroy();
      sub_22507C9FC();
      sub_22507CA50();
      sub_22508D0E0();

      sub_22507F268();
      v223 = v249;
LABEL_57:
      v222(v223, v221);
      v244 = sub_22507CD50();
      goto LABEL_58;
    }

    if (v176 == *MEMORY[0x277CFAA18])
    {
      (*(v248 + 8))(v105, v277);

      sub_22508CFD0();
      goto LABEL_38;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250CB750()
{
  v1 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_sessionConfiguration;
  v2 = type metadata accessor for AnySessionConfiguration();
  sub_225072BF0(v2);
  (*(v3 + 8))(v0 + v1);
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_entitlements));
  v4 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor);

  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_tccChecker));
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_accountFactory));
  return v0;
}

uint64_t sub_2250CB7F8()
{
  sub_2250CB750();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2250CB878()
{
  result = type metadata accessor for AnySessionConfiguration();
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

uint64_t sub_2250CB924()
{
  v1 = *v0;
  sub_2250D4024(&unk_280D53E68, _s12AccountCheckCMa);
  return PropertyDescribable<>.description.getter();
}

size_t sub_2250CB988()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_225072C00();
  v3 = type metadata accessor for PropertyDescription();
  v4 = sub_225072D1C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_225072C00();
  v11 = v10 - v9;
  if (!*(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor))
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor);

  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  v12 = sub_2250C7388();
  v13 = *(v12 + 16);
  if (v13 >= *(v12 + 24) >> 1)
  {
    v12 = sub_2250C7388();
  }

  *(v12 + 16) = v13 + 1;
  (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v11, v3);

  return v12;
}

uint64_t sub_2250CBB70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v34 = a4;
  v35 = a1;
  v39 = a3;
  v10 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v33 - v12;
  v13 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  swift_defaultActor_initialize();
  v17 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  v18 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  sub_22507C8C0(v6 + v17, 1, 1, v18);
  *(v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken) = 0;
  v19 = (v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID);
  v20[1] = 0;
  v20[2] = 0;
  *v20 = 0;
  v21 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_resolvedBundleID;
  v22 = type metadata accessor for ResolvedBundleID();
  sub_22507C8C0(v6 + v21, 1, 1, v22);
  v23 = v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  *v23 = 0;
  *(v23 + 8) = 4;
  v24 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_sessionConfiguration;
  v25 = type metadata accessor for AnySessionConfiguration();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v6 + v24, a1, v25);
  *(v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_testDeviceReferenceProtocol) = a2;
  sub_2250D4724(v39, v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements);
  v27 = *(v18 - 8);
  (*(v27 + 16))(v16, a4, v18);
  sub_22507C8C0(v16, 0, 1, v18);
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_2250D4548(v16, v6 + v17, &qword_27D719028, &qword_225444F68);
  swift_endAccess();
  v28 = v37;
  sub_2250D4724(v37, v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker);
  v29 = v38;
  sub_2250D4724(v38, v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory);
  v30 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v36, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v6;

  sub_2250E1D44();
  swift_unknownObjectRelease();

  sub_225073BF0(v29);
  sub_225073BF0(v28);
  (*(v27 + 8))(v34, v18);
  sub_225073BF0(v39);
  (*(v26 + 8))(v35, v25);
  return v6;
}

uint64_t sub_2250CBF48()
{
  sub_225072C10();
  v1 = *(v0 + 16);
  sub_2250CC424();
  sub_225075274();

  return v2();
}

uint64_t sub_2250CBFA0()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2250D2C7C();
  sub_2250D2D2C();
  sub_2250D2E28();
  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  if (!sub_22507C8E8(v0 + v7, 1, v2))
  {
    (*(v3 + 16))(v6, v0 + v7, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v6, v2);
  }

  v8 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_sessionConfiguration;
  v9 = type metadata accessor for AnySessionConfiguration();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  sub_2250D4224(v1 + v7, &qword_27D719028, &qword_225444F68);
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements));
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker));
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory));

  v11 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken + 8);

  v12 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID + 8);
  v13 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID + 16);
  sub_2250D4194(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID));
  sub_2250D4224(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_resolvedBundleID, &qword_27D719020, &qword_225444F60);
  sub_2250D4140(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2250CC224()
{
  v0 = sub_2250CBFA0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2250CC2A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250CC2E0()
{
  v0 = type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2250D3B18();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2250D3B7C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2250CC424()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22506F000, v5, v6, "Starting account acquisition", v7, 2u);
    MEMORY[0x22AA65DF0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_2250CC570();
  return sub_2250CC8A8();
}

void sub_2250CC570()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken;
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken))
  {
    __break(1u);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    sub_225073BAC((v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory), *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory + 24));
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = v4;

    sub_2250D51E8(v6, sub_2250D4598, v5);
  }
}

uint64_t sub_2250CC650()
{
  v0 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_2250E1FF4();
}

uint64_t sub_2250CC77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2250CC79C, 0, 0);
}

uint64_t sub_2250CC79C()
{
  sub_225072C10();
  v1 = *(v0 + 48);
  sub_22507CC60();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (!Strong)
  {
    sub_22507F8C8();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2250CC83C, Strong, 0);
}

uint64_t sub_2250CC83C()
{
  sub_225072C10();
  v1 = *(v0 + 56);
  sub_2250D2EBC();

  v2 = sub_22507D3B8();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2250CC8A8()
{
  v1 = v0;
  v60 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v2 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v4 = &v56 - v3;
  v5 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = &v56 - v7;
  v8 = type metadata accessor for Logger();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v15 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v56 - v17;
  v19 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x28223BE20](v19);
  v63 = &v56 - v21;
  v22 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  v23 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state);
  v24 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8);
  if (v24 == 4 && v23 == 2)
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0x634170556B6F6F6CLL, 0xEF2928746E756F63);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v55 = *(v22 + 8);
    v65 = *v22;
    v66 = v55;
    _print_unlocked<A, B>(_:_:)();
LABEL_16:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v26 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v1 + v26, v18, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v18, 1, v19) == 1)
  {
    sub_2250D4224(v18, &qword_27D719028, &qword_225444F68);
    goto LABEL_16;
  }

  (*(v64 + 32))(v63, v18, v19);
  *v22 = 1;
  *(v22 + 8) = 4;
  sub_2250D4140(v23, v24);
  sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory + 24));
  v27 = sub_2250D4824(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_sessionConfiguration, *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_testDeviceReferenceProtocol));
  if (v27)
  {
    v28 = v27;
    CCLog.getter();
    v29 = v28;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v19;
      v34 = v33;
      v65 = v33;
      *v32 = 136315138;
      v35 = [v29 accountID];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_225095AFC(v36, v38, &v65);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_22506F000, v30, v31, "Account is logged in: %s", v32, 0xCu);
      sub_225073BF0(v34);
      v40 = v34;
      v19 = v56;
      MEMORY[0x22AA65DF0](v40, -1, -1);
      MEMORY[0x22AA65DF0](v32, -1, -1);
    }

    (*(v61 + 8))(v14, v62);
    v41 = v63;
    sub_2250CD078(v29);
  }

  else
  {
    CCLog.getter();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v19;
      v46 = v45;
      v65 = v45;
      *v44 = 136315138;
      type metadata accessor for AnySessionConfiguration();
      sub_2250D4024(&qword_27D719040, MEMORY[0x277CFAAA8]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = sub_225095AFC(v47, v48, &v65);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_22506F000, v42, v43, "Account is not logged in. sessionConfiguration: %s", v44, 0xCu);
      sub_225073BF0(v46);
      v50 = v46;
      v19 = v56;
      MEMORY[0x22AA65DF0](v50, -1, -1);
      MEMORY[0x22AA65DF0](v44, -1, -1);
    }

    (*(v61 + 8))(v12, v62);
    v51 = *MEMORY[0x277CFAA30];
    v52 = type metadata accessor for SessionReadinessError();
    (*(*(v52 - 8) + 104))(v4, v51, v52);
    swift_storeEnumTagMultiPayload();
    v53 = v57;
    v41 = v63;
    AsyncStream.Continuation.yield(_:)();
    (*(v58 + 8))(v53, v59);
  }

  return (*(v64 + 8))(v41, v19);
}

uint64_t sub_2250CD078(void *a1)
{
  v2 = v1;
  v79 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v4 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v75 - v5;
  v6 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v6);
  v75 = &v75 - v8;
  v9 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v75 - v11;
  v13 = type metadata accessor for Logger();
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v75 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v75 - v21;
  v23 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v75 - v25;
  v27 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v82 = *(v27 - 8);
  v28 = *(v82 + 64);
  MEMORY[0x28223BE20](v27);
  v83 = &v75 - v29;
  v30 = v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) == 4 && *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state) == 1)
  {
    v32 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
    swift_beginAccess();
    sub_2250D41D4(v2 + v32, v26, &qword_27D719028, &qword_225444F68);
    if (sub_22507C8E8(v26, 1, v27) == 1)
    {
      sub_2250D4224(v26, &qword_27D719028, &qword_225444F68);
      goto LABEL_23;
    }

    v33 = v82;
    (*(v82 + 32))(v83, v26, v27);
    *v30 = a1;
    *(v30 + 8) = 0;
    v34 = a1;
    if ([v34 isWarmingUp])
    {
      AnySessionConfiguration.account.getter();
      v35 = type metadata accessor for AuthenticatedSession.Configuration.Account();
      if (sub_22507C8E8(v12, 1, v35) == 1)
      {
        sub_2250D4224(v12, &unk_27D718ED0, &qword_225444FF0);
LABEL_18:
        CCLog.getter();
        v60 = v34;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v86 = v64;
          *v63 = 136315138;
          v65 = [v60 accountID];
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          v69 = sub_225095AFC(v66, v68, &v86);

          *(v63 + 4) = v69;
          _os_log_impl(&dword_22506F000, v61, v62, "Account is warming up: %s", v63, 0xCu);
          sub_225073BF0(v64);
          MEMORY[0x22AA65DF0](v64, -1, -1);
          MEMORY[0x22AA65DF0](v63, -1, -1);
        }

        (*(v80 + 8))(v17, v81);
        v47 = v83;
        v70 = *MEMORY[0x277CFAA30];
        v71 = type metadata accessor for SessionReadinessError();
        (*(*(v71 - 8) + 104))(v78, v70, v71);
        swift_storeEnumTagMultiPayload();
        v72 = v75;
        AsyncStream.Continuation.yield(_:)();
        (*(v76 + 8))(v72, v77);
        return (*(v33 + 8))(v47, v27);
      }

      v48 = AuthenticatedSession.Configuration.Account.allowAccessDuringAccountWarmUp.getter();
      (*(*(v35 - 8) + 8))(v12, v35);
      if ((v48 & 1) == 0)
      {
        goto LABEL_18;
      }

      CCLog.getter();
      v49 = v34;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v86 = v53;
        *v52 = 136315138;
        v54 = [v49 accountID];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_225095AFC(v55, v57, &v86);

        *(v52 + 4) = v58;
        _os_log_impl(&dword_22506F000, v50, v51, "Account is warming up, but access is allowed during warm-up: %s", v52, 0xCu);
        sub_225073BF0(v53);
        MEMORY[0x22AA65DF0](v53, -1, -1);
        v59 = v52;
        v33 = v82;
        MEMORY[0x22AA65DF0](v59, -1, -1);
      }

      (*(v80 + 8))(v20, v81);
    }

    else
    {
      CCLog.getter();
      v36 = v34;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v86 = v40;
        *v39 = 136315138;
        v41 = [v36 accountID];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = sub_225095AFC(v42, v44, &v86);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_22506F000, v37, v38, "Account is not warming up: %s", v39, 0xCu);
        sub_225073BF0(v40);
        MEMORY[0x22AA65DF0](v40, -1, -1);
        v46 = v39;
        v33 = v82;
        MEMORY[0x22AA65DF0](v46, -1, -1);
      }

      (*(v80 + 8))(v22, v81);
    }

    v47 = v83;
    sub_2250CD9FC();
    return (*(v33 + 8))(v47, v27);
  }

  v84 = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
  MEMORY[0x22AA62E50](0xD000000000000021, 0x800000022547A070);
  MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
  v74 = *(v30 + 8);
  v86 = *v30;
  v87 = v74;
  _print_unlocked<A, B>(_:_:)();
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250CD9FC()
{
  v1 = v0;
  v2 = type metadata accessor for BundleID();
  v112 = *(v2 - 8);
  v113 = v2;
  v3 = *(v112 + 64);
  MEMORY[0x28223BE20](v2);
  v111 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v5 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v103 - v6;
  v109 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v107 = *(v109 - 8);
  v7 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v105 = &v103 - v8;
  v9 = type metadata accessor for Logger();
  v114 = *(v9 - 8);
  v10 = *(v114 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v103 = &v103 - v14;
  MEMORY[0x28223BE20](v13);
  v110 = &v103 - v15;
  v16 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  v119 = *(v16 - 8);
  v120 = v16;
  v17 = *(v119 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  v117 = *(v20 - 8);
  v118 = v20;
  v21 = *(v117 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v103 - v26;
  v28 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v124 = *(v28 - 8);
  v125 = v28;
  v29 = *(v124 + 64);
  MEMORY[0x28223BE20](v28);
  v123 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v103 - v33;
  v35 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v122 = *(v35 - 8);
  v36 = *(v122 + 64);
  MEMORY[0x28223BE20](v35);
  v126 = &v103 - v37;
  v38 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8))
  {
    v129 = 0;
    v130 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD000000000000020, 0x8000000225479FA0);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v101 = *(v38 + 8);
    v127 = *v38;
    LOBYTE(v128) = v101;
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_23;
  }

  v39 = *v38;
  v40 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v1 + v40, v34, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v34, 1, v35) == 1)
  {
    v102 = v39;
    sub_2250D4224(v34, &qword_27D719028, &qword_225444F68);
    goto LABEL_23;
  }

  v115 = v9;
  v41 = *(v122 + 32);
  v121 = v35;
  v41(v126, v34, v35);
  v42 = v39;
  v116 = v1;
  AnySessionConfiguration.account.getter();
  v43 = v125;
  if (sub_22507C8E8(v27, 1, v125) == 1)
  {
    sub_2250D4224(v27, &unk_27D718ED0, &qword_225444FF0);
    v127 = 0;
    v128 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    MEMORY[0x22AA62E50](0xD000000000000014, 0x800000022547A020);
    MEMORY[0x22AA62E50](0xD000000000000020, 0x8000000225479FA0);
    MEMORY[0x22AA62E50](0xD00000000000002FLL, 0x800000022547A040);
    goto LABEL_23;
  }

  (*(v124 + 32))(v123, v27, v43);
  v44 = *v38;
  *v38 = v39;
  v45 = *(v38 + 8);
  *(v38 + 8) = 1;
  v46 = v42;
  sub_2250D4140(v44, v45);
  AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
  AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
  (*(v117 + 8))(v23, v118);
  v48 = v119;
  v47 = v120;
  v49 = (*(v119 + 88))(v19, v120);
  v50 = v39;
  if (v49 == *MEMORY[0x277CFAA20])
  {
    (*(v48 + 96))(v19, v47);
    v52 = v111;
    v51 = v112;
    v53 = v113;
    (*(v112 + 32))(v111, v19, v113);
    sub_2250CE894(v52, v46);
    sub_2250D4140(v39, 0);
    (*(v51 + 8))(v52, v53);
    v54 = v121;
    goto LABEL_19;
  }

  if (v49 != *MEMORY[0x277CFAA28])
  {
    if (v49 == *MEMORY[0x277CFAA18])
    {
      v71 = v110;
      CCLog.getter();
      v72 = v46;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      sub_2250D4140(v50, 0);
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v127 = v76;
        *v75 = 136315138;
        v77 = [v72 accountID];
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        v81 = sub_225095AFC(v78, v80, &v127);

        *(v75 + 4) = v81;
        _os_log_impl(&dword_22506F000, v73, v74, "No authorization check for system service, account: %s", v75, 0xCu);
        sub_225073BF0(v76);
        MEMORY[0x22AA65DF0](v76, -1, -1);
        MEMORY[0x22AA65DF0](v75, -1, -1);
      }

      v82 = (*(v114 + 8))(v71, v115);
      v54 = v121;
      sub_2250CFDF4(v82);
      goto LABEL_15;
    }

    while (1)
    {
LABEL_23:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  (*(v48 + 96))(v19, v47);
  v55 = *v19;
  if ([v46 isDataclassEnabled_])
  {
    v56 = v103;
    CCLog.getter();
    sub_2250D412C(v50, 0);
    v57 = v55;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    sub_2250D4140(v50, 0);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v127 = v61;
      *v60 = 136315394;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = sub_225095AFC(v62, v63, &v127);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      v65 = [v46 accountID];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = sub_225095AFC(v66, v68, &v127);

      *(v60 + 14) = v69;
      _os_log_impl(&dword_22506F000, v58, v59, "Dataclass %s is enabled for account: %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v61, -1, -1);
      MEMORY[0x22AA65DF0](v60, -1, -1);
    }

    v70 = (*(v114 + 8))(v56, v115);
    v54 = v121;
    sub_2250CFDF4(v70);

LABEL_15:
    sub_2250D4140(v50, 0);
    goto LABEL_19;
  }

  v83 = v104;
  CCLog.getter();
  sub_2250D412C(v39, 0);
  v84 = v55;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();

  sub_2250D4140(v39, 0);
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v127 = v88;
    *v87 = 136315394;
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = sub_225095AFC(v89, v90, &v127);

    *(v87 + 4) = v91;
    *(v87 + 12) = 2080;
    v92 = [v46 accountID];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96 = sub_225095AFC(v93, v95, &v127);

    *(v87 + 14) = v96;
    _os_log_impl(&dword_22506F000, v85, v86, "Dataclass %s is disabled for account: %s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v88, -1, -1);
    MEMORY[0x22AA65DF0](v87, -1, -1);
  }

  (*(v114 + 8))(v83, v115);
  v97 = *MEMORY[0x277CFAA40];
  v98 = type metadata accessor for SessionReadinessError();
  (*(*(v98 - 8) + 104))(v106, v97, v98);
  swift_storeEnumTagMultiPayload();
  v99 = v105;
  v54 = v121;
  AsyncStream.Continuation.yield(_:)();

  sub_2250D4140(v50, 0);
  (*(v107 + 8))(v99, v109);
LABEL_19:
  (*(v124 + 8))(v123, v125);
  return (*(v122 + 8))(v126, v54);
}

uint64_t sub_2250CE894(uint64_t a1, void *a2)
{
  v3 = v2;
  v107 = a2;
  v105 = a1;
  v102 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v4 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v98 - v5;
  v100 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v99 = *(v100 - 8);
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v98 - v7;
  v8 = type metadata accessor for Logger();
  v109 = *(v8 - 8);
  v110 = v8;
  v9 = *(v109 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v103 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v111 = &v98 - v12;
  v13 = sub_2250B0DFC(&qword_27D719020, &qword_225444F60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v98 - v15;
  v17 = type metadata accessor for BundleID.Payload();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for ResolvedBundleID();
  v23 = *(v22 - 1);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v22);
  v106 = (&v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v104 = &v98 - v28;
  MEMORY[0x28223BE20](v27);
  v112 = &v98 - v29;
  v30 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v98 - v32;
  v34 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v113 = *(v34 - 8);
  v35 = *(v113 + 64);
  MEMORY[0x28223BE20](v34);
  v114 = &v98 - v36;
  v37 = v3 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(&v3[1].isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state) != 1)
  {
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD000000000000017, 0x8000000225479F30);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v97 = v37[8];
    v115 = *v37;
    v116 = v97;
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_20;
  }

  v38 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v3 + v38, v33, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v33, 1, v34) == 1)
  {
    sub_2250D4224(v33, &qword_27D719028, &qword_225444F68);
    goto LABEL_20;
  }

  v39 = *(v113 + 32);
  v108 = v34;
  v39(v114, v33, v34);
  BundleID.payload.getter();
  v40 = (*(v18 + 88))(v21, v17);
  if (v40 != *MEMORY[0x277CFAAF8])
  {
    if (v40 == *MEMORY[0x277CFAB00])
    {
      v44 = v22;
      v45 = *(&v3[4].isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements);
      sub_225073BAC((&v3->isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements), *(&v3[3].isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements));
      v43 = v112;
      dispatch thunk of EntitlementsProtocol.bundleID.getter();
      v22 = v44;
      goto LABEL_7;
    }

    while (1)
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  (*(v18 + 96))(v21, v17);
  v41 = *v21;
  v42 = v21[1];
  v43 = v112;
  ResolvedBundleID.init(_:)();
LABEL_7:
  v46 = v106;
  v47 = v23[2];
  v47(v16, v43, v22);
  sub_22507C8C0(v16, 0, 1, v22);
  v48 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_resolvedBundleID;
  swift_beginAccess();
  sub_2250D4548(v16, v3 + v48, &qword_27D719020, &qword_225444F60);
  swift_endAccess();
  sub_225073BAC((&v3->isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(&v3[3].isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker));
  v49 = sub_2250D6B78(v43);
  if (v49 == 2 || (v49 & 1) != 0)
  {
    v106 = v3;
    v50 = v111;
    CCLog.getter();
    v51 = v104;
    v47(v104, v43, v22);
    v52 = v107;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v107 = v22;
      v57 = v56;
      v115 = v56;
      *v55 = 136315394;
      sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998]);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = v23[1];
      v61(v51, v107);
      v62 = sub_225095AFC(v58, v60, &v115);

      *(v55 + 4) = v62;
      *(v55 + 12) = 2080;
      v63 = [v52 accountID];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = sub_225095AFC(v64, v66, &v115);

      *(v55 + 14) = v67;
      _os_log_impl(&dword_22506F000, v53, v54, "TCC granted access for %s for account: %s", v55, 0x16u);
      swift_arrayDestroy();
      v68 = v57;
      v22 = v107;
      MEMORY[0x22AA65DF0](v68, -1, -1);
      v69 = v55;
      v43 = v112;
      MEMORY[0x22AA65DF0](v69, -1, -1);

      v70 = (*(v109 + 8))(v111, v110);
    }

    else
    {

      v61 = v23[1];
      v61(v51, v22);
      v70 = (*(v109 + 8))(v50, v110);
    }

    sub_2250CFDF4(v70);
    v61(v43, v22);
    v71 = v108;
  }

  else
  {
    v72 = v103;
    CCLog.getter();
    v47(v46, v43, v22);
    v73 = v22;
    v74 = v107;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      LODWORD(v107) = v76;
      v78 = v77;
      v111 = swift_slowAlloc();
      v115 = v111;
      *v78 = 136315394;
      sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998]);
      v106 = v75;
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v82 = v23[1];
      v82(v46, v73);
      v83 = sub_225095AFC(v79, v81, &v115);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2080;
      v84 = [v74 accountID];
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      v88 = sub_225095AFC(v85, v87, &v115);
      v89 = v82;

      *(v78 + 14) = v88;
      v90 = v106;
      _os_log_impl(&dword_22506F000, v106, v107, "TCC rejected access for %s for account: %s", v78, 0x16u);
      v91 = v111;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v91, -1, -1);
      MEMORY[0x22AA65DF0](v78, -1, -1);

      (*(v109 + 8))(v103, v110);
    }

    else
    {

      v89 = v23[1];
      v89(v46, v73);
      (*(v109 + 8))(v72, v110);
    }

    v92 = v112;
    sub_2250CF55C(v112);
    v93 = *MEMORY[0x277CFAA40];
    v94 = type metadata accessor for SessionReadinessError();
    (*(*(v94 - 8) + 104))(v101, v93, v94);
    swift_storeEnumTagMultiPayload();
    v95 = v98;
    v71 = v108;
    AsyncStream.Continuation.yield(_:)();
    (*(v99 + 8))(v95, v100);
    v89(v92, v73);
  }

  return (*(v113 + 8))(v114, v71);
}

uint64_t sub_2250CF55C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvedBundleID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken);
  if (!*(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken + 8))
  {
    UUID.init()();
    v30 = a1;
    v15 = UUID.uuidString.getter();
    v29 = v4;
    v16 = v15;
    v31 = v15;
    v18 = v17;
    (*(v9 + 8))(v13, v8);
    v19 = v14[1];
    *v14 = v16;
    v14[1] = v18;

    sub_225073BAC((v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = v29;
    v22 = v30;
    (*(v5 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v29);
    v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    (*(v5 + 32))(v25 + v23, v7, v21);
    v26 = (v25 + v24);
    v27 = v31;
    *v26 = v31;
    v26[1] = v18;
    *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

    sub_2250D5584(v27, v18, v22, sub_2250D43C8, v25);
  }

  return result;
}

uint64_t sub_2250CF810(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v43 = a4;
  v41 = a2;
  v6 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ResolvedBundleID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v47 = v14;
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = type metadata accessor for Logger();
  v44 = *(v17 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();
  v45 = *(v11 + 16);
  v46 = a1;
  v45(v16, a1, v10);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v42 = a3;

  v40 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = v17;
    v24 = v23;
    v25 = swift_slowAlloc();
    v49[0] = v25;
    *v24 = 136315394;
    sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998]);
    v38 = v21;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v9;
    v29 = v28;
    (*(v11 + 8))(v16, v10);
    v30 = sub_225095AFC(v26, v29, v49);
    v9 = v27;

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_225095AFC(v41, v42, v49);
    v31 = v38;
    _os_log_impl(&dword_22506F000, v38, v40, "TCC change notification received for %s, token: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v25, -1, -1);
    MEMORY[0x22AA65DF0](v24, -1, -1);

    (*(v44 + 8))(v20, v39);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
    (*(v44 + 8))(v20, v17);
  }

  v32 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v9, 1, 1, v32);
  v33 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v34 = v48;
  v45(v48, v46, v10);
  v35 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  *(v36 + 4) = v33;
  (*(v11 + 32))(&v36[v35], v34, v10);
  sub_2250E1FF4();
}

uint64_t sub_2250CFCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2250CFCE8, 0, 0);
}

uint64_t sub_2250CFCE8()
{
  sub_225072C10();
  v1 = *(v0 + 48);
  sub_22507CC60();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (!Strong)
  {
    sub_22507F8C8();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2250CFD88, Strong, 0);
}

uint64_t sub_2250CFD88()
{
  sub_225072C10();
  v1 = *(v0 + 64);
  sub_2250D30F4(*(v0 + 56));

  v2 = sub_22507D3B8();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2250CFDF4()
{
  v1 = v0;
  v80 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v2 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v81 = &v77 - v3;
  v4 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v82 = *(v4 - 1);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = &v77 - v6;
  v7 = type metadata accessor for Logger();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v77 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - v15;
  v17 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v77 - v19;
  v21 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v87 = &v77 - v24;
  v25 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) != 1)
  {
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD000000000000015, 0x8000000225479ED0);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v75 = *(v25 + 8);
    v90 = *v25;
    v91 = v75;
    _print_unlocked<A, B>(_:_:)();
LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v26 = *v25;
  v27 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v1 + v27, v20, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v20, 1, v21) == 1)
  {
    v76 = v26;
    sub_2250D4224(v20, &qword_27D719028, &qword_225444F68);
    goto LABEL_19;
  }

  v86 = v22;
  (*(v22 + 32))(v87, v20, v21);
  *v25 = v26;
  *(v25 + 8) = 2;
  v28 = v26;
  v29 = [v28 accountID];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  sub_2250D0FB4(v30, v32);

  if ([v28 isRenewingAuthToken])
  {
    CCLog.getter();
    v33 = v28;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    sub_2250D4140(v26, 1u);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v90 = v37;
      *v36 = 136315138;
      v38 = [v33 accountID];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_225095AFC(v39, v41, &v90);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_22506F000, v34, v35, "Auth token renewal is in progress for account: %s", v36, 0xCu);
      sub_225073BF0(v37);
      MEMORY[0x22AA65DF0](v37, -1, -1);
      MEMORY[0x22AA65DF0](v36, -1, -1);
    }

    (*(v84 + 8))(v16, v85);
    v43 = v86;
    v44 = *MEMORY[0x277CFAA48];
    v45 = type metadata accessor for SessionReadinessError();
    (*(*(v45 - 8) + 104))(v81, v44, v45);
    swift_storeEnumTagMultiPayload();
    v46 = v79;
    v47 = v87;
    AsyncStream.Continuation.yield(_:)();
    sub_2250D4140(v26, 1u);
    (*(v82 + 8))(v46, v83);
  }

  else
  {
    if ([v28 hasCredentials])
    {
      CCLog.getter();
      v48 = v28;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      sub_2250D4140(v26, 1u);
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v90 = v83;
        *v51 = 136315138;
        v52 = [v48 accountID];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = sub_225095AFC(v53, v55, &v90);

        *(v51 + 4) = v56;
        _os_log_impl(&dword_22506F000, v49, v50, "Credentials are valid for account: %s", v51, 0xCu);
        v57 = v83;
        sub_225073BF0(v83);
        MEMORY[0x22AA65DF0](v57, -1, -1);
        MEMORY[0x22AA65DF0](v51, -1, -1);
      }

      (*(v84 + 8))(v11, v85);
      v43 = v86;
      v47 = v87;
      sub_2250D1904();
    }

    else
    {
      CCLog.getter();
      v58 = v28;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      sub_2250D4140(v26, 1u);
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v90 = v77;
        *v61 = 136315138;
        v62 = [v58 accountID];
        v78 = v58;
        v63 = v62;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = sub_225095AFC(v64, v66, &v90);

        *(v61 + 4) = v67;
        _os_log_impl(&dword_22506F000, v59, v60, "Account needs credential renewal: %s", v61, 0xCu);
        v68 = v77;
        sub_225073BF0(v77);
        MEMORY[0x22AA65DF0](v68, -1, -1);
        MEMORY[0x22AA65DF0](v61, -1, -1);

        v69 = v14;
        v70 = v78;
        (*(v84 + 8))(v69, v85);
      }

      else
      {

        (*(v84 + 8))(v14, v85);
        v70 = v58;
      }

      v43 = v86;
      v47 = v87;
      v71 = *MEMORY[0x277CFAA48];
      v72 = type metadata accessor for SessionReadinessError();
      (*(*(v72 - 8) + 104))(v81, v71, v72);
      swift_storeEnumTagMultiPayload();
      v73 = v79;
      AsyncStream.Continuation.yield(_:)();
      (*(v82 + 8))(v73, v83);
      sub_2250D0804(v70);
    }

    sub_2250D4140(v26, 1u);
  }

  return (*(v43 + 8))(v47, v21);
}

uint64_t sub_2250D0804(void *a1)
{
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;
  v9 = a1;
  sub_2250E1D44();
}

uint64_t sub_2250D090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250D09D8, 0, 0);
}

uint64_t sub_2250D09D8()
{
  sub_225072C10();
  v1 = v0[5];
  sub_22507CC60();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    sub_225073BAC((Strong + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory), *(Strong + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory + 24));
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_2250D0AD0;
    v4 = v0[6];

    return sub_2250D4CCC();
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];

    sub_225075274();

    return v8();
  }
}

uint64_t sub_2250D0AD0()
{
  sub_225072C10();
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2250D0D2C;
  }

  else
  {
    v3 = sub_2250D0BE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2250D0BE0()
{
  v1 = v0[10];
  v2 = v0[6];
  CCLog.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = sub_22507CA14();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_22506F000, v4, v5, "Auth token request completed for account: %@", v7, 0xCu);
    sub_2250D4224(v8, &unk_27D719030, &qword_225443AB0);
    sub_22507CA50();
    sub_22507C9FC();
  }

  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[7];
  v13 = v0[8];

  (*(v13 + 8))(v11, v12);

  return MEMORY[0x2822009F8](sub_2250D0EF0, v10, 0);
}

uint64_t sub_2250D0D2C()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[6];
  CCLog.getter();
  v4 = v3;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  v10 = v0[11];
  if (v8)
  {
    v11 = v0[6];
    v12 = sub_2250957CC();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2112;
    v14 = v11;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    v13[1] = v16;
    _os_log_impl(&dword_22506F000, v6, v7, "Auth token request failed for account %@: %@", v12, 0x16u);
    sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
    swift_arrayDestroy();
    sub_22507C9FC();
    sub_22507C9FC();
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v18 = v0[9];
  v17 = v0[10];

  sub_225075274();

  return v19();
}

uint64_t sub_2250D0EF0()
{
  sub_225072C10();
  v1 = *(v0 + 88);
  sub_2250D1254();
  v2 = sub_22507D3B8();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2250D0F4C()
{
  sub_225072C10();
  v1 = v0[11];

  v3 = v0[9];
  v2 = v0[10];

  sub_225075274();

  return v4();
}

uint64_t sub_2250D0FB4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID;
  if (*(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID))
  {
    result = *(v5 + 8);
    if (result != a1 || *(v5 + 16) != a2)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        __break(1u);
      }
    }
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v9 = *v5;
    v10 = *(v5 + 8);
    v11 = *(v5 + 16);
    *v5 = v8;
    *(v5 + 8) = a1;
    *(v5 + 16) = a2;
    v12 = v8;

    sub_2250D4194(v9);
    sub_225073BAC((v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory), *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory + 24));
    v13 = v12;

    sub_2250D52E4(v13, a1, a2, sub_2250D427C, v2);
  }

  return result;
}

uint64_t sub_2250D10F4(uint64_t a1)
{
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_2250E1D44();
}

uint64_t sub_2250D11FC()
{
  sub_225072C10();
  v1 = *(v0 + 16);
  sub_2250D1254();
  sub_225075274();

  return v2();
}

void sub_2250D1254()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v68 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  v16 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  v17 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state);
  switch(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8))
  {
    case 2:
      v39 = v17;
      if (([v39 isRenewingAuthToken] & 1) == 0 && objc_msgSend(v39, sel_hasCredentials))
      {
        CCLog.getter();
        v40 = v39;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        sub_2250D4140(v17, 2u);
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71 = v70;
          *v43 = 136315138;
          v44 = [v40 accountID];
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v17;
          v46 = v2;
          v47 = v45;
          v49 = v48;

          v50 = sub_225095AFC(v47, v49, &v71);

          *(v43 + 4) = v50;
          _os_log_impl(&dword_22506F000, v41, v42, "Account has valid credentials: %s", v43, 0xCu);
          v51 = v70;
          sub_225073BF0(v70);
          MEMORY[0x22AA65DF0](v51, -1, -1);
          MEMORY[0x22AA65DF0](v43, -1, -1);

          v52 = v46;
          v17 = v69;
          (*(v3 + 8))(v10, v52);
        }

        else
        {

          (*(v3 + 8))(v10, v2);
        }

        sub_2250D1904();
        v66 = v17;
        v67 = 2;
        goto LABEL_17;
      }

      CCLog.getter();
      v53 = v39;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      sub_2250D4140(v17, 2u);
      if (!os_log_type_enabled(v54, v55))
      {
        sub_2250D4140(v17, 2u);

        v26 = *(v3 + 8);
        v27 = v7;
        goto LABEL_5;
      }

      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v71 = v57;
      *v56 = 136315138;
      v58 = [v53 accountID];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v2;
      v61 = v60;

      v62 = sub_225095AFC(v59, v61, &v71);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_22506F000, v54, v55, "Auth token renewal state changed, account still does not have valid credentials: %s", v56, 0xCu);
      sub_225073BF0(v57);
      MEMORY[0x22AA65DF0](v57, -1, -1);
      MEMORY[0x22AA65DF0](v56, -1, -1);

      sub_2250D4140(v17, 2u);
      (*(v3 + 8))(v7, v70);
      break;
    case 3:
      v28 = v17;
      CCLog.getter();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v17;
        v73 = v68;
        *v31 = 136315138;
        v32 = *(v16 + 8);
        v71 = *v16;
        v72 = v32;
        sub_2250D412C(v71, v32);
        v33 = String.init<A>(describing:)();
        v70 = v2;
        v35 = v28;
        v36 = sub_225095AFC(v33, v34, &v73);

        *(v31 + 4) = v36;
        v28 = v35;
        _os_log_impl(&dword_22506F000, v29, v30, "Auth token renewal state changed while in state %s, re-checking credentials", v31, 0xCu);
        v37 = v68;
        sub_225073BF0(v68);
        v38 = v37;
        v17 = v69;
        MEMORY[0x22AA65DF0](v38, -1, -1);
        MEMORY[0x22AA65DF0](v31, -1, -1);

        (*(v3 + 8))(v13, v70);
      }

      else
      {

        (*(v3 + 8))(v13, v2);
      }

      v63 = *v16;
      *v16 = v17;
      v64 = *(v16 + 8);
      *(v16 + 8) = 1;
      v65 = v28;
      sub_2250D4140(v63, v64);
      sub_2250CFDF4();
      v66 = v17;
      v67 = 3;
LABEL_17:
      sub_2250D4140(v66, v67);
      break;
    default:
      CCLog.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v73 = v21;
        *v20 = 136315138;
        v22 = *(v16 + 8);
        v71 = *v16;
        v72 = v22;
        sub_2250D412C(v71, v22);
        v23 = String.init<A>(describing:)();
        v25 = sub_225095AFC(v23, v24, &v73);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_22506F000, v18, v19, "Ignoring auth token change notification in state %s", v20, 0xCu);
        sub_225073BF0(v21);
        MEMORY[0x22AA65DF0](v21, -1, -1);
        MEMORY[0x22AA65DF0](v20, -1, -1);
      }

      v26 = *(v3 + 8);
      v27 = v15;
LABEL_5:
      v26(v27, v2);
      break;
  }
}

uint64_t sub_2250D1904()
{
  v1 = v0;
  v66 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v2 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v64 = (&v60 - v3);
  v65 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v63 = *(v65 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v60 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v60 - v16;
  v18 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v23 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) != 2)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0x7265546B63656863, 0xEC0000002928736DLL);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v58 = *(v23 + 8);
    v71 = *v23;
    v72 = v58;
    _print_unlocked<A, B>(_:_:)();
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v24 = *v23;
  v25 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v1 + v25, v17, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v17, 1, v18) == 1)
  {
    v59 = v24;
    sub_2250D4224(v17, &qword_27D719028, &qword_225444F68);
    goto LABEL_13;
  }

  (*(v19 + 32))(v22, v17, v18);
  *v23 = v24;
  *(v23 + 8) = 3;
  v26 = v24;
  if ([v26 needsToVerifyTerms])
  {
    v61 = v22;
    CCLog.getter();
    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    sub_2250D4140(v24, 2u);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v71 = v60;
      *v30 = 136315138;
      v31 = v24;
      v32 = [v27 accountID];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v19;
      v36 = v35;

      v37 = sub_225095AFC(v33, v36, &v71);
      v19 = v34;

      *(v30 + 4) = v37;
      v24 = v31;
      _os_log_impl(&dword_22506F000, v28, v29, "Account needs terms of service update: %s", v30, 0xCu);
      v38 = v60;
      sub_225073BF0(v60);
      MEMORY[0x22AA65DF0](v38, -1, -1);
      MEMORY[0x22AA65DF0](v30, -1, -1);
    }

    (*(v68 + 8))(v11, v67);
    v39 = *MEMORY[0x277CFAA68];
    v40 = type metadata accessor for SessionReadinessError();
    (*(*(v40 - 8) + 104))(v64, v39, v40);
    swift_storeEnumTagMultiPayload();
    v22 = v61;
    v41 = v62;
    AsyncStream.Continuation.yield(_:)();
    sub_2250D4140(v24, 2u);
    (*(v63 + 8))(v41, v65);
  }

  else
  {
    CCLog.getter();
    v42 = v26;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    sub_2250D4140(v24, 2u);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v66 = v19;
      v46 = v45;
      v64 = swift_slowAlloc();
      v71 = v64;
      *v46 = 136315138;
      v47 = [v42 accountID];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v24;
      v49 = v48;
      v50 = v18;
      v51 = v22;
      v53 = v52;

      v54 = sub_225095AFC(v49, v53, &v71);
      v22 = v51;
      v18 = v50;

      *(v46 + 4) = v54;
      v24 = v65;
      _os_log_impl(&dword_22506F000, v43, v44, "Terms of service is up-to-date for account: %s", v46, 0xCu);
      v55 = v64;
      sub_225073BF0(v64);
      MEMORY[0x22AA65DF0](v55, -1, -1);
      v56 = v46;
      v19 = v66;
      MEMORY[0x22AA65DF0](v56, -1, -1);
    }

    (*(v68 + 8))(v13, v67);
    sub_2250D20CC();
    sub_2250D4140(v24, 2u);
  }

  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_2250D20CC()
{
  v1 = v0;
  v98 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v2 = *(*(v98 - 1) + 64);
  MEMORY[0x28223BE20](v98);
  v97 = (&v88 - v3);
  v4 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v95 = *(v4 - 8);
  v96 = v4;
  isa = v95[8].isa;
  MEMORY[0x28223BE20](v4);
  v94 = &v88 - v6;
  v99 = type metadata accessor for Logger();
  v7 = *(v99 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x28223BE20](v99);
  v101 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v90 = &v88 - v11;
  v12 = sub_2250B0DFC(&qword_27D719020, &qword_225444F60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v88 - v14;
  v16 = type metadata accessor for ResolvedBundleID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v88 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v91 = &v88 - v21;
  v22 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v93 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v88 - v26;
  v28 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v103 = &v88 - v31;
  v32 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) != 3)
  {
    v106 = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0x7571634165746F6ELL, 0xEE00292864657269);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v86 = *(v32 + 8);
    v104[3] = *v32;
    v105 = v86;
    _print_unlocked<A, B>(_:_:)();
LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v102 = *v32;
  v33 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  v92 = v33;
  sub_2250D41D4(v1 + v33, v27, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v27, 1, v28) == 1)
  {
    v87 = v102;
    sub_2250D4224(v27, &qword_27D719028, &qword_225444F68);
    goto LABEL_19;
  }

  v100 = v29;
  (*(v29 + 32))(v103, v27, v28);
  v34 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_resolvedBundleID;
  swift_beginAccess();
  sub_2250D41D4(v1 + v34, v15, &qword_27D719020, &qword_225444F60);
  if (sub_22507C8E8(v15, 1, v16) == 1)
  {
    v35 = v102;
    v36 = v102;
    sub_2250D4224(v15, &qword_27D719020, &qword_225444F60);
LABEL_8:
    sub_2250D2C7C();
    sub_2250D2D2C();
    sub_2250D2E28();
    v40 = *v32;
    *v32 = 2;
    v41 = *(v32 + 8);
    *(v32 + 8) = 4;
    sub_2250D4140(v40, v41);
    v42 = v101;
    CCLog.getter();
    v43 = v35;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    sub_2250D4140(v35, 3u);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v104[0] = v47;
      *v46 = 136315138;
      v48 = [v43 accountID];
      v89 = v28;
      v49 = v7;
      v50 = v48;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_225095AFC(v51, v53, v104);

      *(v46 + 4) = v54;
      _os_log_impl(&dword_22506F000, v44, v45, "Account successfully acquired: %s", v46, 0xCu);
      sub_225073BF0(v47);
      v55 = v47;
      v35 = v102;
      MEMORY[0x22AA65DF0](v55, -1, -1);
      MEMORY[0x22AA65DF0](v46, -1, -1);

      v49[1](v101, v99);
      v28 = v89;
    }

    else
    {

      (*(v7 + 1))(v42, v99);
    }

    v56 = v100;
    *v97 = v43;
    swift_storeEnumTagMultiPayload();
    v57 = v43;
    v58 = v94;
    v59 = v103;
    AsyncStream.Continuation.yield(_:)();
    (v95[1].isa)(v58, v96);
    AsyncStream.Continuation.finish()();
    sub_2250D4140(v35, 3u);
    (*(v56 + 8))(v59, v28);
    v60 = v93;
    sub_22507C8C0(v93, 1, 1, v28);
    v61 = v92;
    swift_beginAccess();
    sub_2250D4548(v60, v1 + v61, &qword_27D719028, &qword_225444F68);
    return swift_endAccess();
  }

  v37 = v91;
  (*(v17 + 32))(v91, v15, v16);
  sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));
  v35 = v102;
  v38 = v102;
  v39 = sub_2250D6B78(v37);
  if (v39 == 2 || (v39 & 1) != 0)
  {
    (*(v17 + 8))(v37, v16);
    goto LABEL_8;
  }

  v89 = v28;
  v101 = v7;
  v63 = v90;
  CCLog.getter();
  v64 = v88;
  (*(v17 + 16))(v88, v37, v16);
  v98 = v38;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  sub_2250D4140(v35, 3u);
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v95 = v65;
    v68 = v67;
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v104[0] = v97;
    *v68 = 136315394;
    sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998]);
    LODWORD(v94) = v66;
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v72 = *(v17 + 8);
    v72(v64, v16);
    v73 = v72;
    v74 = sub_225095AFC(v69, v71, v104);
    v35 = v102;

    *(v68 + 4) = v74;
    *(v68 + 12) = 2112;
    v75 = v98;
    *(v68 + 14) = v98;
    v76 = v96;
    *v96 = v35;
    v77 = v75;
    v78 = v95;
    _os_log_impl(&dword_22506F000, v95, v94, "TCC revoked access for %s for account: %@", v68, 0x16u);
    sub_2250D4224(v76, &unk_27D719030, &qword_225443AB0);
    MEMORY[0x22AA65DF0](v76, -1, -1);
    v79 = v97;
    sub_225073BF0(v97);
    MEMORY[0x22AA65DF0](v79, -1, -1);
    MEMORY[0x22AA65DF0](v68, -1, -1);

    v101[1](v90, v99);
    v80 = v75;
  }

  else
  {

    v81 = *(v17 + 8);
    v81(v64, v16);
    v73 = v81;
    v101[1](v63, v99);
    v80 = v98;
  }

  v82 = *v32;
  *v32 = v35;
  v83 = v35;
  v84 = *(v32 + 8);
  *(v32 + 8) = 0;
  v85 = v80;
  sub_2250D4140(v82, v84);
  sub_2250CD9FC();
  sub_2250D4140(v83, 3u);
  v73(v91, v16);
  return (*(v100 + 8))(v103, v89);
}