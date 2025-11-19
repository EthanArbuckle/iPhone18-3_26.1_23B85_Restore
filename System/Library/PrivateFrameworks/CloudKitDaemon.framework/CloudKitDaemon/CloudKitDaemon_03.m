void sub_2250D2C7C()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken;
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedNotifier];
    [v5 unregisterObserverForAccountChangeNotification_];

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_2250D2D2C()
{
  v1 = v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID;
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID);
  if (v2)
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    v5 = objc_opt_self();
    sub_2250D4154(v2);
    v6 = v2;
    v7 = [v5 sharedNotifier];
    v8 = MEMORY[0x22AA62D80](v4, v3);

    [v7 unregisterObserver:v6 forAuthTokenRenewalInProgressNotificationsForAccountID:v8];

    v9 = *v1;
    v10 = *(v1 + 8);
    v11 = *(v1 + 16);
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    *v1 = 0;

    sub_2250D4194(v9);
  }
}

uint64_t sub_2250D2E28()
{
  v1 = (v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken);
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken + 8);
  if (v2)
  {
    v3 = *v1;
    sub_225073BAC((v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));

    sub_2250D698C(v3, v2);

    v4 = v1[1];
    *v1 = 0;
    v1[1] = 0;
  }

  return result;
}

uint64_t sub_2250D2EBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) == 4 && *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state) == 2)
  {
    CCLog.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22506F000, v18, v19, "Ignoring account change received in state .acquired", v20, 2u);
      MEMORY[0x22AA65DF0](v20, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    CCLog.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22506F000, v12, v13, "Account change received, restarting account acquisition", v14, 2u);
      MEMORY[0x22AA65DF0](v14, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    sub_2250D2D2C();
    v15 = *v10;
    *v10 = 0;
    v16 = *(v10 + 8);
    *(v10 + 8) = 4;
    sub_2250D4140(v15, v16);
    return sub_2250CC8A8();
  }
}

void sub_2250D30F4(uint64_t a1)
{
  v3 = type metadata accessor for ResolvedBundleID();
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v91 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v91 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v95 = v17;
  v96 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v91 - v23;
  MEMORY[0x28223BE20](v22);
  v28 = &v91 - v27;
  v97 = v1;
  v29 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  v30 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state);
  v31 = *(v29 + 8);
  switch(v31)
  {
    case 1u:
      v49 = v26;
      sub_225073BAC((v97 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v97 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));
      v50 = sub_2250D6B78(a1);
      if (v50 == 2 || (v50 & 1) != 0)
      {
        CCLog.getter();
        v51 = v94;
        v52 = a1;
        v53 = v93;
        (*(v94 + 16))(v14, v52, v93);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v98 = v57;
          *v56 = 136315138;
          sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998]);
          v58 = dispatch thunk of CustomStringConvertible.description.getter();
          v60 = v59;
          (*(v51 + 8))(v14, v53);
          v61 = sub_225095AFC(v58, v60, &v98);

          *(v56 + 4) = v61;
          _os_log_impl(&dword_22506F000, v54, v55, "TCC access has been enabled for %s", v56, 0xCu);
          sub_225073BF0(v57);
          MEMORY[0x22AA65DF0](v57, -1, -1);
          MEMORY[0x22AA65DF0](v56, -1, -1);
        }

        else
        {

          (*(v51 + 8))(v14, v53);
        }

        (*(v96 + 8))(v24, v95);
        sub_2250CFDF4();
      }

      else
      {
        v77 = v49;
        CCLog.getter();
        v78 = v93;
        v79 = v94;
        (*(v94 + 16))(v11, a1, v93);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v98 = v83;
          *v82 = 136315138;
          sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998]);
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v85 = v78;
          v87 = v86;
          (*(v79 + 8))(v11, v85);
          v88 = sub_225095AFC(v84, v87, &v98);

          *(v82 + 4) = v88;
          _os_log_impl(&dword_22506F000, v80, v81, "TCC is still rejecting access for %s", v82, 0xCu);
          sub_225073BF0(v83);
          MEMORY[0x22AA65DF0](v83, -1, -1);
          MEMORY[0x22AA65DF0](v82, -1, -1);
        }

        else
        {

          (*(v79 + 8))(v11, v78);
        }

        (*(v96 + 8))(v77, v95);
      }

      break;
    case 2u:
    case 3u:
      v47 = v25;
      sub_225073BAC((v97 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v97 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));
      sub_2250D412C(v30, v31);
      v48 = sub_2250D6B78(a1);
      if (v48 == 2 || (v48 & 1) != 0)
      {

        sub_2250D4140(v30, v31);
      }

      else
      {
        v92 = v30;
        CCLog.getter();
        v62 = v93;
        v63 = v94;
        (*(v94 + 16))(v8, a1, v93);

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v100 = v67;
          *v66 = 136315394;
          sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998]);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v69 = v62;
          v71 = v70;
          (*(v63 + 8))(v8, v69);
          v72 = sub_225095AFC(v68, v71, &v100);

          *(v66 + 4) = v72;
          *(v66 + 12) = 2080;
          v73 = *(v29 + 8);
          v98 = *v29;
          v99 = v73;
          sub_2250D412C(v98, v73);
          v74 = String.init<A>(describing:)();
          v76 = sub_225095AFC(v74, v75, &v100);

          *(v66 + 14) = v76;
          _os_log_impl(&dword_22506F000, v64, v65, "TCC rejected access for %s while in state %s, re-attempting authorization UI check", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v67, -1, -1);
          MEMORY[0x22AA65DF0](v66, -1, -1);
        }

        else
        {

          (*(v63 + 8))(v8, v62);
        }

        (*(v96 + 8))(v47, v95);
        v89 = *v29;
        *v29 = v92;
        v90 = *(v29 + 8);
        *(v29 + 8) = 0;
        sub_2250D4140(v89, v90);
        sub_2250CD9FC();
      }

      break;
    default:
      CCLog.getter();
      v32 = v93;
      v33 = v94;
      (*(v94 + 16))(v16, a1, v93);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v100 = v37;
        *v36 = 136315394;
        sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998]);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v32;
        v41 = v40;
        (*(v33 + 8))(v16, v39);
        v42 = sub_225095AFC(v38, v41, &v100);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        v43 = *(v29 + 8);
        v98 = *v29;
        v99 = v43;
        sub_2250D412C(v98, v43);
        v44 = String.init<A>(describing:)();
        v46 = sub_225095AFC(v44, v45, &v100);

        *(v36 + 14) = v46;
        _os_log_impl(&dword_22506F000, v34, v35, "Ignoring TCC change notification for %s in state %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v37, -1, -1);
        MEMORY[0x22AA65DF0](v36, -1, -1);
      }

      else
      {

        (*(v33 + 8))(v16, v32);
      }

      (*(v96 + 8))(v28, v95);
      break;
  }
}

void sub_2250D3B18()
{
  if (!qword_280D534B8)
  {
    sub_2250C7B40(&unk_27D718FE0, &qword_225444D60);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_280D534B8);
    }
  }
}

void sub_2250D3B7C()
{
  if (!qword_280D53628)
  {
    type metadata accessor for ResolvedBundleID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_280D53628);
    }
  }
}

uint64_t sub_2250D3BD4(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_2250D3BF0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2250D3C04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
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

uint64_t sub_2250D3C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2250D3C88(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

size_t sub_2250D3CF8()
{
  v18 = type metadata accessor for PropertyDescription();
  v1 = *(v18 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v18);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSLogPrivacy();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_225444470;
  v10 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state);
  ObjectType = &_s12AccountCheckC5ActorC5StateON;
  v19 = v10;
  v20 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8);
  sub_2250D412C(v10, v20);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v11 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_sessionConfiguration;
  v12 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v12;
  v13 = sub_225073808(&v19);
  (*(*(v12 - 8) + 16))(v13, v0 + v11, v12);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v14 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_testDeviceReferenceProtocol);
  if (v14)
  {
    ObjectType = swift_getObjectType();
    v19 = v14;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v15 = v17;
    PropertyDescription.init(_:_:privacy:)();
    v9 = sub_2250C7388();
    swift_unknownObjectRelease();
    *(v9 + 16) = 3;
    (*(v2 + 32))(v9 + v8 + 2 * v7, v15, v18);
  }

  return v9;
}

uint64_t sub_2250D4024(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2250D4070()
{
  result = qword_280D53460;
  if (!qword_280D53460)
  {
    sub_2250C7B40(&qword_27D718EE8, &qword_225444840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53460);
  }

  return result;
}

uint64_t sub_2250D40D4(uint64_t a1)
{
  result = sub_2250D4024(&qword_280D53E50, _s12AccountCheckCMa);
  *(a1 + 8) = result;
  return result;
}

id sub_2250D412C(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

void sub_2250D4140(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

void *sub_2250D4154(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_2250D4194(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2250D41D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2250D4224(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2250B0DFC(a2, a3);
  sub_225072BF0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2250D4284()
{
  sub_2250971A4();
  v1 = swift_task_alloc();
  v2 = sub_225075264(v1);
  *v2 = v3;
  v2[1] = sub_2250D4820;
  v4 = sub_225098644();

  return sub_2250D11DC(v4, v5, v6, v0);
}

uint64_t sub_2250D431C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_225075264(v5);
  *v6 = v7;
  v6[1] = sub_2250D4820;
  v8 = sub_225098644();

  return sub_2250D090C(v8, v9, v10, v4, v3);
}

uint64_t sub_2250D43C8()
{
  v1 = *(type metadata accessor for ResolvedBundleID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_2250CF810(v0 + v2, v6, v7, v8);
}

uint64_t sub_2250D4464()
{
  v1 = *(type metadata accessor for ResolvedBundleID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_225075264(v6);
  *v7 = v8;
  v7[1] = sub_2250D4820;
  v9 = sub_225098644();

  return sub_2250CFCC4(v9, v10, v11, v5, v12);
}

uint64_t sub_2250D4548(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_2250D45A0()
{
  sub_2250971A4();
  v1 = swift_task_alloc();
  v2 = sub_225075264(v1);
  *v2 = v3;
  v2[1] = sub_2250D4638;
  v4 = sub_225098644();

  return sub_2250CC77C(v4, v5, v6, v0);
}

uint64_t sub_2250D4638()
{
  sub_225072C10();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_225075274();

  return v2();
}

uint64_t sub_2250D4724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2250D4788()
{
  sub_2250971A4();
  v1 = swift_task_alloc();
  v2 = sub_225075264(v1);
  *v2 = v3;
  v2[1] = sub_2250D4820;
  v4 = sub_225098644();

  return sub_2250CBF28(v4, v5, v6, v0);
}

uint64_t sub_2250D4824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnySessionConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  AnySessionConfiguration.account.getter();
  v13 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v14 = sub_22507C8E8(v12, 1, v13);
  result = sub_2250D4C00(v12);
  if (v14 != 1)
  {
    sub_2250C7F8C(0, &qword_280D53418, 0x277CBC170);
    (*(v5 + 16))(v8, a1, v4);
    v16 = CKAccountOverrideInfo.init(sessionConfiguration:)();
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(CKDAccount) initExplicitCredentialsAccountWithAccountOverrideInfo_];

      return v18;
    }

    v19 = [objc_opt_self() deviceContextForTestDeviceReference_];
    v20 = [v19 testServer];
    if (!v20)
    {
      v18 = [objc_allocWithZone(CKDAccount) initPrimaryAccount];

      return v18;
    }

    v21 = v20;
    v22 = [v19 testDevice];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 daemonAccount];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 email];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = *MEMORY[0x277CBC8A0];
        if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v31)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return 0;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          if ([v21 useLiveServer])
          {
            v34 = [v25 accountOverrideInfo];
            v18 = [objc_allocWithZone(CKDAccount) initExplicitCredentialsAccountWithAccountOverrideInfo_];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            sub_2250C7F8C(0, &qword_280D53450, off_278543938);
            v18 = sub_2250D4C68(v25, v23);

            swift_unknownObjectRelease();
          }

          return v18;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2250D4C00(uint64_t a1)
{
  v2 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2250D4C68(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initMockAccountWithTestAccount:a1 testDevice:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2250D4CCC()
{
  sub_225072C10();
  v0[20] = v1;
  v2 = sub_2250B0DFC(&qword_27D719050, &unk_225445000);
  v0[21] = v2;
  v3 = *(v2 - 8);
  v0[22] = v3;
  v4 = *(v3 + 64) + 15;
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250D4D94, 0, 0);
}

uint64_t sub_2250D4D94()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_2250D4F48;
  swift_continuation_init();
  v1[17] = v8;
  v10 = sub_225073808(v1 + 14);
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v10, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2250D5134;
  v1[13] = &unk_28385AAB8;
  [v9 iCloudAuthTokenWithCompletionHandler_];
  (*(v7 + 8))(v10, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2250D4F48()
{
  sub_225072C10();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_2250D50C0;
  }

  else
  {
    v3 = sub_2250D5054;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2250D5054()
{
  sub_225072C10();
  v1 = v0[23];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2250D50C0()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

void sub_2250D5134(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_2250ED794(v4, v5);
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_2250ED864();
  }
}

void sub_2250D51E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedNotifier];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_225072D78();
  v9[1] = 1107296256;
  v9[2] = sub_2250DC800;
  v9[3] = &unk_28385AB08;
  v8 = _Block_copy(v9);

  [v6 registerObserver:a1 forAccountChangeNotification:v8];
  _Block_release(v8);
}

void sub_2250D52E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedNotifier];
  v11 = MEMORY[0x22AA62D80](a2, a3);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  sub_225072D78();
  v14[1] = 1107296256;
  v14[2] = sub_2250D5428;
  v14[3] = &unk_28385AA90;
  v13 = _Block_copy(v14);

  [v10 registerObserver:a1 forAccountID:v11 authTokenRenewalInProgressNotifications:v13];
  _Block_release(v13);
}

uint64_t sub_2250D5400()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2250D5428(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_2250D54A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2250D54EC(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(31);

  MEMORY[0x22AA62E50](a1, a2);
  v4 = MEMORY[0x22AA62D80](0xD00000000000001DLL, 0x800000022547A190);

  return v4;
}

void sub_2250D5584(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = a4;
  v9 = type metadata accessor for Logger();
  v10 = sub_225072D1C(v9);
  v86 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v75 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  v85 = type metadata accessor for ResolvedBundleID();
  v18 = sub_225072D1C(v85);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v24 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v81 = &v73 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v73 - v27;
  v29 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v29 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    __break(1u);
    goto LABEL_18;
  }

  v78 = a5;
  v79 = v17;
  v84 = v9;
  v82 = a1;
  v88 = sub_2250D54EC(a1, a2);
  v30 = a3;
  v31 = MEMORY[0x22AA62510]();
  v32 = MEMORY[0x22AA62D80](v31);

  v89 = [objc_opt_self() kTCCServiceLiverpool];
  if (!v89)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  empty = xpc_array_create_empty();
  v34 = [v32 UTF8String];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = xpc_string_create(v34);
  xpc_array_append_value(empty, v35);
  swift_unknownObjectRelease();
  v36 = xpc_dictionary_create_empty();
  v37 = [v89 UTF8String];
  if (!v37)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  xpc_dictionary_set_value(v36, v37, empty);
  v87 = tcc_events_filter_create_with_criteria();
  v83 = v32;
  if (!v87)
  {
    v58 = v75;
    CCLog.getter();
    v59 = v20;
    v60 = *(v20 + 16);
    v61 = v85;
    v60(v24, v30, v85);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v76 = v36;
      v77 = empty;
      v66 = v65;
      aBlock[0] = v65;
      *v64 = 136315138;
      v67 = MEMORY[0x22AA62510]();
      v68 = v86;
      v70 = v69;
      (*(v59 + 8))(v24, v61);
      v71 = sub_225095AFC(v67, v70, aBlock);

      *(v64 + 4) = v71;
      _os_log_impl(&dword_22506F000, v62, v63, "Failed to generate TCC event filter for bundle identifier: %s", v64, 0xCu);
      sub_225073BF0(v66);
      sub_22507C9FC();
      sub_22507C9FC();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v68 + 8))(v75, v84);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v59 + 8))(v24, v61);
      (*(v86 + 8))(v58, v84);
    }

    return;
  }

  v76 = v36;
  v77 = empty;
  v75 = CKGetGlobalQueue();
  if (![v88 UTF8String])
  {
LABEL_21:
    __break(1u);
    return;
  }

  v73 = *(v20 + 16);
  v74 = v30;
  v38 = v85;
  v73(v28, v30, v85);
  v39 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v40 = (v22 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v20 + 32))(v41 + v39, v28, v38);
  v42 = (v41 + v40);
  *v42 = v82;
  v42[1] = a2;
  v43 = (v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8));
  v44 = v78;
  *v43 = v80;
  v43[1] = v44;
  aBlock[4] = sub_2250D75C4;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2250D691C;
  aBlock[3] = &unk_28385ABB0;
  v45 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v46 = v75;
  tcc_events_subscribe();
  _Block_release(v45);
  swift_unknownObjectRelease();
  v47 = v79;
  CCLog.getter();
  v48 = v81;
  v73(v81, v74, v38);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_225095AFC(v82, a2, aBlock);
    *(v51 + 12) = 2080;
    sub_2250D71BC();
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v38;
    v54 = v52;
    v56 = v55;
    (*(v20 + 8))(v48, v53);
    v57 = sub_225095AFC(v54, v56, aBlock);

    *(v51 + 14) = v57;
    _os_log_impl(&dword_22506F000, v49, v50, "Subscribed to TCC events with token %s for bundleID: %s", v51, 0x16u);
    swift_arrayDestroy();
    sub_22507C9FC();
    v46 = v75;
    sub_22507C9FC();
  }

  else
  {

    (*(v20 + 8))(v48, v38);
  }

  (*(v86 + 8))(v47, v84);
  v72 = v83;
  [objc_opt_self() sleepForTimeInterval_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_2250D5D64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v117 = a7;
  v118 = a6;
  v119 = a3;
  v112 = a1;
  v115 = type metadata accessor for ResolvedBundleID();
  v111 = *(v115 - 8);
  v9 = *(v111 + 64);
  MEMORY[0x28223BE20](v115);
  v114 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v106 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v113 = &v106 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v120 = (&v106 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v116 = &v106 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v106 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v106 - v29;
  v31 = tcc_authorization_record_get_service();
  if (!v31)
  {
    CCLog.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_22506F000, v54, v55, "TCC event has no service", v56, 2u);
      MEMORY[0x22AA65DF0](v56, -1, -1);
    }

    v57 = *(v12 + 8);
    v58 = v30;
    return v57(v58, v11);
  }

  v32 = v31;
  v107 = a4;
  v108 = a5;
  tcc_service_get_name();
  v33 = String.init(utf8String:)();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    v109 = v11;
    v110 = v32;
    v37 = v12;
    v38 = [objc_opt_self() kTCCServiceLiverpool];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (v35 == v39 && v36 == v41)
    {

      v12 = v37;
      v11 = v109;
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v12 = v37;
      v11 = v109;
      if ((v43 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v59 = tcc_authorization_record_get_subject_identity();
    if (v59)
    {
      v60 = v59;
      if (tcc_identity_get_type())
      {
        CCLog.getter();
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_22506F000, v61, v62, "TCC event is not for a bundle ID", v63, 2u);
          MEMORY[0x22AA65DF0](v63, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v57 = *(v12 + 8);
        v58 = v19;
        return v57(v58, v11);
      }

      tcc_identity_get_identifier();
      v67 = String.init(utf8String:)();
      if (!v68)
      {
        v16 = v116;
        CCLog.getter();
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_22506F000, v92, v93, "Failed to retrieve bundle ID for TCC event", v94, 2u);
          MEMORY[0x22AA65DF0](v94, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        goto LABEL_24;
      }

      v69 = v67;
      v70 = v68;
      if (v67 == MEMORY[0x22AA62510]() && v70 == v71)
      {

        v75 = v120;
      }

      else
      {
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v74 = v108;
        v75 = v120;
        if ((v73 & 1) == 0)
        {
          v120 = v69;
          v28 = v113;
          CCLog.getter();
          v76 = v111;
          (*(v111 + 16))(v114, v119, v115);

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.error.getter();

          LODWORD(v118) = v78;
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v119 = v60;
            v81 = v80;
            v121 = v80;
            *v79 = 136315650;
            v82 = sub_225095AFC(v120, v70, &v121);
            v120 = v77;
            v83 = v82;

            *(v79 + 4) = v83;
            *(v79 + 12) = 2080;
            sub_2250D71BC();
            v85 = v114;
            v84 = v115;
            v86 = dispatch thunk of CustomStringConvertible.description.getter();
            v87 = v74;
            v89 = v88;
            (*(v76 + 8))(v85, v84);
            v90 = sub_225095AFC(v86, v89, &v121);

            *(v79 + 14) = v90;
            *(v79 + 22) = 2080;
            *(v79 + 24) = sub_225095AFC(v107, v87, &v121);
            v91 = v120;
            _os_log_impl(&dword_22506F000, v120, v118, "Ignoring TCC event for a different bundle identifier: %s, expected: %s, token: %s", v79, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA65DF0](v81, -1, -1);
            MEMORY[0x22AA65DF0](v79, -1, -1);
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            return (*(v12 + 8))(v113, v109);
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v76 + 8))(v114, v115);
          goto LABEL_38;
        }
      }

      CCLog.getter();

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v121 = v98;
        *v97 = 136315650;
        v99 = sub_2250D6818(v112);
        v101 = sub_225095AFC(v99, v100, &v121);
        v119 = v60;
        v102 = v11;
        v103 = v101;

        *(v97 + 4) = v103;
        *(v97 + 12) = 2080;
        v104 = sub_225095AFC(v69, v70, &v121);

        *(v97 + 14) = v104;
        *(v97 + 22) = 2080;
        *(v97 + 24) = sub_225095AFC(v107, v108, &v121);
        _os_log_impl(&dword_22506F000, v95, v96, "TCC %s event received for %s, token: %s", v97, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v98, -1, -1);
        MEMORY[0x22AA65DF0](v97, -1, -1);

        v105 = (*(v12 + 8))(v120, v102);
      }

      else
      {

        v105 = (*(v12 + 8))(v75, v11);
      }

      v118(v105);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    CCLog.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22506F000, v64, v65, "TCC event has no identity", v66, 2u);
      MEMORY[0x22AA65DF0](v66, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

LABEL_38:
    v57 = *(v12 + 8);
    v58 = v28;
    return v57(v58, v11);
  }

