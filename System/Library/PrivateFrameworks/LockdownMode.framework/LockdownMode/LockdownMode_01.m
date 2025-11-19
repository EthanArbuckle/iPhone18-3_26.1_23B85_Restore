void sub_10001B1C4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 aa_primaryAppleAccount];

  if (!v4)
  {
    return;
  }

  v5 = [v4 aa_altDSID];
  if (!v5)
  {
    goto LABEL_8;
  }

  v0 = v5;
  v6 = [v1 defaultStore];
  if (!v6)
  {
LABEL_13:

    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 aa_authKitAccountForAltDSID:v0];

  if (v8)
  {
    if (([v8 aa_needsToVerifyTerms] & 1) == 0)
    {
      v9 = [objc_opt_self() sharedInstance];
      [v9 securityLevelForAccount:v8];

      return;
    }

    goto LABEL_9;
  }

LABEL_8:
  v8 = v4;
LABEL_9:
}

void sub_10001B320(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not enableIfNeeded: %@", v15, 0xCu);
      sub_100005E54(v16, &qword_100042158, qword_100031C60);
    }

    (*(v9 + 8))(v12, v8);
    v18 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, 0, v18);

    return;
  }

  type metadata accessor for LockdownModeXNU();
  if ((static LockdownModeXNU.lockdownModeEnabled.getter() & 1) == 0)
  {
    if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = static LockdownModeXNU.lockdownModeEnabled.getter();
      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (a3)
    {
      sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034790);
      v19 = 1;
    }

    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:
  v20 = *(a4 + 16);

  v20(a4, v19 & 1, 0);
}

void sub_10001B5B4(int a1, uint64_t a2, void *a3, int a4, void (**a5)(void, void, void))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v81 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v83 = &v75 - v16;
  v17 = __chkstk_darwin(v15);
  v78 = &v75 - v18;
  v19 = __chkstk_darwin(v17);
  v77 = &v75 - v20;
  v21 = __chkstk_darwin(v19);
  v79 = &v75 - v22;
  v23 = __chkstk_darwin(v21);
  v80 = &v75 - v24;
  v25 = __chkstk_darwin(v23);
  v82 = &v75 - v26;
  __chkstk_darwin(v25);
  v28 = &v75 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a5;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10002233C;
  *(v30 + 24) = v29;
  *(v30 + 32) = a3;
  v88 = v30;
  v84 = a4;
  *(v30 + 40) = a4;
  _Block_copy(a5);
  _Block_copy(a5);
  _Block_copy(a5);
  _Block_copy(a5);
  v87 = v29;

  v85 = a3;
  static Logger.daemonLogger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v86 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v92[0] = v35;
    *v34 = 136446210;
    if (a1)
    {
      v36 = 0x726F74617267696DLL;
    }

    else
    {
      v36 = 0x617267694D657270;
    }

    v76 = a2;
    v37 = a5;
    v38 = v11;
    if (a1)
    {
      v39 = 0xE800000000000000;
    }

    else
    {
      v39 = 0xEC0000006E6F6974;
    }

    v40 = sub_100019C8C(v36, v39, v92);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Requested to migrateIfNeeded. Migration source: %{public}s", v34, 0xCu);
    sub_100005E08(v35);

    v41 = v38;
    a5 = v37;
    a2 = v76;
    v42 = *(v41 + 8);
    v42(v28, v10);
  }

  else
  {

    v42 = *(v11 + 8);
    v42(v28, v10);
  }

  if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
  {
    v43 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v43 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  if (qword_100041CF0 != -1)
  {
    v74 = v43;
    swift_once();
    v43 = v74;
  }

  v44 = static RestrictionsManager.shared;
  v45 = *(static RestrictionsManager.shared + 32);
  if ((v43 & 1) == 0)
  {
    if (*(static RestrictionsManager.shared + 32))
    {
      v55 = v83;
      static Logger.daemonLogger.getter();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Lockdown Mode isn't turned on but previous state exists, turning on Lockdown Mode…", v58, 2u);
      }

      v42(v55, v10);
      sub_100012394(1, 0, v86 & 1, 0, v86 & 1, 0, 0, 0, 1u, sub_10002234C, v88);
      goto LABEL_25;
    }

    v61 = [objc_opt_self() standardUserDefaults];
    static Constants.userDefaultsKey.getter();
    v62 = String._bridgeToObjectiveC()();

    v63 = [v61 objectForKey:v62 inDomain:NSGlobalDomain];

    if (v63)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v90 = 0u;
      v91 = 0u;
    }

    v92[0] = v90;
    v92[1] = v91;
    if (*(&v91 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v89)
      {
        v68 = swift_allocObject();
        v69 = v88;
        *(v68 + 16) = sub_10002234C;
        *(v68 + 24) = v69;

        sub_100012394(1, 0, v86 & 1, 0, v86 & 1, 0, 0, 0, 1u, sub_1000226BC, v68);

        goto LABEL_25;
      }
    }

    else
    {
      sub_100005E54(v92, &qword_100042500, &qword_100031EB0);
    }

    v46 = v81;
    static Logger.daemonLogger.getter();
    v47 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v47, v59))
    {
      goto LABEL_44;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v50 = "Lockdown Mode is turned off and there's no previous state. No need to migrate";
LABEL_42:
    v51 = v59;
    v52 = v47;
    v53 = v60;
    v54 = 2;
    goto LABEL_43;
  }

  if ((v86 & 1) == 0)
  {
    v46 = v82;
    static Logger.daemonLogger.getter();
    v47 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v47, v59))
    {
      goto LABEL_44;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v50 = "Migration is not needed";
    goto LABEL_42;
  }

  if (*(static RestrictionsManager.shared + 32))
  {
    if ((*(static RestrictionsManager.shared + 16) & 0x8000000000000000) != 0)
    {
      static Logger.daemonLogger.getter();

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134218240;
        *(v73 + 4) = *(v44 + 16);

        *(v73 + 12) = 2048;
        *(v73 + 14) = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Migrating from version %ld to version %ld", v73, 0x16u);
      }

      else
      {
      }

      v42(v80, v10);
      sub_100027E54();
LABEL_45:
      type metadata accessor for LockdownModeXNU();
      _Block_copy(a5);
      if (static LockdownModeXNU.lockdownModeEnabled.getter())
      {
        v70 = 0;
LABEL_52:
        a5[2](a5, v70 & 1, 0);
        _Block_release(a5);

        goto LABEL_53;
      }

      if (v85[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1)
      {
        v70 = 1;
      }

      else
      {
        v70 = static LockdownModeXNU.lockdownModeEnabled.getter();
        if ((v70 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      if (v84)
      {
        sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034790);
        v70 = 1;
      }

      goto LABEL_52;
    }

    v46 = v79;
    static Logger.daemonLogger.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = 0;
      v50 = "Lockdown Mode is turned on and the version of the state matches the current one (%ld). No need to migrate";
      v51 = v48;
      v52 = v47;
      v53 = v49;
      v54 = 12;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v52, v51, v50, v53, v54);
    }

LABEL_44:

    v42(v46, v10);
    goto LABEL_45;
  }

  if ((v86 & 1) == 0)
  {
    goto LABEL_45;
  }

  v64 = v78;
  static Logger.daemonLogger.getter();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "Lockdown Mode is turned on but there's no state stored, re-turning on Lockdown Mode…", v67, 2u);
  }

  v42(v64, v10);
  sub_100012394(1, 0, 1, 0, 1, 0, 0, 0, 0, sub_10002234C, v88);
LABEL_25:

LABEL_53:

  _Block_release(a5);
  _Block_release(a5);
  _Block_release(a5);
}

uint64_t sub_10001C190(int a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void *a5, int a6)
{
  v87 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v84 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v81 = v76 - v17;
  v18 = __chkstk_darwin(v16);
  v77 = v76 - v19;
  v20 = __chkstk_darwin(v18);
  v76[2] = v76 - v21;
  v22 = __chkstk_darwin(v20);
  v80 = v76 - v23;
  v24 = __chkstk_darwin(v22);
  v78 = v76 - v25;
  v26 = __chkstk_darwin(v24);
  v85 = v76 - v27;
  __chkstk_darwin(v26);
  v29 = v76 - v28;
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  *(v30 + 32) = a5;
  v82 = a6;
  *(v30 + 40) = a6;

  v83 = a5;
  static Logger.daemonLogger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v86 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v79 = v11;
    v76[1] = a4;
    v35 = a3;
    v36 = v30;
    v37 = v34;
    v38 = swift_slowAlloc();
    *&v91[0] = v38;
    *v37 = 136446210;
    if (a1)
    {
      v39 = 0x726F74617267696DLL;
    }

    else
    {
      v39 = 0x617267694D657270;
    }

    if (a1)
    {
      v40 = 0xE800000000000000;
    }

    else
    {
      v40 = 0xEC0000006E6F6974;
    }

    v41 = v12;
    v42 = sub_100019C8C(v39, v40, v91);

    *(v37 + 4) = v42;
    v12 = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "Requested to migrateIfNeeded. Migration source: %{public}s", v37, 0xCu);
    sub_100005E08(v38);

    v30 = v36;
    a3 = v35;
    v11 = v79;
  }

  v43 = *(v12 + 8);
  v43(v29, v11);
  if (*(v87 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
  {
    v44 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v44 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  if (qword_100041CF0 != -1)
  {
    v75 = v44;
    swift_once();
    v44 = v75;
  }

  v45 = static RestrictionsManager.shared;
  v46 = *(static RestrictionsManager.shared + 32);
  if (v44)
  {
    if ((v86 & 1) == 0)
    {
      static Logger.daemonLogger.getter();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Migration is not needed", v57, 2u);
      }

      v50 = v85;
      goto LABEL_43;
    }

    if (*(static RestrictionsManager.shared + 32))
    {
      if ((*(static RestrictionsManager.shared + 16) & 0x8000000000000000) != 0)
      {
        static Logger.daemonLogger.getter();

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        v73 = os_log_type_enabled(v71, v72);
        v79 = v11;
        if (v73)
        {
          v74 = swift_slowAlloc();
          *v74 = 134218240;
          *(v74 + 4) = *(v45 + 16);

          *(v74 + 12) = 2048;
          *(v74 + 14) = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "Migrating from version %ld to version %ld", v74, 0x16u);
        }

        else
        {
        }

        v43(v78, v79);
        sub_100027E54();
LABEL_44:
        type metadata accessor for LockdownModeXNU();
        if (static LockdownModeXNU.lockdownModeEnabled.getter())
        {
          v69 = 0;
LABEL_51:
          a3(v69 & 1, 0);
        }

        if (v83[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1)
        {
          v69 = 1;
        }

        else
        {
          v69 = static LockdownModeXNU.lockdownModeEnabled.getter();
          if ((v69 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        if (v82)
        {
          sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034790);
          v69 = 1;
        }

        goto LABEL_51;
      }

      static Logger.daemonLogger.getter();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Lockdown Mode is turned on and the version of the state matches the current one (%ld). No need to migrate", v49, 0xCu);
      }

      v50 = v80;
LABEL_43:
      v43(v50, v11);
      goto LABEL_44;
    }

    if ((v86 & 1) == 0)
    {
      goto LABEL_44;
    }

    v61 = v77;
    static Logger.daemonLogger.getter();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Lockdown Mode is turned on but there's no state stored, re-turning on Lockdown Mode…", v64, 2u);
    }

    v43(v61, v11);
    sub_100012394(1, 0, 1, 0, 1, 0, 0, 0, 0, sub_100022634, v30);
  }

  else
  {
    if ((*(static RestrictionsManager.shared + 32) & 1) == 0)
    {
      v58 = [objc_opt_self() standardUserDefaults];
      static Constants.userDefaultsKey.getter();
      v59 = String._bridgeToObjectiveC()();

      v60 = [v58 objectForKey:v59 inDomain:NSGlobalDomain];

      if (v60)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v89 = 0u;
        v90 = 0u;
      }

      v91[0] = v89;
      v91[1] = v90;
      if (*(&v90 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v88)
        {
          v65 = swift_allocObject();
          *(v65 + 16) = sub_100022634;
          *(v65 + 24) = v30;

          sub_100012394(1, 0, v86 & 1, 0, v86 & 1, 0, 0, 0, 1u, sub_1000226BC, v65);
        }
      }

      else
      {
        sub_100005E54(v91, &qword_100042500, &qword_100031EB0);
      }

      static Logger.daemonLogger.getter();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Lockdown Mode is turned off and there's no previous state. No need to migrate", v68, 2u);
      }

      v50 = v84;
      goto LABEL_43;
    }

    v51 = v81;
    static Logger.daemonLogger.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Lockdown Mode isn't turned on but previous state exists, turning on Lockdown Mode…", v54, 2u);
    }

    v43(v51, v11);
    sub_100012394(1, 0, v86 & 1, 0, v86 & 1, 0, 0, 0, 1u, sub_100022634, v30);
  }
}

void sub_10001CD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not migrateIfNeeded: %@", v14, 0xCu);
      sub_100005E54(v15, &qword_100042158, qword_100031C60);
    }

    (*(v5 + 8))(v11, v4);
    v17 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v17);
  }

  else
  {
    static Logger.daemonLogger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully ran migrateIfNeeded", v20, 2u);
    }

    (*(v5 + 8))(v9, v4);
    (*(a2 + 16))(a2, 0);
  }
}

void sub_10001CFDC(int a1, uint64_t a2, const void *a3)
{
  v6 = type metadata accessor for Logger();
  v79 = *(v6 - 8);
  v7 = *(v79 + 64);
  v8 = __chkstk_darwin(v6);
  v74 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v75 = v69 - v11;
  v12 = __chkstk_darwin(v10);
  v72 = v69 - v13;
  v14 = __chkstk_darwin(v12);
  v69[1] = v69 - v15;
  v16 = __chkstk_darwin(v14);
  v70 = v69 - v17;
  v18 = __chkstk_darwin(v16);
  v71 = v69 - v19;
  v20 = __chkstk_darwin(v18);
  v73 = v69 - v21;
  __chkstk_darwin(v20);
  v23 = v69 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1000222EC;
  *(v25 + 24) = v24;
  v77 = v25;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v78 = v24;

  static Logger.daemonLogger.getter();
  v26 = v23;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v76 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v83[0] = v31;
    *v30 = 136446210;
    if (a1)
    {
      v32 = 0x726F74617267696DLL;
    }

    else
    {
      v32 = 0x617267694D657270;
    }

    v69[0] = a2;
    if (a1)
    {
      v33 = 0xE800000000000000;
    }

    else
    {
      v33 = 0xEC0000006E6F6974;
    }

    v34 = a3;
    v35 = sub_100019C8C(v32, v33, v83);
    a2 = v69[0];

    *(v30 + 4) = v35;
    v36 = v79;
    a3 = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Requested to migrateIfNeeded. Migration source: %{public}s", v30, 0xCu);
    sub_100005E08(v31);

    v37 = v36;
  }

  else
  {

    v37 = v79;
  }

  v38 = *(v37 + 8);
  v38(v26, v6);
  if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
  {
    v39 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v39 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  if (qword_100041CF0 != -1)
  {
    v68 = v39;
    swift_once();
    v39 = v68;
  }

  v40 = static RestrictionsManager.shared;
  v41 = *(static RestrictionsManager.shared + 32);
  if (v39)
  {
    if (v76)
    {
      if (*(static RestrictionsManager.shared + 32))
      {
        if ((*(static RestrictionsManager.shared + 16) & 0x8000000000000000) != 0)
        {
          static Logger.daemonLogger.getter();

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 134218240;
            *(v67 + 4) = *(v40 + 16);

            *(v67 + 12) = 2048;
            *(v67 + 14) = 0;
            _os_log_impl(&_mh_execute_header, v65, v66, "Migrating from version %ld to version %ld", v67, 0x16u);
          }

          else
          {
          }

          v38(v71, v6);
          sub_100027E54();
          goto LABEL_45;
        }

        v42 = v70;
        static Logger.daemonLogger.getter();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v43, v44))
        {
          goto LABEL_44;
        }

        v45 = swift_slowAlloc();
        *v45 = 134217984;
        *(v45 + 4) = 0;
        v46 = "Lockdown Mode is turned on and the version of the state matches the current one (%ld). No need to migrate";
        v47 = v44;
        v48 = v43;
        v49 = v45;
        v50 = 12;
        goto LABEL_43;
      }

      if ((v76 & 1) == 0)
      {
LABEL_45:
        _Block_copy(a3);
        sub_10001CD38(0, a3);
        _Block_release(a3);

        goto LABEL_46;
      }

      static Logger.daemonLogger.getter();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Lockdown Mode is turned on but there's no state stored, re-turning on Lockdown Mode…", v61, 2u);
      }

      v38(v72, v6);
      sub_100012394(1, 0, 1, 0, 1, 0, 0, 0, 0, sub_1000222F4, v77);
      goto LABEL_25;
    }

    v42 = v73;
    static Logger.daemonLogger.getter();
    v43 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v46 = "Migration is not needed";
LABEL_42:
      v47 = v54;
      v48 = v43;
      v49 = v55;
      v50 = 2;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v48, v47, v46, v49, v50);

      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if ((*(static RestrictionsManager.shared + 32) & 1) == 0)
  {
    v56 = [objc_opt_self() standardUserDefaults];
    static Constants.userDefaultsKey.getter();
    v57 = String._bridgeToObjectiveC()();

    v58 = [v56 objectForKey:v57 inDomain:NSGlobalDomain];

    if (v58)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    v83[0] = v81;
    v83[1] = v82;
    if (*(&v82 + 1))
    {
      v62 = swift_dynamicCast();
      v42 = v74;
      if (v62 & 1) != 0 && (v80)
      {
        v63 = swift_allocObject();
        v64 = v77;
        *(v63 + 16) = sub_1000222F4;
        *(v63 + 24) = v64;

        sub_100012394(1, 0, v76 & 1, 0, v76 & 1, 0, 0, 0, 1u, sub_1000222FC, v63);

        goto LABEL_46;
      }
    }

    else
    {
      sub_100005E54(v83, &qword_100042500, &qword_100031EB0);
      v42 = v74;
    }

    static Logger.daemonLogger.getter();
    v43 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v46 = "Lockdown Mode is turned off and there's no previous state. No need to migrate";
      goto LABEL_42;
    }

LABEL_44:

    v38(v42, v6);
    goto LABEL_45;
  }

  static Logger.daemonLogger.getter();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Lockdown Mode isn't turned on but previous state exists, turning on Lockdown Mode…", v53, 2u);
  }

  v38(v75, v6);
  sub_100012394(1, 0, v76 & 1, 0, v76 & 1, 0, 0, 0, 1u, sub_1000222F4, v77);
LABEL_25:

LABEL_46:

  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_10001DB20(int a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v82 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v81 = &v73 - v14;
  v15 = __chkstk_darwin(v13);
  v78 = &v73 - v16;
  v17 = __chkstk_darwin(v15);
  v77 = &v73 - v18;
  v19 = __chkstk_darwin(v17);
  v80 = &v73 - v20;
  v21 = __chkstk_darwin(v19);
  v79 = &v73 - v22;
  v23 = __chkstk_darwin(v21);
  v83 = &v73 - v24;
  __chkstk_darwin(v23);
  v26 = &v73 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;

  static Logger.daemonLogger.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v84 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v75 = a3;
    v76 = a4;
    v74 = v27;
    v32 = v31;
    v33 = a2;
    v34 = v8;
    v35 = swift_slowAlloc();
    *&v88[0] = v35;
    *v32 = 136446210;
    if (a1)
    {
      v36 = 0x726F74617267696DLL;
    }

    else
    {
      v36 = 0x617267694D657270;
    }

    if (a1)
    {
      v37 = 0xE800000000000000;
    }

    else
    {
      v37 = 0xEC0000006E6F6974;
    }

    v38 = v9;
    v39 = sub_100019C8C(v36, v37, v88);

    *(v32 + 4) = v39;
    v9 = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "Requested to migrateIfNeeded. Migration source: %{public}s", v32, 0xCu);
    sub_100005E08(v35);
    v8 = v34;
    a2 = v33;

    v27 = v74;
    a3 = v75;
  }

  v40 = *(v9 + 8);
  v40(v26, v8);
  if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
  {
    v41 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v41 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  if (qword_100041CF0 != -1)
  {
    v72 = v41;
    swift_once();
    v41 = v72;
  }

  v42 = static RestrictionsManager.shared;
  v43 = *(static RestrictionsManager.shared + 32);
  if ((v41 & 1) == 0)
  {
    if (*(static RestrictionsManager.shared + 32))
    {
      v48 = v81;
      static Logger.daemonLogger.getter();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Lockdown Mode isn't turned on but previous state exists, turning on Lockdown Mode…", v51, 2u);
      }

      v40(v48, v8);
      sub_100012394(1, 0, v84 & 1, 0, v84 & 1, 0, 0, 0, 1u, sub_1000226C0, v27);
    }

    v55 = [objc_opt_self() standardUserDefaults];
    static Constants.userDefaultsKey.getter();
    v56 = String._bridgeToObjectiveC()();

    v57 = [v55 objectForKey:v56 inDomain:NSGlobalDomain];

    if (v57)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
    }

    v88[0] = v86;
    v88[1] = v87;
    if (*(&v87 + 1))
    {
      v62 = swift_dynamicCast();
      v63 = v82;
      if (v62 & 1) != 0 && (v85)
      {
        v64 = swift_allocObject();
        *(v64 + 16) = sub_1000226C0;
        *(v64 + 24) = v27;

        sub_100012394(1, 0, v84 & 1, 0, v84 & 1, 0, 0, 0, 1u, sub_1000226BC, v64);
      }
    }

    else
    {
      sub_100005E54(v88, &qword_100042500, &qword_100031EB0);
      v63 = v82;
    }

    static Logger.daemonLogger.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Lockdown Mode is turned off and there's no previous state. No need to migrate", v67, 2u);
    }

    v47 = v63;
LABEL_43:
    v40(v47, v8);
    goto LABEL_44;
  }

  if ((v84 & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Migration is not needed", v54, 2u);
    }

    v47 = v83;
    goto LABEL_43;
  }

  if (*(static RestrictionsManager.shared + 32))
  {
    if ((*(static RestrictionsManager.shared + 16) & 0x8000000000000000) != 0)
    {
      static Logger.daemonLogger.getter();

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 134218240;
        *(v71 + 4) = *(v42 + 16);

        *(v71 + 12) = 2048;
        *(v71 + 14) = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Migrating from version %ld to version %ld", v71, 0x16u);
      }

      else
      {
      }

      v40(v79, v8);
      sub_100027E54();
      goto LABEL_44;
    }

    static Logger.daemonLogger.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Lockdown Mode is turned on and the version of the state matches the current one (%ld). No need to migrate", v46, 0xCu);
    }

    v47 = v80;
    goto LABEL_43;
  }

  if ((v84 & 1) == 0)
  {
LABEL_44:
    sub_1000172C8(0, a3);
  }

  v58 = v78;
  static Logger.daemonLogger.getter();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Lockdown Mode is turned on but there's no state stored, re-turning on Lockdown Mode…", v61, 2u);
  }

  v40(v58, v8);
  sub_100012394(1, 0, 1, 0, 1, 0, 0, 0, 0, sub_1000226C0, v27);
}

uint64_t sub_10001E618(void *a1)
{
  v38 = type metadata accessor for Logger();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v38);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 valueForEntitlement:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  aBlock = v44;
  v40 = v45;
  if (*(&v45 + 1))
  {
    if (swift_dynamicCast() && (v43 & 1) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  aBlock = v44;
  v40 = v45;
  if (*(&v45 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v43)
    {
LABEL_15:
      v13 = v37;
      static Logger.daemonLogger.getter();
      v14 = a1;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "Handling incoming connection: %@", v17, 0xCu);
        sub_100005E54(v18, &qword_100042158, qword_100031C60);
      }

      (*(v2 + 8))(v8, v38);
      v20 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP12LockdownMode20LockdownModeProtocol_];
      [v14 setExportedInterface:v20];

      [v14 setExportedObject:v13];
      v21 = swift_allocObject();
      *(v21 + 16) = v14;
      v41 = sub_1000225C0;
      v42 = v21;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v40 = sub_10000B434;
      *(&v40 + 1) = &unk_10003DC20;
      v22 = _Block_copy(&aBlock);
      v23 = v14;

      [v23 setInterruptionHandler:v22];
      _Block_release(v22);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v41 = sub_1000225E4;
      v42 = v24;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v40 = sub_10000B434;
      *(&v40 + 1) = &unk_10003DC70;
      v25 = _Block_copy(&aBlock);
      v26 = v23;

      [v26 setInvalidationHandler:v25];
      _Block_release(v25);
      v27 = 1;
      v28 = &selRef_resume;
      goto LABEL_22;
    }
  }

  else
  {
    sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
  }

  static Logger.daemonLogger.getter();
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v32 = 136315394;
    *(v32 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, &aBlock);
    *(v32 + 12) = 2112;
    *(v32 + 14) = v29;
    *v33 = v29;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "Client is missing entitlement: %s. (%@)", v32, 0x16u);
    sub_100005E54(v33, &qword_100042158, qword_100031C60);

    sub_100005E08(v34);
  }

  (*(v2 + 8))(v6, v38);
  v27 = 0;
  v28 = &selRef_invalidate;
LABEL_22:
  [a1 *v28];
  return v27;
}

unint64_t sub_10001EC70()
{
  result = qword_1000424F8;
  if (!qword_1000424F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000424F8);
  }

  return result;
}

uint64_t sub_10001ED20(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100015C54(a1, *(v1 + 16));
}

uint64_t sub_10001ED2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001ED48()
{
  result = qword_100042520;
  if (!qword_100042520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042520);
  }

  return result;
}

uint64_t sub_10001EDB0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10001EDCC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001EDE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001EE28(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10001EE6C(uint64_t result, unsigned int a2)
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

uint64_t sub_10001EE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&qword_1000425F0, &qword_100032100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EF14()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001EF78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10001EFC8(int a1, unint64_t a2, _BYTE *a3, void (**a4)(void, void))
{
  v107 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v106 = &v93 - v14;
  v15 = __chkstk_darwin(v13);
  v105 = &v93 - v16;
  v17 = __chkstk_darwin(v15);
  v103 = &v93 - v18;
  __chkstk_darwin(v17);
  v104 = &v93 - v19;
  v108 = swift_allocObject();
  *(v108 + 16) = a4;
  v20 = objc_opt_self();
  _Block_copy(a4);
  v21 = [v20 currentConnection];
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v21;
  v102 = a1;
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 valueForEntitlement:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v111[0] = v112;
  v111[1] = v113;
  if (!*(&v113 + 1))
  {

    sub_100005E54(v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v109 & 1) == 0)
  {

LABEL_16:
    static Logger.daemonLogger.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v111[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, v111);
      _os_log_impl(&_mh_execute_header, v29, v30, "Client is missing entitlement: %s", v31, 0xCu);
      sub_100005E08(v32);
    }

    (*(v8 + 8))(v12, v7);
    sub_10001EC70();
    swift_allocError();
    *v33 = 0xD00000000000002ALL;
    *(v33 + 8) = 0x80000001000342C0;
    *(v33 + 16) = 0;
    v34 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v34);
    goto LABEL_19;
  }

  if (!a2)
  {
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v40 = 0;
    v99 = 0;
    v98 = 0;
    v100 = 0;
    v112 = 0u;
    v113 = 0u;
    LODWORD(a2) = 1;
    v97 = 1;
    LODWORD(v28) = 1;
LABEL_82:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v101 = 0;
    v60 = v102;
    if (v102)
    {
      goto LABEL_87;
    }

    goto LABEL_83;
  }

  v109 = static Constants.stateOptionReboot.getter();
  v110 = v25;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v26 = sub_10001A2E8(v111), (v27 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_21;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v26, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_21:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_22;
  }

  if (!swift_dynamicCast())
  {
LABEL_22:
    LODWORD(v28) = 1;
    goto LABEL_23;
  }

  LODWORD(v28) = LOBYTE(v111[0]);
LABEL_23:
  v109 = static Constants.stateOptionPasscode.getter();
  v110 = v35;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v36 = sub_10001A2E8(v111), (v37 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_32;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v36, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_32:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v40 = 0;
    v99 = 0;
    goto LABEL_33;
  }

  v38 = swift_dynamicCast();
  v39 = *&v111[0];
  if (!v38)
  {
    v39 = 0;
  }

  v99 = v39;
  if (v38)
  {
    v40 = *(&v111[0] + 1);
  }

  else
  {
    v40 = 0;
  }

LABEL_33:
  v109 = static Constants.stateOptionAllDevices.getter();
  v110 = v41;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v42 = sub_10001A2E8(v111), (v43 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_39;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v42, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_39:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_40;
  }

  if (!swift_dynamicCast())
  {
LABEL_40:
    v98 = 0;
    goto LABEL_41;
  }

  v98 = LOBYTE(v111[0]);
LABEL_41:
  v109 = static Constants.stateOptionIncludePaired.getter();
  v110 = v44;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v45 = sub_10001A2E8(v111), (v46 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_47;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v45, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_47:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_48;
  }

  if (!swift_dynamicCast())
  {
LABEL_48:
    v47 = 1;
    goto LABEL_49;
  }

  v47 = LOBYTE(v111[0]);
LABEL_49:
  v97 = v47;
  v109 = static Constants.stateOptionAcknowledgementOnly.getter();
  v110 = v48;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v49 = sub_10001A2E8(v111), (v50 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_55;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v49, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_55:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_56;
  }

  if (!swift_dynamicCast())
  {
LABEL_56:
    v100 = 0;
    goto LABEL_57;
  }

  v100 = LOBYTE(v111[0]);
LABEL_57:
  v109 = static Constants.stateOptionRequireAuthentication.getter();
  v110 = v51;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v52 = sub_10001A2E8(v111), (v53 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_63;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v52, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_63:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_64;
  }

  if (!swift_dynamicCast())
  {
LABEL_64:
    v54 = 1;
    goto LABEL_65;
  }

  v54 = LOBYTE(v111[0]);