LABEL_8:
  CCLog.getter();
  swift_unknownObjectRetain();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v44, v45))
  {

LABEL_24:
    swift_unknownObjectRelease();
    v57 = *(v12 + 8);
    v58 = v16;
    return v57(v58, v11);
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v121 = v47;
  *v46 = 136315138;
  tcc_service_get_name();
  v48 = String.init(utf8String:)();
  if (!v49)
  {
    v48 = 7104878;
  }

  v50 = v11;
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE300000000000000;
  }

  v52 = sub_225095AFC(v48, v51, &v121);

  *(v46 + 4) = v52;
  _os_log_impl(&dword_22506F000, v44, v45, "TCC event is for a different service: %s)", v46, 0xCu);
  sub_225073BF0(v47);
  MEMORY[0x22AA65DF0](v47, -1, -1);
  MEMORY[0x22AA65DF0](v46, -1, -1);
  swift_unknownObjectRelease();

  return (*(v12 + 8))(v16, v50);
}

uint64_t sub_2250D6818(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0x455441455243;
    case 2:
      return 0x594649444F4DLL;
    case 3:
      return 0x4554454C4544;
  }

  _StringGuts.grow(_:)(18);
  MEMORY[0x22AA62E50](0x676F6365726E7528, 0xEF203A64657A696ELL);
  type metadata accessor for tcc_event_type_t(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x22AA62E50](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2250D691C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_2250D698C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = sub_225072D1C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  v12 = v11 - v10;
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = sub_2250D54EC(a1, a2);
  v15 = [v14 UTF8String];
  v16 = v14;
  if (!v15)
  {
LABEL_10:
    __break(1u);
    return;
  }

  tcc_events_unsubscribe();
  CCLog.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_225095AFC(a1, a2, &v21);
    _os_log_impl(&dword_22506F000, v17, v18, "Unsubscribed to TCC events with token %s", v19, 0xCu);
    sub_225073BF0(v20);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  else
  {
  }

  (*(v7 + 8))(v12, v4);
}

uint64_t sub_2250D6B78(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedBundleID();
  v3 = sub_225072D1C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_225072C00();
  v10 = v9 - v8;
  v11 = type metadata accessor for Logger();
  v12 = sub_225072D1C(v11);
  v33 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_225072C00();
  v18 = v17 - v16;
  v19 = MEMORY[0x22AA62510]();
  v20 = MEMORY[0x22AA62D80](v19);

  v21 = TCCAccessCopyInformationForBundleId();

  v34 = v11;
  if (v21)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v35[0] = 0;
      v22 = v21;
      sub_2250B0DFC(&qword_27D719058, &unk_225445058);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  CCLog.getter();
  (*(v5 + 16))(v10, a1, v2);

  v23 = v2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = sub_225095AFC(0x4649434550534E55, 0xEB00000000444549, v35);

    *(v26 + 4) = v27;
    *(v26 + 12) = 2080;
    sub_2250D71BC();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v5 + 8))(v10, v23);
    v31 = sub_225095AFC(v28, v30, v35);

    *(v26 + 14) = v31;
    _os_log_impl(&dword_22506F000, v24, v25, "TCC access %s for bundleID: %s", v26, 0x16u);
    swift_arrayDestroy();
    sub_22507C9FC();
    sub_22507C9FC();
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }

  (*(v33 + 8))(v18, v34);
  return 2;
}

unint64_t sub_2250D71BC()
{
  result = qword_280D53638;
  if (!qword_280D53638)
  {
    type metadata accessor for ResolvedBundleID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53638);
  }

  return result;
}

uint64_t sub_2250D7214(uint64_t a1)
{
  v2 = sub_2250B0DFC(&qword_27D718AE0, &unk_225443AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2250D727C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_2250D73A4(a1, v4);
}

unint64_t sub_2250D72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  return sub_2250D7468(a1, a2, a3, a4, v10);
}

unint64_t sub_2250D7360(uint64_t a1)
{
  v3 = MEMORY[0x22AA635D0](*(v1 + 40), a1);

  return sub_2250D7564(a1, v3);
}

unint64_t sub_2250D73A4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_22508DECC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x22AA63210](v8, a1);
    sub_2250B28FC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2250D7468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t sub_2250D7564(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_2250D75C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ResolvedBundleID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);

  return sub_2250D5D64(a1, a2, (v2 + v6), v10, v11, v12, v13);
}

uint64_t sub_2250D7684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2250D76B0()
{
  type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  sub_22507CD68();
  sub_2250DBE6C(v0, v1);
  sub_22507CC80();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_2250D7720()
{
  Hasher.init(_seed:)();
  type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  sub_22507CD68();
  sub_2250DBE6C(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_2250D77A0()
{
  Hasher.init(_seed:)();
  type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  sub_2250DBE6C(&unk_27D7190A0, MEMORY[0x277CFA9E0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_2250D7828(uint64_t a1)
{
  v2 = sub_2250DBE6C(&qword_280D53710, type metadata accessor for DataSecurityAcquiredPayload);

  return MEMORY[0x28214D000](a1, v2);
}

uint64_t sub_2250D7894()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = sub_22507CD44(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v5 = *(type metadata accessor for PropertyDescription() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_225444480;
  v9 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v12[3] = v9;
  v10 = sub_225073808(v12);
  (*(*(v9 - 8) + 16))(v10, v0, v9);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v8;
}

uint64_t sub_2250D7A18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a2;
  v7 = type metadata accessor for SessionReadinessError();
  v117 = *(v7 - 8);
  v118 = v7;
  v8 = *(v117 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v108 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = &v102 - v11;
  v12 = sub_2250B0DFC(&qword_27D718F80, &qword_2254453B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v102 - v14;
  v113 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v111 = *(v113 - 8);
  v16 = *(v111 + 64);
  v17 = MEMORY[0x28223BE20](v113);
  v104 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v105 = &v102 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v109 = (&v102 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v112 = &v102 - v24;
  MEMORY[0x28223BE20](v23);
  v114 = &v102 - v25;
  v26 = type metadata accessor for Logger();
  v115 = *(v26 - 8);
  v116 = v26;
  v27 = *(v115 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v107 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v106 = &v102 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v102 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v102 - v35;
  v37 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v102 - v39;
  AnySessionConfiguration.account.getter();
  v41 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v42 = sub_22507C8E8(v40, 1, v41);
  sub_2250D4224(v40, &unk_27D718ED0, &qword_225444FF0);
  if (v42 == 1 || (v103 = a4, v43 = AnySessionAcquiredInfo.serviceName.getter(), !v44))
  {
LABEL_15:
    sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
    return swift_storeEnumTagMultiPayload();
  }

  v45 = v43;
  v46 = v44;
  v47 = sub_2250D4824(a1, v119);
  if (!v47)
  {

    CCLog.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22506F000, v64, v65, "Account has logged out since session acquisition.", v66, 2u);
      MEMORY[0x22AA65DF0](v66, -1, -1);
    }

    (*(v115 + 8))(v36, v116);
    (*(v117 + 104))(v103, *MEMORY[0x277CFAA30], v118);
    goto LABEL_15;
  }

  v48 = v47;
  v49 = [v47 accountID];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  LOBYTE(v49) = sub_2250D8854(a3, v50, v52);

  if ((v49 & 1) == 0)
  {

    CCLog.getter();
    v67 = v48;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v121[0] = v71;
      *v70 = 136315138;
      v72 = [v67 accountID];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = sub_225095AFC(v73, v75, v121);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_22506F000, v68, v69, "Account acquired does not match the current account. Current accountID %s", v70, 0xCu);
      sub_225073BF0(v71);
      MEMORY[0x22AA65DF0](v71, -1, -1);
      MEMORY[0x22AA65DF0](v70, -1, -1);
    }

    else
    {
    }

    (*(v115 + 8))(v34, v116);
    (*(v117 + 104))(v103, *MEMORY[0x277CFAA30], v118);
    goto LABEL_15;
  }

  v53 = v45;
  AnySessionAcquiredInfo.user.getter();
  v54 = type metadata accessor for AuthenticatedSession.ResolvedUser();
  result = sub_22507C8E8(v15, 1, v54);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v56 = v114;
    AuthenticatedSession.ResolvedUser.dataProtection.getter();
    (*(*(v54 - 8) + 8))(v15, v54);
    v57 = MEMORY[0x22AA62D80](v53, v46);
    IsManatee = PCSServiceItemTypeIsManatee();

    v59 = v111;
    v60 = v112;
    v61 = v113;
    (*(v111 + 104))(v112, *MEMORY[0x277CFA9D8], v113);
    v121[3] = sub_2250DC584();
    v121[4] = &off_28385A390;
    v121[0] = v48;
    v62 = v48;
    v63 = v109;
    sub_2250DD984(v121, v119, v53, v46, IsManatee, v110, v109);

    sub_225073BF0(v121);
    (*(v59 + 40))(v60, v63, v61);
    sub_2250DBE6C(&unk_280D53618, MEMORY[0x277CFA9E0]);
    v77 = dispatch thunk of static Equatable.== infix(_:_:)();
    if (v77)
    {
      v78 = *(v59 + 8);
      v78(v56, v61);

      sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
      swift_storeEnumTagMultiPayload();
      return (v78)(v60, v61);
    }

    else
    {
      v79 = v106;
      CCLog.getter();
      v80 = *(v59 + 16);
      v81 = v105;
      v80(v105, v56, v61);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        LODWORD(v109) = v83;
        v85 = v84;
        v86 = swift_slowAlloc();
        v119 = v62;
        v120[0] = v86;
        v87 = v59;
        v110 = v86;
        *v85 = 136315394;
        v88 = v112;
        swift_beginAccess();
        v89 = v104;
        v80(v104, v88, v61);
        v90 = String.init<A>(describing:)();
        v92 = sub_225095AFC(v90, v91, v120);

        *(v85 + 4) = v92;
        *(v85 + 12) = 2080;
        v80(v89, v81, v113);
        v93 = String.init<A>(describing:)();
        v95 = v94;
        v96 = *(v87 + 8);
        v96(v81, v113);
        v97 = sub_225095AFC(v93, v95, v120);

        *(v85 + 14) = v97;
        v61 = v113;
        _os_log_impl(&dword_22506F000, v82, v109, "Current data protection status is different from the acquired data protection status. Current data protection %s. Acquired data protection %s", v85, 0x16u);
        v98 = v110;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v98, -1, -1);
        v99 = v85;
        v100 = v112;
        MEMORY[0x22AA65DF0](v99, -1, -1);

        (*(v115 + 8))(v106, v116);
        v96(v114, v61);
        v101 = v103;
      }

      else
      {

        v96 = *(v59 + 8);
        v96(v81, v61);
        (*(v115 + 8))(v79, v116);
        v96(v114, v61);
        v101 = v103;
        v100 = v112;
      }

      (*(v117 + 104))(v101, *MEMORY[0x277CFAA70], v118);
      sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
      swift_storeEnumTagMultiPayload();
      return (v96)(v100, v61);
    }
  }

  return result;
}

uint64_t sub_2250D8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2250C8B38(a2, a3);
  v3 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
  v5 = v4;
  v6 = MEMORY[0x22AA62370]();
  sub_22508D128(v3, v5);
  v7 = sub_22507CC80();
  sub_22508D128(v7, v8);
  return v6 & 1;
}

uint64_t sub_2250D88CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43[1] = a1;
  v3 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v4 = sub_22507CD44(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = v43 - v7;
  v43[0] = type metadata accessor for AnySessionConfiguration();
  v8 = sub_225072D1C(v43[0]);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_225072C00();
  v44 = v14 - v13;
  v15 = sub_2250B0DFC(&qword_27D7190D8, &unk_2254453F0);
  v16 = sub_225072D1C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v43 - v21;
  v23 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  v24 = sub_225072D1C(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v24);
  v31 = v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v29);
  v34 = v43 - v33;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
    (*(v18 + 104))(v22, *MEMORY[0x277D85778], v15);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v18 + 8))(v22, v15);
    v35 = v44;
    (*(v10 + 16))(v44, v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_sessionConfiguration, v43[0]);
    v36 = v45;
    sub_2250DC5C8(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_previousInvalidationContext, v45, &unk_27D718E60, &unk_225444780);
    v37 = *(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_testDeviceReferenceProtocol);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account, v47);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_systemInteraction, v46);
    (*(v26 + 16))(v31, v34, v23);
    v38 = _s17DataSecurityCheckC5ActorCMa(0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v41 = sub_2250D8F34(v35, v36, v37, v47, v46, v31);
    (*(v26 + 8))(v34, v23);
    v42 = *(v2 + 16);
    *(v2 + 16) = v41;
  }

  return result;
}

uint64_t sub_2250D8C60()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_sessionConfiguration;
  v3 = type metadata accessor for AnySessionConfiguration();
  sub_225072BF0(v3);
  (*(v4 + 8))(v0 + v2);
  sub_2250D4224(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_previousInvalidationContext, &unk_27D718E60, &unk_225444780);
  v5 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account));
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_systemInteraction));
  v6 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_dataProtectionStatus;
  v7 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  sub_225072BF0(v7);
  (*(v8 + 8))(v0 + v6);
  return v0;
}

uint64_t sub_2250D8D48()
{
  sub_2250D8C60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2250D8DC8()
{
  v0 = type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2250B649C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

Swift::Int sub_2250D8EF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](v1);
  return Hasher._finalize()();
}

uint64_t sub_2250D8F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v53 = a5;
  v54 = a6;
  v55 = a4;
  v51 = a2;
  v10 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = &v45 - v12;
  v13 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = sub_2250B0DFC(&qword_27D7190B0, &qword_2254453B8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v45 - v23;
  swift_defaultActor_initialize();
  *(v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_areDataSecurityStatusesValid) = 0;
  *(v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken) = 0;
  v25 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_readinessSink;
  v26 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  sub_22507C8C0(v7 + v25, 1, 1, v26);
  *(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v7) = 0;
  v27 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_sessionConfiguration;
  v28 = type metadata accessor for AnySessionConfiguration();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v48 = v28;
  v30(v7 + v27, a1);
  *(v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_testDeviceReferenceProtocol) = a3;
  sub_2250D4724(v55, v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account);
  sub_2250D4724(v53, v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction);
  v31 = *(v26 - 8);
  (*(v31 + 16))(v24, v54, v26);
  sub_22507C8C0(v24, 0, 1, v26);
  swift_beginAccess();
  v50 = a3;
  swift_unknownObjectRetain();
  sub_2250DC628(v24, v7 + v25);
  swift_endAccess();
  v52 = a1;
  AnySessionConfiguration.encryption.getter();
  v32 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v20, 1, v32) == 1)
  {
    sub_2250D4224(v20, &unk_27D7190E0, &unk_2254447D0);
  }

  else
  {
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
    (*(*(v32 - 8) + 8))(v20, v32);
    v33 = AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
    v35 = v34;
    (*(v46 + 8))(v16, v47);
    if (v35)
    {
      v36 = (v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_primaryServiceName);
      *v36 = v33;
      v36[1] = v35;
      v37 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_dataProtection;
      v38 = *MEMORY[0x277CFA9D8];
      v39 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
      (*(*(v39 - 8) + 104))(v7 + v37, v38, v39);

      v40 = MEMORY[0x22AA62D80](v33, v35);

      IsManatee = PCSServiceItemTypeIsManatee();

      *(v7 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_isServiceManatee) = IsManatee;
      v42 = type metadata accessor for TaskPriority();
      sub_22507C8C0(v49, 1, 1, v42);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v7;

      sub_2250E1D44();
      swift_unknownObjectRelease();

      (*(v31 + 8))(v54, v26);
      sub_225073BF0(v53);
      sub_225073BF0(v55);
      sub_2250D4224(v51, &unk_27D718E60, &unk_225444780);
      (*(v29 + 8))(v52, v48);
      return v7;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250D94F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2250DC7FC;

  return sub_2250D99AC();
}

uint64_t sub_2250D9580()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2250DAC88();
  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_readinessSink;
  swift_beginAccess();
  if (!sub_22507C8E8(v0 + v7, 1, v2))
  {
    (*(v3 + 16))(v6, v0 + v7, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v6, v2);
  }

  v8 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_sessionConfiguration;
  v9 = type metadata accessor for AnySessionConfiguration();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account));
  v11 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_primaryServiceName + 8);

  v12 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_dataProtection;
  v13 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  sub_2250D4224(v1 + v7, &qword_27D7190B0, &qword_2254453B8);
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2250D97DC()
{
  v0 = sub_2250D9580();

  return MEMORY[0x282200960](v0);
}