LABEL_65:
  v96 = v54;
  v109 = static Constants.stateOptionExcludeRestrictions.getter();
  v110 = v55;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v56 = sub_10001A2E8(v111), (v57 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_80;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v56, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_80:
    LODWORD(a2) = v96;
    goto LABEL_82;
  }

  sub_100003BC8(&qword_100042518, &qword_100031EB8);
  if (swift_dynamicCast())
  {
    v94 = v40;
    v95 = v28;
    v40 = 0;
    v58 = *&v111[0];
    v28 = *(*&v111[0] + 16);
    v59 = *&v111[0] + 40;
    v101 = &_swiftEmptyArrayStorage;
    v60 = v102;
    v93 = *&v111[0] + 40;
LABEL_70:
    v61 = (v59 + 16 * v40);
    while (1)
    {
      if (v28 == v40)
      {

        LODWORD(v28) = v95;
        v40 = v94;
        goto LABEL_106;
      }

      if (v40 >= *(v58 + 16))
      {
        break;
      }

      ++v40;
      v62 = v61 + 2;
      v63 = *(v61 - 1);
      v64 = *v61;

      v65._countAndFlagsBits = v63;
      v65._object = v64;
      a2 = _findStringSwitchCase(cases:string:)(&off_10003D178, v65);

      v61 = v62;
      v60 = v102;
      if (a2 < 8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_100019B98(0, *(v101 + 2) + 1, 1, v101);
        }

        v67 = *(v101 + 2);
        v66 = *(v101 + 3);
        if (v67 >= v66 >> 1)
        {
          v101 = sub_100019B98((v66 > 1), v67 + 1, 1, v101);
        }

        v68 = v101;
        *(v101 + 2) = v67 + 1;
        v68[v67 + 32] = a2;
        v60 = v102;
        v59 = v93;
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_109:
    swift_once();
LABEL_95:
    v77 = v40;
    v78 = off_1000441F0();
    v79 = v78;
    if (v60 & 1) != 0 && (v78)
    {
      v95 = v28;
      static Logger.daemonLogger.getter();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Client requested to turn on Lockdown Mode while in Buddy. Clearing all notifications…", v82, 2u);
      }

      (*(v8 + 8))(v105, v7);
      v107[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
      v83 = sub_10000B570();
      sub_100008C40();

      LOBYTE(v28) = v95;
    }

    v84 = swift_allocObject();
    v85 = v108;
    *(v84 + 16) = sub_1000226C4;
    *(v84 + 24) = v85;
    *(v84 + 32) = v60 & 1;
    *(v84 + 33) = v79;
    v86 = v107;
    *(v84 + 40) = v107;
    *(v84 + 48) = v28;

    v87 = v86;
    sub_100012394(v60 & 1, v98, v97, a2, 1, v101, v99, v77, 0, sub_1000226B8, v84);

    return;
  }

  v101 = 0;
  v60 = v102;
LABEL_106:
  LODWORD(a2) = v96;
  if ((v60 & 1) == 0)
  {
LABEL_83:
    if ((a2 & 1) == 0)
    {
      static Logger.daemonLogger.getter();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Client requested to turn off Lockdown Mode without authentication. Ignoring override…", v71, 2u);
        v60 = v102;
      }

      (*(v8 + 8))(v106, v7);
      LODWORD(a2) = 1;
    }
  }

LABEL_87:
  if (!v100)
  {
    if (qword_100041CF8 == -1)
    {
      goto LABEL_95;
    }

    goto LABEL_109;
  }

  if (v60 & 1) != 0 || v107[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
  {
    v72 = v104;
    static Logger.daemonLogger.getter();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Client requested acknowledgementOnly but Lockdown Mode is either already on or client wants to turn it on. Ignoring acknowledgementOnly…", v75, 2u);
    }

    (*(v8 + 8))(v72, v7);
    sub_10001EC70();
    swift_allocError();
    *v76 = 0;
    *(v76 + 8) = 0;
    *(v76 + 16) = 2;
    v34 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v34);

LABEL_19:

    return;
  }

  v88 = v103;
  static Logger.daemonLogger.getter();
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "Client requested acknowledgementOnly. Clearing Lockdown Mode notifications…", v91, 2u);
  }

  (*(v8 + 8))(v88, v7);
  v107[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
  v92 = sub_10000B570();
  sub_100008C40();

  a4[2](a4, 0);
}

void sub_10001FF98(int a1, void *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v36[-v12];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v15 = objc_opt_self();
  _Block_copy(a3);
  v16 = [v15 currentConnection];
  if (v16)
  {
    v17 = v16;
    v37 = a1;
    v38 = a2;
    v18 = v14;
    v19 = String._bridgeToObjectiveC()();
    v20 = [v17 valueForEntitlement:v19];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    aBlock = v44;
    v40 = v45;
    v21 = v18;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v43)
      {
        if (v37)
        {
          static Logger.daemonLogger.getter();
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          v24 = os_log_type_enabled(v22, v23);
          v25 = v38;
          if (v24)
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v22, v23, "Client requested to fetch the state from KVS…", v26, 2u);
          }

          (*(v7 + 8))(v13, v6);
          v27 = sub_10000B64C();
          v28 = swift_allocObject();
          v28[2] = sub_100022394;
          v28[3] = v21;
          v28[4] = v25;
          v41 = sub_100022688;
          v42 = v28;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v40 = sub_10000B478;
          *(&v40 + 1) = &unk_10003DA90;
          v29 = _Block_copy(&aBlock);

          v30 = v25;

          [v27 synchronizeWithCompletionHandler:v29];
          _Block_release(v29);
        }

        else
        {
          v35 = sub_10000BEBC();
          a3[2](a3, v35 & 1);
        }

        return;
      }
    }

    else
    {

      sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, &aBlock);
    _os_log_impl(&_mh_execute_header, v31, v32, "Client is missing entitlement: %s", v33, 0xCu);
    sub_100005E08(v34);
  }

  (*(v7 + 8))(v11, v6);
  a3[2](a3, 0);
}

void sub_100020458(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - v12;
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  if (qword_100041CF0 != -1)
  {
    swift_once();
  }

  v16 = static RestrictionsManager.shared;
  v57 = [objc_opt_self() currentConnection];

  v62._countAndFlagsBits = a1;
  v62._object = a2;
  v17 = _s13lockdownmoded19RestrictionsManagerC14RestrictionKeyO8rawValueAESgSS_tcfC_0(v62);
  if (v17 == 8)
  {
    goto LABEL_11;
  }

  v18 = v17;
  swift_beginAccess();
  v19 = *(v16 + 24);
  if (!*(v19 + 16))
  {
    goto LABEL_11;
  }

  v20 = *(v16 + 24);

  v21 = sub_10001A480(v18);
  if ((v22 & 1) == 0)
  {

LABEL_11:
    sub_10001EC70();
    swift_allocError();
    *v32 = a1;
    *(v32 + 8) = a2;
    *(v32 + 16) = 1;

    v33 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v33);

    return;
  }

  v23 = *(*(v19 + 56) + 8 * v21);

  v24 = v23;
  v25 = *(v23 + 128);
  if (v25)
  {
    v55 = v24;
    v26 = *(v24 + 120);
    *&v60 = 0xD000000000000020;
    *(&v60 + 1) = 0x80000001000342F0;

    v27._countAndFlagsBits = v26;
    v27._object = v25;
    String.append(_:)(v27);

    v28 = *(&v60 + 1);
    v54 = v60;
    if (v57)
    {
      v29 = v57;
      v30 = String._bridgeToObjectiveC()();
      v31 = [v29 valueForEntitlement:v30];
      v53 = v29;

      if (v31)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v60 = v58;
      v61 = v59;
      if (*(&v59 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v58 != 1)
          {
            goto LABEL_33;
          }

LABEL_28:

          if (*(v55 + 112) == 1)
          {
            static Logger.daemonLogger.getter();
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&_mh_execute_header, v42, v43, "Restriction is already set to changed. No need to update", v44, 2u);
            }

            (*(v56 + 8))(v13, v6);
          }

          else
          {
            *(v55 + 112) = 1;
            sub_100027E54();
          }

          (*(a3 + 16))(a3, 0);
          v52 = v53;
          goto LABEL_37;
        }
      }

      else
      {
        sub_100005E54(&v60, &qword_100042500, &qword_100031EB0);
      }

      v40 = String._bridgeToObjectiveC()();
      v41 = [v53 valueForEntitlement:v40];

      if (v41)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v60 = v58;
      v61 = v59;
      if (*(&v59 + 1))
      {
        if (swift_dynamicCast() && (v58 & 1) != 0)
        {
          goto LABEL_28;
        }

LABEL_33:
        static Logger.daemonLogger.getter();

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *&v60 = v48;
          *v47 = 136315138;
          v49 = v54;
          *(v47 + 4) = sub_100019C8C(v54, v28, &v60);
          _os_log_impl(&_mh_execute_header, v45, v46, "Client is missing entitlement: %s", v47, 0xCu);
          sub_100005E08(v48);

          (*(v56 + 8))(v10, v6);
        }

        else
        {

          (*(v56 + 8))(v10, v6);
          v49 = v54;
        }

        sub_10001EC70();
        swift_allocError();
        *v50 = v49;
        *(v50 + 8) = v28;
        *(v50 + 16) = 0;
        v51 = _convertErrorToNSError(_:)();
        (*(a3 + 16))(a3, v51);

        v52 = v57;
LABEL_37:

        return;
      }
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      sub_100005E54(&v60, &qword_100042500, &qword_100031EB0);
      v60 = 0u;
      v61 = 0u;
    }

    sub_100005E54(&v60, &qword_100042500, &qword_100031EB0);
    goto LABEL_33;
  }

  static Logger.daemonLogger.getter();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v60 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_100019C8C(a1, a2, &v60);
    _os_log_impl(&_mh_execute_header, v34, v35, "Could not update restriction because it is not set as updatable: %s", v36, 0xCu);
    sub_100005E08(v37);
  }

  (*(v56 + 8))(v15, v6);
  sub_10001EC70();
  swift_allocError();
  *v38 = a1;
  *(v38 + 8) = a2;
  *(v38 + 16) = 1;

  v39 = _convertErrorToNSError(_:)();
  (*(a3 + 16))(a3, v39);
}

void sub_100020C74(int a1, void *a2, void (**a3)(void, void, void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = objc_opt_self();
  _Block_copy(a3);
  v15 = [v14 currentConnection];
  if (v15)
  {
    v16 = v15;
    v34 = a1;
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 valueForEntitlement:v17];

    v33 = a2;
    if (v18)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    v38 = v36;
    v39 = v37;
    if (*(&v37 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v35)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100005E54(&v38, &qword_100042500, &qword_100031EB0);
    }

    v19 = String._bridgeToObjectiveC()();
    v20 = [v16 valueForEntitlement:{v19, v33}];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    v38 = v36;
    v39 = v37;
    if (*(&v37 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v35)
      {
LABEL_16:
        static Logger.daemonLogger.getter();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        v23 = os_log_type_enabled(v21, v22);
        v24 = v34;
        if (v23)
        {
          v25 = swift_slowAlloc();
          *v25 = 67109120;
          *(v25 + 4) = v24 & 1;
          _os_log_impl(&_mh_execute_header, v21, v22, "Client requested to enableIfNeeded (reboot: %{BOOL}d)", v25, 8u);
        }

        (*(v7 + 8))(v13, v6);
        _Block_copy(a3);
        v26 = v33;
        sub_10001B5B4(0, v26, v26, v24 & 1, a3);
        _Block_release(a3);

        goto LABEL_24;
      }
    }

    else
    {

      sub_100005E54(&v38, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v38 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, &v38);
    _os_log_impl(&_mh_execute_header, v27, v28, "Client is missing entitlement: %s", v29, 0xCu);
    sub_100005E08(v30);
  }

  (*(v7 + 8))(v11, v6);
  sub_10001EC70();
  swift_allocError();
  *v31 = 0xD000000000000027;
  *(v31 + 8) = 0x8000000100034320;
  *(v31 + 16) = 0;
  v32 = _convertErrorToNSError(_:)();
  (a3)[2](a3, 0, v32);

LABEL_24:
  _Block_release(a3);
}

void sub_100021184(uint64_t a1, void (**a2)(void, void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v26[-v10];
  v12 = objc_opt_self();
  _Block_copy(a2);
  v13 = [v12 currentConnection];
  if (v13)
  {
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 valueForEntitlement:v15];

    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v26[15])
      {
        static Logger.daemonLogger.getter();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "Client requested to migrateIfNeeded", v19, 2u);
        }

        (*(v5 + 8))(v11, v4);
        _Block_copy(a2);
        sub_10001CFDC(1, a1, a2);
        _Block_release(a2);

        goto LABEL_16;
      }
    }

    else
    {

      sub_100005E54(v29, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v29[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, v29);
    _os_log_impl(&_mh_execute_header, v20, v21, "Client is missing entitlement: %s", v22, 0xCu);
    sub_100005E08(v23);
  }

  (*(v5 + 8))(v9, v4);
  sub_10001EC70();
  swift_allocError();
  *v24 = 0xD000000000000027;
  *(v24 + 8) = 0x8000000100034320;
  *(v24 + 16) = 0;
  v25 = _convertErrorToNSError(_:)();
  (a2)[2](a2, v25);

LABEL_16:
  _Block_release(a2);
}

void sub_10002158C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = [objc_opt_self() currentConnection];
  if (v17)
  {
    v18 = v17;
    v40 = a1;
    v41 = v3;
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 valueForEntitlement:v19];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v43)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100005E54(&v46, &qword_100042500, &qword_100031EB0);
    }

    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 valueForEntitlement:v21];

    if (v22)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    v3 = v41;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v43)
        {
LABEL_16:
          static Logger.daemonLogger.getter();
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "Checking if a reboot is needed…", v25, 2u);
          }

          v26 = *(v4 + 8);
          v27 = v41;
          v26(v16, v41);
          if (qword_100041CF0 != -1)
          {
            swift_once();
          }

          if (*(static RestrictionsManager.shared + 32) == 1 && ((*(v40 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter() & 1) != 0) || (static LockdownModeXNU.lockdownModeEnabled.getter() & 1) == 0))
          {
            static Logger.daemonLogger.getter();
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v37, v38, "Lockdown Mode was turned on by a migrator. Rebooting…", v39, 2u);
            }

            v26(v14, v27);
            sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034350);
          }

          else
          {
            static Logger.daemonLogger.getter();
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v28, v29, "Lockdown Mode was not turned on by a migrator. No need to reboot", v30, 2u);
            }

            v26(v11, v27);
          }

          (*(v42 + 16))(v42, 0);

          return;
        }

        v3 = v41;
      }

      else
      {
      }
    }

    else
    {

      sub_100005E54(&v46, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v46 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, &v46);
    _os_log_impl(&_mh_execute_header, v31, v32, "Client is missing entitlement: %s", v33, 0xCu);
    sub_100005E08(v34);
  }

  (*(v4 + 8))(v8, v3);
  sub_10001EC70();
  swift_allocError();
  *v35 = 0xD000000000000027;
  *(v35 + 8) = 0x8000000100034320;
  *(v35 + 16) = 0;
  v36 = _convertErrorToNSError(_:)();
  (*(v42 + 16))(v42, v36);
}

void sub_100021C50(int a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = &v36 - v12;
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {
    v17 = v16;
    LODWORD(v37) = a1;
    v18 = v4;
    v38 = a2;
    v19 = String._bridgeToObjectiveC()();
    v20 = [v17 valueForEntitlement:v19];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v42[0] = v40;
    v42[1] = v41;
    a2 = v38;
    v4 = v18;
    if (*(&v41 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v39)
      {
        static Logger.daemonLogger.getter();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 67109120;
          *(v23 + 4) = v37 & 1;
          _os_log_impl(&_mh_execute_header, v21, v22, "Client requested to set the managed configuration value: lockdownModeEnabled=%{BOOL}d", v23, 8u);
          a2 = v38;
        }

        v24 = v18;
        v25 = *(v5 + 8);
        v25(v15, v24);
        if (qword_100041CF0 != -1)
        {
          swift_once();
        }

        v26 = v37;
        sub_10002B764(v37 & 1);
        static Logger.daemonLogger.getter();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 67109120;
          *(v35 + 4) = v26 & 1;
          _os_log_impl(&_mh_execute_header, v33, v34, "Successfully set the managed configuration value: lockdownModeEnabled=%{BOOL}d", v35, 8u);
        }

        v25(v13, v24);
        (*(a2 + 16))(a2, 0);

        return;
      }
    }

    else
    {

      sub_100005E54(v42, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v42[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, v42);
    _os_log_impl(&_mh_execute_header, v27, v28, "Client is missing entitlement: %s", v29, 0xCu);
    sub_100005E08(v30);
  }

  (*(v5 + 8))(v9, v4);
  sub_10001EC70();
  swift_allocError();
  *v31 = 0xD00000000000002ALL;
  *(v31 + 8) = 0x80000001000342C0;
  *(v31 + 16) = 0;
  v32 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, v32);
}