void sub_2250D9860()
{
  v0 = type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2250DBB90();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2250D99CC()
{
  if (*(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + *(v0 + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_225072C10();
    sub_2250D9B58();
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_2250D9A74;
    v2 = *(v0 + 16);

    sub_2250D9F00();
  }
}

uint64_t sub_2250D9A74()
{
  sub_225072C10();
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_225072D68();
  *v3 = v2;

  sub_225075274();

  return v4();
}

void sub_2250D9B58()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken;
  if (!*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    sub_2250D4724(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction, v6);
    sub_225073BAC(v6, v6[3]);
    if (v4)
    {
      v5 = swift_allocObject();
      swift_weakInit();

      sub_2250DC87C(v4, sub_2250DC698, v5);

      sub_225073BF0(v6);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2250D9C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    sub_22507C8C0(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;
    v11[6] = a2;

    sub_2250E1D44();
  }

  return result;
}

uint64_t sub_2250D9D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_2250D9E1C;

  return sub_2250DB4B8(a5, a6);
}

uint64_t sub_2250D9E1C()
{
  sub_225072C10();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_225072D68();
  *v3 = v2;

  sub_225075274();

  return v4();
}

uint64_t sub_2250D9F00()
{
  v1[9] = v0;
  v2 = sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
  v1[10] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v4 = sub_2250B0DFC(&qword_27D7190C0, &qword_2254453C8);
  v1[12] = v4;
  v5 = *(v4 - 8);
  v1[13] = v5;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v10 = *(*(sub_2250B0DFC(&qword_27D7190C8, &unk_2254453D0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v11 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v14 = type metadata accessor for SessionReadinessError();
  v1[22] = v14;
  v15 = *(v14 - 8);
  v1[23] = v15;
  v16 = *(v15 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v17 = *(*(sub_2250B0DFC(&qword_27D7190B0, &qword_2254453B8) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v18 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  v1[27] = v18;
  v19 = *(v18 - 8);
  v1[28] = v19;
  v20 = *(v19 + 64) + 15;
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250DA200, v0, 0);
}

uint64_t sub_2250DA200()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 72);
  v4 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_readinessSink;
  swift_beginAccess();
  sub_2250DC5C8(v3 + v4, v1, &qword_27D7190B0, &qword_2254453B8);
  if (sub_22507C8E8(v1, 1, v2) == 1)
  {
    sub_2250D4224(*(v0 + 208), &qword_27D7190B0, &qword_2254453B8);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 72);
    (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    *(v0 + 288) = *MEMORY[0x277CFAA70];
    v10 = *(v8 + 104);
    *(v0 + 240) = v10;
    *(v0 + 248) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v6);
    v11 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_areDataSecurityStatusesValid;
    *(v0 + 256) = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_areDataSecurityStatusesValid;
    *(v9 + v11) = 0;
    sub_225073BAC((v9 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction), *(v9 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_systemInteraction + 24));
    v12 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account;
    *(v0 + 264) = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account;
    v13 = *(v9 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_testDeviceReferenceProtocol);
    v14 = *(v9 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_primaryServiceName);
    v15 = *(v9 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_primaryServiceName + 8);
    v16 = *(v9 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_isServiceManatee);
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = sub_2250DA444;
    v18 = *(v0 + 168);

    return sub_2250DC994(v18, v9 + v12, v13, v14, v15, v16);
  }
}

uint64_t sub_2250DA444()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_2250DA8B0;
  }

  else
  {
    v6 = sub_2250DA570;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2250DA570()
{
  v2 = *(v0 + 256);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 72);
  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_dataProtection;
  swift_beginAccess();
  (*(v4 + 40))(v6 + v7, v3, v5);
  swift_endAccess();
  *(v6 + v2) = 1;
  v8 = *(v0 + 72);
  v9 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state;
  v10 = *(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v8);
  if (v10 != 2)
  {
    if (*(v8 + *(v0 + 256)) == 1)
    {
      v3 = *(v0 + 72);
      sub_2250DAD30();
    }

    else if (v10 != 1)
    {
      v3 = *(v0 + 136);
      CCLog.getter();

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = sub_2250752B0();
        swift_slowAlloc();
        *v13 = 136315394;
        v15 = v3[3];
        v14 = v3[4];
        sub_225073BAC(v3, v15);
        sub_22507E9A4(v14);
        v17 = v16(v15, v14);
        v23 = sub_2250971B4(v17, v18, v19, v20, v21, v22);

        *(v13 + 4) = v23;
        *(v13 + 12) = 2080;
        *(v0 + 292) = v9[v8];
        v24 = String.init<A>(describing:)();
        v30 = sub_2250971B4(v24, v25, v26, v27, v28, v29);

        *(v13 + 14) = v30;
        _os_log_impl(&dword_22506F000, v11, v12, "Manatee is unavailable for account %s while in state %s. Waiting for account update...", v13, 0x16u);
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507C94C();

        (*(v44 + 8))();
      }

      else
      {
        v31 = *(v0 + 128);
        v3 = *(v0 + 136);
        v32 = *(v0 + 120);

        (*(v31 + 8))(v3, v32);
      }

      sub_22507CBDC();
      v34 = *(v0 + 104);
      v33 = *(v0 + 112);
      v36 = *(v0 + 88);
      v35 = *(v0 + 96);
      v37 = *(v0 + 80);
      v9[v8] = 1;
      (*(v38 + 16))(v36);
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      v39 = *(v34 + 8);
      v1 = v34 + 8;
      v39(v33, v35);
    }
  }

  v40 = sub_22507F314();
  v41(v40);
  (*(v1 + 8))(v3, v8);

  sub_225075274();

  return v42();
}

uint64_t sub_2250DA8B0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 144);
  (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
  *(v0 + 64) = v1;
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  sub_22507CC80();
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 176);
    v6 = *(v0 + 144);
    sub_22507C8C0(v6, 0, 1, v5);
    v7 = *(v4 + 32);
    v7(v3, v6, v5);
  }

  else
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v3 = *(v0 + 288);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    sub_22507C8C0(*(v0 + 144), 1, 1, v12);
    v9(v10, v3, v12);
    v7 = *(v11 + 32);
  }

  v7(*(v0 + 200), *(v0 + 192), *(v0 + 176));
  v13 = *(v0 + 72);
  v14 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state;
  v15 = *(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v13);
  if (v15 != 2)
  {
    if (*(v13 + *(v0 + 256)) == 1)
    {
      v3 = *(v0 + 72);
      sub_2250DAD30();
    }

    else if (v15 != 1)
    {
      v16 = *(v0 + 136);
      CCLog.getter();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = sub_2250752B0();
        v50 = swift_slowAlloc();
        *v19 = 136315394;
        v20 = v16[3];
        v21 = v16[4];
        sub_225073BAC(v16, v20);
        sub_22507E9A4(v21);
        v23 = v22(v20, v21);
        v29 = sub_2250971B4(v23, v24, v25, v26, v27, v28);

        *(v19 + 4) = v29;
        *(v19 + 12) = 2080;
        *(v0 + 292) = *(v14 + v13);
        v30 = String.init<A>(describing:)();
        v36 = sub_2250971B4(v30, v31, v32, v33, v34, v35);

        *(v19 + 14) = v36;
        _os_log_impl(&dword_22506F000, v17, v18, "Manatee is unavailable for account %s while in state %s. Waiting for account update...", v19, 0x16u);
        v3 = v50;
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507C9FC();

        (*(v49 + 8))();
      }

      else
      {
        v37 = *(v0 + 128);
        v3 = *(v0 + 136);
        v38 = *(v0 + 120);

        (*(v37 + 8))(v3, v38);
      }

      sub_22507CBDC();
      v40 = *(v0 + 104);
      v39 = *(v0 + 112);
      v42 = *(v0 + 88);
      v41 = *(v0 + 96);
      v43 = *(v0 + 80);
      *(v14 + v13) = 1;
      (*(v44 + 16))(v42);
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v40 + 8))(v39, v41);
    }
  }

  v45 = sub_22507F314();
  v46(v45);
  v14[1](v3, v13);

  sub_225075274();

  return v47();
}

void sub_2250DAC88()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken;
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedNotifier];
    [v5 unregisterObserverForAccountChangeNotification_];

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_2250DAD30()
{
  v1 = v0;
  v64 = sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
  v2 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v59 - v3;
  v4 = sub_2250B0DFC(&unk_27D719060, &qword_225445178);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v59 - v7;
  v8 = sub_2250B0DFC(&qword_27D7190B0, &qword_2254453B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v72 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v69 = &v59 - v15;
  v16 = sub_2250B0DFC(&qword_27D7190B8, &qword_2254453C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v70 = &v59 - v18;
  v19 = type metadata accessor for Logger();
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = *(v67 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DataSecurityAcquiredPayload(0);
  v23 = *(*(v65 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v65);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - v27;
  *(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v0) = 2;
  sub_2250DAC88();
  v29 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_dataProtection;
  swift_beginAccess();
  v30 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  (*(*(v30 - 8) + 16))(v28, v1 + v29, v30);
  CCLog.getter();
  v71 = v28;
  sub_2250C7ECC(v28, v26);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v62 = v4;
    v34 = v33;
    v60 = swift_slowAlloc();
    v73[0] = v60;
    *v34 = 136315394;
    v35 = v5;
    v61 = v12;
    v37 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account + 24);
    v36 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account + 32);
    sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account), v37);
    v38 = v37;
    v5 = v35;
    v39 = (*(v36 + 8))(v38, v36);
    v41 = sub_225095AFC(v39, v40, v73);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    sub_2250DBE6C(&qword_280D53708, type metadata accessor for DataSecurityAcquiredPayload);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_2250C7F30(v26);
    v45 = sub_225095AFC(v42, v44, v73);
    v12 = v61;

    *(v34 + 14) = v45;
    _os_log_impl(&dword_22506F000, v31, v32, "Data security acquired for account %s with payload: %s", v34, 0x16u);
    v46 = v60;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v46, -1, -1);
    v47 = v34;
    v4 = v62;
    MEMORY[0x22AA65DF0](v47, -1, -1);
  }

  else
  {

    sub_2250C7F30(v26);
  }

  (*(v67 + 8))(v22, v68);
  v48 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_readinessSink;
  swift_beginAccess();
  v49 = v69;
  sub_2250DC5C8(v1 + v48, v69, &qword_27D7190B0, &qword_2254453B8);
  v50 = sub_22507C8E8(v49, 1, v4);
  v52 = v71;
  v51 = v72;
  v53 = v70;
  if (v50)
  {
    sub_2250D4224(v49, &qword_27D7190B0, &qword_2254453B8);
    v54 = 1;
  }

  else
  {
    v55 = v66;
    (*(v5 + 16))(v66, v49, v4);
    sub_2250D4224(v49, &qword_27D7190B0, &qword_2254453B8);
    sub_2250C7ECC(v52, v63);
    swift_storeEnumTagMultiPayload();
    AsyncStream.Continuation.yield(_:)();
    (*(v5 + 8))(v55, v4);
    v54 = 0;
  }

  v56 = sub_2250B0DFC(&qword_27D7190C0, &qword_2254453C8);
  sub_22507C8C0(v53, v54, 1, v56);
  sub_2250D4224(v53, &qword_27D7190B8, &qword_2254453C0);
  sub_2250DC5C8(v1 + v48, v51, &qword_27D7190B0, &qword_2254453B8);
  if (sub_22507C8E8(v51, 1, v4))
  {
    sub_2250C7F30(v52);
    sub_2250D4224(v51, &qword_27D7190B0, &qword_2254453B8);
  }

  else
  {
    v57 = v66;
    (*(v5 + 16))(v66, v51, v4);
    sub_2250D4224(v51, &qword_27D7190B0, &qword_2254453B8);
    AsyncStream.Continuation.finish()();
    (*(v5 + 8))(v57, v4);
    sub_2250C7F30(v52);
  }

  sub_22507C8C0(v12, 1, 1, v4);
  swift_beginAccess();
  sub_2250DC628(v12, v1 + v48);
  return swift_endAccess();
}

uint64_t sub_2250DB4B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250DB594, v2, 0);
}

uint64_t sub_2250DB594()
{
  v68 = v0;
  v1 = *(v0 + 32);
  if (!*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_accountChangeToken))
  {
    v18 = *(v0 + 56);
    v19 = *(v0 + 24);
    CCLog.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 40);
    if (v22)
    {
      v27 = *(v0 + 16);
      v26 = *(v0 + 24);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_225095AFC(v27, v26, &v67);
      _os_log_impl(&dword_22506F000, v20, v21, "Received account change notification for account %s when we do not have an active subscription. Ignoring the account change", v28, 0xCu);
      sub_225073BF0(v29);
      sub_22507C9FC();
      sub_22507C94C();
    }

    v30 = *(v24 + 8);
    v31 = sub_22507CC80();
    v32(v31);
    goto LABEL_16;
  }

  if (*(OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_state + v1) == 2)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 24);
    CCLog.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 72);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    if (v6)
    {
      sub_22508CFE8();
      v67 = sub_2250956E0();
      v11 = sub_225082638(4.8151e-34, v67, v10);
      sub_22507E6F4(v11);
      *(v0 + 89) = v12;
      v13 = String.init<A>(describing:)();
      v15 = sub_225095AFC(v13, v14, &v67);

      *(v9 + 14) = v15;
      sub_2250986F8(&dword_22506F000, v16, v17, "Ignoring account change notification for account %s while in state %s.");
      swift_arrayDestroy();
      sub_22507C94C();
      sub_22507C9FC();

      (*(v8 + 8))();
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

LABEL_16:
    v44 = *(v0 + 64);
    v43 = *(v0 + 72);
    v45 = *(v0 + 56);

    sub_225075274();

    return v46();
  }

  if (!*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_testDeviceReferenceProtocol))
  {
    v34 = *(v0 + 16);
    v33 = *(v0 + 24);
    v35 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account + 24);
    v36 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account + 32);
    sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheckP33_520FF05051E3662139B97F4068666AEE5Actor_account), v35);
    sub_22507E9A4(v36);
    if (v37(v35, v36) == v34 && v38 == v33)
    {
    }

    else
    {
      v40 = *(v0 + 16);
      v41 = *(v0 + 24);
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  v48 = *(v0 + 64);
  v50 = *(v0 + 24);
  v49 = *(v0 + 32);
  CCLog.getter();

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 64);
  v56 = *(v0 + 40);
  v55 = *(v0 + 48);
  if (v53)
  {
    sub_22508CFE8();
    v67 = sub_2250956E0();
    v58 = sub_225082638(4.8151e-34, v67, v57);
    sub_22507E6F4(v58);
    *(v0 + 88) = v59;
    v60 = String.init<A>(describing:)();
    v62 = sub_225095AFC(v60, v61, &v67);

    *(v56 + 14) = v62;
    sub_2250986F8(&dword_22506F000, v63, v64, "Received account change notification for account %s while in state %s. Checking data security requirements");
    swift_arrayDestroy();
    sub_22507C94C();
    sub_22507C9FC();

    (*(v55 + 8))();
  }

  else
  {

    (*(v55 + 8))(v54, v56);
  }

  v65 = swift_task_alloc();
  *(v0 + 80) = v65;
  *v65 = v0;
  v65[1] = sub_2250DBA48;
  v66 = *(v0 + 32);

  return sub_2250D9F00();
}

uint64_t sub_2250DBA48()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;

  v5 = v1[9];
  v6 = v1[8];
  v7 = v1[7];

  v8 = *(v3 + 8);

  return v8();
}

void sub_2250DBB90()
{
  if (!qword_280D534C8)
  {
    sub_2250C7B40(&unk_27D719060, &qword_225445178);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_280D534C8);
    }
  }
}

_BYTE *_s17DataSecurityCheckC5ActorC5StateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2250DBD18()
{
  result = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2250DBDD0()
{
  result = qword_27D719078;
  if (!qword_27D719078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719078);
  }

  return result;
}

uint64_t sub_2250DBE6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2250DBEB4()
{
  v1 = *v0;
  sub_2250DBE6C(&unk_27D719090, _s17DataSecurityCheckCMa);
  return PropertyDescribable<>.description.getter();
}

size_t sub_2250DBF18()
{
  v1 = v0;
  v60 = type metadata accessor for PropertyDescription();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v60);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v51 - v6;
  v7 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v8 = sub_22507CD44(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v57 = type metadata accessor for SessionInvalidationContext();
  v13 = sub_225072D1C(v57);
  v54 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_225072C00();
  v53 = v18 - v17;
  v19 = type metadata accessor for OSLogPrivacy();
  v20 = sub_22507CD44(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v23 = *(v2 + 72);
  v59 = v2;
  v24 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_225444470;
  v26 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_sessionConfiguration;
  v27 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v27;
  v28 = sub_225073808(v61);
  (*(*(v27 - 8) + 16))(v28, v1 + v26, v27);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v29 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account + 24);
  v30 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account + 32);
  sub_225073BAC((v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account), v29);
  sub_22507E9A4(v30);
  v31 = v29;
  v32 = v23;
  v33 = v57;
  v35 = v34(v31, v30);
  ObjectType = MEMORY[0x277D837D0];
  v61[0] = v35;
  v61[1] = v36;
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v58 = v1;
  sub_2250DC5C8(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_previousInvalidationContext, v12, &unk_27D718E60, &unk_225444780);
  if (sub_22507C8E8(v12, 1, v33) == 1)
  {
    sub_2250D4224(v12, &unk_27D718E60, &unk_225444780);
    v38 = v59;
    v37 = v60;
  }

  else
  {
    v52 = 2 * v32;
    v40 = v53;
    v39 = v54;
    (*(v54 + 32))(v53, v12, v33);
    ObjectType = v33;
    v41 = sub_225073808(v61);
    (*(v39 + 16))(v41, v40, v33);
    static OSLogPrivacy.auto.getter();
    v42 = v55;
    PropertyDescription.init(_:_:privacy:)();
    v25 = sub_2250C7388();
    (*(v39 + 8))(v40, v33);
    *(v25 + 16) = 3;
    v38 = v59;
    v43 = v42;
    v37 = v60;
    (*(v59 + 32))(v25 + v24 + v52, v43, v60);
  }

  v44 = v24;
  v45 = *(v58 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_testDeviceReferenceProtocol);
  if (v45)
  {
    v46 = v32;
    v47 = *(v58 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_testDeviceReferenceProtocol);
    ObjectType = swift_getObjectType();
    v61[0] = v45;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v48 = v56;
    PropertyDescription.init(_:_:privacy:)();
    v49 = *(v25 + 16);
    if (v49 >= *(v25 + 24) >> 1)
    {
      v25 = sub_2250C7388();
    }

    swift_unknownObjectRelease();
    *(v25 + 16) = v49 + 1;
    (*(v38 + 32))(v25 + v44 + v49 * v46, v48, v37);
  }

  return v25;
}

unint64_t sub_2250DC480()
{
  result = qword_280D53470;
  if (!qword_280D53470)
  {
    sub_2250C7B40(&qword_27D718F40, &qword_2254448B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53470);
  }

  return result;
}

uint64_t sub_2250DC4E4(uint64_t a1)
{
  result = sub_2250DBE6C(&qword_280D544D0, _s17DataSecurityCheckCMa);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2250DC584()
{
  result = qword_280D53450;
  if (!qword_280D53450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D53450);
  }

  return result;
}

uint64_t sub_2250DC5C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2250B0DFC(a3, a4);
  sub_225072BF0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2250DC628(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D7190B0, &qword_2254453B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250DC6A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = sub_225072C3C(v7);

  return sub_2250D9D70(v8, v9, v10, v4, v5, v6);
}

uint64_t sub_2250DC758()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  sub_225072C3C(v5);

  return sub_2250D94F0();
}

uint64_t sub_2250DC800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v5(v6, v8, a3);
}

void sub_2250DC87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedNotifier];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_2250DE054;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2250DC800;
  v9[3] = &unk_28385AD70;
  v8 = _Block_copy(v9);

  [v6 registerObserver:a1 forAccountChangeNotification:v8];
  _Block_release(v8);
}

uint64_t sub_2250DC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 337) = a6;
  *(v6 + 216) = a4;
  *(v6 + 224) = a5;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  *(v6 + 192) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 232) = v7;
  sub_22507D394(v7);
  *(v6 + 240) = v8;
  v10 = *(v9 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v11 = type metadata accessor for SessionReadinessError();
  *(v6 + 256) = v11;
  sub_22507D394(v11);
  *(v6 + 264) = v12;
  v14 = *(v13 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  v15 = sub_2250B0DFC(&qword_27D7190F0, &qword_225445458);
  *(v6 + 280) = v15;
  sub_22507D394(v15);
  *(v6 + 288) = v16;
  v18 = *(v17 + 64) + 15;
  *(v6 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250DCB0C, 0, 0);
}

uint64_t sub_2250DCB0C()
{
  sub_2250D4724(*(v0 + 200), v0 + 144);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 288);
    v2 = *(v0 + 296);
    v3 = *(v0 + 280);
    v12 = *(v0 + 337);
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    *(v0 + 304) = v5;
    v6 = [objc_opt_self() deviceContextForTestDeviceReference_];
    *(v0 + 312) = v6;
    v7 = [v6 accountDataSecurityObserver];
    *(v0 + 320) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_2250DCE28;
    swift_continuation_init();
    *(v0 + 136) = v3;
    v8 = sub_225073808((v0 + 112));
    sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
    CheckedContinuation.init(continuation:function:)();
    (*(v1 + 32))(v8, v2, v3);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2250DD39C;
    *(v0 + 104) = &unk_28385AD20;
    [v7 validateDataSecurityStatusesForAccount:v5 isServiceManatee:v12 clientSDKVersionLaterThanSkyStar:1 completionHandler:?];
    (*(v1 + 8))(v8, v3);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 200);
    _StringGuts.grow(_:)(27);

    sub_225073BAC(v9, v9[3]);
    swift_getDynamicType();
    v10 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v10);

    sub_22507CA6C();
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_2250DCE28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_2250DD090;
  }

  else
  {
    v3 = sub_2250DCF38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2250DCF38()
{
  v1 = *(v0 + 336);

  sub_22507C968();
  sub_2250DD43C(0, v1, v2, v3, v4, v5, v6);
  v7 = *(v0 + 304);
  v8 = *(v0 + 296);
  v9 = *(v0 + 272);
  v10 = *(v0 + 248);

  sub_225075274();

  return v11();
}

uint64_t sub_2250DD090()
{
  v40 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 248);
  swift_willThrow();

  CCLog.getter();
  v5 = v3;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 328);
    v10 = *(v0 + 304);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v38 = *(v0 + 248);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v11 = 136315394;
    v14 = [v10 accountID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_225095AFC(v15, v17, &v39);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    *v12 = v20;
    _os_log_impl(&dword_22506F000, v7, v8, "Manatee unavailable for account %s. Error: %@", v11, 0x16u);
    sub_2250DDF8C(v12);
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
    sub_225073BF0(v13);
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
    sub_225072C54();
    MEMORY[0x22AA65DF0]();

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 232);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 328);
  sub_22507C968();
  sub_2250DD43C(v24, 0, v25, v26, v27, v28, v29);
  v30 = *(v0 + 304);
  v31 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 248);

  sub_225075274();

  return v34();
}