uint64_t sub_100022304()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002235C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000223B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10002240C(uint64_t a1)
{
  v3 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000224B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003BC8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100022520()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000225A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000226C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003BC8(&qword_100041DD8, "zn");
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 4 * v13);
    sub_100005DA4(*(a1 + 56) + 32 * v13, v33 + 8);
    LODWORD(v33[0]) = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v14;
    swift_dynamicCast();
    sub_10000427C((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000427C(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000427C(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10000427C(v30, (v2[7] + 32 * v10));
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

id sub_100022A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a4;
  v71 = a3;
  v72 = a2;
  v70 = a1;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Logger();
  v75 = *(v74 - 8);
  v12 = *(v75 + 64);
  v13 = __chkstk_darwin(v74);
  v69 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v69 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v69 - v19;
  __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v23 = [objc_allocWithZone(LAContext) init];
  v78[0] = 0;
  v76 = v23;
  v24 = [v23 canEvaluatePolicy:1007 error:v78];
  v25 = v78[0];
  if ((v24 & 1) != 0 || !v78[0])
  {
    if (a6)
    {
      v30 = v78[0];
      static String.Encoding.utf8.getter();
      v31 = String.data(using:allowLossyConversion:)();
      v33 = v32;
      (*(v8 + 8))(v11, v7);
      if (v33 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100023344(v31, v33);
      }

      v28 = v76;
      v57 = [v76 setCredential:isa type:-1];

      if (v57)
      {

        return v28;
      }

      static Logger.daemonLogger.getter();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Could not setCredential with the user-provided passcode", v60, 2u);
      }

      (*(v75 + 8))(v17, v74);
      return 0;
    }

    sub_100003BC8(&qword_1000429A8, &qword_100032190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100032150;
    *(inited + 32) = 1021;
    *(inited + 64) = &type metadata for String;
    v46 = v72;
    *(inited + 40) = v70;
    *(inited + 48) = v46;
    *(inited + 72) = 1030;
    *(inited + 104) = &type metadata for String;
    v47 = v73;
    *(inited + 80) = v71;
    *(inited + 88) = v47;
    *(inited + 112) = 1042;
    *(inited + 144) = &type metadata for String;
    *(inited + 120) = 0xD00000000000001DLL;
    *(inited + 128) = 0x8000000100034A30;
    v48 = sub_100003DE4(inited);
    swift_setDeallocating();
    v35 = v25;

    sub_100003BC8(&qword_100041E98, &qword_100031548);
    swift_arrayDestroy();
    sub_1000226C8(v48);

    v49 = Dictionary._bridgeToObjectiveC()().super.isa;

    v78[0] = 0;
    v28 = v76;
    v50 = [v76 evaluatePolicy:1007 options:v49 error:v78];

    v51 = v78[0];
    if (!v50)
    {
      v67 = v78[0];
      _convertNSErrorToError(_:)();

LABEL_32:
      swift_willThrow();

      return v28;
    }

    v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v51;

    v77 = 3;
    AnyHashable.init<A>(_:)();
    if (*(v52 + 16) && (v54 = sub_10001A2E8(v78), (v55 & 1) != 0))
    {
      sub_100005DA4(*(v52 + 56) + 32 * v54, v79);
      sub_10001ECCC(v78);

      if (swift_dynamicCast())
      {
        v56 = v69;
        if (v77 == 1)
        {

          return v28;
        }

        goto LABEL_28;
      }
    }

    else
    {

      sub_10001ECCC(v78);
    }

    v56 = v69;
LABEL_28:
    static Logger.daemonLogger.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Could not evaluatePolicy. Unknown error", v66, 2u);
    }

    (*(v75 + 8))(v56, v74);
    return 0;
  }

  v26 = v78[0];
  if ([v26 code] != -5)
  {
    static Logger.daemonLogger.getter();
    v35 = v26;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78[0] = v39;
      *v38 = 136315138;
      v40 = [v35 localizedDescription];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_100019C8C(v41, v43, v78);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Could not canEvaluatePolicy: %s", v38, 0xCu);
      sub_100005E08(v39);
    }

    (*(v75 + 8))(v20, v74);
    v28 = v76;
    goto LABEL_32;
  }

  v27 = Data._bridgeToObjectiveC()().super.isa;
  v28 = v76;
  v29 = [v76 setCredential:v27 type:-1];

  if ((v29 & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Could not setCredential with an empty passcode", v63, 2u);
    }

    else
    {
    }

    (*(v75 + 8))(v22, v74);

    return 0;
  }

  return v28;
}

uint64_t sub_100023344(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100023358(a1, a2);
  }

  return a1;
}

uint64_t sub_100023358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1000233AC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting BOOLean value via LAStorage: %{BOOL}d", v11, 8u);
  }

  (*(v5 + 8))(v8, v4);
  v12 = objc_allocWithZone(LAStorage);
  if (a1)
  {
    v13 = [v12 init];
  }

  else
  {
    v13 = [v12 initWithDomain:0 authenticationContext:a2];
  }

  v14 = v13;
  v17 = 0;
  if ([v13 setBool:a1 & 1 forKey:6 error:&v17])
  {
    v15 = v17;
  }

  else
  {
    v16 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000235C8(int a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v16) = 2;
  v9 = sub_100024990(&v16 + 1, a1);
  if (!v9)
  {
    return HIDWORD(v16);
  }

  v10 = v9;
  static Logger.daemonLogger.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 8u);
  }

  (*(v5 + 8))(v8, v4);
  sub_1000247E4();
  swift_allocError();
  *v14 = v10;
  return swift_willThrow();
}

BOOL sub_10002379C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v13) = 2;
  v5 = sub_100024990(&v13 + 1, 4);
  if (v5)
  {
    v6 = v5;
    static Logger.daemonLogger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error getting TRM GracePeriod: %d", v9, 8u);
    }

    (*(v1 + 8))(v4, v0);
    sub_1000247E4();
    swift_allocError();
    *v10 = v6;
    swift_willThrow();
  }

  else
  {
    return HIDWORD(v13) == 3;
  }

  return v11;
}

BOOL sub_100023978()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v13) = 0;
  v5 = sub_100024870(&v13 + 4);
  if (v5)
  {
    v6 = v5;
    static Logger.daemonLogger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error getting TRM FeatureFlags: %d", v9, 8u);
    }

    (*(v1 + 8))(v4, v0);
    sub_1000247E4();
    swift_allocError();
    *v10 = v6;
    swift_willThrow();
  }

  else
  {
    return (~HIDWORD(v13) & 6) == 0;
  }

  return v11;
}

BOOL sub_100023B50(int a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v17) = 2;
  v9 = sub_100024990(&v17 + 1, a1);
  if (v9)
  {
    v10 = v9;
    static Logger.daemonLogger.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 8u);
    }

    (*(v5 + 8))(v8, v4);
    sub_1000247E4();
    swift_allocError();
    *v14 = v10;
    swift_willThrow();
  }

  else
  {
    return HIDWORD(v17) == 1;
  }

  return v15;
}

uint64_t sub_100023D30(uint64_t a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a2(a1);
  if (result)
  {
    v12 = result;
    static Logger.daemonLogger.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = a1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 0xEu);
    }

    (*(v7 + 8))(v10, v6);
    sub_1000247E4();
    swift_allocError();
    *v16 = v12;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100023EDC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v13) = 0;
  v5 = sub_100024870(&v13 + 4);
  if (v5)
  {
    v6 = v5;
    static Logger.daemonLogger.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error getting TRM FeatureFlags: %d", v9, 8u);
    }

    (*(v1 + 8))(v4, v0);
    sub_1000247E4();
    swift_allocError();
    *v10 = v6;
    swift_willThrow();
  }

  else
  {
    v11 = (HIDWORD(v13) >> 3) & 1;
  }

  return v11 & 1;
}

BOOL sub_1000240AC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  if (sub_100023978())
  {
    v4 = sub_100023B50(5, "Error getting TRM Profile: %d");
  }

  else
  {
    v4 = sub_10002379C();
  }

  return v4 && ((sub_100023EDC() & 1) == 0 || sub_100023B50(12, "Error getting HIDRM GlobalSwitch: %d"));
}

uint64_t sub_1000242C4(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v25 - v9;
  __chkstk_darwin(v8);
  if (sub_100023978())
  {
    if (a1)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1000235C8(10, "Error getting default TRM Profile: %d");
    }

    v12 = "Error setting TRM Profile (value=%u: %d";
    v13 = sub_1000247AC;
  }

  else
  {
    if (a1)
    {
      v11 = 3;
    }

    else
    {
      v11 = sub_1000235C8(9, "Error getting default TRM GracePeriod: %d");
    }

    v12 = "Error setting TRM GracePeriod (value=%u: %d";
    v13 = sub_100024958;
  }

  sub_100023D30(v11, v13, v12);
  result = sub_100023EDC();
  if (result)
  {
    if (a1)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_1000235C8(13, "Error getting default HIDRM GlobalSwitch: %d");
    }

    result = sub_100023D30(v24, sub_100024838, "Error setting HIDRM GlobalSwitch (value=%u: %d");
  }

  if (a1)
  {
    v15 = lockdown_reset_pairing();
    if (v15)
    {
      v16 = v15;
      static Logger.daemonLogger.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109120;
        *(v19 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "Error resetting Pairing Records: %d", v19, 8u);
      }

      (*(v3 + 8))(v10, v2);
    }

    result = sub_100024730();
    if (result)
    {
      v20 = result;
      static Logger.daemonLogger.getter();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "Error clearing acessory cache: %d", v23, 8u);
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_100024744(uint64_t a1)
{
  v2 = sub_100003BC8(&qword_100042158, qword_100031C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000247E4()
{
  result = qword_1000429B0;
  if (!qword_1000429B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000429B0);
  }

  return result;
}

uint64_t sub_100024870(uint64_t a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = -5;
  v1 = ACMKernelControl(18);
  if (!v1)
  {
    v1 = *(v4 + 6);
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

uint64_t sub_100024990(_DWORD *a1, int a2)
{
  if (!a1)
  {
    return 4294967293;
  }

  v5 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -5;
  v12 = a2;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100024B04;
  v9 = &unk_10003DD30;
  v10 = &v13;
  v11 = &v5;
  v3 = ACMKernelControl(18);
  if (v3)
  {
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v3 = *(v14 + 6);
    _Block_object_dispose(&v13, 8);
    if (!v3)
    {
      *a1 = v5;
    }
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for LockdownModeACM.ACMError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LockdownModeACM.ACMError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100024B04(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = -5;
  if (a2 && a3 == 4)
  {
    v3 = 0;
    **(result + 40) = *a2;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

uint64_t sub_100024B38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000056546FLL;
  v3 = 0x5479616C50726941;
  if (a1 > 3u)
  {
    v4 = 0x8000000100033C30;
    v5 = 0xD000000000000017;
    if (a1 != 6)
    {
      v5 = 0x65706F6C65766544;
      v4 = 0xED000065646F4D72;
    }

    v6 = 0x5279616C50726941;
    v7 = 0xEF72657669656365;
    if (a1 != 4)
    {
      v6 = 0xD000000000000011;
      v7 = 0x8000000100033C10;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 5067348;
    if (a1 != 2)
    {
      v5 = 0x6C41646572616853;
      v4 = 0xEC000000736D7562;
    }

    v6 = 0x766572506B6E694CLL;
    v7 = 0xEC00000073776569;
    if (!a1)
    {
      v6 = 0x5479616C50726941;
      v7 = 0xEB0000000056546FLL;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x8000000100033C30;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xED000065646F4D72;
        if (v9 != 0x65706F6C65766544)
        {
          goto LABEL_40;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF72657669656365;
      if (v9 != 0x5279616C50726941)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v2 = 0x8000000100033C10;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE300000000000000;
        if (v9 != 5067348)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v3 = 0x6C41646572616853;
      v2 = 0xEC000000736D7562;
    }

    else if (a2)
    {
      v2 = 0xEC00000073776569;
      if (v9 != 0x766572506B6E694CLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v9 != v3)
    {
LABEL_40:
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_41;
    }
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v11 = 1;
LABEL_41:

  return v11 & 1;
}

uint64_t sub_100024DF4()
{
  String.hash(into:)();
}

Swift::Int sub_100024F58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t *RestrictionsManager.shared.unsafeMutableAddressor()
{
  if (qword_100041CF0 != -1)
  {
    swift_once();
  }

  return &static RestrictionsManager.shared;
}

uint64_t sub_100025124()
{
  result = sub_10002B110();
  static RestrictionsManager.shared = result;
  return result;
}

uint64_t static RestrictionsManager.shared.getter()
{
  if (qword_100041CF0 != -1)
  {
    swift_once();
  }
}

unint64_t RestrictionsManager.RestrictionKey.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD000000000000017;
    if (a1 != 6)
    {
      v4 = 0x65706F6C65766544;
    }

    v5 = 0x5279616C50726941;
    if (a1 != 4)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x5479616C50726941;
    v2 = 5067348;
    if (a1 != 2)
    {
      v2 = 0x6C41646572616853;
    }

    if (a1)
    {
      v1 = 0x766572506B6E694CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100025304@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13lockdownmoded19RestrictionsManagerC14RestrictionKeyO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100025334(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000056546FLL;
  v4 = 0x5479616C50726941;
  v5 = 0x8000000100033C30;
  v6 = 0xD000000000000017;
  if (v2 != 6)
  {
    v6 = 0x65706F6C65766544;
    v5 = 0xED000065646F4D72;
  }

  v7 = 0xEF72657669656365;
  v8 = 0x5279616C50726941;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000100033C10;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5067348;
  if (v2 != 2)
  {
    v10 = 0x6C41646572616853;
    v9 = 0xEC000000736D7562;
  }

  if (*v1)
  {
    v4 = 0x766572506B6E694CLL;
    v3 = 0xEC00000073776569;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100025478(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = sub_100004164(&_swiftEmptyArrayStorage);
  v4 = (v2 + 24);
  *(v2 + 32) = 0;
  v5 = sub_10000428C(&_swiftEmptyArrayStorage);
  if (!a1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 16) && (v6 = sub_10001A408(0x7463697274736552, 0xEC000000736E6F69), (v7 & 1) != 0))
  {
    sub_100005DA4(*(a1 + 56) + 32 * v6, &v113);
    sub_100003BC8(&qword_100042B08, &unk_100032350);
    if (swift_dynamicCast())
    {
      v5 = v111;
    }

    else
    {
      v5 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if (!*(a1 + 16))
    {
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = sub_10001A408(0x6E6F6973726556, 0xE700000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100005DA4(*(a1 + 56) + 32 * v8, &v113);

  if (swift_dynamicCast())
  {
    v10 = v111;
    goto LABEL_15;
  }

LABEL_14:
  v10 = 0;
LABEL_15:
  *(v2 + 16) = v10;
  *(v2 + 32) = 1;
  if (!v5)
  {
LABEL_23:
    v114 = &type metadata for Int;
    *&v113 = 0;
    goto LABEL_24;
  }

LABEL_16:
  if (!*(v5 + 16))
  {
    goto LABEL_23;
  }

  v11 = sub_10001A408(0x5479616C50726941, 0xEB0000000056546FLL);
  if ((v12 & 1) == 0)
  {
    goto LABEL_23;
  }

  v13 = *(*(v5 + 56) + 8 * v11);

  v114 = &type metadata for Int;
  *&v113 = 0;
  if (!v13)
  {
LABEL_24:
    v16 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_25;
  }

  if (*(v13 + 16))
  {

    v14 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v15)
    {
      sub_100005DA4(*(v13 + 56) + 32 * v14, &v111);

      if (!*(v13 + 16))
      {
        goto LABEL_102;
      }

      goto LABEL_99;
    }
  }

  v111 = 0u;
  v112 = 0u;
  if (!*(v13 + 16))
  {
LABEL_102:

    goto LABEL_103;
  }

LABEL_99:
  v92 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v93 & 1) == 0)
  {
    goto LABEL_102;
  }

  sub_100005DA4(*(v13 + 56) + 32 * v92, &v109);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_103:
    v16 = 0;
    goto LABEL_25;
  }

  v16 = v108[0];
LABEL_25:
  v109 = v111;
  v110 = v112;
  type metadata accessor for Restriction();
  v17 = swift_allocObject();
  *(v17 + 113) = 0;
  *(v17 + 64) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 120) = 0;
  *(v17 + 128) = 0;
  *(v17 + 16) = sub_100026994;
  *(v17 + 24) = 0;
  *(v17 + 32) = sub_1000269CC;
  *(v17 + 40) = 0;
  sub_10000427C(&v113, v108);
  swift_beginAccess();
  sub_10002BCCC(v108, v17 + 48);
  swift_endAccess();
  *(v17 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v109, v17 + 80);
  swift_endAccess();
  *(v17 + 112) = v16;
  v18 = *(v17 + 128);
  *(v17 + 120) = xmmword_1000321F0;

  swift_beginAccess();
  v19 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v17, 0, isUniquelyReferenced_nonNull_native);
  *v4 = v111;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v21 = sub_10001A408(0x766572506B6E694CLL, 0xEC00000073776569), (v22 & 1) == 0))
  {
    v114 = &type metadata for Bool;
    LOBYTE(v113) = 0;
    goto LABEL_34;
  }

  v23 = *(*(v5 + 56) + 8 * v21);

  v114 = &type metadata for Bool;
  LOBYTE(v113) = 0;
  if (!v23)
  {
LABEL_34:
    v26 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_35;
  }

  if (*(v23 + 16))
  {

    v24 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v25)
    {
      sub_100005DA4(*(v23 + 56) + 32 * v24, &v111);

      if (!*(v23 + 16))
      {
        goto LABEL_109;
      }

      goto LABEL_106;
    }
  }

  v111 = 0u;
  v112 = 0u;
  if (!*(v23 + 16))
  {
LABEL_109:

    goto LABEL_110;
  }

LABEL_106:
  v94 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v95 & 1) == 0)
  {
    goto LABEL_109;
  }

  sub_100005DA4(*(v23 + 56) + 32 * v94, &v109);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_110:
    v26 = 0;
    goto LABEL_35;
  }

  v26 = v108[0];
LABEL_35:
  v109 = v111;
  v110 = v112;
  v27 = swift_allocObject();
  *(v27 + 113) = 0;
  *(v27 + 64) = 0u;
  *(v27 + 96) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 48) = 0u;
  *(v27 + 120) = 0;
  *(v27 + 128) = 0;
  *(v27 + 16) = sub_1000269E4;
  *(v27 + 24) = 0;
  *(v27 + 32) = sub_100026A60;
  *(v27 + 40) = 0;
  sub_10000427C(&v113, v108);
  swift_beginAccess();
  sub_10002BCCC(v108, v27 + 48);
  swift_endAccess();
  *(v27 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v109, v27 + 80);
  swift_endAccess();
  *(v27 + 112) = v26;
  v28 = *(v27 + 128);
  *(v27 + 120) = xmmword_100032200;

  swift_beginAccess();
  v29 = *v4;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v27, 1u, v30);
  *v4 = v111;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v31 = sub_10001A408(5067348, 0xE300000000000000), (v32 & 1) == 0))
  {
    v114 = &type metadata for Bool;
    LOBYTE(v113) = 1;
    goto LABEL_44;
  }

  v33 = *(*(v5 + 56) + 8 * v31);

  v114 = &type metadata for Bool;
  LOBYTE(v113) = 1;
  if (!v33)
  {
LABEL_44:
    v36 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_45;
  }

  if (*(v33 + 16))
  {

    v34 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v35)
    {
      sub_100005DA4(*(v33 + 56) + 32 * v34, &v111);

      if (!*(v33 + 16))
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    }
  }

  v111 = 0u;
  v112 = 0u;
  if (!*(v33 + 16))
  {
LABEL_116:

    goto LABEL_117;
  }