void sub_2250DD39C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_2250ED7A8(v4, v5);
  }

  else
  {

    sub_2250ED8B0();
  }
}

uint64_t sub_2250DD43C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = type metadata accessor for Logger();
  v10 = sub_225072D1C(v9);
  v58 = v11;
  v59 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_225072C00();
  v57 = v15 - v14;
  v16 = type metadata accessor for SessionReadinessError();
  v17 = sub_225072D1C(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_225072C00();
  v24 = v23 - v22;
  v53 = *MEMORY[0x277CFAA70];
  v56 = *(v19 + 104);
  v56(v23 - v22);
  v25 = *MEMORY[0x277CFA9D8];
  v26 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v27 = *(v26 - 8);
  v28 = v25;
  v29 = *(v27 + 104);
  v29(a7, v28, v26);
  if (a1)
  {
    v62 = v26;
    v63 = a7;
    v30 = a1;
    v31 = a1;
    sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
    type metadata accessor for CKUnderlyingError(0);
    if (swift_dynamicCast())
    {
      sub_22507F344();
      sub_2250DDFF4(v32, v33);
      _BridgedStoredNSError.code.getter();
      v34 = v16;
      if (v65 == 5014)
      {
        v35 = sub_225075600();
        v36(v35);

        (v56)(v24, *MEMORY[0x277CFAA60], v16);
        v37 = a7;
        v38 = a1;
      }

      else
      {
        _BridgedStoredNSError.code.getter();

        v37 = a7;
        v38 = a1;
        if (v65 == 5006)
        {
          v51 = sub_225075600();
          v52(v51);
          (v56)(v24, v53, v16);
        }
      }
    }

    else
    {
      CCLog.getter();
      v40 = a1;
      v38 = a1;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      v34 = v16;
      v43 = v41;
      if (os_log_type_enabled(v41, v42))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v38;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_22506F000, v43, v42, "Got unexpected error from data security check %@. Defaulting to .dataProtectionInsufficient block event", v44, 0xCu);
        sub_2250DDF8C(v45);
        sub_225072C54();
        MEMORY[0x22AA65DF0]();
        sub_225072C54();
        MEMORY[0x22AA65DF0]();
      }

      (*(v58 + 8))(v57, v59);
      v37 = v63;
    }

    (*(v19 + 16))(a6, v24, v34);
    sub_225072D9C();
    sub_2250DDFF4(v48, v49);
    swift_willThrowTypedImpl();

    (*(v27 + 8))(v37, v62);
    return (*(v19 + 8))(v24, v34);
  }

  else
  {
    (*(v27 + 8))(a7, v26);
    (*(v19 + 8))(v24, v16);
    if (a2)
    {
      v39 = MEMORY[0x277CFA9C0];
    }

    else
    {
      if (a5)
      {
        *a7 = a3;
        a7[1] = a4;
        v29(a7, *MEMORY[0x277CFA9D0], v26);
      }

      v39 = MEMORY[0x277CFA9C8];
    }

    return (v29)(a7, *v39, v26);
  }
}

void sub_2250DD984(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v65 = a6;
  v66 = a7;
  v8 = v7;
  v73 = *MEMORY[0x277D85DE8];
  v14 = type metadata accessor for Logger();
  v15 = sub_225072D1C(v14);
  v61 = v16;
  v62 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = &v59 - v22;
  v23 = type metadata accessor for SessionReadinessError();
  v24 = sub_225072D1C(v23);
  v63 = v25;
  v64 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_225072C00();
  v30 = v29 - v28;
  sub_2250D4724(a1, &v71);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (!swift_dynamicCast())
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v71 = 0xD000000000000019;
    v72 = 0x800000022547A4C0;
    sub_225073BAC(a1, a1[3]);
    swift_getDynamicType();
    v58 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v58);

    sub_22507CA6C();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v68 = a3;
  v69 = a4;
  v31 = v70;
  v32 = [objc_opt_self() deviceContextForTestDeviceReference_];
  v33 = [v32 accountDataSecurityObserver];
  v71 = 0;
  v67 = a5;
  v34 = [v33 validateCachedDataSecurityRequirementsAndReturnWalrusResultForAccount:v31 isServiceManatee:a5 & 1 errorPtr:&v71];

  if (!v34)
  {
    v40 = v71;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v39 = 0;
    v71 = v37;
    v41 = v37;
    sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
    type metadata accessor for CKUnderlyingError(0);
    if (swift_dynamicCast())
    {
      v8 = 0;
      v42 = v70;
      v71 = v70;
      sub_22507F344();
      sub_2250DDFF4(v43, v44);
      _BridgedStoredNSError.code.getter();
      if (v70 == 1017)
      {
        v45 = v60;
        CCLog.getter();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_22506F000, v46, v47, "There are no cached manatee/walrus statuses. The cached values may have been cleared. Not invalidating the session until there is an actual problem with it.", v48, 2u);
          sub_225072C54();
          MEMORY[0x22AA65DF0]();

          (*(v61 + 8))(v60, v62);
        }

        else
        {

          (*(v61 + 8))(v45, v62);
        }

        v36 = 0;
        goto LABEL_4;
      }

      v39 = 0;
    }

    v49 = v37;
    CCLog.getter();
    v50 = v37;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v60 = 0;
      v55 = v54;
      *v53 = 138412290;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&dword_22506F000, v51, v52, "Manatee / Walrus check using cached values failed with error %@", v53, 0xCu);
      sub_2250DDF8C(v55);
      v39 = v60;
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
    }

    else
    {
    }

    v38 = v67;

    (*(v61 + 8))(v21, v62);
    v36 = 0;
    goto LABEL_14;
  }

  v35 = v71;
  v36 = [v34 isWalrusEnabled];

LABEL_4:
  v37 = 0;
  v38 = v67;
  v39 = v8;
LABEL_14:
  sub_2250DD43C(v37, v36, v68, v69, v38 & 1, v30, v66);

  if (v39)
  {
    (*(v63 + 32))(v65, v30, v64);
  }

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2250DDF8C(uint64_t a1)
{
  v2 = sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2250DDFF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2250DE054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2250DE07C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2250DE0A4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor) = 0;
  v5 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_sessionConfiguration;
  v6 = type metadata accessor for AnySessionConfiguration();
  sub_225072BF0(v6);
  (*(v7 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_testDeviceReferenceProtocol) = a2;
  return v2;
}

uint64_t sub_2250DE128@<X0>(uint64_t a1@<X8>)
{
  v40[1] = a1;
  v2 = type metadata accessor for AnySessionConfiguration();
  v3 = sub_225072D1C(v2);
  v42 = v4;
  v43 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_225072C00();
  v44 = v8 - v7;
  v9 = sub_2250B0DFC(qword_27D7191B0, &qword_225445718);
  v10 = sub_225072D1C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v40 - v15;
  v41 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v17 = sub_225072D1C(v41);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v22);
  v27 = v40 - v26;
  v28 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor;
  if (*(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor))
  {
    __break(1u);
  }

  else
  {
    v29 = v1;
    sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
    (*(v12 + 104))(v16, *MEMORY[0x277D85778], v9);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v12 + 8))(v16, v9);
    v30 = v1;
    v31 = v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_sessionConfiguration;
    v32 = v44;
    (*(v42 + 16))(v44, v31, v43);
    v33 = *(v29 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_testDeviceReferenceProtocol);
    v34 = v41;
    (*(v19 + 16))(v24, v27, v41);
    v35 = _s11DeviceCheckC5ActorCMa(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v38 = sub_2250DEC2C(v32, v33, v24);
    (*(v19 + 8))(v27, v34);
    v39 = *(v30 + v28);
    *(v30 + v28) = v38;
  }

  return result;
}

uint64_t sub_2250DE420@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = type metadata accessor for Logger();
  v1 = sub_225072D1C(v44);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = type metadata accessor for AuthenticatedSession.Configuration.System();
  v15 = sub_225072D1C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_225072C00();
  v22 = v21 - v20;
  v23 = [objc_opt_self() sharedMonitor];
  if (([v23 availabilityState] & 2) == 0)
  {
    CCLog.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22506F000, v24, v25, "Device is no longer past first boot", v26, 2u);
      sub_22507C97C();
    }

    (*(v3 + 8))(v8, v44);
LABEL_9:
    v31 = *MEMORY[0x277CFAA58];
    v32 = type metadata accessor for SessionReadinessError();
    sub_225072BF0(v32);
    (*(v33 + 104))(v45, v31);
    goto LABEL_10;
  }

  v27 = [v23 availabilityState];
  if ((v27 & 2) == 0)
  {
    CCLog.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22506F000, v28, v29, "Logical Device is no longer past first unlock", v30, 2u);
      sub_22507C97C();
    }

    (*(v3 + 8))(v11, v44);
    goto LABEL_9;
  }

  AnySessionConfiguration.system.getter();
  v35 = AuthenticatedSession.Configuration.System.allowAccessDuringBuddy.getter();
  (*(v17 + 8))(v22, v14);
  if (v27 & 1) != 0 || (v35)
  {
  }

  else
  {
    CCLog.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v45;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22506F000, v36, v37, "Logical Device is not past Buddy", v40, 2u);
      sub_22507C97C();
    }

    (*(v3 + 8))(v13, v44);
    v41 = *MEMORY[0x277CFAA38];
    v42 = type metadata accessor for SessionReadinessError();
    sub_225072BF0(v42);
    (*(v43 + 104))(v39, v41);
  }

LABEL_10:
  sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2250DE834()
{
  v1 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_sessionConfiguration;
  v2 = type metadata accessor for AnySessionConfiguration();
  sub_225072BF0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor);

  return v0;
}

uint64_t sub_2250DE8AC()
{
  sub_2250DE834();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2250DE92C()
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

uint64_t sub_2250DE9E0()
{
  v1 = *v0;
  sub_2250E17F0(&unk_280D54250, _s11DeviceCheckCMa);
  return PropertyDescribable<>.description.getter();
}

size_t sub_2250DEA44()
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
  if (!*(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor))
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor);

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

uint64_t sub_2250DEC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v27 = a1;
  v6 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  swift_defaultActor_initialize();
  v14 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  v15 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  sub_22507C8C0(v3 + v14, 1, 1, v15);
  *(v3 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) = 0xC000000000000000;
  v16 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_sessionConfiguration;
  v17 = type metadata accessor for AnySessionConfiguration();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v3 + v16, a1, v17);
  *(v3 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_testDeviceReferenceProtocol) = a2;
  v19 = *(v15 - 8);
  v20 = v26;
  (*(v19 + 16))(v13, v26, v15);
  sub_22507C8C0(v13, 0, 1, v15);
  v21 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_2250E1C2C(v13, v3 + v21);
  swift_endAccess();
  v22 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v9, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v3;

  sub_2250E1D44();
  swift_unknownObjectRelease();

  (*(v19 + 8))(v20, v15);
  (*(v18 + 8))(v27, v17);
  return v3;
}

uint64_t sub_2250DEF30()
{
  sub_225072C10();
  v1 = *(v0 + 16);
  sub_2250DF2D4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2250DEF8C()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  swift_beginAccess();
  if (!sub_22507C8E8(v1 + v7, 1, v2))
  {
    (*(v3 + 16))(v6, v1 + v7, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v6, v2);
  }

  v8 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_sessionConfiguration;
  v9 = type metadata accessor for AnySessionConfiguration();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  sub_2250D4224(v1 + v7, &qword_27D719198, &qword_225445700);
  sub_2250E1B8C(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2250DF168()
{
  v0 = sub_2250DEF8C();

  return MEMORY[0x282200960](v0);
}

void sub_2250DF1EC()
{
  v0 = type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2250E12C8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2250DF2D4()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - v4;
  v6 = sub_2250B0DFC(&qword_27D7191A8, &qword_225445710);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - v8;
  v9 = type metadata accessor for Logger();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - v15;
  v17 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state;
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) != 0xC000000000000000)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD000000000000024, 0x800000022547A850);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v47 = *(v0 + v22);
    _print_unlocked<A, B>(_:_:)();
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v23 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  swift_beginAccess();
  sub_2250E1BBC(v1 + v23, v16);
  if (sub_22507C8E8(v16, 1, v17) == 1)
  {
    sub_2250D4224(v16, &qword_27D719198, &qword_225445700);
    goto LABEL_11;
  }

  (*(v18 + 32))(v21, v16, v17);
  v24 = [objc_opt_self() sharedMonitor];
  v25 = objc_allocWithZone(_s11DeviceCheckC5ActorC25SystemAvailabilityWatcherCMa());

  v27 = sub_2250E08BC(v26, &OBJC_IVAR____TtCCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor25SystemAvailabilityWatcher_actor, _s11DeviceCheckC5ActorC25SystemAvailabilityWatcherCMa);
  v28 = *(v1 + v22);
  *(v1 + v22) = v27;
  v29 = v27;
  sub_2250E1B8C(v28);
  if (([v24 availabilityState] & 2) != 0)
  {
    sub_2250DFBEC();
  }

  else
  {
    CCLog.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v39 = v5;
      v33 = v32;
      *v32 = 0;
      _os_log_impl(&dword_22506F000, v30, v31, "Device is not past first unlock", v32, 2u);
      v5 = v39;
      MEMORY[0x22AA65DF0](v33, -1, -1);
    }

    (*(v40 + 8))(v12, v41);
    v34 = *MEMORY[0x277CFAA58];
    v35 = type metadata accessor for SessionReadinessError();
    (*(*(v35 - 8) + 104))(v5, v34, v35);
    swift_storeEnumTagMultiPayload();
    v36 = v42;
    AsyncStream.Continuation.yield(_:)();
    (*(v43 + 8))(v36, v44);
    v37 = v29;
    [v24 registerWatcher_];
  }

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_2250DF904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2250DF928, 0, 0);
}

uint64_t sub_2250DF928()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return sub_22507F490(sub_2250DF954, v1);
  }

  **(v0 + 16) = 1;
  return sub_225072DB4();
}

uint64_t sub_2250DF954()
{
  sub_225072C10();
  v1 = *(v0 + 24);
  sub_2250DFA70(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_2250E1D3C, 0, 0);
}

uint64_t sub_2250DFA70(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) >> 62)
  {
    CCLog.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22506F000, v9, v10, "Ignoring system availability callback in unexpected state", v11, 2u);
      MEMORY[0x22AA65DF0](v11, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  else if ((a1 & 2) != 0)
  {

    return sub_2250DFBEC();
  }

  return result;
}

uint64_t sub_2250DFBEC()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - v4;
  v6 = sub_2250B0DFC(&qword_27D7191A8, &qword_225445710);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - v8;
  v9 = type metadata accessor for Logger();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - v15;
  v17 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state;
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) >> 62)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD00000000000002BLL, 0x800000022547A7C0);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v47 = *(v0 + v22);
    _print_unlocked<A, B>(_:_:)();
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v23 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
  swift_beginAccess();
  sub_2250E1BBC(v1 + v23, v16);
  if (sub_22507C8E8(v16, 1, v17) == 1)
  {
    sub_2250D4224(v16, &qword_27D719198, &qword_225445700);
    goto LABEL_11;
  }

  (*(v18 + 32))(v21, v16, v17);
  v24 = [objc_opt_self() sharedMonitor];
  v25 = objc_allocWithZone(_s11DeviceCheckC5ActorC32LogicalDeviceAvailabilityWatcherCMa());

  v27 = sub_2250E08BC(v26, &OBJC_IVAR____TtCCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor32LogicalDeviceAvailabilityWatcher_actor, _s11DeviceCheckC5ActorC32LogicalDeviceAvailabilityWatcherCMa);
  v28 = *(v1 + v22);
  *(v1 + v22) = v27 | 0x4000000000000000;
  v29 = v27;
  sub_2250E1B8C(v28);
  if (([v24 availabilityState] & 2) != 0)
  {
    sub_2250E01F8();
  }

  else
  {
    CCLog.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v39 = v5;
      v33 = v32;
      *v32 = 0;
      _os_log_impl(&dword_22506F000, v30, v31, "Logical Device is not past first unlock", v32, 2u);
      v5 = v39;
      MEMORY[0x22AA65DF0](v33, -1, -1);
    }

    (*(v40 + 8))(v12, v41);
    v34 = *MEMORY[0x277CFAA58];
    v35 = type metadata accessor for SessionReadinessError();
    (*(*(v35 - 8) + 104))(v5, v34, v35);
    swift_storeEnumTagMultiPayload();
    v36 = v42;
    AsyncStream.Continuation.yield(_:)();
    (*(v43 + 8))(v36, v44);
    v37 = v29;
    [v24 registerWatcher_];
  }

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_2250E01F8()
{
  v1 = v0;
  v51 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v2 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - v3;
  v4 = sub_2250B0DFC(&qword_27D7191A8, &qword_225445710);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - v6;
  v7 = type metadata accessor for Logger();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AuthenticatedSession.Configuration.System();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - v17;
  v19 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v53 = &v44 - v22;
  v23 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state;
  v24 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
  if (v24 >> 62 == 1)
  {
    v52 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
    v25 = v24 & 0x3FFFFFFFFFFFFFFFLL;
    v26 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
    swift_beginAccess();
    sub_2250E1BBC(v1 + v26, v18);
    if (sub_22507C8E8(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v53, v18, v19);
      v27 = v25;
      AnySessionConfiguration.system.getter();
      v28 = AuthenticatedSession.Configuration.System.allowAccessDuringBuddy.getter();
      (*(v11 + 8))(v14, v10);
      if (v28)
      {
        sub_2250E0DC0();
      }

      else
      {
        v29 = [objc_opt_self() sharedMonitor];
        v30 = [v29 availabilityState];
        v31 = *(v1 + v23);
        *(v1 + v23) = v25 | 0x8000000000000000;
        v32 = v27;
        sub_2250E1B8C(v31);
        if ((v30 & 1) == 0)
        {
          v33 = v44;
          CCLog.getter();
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          v36 = os_log_type_enabled(v34, v35);
          v37 = v52;
          if (v36)
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_22506F000, v34, v35, "Logical Device is not past Buddy", v38, 2u);
            MEMORY[0x22AA65DF0](v38, -1, -1);
          }

          (*(v45 + 8))(v33, v46);
          v39 = *MEMORY[0x277CFAA38];
          v40 = type metadata accessor for SessionReadinessError();
          (*(*(v40 - 8) + 104))(v50, v39, v40);
          swift_storeEnumTagMultiPayload();
          v41 = v47;
          AsyncStream.Continuation.yield(_:)();
          (*(v48 + 8))(v41, v49);
          sub_2250E191C(v37);
          [v29 registerWatcher_];

          sub_2250E1B8C(v37);
          goto LABEL_11;
        }

        sub_2250E0DC0();
      }

      v37 = v52;
LABEL_11:
      sub_2250E1B8C(v37);
      return (*(v20 + 8))(v53, v19);
    }

    v43 = v25;
    sub_2250D4224(v18, &qword_27D719198, &qword_225445700);
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD00000000000001DLL, 0x800000022547A750);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v56 = *(v1 + v23);
    _print_unlocked<A, B>(_:_:)();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_2250E08BC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  swift_weakInit();
  swift_weakAssign();
  v8.receiver = v3;
  v8.super_class = a3(0);
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t sub_2250E0964(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = *a2;
  Strong = swift_weakLoadStrong();
  v10 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = Strong;
  v11[5] = a1;
  sub_2250E1FF4();

  return 1;
}

uint64_t sub_2250E0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2250E0A78, 0, 0);
}

uint64_t sub_2250E0A78()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return sub_22507F490(sub_2250E0AA4, v1);
  }

  **(v0 + 16) = 1;
  return sub_225072DB4();
}

uint64_t sub_2250E0AA4()
{
  sub_225072C10();
  v1 = *(v0 + 24);
  sub_2250E0C14(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_2250E0B08, 0, 0);
}