LABEL_113:
  v96 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v97 & 1) == 0)
  {
    goto LABEL_116;
  }

  sub_100005DA4(*(v33 + 56) + 32 * v96, &v109);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_117:
    v36 = 0;
    goto LABEL_45;
  }

  v36 = v108[0];
LABEL_45:
  v109 = v111;
  v110 = v112;
  v37 = swift_allocObject();
  *(v37 + 113) = 0;
  *(v37 + 64) = 0u;
  *(v37 + 96) = 0u;
  *(v37 + 80) = 0u;
  *(v37 + 48) = 0u;
  *(v37 + 120) = 0;
  *(v37 + 128) = 0;
  *(v37 + 16) = sub_100026B0C;
  *(v37 + 24) = 0;
  *(v37 + 32) = sub_100026B44;
  *(v37 + 40) = 0;
  sub_10000427C(&v113, v108);
  swift_beginAccess();
  sub_10002BCCC(v108, v37 + 48);
  swift_endAccess();
  *(v37 + 114) = 0;
  swift_beginAccess();
  sub_10002BCCC(&v109, v37 + 80);
  swift_endAccess();
  *(v37 + 112) = v36;
  v38 = *(v37 + 128);
  *(v37 + 120) = 0;
  *(v37 + 128) = 0;

  swift_beginAccess();
  v39 = *v4;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v37, 2u, v40);
  *v4 = v111;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v41 = sub_10001A408(0x6C41646572616853, 0xEC000000736D7562), (v42 & 1) == 0))
  {
    v114 = &type metadata for Bool;
    LOBYTE(v113) = 0;
    goto LABEL_54;
  }

  v43 = *(*(v5 + 56) + 8 * v41);

  v114 = &type metadata for Bool;
  LOBYTE(v113) = 0;
  if (!v43)
  {
LABEL_54:
    v46 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_55;
  }

  if (*(v43 + 16))
  {

    v44 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v45)
    {
      sub_100005DA4(*(v43 + 56) + 32 * v44, &v111);

      if (!*(v43 + 16))
      {
        goto LABEL_123;
      }

      goto LABEL_120;
    }
  }

  v111 = 0u;
  v112 = 0u;
  if (!*(v43 + 16))
  {
LABEL_123:

    goto LABEL_124;
  }

LABEL_120:
  v98 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v99 & 1) == 0)
  {
    goto LABEL_123;
  }

  sub_100005DA4(*(v43 + 56) + 32 * v98, &v109);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_124:
    v46 = 0;
    goto LABEL_55;
  }

  v46 = v108[0];
LABEL_55:
  v109 = v111;
  v110 = v112;
  v47 = swift_allocObject();
  *(v47 + 113) = 0;
  *(v47 + 64) = 0u;
  *(v47 + 96) = 0u;
  *(v47 + 80) = 0u;
  *(v47 + 48) = 0u;
  *(v47 + 120) = 0;
  *(v47 + 128) = 0;
  *(v47 + 16) = sub_100026B9C;
  *(v47 + 24) = 0;
  *(v47 + 32) = sub_100026C44;
  *(v47 + 40) = 0;
  sub_10000427C(&v113, v108);
  swift_beginAccess();
  sub_10002BCCC(v108, v47 + 48);
  swift_endAccess();
  *(v47 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v109, v47 + 80);
  swift_endAccess();
  *(v47 + 112) = v46;
  v48 = *(v47 + 128);
  *(v47 + 120) = 0;
  *(v47 + 128) = 0;

  swift_beginAccess();
  v49 = *v4;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v47, 3u, v50);
  *v4 = v111;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v51 = sub_10001A408(0x5279616C50726941, 0xEF72657669656365), (v52 & 1) == 0))
  {
    v114 = &type metadata for Bool;
    LOBYTE(v113) = 0;
    goto LABEL_64;
  }

  v53 = *(*(v5 + 56) + 8 * v51);

  v114 = &type metadata for Bool;
  LOBYTE(v113) = 0;
  if (!v53)
  {
LABEL_64:
    v56 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_65;
  }

  if (*(v53 + 16))
  {

    v54 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v55)
    {
      sub_100005DA4(*(v53 + 56) + 32 * v54, &v111);

      if (!*(v53 + 16))
      {
        goto LABEL_130;
      }

      goto LABEL_127;
    }
  }

  v111 = 0u;
  v112 = 0u;
  if (!*(v53 + 16))
  {
LABEL_130:

    goto LABEL_131;
  }

LABEL_127:
  v100 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v101 & 1) == 0)
  {
    goto LABEL_130;
  }

  sub_100005DA4(*(v53 + 56) + 32 * v100, &v109);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_131:
    v56 = 0;
    goto LABEL_65;
  }

  v56 = v108[0];
LABEL_65:
  v109 = v111;
  v110 = v112;
  v57 = swift_allocObject();
  *(v57 + 113) = 0;
  *(v57 + 64) = 0u;
  *(v57 + 96) = 0u;
  *(v57 + 80) = 0u;
  *(v57 + 48) = 0u;
  *(v57 + 120) = 0;
  *(v57 + 128) = 0;
  *(v57 + 16) = sub_100026C98;
  *(v57 + 24) = 0;
  *(v57 + 32) = sub_100026D38;
  *(v57 + 40) = 0;
  sub_10000427C(&v113, v108);
  swift_beginAccess();
  sub_10002BCCC(v108, v57 + 48);
  swift_endAccess();
  *(v57 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v109, v57 + 80);
  swift_endAccess();
  *(v57 + 112) = v56;
  v58 = *(v57 + 128);
  *(v57 + 120) = xmmword_100032210;

  swift_beginAccess();
  v59 = *v4;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v57, 4u, v60);
  *v4 = v111;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v61 = sub_10001A408(0xD000000000000011, 0x8000000100033C10), (v62 & 1) == 0))
  {
    v114 = &type metadata for Bool;
    LOBYTE(v113) = 1;
    goto LABEL_74;
  }

  v63 = *(*(v5 + 56) + 8 * v61);

  v114 = &type metadata for Bool;
  LOBYTE(v113) = 1;
  if (!v63)
  {
LABEL_74:
    v66 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_75;
  }

  if (*(v63 + 16))
  {

    v64 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v65)
    {
      sub_100005DA4(*(v63 + 56) + 32 * v64, &v111);

      if (!*(v63 + 16))
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }
  }

  v111 = 0u;
  v112 = 0u;
  if (!*(v63 + 16))
  {
LABEL_137:

    goto LABEL_138;
  }

LABEL_134:
  v102 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v103 & 1) == 0)
  {
    goto LABEL_137;
  }

  sub_100005DA4(*(v63 + 56) + 32 * v102, &v109);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_138:
    v66 = 0;
    goto LABEL_75;
  }

  v66 = v108[0];
LABEL_75:
  v109 = v111;
  v110 = v112;
  v67 = swift_allocObject();
  *(v67 + 113) = 0;
  *(v67 + 64) = 0u;
  *(v67 + 96) = 0u;
  *(v67 + 80) = 0u;
  *(v67 + 48) = 0u;
  *(v67 + 120) = 0;
  *(v67 + 128) = 0;
  *(v67 + 16) = sub_100026E04;
  *(v67 + 24) = 0;
  *(v67 + 32) = sub_100026EC0;
  *(v67 + 40) = 0;
  sub_10000427C(&v113, v108);
  swift_beginAccess();
  sub_10002BCCC(v108, v67 + 48);
  swift_endAccess();
  *(v67 + 114) = 0;
  swift_beginAccess();
  sub_10002BCCC(&v109, v67 + 80);
  swift_endAccess();
  *(v67 + 112) = v66;
  v68 = *(v67 + 128);
  *(v67 + 120) = 0;
  *(v67 + 128) = 0;

  swift_beginAccess();
  v69 = *v4;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v67, 5u, v70);
  *v4 = v111;
  swift_endAccess();
  if (!v5 || !*(v5 + 16) || (v71 = sub_10001A408(0xD000000000000017, 0x8000000100033C30), (v72 & 1) == 0))
  {
    v114 = &type metadata for Int;
    *&v113 = 0;
    goto LABEL_84;
  }

  v73 = *(*(v5 + 56) + 8 * v71);

  v114 = &type metadata for Int;
  *&v113 = 0;
  if (!v73)
  {
LABEL_84:
    v76 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_85;
  }

  if (*(v73 + 16))
  {

    v74 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v75)
    {
      sub_100005DA4(*(v73 + 56) + 32 * v74, &v111);

      if (!*(v73 + 16))
      {
        goto LABEL_144;
      }

      goto LABEL_141;
    }
  }

  v111 = 0u;
  v112 = 0u;
  if (!*(v73 + 16))
  {
LABEL_144:

    goto LABEL_145;
  }

LABEL_141:
  v104 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v105 & 1) == 0)
  {
    goto LABEL_144;
  }

  sub_100005DA4(*(v73 + 56) + 32 * v104, &v109);

  if (swift_dynamicCast())
  {
    v76 = v108[0];
    goto LABEL_85;
  }

LABEL_145:
  v76 = 0;
LABEL_85:
  v109 = v111;
  v110 = v112;
  v77 = swift_allocObject();
  *(v77 + 113) = 0;
  *(v77 + 64) = 0u;
  *(v77 + 96) = 0u;
  *(v77 + 80) = 0u;
  *(v77 + 48) = 0u;
  *(v77 + 120) = 0;
  *(v77 + 128) = 0;
  *(v77 + 16) = sub_100026FA8;
  *(v77 + 24) = 0;
  *(v77 + 32) = sub_100026FE0;
  *(v77 + 40) = 0;
  sub_10000427C(&v113, v108);
  swift_beginAccess();
  sub_10002BCCC(v108, v77 + 48);
  swift_endAccess();
  *(v77 + 114) = 1;
  swift_beginAccess();
  sub_10002BCCC(&v109, v77 + 80);
  swift_endAccess();
  *(v77 + 112) = v76;
  v78 = *(v77 + 128);
  *(v77 + 120) = 0xD000000000000017;
  *(v77 + 128) = 0x8000000100033C30;

  swift_beginAccess();
  v79 = *v4;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *v4;
  *v4 = 0x8000000000000000;
  sub_10001A604(v77, 6u, v80);
  *v4 = v111;
  swift_endAccess();
  if (!v5)
  {
LABEL_94:
    v114 = &type metadata for Bool;
    LOBYTE(v113) = 0;
    goto LABEL_95;
  }

  if (!*(v5 + 16) || (v81 = sub_10001A408(0x65706F6C65766544, 0xED000065646F4D72), (v82 & 1) == 0))
  {

    goto LABEL_94;
  }

  v83 = *(*(v5 + 56) + 8 * v81);

  v114 = &type metadata for Bool;
  LOBYTE(v113) = 0;
  if (!v83)
  {
LABEL_95:
    v86 = 0;
    v111 = 0u;
    v112 = 0u;
    goto LABEL_96;
  }

  if (*(v83 + 16))
  {

    v84 = sub_10001A408(0x65756C6156, 0xE500000000000000);
    if (v85)
    {
      sub_100005DA4(*(v83 + 56) + 32 * v84, &v111);

      if (!*(v83 + 16))
      {
        goto LABEL_151;
      }

      goto LABEL_148;
    }
  }

  v111 = 0u;
  v112 = 0u;
  if (!*(v83 + 16))
  {
LABEL_151:

    goto LABEL_152;
  }

LABEL_148:
  v106 = sub_10001A408(0x6465676E616843, 0xE700000000000000);
  if ((v107 & 1) == 0)
  {
    goto LABEL_151;
  }

  sub_100005DA4(*(v83 + 56) + 32 * v106, &v109);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_152:
    v86 = 0;
    goto LABEL_96;
  }

  v86 = v108[0];
LABEL_96:
  v109 = v111;
  v110 = v112;
  v87 = swift_allocObject();
  *(v87 + 113) = 0;
  *(v87 + 64) = 0u;
  *(v87 + 96) = 0u;
  *(v87 + 80) = 0u;
  *(v87 + 48) = 0u;
  *(v87 + 120) = 0;
  *(v87 + 128) = 0;
  *(v87 + 16) = sub_10002706C;
  *(v87 + 24) = 0;
  *(v87 + 32) = sub_1000270A0;
  *(v87 + 40) = 0;
  sub_10000427C(&v113, v108);
  swift_beginAccess();
  sub_10002BCCC(v108, v87 + 48);
  swift_endAccess();
  *(v87 + 114) = 0;
  swift_beginAccess();
  sub_10002BCCC(&v109, v87 + 80);
  swift_endAccess();
  *(v87 + 112) = v86;
  v88 = *(v87 + 128);
  *(v87 + 120) = 0;
  *(v87 + 128) = 0;

  swift_beginAccess();
  v89 = *(v2 + 24);
  v90 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_10001A604(v87, 7u, v90);
  *(v2 + 24) = v111;
  swift_endAccess();
  return v2;
}

uint64_t sub_100026994@<X0>(void *a1@<X8>)
{
  result = sub_10002CAB8();
  a1[3] = &type metadata for Int;
  *a1 = result;
  return result;
}

void sub_1000269E4(uint64_t a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, kCFPreferencesAnyApplication, 0);

  *(a1 + 24) = &type metadata for Bool;
  *a1 = AppBooleanValue != 0;
}

void sub_100026A60(uint64_t a1)
{
  sub_100005DA4(a1, v3);
  swift_dynamicCast();
  v1 = String._bridgeToObjectiveC()();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  CFPreferencesSetAppValue(v1, isa, kCFPreferencesAnyApplication);
}

BOOL sub_100026B0C@<W0>(uint64_t a1@<X8>)
{
  result = sub_1000240AC();
  *(a1 + 24) = &type metadata for Bool;
  *a1 = result;
  return result;
}

uint64_t sub_100026B44(uint64_t a1)
{
  sub_100005DA4(a1, v4);
  v1 = swift_dynamicCast();
  return sub_1000242C4(v3 & 1u | ((v1 & 1) == 0));
}

void sub_100026B9C(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isEnabledForDataclass:ACAccountDataclassSharedStreams];

    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = &type metadata for Bool;
  *a1 = v5;
}

void sub_100026C44(uint64_t a1)
{
  sub_100005DA4(a1, v3);
  v1 = swift_dynamicCast();
  sub_100005800(v1 & v2);
}

void sub_100026C98(uint64_t a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v3, 0);

  *(a1 + 24) = &type metadata for Bool;
  *a1 = AppBooleanValue != 0;
}

void sub_100026D38(uint64_t a1)
{
  sub_100005DA4(a1, v4);
  swift_dynamicCast();
  v1 = String._bridgeToObjectiveC()();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  CFPreferencesSetAppValue(v1, isa, v3);
}

uint64_t sub_100026E04@<X0>(uint64_t a1@<X8>)
{
  if (qword_100041CD8 != -1)
  {
    swift_once();
  }

  v2 = qword_100042168;
  if (qword_100041CD0 != -1)
  {
    v4 = qword_100042168;
    swift_once();
    v2 = v4;
  }

  result = CFPreferencesGetAppBooleanValue(v2, qword_100042160, 0);
  *(a1 + 24) = &type metadata for Bool;
  *a1 = result != 0;
  return result;
}

void sub_100026EC0(uint64_t a1)
{
  sub_100005DA4(a1, v3);
  swift_dynamicCast();
  if (qword_100041CD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100042168;
  v2.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  if (qword_100041CD0 != -1)
  {
    swift_once();
  }

  CFPreferencesSetAppValue(v1, v2.super.super.isa, qword_100042160);
}

uint64_t sub_100026FA8@<X0>(void *a1@<X8>)
{
  result = sub_100005FD4();
  a1[3] = &type metadata for Int;
  *a1 = result;
  return result;
}

uint64_t sub_100026FF8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_100005DA4(a1, v6);
  swift_dynamicCast();
  if (v5 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v5 == 1;
  }

  return a2(v3);
}

uint64_t sub_10002706C@<X0>(uint64_t a1@<X8>)
{
  result = AMFIIsDeveloperModeEnabled();
  *(a1 + 24) = &type metadata for Bool;
  *a1 = result;
  return result;
}

void sub_1000270A0(uint64_t a1)
{
  sub_100005DA4(a1, v4);
  if (!swift_dynamicCast() || (v3 & 1) == 0)
  {
    sub_100005DA4(a1, v4);
    v2 = swift_dynamicCast();
    sub_10000A30C(v2 & v3);
  }
}

uint64_t sub_100027134(int a1, uint64_t a2)
{
  LODWORD(v4) = a1;
  v84 = type metadata accessor for Logger();
  v80 = *(v84 - 8);
  v5 = *(v80 + 64);
  v6 = __chkstk_darwin(v84);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v77 = &v68 - v9;
  __chkstk_darwin(v8);
  v11 = &v68 - v10;
  swift_beginAccess();
  v72 = v2;
  v12 = *(v2 + 24);

  v14 = sub_10002B5A4(v13, a2);

  if (v4)
  {
    v71 = 0;
  }

  else
  {
    v15 = sub_10002A5C0(v14);
    v71 = 0;

    v14 = v15;
  }

  static Logger.daemonLogger.getter();
  swift_bridgeObjectRetain_n();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = &off_100031000;
  v82 = v4;
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v89 = v21;
    *v20 = 136315394;
    if (v4)
    {
      v22 = 0x7463697274736572;
    }

    else
    {
      v22 = 0x6972747365726E75;
    }

    if (v4)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEA00000000007463;
    }

    v23 = sub_100019C8C(v22, v4, &v89);
    LOBYTE(v4) = v82;

    *(v20 + 4) = v23;
    *(v20 + 12) = 2048;
    v24 = *(v14 + 16);

    *(v20 + 14) = v24;

    _os_log_impl(&_mh_execute_header, v16, v17, "Will %s %ld restrictions…", v20, 0x16u);
    sub_100005E08(v21);

    v25 = v80 + 8;
    v83 = *(v80 + 8);
    v83(v11, v84);
    v19 = &off_100031000;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v25 = v80 + 8;
    v83 = *(v80 + 8);
    v83(v11, v84);
  }

  v27 = v77;
  result = v14;
  v29 = 0;
  v30 = v14 + 64;
  v31 = 1 << *(v14 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v14 + 64);
  v34 = (v31 + 63) >> 6;
  v35 = 0x6972747365726E55;
  if (v4)
  {
    v35 = 0x7463697274736552;
  }

  v75 = v35;
  v36 = 0xED0000676E697463;
  if (v4)
  {
    v36 = 0xEB00000000676E69;
  }

  v76 = v36;
  v70 = 0x8000000100033C30;
  v69 = 0x8000000100033C10;
  *&v26 = *(v19 + 458);
  v74 = v26;
  v80 = v25;
  v81 = result;
  if (v33)
  {
    while (1)
    {
LABEL_24:
      v38 = __clz(__rbit64(v33)) | (v29 << 6);
      v39 = *(*(result + 48) + v38);
      v40 = *(*(result + 56) + 8 * v38);

      static Logger.daemonLogger.getter();
      v41 = Logger.logObject.getter();
      v42 = v27;
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v43))
      {
        v78 = v43;
        v44 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v89 = v79;
        *v44 = v74;
        v45 = sub_100019C8C(v75, v76, &v89);

        *(v44 + 4) = v45;
        *(v44 + 12) = 2080;
        if (v39 > 3)
        {
          if (v39 > 5)
          {
            v46 = v78;
            if (v39 == 6)
            {
              v47 = 0xD000000000000017;
              v48 = v70;
            }

            else
            {
              v47 = 0x65706F6C65766544;
              v48 = 0xED000065646F4D72;
            }
          }

          else
          {
            v46 = v78;
            if (v39 == 4)
            {
              v47 = 0x5279616C50726941;
              v48 = 0xEF72657669656365;
            }

            else
            {
              v47 = 0xD000000000000011;
              v48 = v69;
            }
          }
        }

        else if (v39 > 1)
        {
          v46 = v78;
          if (v39 == 2)
          {
            v48 = 0xE300000000000000;
            v47 = 5067348;
          }

          else
          {
            v47 = 0x6C41646572616853;
            v48 = 0xEC000000736D7562;
          }
        }

        else
        {
          v46 = v78;
          if (v39)
          {
            v47 = 0x766572506B6E694CLL;
            v48 = 0xEC00000073776569;
          }

          else
          {
            v47 = 0x5479616C50726941;
            v48 = 0xEB0000000056546FLL;
          }
        }

        v49 = sub_100019C8C(v47, v48, &v89);

        *(v44 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v41, v46, "%s %s…", v44, 0x16u);
        swift_arrayDestroy();

        v27 = v77;
        v83(v77, v84);
      }

      else
      {

        v83(v42, v84);
        v27 = v42;
      }

      LOBYTE(v4) = v82;
      if (v82)
      {
        break;
      }

      swift_beginAccess();
      sub_1000045C4(v40 + 80, &v87, &qword_100042500, &qword_100031EB0);
      if (v88)
      {
        goto LABEL_46;
      }

      swift_beginAccess();
      result = sub_1000045C4(v40 + 48, &v85, &qword_100042500, &qword_100031EB0);
      if (!v86)
      {
        goto LABEL_73;
      }

      sub_10000427C(&v85, &v89);
      if (v88)
      {
        sub_100005E54(&v87, &qword_100042500, &qword_100031EB0);
      }

LABEL_47:
      v33 &= v33 - 1;
      v50 = *(v40 + 32);
      v51 = *(v40 + 40);

      v50(&v89);

      sub_100005E08(&v89);
      *(v40 + 112) = 0;

      result = v81;
      if (!v33)
      {
        goto LABEL_20;
      }
    }

    swift_beginAccess();
    result = sub_1000045C4(v40 + 48, &v87, &qword_100042500, &qword_100031EB0);
    if (!v88)
    {
      goto LABEL_72;
    }