id sub_2250E0BC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2250E0C14(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
  if (v8 >> 62 == 2)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v10 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
    sub_2250E0DC0();
    goto LABEL_7;
  }

  if (v8 >> 62 == 1)
  {
    if ((a1 & 2) == 0)
    {
      return;
    }

    v9 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
    sub_2250E01F8();
LABEL_7:

    sub_2250E1B8C(v8);
    return;
  }

  CCLog.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22506F000, v11, v12, "Ignoring system availability callback in unexpected state", v13, 2u);
    MEMORY[0x22AA65DF0](v13, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_2250E0DC0()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_2250B0DFC(&unk_27D7190F8, &qword_2254454F0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = sub_2250B0DFC(&qword_27D7191A0, &qword_225445708);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - v20;
  v22 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state;
  v23 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
  if ((v23 >> 62) - 1 < 2 || (v23 >> 62 == 3 ? (v24 = v23 == 0xC000000000000008) : (v24 = 0), v24))
  {
    *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state) = 0xC000000000000008;
    sub_2250E1B8C(v23);
    v25 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_readinessSink;
    swift_beginAccess();
    sub_2250E1BBC(v1 + v25, v17);
    if (sub_22507C8E8(v17, 1, v4))
    {
      sub_2250D4224(v17, &qword_27D719198, &qword_225445700);
      v26 = 1;
    }

    else
    {
      v31 = v12;
      v27 = v32;
      (*(v32 + 16))(v7, v17, v4);
      sub_2250D4224(v17, &qword_27D719198, &qword_225445700);
      v12 = v31;
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v27 + 8))(v7, v4);
      v26 = 0;
    }

    v28 = sub_2250B0DFC(&qword_27D7191A8, &qword_225445710);
    sub_22507C8C0(v21, v26, 1, v28);
    sub_2250D4224(v21, &qword_27D7191A0, &qword_225445708);
    sub_2250E1BBC(v1 + v25, v15);
    if (sub_22507C8E8(v15, 1, v4))
    {
      sub_2250D4224(v15, &qword_27D719198, &qword_225445700);
    }

    else
    {
      v29 = v32;
      (*(v32 + 16))(v7, v15, v4);
      sub_2250D4224(v15, &qword_27D719198, &qword_225445700);
      AsyncStream.Continuation.finish()();
      (*(v29 + 8))(v7, v4);
    }

    sub_22507C8C0(v12, 1, 1, v4);
    swift_beginAccess();
    sub_2250E1C2C(v12, v1 + v25);
    return swift_endAccess();
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0x7571634165746F6ELL, 0xEE00292864657269);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v33 = *(v1 + v22);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_2250E12C8()
{
  if (!qword_280D534B0)
  {
    sub_2250C7B40(&unk_27D7190F8, &qword_2254454F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_280D534B0);
    }
  }
}

uint64_t sub_2250E1374(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2250E139C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2250E13F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2250E1450(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

size_t sub_2250E14D0()
{
  v18 = type metadata accessor for PropertyDescription();
  v1 = *(v18 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v18);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSLogPrivacy();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_225444470;
  v10 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_state);
  ObjectType = &_s11DeviceCheckC5ActorC5StateON;
  v19[0] = v10;
  sub_2250E191C(v10);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v11 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_sessionConfiguration;
  v12 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v12;
  v13 = sub_225073808(v19);
  (*(*(v12 - 8) + 16))(v13, v0 + v11, v12);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v14 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck11DeviceCheckP33_FA19F3BFB07E81F15EE266A3A450DD035Actor_testDeviceReferenceProtocol);
  if (v14)
  {
    ObjectType = swift_getObjectType();
    v19[0] = v14;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v15 = v17;
    PropertyDescription.init(_:_:privacy:)();
    v9 = sub_2250C7388();
    swift_unknownObjectRelease();
    *(v9 + 16) = 3;
    (*(v2 + 32))(v9 + v8 + 2 * v7, v15, v18);
  }

  return v9;
}

uint64_t sub_2250E17F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2250E183C()
{
  result = qword_280D53458;
  if (!qword_280D53458)
  {
    sub_2250C7B40(&qword_27D719190, &qword_225444808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53458);
  }

  return result;
}

uint64_t sub_2250E18A0(uint64_t a1)
{
  result = sub_2250E17F0(&unk_280D54230, _s11DeviceCheckCMa);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2250E191C(unint64_t result)
{
  switch(result >> 62)
  {
    case 1uLL:
    case 2uLL:
      result &= 0x3FFFFFFFFFFFFFFFuLL;
      goto LABEL_3;
    case 3uLL:
      return result;
    default:
LABEL_3:
      result = result;
      break;
  }

  return result;
}

uint64_t sub_2250E194C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_225075264(v5);
  *v6 = v7;
  v8 = sub_225072C3C(v6);

  return sub_2250E0A54(v8, v9, v10, v4, v3);
}

uint64_t sub_2250E19F4()
{
  sub_225072C10();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2250E1AE4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_225075264(v5);
  *v6 = v7;
  v8 = sub_225072C3C(v6);

  return sub_2250DF904(v8, v9, v10, v4, v3);
}

void sub_2250E1B8C(unint64_t a1)
{
  switch(a1 >> 62)
  {
    case 1uLL:
    case 2uLL:
      a1 &= 0x3FFFFFFFFFFFFFFFuLL;
      goto LABEL_3;
    case 3uLL:
      return;
    default:
LABEL_3:

      break;
  }
}

uint64_t sub_2250E1BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250E1C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D719198, &qword_225445700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250E1C9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_225075264(v4);
  *v5 = v6;
  v7 = sub_225072C3C(v5);

  return sub_2250DEF10(v7, v8, v9, v3);
}

void sub_2250E1D44()
{
  sub_2250C88E8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  sub_22507CD44(v9);
  v11 = *(v10 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v12);
  v13 = sub_2250EBCD0();
  sub_2250DC5C8(v13, v14, &qword_27D7190D0, &qword_225445B10);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_22507C8E8(v0, 1, v15);

  if (v16 == 1)
  {
    sub_2250D4224(v0, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_22507E428(v15);
    (*(v17 + 8))(v0, v15);
  }

  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2250D4224(v6, &qword_27D7190D0, &qword_225445B10);
    sub_2250EBCC4();
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_2250EBCC4();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;

  swift_task_create();

  sub_2250D4224(v6, &qword_27D7190D0, &qword_225445B10);

LABEL_9:
  sub_2250C8920();
}

void sub_2250E1FF4()
{
  sub_2250C88E8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  sub_22507CD44(v9);
  v11 = *(v10 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v12);
  v13 = sub_2250EBCD0();
  sub_2250DC5C8(v13, v14, &qword_27D7190D0, &qword_225445B10);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_2250EBD3C(v15);

  if (v16 == 1)
  {
    sub_2250D4224(v0, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_22507E428(&qword_27D7190D0);
    (*(v17 + 8))(v0, &qword_27D7190D0);
  }

  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2250D4224(v6, &qword_27D7190D0, &qword_225445B10);
    sub_2250EBCC4();
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = v2;
    sub_2250B0DFC(&qword_27D7192A0, &qword_225445BB8);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_2250EBCC4();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;

  sub_2250B0DFC(&qword_27D7192A0, &qword_225445BB8);
  swift_task_create();

  sub_2250D4224(v6, &qword_27D7190D0, &qword_225445B10);

LABEL_9:
  sub_2250C8920();
}

uint64_t sub_2250E22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void sub_2250E22F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    sub_22507F210();

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_2250E235C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_2250E23E0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_2250E2460(uint64_t a1)
{
  v2 = sub_2250EB158();

  return MEMORY[0x28214D000](a1, v2);
}

uint64_t sub_2250E249C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSLogPrivacy();
  v4 = sub_22507CD44(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_225072C00();
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v7 = *(type metadata accessor for PropertyDescription() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_225444480;

  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v10;
}

uint64_t sub_2250E2600()
{
  sub_2250B0DFC(&unk_27D719000, &qword_225444F50);

  return swift_storeEnumTagMultiPayload();
}

void sub_2250E2650()
{
  sub_2250C88E8();
  v1 = v0;
  v43[1] = v2;
  v3 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507CD44(v3);
  v5 = *(v4 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v6);
  sub_2250981FC(v7);
  v43[0] = type metadata accessor for AnySessionConfiguration();
  v8 = sub_225072D1C(v43[0]);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_225072C00();
  v44 = (v14 - v13);
  v15 = sub_2250B0DFC(&qword_27D7192A8, &unk_225445BC8);
  sub_225072D1C(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v20);
  v22 = v43 - v21;
  v23 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v24 = sub_225072D1C(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v24);
  v31 = v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v43 - v32;
  if (*(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
    (*(v17 + 104))(v22, *MEMORY[0x277D85778], v15);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v17 + 8))(v22, v15);
    v34 = v44;
    (*(v10 + 16))(v44, v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_sessionConfiguration, v43[0]);
    v35 = v45;
    sub_2250DC5C8(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_previousInvalidationContext, v45, &unk_27D718E60, &unk_225444780);
    v36 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_testDeviceReferenceProtocol);
    sub_2250EB788(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account, v47);
    v37 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_applicationID);
    sub_2250EB788(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_systemInteraction, v46);
    (*(v26 + 16))(v31, v33, v23);
    v38 = _s15EncryptionCheckC5ActorCMa(0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v41 = sub_2250E30A8(v34, v35, v36, v47, v37, v46, v31);
    (*(v26 + 8))(v33, v23);
    v42 = *(v1 + 16);
    *(v1 + 16) = v41;

    sub_2250C8920();
  }
}

uint64_t sub_2250E29D4()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_sessionConfiguration;
  v3 = type metadata accessor for AnySessionConfiguration();
  sub_225072BF0(v3);
  (*(v4 + 8))(v0 + v2);
  sub_2250D4224(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_previousInvalidationContext, &unk_27D718E60, &unk_225444780);
  v5 = *(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account));

  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_systemInteraction));
  return v0;
}

uint64_t sub_2250E2A94()
{
  sub_2250E29D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2250E2B14()
{
  v0 = type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2250E5908(319, &qword_280D535E0, MEMORY[0x277CFAAE8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2250E2D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF18PCSIdentityWatcher_token;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_2250E2D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v10 = &v4[OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF18PCSIdentityWatcher_serviceName];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF18PCSIdentityWatcher_pcsIdentityChangedCallback];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_2250E2F0C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2250E3000()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_2250E30A8(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v8 = v7;
  v73 = a7;
  v74 = a6;
  v62 = a5;
  v75 = a4;
  v72 = a2;
  v11 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v58 - v13;
  v14 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v14);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AnySessionConfiguration();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v63 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v58 - v23;
  v25 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v58 - v27;
  v29 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v61 = &v58 - v31;
  v32 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v58 - v34;
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  v37 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  sub_22507C8C0(v8 + v36, 1, 1, v37);
  v38 = (v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID);
  *v38 = 0;
  v38[1] = 0;
  *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors) = MEMORY[0x277D84F98];
  v68 = v18;
  v69 = v17;
  v39 = *(v18 + 16);
  v59 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_sessionConfiguration;
  v60 = v39;
  v71 = a1;
  v39((v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_sessionConfiguration), a1, v17);
  v40 = a3;
  *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_testDeviceReferenceProtocol) = a3;
  sub_2250EB788(v75, v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_account);
  v41 = v62;
  *(v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_applicationID) = v62;
  sub_2250EB788(v74, v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_systemInteraction);
  v42 = *(v37 - 8);
  (*(v42 + 16))(v35, v73, v37);
  sub_22507C8C0(v35, 0, 1, v37);
  swift_beginAccess();
  v70 = v40;
  swift_unknownObjectRetain();
  v62 = v41;
  sub_2250EB718(v35, v8 + v36);
  swift_endAccess();
  sub_2250DC5C8(v72, v28, &unk_27D718E60, &unk_225444780);
  v43 = type metadata accessor for SessionInvalidationContext();
  if (sub_22507C8E8(v28, 1, v43) == 1)
  {
    sub_2250D4224(v28, &unk_27D718E60, &unk_225444780);
    v44 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    v45 = v61;
    sub_22507C8C0(v61, 1, 1, v44);
  }

  else
  {
    v45 = v61;
    SessionInvalidationContext.keySyncRequest.getter();
    (*(*(v43 - 8) + 8))(v28, v43);
  }

  sub_2250EBB20(v45, v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequest);
  v46 = v63;
  v47 = v69;
  v60(v63, v8 + v59, v69);
  AnySessionConfiguration.encryption.getter();
  v48 = *(v68 + 8);
  v48(v46, v47);
  v49 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v24, 1, v49) == 1)
  {
    sub_2250D4224(v24, &unk_27D7190E0, &unk_2254447D0);
  }

  else
  {
    v50 = v64;
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
    (*(*(v49 - 8) + 8))(v24, v49);
    v51 = AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
    v53 = v52;
    (*(v65 + 8))(v50, v66);
    if (v53)
    {
      v54 = (v8 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName);
      *v54 = v51;
      v54[1] = v53;
      v55 = type metadata accessor for TaskPriority();
      sub_22507C8C0(v67, 1, 1, v55);
      v56 = swift_allocObject();
      v56[2] = 0;
      v56[3] = 0;
      v56[4] = v8;

      sub_2250E1D44();
      swift_unknownObjectRelease();

      (*(v42 + 8))(v73, v37);
      sub_225073BF0(v74);
      sub_225073BF0(v75);
      sub_2250D4224(v72, &unk_27D718E60, &unk_225444780);
      v48(v71, v47);
      return v8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250E37F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225095DA4;

  return sub_2250E3CF8();
}

uint64_t sub_2250E3884()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  swift_beginAccess();
  if (!sub_22507C8E8(v1 + v7, 1, v2))
  {
    (*(v3 + 16))(v6, v1 + v7, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v6, v2);
  }

  v8 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_sessionConfiguration;
  v9 = type metadata accessor for AnySessionConfiguration();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_account));

  sub_2250D4224(v1 + v7, &qword_27D719288, &qword_225445B60);
  sub_2250D4224(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequest, &qword_27D7193C0, &qword_225445B38);
  v11 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID + 8);

  v12 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName + 8);

  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_systemInteraction));
  v13 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2250E3AD8()
{
  v0 = sub_2250E3884();

  return MEMORY[0x282200960](v0);
}

void sub_2250E3B5C()
{
  v0 = type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2250EA72C(319, &unk_280D534D0, &qword_27D719228, &qword_225445818, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2250E5908(319, &qword_280D535F0, MEMORY[0x277CFAAD8]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2250E3CF8()
{
  v1[5] = v0;
  v2 = *(*(sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E3DF0, v0, 0);
}

uint64_t sub_2250E3DF0()
{
  sub_22507CE94();
  v1 = v0[6];
  sub_2250DC5C8(v0[5] + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequest, v1, &qword_27D7193C0, &qword_225445B38);
  sub_22507F37C(v1);
  if (v2)
  {
    sub_2250D4224(v0[6], &qword_27D7193C0, &qword_225445B38);
  }

  else
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[5];
    (*(v4 + 32))(v3, v0[6], v0[7]);
    sub_2250E3F58(v3);
    v6 = *(v4 + 8);
    v7 = sub_22507CC80();
    v8(v7);
  }

  v9 = v0[5];
  v11 = *(v9 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName);
  v10 = *(v9 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName + 8);
  v12 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
  sub_2250EBD20();
  v13 = *(v9 + v12);

  v14 = sub_2250ACD24(v11, v10, v13);

  if (v14)
  {
  }

  else
  {
    v15 = v0[5];
    sub_2250E4888();
  }

  v16 = v0[9];
  v17 = v0[6];

  sub_225075274();

  return v18();
}

uint64_t sub_2250E3F58(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v11 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  swift_beginAccess();
  sub_2250DC5C8(v2 + v19, v10, &qword_27D719288, &qword_225445B60);
  if (sub_22507C8E8(v10, 1, v11) == 1)
  {
    sub_2250D4224(v10, &qword_27D719288, &qword_225445B60);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v20 = v41;
    v21 = SessionInvalidationContext.KeySyncRequest.serviceName.getter();
    v23 = v22;
    sub_2250EB788(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_account, v43);
    v24 = *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_applicationID);

    v25 = [v24 applicationBundleIdentifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v27;
    v40 = v26;

    v28 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    (*(*(v28 - 8) + 16))(v6, v20, v28);
    sub_22507C8C0(v6, 0, 1, v28);
    sub_2250EB788(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_systemInteraction, v42);
    (*(v12 + 16))(v16, v18, v11);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v21;
    v30[4] = v23;
    v31 = _s15EncryptionCheckC20ServiceIdentityActorCMa(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();

    v34 = sub_2250E595C(v21, v23, v43, v40, v39, v6, v42, v16, sub_2250EB930, v30);
    v35 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
    swift_beginAccess();

    v36 = *(v2 + v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = *(v2 + v35);
    sub_2251027D8(v34, v21, v23, isUniquelyReferenced_nonNull_native);
    *(v2 + v35) = v42[0];

    swift_endAccess();

    return (*(v12 + 8))(v18, v11);
  }

  return result;
}

uint64_t sub_2250E43C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a4;
  v15[8] = a5;

  sub_2250E1D44();
}

uint64_t sub_2250E44E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_2250E4510, 0, 0);
}

uint64_t sub_2250E4510()
{
  sub_225072C10();
  v1 = v0[5];
  sub_2250EBD20();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_2250E45E8;
    v4 = v0[7];
    v5 = sub_22507CCC8(v0[6]);

    return sub_2250E5004(v5, v6);
  }

  else
  {
    sub_225075274();

    return v8();
  }
}

uint64_t sub_2250E45E8()
{
  sub_22507CE94();
  v1 = *v0;
  v2 = *v0;
  sub_225072D68();
  *v3 = v2;
  v4 = v1[11];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[12] = v6;
  *v6 = v5;
  v6[1] = sub_2250E4744;
  v7 = v1[10];
  v8 = v1[9];
  v9 = sub_22507CCC8(v1[8]);

  return sub_2250E50A0(v9, v10);
}

uint64_t sub_2250E4744()
{
  sub_225072C10();
  sub_225075560();
  v2 = *(v1 + 96);
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2250E4830, 0, 0);
}

uint64_t sub_2250E4830()
{
  sub_225072C10();
  v1 = *(v0 + 80);

  sub_225075274();

  return v2();
}

uint64_t sub_2250E4888()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v36 - v4;
  v5 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  swift_beginAccess();
  sub_2250DC5C8(v1 + v17, v8, &qword_27D719288, &qword_225445B60);
  if (sub_22507C8E8(v8, 1, v9) == 1)
  {
    sub_2250D4224(v8, &qword_27D719288, &qword_225445B60);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    v18 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName);
    v19 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_primaryServiceName + 8);
    sub_2250EB788(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_account, v40);
    v20 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_applicationID);

    v21 = [v20 applicationBundleIdentifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v23;
    v37 = v22;

    v24 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    v25 = v38;
    sub_22507C8C0(v38, 1, 1, v24);
    sub_2250EB788(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_systemInteraction, v39);
    (*(v10 + 16))(v14, v16, v9);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v18;
    v27[4] = v19;
    v28 = _s15EncryptionCheckC20ServiceIdentityActorCMa(0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();

    v31 = sub_2250E595C(v18, v19, v40, v37, v36, v25, v39, v14, sub_2250EB7E8, v27);
    v32 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
    swift_beginAccess();

    v33 = *(v1 + v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = *(v1 + v32);
    sub_2251027D8(v31, v18, v19, isUniquelyReferenced_nonNull_native);
    *(v1 + v32) = v39[0];
    swift_endAccess();

    return (*(v10 + 8))(v16, v9);
  }

  return result;
}

uint64_t sub_2250E4CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;

  sub_2250E1D44();
}

uint64_t sub_2250E4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_2250E4DE8, 0, 0);
}

uint64_t sub_2250E4DE8()
{
  sub_225072C10();
  v1 = v0[5];
  sub_2250EBD20();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_2250E4EC0;
    v4 = v0[7];
    v5 = sub_22507CCC8(v0[6]);

    return sub_2250E50A0(v5, v6);
  }

  else
  {
    sub_225075274();

    return v8();
  }
}

uint64_t sub_2250E4EC0()
{
  sub_225072C10();
  sub_225075560();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2250E4FAC, 0, 0);
}

uint64_t sub_2250E4FAC()
{
  sub_225072C10();
  v1 = *(v0 + 64);

  sub_225075274();

  return v2();
}

uint64_t sub_2250E5004(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2250E5028, v2, 0);
}

uint64_t sub_2250E5028()
{
  sub_225072C10();
  v1 = v0[3];
  v2 = (v0[4] + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID);
  v3 = v2[1];
  *v2 = v0[2];
  v2[1] = v1;

  sub_225075274();

  return v4();
}

uint64_t sub_2250E50A0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2250E50C4, v2, 0);
}

uint64_t sub_2250E50C4()
{
  sub_22507E6E8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
  *(v0 + 64) = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_identityActors;
  swift_beginAccess();
  sub_2250EB1B4(v3, v1);
  swift_endAccess();

  v5 = *(v2 + v4);
  *(v0 + 72) = v5;
  v6 = *(v5 + 32);
  *(v0 + 104) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (((63 - v8) >> 6) - 1 == v12)
      {
        v13 = *(v0 + 56);
        v14 = *(v0 + 64);

        if (!*(*(v13 + v14) + 16))
        {
          v15 = *(v0 + 56);
          sub_2250E53A4();
        }

        sub_225075274();

        __asm { BRAA            X1, X16 }
      }

      v11 = v12 + 1;
      v9 = *(v10 + 8 * v12++ + 72);
    }

    while (!v9);
  }

  *(v0 + 80) = v9;
  *(v0 + 88) = v11;
  sub_22507CC8C(v10, v11);

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_2250E523C()
{
  sub_225072C10();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  sub_2250E5F9C();

  return MEMORY[0x2822009F8](sub_2250E52A4, v2, 0);
}

uint64_t sub_2250E52A4()
{
  sub_225072C10();
  v3 = *(v2 + 96);

  v7 = *(v2 + 88);
  v8 = (*(v2 + 80) - 1) & *(v2 + 80);
  if (v8)
  {
    v4 = *(v2 + 72);
LABEL_7:
    *(v2 + 80) = v8;
    *(v2 + 88) = v7;
    (sub_22507CC8C)(v4);
    v4 = v0;
    v5 = v1;
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v4 = *(v2 + 72);
      if (v9 >= (((1 << *(v2 + 104)) + 63) >> 6))
      {
        v10 = *(v2 + 56);
        v11 = *(v2 + 64);

        if (!*(*(v10 + v11) + 16))
        {
          v12 = *(v2 + 56);
          sub_2250E53A4();
        }

        sub_225075274();

        __asm { BRAA            X1, X16 }
      }

      v8 = *(v4 + 8 * v9 + 64);
      ++v7;
      if (v8)
      {
        v7 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2250E53A4()
{
  v1 = v0;
  v46 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v2 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v45 = (&v44 - v3);
  v4 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - v7;
  v8 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v49 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = sub_2250B0DFC(&qword_27D719290, &qword_225445B68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v48 = &v44 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v44 = v4;
    v28 = v5;
    v29 = v12;
    v30 = v1;
    v31 = v27;
    *v27 = 0;
    _os_log_impl(&dword_22506F000, v25, v26, "Requested identities have been acquired.", v27, 2u);
    v32 = v31;
    v1 = v30;
    v12 = v29;
    v5 = v28;
    v4 = v44;
    MEMORY[0x22AA65DF0](v32, -1, -1);
  }

  (*(v21 + 8))(v24, v20);
  v33 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID);
  v34 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_keySyncRequestIdentityPublicKeyID + 8);
  v35 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF5Actor_readinessSink;
  swift_beginAccess();
  sub_2250DC5C8(v1 + v35, v16, &qword_27D719288, &qword_225445B60);
  if (sub_22507C8E8(v16, 1, v4))
  {
    sub_2250D4224(v16, &qword_27D719288, &qword_225445B60);
    v36 = 1;
    v37 = v48;
  }

  else
  {
    v38 = v47;
    (*(v5 + 16))(v47, v16, v4);

    sub_2250D4224(v16, &qword_27D719288, &qword_225445B60);
    v39 = v45;
    *v45 = v33;
    v39[1] = v34;
    swift_storeEnumTagMultiPayload();
    v37 = v48;
    AsyncStream.Continuation.yield(_:)();
    (*(v5 + 8))(v38, v4);
    v36 = 0;
  }

  v40 = sub_2250B0DFC(&unk_27D719278, &unk_225445B50);
  sub_22507C8C0(v37, v36, 1, v40);
  sub_2250D4224(v37, &qword_27D719290, &qword_225445B68);
  v41 = v49;
  sub_2250DC5C8(v1 + v35, v49, &qword_27D719288, &qword_225445B60);
  if (sub_22507C8E8(v41, 1, v4))
  {
    sub_2250D4224(v41, &qword_27D719288, &qword_225445B60);
  }

  else
  {
    v42 = v47;
    (*(v5 + 16))(v47, v41, v4);
    sub_2250D4224(v41, &qword_27D719288, &qword_225445B60);
    AsyncStream.Continuation.finish()();
    (*(v5 + 8))(v42, v4);
  }

  sub_22507C8C0(v12, 1, 1, v4);
  swift_beginAccess();
  sub_2250EB718(v12, v1 + v35);
  return swift_endAccess();
}

void sub_2250E5908(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_2250E595C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a8;
  v36 = a3;
  v34 = a9;
  v18 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  swift_defaultActor_initialize();
  v22 = (v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID);
  *v22 = 0;
  v22[1] = 0;
  *(v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher) = 0;
  v23 = (v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID);
  *v23 = 0;
  v23[1] = 0;
  *(v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) = 0;
  v10[14] = a1;
  v10[15] = a2;
  sub_2250EB788(a3, (v10 + 16));
  v10[21] = a4;
  v10[22] = a5;
  v24 = a6;
  sub_2250DC5C8(a6, v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, &qword_27D7193C0, &qword_225445B38);
  sub_2250EB788(a7, v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction);
  v25 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_readinessSink;
  v26 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  v27 = *(v26 - 8);
  v28 = v35;
  (*(v27 + 16))(v10 + v25, v35, v26);
  v29 = (v10 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_completionCallback);
  *v29 = v34;
  v29[1] = a10;
  v30 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v21, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v10;

  sub_2250E1D44();

  (*(v27 + 8))(v28, v26);
  sub_225073BF0(a7);
  sub_2250D4224(v24, &qword_27D7193C0, &qword_225445B38);
  sub_225073BF0(v36);
  return v10;
}

uint64_t sub_2250E5BF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22507F4D4;

  return sub_2250E632C();
}

void *sub_2250E5C80()
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2250EA67C();
  v1 = v0[15];

  sub_225073BF0(v0 + 16);
  v2 = v0[22];

  v3 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_readinessSink;
  v4 = sub_2250B0DFC(&qword_27D719228, &qword_225445818);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_225073BF0((v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction));
  sub_2250D4224(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, &qword_27D7193C0, &qword_225445B38);
  v5 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_completionCallback + 8);

  v6 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8);

  v7 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2250E5DBC()
{
  v0 = sub_2250E5C80();

  return MEMORY[0x282200960](v0);
}

void sub_2250E5E40()
{
  sub_2250EA72C(319, &qword_280D534E0, &qword_27D718F08, &qword_225444868, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2250E5908(319, &qword_280D535F0, MEMORY[0x277CFAAD8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2250E5F9C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v26 - v13;
  switch(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state))
  {
    case 1:
    case 2:
      sub_2250DC5C8(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, v14, &qword_27D7193C0, &qword_225445B38);
      v15 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
      v16 = sub_22507C8E8(v14, 1, v15);
      result = sub_2250D4224(v14, &qword_27D7193C0, &qword_225445B38);
      if (v16 == 1)
      {
        goto LABEL_3;
      }

      break;
    case 3:
LABEL_3:
      CCLog.getter();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v27 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v27);
        _os_log_impl(&dword_22506F000, v17, v18, "Checking if identity for %s has become available", v19, 0xCu);
        sub_225073BF0(v20);
        MEMORY[0x22AA65DF0](v20, -1, -1);
        MEMORY[0x22AA65DF0](v19, -1, -1);
      }

      v21 = *(v3 + 8);
      v21(v9, v2);
      result = sub_2250E7C70();
      if (result)
      {
        CCLog.getter();

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v27 = v25;
          *v24 = 136315138;
          *(v24 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v27);
          _os_log_impl(&dword_22506F000, v22, v23, "Identity for %s has been acquired.", v24, 0xCu);
          sub_225073BF0(v25);
          MEMORY[0x22AA65DF0](v25, -1, -1);
          MEMORY[0x22AA65DF0](v24, -1, -1);
        }

        v21(v7, v2);
        result = sub_2250EA5D8();
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2250E632C()
{
  v1[2] = v0;
  v2 = *(*(sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E6424, v0, 0);
}

void sub_2250E6424()
{
  sub_225072C10();
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state))
  {
    __break(1u);
  }

  else
  {
    v2 = v0[3];
    sub_2250DC5C8(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, v2, &qword_27D7193C0, &qword_225445B38);
    sub_22507F37C(v2);
    if (v3)
    {
      sub_2250D4224(v0[3], &qword_27D7193C0, &qword_225445B38);
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v4[1] = sub_2250E670C;
      v5 = v0[2];

      sub_2250E7558();
    }

    else
    {
      (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_2250E6598;
      v7 = v0[2];
      v8 = sub_22507CCC8(v0[6]);

      sub_2250E682C(v8);
    }
  }
}

uint64_t sub_2250E6598()
{
  sub_225072C10();
  sub_225075560();
  v2 = *(v1 + 56);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_225072D68();
  *v5 = v4;

  v6 = sub_225098658();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2250E6690()
{
  sub_225072C10();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[6];
  v2 = v0[3];

  sub_225075274();

  return v3();
}

uint64_t sub_2250E670C()
{
  sub_225072C10();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;
  sub_225072D68();
  *v4 = v3;

  v5 = *(v1 + 48);
  v6 = *(v1 + 24);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_2250E682C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SaltedHash();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v12 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v2[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = sub_2250B0DFC(&unk_27D719278, &unk_225445B50);
  v2[16] = v14;
  v15 = *(v14 - 8);
  v2[17] = v15;
  v16 = *(v15 + 64) + 15;
  v2[18] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v2[19] = v17;
  v18 = *(v17 - 8);
  v2[20] = v18;
  v19 = *(v18 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E6AE0, v1, 0);
}

void sub_2250E6AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_2250957E4();
  a21 = v24;
  a22 = v25;
  sub_2250EBCAC();
  a20 = v22;
  v26 = v22[3];
  v27 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v26 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state))
  {
    __break(1u);
  }

  else
  {
    v28 = v22[25];
    CCLog.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v22[25];
    v33 = v22[19];
    v34 = v22[20];
    if (v31)
    {
      v61 = v22[25];
      v35 = v27;
      v36 = v22[3];
      v37 = sub_22507CA14();
      sub_225082610();
      sub_22509494C();
      *v37 = 136315138;
      v38 = *(v36 + 112);
      v39 = *(v36 + 120);
      v27 = v35;
      *(v37 + 4) = sub_225095AFC(v38, v39, &a11);
      sub_2250EBC9C();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      sub_225073BF0(v23);
      sub_22507C94C();
      sub_22507C97C();

      v45 = *(v34 + 8);
      v45(v61, v33);
    }

    else
    {

      v45 = *(v34 + 8);
      v45(v32, v33);
    }

    v22[26] = v45;
    v47 = v22[17];
    v46 = v22[18];
    v49 = v22[15];
    v48 = v22[16];
    v50 = v22[14];
    v51 = v22[3];
    *(v26 + v27) = 2;
    v52 = *MEMORY[0x277CFAA50];
    v53 = type metadata accessor for SessionReadinessError();
    sub_225072BF0(v53);
    (*(v54 + 104))(v49, v52);
    swift_storeEnumTagMultiPayload();
    sub_2250B0DFC(&qword_27D719228, &qword_225445818);
    sub_2250EBD7C();
    v55 = *(v47 + 8);
    v56 = sub_2250EBCB8();
    v57(v56);
    v58 = swift_task_alloc();
    v22[27] = v58;
    *v58 = v22;
    v58[1] = sub_2250E6D04;
    v59 = v22[3];
    sub_22508D008();

    sub_2250E8258();
  }
}

uint64_t sub_2250E6D04()
{
  sub_225072C10();
  sub_225075560();
  sub_225075614();
  *v2 = v1;
  v4 = *(v3 + 216);
  v5 = *(v3 + 24);
  v6 = *v0;
  sub_225072D68();
  *v7 = v6;
  *(v9 + 224) = v8;

  v10 = sub_225098658();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2250E6E00()
{
  v120 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 224) == 1)
  {
    v2 = (v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID);
    v3 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8);
    if (!v3)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v4 = *v2;
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 16);

    SessionInvalidationContext.KeySyncRequest.reason.getter();
    v9 = *(v7 + 88);
    v10 = sub_2250EBCB8();
    v12 = v11(v10);
    if (v12 == *MEMORY[0x277CFAAC0])
    {
      v13 = *(v0 + 104);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);

      v16 = *(v15 + 96);
      v17 = sub_22507F210();
      v18(v17);
      v19 = type metadata accessor for ServerDate();
      sub_225072BF0(v19);
      (*(v20 + 8))(v13);
LABEL_5:
      v21 = *(v0 + 176);
      v22 = *(v0 + 24);
      CCLog.getter();

      v23 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_2250EBD9C();
      v24 = sub_22509541C();
      v25 = *(v0 + 208);
      v26 = *(v0 + 176);
      v27 = *(v0 + 152);
      v28 = *(v0 + 160);
      if (v24)
      {
        v29 = v2;
        v30 = *(v0 + 24);
        v115 = *(v0 + 208);
        v31 = sub_22507CA14();
        v32 = sub_225082610();
        v119 = v32;
        *v31 = 136315138;
        v33 = *(v30 + 112);
        v34 = *(v30 + 120);
        v2 = v29;
        *(v31 + 4) = sub_225095AFC(v33, v34, &v119);
        sub_22507556C(&dword_22506F000, v35, v36, "User key sync successfully acquired an identity set for %s");
        sub_225073BF0(v32);
        sub_22507C97C();
        sub_22507C9FC();

        v37 = sub_22507CC80();
        v115(v37, v38);
      }

      else
      {

        v62 = sub_22507CC80();
        v25(v62);
      }

      goto LABEL_24;
    }

    v40 = v12;
    if (v12 != *MEMORY[0x277CFAAC8])
    {
      v63 = *MEMORY[0x277CFAAD0];

      if (v40 != v63)
      {
        v64 = *(v0 + 168);
        v66 = *(v0 + 40);
        v65 = *(v0 + 48);
        v68 = *(v0 + 24);
        v67 = *(v0 + 32);
        v69 = *(v0 + 16);
        CCLog.getter();
        (*(v66 + 16))(v65, v69, v67);

        v70 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        v71 = sub_225095778();
        v72 = *(v0 + 208);
        v73 = *(v0 + 168);
        v114 = *(v0 + 160);
        v74 = *(v0 + 152);
        if (v71)
        {
          v112 = *(v0 + 152);
          v75 = *(v0 + 96);
          v117 = v2;
          v76 = *(v0 + 80);
          v78 = *(v0 + 40);
          v77 = *(v0 + 48);
          v79 = *(v0 + 24);
          v109 = *(v0 + 32);
          sub_2250957CC();
          v119 = sub_225095700();
          *v72 = 136315394;
          SessionInvalidationContext.KeySyncRequest.reason.getter();
          v80 = String.init<A>(describing:)();
          v82 = v81;
          (*(v78 + 8))(v77, v109);
          v83 = sub_225095AFC(v80, v82, &v119);
          v2 = v117;

          *(v72 + 4) = v83;
          *(v72 + 12) = 2080;
          *(v72 + 14) = sub_225095AFC(*(v79 + 112), *(v79 + 120), &v119);
          sub_2250752E4(&dword_22506F000, v84, v85, "Unrecognized key sync request reason: %s. Proceeding anyway, since user key sync was successful for %s");
          sub_225082658();
          sub_22507C94C();
          sub_22507C97C();

          (v72)(v73, v112);
        }

        else
        {
          v91 = *(v0 + 40);
          v90 = *(v0 + 48);
          v92 = *(v0 + 32);

          v93 = sub_22507E440();
          v94(v93);
          (v72)(v73, v74);
        }

        (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
        goto LABEL_24;
      }

      goto LABEL_5;
    }

    v116 = v2;
    v41 = *(v0 + 104);
    v43 = *(v0 + 64);
    v42 = *(v0 + 72);
    v44 = *(v0 + 56);
    (*(*(v0 + 88) + 96))(v41, *(v0 + 80));
    (*(v43 + 32))(v42, v41, v44);
    sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_225444480;
    *(v45 + 32) = v4;
    *(v45 + 40) = v3;
    LOBYTE(v41) = SaltedHash.matches(_:)();

    v46 = *(v0 + 24);
    if (v41)
    {
      v47 = *(v0 + 192);
      CCLog.getter();

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      v50 = os_log_type_enabled(v48, v49);
      v51 = *(v0 + 208);
      v52 = *(v0 + 192);
      v54 = *(v0 + 152);
      v53 = *(v0 + 160);
      v56 = *(v0 + 64);
      v55 = *(v0 + 72);
      v57 = *(v0 + 56);
      if (v50)
      {
        v113 = *(v0 + 72);
        v58 = *(v0 + 24);
        sub_22507CA14();
        v111 = v57;
        v110 = v51;
        v59 = sub_225095854();
        v119 = v59;
        *v57 = 136315138;
        *(v57 + 4) = sub_225095AFC(*(v58 + 112), *(v58 + 120), &v119);
        v61 = "User key sync for %s did not yield an updated current identity. Proceeding anyway, but there is a good chance the issue has not been resolved.";
LABEL_19:
        sub_2250988F4(&dword_22506F000, v60, v49, v61);
        sub_225073BF0(v59);
        sub_22507C9FC();
        sub_22507C94C();

        v110(v52, v54);
        (*(v56 + 8))(v113, v111);
LABEL_21:
        v2 = v116;
LABEL_24:
        v95 = v2[1];
        v96 = (*(v0 + 24) + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID);
        v97 = v96[1];
        *v96 = *v2;
        v96[1] = v95;

        sub_2250EA5D8();
        goto LABEL_25;
      }
    }

    else
    {
      v86 = *(v0 + 184);
      CCLog.getter();

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      v87 = os_log_type_enabled(v48, v49);
      v51 = *(v0 + 208);
      v52 = *(v0 + 184);
      v54 = *(v0 + 152);
      v88 = *(v0 + 160);
      v56 = *(v0 + 64);
      v55 = *(v0 + 72);
      v57 = *(v0 + 56);
      if (v87)
      {
        v113 = *(v0 + 72);
        v89 = *(v0 + 24);
        sub_22507CA14();
        v111 = v57;
        v110 = v51;
        v59 = sub_225095854();
        v119 = v59;
        *v57 = 136315138;
        *(v57 + 4) = sub_225095AFC(*(v89 + 112), *(v89 + 120), &v119);
        v61 = "User key sync successfully acquired an identity set for %s";
        goto LABEL_19;
      }
    }

    v51(v52, v54);
    (*(v56 + 8))(v55, v57);
    goto LABEL_21;
  }

  sub_2250E7F08();
LABEL_25:
  v99 = *(v0 + 192);
  v98 = *(v0 + 200);
  v101 = *(v0 + 176);
  v100 = *(v0 + 184);
  v102 = *(v0 + 168);
  v103 = *(v0 + 144);
  v104 = *(v0 + 120);
  v106 = *(v0 + 96);
  v105 = *(v0 + 104);
  v107 = *(v0 + 72);
  v118 = *(v0 + 48);

  sub_225075274();

  return v108();
}

uint64_t sub_2250E7558()
{
  v1[2] = v0;
  v2 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_2250B0DFC(&unk_27D719278, &unk_225445B50);
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E76D4, v0, 0);
}

void sub_2250E76D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_2250957E4();
  a21 = v25;
  a22 = v26;
  sub_2250EBCAC();
  a20 = v22;
  v27 = v22[2];
  v28 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  v22[13] = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v27 + v28))
  {
    __break(1u);
  }

  else
  {
    v29 = sub_2250E7C70();
    v30 = v22[2];
    if (v29)
    {
      v31 = v22[12];
      CCLog.getter();

      v32 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      v33 = sub_22509541C();
      v34 = v22[12];
      v35 = v22[8];
      v36 = v22[9];
      if (v33)
      {
        v37 = v22[2];
        v38 = sub_22507CA14();
        v39 = sub_225082610();
        a11 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_225095AFC(*(v37 + 112), *(v37 + 120), &a11);
        sub_22507556C(&dword_22506F000, v40, v41, "Identity set for %s is available");
        sub_225073BF0(v39);
        sub_22507C97C();
        sub_22507C9FC();
      }

      v42 = *(v36 + 8);
      v43 = sub_22507CC80();
      v44(v43);
      v45 = v22[2];
      sub_2250EA5D8();
      sub_2250EBD5C();

      sub_225075274();
      sub_22508D008();

      v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      sub_2250EBDCC();

      v54 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_2250953E0();
      v55 = os_log_type_enabled(v54, v23);
      v56 = v22[11];
      v57 = v22[8];
      v58 = v22[9];
      if (v55)
      {
        v82 = v22[11];
        v59 = v22[2];
        v60 = sub_22507CA14();
        sub_225082610();
        sub_22509494C();
        *v60 = 136315138;
        *(v60 + 4) = sub_225095AFC(*(v59 + 112), *(v59 + 120), &a11);
        sub_2250EBC9C();
        _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
        sub_225073BF0(v24);
        sub_22507C94C();
        sub_22507C97C();

        v66 = *(v58 + 8);
        v66(v82, v57);
      }

      else
      {

        v66 = *(v58 + 8);
        v66(v56, v57);
      }

      v22[14] = v66;
      v68 = v22[6];
      v67 = v22[7];
      v70 = v22[4];
      v69 = v22[5];
      v72 = v22[2];
      v71 = v22[3];
      *(v27 + v28) = 2;
      v73 = *MEMORY[0x277CFAA50];
      v74 = type metadata accessor for SessionReadinessError();
      sub_225072BF0(v74);
      (*(v75 + 104))(v70, v73);
      swift_storeEnumTagMultiPayload();
      sub_2250B0DFC(&qword_27D719228, &qword_225445818);
      sub_2250EBD7C();
      v76 = *(v68 + 8);
      v77 = sub_2250EBCB8();
      v78(v77);
      v79 = swift_task_alloc();
      v22[15] = v79;
      *v79 = v22;
      v79[1] = sub_2250E79FC;
      v80 = v22[2];
      sub_22508D008();

      sub_2250E8258();
    }
  }
}