LABEL_46:
    sub_10000427C(&v87, &v89);
    goto LABEL_47;
  }

  while (1)
  {
LABEL_20:
    v37 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v37 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v37);
    ++v29;
    if (v33)
    {
      v29 = v37;
      goto LABEL_24;
    }
  }

  v52 = 0;
  v53 = *(v72 + 24);
  v54 = 1 << *(v53 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v53 + 64);
  v57 = (v54 + 63) >> 6;
  for (i = v73; v56; *(*(*(v53 + 56) + ((v59 << 9) | (8 * v60))) + 112) = 0)
  {
    v59 = v52;
LABEL_60:
    v60 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
  }

  while (1)
  {
    v59 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v59 >= v57)
    {
      v61 = v71;
      sub_10002B764(v4 & 1);
      if (v61)
      {
      }

      static Logger.daemonLogger.getter();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v89 = v65;
        *v64 = 136315138;
        if (v4)
        {
          v66 = 0x7463697274736572;
        }

        else
        {
          v66 = 0x6972747365726E75;
        }

        v67 = sub_100019C8C(v66, v76, &v89);

        *(v64 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v62, v63, "Finished %s restrictions…", v64, 0xCu);
        sub_100005E08(v65);
      }

      return (v83)(i, v84);
    }

    v56 = *(v53 + 64 + 8 * v59);
    ++v52;
    if (v56)
    {
      v52 = v59;
      goto LABEL_60;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

BOOL sub_100027B74(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  do
  {
    v7 = v4;
    if (!v4)
    {
      break;
    }

    v8 = *v5;
    if (v8 > 3)
    {
      if (*v5 > 5u)
      {
        if (v8 == 6)
        {
          v13 = 0xD000000000000017;
          v14 = 0x8000000100033C30;
          if (v3 <= 3)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v13 = 0x65706F6C65766544;
          v14 = 0xED000065646F4D72;
          if (v3 <= 3)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        if (v8 == 4)
        {
          v13 = 0x5279616C50726941;
        }

        else
        {
          v13 = 0xD000000000000011;
        }

        if (v8 == 4)
        {
          v14 = 0xEF72657669656365;
        }

        else
        {
          v14 = 0x8000000100033C10;
        }

        if (v3 <= 3)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v9 = 0x6C41646572616853;
      if (v8 == 2)
      {
        v9 = 5067348;
      }

      v10 = 0xEC000000736D7562;
      if (v8 == 2)
      {
        v10 = 0xE300000000000000;
      }

      v11 = 0x766572506B6E694CLL;
      if (!*v5)
      {
        v11 = 0x5479616C50726941;
      }

      v12 = 0xEC00000073776569;
      if (!*v5)
      {
        v12 = 0xEB0000000056546FLL;
      }

      if (*v5 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v5 <= 1u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v3 <= 3)
      {
LABEL_47:
        if (v3 > 1)
        {
          if (v3 == 2)
          {
            v19 = 5067348;
          }

          else
          {
            v19 = 0x6C41646572616853;
          }

          if (v3 == 2)
          {
            v20 = 0xE300000000000000;
          }

          else
          {
            v20 = 0xEC000000736D7562;
          }
        }

        else
        {
          v19 = 0x5479616C50726941;
          v20 = 0xEB0000000056546FLL;
          if (v3)
          {
            v19 = 0x766572506B6E694CLL;
            v20 = 0xEC00000073776569;
          }
        }

        goto LABEL_56;
      }
    }

    v15 = 0xD000000000000017;
    if (v3 != 6)
    {
      v15 = 0x65706F6C65766544;
    }

    v16 = 0xED000065646F4D72;
    if (v3 == 6)
    {
      v16 = 0x8000000100033C30;
    }

    v17 = 0x5279616C50726941;
    if (v3 != 4)
    {
      v17 = 0xD000000000000011;
    }

    v18 = 0xEF72657669656365;
    if (v3 != 4)
    {
      v18 = 0x8000000100033C10;
    }

    if (v3 <= 5)
    {
      v19 = v17;
    }

    else
    {
      v19 = v15;
    }

    if (v3 <= 5)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

LABEL_56:
    if (v13 == v19 && v14 == v20)
    {

      return v7 == 0;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v5;
    v4 = v7 - 1;
  }

  while ((v6 & 1) == 0);
  return v7 == 0;
}

id sub_100027E54()
{
  v2 = v0;
  v3 = sub_100003BC8(&unk_100042310, &unk_100032370);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 32) & 1) == 0)
  {
    v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v7;
    v37 = v1;
    swift_beginAccess();
    v36 = v0;
    v12 = *(v0 + 24);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    while (v15)
    {
      v18 = v17;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(*(v12 + 56) + ((v18 << 9) | (8 * v19)));
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);

      v22(v39, v23);

      sub_10000427C(v39, v38);
      swift_beginAccess();
      sub_10002BCCC(v38, v20 + 80);
      swift_endAccess();
      *(v20 + 112) = 0;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        v2 = v36;
        v11 = v34;
        v7 = v35;
        goto LABEL_13;
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    sub_100005E54(v6, &unk_100042310, &unk_100032370);
    __break(1u);
  }

LABEL_13:
  sub_1000288A4();
  v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_10002BD3C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_18;
  }

  URL.appendingPathComponent(_:)();
  v25 = *(v8 + 8);
  v25(v6, v7);
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v25(v11, v7);
  *&v39[0] = 0;
  v29 = [(objc_class *)v24.super.isa writeToURL:v28 error:v39];

  v30 = *&v39[0];
  if (v29)
  {
    *(v2 + 32) = 1;
    return v30;
  }

  else
  {
    v32 = *&v39[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

id sub_100028210()
{
  v1 = v0;
  v2 = sub_100003BC8(&unk_100042310, &unk_100032370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  sub_10002BD3C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100005E54(v5, &unk_100042310, &unk_100032370);
    __break(1u);
  }

  URL.appendingPathComponent(_:)();
  v12 = *(v7 + 8);
  v12(v5, v6);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v12(v10, v6);
  v20 = 0;
  v16 = [v11 removeItemAtURL:v15 error:&v20];

  v17 = v20;
  if (v16)
  {
    *(v1 + 32) = 0;
    return v17;
  }

  else
  {
    v19 = v20;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

id sub_100028470()
{
  v40 = type metadata accessor for Logger();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v40);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v42 = v0;
  v5 = *(v0 + 24);

  v7 = sub_10002A820(v6);
  v43 = v1;

  v10 = 0;
  v11 = 0;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = (v2 + 8);
  v36 = 0x8000000100033C10;
  v37 = 0x8000000100033C30;
  *&v9 = 136315138;
  v38 = v9;
  while (1)
  {
    v16 = v11;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = v17 | (v11 << 6);
    v19 = *(*(v7 + 48) + v18);
    v20 = *(*(v7 + 56) + 8 * v18);

    if (sub_10002D178())
    {
      *(v20 + 112) = 1;
      v21 = v41;
      static Logger.daemonLogger.getter();
      v22 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v35))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v44 = v24;
        v33 = v23;
        v34 = v22;
        *v23 = v38;
        v32 = v24;
        if (v19 > 3)
        {
          if (v19 > 5)
          {
            if (v19 == 6)
            {
              v25 = 0xD000000000000017;
              v26 = v37;
            }

            else
            {
              v25 = 0x65706F6C65766544;
              v26 = 0xED000065646F4D72;
            }
          }

          else if (v19 == 4)
          {
            v25 = 0x5279616C50726941;
            v26 = 0xEF72657669656365;
          }

          else
          {
            v25 = 0xD000000000000011;
            v26 = v36;
          }
        }

        else if (v19 > 1)
        {
          if (v19 == 2)
          {
            v26 = 0xE300000000000000;
            v25 = 5067348;
          }

          else
          {
            v25 = 0x6C41646572616853;
            v26 = 0xEC000000736D7562;
          }
        }

        else if (v19)
        {
          v25 = 0x766572506B6E694CLL;
          v26 = 0xEC00000073776569;
        }

        else
        {
          v25 = 0x5479616C50726941;
          v26 = 0xEB0000000056546FLL;
        }

        v27 = v35;
        v28 = sub_100019C8C(v25, v26, &v44);

        v29 = v33;
        *(v33 + 1) = v28;
        v30 = v27;
        v31 = v34;
        _os_log_impl(&_mh_execute_header, v34, v30, "Value of restriction changed: %s", v29, 0xCu);
        sub_100005E08(v32);

        result = (*v39)(v41, v40);
      }

      else
      {

        result = (*v39)(v21, v40);
      }

      v10 = 1;
    }

    else
    {
    }
  }

  while (1)
  {
    v11 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v15)
    {
      break;
    }

    v14 = *(v7 + 64 + 8 * v11);
    ++v16;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  if (v10)
  {
    return sub_100027E54();
  }

  return result;
}

uint64_t sub_1000288A4()
{
  sub_100003BC8(&qword_100042B00, &qword_100032348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100031EA0;
  *(inited + 32) = 0x6E6F6973726556;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = &type metadata for Int;
  strcpy((inited + 80), "Restrictions");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  swift_beginAccess();
  v2 = *(v0 + 24);

  v3 = sub_10000428C(&_swiftEmptyArrayStorage);
  v45 = inited;
  *(inited + 120) = sub_100003BC8(&qword_100042B08, &unk_100032350);
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v47 = v2 + 64;
  v48 = v2;
  v46 = v8;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = *(*(v2 + 48) + v13);
    if (v14 > 3)
    {
      if (*(*(v2 + 48) + v13) > 5u)
      {
        if (v14 == 6)
        {
          v49 = 0xD000000000000017;
          v15 = 0x8000000100033C30;
        }

        else
        {
          v49 = 0x65706F6C65766544;
          v15 = 0xED000065646F4D72;
        }
      }

      else if (v14 == 4)
      {
        v49 = 0x5279616C50726941;
        v15 = 0xEF72657669656365;
      }

      else
      {
        v49 = 0xD000000000000011;
        v15 = 0x8000000100033C10;
      }
    }

    else if (*(*(v2 + 48) + v13) > 1u)
    {
      if (v14 == 2)
      {
        v15 = 0xE300000000000000;
        v49 = 5067348;
      }

      else
      {
        v49 = 0x6C41646572616853;
        v15 = 0xEC000000736D7562;
      }
    }

    else if (*(*(v2 + 48) + v13))
    {
      v49 = 0x766572506B6E694CLL;
      v15 = 0xEC00000073776569;
    }

    else
    {
      v49 = 0x5479616C50726941;
      v15 = 0xEB0000000056546FLL;
    }

    v16 = *(*(v2 + 56) + 8 * v13);
    v54[0] = 0x65756C6156;
    v54[1] = 0xE500000000000000;
    swift_beginAccess();
    sub_1000045C4(v16 + 80, &v50, &qword_100042500, &qword_100031EB0);
    if (*(&v51[0] + 1))
    {
      sub_10000427C(&v50, v55);
    }

    else
    {
      swift_beginAccess();
      sub_1000045C4(v16 + 48, &v52, &qword_100042500, &qword_100031EB0);
      if (!v53)
      {
        goto LABEL_50;
      }

      sub_10000427C(&v52, v55);
      v17 = *(&v51[0] + 1);

      if (v17)
      {
        sub_100005E54(&v50, &qword_100042500, &qword_100031EB0);
      }
    }

    v56[0] = 0x6465676E616843;
    v56[1] = 0xE700000000000000;
    v18 = *(v16 + 112);
    v58 = &type metadata for Bool;
    v57 = v18;
    sub_100003BC8(&qword_100041DF0, &qword_100031500);
    v19 = static _DictionaryStorage.allocate(capacity:)();

    sub_1000045C4(v54, &v50, &qword_100041DF8, &qword_100031508);
    v20 = v50;
    v21 = sub_10001A408(v50, *(&v50 + 1));
    if (v22)
    {
      goto LABEL_46;
    }

    *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
    *(v19[6] + 16 * v21) = v20;
    sub_10000427C(v51, (v19[7] + 32 * v21));
    v23 = v19[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_47;
    }

    v19[2] = v25;
    sub_1000045C4(v56, &v50, &qword_100041DF8, &qword_100031508);
    v26 = v50;
    v27 = sub_10001A408(v50, *(&v50 + 1));
    if (v28)
    {
      goto LABEL_46;
    }

    *(v19 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v27;
    *(v19[6] + 16 * v27) = v26;
    sub_10000427C(v51, (v19[7] + 32 * v27));
    v29 = v19[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_47;
    }

    v19[2] = v30;

    sub_100003BC8(&qword_100041DF8, &qword_100031508);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v3;
    v33 = sub_10001A408(v49, v15);
    v34 = v3[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_48;
    }

    v37 = v32;
    if (v3[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10002A144();
      }
    }

    else
    {
      sub_100029668(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_10001A408(v49, v15);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_51;
      }

      v33 = v38;
    }

    v7 &= v7 - 1;
    v3 = v50;
    if (v37)
    {
      v10 = *(v50 + 56);
      v11 = *(v10 + 8 * v33);
      *(v10 + 8 * v33) = v19;
    }

    else
    {
      *(v50 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v40 = (v3[6] + 16 * v33);
      *v40 = v49;
      v40[1] = v15;
      *(v3[7] + 8 * v33) = v19;
      v41 = v3[2];
      v24 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v24)
      {
        goto LABEL_49;
      }

      v3[2] = v42;
    }

    v9 = v12;
    v4 = v47;
    v2 = v48;
    v8 = v46;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      *(v45 + 96) = v3;
      v43 = sub_100004390(v45);
      swift_setDeallocating();
      sub_100003BC8(&qword_100041DF8, &qword_100031508);
      swift_arrayDestroy();
      return v43;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t RestrictionsManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t RestrictionsManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100028FF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003BC8(&qword_100041E78, &qword_100031528);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_10000427C(v22, v34);
      }

      else
      {
        sub_100005DA4(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_10000626C();
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_10000427C(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000292A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003BC8(&qword_100041E88, &qword_100031538);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
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
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100029668(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003BC8(&qword_100041DE8, &unk_100032360);
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

uint64_t sub_100029910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003BC8(&qword_100041DF0, &qword_100031500);
  v36 = a2;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000427C(v25, v37);
      }

      else
      {
        sub_100005DA4(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000427C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100029BC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003BC8(&qword_100042B18, &qword_100032388);
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
      v25 = *(*(v5 + 56) + 4 * v21);
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
      *(*(v8 + 56) + 4 * v16) = v25;
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

id sub_100029E68()
{
  v1 = v0;
  sub_100003BC8(&qword_100041E78, &qword_100031528);
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
        sub_100005DA4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000427C(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_100029FE8()
{
  v1 = v0;
  sub_100003BC8(&qword_100041E88, &qword_100031538);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_10002A144()
{
  v1 = v0;
  sub_100003BC8(&qword_100041DE8, &unk_100032360);
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

void *sub_10002A2B4()
{
  v1 = v0;
  sub_100003BC8(&qword_100041DF0, &qword_100031500);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100005DA4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000427C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10002A458()
{
  v1 = v0;
  sub_100003BC8(&qword_100042B18, &qword_100032388);
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
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

uint64_t sub_10002A5C0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = v4;
    v25 = v1;
    v23[1] = v23;
    __chkstk_darwin(a1);
    v6 = v23 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v26 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v4 = v9 & *(v2 + 64);
    v10 = (v8 + 63) >> 6;
    while (v4)
    {
      v11 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_12:
      v14 = v11 | (v7 << 6);
      v15 = *(*(v2 + 56) + 8 * v14);
      if ((*(v15 + 112) & 1) == 0)
      {
        if (*(v15 + 114) != 1 || (v16 = *(*(v2 + 56) + 8 * v14), , v17 = sub_10002D178(), , (v17 & 1) == 0))
        {
          *&v6[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
          if (__OFADD__(v26++, 1))
          {
            __break(1u);
            return sub_10002AD98(v6, v24, v26, v2);
          }
        }
      }
    }

    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v7 >= v10)
      {
        return sub_10002AD98(v6, v24, v26, v2);
      }

      v13 = *(v2 + 64 + 8 * v7);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v4 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  sub_10002AA34(v20, v4, v2);
  v22 = v21;

  return v22;
}

uint64_t sub_10002A820(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    __chkstk_darwin(a1);
    v5 = &v21 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_12:
      v16 = *(*(v1 + 56) + 8 * v13);
      if ((*(v16 + 112) & 1) == 0 && *(v16 + 114) == 1)
      {
        *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_10002AD98(v5, v3, v6, v1);
        }
      }
    }

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
        return sub_10002AD98(v5, v3, v6, v1);
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_10002AC5C(v19, v3, v1);

  return v20;
}

void sub_10002AA34(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v19 = a1;
    v20 = 0;
    v6 = 0;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = v11 | (v6 << 6);
      v15 = *(*(a3 + 56) + 8 * v14);
      if ((*(v15 + 112) & 1) == 0)
      {
        if (*(v15 + 114) != 1 || (v16 = *(*(a3 + 56) + 8 * v14), , v17 = sub_10002D178(), , (v17 & 1) == 0))
        {
          *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          if (__OFADD__(v20++, 1))
          {
            __break(1u);
LABEL_20:
            sub_10002AD98(v19, a2, v20, a3);

            return;
          }
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_20;
      }

      v13 = *(a3 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_10002ABC0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_10002B440(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

char *sub_10002AC5C(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_14:
      v16 = *(*(a3 + 56) + 8 * v13);
      if ((*(v16 + 112) & 1) == 0 && *(v16 + 114) == 1)
      {
        *&result[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_19:
          v18 = sub_10002AD98(result, a2, v6, a3);

          return v18;
        }
      }
    }

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
        goto LABEL_19;
      }

      v15 = *(a3 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002AD98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003BC8(&qword_100041E88, &qword_100031538);
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + v16);
    v19 = *(v17 + 8 * v16);
    v20 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();

    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + v24) = v18;
    *(*(v9 + 56) + 8 * v24) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v10 = v31;
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
      v31 = (v15 - 1) & v15;
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

uint64_t sub_10002B110()
{
  v0 = sub_100003BC8(&unk_100042310, &unk_100032370);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BD3C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100005E54(v3, &unk_100042310, &unk_100032370);
    __break(1u);
  }

  URL.appendingPathComponent(_:)();
  v9 = *(v5 + 8);
  v9(v3, v4);
  v10 = Data.init(contentsOf:options:)();
  v12 = v11;
  v9(v8, v4);
  v13 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22[0] = 0;
  v15 = [v13 propertyListWithData:isa options:0 format:0 error:v22];

  if (v15)
  {
    v16 = v22[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100003BC8(&qword_100042B10, &qword_100032380);
    if (swift_dynamicCast())
    {
      v17 = v21[1];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = v22[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v17 = 0;
  }

  type metadata accessor for RestrictionsManager();
  v19 = swift_allocObject();
  sub_100025478(v17);
  sub_100023358(v10, v12);
  return v19;
}

uint64_t sub_10002B440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v21 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 56);
    v25 = *(*(a3 + 48) + v15);
    v17 = *(v16 + 8 * v15);

    v18 = sub_100027B74(&v25, v24, a4);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_10002AD98(v21, a2, v22, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_10002AD98(v21, a2, v22, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B5A4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_10002ABC0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_10002B440(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10002B764(int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v21 - v9;
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  if ((sub_10000B098() ^ a1))
  {
    sub_10000B238(a1 & 1);
    if ((sub_10000B098() ^ a1))
    {
      static Logger.daemonLogger.getter();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v13, v14))
      {
        v12 = v7;
        goto LABEL_10;
      }

      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to set MC value: lockdownModeEnabled=%{BOOL}d", v15, 8u);
      v12 = v7;
    }

    else
    {
      static Logger.daemonLogger.getter();
      v13 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v13, v18))
      {
        v12 = v10;
        goto LABEL_10;
      }

      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v13, v18, "Successfully set MC value: lockdownModeEnabled=%{BOOL}d", v19, 8u);
      v12 = v10;
    }

    goto LABEL_9;
  }

  static Logger.daemonLogger.getter();
  v13 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v13, v16, "Unchanged MC value: lockdownModeEnabled=%{BOOL}d", v17, 8u);
LABEL_9:
  }

LABEL_10:

  return (*(v3 + 8))(v12, v2);
}

unint64_t _s13lockdownmoded19RestrictionsManagerC14RestrictionKeyO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10003D178, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002BA80()
{
  result = qword_1000429B8;
  if (!qword_1000429B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000429B8);
  }

  return result;
}

unint64_t sub_10002BAD8()
{
  result = qword_1000429C0;
  if (!qword_1000429C0)
  {
    sub_100003C74(&qword_1000429C8, &qword_1000322C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000429C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionsManager.RestrictionKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RestrictionsManager.RestrictionKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002BCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&qword_100042500, &qword_100031EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BD3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v95 = *(v2 - 8);
  v96 = v2;
  v3 = *(v95 + 64);
  v4 = __chkstk_darwin(v2);
  v90 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v8 = &v87 - v7;
  v9 = __chkstk_darwin(v6);
  v91 = &v87 - v10;
  __chkstk_darwin(v9);
  v88 = &v87 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v89 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v87 - v18;
  __chkstk_darwin(v17);
  v21 = &v87 - v20;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = [v23 URLsForDirectory:5 inDomains:1];

  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v25 + 16))
  {
    v92 = v12;
    v93 = a1;
    v26 = *(v13 + 16);
    v26(v21, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

    v94 = v21;
    URL.appendingPathComponent(_:)();
    v97 = 0;
    v27 = [v22 defaultManager];
    URL.path(percentEncoded:)(0);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v27 fileExistsAtPath:v28 isDirectory:&v97];

    if (v29)
    {
      v30 = v19;
      v31 = v94;
      if (v97)
      {
LABEL_8:
        v44 = v92;
        (*(v13 + 8))(v31, v92);
        v45 = v93;
        v46 = v30;
LABEL_14:
        (*(v13 + 32))(v45, v46, v44);
        return (*(v13 + 56))(v45, 0, 1, v44);
      }

      v32 = v88;
      static Logger.daemonLogger.getter();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "LockdownMode exists but as a file instead of a directory. Replacing with a directory…", v35, 2u);
        v31 = v94;
      }

      v36 = v96;
      v95 = *(v95 + 8);
      (v95)(v32, v96);
      v37 = [v22 defaultManager];
      v38 = v30;
      URL._bridgeToObjectiveC()(v39);
      v41 = v40;
      v98 = 0;
      v42 = [v37 removeItemAtURL:v40 error:&v98];

      if (v42)
      {
        v43 = v98;
        goto LABEL_8;
      }

      v78 = v98;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.daemonLogger.getter();
      swift_errorRetain();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();

      v81 = os_log_type_enabled(v79, v80);
      v47 = v92;
      if (v81)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138739971;
        swift_errorRetain();
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 4) = v84;
        *v83 = v84;
        _os_log_impl(&_mh_execute_header, v79, v80, "Could not remove LockdownMode file: %{sensitive}@", v82, 0xCu);
        sub_100005E54(v83, &qword_100042158, qword_100031C60);
        v31 = v94;

        v38 = v30;
      }

      (v95)(v90, v36);
      v85 = *(v13 + 8);
      v85(v38, v47);
      v85(v31, v47);
      v51 = *(v13 + 56);
      v52 = v93;
    }

    else
    {
      v90 = v26;
      v53 = [v22 defaultManager];
      URL._bridgeToObjectiveC()(v54);
      v56 = v55;
      sub_100003BC8(&qword_100042B20, &unk_1000323B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100032390;
      *(inited + 32) = NSFileProtectionKey;
      type metadata accessor for FileProtectionType(0);
      *(inited + 64) = v58;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v59 = NSFileProtectionKey;
      v60 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      sub_10000403C(inited);
      swift_setDeallocating();
      sub_100005E54(inited + 32, &qword_100041E08, &qword_100031518);
      type metadata accessor for FileAttributeKey(0);
      sub_10002C79C();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v98 = 0;
      v62 = [v53 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:isa error:&v98];

      if (v62)
      {
        v63 = *(v13 + 8);
        v64 = v98;
        v44 = v92;
        v63(v94, v92);
        v45 = v93;
        v46 = v19;
        goto LABEL_14;
      }

      v66 = v98;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v67 = v91;
      static Logger.daemonLogger.getter();
      v68 = v89;
      v47 = v92;
      v90(v89, v19, v92);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v98 = v72;
        *v71 = 136642819;
        v73 = URL.path.getter();
        v75 = v74;
        v90 = v19;
        v76 = *(v13 + 8);
        v76(v68, v47);
        v77 = sub_100019C8C(v73, v75, &v98);

        *(v71 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v69, v70, "Could not create directory at %{sensitive}s", v71, 0xCu);
        sub_100005E08(v72);

        (*(v95 + 8))(v91, v96);
        v76(v90, v47);
        v76(v94, v47);
      }

      else
      {

        v86 = *(v13 + 8);
        v86(v68, v47);
        (*(v95 + 8))(v67, v96);
        v86(v19, v47);
        v86(v94, v47);
      }

      v52 = v93;
      v51 = *(v13 + 56);
    }
  }

  else
  {
    v47 = v12;

    static Logger.daemonLogger.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Could not get Library path for user", v50, 2u);
    }

    (*(v95 + 8))(v8, v96);
    v51 = *(v13 + 56);
    v52 = a1;
  }

  return v51(v52, 1, 1, v47);
}

void *sub_10002C760()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  if (result)
  {
    result = dlsym(result, "BYSetupAssistantNeedsToRun");
  }

  off_1000441F0 = result;
  return result;
}

unint64_t sub_10002C79C()
{
  result = qword_100041F60;
  if (!qword_100041F60)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041F60);
  }

  return result;
}

void sub_10002C7F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100019C8C(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "reboot called (reason: %s)", v11, 0xCu);
    sub_100005E08(v12);
  }

  (*(v5 + 8))(v8, v4);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v18 = 0x6E776F646B636F4CLL;
  v19 = 0xEF203A65646F4D20;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  v14 = objc_allocWithZone(FBSShutdownOptions);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithReason:v15];

  [v16 setSource:1];
  [v16 setRebootType:1];
  v17 = [objc_opt_self() sharedService];
  [v17 shutdownWithOptions:v16];
}