uint64_t sub_2250E79FC()
{
  sub_225072C10();
  sub_225075560();
  sub_225075614();
  *v2 = v1;
  v4 = *(v3 + 120);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_225072D68();
  *v7 = v6;
  *(v9 + 128) = v8;

  v10 = sub_225098658();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2250E7AF8()
{
  v19 = v0;
  if (*(v0 + 128) == 1)
  {
    if (*(*(v0 + 16) + *(v0 + 104)) != 4)
    {
      v1 = *(v0 + 80);
      CCLog.getter();

      v2 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_2250EBD9C();
      v3 = sub_22509541C();
      v4 = *(v0 + 112);
      v6 = *(v0 + 72);
      v5 = *(v0 + 80);
      v7 = *(v0 + 64);
      if (v3)
      {
        v8 = *(v0 + 16);
        v9 = sub_22507CA14();
        v10 = sub_225082610();
        v18 = v10;
        *v9 = 136315138;
        *(v9 + 4) = sub_225095AFC(*(v8 + 112), *(v8 + 120), &v18);
        sub_22507556C(&dword_22506F000, v11, v12, "Identity set for %s acquired via user key sync");
        sub_225073BF0(v10);
        sub_22507C97C();
        sub_22507C9FC();
      }

      v13 = sub_22507CC80();
      v4(v13);
      v14 = *(v0 + 16);
      sub_2250EA5D8();
    }
  }

  else
  {
    v15 = *(v0 + 16);
    sub_2250E7F08();
  }

  sub_2250EBD5C();

  sub_225075274();

  return v16();
}

BOOL sub_2250E7C70()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = (v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID);
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8))
  {
    return 1;
  }

  sub_225073BAC((v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction), *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction + 24));
  v5 = sub_2250EC6C8(v0 + 16, v0[14], v0[15]);
  v7 = v6;
  v8 = v3[1];
  *v3 = v5;
  v3[1] = v6;

  return v7 != 0;
}

void sub_2250E7F08()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = sub_2250B0DFC(&unk_27D719278, &unk_225445B50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) != 4)
  {
    v28 = v10;
    v29 = v7;
    v30 = v2;
    CCLog.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = v6;
      v20 = v19;
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v31);
      _os_log_impl(&dword_22506F000, v17, v18, "Waiting for identity change for %s", v20, 0xCu);
      sub_225073BF0(v21);
      MEMORY[0x22AA65DF0](v21, -1, -1);
      v22 = v20;
      v6 = v27;
      MEMORY[0x22AA65DF0](v22, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    *(v1 + v16) = 3;
    v23 = *MEMORY[0x277CFAA50];
    v24 = type metadata accessor for SessionReadinessError();
    (*(*(v24 - 8) + 104))(v5, v23, v24);
    swift_storeEnumTagMultiPayload();
    sub_2250B0DFC(&qword_27D719228, &qword_225445818);
    v25 = v28;
    AsyncStream.Continuation.yield(_:)();
    (*(v29 + 8))(v25, v6);
    sub_2250E9AC8();
  }
}

uint64_t sub_2250E8258()
{
  v1[2] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = *(*(sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v9 = *(*(sub_2250B0DFC(&unk_27D719260, &unk_225445B40) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v1[16] = v10;
  v11 = *(v10 - 8);
  v1[17] = v11;
  v12 = *(v11 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250E8488, v0, 0);
}

uint64_t sub_2250E8488()
{
  v121 = v0;
  v3 = v0[2];
  v4 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  v0[20] = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v3 + v4) == 4)
  {
    goto LABEL_2;
  }

  v8 = v0[15];
  v7 = v0[16];
  *(v3 + v4) = 1;
  v9 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction;
  v0[21] = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction;
  sub_225073BAC((v3 + v9), *(v3 + v9 + 24));
  v10 = v3[14];
  v0[22] = v10;
  v11 = v3[15];
  v0[23] = v11;
  sub_2250EBDE4((v3 + 16), v10, v11, v8);
  sub_22507F37C(v8);
  if (v12)
  {
    sub_2250D4224(v0[15], &unk_27D719260, &unk_225445B40);
  }

  else
  {
    v13 = v0[14];
    v14 = v0[2];
    (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
    sub_2250DC5C8(v14 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequest, v13, &qword_27D7193C0, &qword_225445B38);
    v15 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    v16 = sub_2250EBD3C(v15);
    v17 = v0[14];
    if (v16 == 1)
    {
      sub_2250D4224(v0[14], &qword_27D7193C0, &qword_225445B38);
      v18 = 20.0;
    }

    else
    {
      v19 = SessionInvalidationContext.KeySyncRequest.retryCount.getter();
      sub_22507E428(v14);
      (*(v20 + 8))(v17, v14);
      v18 = (v19 + 1.0) * 20.0;
    }

    v21 = v0[19];
    Date.timeIntervalSinceNow.getter();
    v23 = v18 - fabs(v22);
    if (v23 < 0.0)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v23;
    }

    v25 = v0[19];
    if (v24 > 0.0)
    {
      v27 = v0[17];
      v26 = v0[18];
      v28 = v0[16];
      v29 = v0[13];
      v30 = v0[2];
      CCLog.getter();
      (*(v27 + 16))(v26, v25, v28);

      v31 = Logger.logObject.getter();
      LOBYTE(v26) = static os_log_type_t.default.getter();

      v114 = v26;
      v32 = sub_22509541C();
      v33 = v0[17];
      v34 = v0[18];
      v35 = v0[16];
      v36 = v0[13];
      v37 = v0[7];
      v117 = v0[6];
      if (v32)
      {
        log = v31;
        v38 = v0[2];
        v113 = v0[13];
        v39 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *v39 = 136315906;
        v40 = sub_22507CC80();
        *(v39 + 4) = sub_225095AFC(v40, v41, v42);
        *(v39 + 12) = 2080;
        v43 = *(v38 + 160);
        sub_225073BAC(v3 + 16, *(v38 + 152));
        v44 = *(v43 + 8);
        v45 = sub_22507CC80();
        v47 = v46(v45);
        v49 = sub_225095AFC(v47, v48, &v120);

        *(v39 + 14) = v49;
        *(v39 + 22) = 2080;
        sub_2250EB0B8(&qword_27D719270, MEMORY[0x277CC9578]);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v53 = *(v33 + 8);
        v53(v34, v35);
        v54 = sub_225095AFC(v50, v52, &v120);

        *(v39 + 24) = v54;
        *(v39 + 32) = 2048;
        *(v39 + 34) = v24;
        _os_log_impl(&dword_22506F000, log, v114, "Last user key sync for %s and account %s was at %s. Will wait %f seconds before next sync.", v39, 0x2Au);
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507C9FC();

        v55 = *(v37 + 8);
        v55(v113, v117);
      }

      else
      {

        v53 = *(v33 + 8);
        v53(v34, v35);
        v55 = *(v37 + 8);
        v55(v36, v117);
      }

      v0[24] = v53;
      v0[25] = v55;
      v107 = v0[5];
      static Duration.seconds(_:)();
      static Clock<>.continuous.getter();
      v108 = swift_task_alloc();
      v0[26] = v108;
      *v108 = v0;
      v108[1] = sub_2250E8BE0;
      v109 = v0[5];
      sub_22507CC80();
      sub_2250EBCE8();

      __asm { BR              X5 }
    }

    (*(v0[17] + 8))(v0[19], v0[16]);
  }

  sub_225093434();
  if (v12)
  {
    v56 = v0[8];
    CCLog.getter();

    v57 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250953A8();
      v115 = v58;
      v118 = v59;
      v60 = v0[2];
      sub_2250957CC();
      v120 = sub_225095700();
      v65 = sub_225097510(4.8151e-34, v120, v61, v62, v63, v64);
      v66 = sub_225072DC8(v65);
      v68 = v67(v66);
      sub_225095AFC(v68, v69, &v120);
      sub_2250EBD08();
      *(v1 + 14) = v2;
      sub_2250752E4(&dword_22506F000, v70, v71, "Identity already acquired for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v11 + 8))(v118, v115);
    }

    else
    {
      v89 = v0[7];
      v88 = v0[8];
      v90 = v0[6];

      v91 = sub_22507E440();
      v92(v91);
    }

LABEL_2:
    sub_22507C998();

    sub_2250EBC8C();
    sub_2250EBCE8();

    __asm { BRAA            X2, X16 }
  }

  sub_2250EBDCC();

  v72 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_2250953E0();
  if (sub_225095778())
  {
    sub_2250EBC7C();
    v116 = v74;
    v119 = v75;
    v76 = v0[2];
    sub_2250957CC();
    v120 = sub_225095700();
    v81 = sub_225097510(4.8151e-34, v120, v77, v78, v79, v80);
    v82 = sub_225072DC8(v81);
    v84 = v83(v82);
    sub_225095AFC(v84, v85, &v120);
    sub_2250EBD08();
    *(v1 + 14) = v2;
    sub_2250752E4(&dword_22506F000, v86, v87, "Synchronizing user key registry for service %s and account %s");
    sub_225082658();
    sub_22507C94C();
    sub_22507C97C();

    (*(v11 + 8))(v119, v116);
  }

  else
  {
    v93 = v0[11];
    v94 = v0[6];
    v95 = v0[7];

    v96 = *(v95 + 8);
    v97 = sub_22507F210();
    v96(v97);
  }

  sub_22507E708();
  v98 = swift_task_alloc();
  v0[29] = v98;
  *v98 = v0;
  sub_22507CD80(v98);
  sub_2250EBCE8();

  return sub_2250EBF98(v99, v100, v101, v102, v103, v104);
}

uint64_t sub_2250E8BE0()
{
  sub_22507E6E8();
  v2 = *v1;
  sub_225075614();
  *v4 = v3;
  v5 = v2[26];
  v6 = v2[5];
  v7 = v2[4];
  v8 = v2[3];
  *v4 = *v1;
  *(v3 + 216) = v0;

  (*(v7 + 8))(v6, v8);
  v9 = v2[2];
  if (v0)
  {
    v10 = sub_2250E900C;
  }

  else
  {
    v10 = sub_2250E8D60;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2250E8D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2250957E4();
  sub_2250EBCAC();
  v18 = *(v15 + 136) + 8;
  (*(v15 + 192))(*(v15 + 152), *(v15 + 128));
  sub_225093434();
  if (v19)
  {
    v20 = *(v15 + 64);
    CCLog.getter();

    v21 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250953A8();
      sub_2250971CC();
      sub_225095700();
      sub_22509494C();
      v24 = sub_22508E740(4.8151e-34, v22, v23);
      v25 = sub_225072DC8(v24);
      v27 = v26(v25);
      sub_2250EBDB4(v27, v28, v29, v30);
      sub_2250EBD08();
      *(v16 + 14) = v17;
      sub_2250752E4(&dword_22506F000, v31, v32, "Identity already acquired for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v14 + 8))(a10, a9);
    }

    else
    {
      v47 = *(v15 + 56);
      v46 = *(v15 + 64);
      v48 = *(v15 + 48);

      v49 = sub_22507E440();
      v50(v49);
    }

    sub_22507C998();
    v74 = v51;

    sub_2250EBC8C();
    sub_22508D008();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, v74, a11, a12, a13, a14);
  }

  else
  {
    sub_2250EBDCC();

    v33 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250EBC7C();
      sub_2250971CC();
      sub_225095700();
      sub_22509494C();
      v37 = sub_22508E740(4.8151e-34, v35, v36);
      v38 = sub_225072DC8(v37);
      v40 = v39(v38);
      sub_2250EBDB4(v40, v41, v42, v43);
      sub_2250EBD08();
      *(v16 + 14) = v17;
      sub_2250752E4(&dword_22506F000, v44, v45, "Synchronizing user key registry for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v14 + 8))(a10, a9);
    }

    else
    {
      v61 = *(v15 + 88);
      v62 = *(v15 + 48);
      v63 = *(v15 + 56);

      v64 = *(v63 + 8);
      v65 = sub_22507F210();
      v64(v65);
    }

    sub_22507E708();
    v66 = swift_task_alloc();
    *(v15 + 232) = v66;
    *v66 = v15;
    sub_22507CD80(v66);
    sub_22508D008();

    return sub_2250EBF98(v67, v68, v69, v70, v71, v72);
  }
}

uint64_t sub_2250E900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2250957E4();
  sub_2250EBCAC();
  v15 = v14[27];
  v16 = v14[12];
  CCLog.getter();
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v14[27];
    v21 = sub_22507CA14();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v20;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_22506F000, v18, v19, "Waiting failed, proceeding with user key sync. Error: %@", v21, 0xCu);
    sub_2250D4224(v22, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  v25 = v14[27];
  v27 = v14[24];
  v26 = v14[25];
  v28 = v14[19];
  v29 = v14[16];
  v30 = v14[17];
  v31 = v14[12];
  v32 = v18;
  v34 = v14[6];
  v33 = v14[7];

  v26(v31, v34);
  v35 = sub_2250EBCB8();
  v27(v35);
  sub_225093434();
  if (v36)
  {
    v37 = v14[8];
    CCLog.getter();

    v38 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250953A8();
      sub_2250971CC();
      sub_225095700();
      sub_22509494C();
      v41 = sub_22508E740(4.8151e-34, v39, v40);
      v42 = sub_225072DC8(v41);
      v44 = v43(v42);
      sub_2250EBDB4(v44, v45, v46, v47);
      sub_2250EBD08();
      *(v34 + 14) = v27;
      sub_2250752E4(&dword_22506F000, v48, v49, "Identity already acquired for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v28 + 8))(a10, a9);
    }

    else
    {
      v64 = v14[7];
      v63 = v14[8];
      v65 = v14[6];

      v66 = sub_22507E440();
      v67(v66);
    }

    sub_22507C998();
    v91 = v68;

    sub_2250EBC8C();
    sub_22508D008();

    return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, v91, a11, a12, a13, a14);
  }

  else
  {
    sub_2250EBDCC();

    v50 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_2250953E0();
    if (sub_225095778())
    {
      sub_2250EBC7C();
      sub_2250971CC();
      sub_225095700();
      sub_22509494C();
      v54 = sub_22508E740(4.8151e-34, v52, v53);
      v55 = sub_225072DC8(v54);
      v57 = v56(v55);
      sub_2250EBDB4(v57, v58, v59, v60);
      sub_2250EBD08();
      *(v34 + 14) = v27;
      sub_2250752E4(&dword_22506F000, v61, v62, "Synchronizing user key registry for service %s and account %s");
      sub_225082658();
      sub_22507C94C();
      sub_22507C97C();

      (*(v28 + 8))(a10, a9);
    }

    else
    {
      v78 = v14[11];
      v79 = v14[6];
      v80 = v14[7];

      v81 = *(v80 + 8);
      v82 = sub_22507F210();
      v81(v82);
    }

    sub_22507E708();
    v83 = swift_task_alloc();
    v14[29] = v83;
    *v83 = v14;
    sub_22507CD80(v83);
    sub_22508D008();

    return sub_2250EBF98(v84, v85, v86, v87, v88, v89);
  }
}

uint64_t sub_2250E93BC()
{
  sub_22507E6E8();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  v7 = *(v4 + 232);
  *v6 = *v1;
  *(v5 + 240) = v0;

  v8 = *(v4 + 16);
  if (v0)
  {
    v9 = sub_2250E96C8;
  }

  else
  {
    *(v5 + 248) = v3;
    v9 = sub_2250E94EC;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2250E94EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_2250957E4();
  a21 = v25;
  a22 = v26;
  sub_2250EBCAC();
  a20 = v22;
  v27 = v22[31];
  v28 = v22[2];
  v29 = sub_2250E7C70();
  sub_2250E9A10(v27, v29);

  v30 = *(v22[2] + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8);
  if (!v30)
  {
    v31 = v22[9];
    CCLog.getter();

    v32 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_2250EBD9C();
    v33 = sub_22509541C();
    v34 = v22[28];
    if (v33)
    {
      a10 = v22[28];
      v36 = v22[22];
      v35 = v22[23];
      v56 = v22[9];
      v38 = v22[6];
      v37 = v22[7];
      sub_22507CA14();
      v39 = sub_225095854();
      a11 = v39;
      *v24 = 136315138;
      *(v24 + 4) = sub_225095AFC(v36, v35, &a11);
      sub_2250988F4(&dword_22506F000, v40, v23, "User key sync attempt did not acquire a current identity for %s");
      sub_225073BF0(v39);
      sub_22507C9FC();
      sub_22507C94C();

      a10(v56, v38);
    }

    else
    {
      v41 = v22[9];
      v42 = v22[6];
      v43 = v22[7];

      v44 = sub_22507CC80();
      v34(v44);
    }
  }

  sub_225097DE4();
  v57 = v45;

  v46 = v22[1];
  sub_22508D008();

  LODWORD(a10) = v30 != 0;
  return v49(v47, v48, v49, v50, v51, v52, v53, v54, v57, a10, a11, a12, a13, a14);
}

uint64_t sub_2250E96C8()
{
  v49 = v0;
  v3 = v0[30];
  v4 = v0[10];
  v5 = v0[2];
  CCLog.getter();

  v6 = v3;
  v7 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_2250953E0();

  v8 = os_log_type_enabled(v7, v1);
  v9 = v0[30];
  v10 = v0[28];
  if (v8)
  {
    v11 = v0[22];
    v12 = v0[23];
    v43 = v0[7];
    v44 = v0[6];
    v46 = v0[10];
    v13 = v0[28];
    v14 = sub_2250957CC();
    v15 = swift_slowAlloc();
    v2 = sub_225082610();
    v48 = v2;
    *v14 = 136315394;
    *(v14 + 4) = sub_225095AFC(v11, v12, &v48);
    *(v14 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    sub_2250EBC9C();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    sub_2250D4224(v15, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_225073BF0(v2);
    sub_22507C94C();
    sub_22507C97C();

    v13(v46, v44);
  }

  else
  {
    v23 = v0[10];
    v13 = v0[6];
    v24 = v0[7];

    v25 = sub_2250EBCB8();
    v10(v25);
  }

  v26 = *(v0[2] + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_currentIdentityPublicKeyID + 8);
  if (!v26)
  {
    v27 = v0[9];
    CCLog.getter();

    v28 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_2250EBD9C();
    v29 = sub_22509541C();
    v30 = v0[28];
    if (v29)
    {
      v47 = v0[28];
      v32 = v0[22];
      v31 = v0[23];
      v45 = v0[9];
      v34 = v0[6];
      v33 = v0[7];
      sub_22507CA14();
      v35 = sub_225095854();
      v48 = v35;
      *v2 = 136315138;
      *(v2 + 4) = sub_225095AFC(v32, v31, &v48);
      sub_2250988F4(&dword_22506F000, v36, v13, "User key sync attempt did not acquire a current identity for %s");
      sub_225073BF0(v35);
      sub_22507C9FC();
      sub_22507C94C();

      v47(v45, v34);
    }

    else
    {
      v37 = v0[9];
      v38 = v0[6];
      v39 = v0[7];

      v40 = sub_22507CC80();
      v30(v40);
    }
  }

  sub_225097DE4();

  v41 = v0[1];

  return v41(v26 != 0);
}

void sub_2250E9A10(void *a1, char a2)
{
  if (a1)
  {
    v3 = &off_27854DFC8;
    if ((a2 & 1) == 0)
    {
      v3 = &off_27854DFC0;
    }

    v4 = *v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = a1;
    sub_2250EB290(v5, v7, v8);
    [objc_opt_self() sendCoreAnalyticsEventForKeySync_];
  }
}

void sub_2250E9AC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v35 - v9;
  v11 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher;
  if (!*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher))
  {
    v36 = v8;
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = objc_allocWithZone(_s15EncryptionCheckC18PCSIdentityWatcherCMa(0));

    v16 = sub_2250E2D94(v13, v12, sub_2250EB1AC, v14);
    v17 = *(v1 + v11);
    *(v1 + v11) = v16;
    v18 = v16;

    CCLog.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v35[1] = v3;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35[0] = v18;
      v24 = v23;
      v37 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_225095AFC(v13, v12, &v37);
      _os_log_impl(&dword_22506F000, v19, v20, "Registering for identity update notifications for service %s", v22, 0xCu);
      sub_225073BF0(v24);
      v25 = v24;
      v18 = v35[0];
      MEMORY[0x22AA65DF0](v25, -1, -1);
      MEMORY[0x22AA65DF0](v22, -1, -1);
    }

    v26 = *(v3 + 8);
    v27 = v36;
    v26(v10, v36);
    sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_systemInteraction + 24));
    v28 = v18;
    sub_2250EB4E4(v28, v13, v12, (v1 + 128));

    if (sub_2250E7C70())
    {
      CCLog.getter();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v37 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_225095AFC(v13, v12, &v37);
        _os_log_impl(&dword_22506F000, v29, v30, "Identity for %s was acquired while registering for identity updates", v31, 0xCu);
        sub_225073BF0(v32);
        MEMORY[0x22AA65DF0](v32, -1, -1);
        MEMORY[0x22AA65DF0](v31, -1, -1);

        v33 = v36;
        v34 = v7;
      }

      else
      {

        v34 = v7;
        v33 = v27;
      }

      v26(v34, v33);
      sub_2250EA174();
    }
  }
}