uint64_t sub_10002CAB8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = CFPreferencesGetAppBooleanValue(v3, v4, 0);

  if (AppBooleanValue)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_10002CBA4()
{
  v0 = String._bridgeToObjectiveC()();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  CFPreferencesSetAppValue(v0, isa, v2);

  v3 = String._bridgeToObjectiveC()();
  v4 = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  CFPreferencesSetAppValue(v3, v4, v5);
}

void sub_10002CCE4(char a1, int a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = a2;
    v14 = v12;
    v30 = v12;
    *v11 = 67240450;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2082;
    v29[1] = v13;
    v15 = v13;
    v16 = 0xE500000000000000;
    v17 = 0xE800000000000000;
    v18 = 0x73676E6974746573;
    v19 = 0x6464754274736F70;
    v20 = 0xE900000000000079;
    if (v15 != 3)
    {
      v19 = 0xD000000000000016;
      v20 = 0x8000000100034C80;
    }

    if (v15 != 2)
    {
      v18 = v19;
      v17 = v20;
    }

    v21 = 0x7964647562;
    if (v15)
    {
      v21 = 0x6E496E676973;
      v16 = 0xE600000000000000;
    }

    if (v15 <= 1)
    {
      v22 = v21;
    }

    else
    {
      v22 = v18;
    }

    if (v15 <= 1)
    {
      v23 = v16;
    }

    else
    {
      v23 = v17;
    }

    v24 = sub_100019C8C(v22, v23, &v30);

    *(v11 + 10) = v24;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending status event (enabled: %{BOOL,public}d, source: %{public}s)", v11, 0x12u);
    sub_100005E08(v14);

    (*(v5 + 8))(v8, v4);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v25 = String._bridgeToObjectiveC()();
  sub_100003BC8(&qword_100042C90, "te");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100031EA0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0x656372756F73;
  *(inited + 64) = 0xE600000000000000;
  v27 = String._bridgeToObjectiveC()();

  *(inited + 72) = v27;
  sub_1000044C0(inited);
  swift_setDeallocating();
  sub_100003BC8(&qword_100042C98, &unk_100032400);
  swift_arrayDestroy();
  sub_10002D108();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

unint64_t sub_10002D108()
{
  result = qword_100042CA0;
  if (!qword_100042CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100042CA0);
  }

  return result;
}

uint64_t sub_10002D178()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  sub_10000B004(v1 + 48, v28);
  if (v29)
  {
    if (swift_dynamicCast())
    {
      sub_10000B004(v1 + 48, v28);
      if (v29)
      {
        if (swift_dynamicCast())
        {
          v7 = v27;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        sub_10002D53C(v28);
        v7 = 2;
      }

      v15 = *(v1 + 16);
      v14 = *(v1 + 24);

      v15(v28, v16);

      v17 = swift_dynamicCast();
      v18 = (v7 != 2) | v17;
      if (v7 != 2 && (v17 & 1) != 0)
      {
        v18 = v27 ^ v7;
      }

      v19 = v18 & 1;
LABEL_31:
      *(v1 + 113) = v19;
      return *(v1 + 113);
    }
  }

  else
  {
    sub_10002D53C(v28);
  }

  sub_10000B004(v1 + 48, v28);
  if (v29)
  {
    if (swift_dynamicCast())
    {
      sub_10000B004(v1 + 48, v28);
      if (v29)
      {
        v8 = swift_dynamicCast();
        if (v8)
        {
          v9 = v27;
        }

        else
        {
          v9 = 0;
        }

        v10 = v8 ^ 1;
      }

      else
      {
        sub_10002D53C(v28);
        v9 = 0;
        v10 = 1;
      }

      v21 = *(v1 + 16);
      v20 = *(v1 + 24);

      v21(v28, v22);

      v23 = swift_dynamicCast();
      v24 = v27;
      if (!v23)
      {
        v24 = 0;
      }

      v25 = v9 == v24;
      v19 = v23 ^ 1;
      if (!v25)
      {
        v19 = 1;
      }

      if (v10)
      {
        v19 = v23;
      }

      goto LABEL_31;
    }
  }

  else
  {
    sub_10002D53C(v28);
  }

  static Logger.daemonLogger.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Could not get currentChanged. Unhandled type", v13, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return *(v1 + 113);
}

uint64_t sub_10002D4C0()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_10002D53C((v0 + 6));
  sub_10002D53C((v0 + 10));
  v3 = v0[16];

  return swift_deallocClassInstance();
}

uint64_t sub_10002D53C(uint64_t a1)
{
  v2 = sub_100003BC8(&qword_100042500, &qword_100031EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10002D5A4()
{
  v1 = type metadata accessor for Logger();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  *&v0[OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService] = 0;
  v26 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_dispatchQueue;
  sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10002E8AC();
  sub_100003BC8(&qword_100041D10, &qword_1000314B0);
  sub_100003C10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  v12 = v28;
  *&v0[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = &v0[OBJC_IVAR____TtC13lockdownmoded10IDSManager_delegate];
  v14 = type metadata accessor for IDSManager();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v31.receiver = v0;
  v31.super_class = v14;
  v15 = objc_msgSendSuper2(&v31, "init");
  static Logger.daemonLogger.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Initializing IDSManager…", v18, 2u);
  }

  (*(v29 + 8))(v12, v30);
  v19 = objc_allocWithZone(IDSService);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithService:v20];

  v22 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService;
  v23 = *&v15[OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService];
  *&v15[OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService] = v21;

  v24 = *&v15[v22];
  if (v24)
  {
    [v24 addDelegate:v15 queue:*&v15[OBJC_IVAR____TtC13lockdownmoded10IDSManager_dispatchQueue]];
  }

  return v15;
}

void *sub_10002D9C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService);
  if (v1)
  {
    v2 = [v1 devices];
    if (v2)
    {
      v3 = v2;
      sub_10000A220(0, &qword_100043018, IDSDevice_ptr);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
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
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ([v7 isDefaultPairedDevice] && (objc_msgSend(v8, "isActive") & 1) != 0)
          {

            return v8;
          }

          ++v6;
          if (v9 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }
  }

  return 0;
}

void sub_10002DB30()
{
  v1 = *(v0 + OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService);
  if (v1)
  {
    v2 = v1;
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    sub_100003BC8(&qword_100042FF8, &qword_1000324B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100032390;
    v5 = IDSCopyIDForDevice();
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v17[1] = v8;
    sub_100003BC8(&qword_100043000, &qword_1000324C0);
    sub_10002E830();
    AnyHashable.init<A>(_:)();
    sub_10002E200(inited);
    swift_setDeallocating();
    sub_10001ECCC(inited + 32);
    isa = Set._bridgeToObjectiveC()().super.isa;

    sub_100003F00(&_swiftEmptyArrayStorage);
    v10 = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = 0;
    v17[0] = 0;
    v11 = [v2 sendMessage:v3.super.isa toDestinations:isa priority:300 options:v10 identifier:v17 error:&v16];

    if (v11)
    {
      v12 = v16;
    }

    else
    {
      v13 = v17[0];
      v14 = v16;
      v15 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

id sub_10002DD68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002DF10(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100003BC8(&qword_100043020, &qword_1000324D8);
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
        sub_10000A220(0, &qword_100042378, UNNotificationCategory_ptr);
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
        sub_10000A220(0, &qword_100042378, UNNotificationCategory_ptr);
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

Swift::Int sub_10002E200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100043010, &unk_1000324C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_10002245C(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_10002245C(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_10001ECCC(v18);
        if (v11)
        {
          sub_10001ECCC(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t *sub_10002E360(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - v13;
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  static Logger.daemonLogger.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Handling incoming message…", v19, 2u);
  }

  v20 = *(v7 + 8);
  v20(v16, v6);
  v21 = *(v4 + OBJC_IVAR____TtC13lockdownmoded10IDSManager_idsService);
  if (!v21 || ((v22 = v21, !a3) ? (v23 = 0) : (v23 = String._bridgeToObjectiveC()()), v24 = [v21 deviceForFromID:v23], v21, v23, !v24))
  {
    static Logger.daemonLogger.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v20;
      v31 = swift_slowAlloc();
      result = swift_slowAlloc();
      v42[0] = result;
      *v31 = 136446210;
      if (a3)
      {
        v32 = result;
        *(v31 + 4) = sub_100019C8C(v39, a3, v42);
        _os_log_impl(&_mh_execute_header, v28, v29, "Incoming message is from an unknown device: %{public}s", v31, 0xCu);
        sub_100005E08(v32);

        return v30(v14, v6);
      }

      __break(1u);
      goto LABEL_20;
    }

    v33 = v14;
    return (v20)(v33, v6);
  }

  v25 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_delegate;
  swift_beginAccess();
  sub_10002E758(v4 + v25, &v40);
  if (!v41)
  {
    sub_10002E7C8(&v40);
    static Logger.daemonLogger.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Incoming message is not handled because delegate is not set", v36, 2u);
    }

    v33 = v11;
    return (v20)(v33, v6);
  }

  sub_10000A19C(&v40, v42);
  result = sub_100005EB4(v42, v42[3]);
  if (v38)
  {
    v27 = *result;
    sub_100018D48(v38);
    return sub_100005E08(v42);
  }

LABEL_20:
  __break(1u);
  return result;
}