uint64_t sub_2250E9E78(uint64_t a1, unint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    CCLog.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = a1;
      v18 = v17;
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_225095AFC(v23, a2, &v24);
      _os_log_impl(&dword_22506F000, v15, v16, "Received identity update notification for service %s", v18, 0xCu);
      sub_225073BF0(v19);
      MEMORY[0x22AA65DF0](v19, -1, -1);
      MEMORY[0x22AA65DF0](v18, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v20 = type metadata accessor for TaskPriority();
    sub_22507C8C0(v7, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v14;
    sub_2250E1D44();
  }

  return result;
}

uint64_t sub_2250EA11C()
{
  sub_225072C10();
  v1 = *(v0 + 16);
  sub_2250EA174();
  sub_225075274();

  return v2();
}

uint64_t sub_2250EA174()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34[-v9];
  result = MEMORY[0x28223BE20](v8);
  v13 = &v34[-v12];
  v14 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) != 4)
  {
    if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher))
    {
      CCLog.getter();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v35 = v16;
        v18 = v17;
        v36 = swift_slowAlloc();
        v38 = v36;
        *v18 = 136315394;
        *(v18 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v38);
        *(v18 + 12) = 2080;
        v37 = *(v1 + v14);
        v19 = String.init<A>(describing:)();
        v21 = v14;
        v22 = v3;
        v23 = sub_225095AFC(v19, v20, &v38);

        *(v18 + 14) = v23;
        v3 = v22;
        v14 = v21;
        _os_log_impl(&dword_22506F000, v15, v35, "Processing identity update for service %s in state %s", v18, 0x16u);
        v24 = v36;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v24, -1, -1);
        MEMORY[0x22AA65DF0](v18, -1, -1);
      }

      v25 = *(v3 + 8);
      v25(v13, v2);
      if (sub_2250E7C70())
      {
        return sub_2250EA5D8();
      }

      else
      {
        CCLog.getter();

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v38 = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v38);
          _os_log_impl(&dword_22506F000, v30, v31, "Unexpected: Received identity update notification for %s, but there is still no current identity.", v32, 0xCu);
          sub_225073BF0(v33);
          MEMORY[0x22AA65DF0](v33, -1, -1);
          MEMORY[0x22AA65DF0](v32, -1, -1);
        }

        result = (v25)(v10, v2);
        *(v1 + v14) = 3;
      }
    }

    else
    {
      CCLog.getter();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_225095AFC(*(v1 + 112), *(v1 + 120), &v38);
        _os_log_impl(&dword_22506F000, v26, v27, "Received identity update for %s when we are no longer registered for identity updates. Ignoring", v28, 0xCu);
        sub_225073BF0(v29);
        MEMORY[0x22AA65DF0](v29, -1, -1);
        MEMORY[0x22AA65DF0](v28, -1, -1);
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_2250EA5D8()
{
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) != 4)
  {
    *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_state) = 4;
    sub_2250EA67C();
    v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_completionCallback);
    v1 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_completionCallback + 8);
    v3 = v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID;
    v4 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_keySyncRequestIdentityPublicKeyID);
    v5 = *(v3 + 8);

    v2(v4, v5);
  }

  return result;
}

void sub_2250EA67C()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher;
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheckP33_AE58FEBB3FEC26C4F883E25FBBA159FF20ServiceIdentityActor_identityWatcher);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedNotifier];
    [v5 unregisterIdentityChangeWatcher_];

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_2250EA72C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2250C7B40(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t _s15EncryptionCheckC20ServiceIdentityActorC13IdentityStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s15EncryptionCheckC20ServiceIdentityActorC13IdentityStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2250EA908()
{
  result = qword_27D719230;
  if (!qword_27D719230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719230);
  }

  return result;
}

unint64_t sub_2250EA960()
{
  result = qword_27D719238;
  if (!qword_27D719238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719238);
  }

  return result;
}

uint64_t sub_2250EA9FC()
{
  v1 = *v0;
  sub_2250EB0B8(&unk_280D54858, _s15EncryptionCheckCMa);
  return PropertyDescribable<>.description.getter();
}

void sub_2250EAA60()
{
  sub_2250C88E8();
  v1 = v0;
  v51 = type metadata accessor for PropertyDescription();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v51);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - v6;
  v7 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507CD44(v7);
  v9 = *(v8 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for SessionInvalidationContext();
  v14 = sub_225072D1C(v13);
  v46 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_225072C00();
  sub_2250981FC(v18);
  v19 = type metadata accessor for OSLogPrivacy();
  v20 = sub_22507CD44(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v23 = *(v2 + 72);
  v50 = v2;
  v24 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v44 = v24 + 3 * v23;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_225444490;
  v48 = v24;
  v26 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v26;
  sub_225073808(v52);
  sub_22507E428(v26);
  (*(v27 + 16))();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v29 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account + 24);
  v28 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account + 32);
  sub_225073BAC((v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account), v29);
  v30 = (*(v28 + 8))(v29, v28);
  ObjectType = MEMORY[0x277D837D0];
  v52[0] = v30;
  v52[1] = v31;
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v32 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_applicationID);
  ObjectType = sub_2250C7F8C(0, &qword_27D719248, off_278543978);
  v52[0] = v32;
  v33 = v32;
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  sub_2250DC5C8(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_previousInvalidationContext, v12, &unk_27D718E60, &unk_225444780);
  if (sub_22507C8E8(v12, 1, v13) == 1)
  {
    sub_2250D4224(v12, &unk_27D718E60, &unk_225444780);
    v35 = v50;
    v34 = v51;
  }

  else
  {
    v37 = v45;
    v36 = v46;
    (*(v46 + 32))(v45, v12, v13);
    ObjectType = v13;
    v38 = sub_225073808(v52);
    (*(v36 + 16))(v38, v37, v13);
    static OSLogPrivacy.auto.getter();
    v39 = v47;
    PropertyDescription.init(_:_:privacy:)();
    v25 = sub_2250C7388();
    (*(v36 + 8))(v37, v13);
    *(v25 + 16) = 4;
    v35 = v50;
    v34 = v51;
    (*(v50 + 32))(v25 + v44, v39, v51);
  }

  v40 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_testDeviceReferenceProtocol);
  if (v40)
  {
    v41 = *(v1 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_testDeviceReferenceProtocol);
    ObjectType = swift_getObjectType();
    v52[0] = v40;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v42 = v49;
    PropertyDescription.init(_:_:privacy:)();
    v43 = *(v25 + 16);
    if (v43 >= *(v25 + 24) >> 1)
    {
      v25 = sub_2250C7388();
    }

    swift_unknownObjectRelease();
    *(v25 + 16) = v43 + 1;
    (*(v35 + 32))(v25 + v48 + v43 * v23, v42, v34);
  }

  sub_2250C8920();
}

unint64_t sub_2250EAFFC()
{
  result = qword_280D53478;
  if (!qword_280D53478)
  {
    sub_2250C7B40(&qword_27D719240, &qword_225444878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53478);
  }

  return result;
}

uint64_t sub_2250EB060(uint64_t a1)
{
  result = sub_2250EB0B8(&unk_280D54840, _s15EncryptionCheckCMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2250EB0B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2250EB104()
{
  result = qword_280D53718;
  if (!qword_280D53718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53718);
  }

  return result;
}

unint64_t sub_2250EB158()
{
  result = qword_280D53720;
  if (!qword_280D53720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53720);
  }

  return result;
}

uint64_t sub_2250EB1B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_22507DF9C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v10 = *(*v3 + 24);
  sub_2250B0DFC(&qword_27D719298, &qword_225445B70);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(*(v14 + 48) + 16 * v7 + 8);

  v12 = *(*(v14 + 56) + 8 * v7);
  _s15EncryptionCheckC20ServiceIdentityActorCMa(0);
  _NativeDictionary._delete(at:)();
  *v3 = v14;
  return v12;
}

void sub_2250EB290(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x22AA62D80]();

  [a3 setOverallResult_];
}

uint64_t sub_2250EB2F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2250EB3E8;

  return v6(v2 + 32);
}

uint64_t sub_2250EB3E8()
{
  sub_225072C10();
  sub_225075560();
  v2 = v1;
  sub_225075614();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_225072D68();
  *v8 = v7;

  *v6 = *(v2 + 32);
  sub_225075274();

  return v9();
}

void sub_2250EB4E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2250EB788(a4, &v12);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250C7F8C(0, &qword_280D53450, off_278543938);
  if (swift_dynamicCast())
  {
    v8 = [objc_opt_self() sharedNotifier];
    v9 = MEMORY[0x22AA62D80](a2, a3);
    [v8 registerIdentityChangeWatcher:a1 service:v9 account:v11];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v12 = 0xD000000000000019;
    v13 = 0x800000022547A4C0;
    sub_225073BAC(a4, a4[3]);
    swift_getDynamicType();
    v10 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v10);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_2250EB688()
{
  sub_22507CE94();
  sub_2250971A4();
  v1 = swift_task_alloc();
  v2 = sub_225075264(v1);
  *v2 = v3;
  v4 = sub_225072C3C(v2);

  return sub_2250EA0FC(v4, v5, v6, v0);
}

uint64_t sub_2250EB718(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D719288, &qword_225445B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250EB788(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_22507E428(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_2250EB7F4()
{
  sub_22507CE94();
  sub_2250971A4();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  sub_225072C3C(v1);

  return sub_2250E5BF0();
}

uint64_t sub_2250EB884()
{
  sub_22507E6E8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_225075264(v6);
  *v7 = v8;
  v9 = sub_225072C3C(v7);

  return sub_2250E4DC4(v9, v10, v11, v3, v4, v5);
}

uint64_t sub_2250EB93C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  v9 = sub_225075264(v8);
  *v9 = v10;
  v11 = sub_225072C3C(v9);

  return sub_2250E44E8(v11, v12, v13, v3, v4, v5, v6, v7);
}

uint64_t sub_2250EBA00()
{
  sub_22507CE94();
  sub_225093448();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v3 = sub_22507F35C(v1);

  return v4(v3);
}

uint64_t sub_2250EBA90()
{
  sub_22507CE94();
  sub_225093448();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v3 = sub_22507F35C(v1);

  return v4(v3);
}

uint64_t sub_2250EBB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250EBB90(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_2250EBBE8()
{
  sub_22507CE94();
  sub_2250971A4();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  sub_225072C3C(v1);

  return sub_2250E37F4();
}

void sub_2250EBC7C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
}

uint64_t sub_2250EBD08()
{
}

uint64_t sub_2250EBD20()
{

  return swift_beginAccess();
}

uint64_t sub_2250EBD3C(uint64_t a1)
{

  return sub_22507C8E8(v1, 1, a1);
}

uint64_t sub_2250EBD5C()
{
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[4];
}

uint64_t sub_2250EBD7C()
{

  return AsyncStream.Continuation.yield(_:)();
}

uint64_t sub_2250EBD9C()
{
}

uint64_t sub_2250EBDB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_225095AFC(a1, a2, va);
}

uint64_t sub_2250EBDCC()
{
  v2 = *(v0 + 88);

  return CCLog.getter();
}

uint64_t sub_2250EBDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_2250D4724(a1, &v21);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  v6 = v20;
  v8 = [objc_opt_self() sharedManager];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_2250EC914(v20);
  if (!v11)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    sub_225072E08();
    v21 = v18;
    v22 = v17;
    sub_225073BAC(v6, v6[3]);
    swift_getDynamicType();
    v19 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v19);

    sub_22507CDBC();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v12 = sub_2250EC990(v10, v11, a2, a3, v9);
  if (v12)
  {
    v13 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
    v9 = v13;
  }

  else
  {

    v14 = 1;
  }

  v15 = type metadata accessor for Date();
  return sub_22507C8C0(a4, v14, 1, v15);
}

uint64_t sub_2250EBF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = sub_2250B0DFC(&qword_27D7192B0, &unk_225445C30);
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v9 = *(v8 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250EC06C, 0, 0);
}

uint64_t sub_2250EC06C()
{
  sub_2250D4724(v0[29], (v0 + 18));
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (!swift_dynamicCast())
  {
    v11 = v0[29];
    _StringGuts.grow(_:)(27);

    sub_225072E08();
    sub_225073BAC(v11, v11[3]);
    swift_getDynamicType();
    v12 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v12);

    sub_22507CDBC();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = v0[23];
  v0[34] = v1;
  v2 = [objc_opt_self() sharedManager];
  v0[35] = v2;
  if (v2)
  {
    v18 = v2;
    v4 = v0[27];
    v3 = v0[28];
    v17 = MEMORY[0x22AA62D80](v0[25], v0[26]);
    v0[36] = v17;
    v16 = MEMORY[0x22AA62D80](v4, v3);
    v0[37] = v16;
    v2 = sub_2250EC914(v1);
    if (v5)
    {
      v6 = v0[32];
      v7 = v0[33];
      v8 = v0[31];
      v15 = v0[30];
      v9 = MEMORY[0x22AA62D80](v2);
      v0[38] = v9;

      v14 = [v1 accountType];
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_2250EC3D4;
      swift_continuation_init();
      v0[17] = v8;
      v10 = sub_225073808(v0 + 14);
      sub_2250B0DFC(&qword_27D7192B8, &unk_225445C40);
      sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
      CheckedContinuation.init(continuation:function:)();
      (*(v6 + 32))(v10, v7, v8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2250EC624;
      v0[13] = &unk_28385B210;
      [v18 syncUserKeysForSessionAcquisitionWithService:v17 bundleID:v16 accountDSID:v9 accountType:v14 testOverrideProvider:v15 completionHandler:?];
      (*(v6 + 8))(v10, v8);
      v2 = v0 + 2;

      return MEMORY[0x282200938](v2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return MEMORY[0x282200938](v2);
}

uint64_t sub_2250EC3D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_2250EC580;
  }

  else
  {
    v3 = sub_2250EC4E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2250EC4E4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);

  v6 = *(v0 + 192);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_2250EC580()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[39];

  return v8();
}

void sub_2250EC624(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v7 = a2;
    sub_2250ED7BC(v5, v7);
  }

  else
  {
    v6 = a3;

    sub_2250ED8FC();
  }
}

uint64_t sub_2250EC6C8(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_2250D4724(a1, &v18);
  sub_2250B0DFC(&unk_27D719250, &qword_225445448);
  sub_2250DC584();
  if (swift_dynamicCast())
  {
    v6 = objc_opt_self();
    v18 = 0;
    v7 = v17;
    v8 = sub_2250EC8A4(v17, a2, a3, &v18, v6);

    v9 = v18;
    if (v8)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v9;
    }

    else
    {
      v10 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v12 = *MEMORY[0x277D85DE8];
    return v10;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    sub_225072E08();
    v18 = v15;
    v19 = v14;
    sub_225073BAC(a1, a1[3]);
    swift_getDynamicType();
    v16 = _typeName(_:qualified:)();
    MEMORY[0x22AA62E50](v16);

    sub_22507CDBC();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_2250EC8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x22AA62D80](a2, a3);
  v9 = [a5 currentIdentityPublicKeyIDForAccount:a1 serviceName:v8 error:a4];

  return v9;
}

uint64_t sub_2250EC914(void *a1)
{
  v1 = [a1 dsid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_2250EC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x22AA62D80]();

  v9 = MEMORY[0x22AA62D80](a3, a4);
  v10 = [a5 lastUserKeySyncCompletionDateForAccountDSID:v8 service:v9];

  return v10;
}

uint64_t sub_2250ECA2C()
{
  sub_2250B0DFC(&qword_27D719330, &unk_225445D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2254444A0;
  v1 = _s11DeviceCheckCMa(0);
  v2 = sub_2250ED5FC(&unk_280D54230, _s11DeviceCheckCMa);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = _s12AccountCheckCMa(0);
  v4 = sub_2250ED5FC(&qword_280D53E50, _s12AccountCheckCMa);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = _s15EncryptionCheckCMa(0);
  v6 = sub_2250ED5FC(&unk_280D54840, _s15EncryptionCheckCMa);
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = _s17DataSecurityCheckCMa(0);
  v8 = sub_2250ED5FC(&qword_280D544D0, _s17DataSecurityCheckCMa);
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  sub_2250ECBB4(inited);
  return swift_setDeallocating();
}

uint64_t sub_2250ECBB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = v44 - v6;
  v7 = type metadata accessor for SaltedHash();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44[1] = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionInvalidationContext();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = v44 - v14;
  v15 = type metadata accessor for SessionReadinessError();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v44[0] = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v50 = v44 - v19;
  v53 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v20 = *(*(v53 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v53);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v26 = v44 - v25;
  v27 = *(a1 + 16);
  v28 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionConfiguration;
  v29 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_testDeviceReferenceProtocol;
  v54 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionAcquiredInfo;
  v30 = a1 + 40;
  v31 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_entitlements;
  if (v27)
  {
    while (1)
    {
      v32 = *(v30 - 8);
      (*(*v30 + 32))(v2 + v28, *(v2 + v29), v2 + v54, v2 + v31);
      sub_2250ED644(v26, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      result = sub_2250ED6B4(v26);
      v30 += 16;
      if (!--v27)
      {
        return result;
      }
    }

    (*(v51 + 32))(v50, v23, v52);
    sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_225444480;
    v34 = *(v2 + OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_deviceID + 8);
    *(v33 + 32) = *(v2 + OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_deviceID);
    *(v33 + 40) = v34;

    SaltedHash.init(_:)();
    v53 = AnySessionAcquiredInfo.serviceName.getter();
    AnySessionAcquiredInfo.privilegedInfoHash.getter();
    AnySessionAcquiredInfo.userPersonaUniqueString.getter();
    v35 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
    sub_22507C8C0(v46, 1, 1, v35);
    v36 = v47;
    SessionInvalidationContext.init(deviceIDHash:primaryServiceName:privilegedInfoHash:userPersonaUniqueString:keySyncRequest:)();
    v38 = v50;
    v37 = v51;
    v39 = v52;
    (*(v51 + 16))(v44[0], v50, v52);
    v41 = v48;
    v40 = v49;
    (*(v48 + 16))(v45, v36, v49);
    v42 = related decl 'e' for CKUnderlyingErrorCode.init(sessionReadinessError:invalidationContext:)();
    v43 = _convertErrorToNSError(_:)();

    [v43 CKClientSuitableError];
    swift_willThrow();
    (*(v41 + 8))(v36, v40);
    (*(v37 + 8))(v38, v39);
    return sub_2250ED6B4(v26);
  }

  return result;
}

uint64_t type metadata accessor for CKDSessionValidator()
{
  result = qword_280D53730;
  if (!qword_280D53730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2250ED290()
{
  result = type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AnySessionAcquiredInfo();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2250ED3C0()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v3 = *(type metadata accessor for PropertyDescription() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_225444470;
  v7 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionConfiguration;
  v8 = type metadata accessor for AnySessionConfiguration();
  v15 = v8;
  v9 = sub_225073808(v14);
  (*(*(v8 - 8) + 16))(v9, v0 + v7, v8);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v10 = OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionAcquiredInfo;
  v11 = type metadata accessor for AnySessionAcquiredInfo();
  v15 = v11;
  v12 = sub_225073808(v14);
  (*(*(v11 - 8) + 16))(v12, v0 + v10, v11);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v6;
}