uint64_t sub_2250ED5FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2250ED644(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250ED6B4(uint64_t a1)
{
  v2 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2250ED728()
{
  result = qword_280D53640;
  if (!qword_280D53640)
  {
    type metadata accessor for Entitlements.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53640);
  }

  return result;
}

void sub_2250ED984(uint64_t a1, void *a2)
{
  v3 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    sub_2250ED7D0(v3, v4, &unk_27D718F60, &unk_225444928);
  }

  else
  {

    sub_2250ED948();
  }
}

uint64_t sub_2250EDA40()
{
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = Strong;
  v4 = [Strong processScopedClientProxy];
  v5 = [v4 clientEntitlements];

  LODWORD(v4) = [v5 hasSPIEntitlement];
  if (v4)
  {
    v6 = [objc_opt_self() sharedManager];
    v7 = [v6 globalDeviceIdentifier];

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

LABEL_10:
      v17 = *(v0 + 8);

      return v17(v8, v10);
    }

LABEL_9:
    v8 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  _StringGuts.grow(_:)(50);

  v11 = [v3 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  MEMORY[0x22AA62E50](v12, v14);

  MEMORY[0x22AA62E50](0xD000000000000025, 0x800000022547AFD0);
  related decl 'e' for CKErrorCode.init(_:description:)();
  swift_willThrow();

  sub_225075274();

  return v15();
}

uint64_t sub_2250EDCF8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2250EDDA0;

  return sub_2250EDA20();
}

uint64_t sub_2250EDDA0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_225075560();
  v8 = v7;
  sub_225075614();
  *v9 = v8;
  v11 = *(v10 + 32);
  v12 = *(v10 + 16);
  v13 = *v3;
  sub_225072D68();
  *v14 = v13;

  if (v4)
  {
    a2 = _convertErrorToNSError(_:)();

    v15 = 0;
    v16 = a2;
  }

  else if (a2)
  {
    v15 = MEMORY[0x22AA62D80](a1, a2);

    a2 = 0;
    v16 = v15;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = *(v8 + 24);
  v17[2](v17, v15, a2);

  _Block_release(v17);
  sub_225075274();

  return v18();
}

uint64_t sub_2250EDF30()
{
  sub_225072C10();
  v0[21] = v1;
  v0[22] = v2;
  v0[19] = v3;
  v0[20] = v4;
  v0[18] = v5;
  v6 = sub_2250B0DFC(&unk_27D718F60, &unk_225444928);
  v0[23] = v6;
  v7 = *(v6 - 8);
  v0[24] = v7;
  v8 = *(v7 + 64) + 15;
  v0[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250EE000, 0, 0);
}

uint64_t sub_2250EE000()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v7 = v1[21];
  v6 = v1[22];
  v8 = v1[19];
  v9 = v1[20];
  v10 = v1[18];
  v16 = objc_opt_self();
  v15 = MEMORY[0x22AA62D80](v10, v8);
  v1[26] = v15;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[27] = isa;
  v12 = MEMORY[0x22AA62D80](v7, v6);
  v1[28] = v12;
  v1[2] = v1;
  v1[3] = sub_2250EE228;
  swift_continuation_init();
  v1[17] = v5;
  v13 = sub_225073808(v1 + 14);
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  CheckedContinuation.init(continuation:function:)();
  (*(v3 + 32))(v13, v4, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2250ED984;
  v1[13] = &unk_28385B2A8;
  [v16 reportWithEventType:v15 event:isa bundleIdentifier:v12 completionHandler:?];
  (*(v3 + 8))(v13, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2250EE228()
{
  sub_225072C10();
  sub_225075560();
  sub_225075614();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = sub_2250EE3A8;
  }

  else
  {
    v5 = sub_2250EE32C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2250EE32C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);

  sub_225075274();

  return v4();
}

uint64_t sub_2250EE3A8()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  swift_willThrow();

  sub_225075274();
  v7 = v0[29];

  return v6();
}

uint64_t sub_2250EE4D8(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v7;
  v5[5] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v8;
  v9 = a5;
  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = sub_2250EE60C;

  return sub_2250EDF30();
}

uint64_t sub_2250EE60C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_225072D68();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[6];
  v8 = v3[5];
  v9 = v3[4];
  v10 = v3[2];
  v11 = *v1;
  *v5 = *v1;

  v12 = v3[3];
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(v3[3], 0);
  }

  _Block_release(v4[3]);
  v14 = v11[1];

  return v14();
}

uint64_t sub_2250EE7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2250EE81C, 0, 0);
}

uint64_t sub_2250EE81C()
{
  sub_225072C10();
  type metadata accessor for CKSymptomDiagnosticsReporter();
  v0[12] = CKSymptomDiagnosticsReporter.__allocating_init()();
  v1 = *(MEMORY[0x277CBBDF8] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_2250EE8E0;
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];
  v13 = v0[10];
  v14 = v0[11];

  return MEMORY[0x28210DDC8](v10, v9, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_2250EE8E0()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_225075614();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);

    sub_225075274();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2250EEA04, 0, 0);
}

uint64_t sub_2250EEA04()
{
  sub_225072C10();
  v1 = *(v0 + 96);

  sub_225075274();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_2250EEB50(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7, int a8, char a9)
{
  v9[2] = a7;
  v9[3] = _Block_copy(aBlock);
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v9[4] = v14;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v9[5] = v16;
  if (a3)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v27 = 0;
    v19 = 0;
  }

  v9[6] = v19;
  if (a4)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v21;
  }

  else
  {
    v20 = 0;
  }

  v9[7] = a4;
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v9[8] = v23;
  v24 = a7;
  v25 = swift_task_alloc();
  v9[9] = v25;
  *v25 = v9;
  v25[1] = sub_2250EECDC;

  return sub_2250EE7E4(v29, v15, v28, v17, v27, v19, v20, a4);
}

uint64_t sub_2250EECDC()
{
  sub_225075560();
  v3 = v2;
  sub_225075614();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = v5[6];
  v10 = v5[5];
  v11 = v5[4];
  v12 = v5[3];
  v13 = v5[2];
  v14 = *v1;
  sub_225072D68();
  *v15 = v14;

  if (v0)
  {
    if (v12)
    {
      v16 = *(v3 + 24);
      v17 = _convertErrorToNSError(_:)();

      (v16)[2](v16, v17);
      _Block_release(v16);
    }

    else
    {
    }
  }

  else if (v12)
  {
    v18 = *(v3 + 24);
    v18[2](v18, 0);
    _Block_release(v18);
  }

  sub_225075274();

  return v19();
}

uint64_t sub_2250EEF4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_225095DA4;
  v10 = sub_22507F498();

  return v11(v10);
}

uint64_t sub_2250EF018()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22507F4D4;
  v8 = sub_22507F498();

  return v9(v8);
}

uint64_t sub_2250EF0E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225095DA4;

  return sub_2250EDCF8(v2, v3);
}

void sub_2250EF194(SEL *a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = [v5 options];
  v12 = [v11 isCloudCoreSession];

  if (v12)
  {
    v13 = [v5 options];
    v14 = [v13 *a1];

    if (!v14)
    {
      __break(1u);
      return;
    }

    a2(0);
    sub_225093454();
    swift_dynamicCastClassUnconditional();
    a3();
    swift_unknownObjectRelease();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4(0);

  sub_22507C8C0(a5, v15, 1, v16);
}

uint64_t sub_2250EF2C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], &v9 - v4);
  v6 = type metadata accessor for AnySessionAcquiredInfo();
  if (sub_22507C8E8(v5, 1, v6) == 1)
  {
    sub_22507F168(v5, &unk_27D7193B0, &qword_225445E18);
    v7 = type metadata accessor for SessionInvalidationContext();
    return sub_22507C8C0(a1, 1, 1, v7);
  }

  else
  {
    AnySessionAcquiredInfo.previousInvalidationContext.getter();
    return (*(*(v6 - 8) + 8))(v5, v6);
  }
}

void sub_2250EF41C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - v9;
  v11 = sub_2250B0DFC(&qword_27D7194A0, &qword_225445E38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v47 - v13;
  v15 = type metadata accessor for Entitlements();
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v1 options];
  v20 = [v19 isCloudCoreSession];

  if (!v20)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = [v1 sessionValidatorLock];
  [v21 lock];

  v22 = &off_27854F000;
  if ([v1 _sessionValidator])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_22507F168(&v57, &qword_27D718AE0, &unk_225443AA0);
    goto LABEL_4;
  }

  v57 = 0u;
  v58 = 0u;
  sub_22507F168(&v57, &qword_27D718AE0, &unk_225443AA0);
  v24 = [v1 processScopedClientProxy];
  if (!v24 || (v25 = v24, v26 = [v24 clientConnection], v25, !v26))
  {
    CKLog.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22506F000, v29, v30, "Failed to obtain client connection from the proxy. This might be due to the adopter process disappearing.", v31, 2u);
      MEMORY[0x22AA65DF0](v31, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    related decl 'e' for CKErrorCode.init(_:description:)();
    swift_willThrow();
    goto LABEL_13;
  }

  v27 = v26;
  v28 = v54;
  sub_22507369C();
  if (v28)
  {

LABEL_13:
    v32 = [v1 sessionValidatorLock];
    [v32 unlock];

    return;
  }

  sub_2250EF194(&selRef_ckSessionConfiguration, MEMORY[0x277CBBDF0], MEMORY[0x277CBBDE8], MEMORY[0x277CFAAA8], v14);
  v33 = type metadata accessor for AnySessionConfiguration();
  if (sub_22507C8E8(v14, 1, v33) == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v51 = v27;
  v54 = 0;
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v10);
  v34 = type metadata accessor for AnySessionAcquiredInfo();
  if (sub_22507C8E8(v10, 1, v34) != 1)
  {
    v35 = [v1 options];
    v50 = [v35 testDeviceReferenceProtocol];

    v36 = [v1 deviceID];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v38;
    v49 = v37;

    v47 = type metadata accessor for CKDSessionValidator();
    v39 = objc_allocWithZone(v47);
    v40 = v53;
    *(&v58 + 1) = v53;
    v59 = MEMORY[0x277CFA990];
    v41 = sub_225073808(&v57);
    (*(v52 + 16))(v41, v18, v40);
    v42 = *(v33 - 8);
    (*(v42 + 16))(&v39[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionConfiguration], v14, v33);
    v43 = *(v34 - 8);
    (*(v43 + 16))(&v39[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_sessionAcquiredInfo], v10, v34);
    *&v39[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_testDeviceReferenceProtocol] = v50;
    sub_2250D4724(&v57, &v39[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_entitlements]);
    v44 = &v39[OBJC_IVAR____TtC14CloudKitDaemon19CKDSessionValidator_deviceID];
    v45 = v48;
    *v44 = v49;
    v44[1] = v45;
    v56.receiver = v39;
    v56.super_class = v47;
    v46 = objc_msgSendSuper2(&v56, sel_init);
    (*(v43 + 8))(v10, v34);
    (*(v42 + 8))(v14, v33);
    sub_225073BF0(&v57);
    [v1 set:v46 sessionValidator:?];

    (*(v52 + 8))(v18, v53);
    v22 = &off_27854F000;
LABEL_4:
    if ([v1 v22[366]])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_2250B28C8(&v55, &v57);
      type metadata accessor for CKDSessionValidator();
      swift_dynamicCast();
      v23 = [v1 sessionValidatorLock];
      [v23 unlock];

      return;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

uint64_t *sub_2250EFBB0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v78 = *(v2 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v2);
  v80 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v67 - v7;
  v83 = type metadata accessor for SessionInvalidationContext();
  v9 = *(v83 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v83);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v67 - v13;
  v14 = sub_2250B0DFC(&qword_27D7190C8, &unk_2254453D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v67 - v16;
  v18 = type metadata accessor for SessionReadinessError();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = &v67 - v24;
  result = [v1 sessionInvalidationError];
  if (!result)
  {
    return result;
  }

  v72 = v9;
  v84 = result;
  v76 = result;
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(92);
    MEMORY[0x22AA62E50](0xD00000000000004FLL, 0x800000022547B230);
    v55 = [v1 description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    MEMORY[0x22AA62E50](v56, v58);

    MEMORY[0x22AA62E50](0x3A726F727265202CLL, 0xE900000000000020);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v74 = v1;
  v26 = v86;
  related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter();
  if (sub_22507C8E8(v17, 1, v18) == 1)
  {
    sub_22507F168(v17, &qword_27D7190C8, &unk_2254453D0);
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(115);
    MEMORY[0x22AA62E50](0xD000000000000066, 0x800000022547B280);
    v59 = [v74 description];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    MEMORY[0x22AA62E50](v60, v62);

    MEMORY[0x22AA62E50](0x3A726F727265202CLL, 0xE900000000000020);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    goto LABEL_13;
  }

  v75 = v2;
  v27 = v81;
  (*(v19 + 32))(v81, v17, v18);
  v73 = v26;
  related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter();
  v28 = v83;
  v29 = sub_22507C8E8(v8, 1, v83);
  v79 = v18;
  if (v29 == 1)
  {
    sub_22507F168(v8, &unk_27D718E60, &unk_225444780);
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(113);
    MEMORY[0x22AA62E50](0xD000000000000064, 0x800000022547B2F0);
    v63 = [v74 description];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    MEMORY[0x22AA62E50](v64, v66);

    MEMORY[0x22AA62E50](0x3A726F727265202CLL, 0xE900000000000020);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    goto LABEL_13;
  }

  v30 = v72;
  v31 = v82;
  (*(v72 + 32))(v82, v8, v28);
  CKLog.getter();
  v70 = *(v19 + 16);
  v70(v23, v27, v79);
  v32 = v77;
  (*(v30 + 16))(v77, v31, v28);
  v33 = v74;
  v34 = Logger.logObject.getter();
  LODWORD(v31) = static os_log_type_t.default.getter();

  v71 = v31;
  if (os_log_type_enabled(v34, v31))
  {
    v35 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v84 = v69;
    *v35 = 138412802;
    sub_2250F4D28(&qword_280D53600, MEMORY[0x277CFAA78]);
    v36 = v79;
    swift_allocError();
    v68 = v34;
    v70(v37, v23, v36);
    v38 = _swift_stdlib_bridgeErrorToNSError();
    v74 = *(v19 + 8);
    (v74)(v23, v36);
    *(v35 + 4) = v38;
    v39 = v67;
    *v67 = v38;
    *(v35 + 12) = 2080;
    sub_2250F4D28(&qword_280D535E8, MEMORY[0x277CFAAE8]);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v32;
    v42 = v40;
    v44 = v43;
    v45 = *(v30 + 8);
    v45(v41, v83);
    v46 = v45;
    v47 = sub_225095AFC(v42, v44, &v84);

    *(v35 + 14) = v47;
    *(v35 + 22) = 2112;
    *(v35 + 24) = v33;
    v39[1] = v33;
    v48 = v33;
    v49 = v68;
    _os_log_impl(&dword_22506F000, v68, v71, "Container is already invalid due to an earlier error %@ with invalidationContext %s: %@", v35, 0x20u);
    sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v39, -1, -1);
    v50 = v69;
    sub_225073BF0(v69);
    MEMORY[0x22AA65DF0](v50, -1, -1);
    v51 = v35;
    v28 = v83;
    MEMORY[0x22AA65DF0](v51, -1, -1);

    (*(v78 + 8))(v80, v75);
    v52 = v79;
  }

  else
  {

    v53 = *(v30 + 8);
    v53(v32, v28);
    v46 = v53;
    v52 = v79;
    v74 = *(v19 + 8);
    (v74)(v23, v79);
    (*(v78 + 8))(v80, v75);
  }

  v54 = v73;
  swift_willThrow();

  v46(v82, v28);
  return (v74)(v81, v52);
}

void sub_2250F05F8(void *a1)
{
  v4 = v1;
  v6 = type metadata accessor for Logger();
  v7 = sub_225072D1C(v6);
  v184 = v8;
  v185 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22507CD30();
  v175 = v11;
  sub_22507C940();
  MEMORY[0x28223BE20](v12);
  sub_22507E6C4();
  v182 = v13;
  sub_22507C940();
  MEMORY[0x28223BE20](v14);
  sub_22508D024();
  v173 = v15;
  v16 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v17 = sub_22507CD44(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22507CD30();
  v170 = v20;
  sub_22507C940();
  MEMORY[0x28223BE20](v21);
  sub_22507E450();
  v22 = type metadata accessor for SessionInvalidationContext();
  v23 = sub_225072D1C(v22);
  v180 = v24;
  v181 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22507CD30();
  v174 = v27;
  sub_22507C940();
  MEMORY[0x28223BE20](v28);
  sub_22507E6C4();
  v183 = v29;
  sub_22507C940();
  MEMORY[0x28223BE20](v30);
  sub_22507E6C4();
  v177 = v31;
  sub_22507C940();
  MEMORY[0x28223BE20](v32);
  sub_22508D024();
  v179 = v33;
  v34 = sub_2250B0DFC(&qword_27D7190C8, &unk_2254453D0);
  v35 = sub_22507CD44(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22507F304();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v168 - v42;
  v186 = type metadata accessor for SessionReadinessError();
  v44 = sub_225072D1C(v186);
  v176 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22507CD30();
  isa = v48;
  sub_22507C940();
  MEMORY[0x28223BE20](v49);
  sub_22507E6C4();
  v51 = v50;
  sub_22507C940();
  MEMORY[0x28223BE20](v52);
  sub_22507E6C4();
  v172 = v53;
  sub_22507C940();
  MEMORY[0x28223BE20](v54);
  sub_22508D024();
  v178 = v55;
  v56 = [v1 options];
  v57 = [v56 isCloudCoreSession];

  if (!v57)
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_2250EFBB0();
  if (v2)
  {
    return;
  }

  v57 = v4;
  v187[0] = a1;
  sub_2250F4CE4();
  type metadata accessor for CKUnderlyingError(0);
  v59 = v58;
  v60 = a1;
  sub_225095800();
  if (swift_dynamicCast())
  {
    v4 = v188;
    v187[0] = v188;
    sub_2250F4D28(&unk_280D53540, type metadata accessor for CKUnderlyingError);
    v169 = v59;
    _BridgedStoredNSError.code.getter();
    v61 = v186;
    if (v188 == 12000)
    {
      related decl 'e' for CKUnderlyingErrorCode.underlyingSessionReadinessError.getter();
      sub_2250F4D70(v43, 1, v61);
      v62 = v176;
      if (!v63)
      {
        v182 = v57;
        v64 = v178;
        (v176[4].isa)(v178, v43, v61);
        v183 = v4;
        related decl 'e' for CKUnderlyingErrorCode.underlyingSessionInvalidationContext.getter();
        v65 = sub_22509537C();
        v66 = v181;
        sub_2250F4D70(v65, v67, v181);
        if (!v63)
        {
          v68 = v179;
          v69 = v3;
          v70 = v180;
          (*(v180 + 32))(v179, v69, v66);
          v71 = v173;
          CKLog.getter();
          v72 = v172;
          isa = v62[2].isa;
          isa(v172, v64, v186);
          (*(v70 + 16))(v177, v68, v66);
          v73 = v182;
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.error.getter();
          v175 = v73;

          LODWORD(v174) = v75;
          if (os_log_type_enabled(v74, v75))
          {
            sub_22507CCD4();
            v76 = v66;
            v77 = v70;
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            sub_22507CCD4();
            v170 = swift_slowAlloc();
            v187[0] = v170;
            *v78 = 138412802;
            sub_22507CBF0();
            sub_2250F4D28(v80, v81);
            v169 = v74;
            v82 = v186;
            sub_225093454();
            swift_allocError();
            isa(v83, v72, v82);
            v84 = _swift_stdlib_bridgeErrorToNSError();
            v85 = sub_22508D0F8();
            v86(v85, v82);
            *(v78 + 4) = v84;
            *v79 = v84;
            v87 = v79;
            *(v78 + 12) = 2080;
            sub_22507CED0();
            sub_2250F4D28(v88, v89);
            v90 = v177;
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            v93 = v92;
            v94 = v90;
            v95 = *(v77 + 8);
            v95(v94, v76);
            v96 = sub_225095AFC(v91, v93, v187);
            v97 = v186;

            *(v78 + 14) = v96;
            *(v78 + 22) = 2112;
            v98 = v175;
            *(v78 + 24) = v175;
            v87[1] = v98;
            v99 = v98;
            v100 = v169;
            _os_log_impl(&dword_22506F000, v169, v174, "Container has become invalid due to %@ with invalidationContext %s: %@", v78, 0x20u);
            sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
            swift_arrayDestroy();
            sub_225072C54();
            MEMORY[0x22AA65DF0]();
            sub_225073BF0(v170);
            sub_225072C54();
            MEMORY[0x22AA65DF0]();
            sub_225072C54();
            MEMORY[0x22AA65DF0]();

            sub_22507F274();
            v101(v173);
            v102 = v76;
          }

          else
          {

            v95 = *(v70 + 8);
            v95(v177, v66);
            v146 = sub_22508D0F8();
            v97 = v186;
            v147(v146, v186);
            sub_22507F274();
            v148(v71);
            v102 = v66;
          }

          v149 = v183;
          v150 = _convertErrorToNSError(_:)();

          v151 = [v150 CKClientSuitableError];
          v95(v179, v102);
          (v176)(v178, v97);
LABEL_25:
          v155 = v151;
          v156 = _convertErrorToNSError(_:)();
          [v182 setSessionInvalidationError_];

          sub_2250F15F4();
          swift_willThrow();

          return;
        }

        sub_22507F168(v3, &unk_27D718E60, &unk_225444780);
        sub_22507F8E0();
        _StringGuts.grow(_:)(110);
        sub_225095870();
        sub_225097E00();
        v160 = [v182 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_2250981BC();
        v161 = sub_225093C14();
        MEMORY[0x22AA62E50](v161);

        sub_225072C60();
        v188 = v183;
        _print_unlocked<A, B>(_:_:)();
        sub_22507E73C();
        v159 = 99;
        goto LABEL_32;
      }

LABEL_28:
      sub_22507F168(v43, &qword_27D7190C8, &unk_2254453D0);
      sub_22507F8E0();
      _StringGuts.grow(_:)(112);
      sub_225095870();
      sub_22507558C();
      v157 = [v57 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_2250981BC();
      v158 = sub_225093C14();
      MEMORY[0x22AA62E50](v158);

      sub_225072C60();
      v188 = v4;
      _print_unlocked<A, B>(_:_:)();
      sub_22507E73C();
      v159 = 96;
      goto LABEL_32;
    }

    v103 = v61;
  }

  else
  {
    v103 = v186;
  }

  v187[0] = a1;
  type metadata accessor for CKError(0);
  v104 = a1;
  sub_225095800();
  v105 = swift_dynamicCast();
  v106 = v183;
  if (v105)
  {
    v107 = v188;
    v187[0] = v188;
    sub_2250F4D28(&unk_280D53590, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (v188 == 170)
    {
      related decl 'e' for CKErrorCode.underlyingSessionReadinessError.getter();
      sub_2250F4D70(v40, 1, v103);
      if (v63)
      {
        sub_22507F168(v40, &qword_27D7190C8, &unk_2254453D0);
        v187[0] = 0;
        v187[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(112);
        sub_225095870();
        sub_22507558C();
        v162 = [v57 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_2250981BC();
        v163 = sub_225093C14();
        MEMORY[0x22AA62E50](v163);

        sub_225072C60();
        v164 = related decl 'e' for CKErrorCode.description.getter();
        MEMORY[0x22AA62E50](v164);

        sub_22507E73C();
        v159 = 105;
      }

      else
      {
        v108 = v176;
        (v176[4].isa)(v51, v40, v103);
        v109 = v170;
        v178 = v107;
        related decl 'e' for CKErrorCode.underlyingSessionInvalidationContext.getter();
        v110 = v181;
        sub_2250F4D70(v109, 1, v181);
        v111 = v180;
        v179 = v51;
        if (!v63)
        {
          (*(v180 + 32))(v106, v109, v110);
          CKLog.getter();
          v112 = isa;
          v177 = v108[2].isa;
          (v177)(isa, v179, v103);
          (*(v111 + 16))(v174, v106, v110);
          v182 = v57;
          v113 = v110;
          v114 = v57;
          v115 = v108;
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v116, v117))
          {
            sub_22507CCD4();
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            LODWORD(v172) = v117;
            v170 = v119;
            sub_22507CCD4();
            v173 = swift_slowAlloc();
            v187[0] = v173;
            *v118 = 138412802;
            sub_22507CBF0();
            sub_2250F4D28(v120, v121);
            sub_225093454();
            swift_allocError();
            (v177)(v122, v112, v103);
            v123 = _swift_stdlib_bridgeErrorToNSError();
            v177 = v115[1].isa;
            v177(v112, v103);
            *(v118 + 4) = v123;
            v124 = v170;
            *v170 = v123;
            *(v118 + 12) = 2080;
            sub_22507CED0();
            sub_2250F4D28(v125, v126);
            v127 = v174;
            v128 = dispatch thunk of CustomStringConvertible.description.getter();
            v176 = v116;
            v129 = v128;
            v131 = v130;
            v132 = *(v180 + 8);
            v132(v127, v113);
            v133 = sub_225095AFC(v129, v131, v187);

            *(v118 + 14) = v133;
            *(v118 + 22) = 2112;
            *(v118 + 24) = v114;
            v124[1] = v114;
            v134 = v114;
            v135 = v176;
            _os_log_impl(&dword_22506F000, v176, v172, "Container has become invalid due to %@ with invalidationContext %s: %@", v118, 0x20u);
            sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
            swift_arrayDestroy();
            sub_225072C54();
            MEMORY[0x22AA65DF0]();
            sub_225073BF0(v173);
            sub_225072C54();
            MEMORY[0x22AA65DF0]();
            sub_225072C54();
            MEMORY[0x22AA65DF0]();

            sub_22507F274();
            v136(v175);
            v132(v183, v181);
            v177(v179, v186);
          }

          else
          {

            v152 = *(v111 + 8);
            v152(v174, v113);
            v153 = v115[1].isa;
            v153(v112, v103);
            sub_22507F274();
            v154(v175);
            v152(v183, v113);
            v153(v179, v103);
          }

          v151 = v178;
          goto LABEL_25;
        }

        sub_22507F168(v109, &unk_27D718E60, &unk_225444780);
        sub_22507F8E0();
        _StringGuts.grow(_:)(110);
        sub_225095870();
        sub_225097E00();
        v165 = [v57 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_2250981BC();
        v166 = sub_225093C14();
        MEMORY[0x22AA62E50](v166);

        sub_225072C60();
        v167 = related decl 'e' for CKErrorCode.description.getter();
        MEMORY[0x22AA62E50](v167);

        sub_22507E73C();
        v159 = 108;
      }

LABEL_32:
      v168 = v159;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

  CKLog.getter();
  v137 = a1;
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v140 = 138412290;
    *(v140 + 4) = v137;
    *v141 = v137;
    v142 = v137;
    _os_log_impl(&dword_22506F000, v138, v139, "Expected a session invalidation error, got: %@", v140, 0xCu);
    sub_22507F168(v141, &unk_27D719030, &qword_225443AB0);
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
  }

  v143 = sub_225075620();
  v144(v143);
  swift_willThrow();
  v145 = v137;
}

void sub_2250F15F4()
{
  v1 = type metadata accessor for Logger();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AnySessionAcquiredInfo();
  v40 = *(v15 - 8);
  v41 = v15;
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v0 options];
  v20 = [v19 ckSessionAcquiredInfo];

  if (v20)
  {
    type metadata accessor for CKSessionAcquiredInfo();
    v39 = v20;
    swift_dynamicCastClassUnconditional();
    CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
    v21 = *MEMORY[0x277CBC8B8];
    AnySessionAcquiredInfo.sessionID.getter();
    SessionID.uuid.getter();
    (*(v11 + 8))(v14, v10);
    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*(v6 + 8))(v9, v5);
    v25 = MEMORY[0x22AA62D80](v22, v24);

    v26 = CKNotificationKey();

    v27 = v26;
    if (!v26)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = MEMORY[0x22AA62D80](v28);
    }

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    CKLog.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315138;
      v36 = sub_225095AFC(v29, v31, &v44);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_22506F000, v32, v33, "Posting session invalidation notification for key: %s", v34, 0xCu);
      sub_225073BF0(v35);
      MEMORY[0x22AA65DF0](v35, -1, -1);
      MEMORY[0x22AA65DF0](v34, -1, -1);
    }

    else
    {
    }

    (*(v42 + 8))(v4, v43);
    v37 = [v27 UTF8String];
    v38 = v27;
    notify_post(v37);
    swift_unknownObjectRelease();
    (*(v40 + 8))(v18, v41);
  }

  else
  {
    __break(1u);
  }
}

void sub_2250F1B30(uint64_t a1)
{
  v56 = a1;
  v61[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for SessionReadinessError();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = v50 - v9;
  v10 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v50 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v50 - v18;
  v20 = type metadata accessor for SaltedHash();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = type metadata accessor for SessionInvalidationContext();
  v57 = *(v22 - 8);
  v58 = v22;
  v23 = *(v57 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v53 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v55 = v50 - v26;
  v60 = v1;
  v27 = [v1 options];
  v28 = [v27 isCloudCoreSession];

  if (!v28)
  {
    __break(1u);
    goto LABEL_10;
  }

  v51 = v6;
  v52 = v3;
  v50[1] = v2;
  sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_225444480;
  v30 = [v60 deviceID];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  SaltedHash.init(_:)();
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v19);
  v34 = type metadata accessor for AnySessionAcquiredInfo();
  if (sub_22507C8E8(v19, 1, v34) == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v35 = AnySessionAcquiredInfo.serviceName.getter();
  v50[2] = v36;
  v50[3] = v35;
  v37 = *(*(v34 - 8) + 8);
  v37(v19, v34);
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v17);
  if (sub_22507C8E8(v17, 1, v34) == 1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  AnySessionAcquiredInfo.privilegedInfoHash.getter();
  v37(v17, v34);
  sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v14);
  if (sub_22507C8E8(v14, 1, v34) == 1)
  {
    goto LABEL_12;
  }

  AnySessionAcquiredInfo.userPersonaUniqueString.getter();
  v37(v14, v34);
  v38 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v39 = v54;
  (*(*(v38 - 8) + 16))(v54, v56, v38);
  sub_22507C8C0(v39, 0, 1, v38);
  v40 = v55;
  SessionInvalidationContext.init(deviceIDHash:primaryServiceName:privilegedInfoHash:userPersonaUniqueString:keySyncRequest:)();
  (*(v59 + 104))(v51, *MEMORY[0x277CFAA50], v52);
  v42 = v57;
  v41 = v58;
  (*(v57 + 16))(v53, v40, v58);
  v43 = related decl 'e' for CKUnderlyingErrorCode.init(sessionReadinessError:invalidationContext:)();
  v44 = _convertErrorToNSError(_:)();
  v61[0] = 0;
  v45 = [v60 noteSessionInvalidationError:v44 error:v61];

  if (v45)
  {
    v46 = *(v42 + 8);
    v47 = v61[0];
    v46(v40, v41);
  }

  else
  {
    v48 = v61[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v42 + 8))(v40, v41);
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t CKDContainer.keySyncEligibility(forService:isManatee:accountDSID:lastModifiedDate:testOverrideProvider:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = v7;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 152) = a2;
  *(v8 + 160) = a4;
  *(v8 + 417) = a3;
  *(v8 + 144) = a1;
  v9 = sub_2250B0DFC(&unk_27D7193A0, &qword_225445E10);
  *(v8 + 200) = v9;
  sub_22507D394(v9);
  *(v8 + 208) = v10;
  v12 = *(v11 + 64);
  *(v8 + 216) = sub_22507D3C8();
  v13 = type metadata accessor for Logger();
  *(v8 + 224) = v13;
  sub_22507D394(v13);
  *(v8 + 232) = v14;
  v16 = *(v15 + 64);
  *(v8 + 240) = sub_22507D3C8();
  v17 = sub_2250B0DFC(&qword_27D718F78, &unk_225444940);
  sub_22507CD44(v17);
  v19 = *(v18 + 64);
  *(v8 + 248) = sub_22507D3C8();
  v20 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  sub_22507CD44(v20);
  v22 = *(v21 + 64);
  *(v8 + 256) = sub_22507D3C8();
  v23 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason();
  *(v8 + 264) = v23;
  sub_22507D394(v23);
  *(v8 + 272) = v24;
  v26 = *(v25 + 64);
  *(v8 + 280) = sub_22507D3C8();
  v27 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507CD44(v27);
  v29 = *(v28 + 64);
  *(v8 + 288) = sub_22507D3C8();
  v30 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  sub_22507CD44(v30);
  v32 = *(v31 + 64);
  *(v8 + 296) = sub_22507D3C8();
  v33 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  *(v8 + 304) = v33;
  sub_22507D394(v33);
  *(v8 + 312) = v34;
  v36 = *(v35 + 64);
  *(v8 + 320) = sub_22507D3C8();
  v37 = type metadata accessor for Date();
  *(v8 + 328) = v37;
  sub_22507D394(v37);
  *(v8 + 336) = v38;
  v40 = *(v39 + 64);
  *(v8 + 344) = sub_22507D3C8();
  v41 = type metadata accessor for ServerDate();
  *(v8 + 352) = v41;
  sub_22507D394(v41);
  *(v8 + 360) = v42;
  v44 = *(v43 + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250F24F0, 0, 0);
}

uint64_t sub_2250F24F0()
{
  v109 = v0;
  v1 = [v0[24] options];
  v2 = [v1 isCloudCoreSession];

  if (!v2)
  {
    v13 = [objc_opt_self() sharedManager];
    v0[48] = v13;
    if (v13)
    {
      v14 = v13;
      v16 = v0[26];
      v15 = v0[27];
      v17 = v0[25];
      v18 = v0[22];
      v105 = v0[23];
      v20 = v0[20];
      v19 = v0[21];
      v103 = *(v0 + 417);
      v101 = MEMORY[0x22AA62D80](v0[18], v0[19]);
      v0[49] = v101;
      v21 = MEMORY[0x22AA62D80](v20, v19);
      v0[50] = v21;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v0[51] = isa;
      v0[2] = v0;
      v0[7] = v0 + 52;
      v0[3] = sub_2250F2DB8;
      swift_continuation_init();
      v0[17] = v17;
      v23 = sub_225073808(v0 + 14);
      CheckedContinuation.init(continuation:function:)();
      (*(v16 + 32))(v23, v15, v17);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2250F2F88;
      v0[13] = &unk_28385B2F8;
      [v14 getKeySyncEligibilityForService:v101 isManatee:v103 accountDSID:v21 lastModifiedDate:isa testOverrideProvider:v105 completionHandler:?];
      (*(v16 + 8))(v23, v17);
      v13 = v0 + 2;

      return MEMORY[0x282200938](v13);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return MEMORY[0x282200938](v13);
  }

  v3 = v0[47];
  v4 = v0[43];
  v5 = v0[36];
  v6 = v0[24];
  (*(v0[42] + 16))(v4, v0[22], v0[41]);
  MEMORY[0x22AA624C0](v4);
  sub_2250EF2C0(v5);
  v7 = type metadata accessor for SessionInvalidationContext();
  if (sub_22507C8E8(v5, 1, v7) != 1)
  {
    v25 = v0[37];
    v24 = v0[38];
    v26 = v0[36];
    SessionInvalidationContext.keySyncRequest.getter();
    sub_22508E760();
    v28 = *(v27 + 8);
    v29 = sub_225082674();
    v30(v29);
    if (sub_22507C8E8(v25, 1, v24) == 1)
    {
      (*(v0[45] + 8))(v0[47], v0[44]);
      goto LABEL_10;
    }

    v34 = v0[18];
    v33 = v0[19];
    (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
    if (SessionInvalidationContext.KeySyncRequest.serviceName.getter() == v34 && v35 == v33)
    {
    }

    else
    {
      v37 = v0[18];
      v38 = v0[19];
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        v40 = v0[47];
        v41 = v0[44];
        v42 = v0[45];
        (*(v0[39] + 8))(v0[40], v0[38]);
        v43 = *(v42 + 8);
        v44 = sub_225082674();
        v45(v44);
        goto LABEL_11;
      }
    }

    v46 = v0[40];
    v48 = v0[34];
    v47 = v0[35];
    v49 = v0[33];
    SessionInvalidationContext.KeySyncRequest.reason.getter();
    v50 = (*(v48 + 88))(v47, v49);
    v51 = v0[47];
    if (v50 != *MEMORY[0x277CFAAC0])
    {
      v72 = v0[44];
      v73 = v0[45];
      v75 = v0[34];
      v74 = v0[35];
      v76 = v0[33];
      (*(v0[39] + 8))(v0[40], v0[38]);
      v77 = *(v73 + 8);
      v78 = sub_225082674();
      v79(v78);
      (*(v75 + 8))(v74, v76);
      goto LABEL_11;
    }

    v53 = v0[45];
    v52 = v0[46];
    v54 = v0[44];
    v55 = v0[35];
    (*(v0[34] + 96))(v55, v0[33]);
    (*(v53 + 32))(v52, v55, v54);
    sub_2250F4D28(&qword_280D53648, MEMORY[0x277CFA978]);
    sub_225082674();
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
LABEL_26:
      v66 = v0[47];
      v68 = v0[39];
      v67 = v0[40];
      v69 = v0[38];
      v70 = *(v0[45] + 8);
      (v70)(v0[46], v0[44]);
      (*(v68 + 8))(v67, v69);
      v71 = sub_225082674();
      v70(v71);
      goto LABEL_11;
    }

    v56 = v0[32];
    v57 = v0[24];
    sub_2250EF194(&selRef_ckSessionAcquiredInfo, MEMORY[0x277CBBDE0], MEMORY[0x277CBBDD8], MEMORY[0x277CFAA88], v56);
    v58 = type metadata accessor for AnySessionAcquiredInfo();
    v13 = sub_22507C8E8(v56, 1, v58);
    if (v13 != 1)
    {
      v60 = v0[31];
      v59 = v0[32];
      AnySessionAcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.getter();
      sub_22508E760();
      v62 = *(v61 + 8);
      v63 = sub_225082674();
      v64(v63);
      v65 = type metadata accessor for SaltedHash();
      LODWORD(v59) = sub_22507C8E8(v60, 1, v65);
      sub_22507F168(v60, &qword_27D718F78, &unk_225444940);
      if (v59 != 1)
      {
        v80 = v0[30];
        v81 = v0[19];
        CKLog.getter();

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();

        v84 = os_log_type_enabled(v82, v83);
        v85 = v0[47];
        v86 = v0[44];
        v87 = v0[45];
        v89 = v0[39];
        v88 = v0[40];
        v90 = v0[38];
        v91 = v0[29];
        v104 = v0[30];
        v107 = v0[46];
        v102 = v0[28];
        if (v84)
        {
          v97 = v0[19];
          v100 = v0[47];
          v92 = v0[18];
          v99 = v0[40];
          v93 = swift_slowAlloc();
          sub_22507CCD4();
          v98 = v90;
          v94 = swift_slowAlloc();
          v108 = v94;
          *v93 = 136315138;
          *(v93 + 4) = sub_225095AFC(v92, v97, &v108);
          _os_log_impl(&dword_22506F000, v82, v83, "A previous user key sync for %s did not populate the missing identity. Avoiding another user key sync.", v93, 0xCu);
          sub_225073BF0(v94);
          sub_225072C54();
          MEMORY[0x22AA65DF0]();
          sub_225072C54();
          MEMORY[0x22AA65DF0]();

          (*(v91 + 8))(v104, v102);
          v95 = *(v87 + 8);
          v95(v107, v86);
          (*(v89 + 8))(v99, v98);
          v96 = v100;
        }

        else
        {

          (*(v91 + 8))(v104, v102);
          v95 = *(v87 + 8);
          v95(v107, v86);
          (*(v89 + 8))(v88, v90);
          v96 = v85;
        }

        v95(v96, v86);
        v106 = 0;
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v8 = v0[37];
  v9 = v0[38];
  v10 = v0[36];
  (*(v0[45] + 8))(v0[47], v0[44]);
  sub_22507F168(v10, &unk_27D718E60, &unk_225444780);
  v11 = sub_22507EDE8();
  sub_22507C8C0(v11, v12, 1, v9);
LABEL_10:
  sub_22507F168(v0[37], &qword_27D7193C0, &qword_225445B38);
LABEL_11:
  v106 = 1;
LABEL_12:
  sub_225098718();

  v31 = v0[1];

  return v31(v106);
}

uint64_t sub_2250F2DB8()
{
  v4 = *v0;
  v1 = *v0;
  sub_225072D68();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2250F2E90, 0, 0);
}

uint64_t sub_2250F2E90()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v6 = *(v0 + 416);

  sub_225098718();

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_2250F2F88(uint64_t a1)
{
  sub_225073BAC((a1 + 32), *(a1 + 56));

  return sub_2250F2FF4();
}

uint64_t sub_2250F3104(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, void *a7)
{
  v7[2] = a5;
  v7[3] = a7;
  v12 = type metadata accessor for Date();
  v7[4] = v12;
  v13 = *(v12 - 8);
  v7[5] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v7[6] = v15;
  v7[7] = _Block_copy(a6);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v7[8] = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v7[9] = v20;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  a7;
  v22 = swift_task_alloc();
  v7[10] = v22;
  *v22 = v7;
  v22[1] = sub_2250F32A4;

  return CKDContainer.keySyncEligibility(forService:isManatee:accountDSID:lastModifiedDate:testOverrideProvider:)(v16, v18, a2, v19, v21, v15, a5);
}

uint64_t sub_2250F32A4(char a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v10 = *(*v1 + 24);
  v11 = *(*v1 + 16);
  v12 = *v1;
  sub_225072D68();
  *v13 = v12;

  swift_unknownObjectRelease();
  (*(v8 + 8))(v7, v9);
  v6[2](v6, a1 & 1);
  _Block_release(v6);

  v14 = *(v12 + 8);

  return v14();
}

void CKDContainer.allowUserKeySync(serviceName:resourceLastModifiedDate:outdatedPublicKeyID:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v7 = v5;
  v178 = a5;
  v169 = a4;
  *&v165 = a3;
  v182 = a2;
  v180 = a1;
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v9 = sub_22507CD44(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v166 = v152 - v12;
  v167 = type metadata accessor for Date();
  v13 = sub_225072D1C(v167);
  v163 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v17);
  sub_22508D024();
  v161 = v18;
  v157 = type metadata accessor for Logger();
  v19 = sub_225072D1C(v157);
  v156 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v23);
  sub_22508D024();
  v154 = v24;
  v25 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v26 = sub_22507CD44(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22507CD30();
  v175 = v29;
  sub_22507C940();
  MEMORY[0x28223BE20](v30);
  v32 = v152 - v31;
  v33 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v34 = sub_22507CD44(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v37);
  sub_22508D024();
  v168 = v38;
  v39 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
  v40 = sub_225072D1C(v39);
  v173 = v41;
  v174 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22507CD30();
  v176 = v44;
  sub_22507C940();
  MEMORY[0x28223BE20](v45);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v46);
  sub_22507E6C4();
  v172 = v47;
  sub_22507C940();
  MEMORY[0x28223BE20](v48);
  v50 = v152 - v49;
  v177 = type metadata accessor for SaltedHash();
  v51 = sub_225072D1C(v177);
  v170 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v55);
  v57 = v152 - v56;
  v58 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason();
  v59 = sub_225072D1C(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22507CD30();
  v181 = v64;
  sub_22507C940();
  MEMORY[0x28223BE20](v65);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v66);
  v68 = v152 - v67;
  v183[5] = v7;
  v69 = [v7 options];
  v70 = [v69 isCloudCoreSession];

  if (v70)
  {
    v152[0] = v50;
    v152[1] = v6;
    v71 = *(v61 + 104);
    (v71)(v68, *MEMORY[0x277CFAAD0], v58);
    v72 = v68;
    v73 = v178;
    v153 = v58;
    v179 = v61;
    v171 = v72;
    if (v178)
    {
      v166 = sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
      v74 = swift_allocObject();
      v165 = xmmword_225444480;
      *(v74 + 16) = xmmword_225444480;
      *(v74 + 32) = v169;
      *(v74 + 40) = v73;

      SaltedHash.init(_:)();
      v75 = v72;
      v76 = *(v61 + 8);
      v163 = v61 + 8;
      v162 = v76;
      (v76)(v72, v58);
      v77 = v170;
      v78 = v57;
      v79 = v57;
      v57 = v177;
      (*(v170 + 16))(v75, v78, v177);
      LODWORD(v167) = *MEMORY[0x277CFAAC8];
      (v71)(v75);
      sub_2250EF2C0(v32);
      v80 = type metadata accessor for SessionInvalidationContext();
      sub_2250F4D70(v32, 1, v80);
      if (v91)
      {
        (*(v77 + 8))(v79, v57);
        sub_22507F168(v32, &unk_27D718E60, &unk_225444780);
        v88 = v168;
        v81 = sub_22507EDE8();
        v32 = v174;
        sub_22507C8C0(v81, v82, 1, v174);
        v71 = v173;
        v83 = v175;
      }

      else
      {
        v161 = v79;
        v88 = v168;
        SessionInvalidationContext.keySyncRequest.getter();
        (*(*(v80 - 8) + 8))(v32, v80);
        v89 = sub_22507EDE8();
        v32 = v174;
        sub_2250F4D70(v89, v90, v174);
        v83 = v175;
        if (!v91)
        {
          v71 = v173;
          v97 = *(v173 + 32);
          v98 = sub_225082674();
          v99(v98);
          v100 = SessionInvalidationContext.KeySyncRequest.serviceName.getter();
          v102 = v100 == v180 && v101 == v182;
          v103 = v177;
          if (v102)
          {

            v104 = v160;
          }

          else
          {
            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v104 = v160;
            if ((v57 & 1) == 0)
            {
              v105 = sub_22507CA8C();
              v106(v105);
              v107 = sub_22507E9B0();
              v108(v107, v103);
              goto LABEL_13;
            }
          }

          v109 = v152[0];
          SessionInvalidationContext.KeySyncRequest.reason.getter();
          v110 = v179;
          v57 = v153;
          v111 = (*(v179 + 88))(v104, v153);
          if (v111 == v167)
          {
            (*(v110 + 96))(v104, v57);
            v112 = v170;
            v113 = v158;
            (*(v170 + 32))(v158, v104, v103);
            v114 = swift_allocObject();
            *(v114 + 16) = v165;
            *(v114 + 32) = v169;
            *(v114 + 40) = v178;

            v115 = SaltedHash.matches(_:)();

            v58 = v176;
            if (v115)
            {
              v116 = SessionInvalidationContext.KeySyncRequest.retryCount.getter();
              v84 = v116 + 1;
              v72 = v172;
              if (__OFADD__(v116, 1))
              {
                goto LABEL_48;
              }

              CKLog.getter();

              v178 = Logger.logObject.getter();
              v117 = static os_log_type_t.error.getter();

              LODWORD(v169) = v117;
              if (os_log_type_enabled(v178, v117))
              {
                v118 = swift_slowAlloc();
                sub_22507CCD4();
                v57 = swift_slowAlloc();
                v183[0] = v57;
                *v118 = 136315394;
                *(v118 + 4) = sub_225095AFC(v180, v182, v183);
                *(v118 + 12) = 2048;
                *(v118 + 14) = v84;
                v119 = v178;
                _os_log_impl(&dword_22506F000, v178, v169, "Session is being invalidated again due to a user key sync request triggered to update the same current identity for %s. retryCount: %ld", v118, 0x16u);
                sub_225073BF0(v57);
                sub_225094958();
                sub_225072C54();
                MEMORY[0x22AA65DF0]();
                v83 = v175;
                sub_225072C54();
                MEMORY[0x22AA65DF0]();
              }

              else
              {
              }

              (*(v156 + 8))(v154, v157);
              v126 = *(v170 + 8);
              v126(v158, v177);
              v127 = sub_22507CA8C();
              v128(v127);
              v126(v161, v177);
            }

            else
            {
              v122 = *(v112 + 8);
              v123 = v177;
              v122(v113, v177);
              v124 = sub_22507CA8C();
              v125(v124);
              v122(v161, v123);
              v84 = 0;
              v72 = v172;
            }
          }

          else
          {
            (*(v71 + 8))(v109, v32);
            v120 = sub_22507E9B0();
            v121(v120, v103);
            (v162)(v104, v57);
            v84 = 0;
            v72 = v172;
            v58 = v176;
          }

LABEL_31:
          (*(v179 + 16))(v181, v171, v57);

          SessionInvalidationContext.KeySyncRequest.init(serviceName:reason:retryCount:)();
          if (v84)
          {
            goto LABEL_38;
          }

          sub_2250EF2C0(v83);
          v129 = type metadata accessor for SessionInvalidationContext();
          v130 = sub_22509537C();
          sub_2250F4D70(v130, v131, v129);
          if (v91)
          {
            sub_22507F168(v83, &unk_27D718E60, &unk_225444780);
            v134 = v164;
            v132 = sub_22509537C();
            sub_22507C8C0(v132, v133, 1, v32);
          }

          else
          {
            v134 = v164;
            SessionInvalidationContext.keySyncRequest.getter();
            sub_22508E760();
            v136 = *(v135 + 8);
            v137 = sub_225082674();
            v138(v137);
            v139 = sub_22509537C();
            sub_2250F4D70(v139, v140, v32);
            if (!v141)
            {
              v143 = v159;
              (*(v71 + 32))(v159, v134, v32);
              v144 = SessionInvalidationContext.KeySyncRequest.isEquivalent(to:)();
              if (v144)
              {
                if (!__OFADD__(SessionInvalidationContext.KeySyncRequest.retryCount.getter(), 1))
                {
                  SessionInvalidationContext.KeySyncRequest.retryCount.setter();
                  v145 = v155;
                  CKLog.getter();
                  v146 = Logger.logObject.getter();
                  v147 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v146, v147))
                  {
                    v148 = swift_slowAlloc();
                    sub_22507CCD4();
                    v57 = swift_slowAlloc();
                    v183[0] = v57;
                    *v148 = 136315138;
                    swift_beginAccess();
                    sub_2250F4D28(&unk_27D7193C8, MEMORY[0x277CFAAD8]);
                    v149 = dispatch thunk of CustomStringConvertible.description.getter();
                    v151 = sub_225095AFC(v149, v150, v183);

                    *(v148 + 4) = v151;
                    v58 = v176;
                    _os_log_impl(&dword_22506F000, v146, v147, "Session is being re-invalidated for the same reason: %s", v148, 0xCu);
                    sub_225073BF0(v57);
                    sub_225094958();
                    sub_225072C54();
                    MEMORY[0x22AA65DF0]();
                    sub_225072C54();
                    MEMORY[0x22AA65DF0]();

                    (*(v156 + 8))(v155, v157);
                  }

                  else
                  {

                    (*(v156 + 8))(v145, v157);
                  }

                  (*(v71 + 8))(v159, v32);
                  goto LABEL_38;
                }

                __break(1u);
LABEL_48:
                __break(1u);
                return;
              }

              (*(v71 + 8))(v143, v32);
LABEL_38:
              swift_beginAccess();
              (*(v71 + 16))(v58, v72, v32);
              sub_2250F1B30(v58);
              v142 = *(v71 + 8);
              v142(v58, v32);
              (*(v179 + 8))(v171, v57);
              v142(v72, v32);
              return;
            }
          }

          sub_22507F168(v134, &qword_27D7193C0, &qword_225445B38);
          goto LABEL_38;
        }

        v92 = sub_22507E9B0();
        v93(v92, v177);
        v71 = v173;
      }

      sub_22507F168(v88, &qword_27D7193C0, &qword_225445B38);
LABEL_13:
      v84 = 0;
      v72 = v172;
      v58 = v176;
      sub_225094958();
      goto LABEL_31;
    }

    v84 = v166;
    sub_2250F4AA8(v165, v166);
    v85 = sub_22507EDE8();
    v86 = v167;
    sub_2250F4D70(v85, v87, v167);
    if (v91)
    {
      sub_22507F168(v84, &unk_27D719260, &unk_225445B40);
      sub_22507F21C();
      sub_225094958();
    }

    else
    {
      v94 = v163;
      v95 = v161;
      (*(v163 + 32))(v161, v84, v86);
      v32 = v162;
      (*(v94 + 16))(v162, v95, v86);
      v84 = v181;
      MEMORY[0x22AA624C0](v32);
      v96 = *(v94 + 8);
      v58 = v94 + 8;
      v96(v95, v86);
      v57 = v153;
      (*(v61 + 8))(v72, v153);
      (v71)(v84, *MEMORY[0x277CFAAC0], v57);
      (*(v61 + 32))(v72, v84, v57);
      sub_22507F21C();
    }

    v83 = v175;
    goto LABEL_31;
  }
}

void sub_2250F4674(char a1)
{
  v3 = v1;
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Logger();
  v6 = sub_225072D1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22507F304();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  sub_22507E450();
  if (a1)
  {
    CCLog.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22506F000, v15, v16, "Auth token renewal in progress for the account, starting validation timer.", v17, 2u);
      sub_225072C54();
      MEMORY[0x22AA65DF0]();
    }

    (*(v8 + 8))(v2, v5);
    [v3 _restartSessionValidationTimer_];
    goto LABEL_12;
  }

  CCLog.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22506F000, v18, v19, "Auth token renewal completed for the account, checking session validity.", v20, 2u);
    sub_225072C54();
    MEMORY[0x22AA65DF0]();
  }

  (*(v8 + 8))(v13, v5);
  [v3 _cancelSessionValidationTimer];
  v28[0] = 0;
  v21 = [v3 checkSessionValidityCacheOnly:0 error:v28];
  v22 = v28[0];
  if (!v21)
  {
    v25 = v28[0];
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_12:
    v27 = *MEMORY[0x277D85DE8];
    return;
  }

  v23 = *MEMORY[0x277D85DE8];

  v24 = v22;
}

void sub_2250F498C()
{
  if (*MEMORY[0x277CBC810] != 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = [v0 options];
  v2 = [v1 isCloudCoreSession];

  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = _convertErrorToNSError(_:)();
  [v0 setSessionInvalidationError_];
}

uint64_t sub_2250F4AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250F4B18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2250F4BF8;

  return sub_2250F3104(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2250F4BF8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_225072D68();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_2250F4CE4()
{
  result = qword_280D533F0;
  if (!qword_280D533F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D533F0);
  }

  return result;
}

uint64_t sub_2250F4D28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_2250F4D88(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AA65DF0);
  }

  return result;
}

uint64_t sub_2250F4DD8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_2250F4E2C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t sub_2250F4E5C()
{
  v0 = sub_2250F4E2C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for CKLogEvent()
{
  result = qword_27D7194A8;
  if (!qword_27D7194A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250F4F24()
{
  sub_2250F4FD0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2250F4FD0()
{
  if (!qword_27D7194B8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7194B8);
    }
  }
}

uint64_t sub_2250F5070(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = sub_225072D1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_225098668();
  MEMORY[0x28223BE20](v15);
  v17 = &v70[-v16];
  v18 = sub_2250B0DFC(&qword_27D7194C8, &qword_225445F58);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v70[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v70[-v23];
  v25 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v26 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v27 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_37;
  }

  v72 = v2;
  v74 = v8;
  v73 = type metadata accessor for CKLogEvent();
  v28 = *(v73 + 32);
  v29 = *(v18 + 48);
  sub_2250F4AA8(a1 + v28, v24);
  sub_2250F4AA8(a2 + v28, &v24[v29]);
  sub_22507F37C(v24);
  if (v25)
  {
    sub_22507F37C(&v24[v29]);
    if (v25)
    {
      sub_22507F168(v24, &unk_27D719260, &unk_225445B40);
      goto LABEL_27;
    }

LABEL_25:
    v34 = v24;
LABEL_36:
    sub_22507F168(v34, &qword_27D7194C8, &qword_225445F58);
    goto LABEL_37;
  }

  sub_2250F4AA8(v24, v17);
  sub_22507F37C(&v24[v29]);
  if (v30)
  {
    v31 = *(v74 + 8);
    v32 = sub_22507F4B0();
    v33(v32);
    goto LABEL_25;
  }

  v35 = v74;
  (*(v74 + 32))(v12, &v24[v29], v5);
  sub_225072E1C();
  sub_2250F5958(v36, v37);
  v71 = sub_225075630();
  v38 = *(v35 + 8);
  (v38)(v12, v5);
  v39 = sub_22507F4B0();
  v38(v39);
  sub_22507F168(v24, &unk_27D719260, &unk_225445B40);
  if ((v71 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  v40 = v73;
  v41 = *(v73 + 36);
  v42 = *(v18 + 48);
  sub_2250F4AA8(a1 + v41, v22);
  sub_2250F4AA8(a2 + v41, &v22[v42]);
  sub_22507F37C(v22);
  if (!v25)
  {
    sub_2250F4AA8(v22, v72);
    sub_22507F37C(&v22[v42]);
    if (!v43)
    {
      v49 = v74;
      (*(v74 + 32))(v12, &v22[v42], v5);
      sub_225072E1C();
      sub_2250F5958(v50, v51);
      v52 = sub_225075630();
      v53 = *(v49 + 8);
      (v53)(v12, v5);
      v54 = sub_22507F4B0();
      v53(v54);
      sub_22507F168(v22, &unk_27D719260, &unk_225445B40);
      if (v52)
      {
        goto LABEL_40;
      }

LABEL_37:
      v47 = 0;
      return v47 & 1;
    }

    v44 = *(v74 + 8);
    v45 = sub_22507F4B0();
    v46(v45);
    goto LABEL_35;
  }

  sub_22507F37C(&v22[v42]);
  if (!v25)
  {
LABEL_35:
    v34 = v22;
    goto LABEL_36;
  }

  sub_22507F168(v22, &unk_27D719260, &unk_225445B40);
LABEL_40:
  if ((MEMORY[0x22AA62460](a1 + v40[10], a2 + v40[10]) & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v40[11]);
  v57 = v25 && v55 == v56;
  if (!v57 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v40[12]);
  v60 = v25 && v58 == v59;
  if (!v60 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v40[13]);
  v63 = v25 && v61 == v62;
  if (!v63 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v40[14]);
  v66 = v25 && v64 == v65;
  if (!v66 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22507CDD0(v40[15]);
  if (v25 && v67 == v68)
  {
    v47 = 1;
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v47 & 1;
}

uint64_t sub_2250F55A0()
{
  v2 = type metadata accessor for Date();
  v3 = sub_225072D1C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_225098668();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = *v0;
  v16 = v0[1];
  String.hash(into:)();
  v17 = v0[2];
  v18 = v0[3];
  String.hash(into:)();
  v19 = v0[4];
  v20 = v0[5];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 12));
  v21 = type metadata accessor for CKLogEvent();
  sub_2250F4AA8(v0 + v21[8], v14);
  if (sub_22507C8E8(v14, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v9, v14, v2);
    Hasher._combine(_:)(1u);
    sub_225072E1C();
    sub_2250F5958(v22, v23);
    sub_22507C9B4();
    (*(v5 + 8))(v9, v2);
  }

  sub_2250F4AA8(v0 + v21[9], v1);
  if (sub_22507C8E8(v1, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v9, v1, v2);
    Hasher._combine(_:)(1u);
    sub_225072E1C();
    sub_2250F5958(v24, v25);
    sub_22507C9B4();
    (*(v5 + 8))(v9, v2);
  }

  v26 = v21[10];
  type metadata accessor for TimeZone();
  sub_2250F5958(&qword_27D7194E0, MEMORY[0x277CC9A70]);
  dispatch thunk of Hashable.hash(into:)();
  sub_225072C88(v21[11]);
  sub_225072C88(v21[12]);
  sub_225072C88(v21[13]);
  sub_225072C88(v21[14]);
  return sub_225072C88(v21[15]);
}

Swift::Int sub_2250F58B8()
{
  Hasher.init(_seed:)();
  sub_2250F55A0();
  return Hasher._finalize()();
}

uint64_t sub_2250F58F8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_2250F5910()
{
  Hasher.init(_seed:)();
  sub_2250F55A0();
  return Hasher._finalize()();
}

uint64_t sub_2250F5958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2250F59A0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2250B0DFC(&qword_27D7193C0, &qword_225445B38);
  v7 = sub_22507CD44(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  v12 = type metadata accessor for SaltedHash();
  v13 = sub_22507CD44(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SessionInvalidationContext();
  v18 = sub_22507CD44(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  v22 = sub_22507CD44(v21);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v69 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v69 - v32;
  result = MEMORY[0x28223BE20](v31);
  v36 = &v69 - v35;
  if (*MEMORY[0x277CBC810] != 1)
  {
    __break(1u);
    return result;
  }

  v37 = sub_2250F60E4(v3);
  if (v37)
  {
    v38 = v37;
    v76 = a1;
    v77 = a2;

    AnyHashable.init<A>(_:)();
    sub_2250ACD74(v78, v38, &v79);

    sub_2250B28FC(v78);
    if (*(&v80 + 1))
    {
      v74 = v11;
      type metadata accessor for CKSessionReadinessErrorBox();
      result = sub_22507F39C();
      if ((result & 1) == 0)
      {
        return result;
      }

      v72 = v78[0];
      v39 = [v3 container];
      v40 = [v39 options];

      v41 = [v40 ckSessionAcquiredInfo];
      if (v41)
      {
        type metadata accessor for CKSessionAcquiredInfo();
        if (swift_dynamicCastClass())
        {
          CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
          v42 = 0;
        }

        else
        {
          v42 = 1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v42 = 1;
      }

      v46 = type metadata accessor for AnySessionAcquiredInfo();
      sub_22507C8C0(v36, v42, 1, v46);
      v47 = sub_2250F60E4(v3);
      v73 = v3;
      if (v47)
      {
        v48 = v47;
        v76 = 0xD000000000000025;
        v77 = 0x800000022547B4A0;
        AnyHashable.init<A>(_:)();
        sub_2250ACD74(v78, v48, &v79);

        sub_2250B28FC(v78);
        if (*(&v80 + 1))
        {
          type metadata accessor for CKSessionInvalidationContext();
          if (sub_22507F39C())
          {
            v49 = v78[0];
LABEL_29:
            v63 = v72;
            v64 = v49;
            v65 = related decl 'e' for CKUnderlyingErrorCode.init(sessionReadinessErrorBox:invalidationContextBox:)();
            v66 = _convertErrorToNSError(_:)();

            v67 = [v66 CKClientSuitableError];
            v68 = [v73 container];
            [v68 applySessionValidityErrorForTesting_];

            v43 = &unk_27D7193B0;
            v44 = &qword_225445E18;
            v45 = v36;
            return sub_22507F168(v45, v43, v44);
          }

LABEL_19:
          sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_225444480;
          v51 = [v3 container];
          v52 = [v51 deviceID];

          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          *(v50 + 32) = v53;
          *(v50 + 40) = v55;
          SaltedHash.init(_:)();
          sub_2250F6150(v36, v33);
          sub_225072CA4(v33);
          if (v56)
          {
            sub_22507F168(v33, &unk_27D7193B0, &qword_225445E18);
            v70 = 0;
            v71 = 0;
          }

          else
          {
            v57 = AnySessionAcquiredInfo.serviceName.getter();
            v70 = v58;
            v71 = v57;
            sub_225072E34();
            (*(v59 + 8))(v33, v46);
          }

          sub_2250F6150(v36, v30);
          sub_225072CA4(v30);
          if (v56)
          {
            sub_22507F168(v30, &unk_27D7193B0, &qword_225445E18);
            v69 = 0;
          }

          else
          {
            v69 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
            sub_225072E34();
            (*(v60 + 8))(v30, v46);
          }

          sub_2250F6150(v36, v27);
          sub_225072CA4(v27);
          if (v56)
          {
            sub_22507F168(v27, &unk_27D7193B0, &qword_225445E18);
          }

          else
          {
            AnySessionAcquiredInfo.userPersonaUniqueString.getter();
            sub_225072E34();
            (*(v61 + 8))(v27, v46);
          }

          type metadata accessor for CKSessionInvalidationContext();
          v62 = type metadata accessor for SessionInvalidationContext.KeySyncRequest();
          sub_22507C8C0(v74, 1, 1, v62);
          SessionInvalidationContext.init(deviceIDHash:primaryServiceName:privilegedInfoHash:userPersonaUniqueString:keySyncRequest:)();
          v49 = CKSessionInvalidationContext.__allocating_init(_:)();
          goto LABEL_29;
        }
      }

      else
      {
        v79 = 0u;
        v80 = 0u;
      }

      sub_22507F168(&v79, &qword_27D718AE0, &unk_225443AA0);
      goto LABEL_19;
    }
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  v43 = &qword_27D718AE0;
  v44 = &unk_225443AA0;
  v45 = &v79;
  return sub_22507F168(v45, v43, v44);
}

uint64_t sub_2250F60E4(void *a1)
{
  v1 = [a1 unitTestOverrides];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_2250F6150(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&unk_27D7193B0, &qword_225445E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250F61C8()
{
  result = type metadata accessor for PartialTrafficLog.RequestMetadata(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PartialTrafficLog.ResponseMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_2250F628C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2250F62A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2250F62E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2250F6360()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_2250F63FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2250F63FC()
{
  if (!qword_280D53500)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_280D53500);
    }
  }
}

uint64_t sub_2250F6458(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2250F6498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return sub_2250FBC5C(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_2250FBC5C(result, a2);
    }
  }

  return result;
}

uint64_t sub_2250F64DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return sub_2250FBC5C(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_2250FBC5C(result, a2);
    }
  }

  return result;
}

void sub_2250F654C()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_2250F63FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2250F6608(uint64_t *a1, uint64_t *a2)
{
  sub_22507CEE8(a1, a2);
  v7 = v7 && v5 == v6;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v8 = type metadata accessor for PartialTrafficLog.RequestMetadata(0), (sub_2250FBCE4(v8)) && (v9 = v4[6], (static URL.== infix(_:_:)()) && ((sub_2250FBC44(v4[7]), v7) ? (v12 = v10 == v11) : (v12 = 0), (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_2250FA094(*(v3 + v4[8]), *(v2 + v4[8])) & 1) != 0 && ((sub_2250FBC44(v4[9]), v7) ? (v15 = v13 == v14) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    v16 = *(v3 + v4[10]) ^ *(v2 + v4[10]) ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2250F66D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7107189 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73726564616568 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4374736575716572 && a2 == 0xEC0000007373616CLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000018 && 0x800000022547B560 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

void sub_2250F6918()
{
  sub_225094964();
  v2 = v1;
  v45 = v3;
  v47 = type metadata accessor for URL();
  v4 = sub_225072D1C(v47);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_225072C00();
  v49 = type metadata accessor for Date();
  v7 = sub_225072D1C(v49);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_225072C00();
  v46 = sub_2250B0DFC(&qword_27D719638, &qword_2254465A8);
  sub_225072D1C(v46);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v14);
  sub_2250FBCB8();
  v48 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
  v15 = sub_225072BF0(v48);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_225072C00();
  v20 = (v19 - v18);
  v21 = v2[3];
  v22 = v2[4];
  v23 = sub_225098910();
  sub_225073BAC(v23, v24);
  sub_2250974A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_225073BF0(v2);
  }

  else
  {
    v25 = v11;
    sub_2250FBBA0();
    *v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v20[1] = v26;
    sub_2250958B0();
    sub_225072CC4();
    sub_2250FA4F0(v27, v28);
    sub_2250FBBA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = sub_225095434(v48[5]);
    v30(v29);
    sub_2250FBBF0();
    sub_225082680();
    sub_2250FA4F0(v31, v32);
    sub_2250FBBA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = sub_225095434(v48[6]);
    v34(v33);
    sub_2250FBBA0();
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = (v20 + v48[7]);
    *v36 = v35;
    v36[1] = v37;
    sub_2250B0DFC(&qword_27D719600, &qword_225446578);
    sub_22508E770(&qword_27D719608);
    sub_2250FBBA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v20 + v48[8]) = v50;
    sub_2250FBBA0();
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = (v20 + v48[9]);
    *v39 = v38;
    v39[1] = v40;
    sub_2250FBBA0();
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = *(v25 + 8);
    v43 = sub_225097E20();
    v44(v43);
    *(v20 + v48[10]) = v41 & 1;
    sub_2250FA634(v20, v45, type metadata accessor for PartialTrafficLog.RequestMetadata);
    sub_225073BF0(v2);
    sub_2250FA03C(v20, type metadata accessor for PartialTrafficLog.RequestMetadata);
  }

  sub_225095814();
}

uint64_t sub_2250F6F44(uint64_t *a1, uint64_t *a2)
{
  sub_22507CEE8(a1, a2);
  v7 = v7 && v5 == v6;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  if ((sub_2250FBCE4(v8) & 1) == 0 || *(v3 + *(v4 + 24)) != *(v2 + *(v4 + 24)))
  {
    return 0;
  }

  v9 = *(v4 + 28);
  v10 = *(v3 + v9);
  v11 = *(v2 + v9);

  return sub_2250FA094(v10, v11);
}

uint64_t sub_2250F6FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

void sub_2250F7134()
{
  sub_225094964();
  v4 = v3;
  v27 = v5;
  v6 = type metadata accessor for Date();
  v7 = sub_225072D1C(v6);
  v28 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_225072C00();
  sub_2250FBCB8();
  v30 = sub_2250B0DFC(&qword_27D7195F0, &qword_225446570);
  sub_225072D1C(v30);
  v29 = v11;
  v13 = *(v12 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22507F234();
  v16 = type metadata accessor for PartialTrafficLog.ResponseMetadata(v15);
  v17 = sub_225072BF0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_225072C00();
  v22 = (v21 - v20);
  v23 = v4[4];
  sub_225073BAC(v4, v4[3]);
  sub_225097A9C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_225073BF0(v4);
  }

  else
  {
    *v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v22[1] = v24;
    sub_2250958B0();
    sub_225072CC4();
    sub_2250FA4F0(v25, v26);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 32))(v22 + v16[5], v1, v6);
    sub_2250FBBF0();
    *(v22 + v16[6]) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_2250B0DFC(&qword_27D719600, &qword_225446578);
    sub_22508E770(&qword_27D719608);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v2, v30);
    *(v22 + v16[7]) = v31;
    sub_2250FA634(v22, v27, type metadata accessor for PartialTrafficLog.ResponseMetadata);
    sub_225073BF0(v4);
    sub_2250FA03C(v22, type metadata accessor for PartialTrafficLog.ResponseMetadata);
  }

  sub_225095814();
}

uint64_t sub_2250F74D4(uint64_t *a1, uint64_t *a2)
{
  sub_22507CEE8(a1, a2);
  v6 = v6 && v4 == v5;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v3[2] == v2[2])
  {
    v7 = v3[4];
    v8 = v2[4];
    if (v7)
    {
      if (v8)
      {
        v9 = v3[3] == v2[3] && v7 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2250F7558(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x436567617373656DLL && a2 == 0xEC0000007373616CLL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_2250F7674()
{
  sub_225094964();
  v3 = v2;
  v5 = v4;
  v6 = sub_2250B0DFC(&qword_27D7195D8, &qword_225446560);
  sub_225072D1C(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v11);
  sub_2250FBBBC();
  sub_225097E2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_225073BF0(v3);
  }

  else
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    sub_2250958B0();
    sub_2250FA5E0();
    sub_2250FBBE4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_2250FBBF0();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v1;
    v18 = v17;
    (*(v8 + 8))(v16, v6);
    sub_225073BF0(v3);
    *v5 = v12;
    v5[1] = v14;
    v5[2] = v19;
    v5[3] = v15;
    v5[4] = v18;
  }

  sub_225095814();
}

uint64_t sub_2250F7860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a5 && a2 == a6;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    JUMPOUT(0x22AA62370);
  }

  return 0;
}

uint64_t sub_2250F78E8(uint64_t a1, uint64_t a2)
{
  v5 = a1 == sub_2250755B0() && a2 == v4;
  if (v5 || (sub_2250FBD04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61447463656A626FLL && a2 == 0xEA00000000006174)
  {

    return 1;
  }

  else
  {
    v8 = sub_2250FBD04();

    if (v8)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_2250F7994(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](a1 & 1);
  return Hasher._finalize()();
}

void sub_2250F79DC()
{
  sub_225094964();
  v3 = v2;
  v6 = sub_2250981D4(v4, v5);
  v8 = sub_2250B0DFC(v6, v7);
  sub_225072D1C(v8);
  v10 = *(v9 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v11);
  sub_2250FBBBC();
  v3();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_225073BF0(v0);
  }

  else
  {
    sub_2250FBCD8();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_2250FA58C();
    sub_2250FBBE4();
    sub_2250FBCD8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = sub_225095458();
    v13(v12);

    v14 = sub_225098910();
    sub_22508D04C(v14, v15);
    sub_225073BF0(v0);

    v16 = sub_225098910();
    sub_22508D128(v16, v17);
  }

  sub_225095814();
}

uint64_t sub_2250F7B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_2250F7BB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2250755B0();
  if (v5 == v3 && a2 == v4)
  {

    v8 = 0;
  }

  else
  {
    v7 = sub_2250FBD04();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

void sub_2250F7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_225094964();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v28 = sub_2250981D4(v26, v27);
  v30 = sub_2250B0DFC(v28, v29);
  sub_225072D1C(v30);
  a10 = v31;
  v33 = *(v32 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  v37 = v20[4];
  sub_225073BAC(v20, v20[3]);
  v25();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(a10 + 8))(v36, v30);
  }

  sub_225073BF0(v20);
  sub_225095814();
}

uint64_t sub_2250F7D58(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v97 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  v5 = sub_225072BF0(v97);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  sub_2250FBC38(v9 - v8);
  v10 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_225072C00();
  sub_2250FBC38(v13 - v12);
  v14 = type metadata accessor for PartialTrafficLog(0);
  v15 = sub_225072BF0(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v95 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v95 - v25;
  MEMORY[0x28223BE20](v24);
  sub_22507F2B4();
  MEMORY[0x28223BE20](v27);
  sub_22509764C();
  MEMORY[0x28223BE20](v28);
  sub_225098210();
  MEMORY[0x28223BE20](v29);
  v31 = (&v95 - v30);
  v32 = *(*(sub_2250B0DFC(&qword_27D7194E8, &qword_2254464A8) - 8) + 64);
  sub_22507CA80();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (&v95 + *(v34 + 56) - v35);
  v37 = a1;
  v38 = &v95 - v35;
  sub_2250FA634(v37, &v95 - v35, type metadata accessor for PartialTrafficLog);
  sub_2250FA634(v100, v36, type metadata accessor for PartialTrafficLog);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_225072E44();
      sub_2250FA634(v38, v3, v60);
      v62 = *v3;
      v61 = v3[1];
      v64 = v3[2];
      v63 = v3[3];
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v86 = v64;
        goto LABEL_48;
      }

      v65 = *v36;
      v66 = v36[1];
      v67 = v36[2];
      v68 = v36[3];
      v69 = v62 == v65 && v61 == v66;
      if (!v69 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        sub_22508D128(v67, v68);

        v91 = v64;
        goto LABEL_55;
      }

      v70 = MEMORY[0x22AA62370](v64, v63, v67, v68);

      sub_22508D128(v67, v68);

      sub_22508D128(v64, v63);
      if (v70)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    case 2u:
      sub_225072E44();
      sub_2250FA634(v38, v2, v46);
      v48 = *v2;
      v47 = v2[1];
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_40;
    case 3u:
      sub_225072E44();
      v51 = v99;
      sub_2250FA634(v38, v99, v52);
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_22509873C();
        v41 = v51;
        goto LABEL_43;
      }

      v53 = v98;
      sub_225095610(v36, v98, type metadata accessor for PartialTrafficLog.ResponseMetadata);
      v54 = *v51 == *v53 && v51[1] == v53[1];
      v55 = v97;
      if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v56 = v55[5];
        if (static Date.== infix(_:_:)() & 1) != 0 && *(v51 + v55[6]) == *(v53 + v55[6]) && (sub_2250FA094(*(v51 + v55[7]), *(v53 + v55[7])))
        {
          sub_22507CCE0();
          sub_2250FA03C(v53, v57);
          v58 = sub_22507F8F0();
          sub_2250FA03C(v58, v59);
          goto LABEL_46;
        }
      }

      sub_22507CCE0();
      sub_2250FA03C(v53, v87);
      v88 = sub_22507F8F0();
      sub_2250FA03C(v88, v89);
      goto LABEL_56;
    case 4u:
      sub_225072E44();
      sub_2250FA634(v38, v26, v42);
      v43 = *(v26 + 1);
      v101 = *v26;
      *v102 = v43;
      *&v102[16] = *(v26 + 4);
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v44 = *(v36 + 1);
        v103 = *v36;
        *v104 = v44;
        *&v104[16] = v36[4];
        v45 = sub_2250F74D4(&v101, &v103);
        v105 = v103;
        sub_2250F9F98(&v105);
        v106 = *&v104[8];
        sub_2250F9FEC(&v106, &qword_27D718AE8);
        v107 = v101;
        sub_2250F9F98(&v107);
        v108[0] = *&v102[8];
        sub_2250F9FEC(v108, &qword_27D718AE8);
        goto LABEL_52;
      }

      v108[0] = *v26;
      sub_2250F9F98(v108);
      v103 = *&v102[8];
      sub_2250F9FEC(&v103, &qword_27D718AE8);
      goto LABEL_49;
    case 5u:
      sub_225072E44();
      sub_2250FA634(v38, v23, v71);
      v73 = *v23;
      v72 = v23[1];
      v74 = v23[2];
      v63 = v23[3];
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        v86 = v74;
LABEL_48:
        sub_22508D128(v86, v63);
        goto LABEL_49;
      }

      v75 = v36[2];
      v76 = v36[3];
      v77 = v73 == *v36 && v72 == v36[1];
      if (v77 || (v78 = v36[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v79 = sub_22507F8F0();
        v80 = MEMORY[0x22AA62370](v79);

        v81 = sub_2250FBCA0();
        sub_22508D128(v81, v82);

        v83 = sub_22507F8F0();
        sub_22508D128(v83, v84);
        if (v80)
        {
          goto LABEL_46;
        }
      }

      else
      {

        v92 = sub_2250FBCA0();
        sub_22508D128(v92, v93);

        v91 = v74;
LABEL_55:
        sub_22508D128(v91, v63);
      }

      goto LABEL_56;
    case 6u:
      sub_225072E44();
      sub_2250FA634(v38, v20, v85);
      v48 = *v20;
      v47 = v20[1];
      sub_22508D110();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_40:

        goto LABEL_49;
      }

LABEL_7:
      if (v48 == *v36 && v47 == v36[1])
      {

        goto LABEL_46;
      }

      sub_22507F8F0();
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v50)
      {
LABEL_46:
        sub_225075304();
        v45 = 1;
        return v45 & 1;
      }

LABEL_56:
      sub_225075304();
LABEL_57:
      v45 = 0;
      return v45 & 1;
    default:
      sub_225072E44();
      sub_2250FA634(v38, v31, v39);
      sub_22508D110();
      if (!swift_getEnumCaseMultiPayload())
      {
        v90 = v96;
        sub_225095610(v36, v96, type metadata accessor for PartialTrafficLog.RequestMetadata);
        v45 = sub_2250F6608(v31, v90);
        sub_2250FA03C(v90, type metadata accessor for PartialTrafficLog.RequestMetadata);
        sub_2250FA03C(v31, type metadata accessor for PartialTrafficLog.RequestMetadata);
LABEL_52:
        sub_225075304();
        return v45 & 1;
      }

      sub_22507D3E0();
      v41 = v31;
LABEL_43:
      sub_2250FA03C(v41, v40);
LABEL_49:
      sub_2250F9FEC(v38, &qword_27D7194E8);
      goto LABEL_57;
  }
}

uint64_t sub_2250F84B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D74736575716572 && a2 == 0xEF61746164617465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4F74736575716572 && a2 == 0xED00007463656A62;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x800000022547B500 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000022547B520 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x800000022547B540 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65736E6F70736572 && a2 == 0xEE007463656A624FLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2250F870C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2250FBD04();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2250F8774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_225094964();
  a19 = v24;
  a20 = v25;
  a10 = v20;
  v27 = v26;
  v190 = v28;
  v29 = sub_2250B0DFC(&qword_27D7194F0, &qword_2254464B8);
  v30 = sub_225072D1C(v29);
  v191 = v31;
  v192 = v30;
  v33 = *(v32 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v34);
  sub_22507E74C();
  v189 = v35;
  v184 = sub_2250B0DFC(&qword_27D7194F8, &qword_2254464C0);
  sub_225072D1C(v184);
  v183 = v36;
  v38 = *(v37 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v39);
  sub_22507E74C();
  v198 = v40;
  v182 = sub_2250B0DFC(&qword_27D719500, &qword_2254464C8);
  sub_225072D1C(v182);
  v181 = v41;
  v43 = *(v42 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v44);
  sub_22507E74C();
  v188 = v45;
  v180 = sub_2250B0DFC(&qword_27D719508, &qword_2254464D0);
  sub_225072D1C(v180);
  v179 = v46;
  v48 = *(v47 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v49);
  sub_22507E74C();
  v187 = v50;
  v177 = sub_2250B0DFC(&qword_27D719510, &qword_2254464D8);
  sub_225072D1C(v177);
  v178 = v51;
  v53 = *(v52 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v54);
  sub_22507E74C();
  v197 = v55;
  v176 = sub_2250B0DFC(&qword_27D719518, &qword_2254464E0);
  sub_225072D1C(v176);
  v175 = v56;
  v58 = *(v57 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v59);
  sub_22507E74C();
  v186 = v60;
  v174 = sub_2250B0DFC(&qword_27D719520, &qword_2254464E8);
  sub_225072D1C(v174);
  v173 = v61;
  v63 = *(v62 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v64);
  sub_22507E74C();
  v185 = v65;
  v196 = sub_2250B0DFC(&qword_27D719528, &qword_2254464F0);
  sub_225072D1C(v196);
  v194 = v66;
  v68 = *(v67 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v69);
  v70 = sub_22507F234();
  v193 = type metadata accessor for PartialTrafficLog(v70);
  v71 = sub_225072BF0(v193);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22507F2B4();
  MEMORY[0x28223BE20](v74);
  sub_22507F2B4();
  MEMORY[0x28223BE20](v75);
  sub_22507F2B4();
  v77 = MEMORY[0x28223BE20](v76);
  v79 = &v164 - v78;
  MEMORY[0x28223BE20](v77);
  sub_22509764C();
  MEMORY[0x28223BE20](v80);
  sub_225098210();
  v82 = MEMORY[0x28223BE20](v81);
  v84 = &v164 - v83;
  MEMORY[0x28223BE20](v82);
  v86 = &v164 - v85;
  v87 = v27[3];
  v88 = v27[4];
  v199 = v27;
  v89 = sub_2250FBCA0();
  sub_225073BAC(v89, v90);
  sub_225095468();
  v195 = v23;
  v91 = a10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v91)
  {
    goto LABEL_10;
  }

  v168 = v22;
  v170 = v84;
  v169 = v21;
  v171 = v79;
  v92 = v197;
  v93 = v198;
  a10 = v86;
  v94 = KeyedDecodingContainer.allKeys.getter();
  v98 = sub_2250FA234(v94, 0);
  if (v96 == v97 >> 1)
  {
    v99 = v193;
LABEL_9:
    v112 = type metadata accessor for DecodingError();
    swift_allocError();
    v114 = v113;
    v115 = *(sub_2250B0DFC(&qword_27D719530, &qword_2254464F8) + 48);
    *v114 = v99;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v112 - 8) + 104))(v114, *MEMORY[0x277D84160], v112);
    swift_willThrow();
    swift_unknownObjectRelease();
    v116 = sub_22507C9D4();
    v117(v116);
LABEL_10:
    v118 = v199;
LABEL_11:
    sub_225073BF0(v118);
    sub_225095814();
    return;
  }

  v166 = 0;
  if (v96 < (v97 >> 1))
  {
    v165 = *(v95 + v96);
    v100 = sub_2250FA27C(v96 + 1, v97 >> 1, v98, v95, v96, v97);
    v102 = v101;
    v104 = v103;
    swift_unknownObjectRelease();
    v167 = v100;
    v106 = v191;
    v105 = v192;
    if (v102 == v104 >> 1)
    {
      switch(v165)
      {
        case 1:
          LOBYTE(v200[0]) = 1;
          sub_225097660();
          v125 = v186;
          sub_225075650(&type metadata for PartialTrafficLog.RequestObjectCodingKeys, v200);
          sub_2250FA49C();
          v92 = v176;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          sub_22507E9C4(&a10);
          v148(v125, v92);
          v149 = sub_22507C9D4();
          v150(v149);
          sub_22509587C(v200[0]);
          goto LABEL_18;
        case 2:
          LOBYTE(v200[0]) = 2;
          sub_2250FA3F4();
          sub_225075650(&type metadata for PartialTrafficLog.RequestBodyStreamResetCodingKeys, v200);
          sub_2250FA448();
          sub_2250FBC68();
          sub_225093C20();
          v120 = *(v119 - 256);
          swift_unknownObjectRelease();
          v135 = sub_22507F280(&a13);
          v136(v135, v105);
          v137 = sub_22507CC08();
          v138(v137);
          sub_2250FBC8C(v200[0]);
          goto LABEL_18;
        case 3:
          LOBYTE(v200[0]) = 3;
          sub_225097860();
          sub_225075650(&type metadata for PartialTrafficLog.ResponseMetadataCodingKeys, v200);
          type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
          sub_22509571C();
          sub_2250FA4F0(v121, v122);
          v123 = v171;
          v124 = v180;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v139 = sub_22507F280(&a14);
          v140(v139, v124);
          v141 = sub_22507C9D4();
          v142(v141);
          swift_storeEnumTagMultiPayload();
          sub_22507F3BC();
          v147 = v123;
          break;
        case 4:
          LOBYTE(v200[0]) = 4;
          sub_225097D04();
          sub_225075650(&type metadata for PartialTrafficLog.ResponseConfigurationCodingKeys, v200);
          sub_2250FA3A0();
          sub_2250FBC68();
          sub_225093C20();
          v128 = *(v127 - 256);
          swift_unknownObjectRelease();
          v129 = sub_22507F280(&a16);
          v130(v129, v105);
          v131 = sub_22507CC08();
          v132(v131);
          v133 = v200[1];
          v134 = v202;
          v92 = v172;
          *v172 = v200[0];
          *(v92 + 8) = v133;
          *(v92 + 16) = v201;
          *(v92 + 32) = v134;
          goto LABEL_18;
        case 5:
          LOBYTE(v200[0]) = 5;
          sub_225098158();
          sub_225075650(&type metadata for PartialTrafficLog.ResponseObjectCodingKeys, v200);
          sub_2250FA34C();
          v126 = v184;
          sub_2250FBCD8();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_225093C20();
          v152 = *(v151 - 256);
          swift_unknownObjectRelease();
          sub_22507E9C4(&a18);
          v153(v93, v126);
          v154 = sub_22507CC08();
          v155(v154);
          sub_22509587C(v200[0]);
          goto LABEL_18;
        case 6:
          LOBYTE(v200[0]) = 6;
          sub_2250958BC();
          v92 = v189;
          sub_225075650(&type metadata for PartialTrafficLog.CompleteCodingKeys, v200);
          sub_2250FA2F8();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          sub_225093C20();
          v157 = *(v156 - 256);
          swift_unknownObjectRelease();
          (*(v106 + 8))(v92, v105);
          v158 = sub_22507CC08();
          v159(v158);
          sub_2250FBC8C(v200[0]);
LABEL_18:
          swift_storeEnumTagMultiPayload();
          sub_22507F3BC();
          v147 = v92;
          break;
        default:
          LOBYTE(v200[0]) = 0;
          sub_225095670();
          v107 = v185;
          sub_225075650(&type metadata for PartialTrafficLog.RequestMetadataCodingKeys, v200);
          type metadata accessor for PartialTrafficLog.RequestMetadata(0);
          sub_2250971EC();
          sub_2250FA4F0(v108, v109);
          v110 = v170;
          v111 = v174;
          sub_2250FBCD8();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          sub_22507E9C4(&v203);
          v143(v107, v111);
          v144 = sub_22507C9D4();
          v145(v144);
          swift_storeEnumTagMultiPayload();
          sub_22507F3BC();
          v147 = v110;
          break;
      }

      sub_225095610(v147, a10, v146);
      v160 = v199;
      sub_22507F3BC();
      v161 = sub_225098910();
      sub_225095610(v161, v162, v163);
      v118 = v160;
      goto LABEL_11;
    }

    v99 = v193;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_2250F94A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F66D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250F94F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250F6910();
  *a1 = result;
  return result;
}

uint64_t sub_2250F9518(uint64_t a1)
{
  v2 = sub_2250974A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9554(uint64_t a1)
{
  v2 = sub_2250974A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F95AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250F6F3C();
  *a1 = result;
  return result;
}

uint64_t sub_2250F95D4(uint64_t a1)
{
  v2 = sub_225097760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9610(uint64_t a1)
{
  v2 = sub_225097760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9690(uint64_t a1)
{
  v2 = sub_2250FA700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F96CC(uint64_t a1)
{
  v2 = sub_2250FA700();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2250F974C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_225093098();
}

uint64_t sub_2250F9794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F6FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250F97BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250F712C();
  *a1 = result;
  return result;
}

uint64_t sub_2250F97E4(uint64_t a1)
{
  v2 = sub_225097A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9820(uint64_t a1)
{
  v2 = sub_225097A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F7558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250F98A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250F766C();
  *a1 = result;
  return result;
}

uint64_t sub_2250F98C8(uint64_t a1)
{
  v2 = sub_225097E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9904(uint64_t a1)
{
  v2 = sub_225097E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2250F9940@<D0>(uint64_t a1@<X8>)
{
  sub_2250F7674();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_2250F998C(uint64_t a1)
{
  v2 = sub_2250985BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F99C8(uint64_t a1)
{
  v2 = sub_2250985BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2250F9A48()
{
  sub_2250953F8();
  sub_2250F79DC();
  if (!v1)
  {
    *v0 = v2;
    v0[1] = v3;
    v0[2] = v4;
    v0[3] = v5;
  }
}

uint64_t sub_2250F9A78(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  return sub_2250F7860(*a1, a1[1], a1[2], a1[3], *a2, a2[1]) & 1;
}

uint64_t sub_2250F9AAC(uint64_t a1)
{
  v2 = sub_225093204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9AE8(uint64_t a1)
{
  v2 = sub_225093204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F84B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250F9BBC(uint64_t a1)
{
  v2 = sub_225095468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9BF8(uint64_t a1)
{
  v2 = sub_225095468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9C34(uint64_t a1)
{
  v2 = sub_2250958BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9C70(uint64_t a1)
{
  v2 = sub_2250958BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9CAC(uint64_t a1)
{
  v2 = sub_2250FA3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9CE8(uint64_t a1)
{
  v2 = sub_2250FA3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9D24(uint64_t a1)
{
  v2 = sub_225095670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9D60(uint64_t a1)
{
  v2 = sub_225095670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9D9C(uint64_t a1)
{
  v2 = sub_225097660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9DD8(uint64_t a1)
{
  v2 = sub_225097660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9E14(uint64_t a1)
{
  v2 = sub_225097D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9E50(uint64_t a1)
{
  v2 = sub_225097D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9E8C(uint64_t a1)
{
  v2 = sub_225097860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9EC8(uint64_t a1)
{
  v2 = sub_225097860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9F04(uint64_t a1)
{
  v2 = sub_225098158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250F9F40(uint64_t a1)
{
  v2 = sub_225098158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250F9FEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2250981D4(a1, a2);
  v5 = sub_2250B0DFC(v3, v4);
  sub_225072BF0(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t sub_2250FA03C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_225072BF0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2250FA094(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22507DF9C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2250FA234(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2250FA27C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2250FA2F8()
{
  result = qword_27D719538;
  if (!qword_27D719538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719538);
  }

  return result;
}

unint64_t sub_2250FA34C()
{
  result = qword_27D719540;
  if (!qword_27D719540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719540);
  }

  return result;
}

unint64_t sub_2250FA3A0()
{
  result = qword_27D719548;
  if (!qword_27D719548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719548);
  }

  return result;
}

unint64_t sub_2250FA3F4()
{
  result = qword_280D53A98;
  if (!qword_280D53A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53A98);
  }

  return result;
}

unint64_t sub_2250FA448()
{
  result = qword_27D719558;
  if (!qword_27D719558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719558);
  }

  return result;
}

unint64_t sub_2250FA49C()
{
  result = qword_27D719560;
  if (!qword_27D719560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719560);
  }

  return result;
}

uint64_t sub_2250FA4F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2250FA538()
{
  result = qword_280D53B18;
  if (!qword_280D53B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B18);
  }

  return result;
}

unint64_t sub_2250FA58C()
{
  result = qword_27D7195C8;
  if (!qword_27D7195C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7195C8);
  }

  return result;
}

unint64_t sub_2250FA5E0()
{
  result = qword_27D7195E0;
  if (!qword_27D7195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7195E0);
  }

  return result;
}

uint64_t sub_2250FA634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_225072BF0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2250FA694(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2250C7B40(&qword_27D719600, &qword_225446578);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2250FA700()
{
  result = qword_280D53B30;
  if (!qword_280D53B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B30);
  }

  return result;
}

uint64_t sub_2250FA7A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2250FA82C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_225095790(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2250FA914(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2250FA99C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          result = sub_225095790(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CloudKitDaemon17PartialTrafficLogO22RequestBodyStreamResetV10CodingKeysOwet_0_0(unsigned __int8 *a1, int a2)
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

  return sub_2250C5F04(a1);
}

_BYTE *_s14CloudKitDaemon17PartialTrafficLogO22RequestBodyStreamResetV10CodingKeysOwst_0_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_2250FABD0()
{
  result = qword_27D719650;
  if (!qword_27D719650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719650);
  }

  return result;
}

unint64_t sub_2250FAC28()
{
  result = qword_27D719658;
  if (!qword_27D719658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719658);
  }

  return result;
}

unint64_t sub_2250FAC80()
{
  result = qword_27D719660;
  if (!qword_27D719660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719660);
  }

  return result;
}

unint64_t sub_2250FACD8()
{
  result = qword_27D719668;
  if (!qword_27D719668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719668);
  }

  return result;
}

unint64_t sub_2250FAD30()
{
  result = qword_27D719670;
  if (!qword_27D719670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719670);
  }

  return result;
}

unint64_t sub_2250FAD88()
{
  result = qword_27D719678;
  if (!qword_27D719678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719678);
  }

  return result;
}

unint64_t sub_2250FADE0()
{
  result = qword_27D719680;
  if (!qword_27D719680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719680);
  }

  return result;
}

unint64_t sub_2250FAE38()
{
  result = qword_27D719688;
  if (!qword_27D719688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719688);
  }

  return result;
}

unint64_t sub_2250FAE90()
{
  result = qword_27D719690;
  if (!qword_27D719690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719690);
  }

  return result;
}

unint64_t sub_2250FAEE8()
{
  result = qword_27D719698;
  if (!qword_27D719698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719698);
  }

  return result;
}

unint64_t sub_2250FAF40()
{
  result = qword_27D7196A0;
  if (!qword_27D7196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196A0);
  }

  return result;
}

unint64_t sub_2250FAF98()
{
  result = qword_27D7196A8;
  if (!qword_27D7196A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196A8);
  }

  return result;
}

unint64_t sub_2250FAFF0()
{
  result = qword_27D7196B0;
  if (!qword_27D7196B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196B0);
  }

  return result;
}

unint64_t sub_2250FB048()
{
  result = qword_27D7196B8;
  if (!qword_27D7196B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196B8);
  }

  return result;
}

unint64_t sub_2250FB0A0()
{
  result = qword_27D7196C0;
  if (!qword_27D7196C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196C0);
  }

  return result;
}

unint64_t sub_2250FB0F8()
{
  result = qword_280D53CD8;
  if (!qword_280D53CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CD8);
  }

  return result;
}

unint64_t sub_2250FB150()
{
  result = qword_280D53CE0;
  if (!qword_280D53CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CE0);
  }

  return result;
}

unint64_t sub_2250FB1A8()
{
  result = qword_280D53D38;
  if (!qword_280D53D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D38);
  }

  return result;
}

unint64_t sub_2250FB200()
{
  result = qword_280D53D40;
  if (!qword_280D53D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D40);
  }

  return result;
}

unint64_t sub_2250FB258()
{
  result = qword_280D53B20;
  if (!qword_280D53B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B20);
  }

  return result;
}

unint64_t sub_2250FB2B0()
{
  result = qword_280D53B28;
  if (!qword_280D53B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B28);
  }

  return result;
}

unint64_t sub_2250FB308()
{
  result = qword_280D53C10;
  if (!qword_280D53C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53C10);
  }

  return result;
}

unint64_t sub_2250FB360()
{
  result = qword_280D53C18;
  if (!qword_280D53C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53C18);
  }

  return result;
}

unint64_t sub_2250FB3B8()
{
  result = qword_280D53B40;
  if (!qword_280D53B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B40);
  }

  return result;
}

unint64_t sub_2250FB410()
{
  result = qword_280D53B48;
  if (!qword_280D53B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B48);
  }

  return result;
}

unint64_t sub_2250FB468()
{
  result = qword_280D53D18;
  if (!qword_280D53D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D18);
  }

  return result;
}

unint64_t sub_2250FB4C0()
{
  result = qword_280D53D20;
  if (!qword_280D53D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D20);
  }

  return result;
}

unint64_t sub_2250FB518()
{
  result = qword_280D53CF8;
  if (!qword_280D53CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CF8);
  }

  return result;
}

unint64_t sub_2250FB570()
{
  result = qword_280D53D00;
  if (!qword_280D53D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D00);
  }

  return result;
}

unint64_t sub_2250FB5C8()
{
  result = qword_280D53AD0;
  if (!qword_280D53AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AD0);
  }

  return result;
}

unint64_t sub_2250FB620()
{
  result = qword_280D53AD8;
  if (!qword_280D53AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AD8);
  }

  return result;
}

unint64_t sub_2250FB678()
{
  result = qword_280D53B00;
  if (!qword_280D53B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B00);
  }

  return result;
}

unint64_t sub_2250FB6D0()
{
  result = qword_280D53B08;
  if (!qword_280D53B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B08);
  }

  return result;
}

unint64_t sub_2250FB728()
{
  result = qword_280D53A88;
  if (!qword_280D53A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53A88);
  }

  return result;
}

unint64_t sub_2250FB780()
{
  result = qword_280D53A90;
  if (!qword_280D53A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53A90);
  }

  return result;
}

unint64_t sub_2250FB7D8()
{
  result = qword_280D53AB8;
  if (!qword_280D53AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AB8);
  }

  return result;
}

unint64_t sub_2250FB830()
{
  result = qword_280D53AC0;
  if (!qword_280D53AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AC0);
  }

  return result;
}

unint64_t sub_2250FB888()
{
  result = qword_280D53AA0;
  if (!qword_280D53AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AA0);
  }

  return result;
}

unint64_t sub_2250FB8E0()
{
  result = qword_280D53AA8;
  if (!qword_280D53AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AA8);
  }

  return result;
}

unint64_t sub_2250FB938()
{
  result = qword_280D53AE8;
  if (!qword_280D53AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AE8);
  }

  return result;
}

unint64_t sub_2250FB990()
{
  result = qword_280D53AF0;
  if (!qword_280D53AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AF0);
  }

  return result;
}

unint64_t sub_2250FB9E8()
{
  result = qword_280D53B58;
  if (!qword_280D53B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B58);
  }

  return result;
}

unint64_t sub_2250FBA40()
{
  result = qword_280D53B60;
  if (!qword_280D53B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B60);
  }

  return result;
}

unint64_t sub_2250FBA98()
{
  result = qword_280D53D50;
  if (!qword_280D53D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D50);
  }

  return result;
}

unint64_t sub_2250FBAF0()
{
  result = qword_280D53D58;
  if (!qword_280D53D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D58);
  }

  return result;
}

void *sub_2250FBBBC()
{
  v2 = v0[4];
  v3 = v0[3];

  return sub_225073BAC(v0, v3);
}

uint64_t sub_2250FBC20()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2250FBC44@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_2250FBC68()
{
  v2 = *(v0 - 256);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void *sub_2250FBC8C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 256);
  *v4 = a1;
  v4[1] = v1;
  result = v4;
  v6 = *(v3 - 184);
  return result;
}

uint64_t sub_2250FBCE4(uint64_t a1)
{
  v2 = *(a1 + 20);

  return static Date.== infix(_:_:)();
}

uint64_t sub_2250FBD04()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_2250FBD1C()
{
  v2 = *(v0 - 72);

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void sub_2250FBD34(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (a3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_225095964(0, a3, 0);
    v6 = 0;
    while (*(a4 + 16))
    {
      v7 = sub_2250D7360(v6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = (*(a4 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      v13 = *(v15 + 16);
      v12 = *(v15 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_225095964(v12 > 1, v13 + 1, 1);
      }

      ++v6;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      if (a3 == v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_2250FBE3C(uint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  v3 = (a1 + 56);
  if (!v2)
  {
    return v9;
  }

  while (1)
  {
    v4 = *(v3 - 1);
    v5 = *v3;
    v6 = *(v3 - 2);
    v8[0] = *(v3 - 3);
    v8[1] = v6;
    v8[2] = v4;
    v8[3] = v5;

    sub_2250FBF00(&v9, v8);
    if (v1)
    {
      break;
    }

    v3 += 4;
    if (!--v2)
    {
      return v9;
    }
  }
}

void sub_2250FBF00(uint64_t a1, uint64_t a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  sub_2250FBD34(a1, a2, *(a2 + 16), *(a2 + 24));
  v22[0] = v3;
  sub_2250B0DFC(&qword_27D7196C8, qword_225447640);
  sub_2250FC218();
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;

  sub_2250FC27C();

  v7 = sub_2250FC2C0(v4, v6, 0);
  if (v7)
  {
    v8 = v7;

    v22[0] = 0;
    v9 = [v8 decompressedDataUsingAlgorithm:0 error:v22];
    v10 = v22[0];
    if (v9)
    {
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = type metadata accessor for PropertyListDecoder();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_2250B0DFC(&qword_27D7196E0, &qword_225447A40);
      sub_2250FC340(&qword_27D7196E8, &unk_27D7196F0);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v2)
      {

        v17 = type metadata accessor for JSONDecoder();
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        sub_2250C6DCC(v22[0]);
      }

      else
      {
        sub_2250C6DCC(v22[0]);
      }

      sub_22508D128(v11, v13);
    }

    else
    {
      v20 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    _StringGuts.grow(_:)(43);

    v22[0] = 0xD000000000000029;
    v22[1] = 0x800000022547B580;
    MEMORY[0x22AA62E50](v4, v6);

    related decl 'e' for CKErrorCode.init(_:description:)();
    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2250FC218()
{
  result = qword_27D7196D0;
  if (!qword_27D7196D0)
  {
    sub_2250C7B40(&qword_27D7196C8, qword_225447640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7196D0);
  }

  return result;
}

unint64_t sub_2250FC27C()
{
  result = qword_27D7196D8;
  if (!qword_27D7196D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7196D8);
  }

  return result;
}

id sub_2250FC2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x22AA62D80](a1, a2);

  v8 = [v6 initWithBase64EncodedString:v7 options:a3];

  return v8;
}

uint64_t sub_2250FC340(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2250C7B40(&qword_27D7196E0, &qword_225447A40);
    sub_2250FC3C8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2250FC3C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PartialTrafficLog(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2250FC41C(void *a1)
{
  if (a1[2])
  {
    sub_2250B0DFC(&qword_27D719790, &qword_225443F00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = a1[8];
  sub_225098754();
  v6 = v5 >> 6;

  v8 = 0;
  while (1)
  {
    if (!v1)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v3;
        }

        v1 = a1[v9 + 8];
        ++v8;
        if (v1)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v1)) | (v9 << 6);
    sub_22508DECC(a1[6] + 40 * v10, __src);
    sub_22508DF28(a1[7] + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_22508DECC(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v1 &= v1 - 1;
    sub_22508DF28(&__dst[40], v22);
    sub_22507F168(__dst, &unk_27D719760, &qword_225447800);
    v23 = v20;
    sub_2250B28C8(v22, v24);
    v11 = v23;
    sub_2250B28C8(v24, v25);
    sub_2250B28C8(v25, &v23);
    result = sub_22507DF9C(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      v14 = v3[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v3[7] + 32 * v12);
      sub_225073BF0(v16);
      result = sub_2250B28C8(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_20;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v11;
      result = sub_2250B28C8(&v23, (v3[7] + 32 * result));
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_21;
      }

      v3[2] = v19;
      v8 = v9;
    }
  }

  sub_22507F168(__dst, &unk_27D719760, &qword_225447800);

  return 0;
}

unint64_t sub_2250FC6B4(void *a1)
{
  if (a1[2])
  {
    sub_2250B0DFC(&unk_27D719780, &qword_225447860);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = a1[8];
  sub_225098754();
  v6 = v5 >> 6;

  v8 = 0;
  while (1)
  {
    if (!v1)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v3;
        }

        v1 = a1[v9 + 8];
        ++v8;
        if (v1)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v1)) | (v9 << 6);
    v11 = (a1[6] + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_22508DF28(a1[7] + 32 * v10, v28);
    *&v27 = v12;
    *(&v27 + 1) = v13;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v14 = v27;
    sub_2250B28C8(v26, v25);

    sub_2250B0DFC(&qword_27D719058, &unk_225445058);
    if (!swift_dynamicCast())
    {
      break;
    }

    v1 &= v1 - 1;
    result = sub_22507DF9C(v14, *(&v14 + 1));
    v15 = result;
    if (v16)
    {
      v17 = v3[6] + 16 * result;
      v18 = *(v17 + 8);
      *v17 = v14;

      v19 = v3[7];
      v20 = *(v19 + 8 * v15);
      *(v19 + 8 * v15) = v24;

      v8 = v9;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_20;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v14;
      *(v3[7] + 8 * result) = v24;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_21;
      }

      v3[2] = v23;
      v8 = v9;
    }
  }

  return 0;
}

unint64_t sub_2250FC8F4(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_2250FC90C(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](a1);
  return Hasher._finalize()();
}

Swift::Int sub_2250FC98C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](a2);
  return Hasher._finalize()();
}

unint64_t sub_2250FC9D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2250FC8F4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_2250FCA64()
{
  type metadata accessor for TrafficLogger();
  swift_allocObject();
  result = sub_2250FD274();
  qword_280D586F8 = result;
  return result;
}

uint64_t sub_2250FCAD4()
{
  sub_2250FDD7C();
  static __CKLogSubsystem.name.getter();
  result = OS_os_log.init(subsystem:category:)();
  qword_280D54D20 = result;
  return result;
}

uint64_t sub_2250FCB24()
{
  sub_225072C10();
  sub_22507F248();
  v2 = *(v0 + 88);
  v3 = *v1;
  sub_225072D68();
  *v4 = v3;

  sub_22508D11C();
  v6 = *(v5 + 80);
  v7 = *(v0 + 56);

  sub_225095734();

  return v8();
}

uint64_t sub_2250FCC34()
{
  sub_225072C10();
  sub_22507F248();
  v2 = *(v0 + 96);
  v3 = *v1;
  sub_225072D68();
  *v4 = v3;

  sub_22508D11C();
  v6 = *(v5 + 80);
  v7 = *(v0 + 56);

  sub_225095734();

  return v8();
}

uint64_t sub_2250FCD44()
{
  sub_225072C10();
  v1 = *(v0 + 40);

  sub_225075274();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_2250FCDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_22507F0F8(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_22507C8E8(v11, 1, v12);

  if (v13 == 1)
  {
    sub_22507F168(v11, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2250FCFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_22507F0F8(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_22507C8E8(v12, 1, v13);

  if (v14 == 1)
  {
    sub_22507F168(v12, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_2250FD274()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  v1 = type metadata accessor for TrafficLogger();
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_2250FD2EC()
{
  v1 = v0[14];

  v2 = v0[17];
  swift_unknownObjectRelease();
  v3 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2250FD324()
{
  sub_2250FD2EC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2250FD374()
{
  sub_225072C10();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PartialTrafficLog(0);
  v1[5] = v4;
  sub_22507CD44(v4);
  v6 = *(v5 + 64);
  v1[6] = sub_22507D3C8();
  v7 = sub_225098658();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2250FD3F4()
{
  sub_225072C10();
  if (sub_22507E8DC())
  {
    v2 = v0[5];
    v1 = v0[6];
    v3 = v0[3];
    *v1 = v0[2];
    v1[1] = v3;
    swift_storeEnumTagMultiPayload();

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_2250FDE2C;
    v5 = v0[4];
    sub_22507CCC8(v0[6]);

    return sub_22507E9DC();
  }

  else
  {
    v7 = v0[6];

    sub_225075274();

    return v8();
  }
}

uint64_t sub_2250FD500(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2250FDE28;

  return sub_2250FD374();
}

uint64_t sub_2250FD5D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_22508D03C();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2250FD60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_22507F0F8(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_22507C8E8(v12, 1, v13) == 1)
  {
    sub_22507F168(v12, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22507F168(a3, &qword_27D7190D0, &qword_225445B10);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22507F168(a3, &qword_27D7190D0, &qword_225445B10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2250FD8D8()
{
  sub_22507CE94();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22507D36C(v4);
  *v5 = v6;
  v5[1] = sub_225095DA4;
  v7 = sub_22507CC80();

  return v8(v7);
}

uint64_t sub_2250FD980()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  v2 = sub_22508D03C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2250FD9C8()
{
  sub_225072C10();
  v2 = v0[10];
  v1 = v0[11];

  sub_225075274();
  v4 = v0[15];

  return v3();
}

uint64_t sub_2250FDA2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2250B0DFC(&qword_27D719890, &qword_2254477F8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_225102B64(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2250FDCE0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2250FDCEC(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 32));
  v4 = sub_225097204();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2250FDD34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2250FDD7C()
{
  result = qword_280D533E8;
  if (!qword_280D533E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D533E8);
  }

  return result;
}

unint64_t sub_2250FDDD4()
{
  result = qword_27D719798;
  if (!qword_27D719798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719798);
  }

  return result;
}

uint64_t sub_2250FDE7C()
{
  v1 = *(v0 + OBJC_IVAR___CKLTrafficLogMessage_uuid);
  v2 = *(v0 + OBJC_IVAR___CKLTrafficLogMessage_uuid + 8);

  return sub_225075280();
}

uint64_t sub_2250FDF5C()
{
  v1 = *(v0 + OBJC_IVAR___CKLTrafficLogMessage_requestMethod);
  v2 = *(v0 + OBJC_IVAR___CKLTrafficLogMessage_requestMethod + 8);

  return sub_225075280();
}

Class sub_2250FE18C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v12 - v7;
  a3(v6);
  v9 = type metadata accessor for Date();
  isa = 0;
  if (sub_22507C8E8(v8, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  return isa;
}

Class sub_2250FE2DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

Class sub_2250FE370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    sub_2250B0DFC(&qword_27D7197C0, &qword_225447A70);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

id sub_2250FE3F4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v42 = a7;
  v14 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v18 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = &v7[OBJC_IVAR___CKLTrafficLogMessage_uuid];
  *v25 = a1;
  *(v25 + 1) = a2;
  if (a3)
  {
    v26 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
    swift_beginAccess();
    sub_2250C853C(&a3[v26], v24, &unk_27D719260, &unk_225445B40);
  }

  else
  {
    v27 = type metadata accessor for Date();
    sub_22507C8C0(v24, 1, 1, v27);
  }

  sub_2250C8588(v24, &v7[OBJC_IVAR___CKLTrafficLogMessage_requestTime], &unk_27D719260, &unk_225445B40);
  if (a3)
  {
    v28 = *&a3[OBJC_IVAR___CKDTrafficMetadata_method + 8];
    v29 = &v7[OBJC_IVAR___CKLTrafficLogMessage_requestMethod];
    *v29 = *&a3[OBJC_IVAR___CKDTrafficMetadata_method];
    *(v29 + 1) = v28;
    v30 = OBJC_IVAR___CKDTrafficMetadata_url;

    swift_beginAccess();
    sub_2250C853C(&a3[v30], v17, &qword_27D7197B8, &unk_225447A60);
  }

  else
  {
    v31 = &v7[OBJC_IVAR___CKLTrafficLogMessage_requestMethod];
    v32 = type metadata accessor for URL();
    *v31 = 0;
    *(v31 + 1) = 0;
    sub_22507C8C0(v17, 1, 1, v32);
  }

  sub_2250C8588(v17, &v7[OBJC_IVAR___CKLTrafficLogMessage_requestURL], &qword_27D7197B8, &unk_225447A60);
  if (a3)
  {
    v33 = *&a3[OBJC_IVAR___CKDTrafficMetadata_headers];
  }

  else
  {
    v34 = 0;
  }

  *&v7[OBJC_IVAR___CKLTrafficLogMessage_requestHeaders] = v34;
  *&v7[OBJC_IVAR___CKLTrafficLogMessage_requestObjects] = a4;
  *&v7[OBJC_IVAR___CKLTrafficLogMessage_bodyStreamResetCount] = a5;
  if (a6)
  {
    v35 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
    swift_beginAccess();
    sub_2250C853C(&a6[v35], v22, &unk_27D719260, &unk_225445B40);
  }

  else
  {
    v36 = type metadata accessor for Date();
    sub_22507C8C0(v22, 1, 1, v36);
  }

  sub_2250C8588(v22, &v7[OBJC_IVAR___CKLTrafficLogMessage_responseTime], &unk_27D719260, &unk_225445B40);
  if (a6)
  {
    *&v7[OBJC_IVAR___CKLTrafficLogMessage_responseStatus] = *&a6[OBJC_IVAR___CKDTrafficMetadata_status];
    v37 = *&a6[OBJC_IVAR___CKDTrafficMetadata_headers];
  }

  else
  {
    v38 = 0;
    *&v7[OBJC_IVAR___CKLTrafficLogMessage_responseStatus] = 0;
  }

  *&v7[OBJC_IVAR___CKLTrafficLogMessage_responseHeaders] = v38;
  *&v7[OBJC_IVAR___CKLTrafficLogMessage_responseObjects] = v42;
  v39 = type metadata accessor for TrafficLogMessage();
  v43.receiver = v7;
  v43.super_class = v39;
  v40 = objc_msgSendSuper2(&v43, sel_init);

  return v40;
}

id sub_2250FE8BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x22AA62D80](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2250FE948(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR___CKLTrafficLogMessage_requestHeaders);
  if (v2)
  {
    v3 = *a1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_2250ACDD8(v4, v5, v2);
  }

  return sub_225075280();
}

uint64_t sub_2250FEA14()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x22AA62E50](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x22AA62E50](v1);

  MEMORY[0x22AA62E50](0xD000000000000012, 0x800000022547BA80);
  v2 = sub_2250FE898();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  MEMORY[0x22AA62E50](v2, v4);

  MEMORY[0x22AA62E50](0xD000000000000015, 0x800000022547BAA0);
  v5 = sub_2250FE93C();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  MEMORY[0x22AA62E50](v5, v7);

  MEMORY[0x22AA62E50](0x3D6469757520, 0xE600000000000000);
  MEMORY[0x22AA62E50](*(v0 + OBJC_IVAR___CKLTrafficLogMessage_uuid), *(v0 + OBJC_IVAR___CKLTrafficLogMessage_uuid + 8));
  MEMORY[0x22AA62E50](62, 0xE100000000000000);
  return 0;
}

id sub_2250FEBC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrafficLogMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TrafficLogMessage()
{
  result = qword_27D7197A8;
  if (!qword_27D7197A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250FED50()
{
  sub_2250FEE84(319, &qword_27D7194B8, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_2250FEE84(319, &qword_27D719870, MEMORY[0x277CC9260]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2250FEE84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2250FEED8()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_27D71F8C0 = v5;
    *algn_27D71F8C8 = v7;
  }

  return result;
}

void sub_2250FEFD8(void *a1)
{
  [v1 _CKLogToFileHandle_atDepth_];
  if (qword_27D718AD0 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 writeData_];
}

void sub_2250FF084(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2250FEFD8(v4);
}

void sub_2250FF0EC()
{
  v1 = *(v0 + OBJC_IVAR___CKDTrafficLogParser_lock);
  os_unfair_lock_lock((v1 + 32));
  sub_225107838((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2250FF154(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v11 = *a1;
  v6 = *(a2 + 16);

  v7 = (a2 + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;

      sub_2250FF210(&v11, v10);
      if (v3)
      {
        break;
      }

      v7 += 2;
      if (!--v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:

    *a1 = v11;
  }

  return result;
}

uint64_t sub_2250FF210(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  sub_225107854();
  v5 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  v6 = v5;
  if (v5[2] != 4)
  {

    _StringGuts.grow(_:)(59);
    MEMORY[0x22AA62E50](0xD000000000000035, 0x800000022547BDA0);
    MEMORY[0x22AA62E50](58, 0xE100000000000000);
    v19 = 8250;
    v20 = 0xE200000000000000;
LABEL_8:
    MEMORY[0x22AA62E50](v19, v20);
LABEL_11:
    MEMORY[0x22AA62E50](v4, v3);
    related decl 'e' for CKErrorCode.init(_:description:)();
    return swift_willThrow();
  }

  v8 = v5[4];
  v7 = v5[5];
  v9 = v5[6];
  v10 = v5[7];

  v64 = MEMORY[0x22AA62E10](v8, v7, v9, v10);
  v67 = v11;

  if (v6[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  v63 = a1;
  v12 = v6[8];
  v13 = v6[9];
  if ((v13 ^ v12) < 0x4000)
  {
    goto LABEL_10;
  }

  v15 = v6[10];
  v14 = v6[11];
  v16 = sub_225107190(v6[8], v6[9], v15, v14, 10);
  if ((v17 & 0x100) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v18 = v16;
      goto LABEL_12;
    }

LABEL_10:

    _StringGuts.grow(_:)(46);

    goto LABEL_11;
  }

  v18 = sub_225105B6C(v12, v13, v15, v14, 10);
  v22 = v21;

  if (v22)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v6[2] < 3uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v62 = v18;
  v25 = v6[12];
  v24 = v6[13];
  if ((v24 ^ v25) < 0x4000)
  {
    goto LABEL_18;
  }

  v27 = v6[14];
  v26 = v6[15];
  v28 = sub_225107190(v6[12], v6[13], v27, v26, 10);
  if ((v29 & 0x100) == 0)
  {
    if ((v29 & 1) == 0)
    {
      v30 = v28;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v30 = sub_225105B6C(v25, v24, v27, v26, 10);
  v32 = v31;

  if (v32)
  {
LABEL_18:

    _StringGuts.grow(_:)(52);
    v19 = 0xD000000000000032;
    v20 = 0x800000022547BE10;
    goto LABEL_8;
  }

LABEL_19:
  if (v6[2] < 4uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v33 = v6[16];
  v34 = v6[17];
  v35 = v6[18];
  v36 = v6[19];

  v37 = MEMORY[0x22AA62E10](v33, v34, v35, v36);
  v60 = v38;
  v61 = v37;

  v39 = swift_allocObject();
  v39[2] = v64;
  v39[3] = v67;
  v39[4] = v30;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_2251078A8;
  *(v40 + 24) = v39;

  v41 = *v63;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v63;
  v43 = sub_22507DF9C(v64, v67);
  v45 = v65[2];
  v46 = (v44 & 1) == 0;
  v47 = v45 + v46;
  if (__OFADD__(v45, v46))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v48 = v43;
  v49 = v44;
  sub_2250B0DFC(&qword_27D7197E0, &qword_225447A50);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v47))
  {
    v50 = sub_22507DF9C(v64, v67);
    if ((v49 & 1) == (v51 & 1))
    {
      v48 = v50;
      goto LABEL_24;
    }

LABEL_32:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_24:
  *v63 = v65;
  if (v49)
  {
  }

  else
  {
    v52 = *(v40 + 24);
    v53 = (*(v40 + 16))();
    sub_225102B14(v48, v64, v67, v53, v54, v55, v56, v65);
  }

  v57 = v65[7] + 32 * v48;
  v58 = *(v57 + 24);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *(v57 + 24);
  sub_225102908(v61, v60, v62, v59);
  *(v57 + 24) = v66;
}

void sub_2250FF80C()
{
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR___CKDTrafficLogParser_lock);
  os_unfair_lock_lock((v2 + 32));
  sub_2250FF898((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 32));
  if (!v1)
  {
    CKCheckedUnsafeObjectTransfer.extractValue()();
  }
}

uint64_t sub_2250FF898@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v141 = a2;
  v4 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v143 = (&v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v142 = (&v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PartialTrafficLog(0);
  v11 = *(v10 - 8);
  v148 = v10;
  v149 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v151 = (&v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v152 = &v138 - v16;
  MEMORY[0x28223BE20](v15);
  v153 = &v138 - v17;
  v150 = a1;
  v18 = *a1;
  v21 = *(*a1 + 64);
  v20 = *a1 + 64;
  v19 = v21;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  while (v24)
  {
LABEL_9:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = (*(v18 + 56) + ((v26 << 11) | (32 * v29)));
    v31 = v30[2];
    v2 = v30[3];
    if (*(v2 + 16) == v31)
    {
      v32 = v30[1];
      v145 = *v30;
      v147 = v32;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_225102BC8(0, v27[2] + 1, 1);
        v27 = v154;
      }

      v35 = v27[2];
      v34 = v27[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v144 = v35 + 1;
        sub_225102BC8(v34 > 1, v35 + 1, 1);
        v36 = v144;
        v27 = v154;
      }

      v27[2] = v36;
      v37 = &v27[4 * v35];
      v38 = v147;
      v37[4] = v145;
      v37[5] = v38;
      v37[6] = v31;
      v37[7] = v2;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v28 >= v25)
    {
      break;
    }

    v24 = *(v20 + 8 * v28);
    ++v26;
    if (v24)
    {
      v26 = v28;
      goto LABEL_9;
    }
  }

  v147 = v27;
  v39 = v27[2];
  if (v39)
  {
    v40 = v147 + 7;
    do
    {
      v41 = *(v40 - 3);
      v42 = *(v40 - 2);
      v43 = *v40;

      v44 = sub_22507DF9C(v41, v42);
      if (v45)
      {
        v46 = v44;
        v47 = v150;
        v48 = *v150;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v154 = *v47;
        v50 = v154[3];
        sub_2250B0DFC(&qword_27D7197E0, &qword_225447A50);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v49, v50);
        v51 = v154;
        v52 = *(v154[6] + 16 * v46 + 8);

        v53 = v51[7] + 32 * v46;
        v54 = *(v53 + 8);
        v55 = *(v53 + 24);

        _NativeDictionary._delete(at:)();

        *v47 = v51;
      }

      else
      {
      }

      v40 += 4;
      --v39;
    }

    while (v39);
  }

  v56 = v146;
  v57 = sub_2250FBE3C(v147);
  v58 = v56;
  if (v56)
  {
  }

  v2 = v57;

  v60 = *(v150 + 8);
  v147 = *(v2 + 16);
  if (!v147)
  {

LABEL_48:
    *(v150 + 8) = v60;
    v91 = sub_22510658C(v60);
    v92 = v58;
    v93 = (v91 + 8);
    v94 = 1 << *(v91 + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v96 = v95 & v91[8];
    v97 = (v94 + 63) >> 6;
    v151 = v91;

    v98 = 0;
    v99 = &qword_27D7197D0;
    v153 = v93;
    while (v96)
    {
LABEL_56:
      v101 = __clz(__rbit64(v96));
      v96 &= v96 - 1;
      v102 = (v151[6] + ((v98 << 10) | (16 * v101)));
      v103 = *v102;
      v104 = v102[1];

      v2 = sub_22507DF9C(v103, v104);
      v106 = v105;

      v93 = v153;
      if (v106)
      {
        v107 = v150;
        v108 = *(v150 + 8);
        LODWORD(v152) = swift_isUniquelyReferenced_nonNull_native();
        v154 = *(v107 + 8);
        v109 = v99;
        v110 = v154[3];
        sub_2250B0DFC(v109, &qword_225447A38);
        v111 = v110;
        v99 = v109;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v152, v111);
        v112 = v154;
        v113 = *(v154[6] + 16 * v2 + 8);

        v114 = *(v112[7] + 8 * v2);

        sub_2250B0DFC(&qword_27D7196E0, &qword_225447A40);
        _NativeDictionary._delete(at:)();
        v93 = v153;
        *(v107 + 8) = v112;
      }
    }

    while (1)
    {
      v100 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_80;
      }

      if (v100 >= v97)
      {
        v115 = v151;

        v116 = *(v115 + 16);
        if (v116)
        {
          v148 = v92;
          v154 = MEMORY[0x277D84F90];
          specialized ContiguousArray.reserveCapacity(_:)();
          v118 = sub_22509F9BC(v115);
          v120 = v119;
          v2 = 0;
          v150 = v119;
          v149 = v115 + 72;
          v121 = v153;
          while ((v118 & 0x8000000000000000) == 0 && v118 < 1 << *(v115 + 32))
          {
            v122 = v118 >> 6;
            if ((*(v121 + 8 * (v118 >> 6)) & (1 << v118)) == 0)
            {
              goto LABEL_84;
            }

            if (*(v115 + 36) != v120)
            {
              goto LABEL_85;
            }

            LODWORD(v152) = v117;
            v123 = (*(v115 + 48) + 16 * v118);
            v125 = *v123;
            v124 = v123[1];
            v126 = *(*(v115 + 56) + 8 * v118);

            sub_225100404(v125, v124, v126);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v127 = v154[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v115 = v151;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v128 = 1 << *(v115 + 32);
            if (v118 >= v128)
            {
              goto LABEL_86;
            }

            v121 = v153;
            v129 = *(v153 + 8 * v122);
            if ((v129 & (1 << v118)) == 0)
            {
              goto LABEL_87;
            }

            if (*(v115 + 36) != v120)
            {
              goto LABEL_88;
            }

            v130 = v129 & (-2 << (v118 & 0x3F));
            if (v130)
            {
              v128 = __clz(__rbit64(v130)) | v118 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v131 = v122 << 6;
              v132 = v122 + 1;
              v133 = (v149 + 8 * v122);
              while (v132 < (v128 + 63) >> 6)
              {
                v135 = *v133++;
                v134 = v135;
                v131 += 64;
                ++v132;
                if (v135)
                {
                  sub_2250FDCE0(v118, v120, v152 & 1);
                  v121 = v153;
                  v128 = __clz(__rbit64(v134)) + v131;
                  goto LABEL_74;
                }
              }

              sub_2250FDCE0(v118, v120, v152 & 1);
              v121 = v153;
            }

LABEL_74:
            v117 = 0;
            ++v2;
            v118 = v128;
            v120 = v150;
            if (v2 == v116)
            {

              v92 = v148;
              goto LABEL_77;
            }
          }

          goto LABEL_83;
        }

LABEL_77:

        v154 = sub_225106DE4(v136);
        sub_225102E9C(&v154);
        v2 = v92;
        if (!v92)
        {

          v137 = v154;
          sub_2250B0DFC(&qword_27D7197D8, &qword_225447A48);
          v154 = v137;
          result = CKCheckedUnsafeObjectTransfer.__allocating_init(_:)();
          *v141 = result;
          return result;
        }

        goto LABEL_91;
      }

      v96 = *(v93 + 8 * v100);
      ++v98;
      if (v96)
      {
        v98 = v100;
        goto LABEL_56;
      }
    }
  }

  v139 = 0;
  v144 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v146 = v2 + v144;

  v61 = 0;
  v140 = v60;
  v145 = v2;
  while (v61 < *(v2 + 16))
  {
    v62 = *(v149 + 72);
    v63 = v153;
    sub_22507EE88(v146 + v62 * v61++, v153);
    v64 = v63;
    v2 = v152;
    sub_22507EE88(v64, v152);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 5u:
        v65 = *v152;
        v66 = *(v152 + 8);
        sub_22508D128(*(v152 + 16), *(v152 + 24));
        break;
      case 2u:
      case 6u:
        v65 = *v152;
        v66 = *(v152 + 8);
        break;
      case 3u:
        v68 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
        v2 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
        v69 = v152;
        v70 = v143;
        goto LABEL_32;
      case 4u:
        v65 = *v152;
        v66 = *(v152 + 8);
        v67 = *(v152 + 32);

        break;
      default:
        v68 = type metadata accessor for PartialTrafficLog.RequestMetadata;
        v2 = type metadata accessor for PartialTrafficLog.RequestMetadata;
        v69 = v152;
        v70 = v142;
LABEL_32:
        sub_225107074(v69, v70, v68);
        v65 = *v70;
        v66 = v70[1];

        sub_2251070D4(v70, v2);
        break;
    }

    sub_22507EE88(v153, v151);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v60;
    v72 = sub_22507DF9C(v65, v66);
    v74 = v60[2];
    v75 = (v73 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      goto LABEL_82;
    }

    v77 = v72;
    v2 = v73;
    sub_2250B0DFC(&qword_27D7197D0, &qword_225447A38);
    v78 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v71, v76);
    v60 = v154;
    if (v78)
    {
      v79 = sub_22507DF9C(v65, v66);
      if ((v2 & 1) != (v80 & 1))
      {
        goto LABEL_90;
      }

      v77 = v79;
    }

    if (v2)
    {
    }

    else
    {
      v60[(v77 >> 6) + 8] |= 1 << v77;
      v81 = (v60[6] + 16 * v77);
      *v81 = v65;
      v81[1] = v66;
      *(v60[7] + 8 * v77) = MEMORY[0x277D84F90];
      v82 = v60[2];
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_89;
      }

      v60[2] = v84;
    }

    v85 = v60[7];
    v86 = *(v85 + 8 * v77);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    *(v85 + 8 * v77) = v86;
    if ((v87 & 1) == 0)
    {
      v86 = sub_22507EE5C(0, *(v86 + 16) + 1, 1, v86);
      *(v85 + 8 * v77) = v86;
    }

    v89 = *(v86 + 16);
    v88 = *(v86 + 24);
    if (v89 >= v88 >> 1)
    {
      *(v85 + 8 * v77) = sub_22507EE5C(v88 > 1, v89 + 1, 1, v86);
    }

    sub_2251070D4(v153, type metadata accessor for PartialTrafficLog);
    v90 = *(v85 + 8 * v77);
    *(v90 + 16) = v89 + 1;
    sub_225107074(v151, v90 + v144 + v89 * v62, type metadata accessor for PartialTrafficLog);
    v2 = v145;
    if (v147 == v61)
    {

      v58 = v139;
      goto LABEL_48;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_91:

  __break(1u);
  return result;
}

uint64_t sub_225100404(uint64_t a1, uint64_t a2, size_t a3)
{
  v203 = a2;
  v202 = a1;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = sub_225098690(v5, &v219);
  v199 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_225072C00();
  sub_225075350(v11 - v10);
  v12 = type metadata accessor for DispatchTime();
  v13 = sub_225098690(v12, v217);
  v197 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v194 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = sub_225075350(&v179 - v19);
  v190 = type metadata accessor for PartialTrafficLog.ResponseMetadata(v20);
  v21 = sub_225072BF0(v190);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_225072C00();
  v189 = v25 - v24;
  v26 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v188 = &v179 - v28;
  v29 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = sub_225075350(&v179 - v31);
  v187 = type metadata accessor for PartialTrafficLog.RequestMetadata(v32);
  v33 = sub_225072BF0(v187);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_225072C00();
  v38 = sub_225075350(v37 - v36);
  v39 = type metadata accessor for PartialTrafficLog(v38);
  v40 = sub_225098690(v39, &v224);
  v215 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_225072C00();
  v46 = (v45 - v44);
  sub_22507E758();
  v47 = swift_allocObject();
  v48 = MEMORY[0x277D84F90];
  *(v47 + 16) = MEMORY[0x277D84F90];
  v210 = v47 + 16;
  sub_22507E758();
  v49 = swift_allocObject();
  v205 = v49;
  *(v49 + 16) = v48;
  v201 = (v49 + 16);
  v50 = type metadata accessor for TrafficMetadata();
  v211 = [objc_allocWithZone(v50) init];
  v208 = [objc_allocWithZone(v50) init];
  aBlock = a3;

  sub_225102F18(&aBlock);
  v51 = aBlock;
  sub_2250C7F8C(0, &qword_27D7197F8, off_278543C90);
  v52 = objc_allocWithZone(CKDProtobufResponseBodyParser);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v53 = [v52 initWithQoS:25 messageClass:? parsingStandaloneMessage:?];
  v222 = sub_225107724;
  v223 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v219 = 1107296256;
  v220 = sub_225101B60;
  v221 = &unk_28385C210;
  v54 = _Block_copy(&aBlock);
  v55 = v53;
  v206 = v47;

  [v55 setObjectParsedBlock_];
  _Block_release(v54);
  v216 = v55;

  v56 = *(v51 + 16);
  if (!v56)
  {
    sub_22507CC18();
    v213 = 0;
LABEL_34:

    v134 = dispatch_group_create();
    dispatch_group_enter(v134);
    sub_22509877C();
    v135 = swift_allocObject();
    v136 = v202;
    v137 = v203;
    v135[2] = v202;
    v135[3] = v137;
    v135[4] = v134;
    v222 = sub_225107758;
    v223 = v135;
    aBlock = MEMORY[0x277D85DD0];
    v219 = 1107296256;
    v220 = sub_2251021F0;
    v221 = &unk_28385C260;
    v138 = _Block_copy(&aBlock);

    v59 = v134;

    v139 = sub_22507E9D0();
    [v139 v140];
    _Block_release(v138);
    sub_22507CF04();
    if (v141)
    {
      v142 = v141;
      dispatch_group_enter(v59);
      sub_22509877C();
      v143 = swift_allocObject();
      v143[2] = v136;
      v143[3] = v137;
      v143[4] = v59;
      v222 = sub_2251077A0;
      v223 = v143;
      aBlock = MEMORY[0x277D85DD0];
      v219 = 1107296256;
      v220 = sub_2251021F0;
      v221 = &unk_28385C2B0;
      v144 = _Block_copy(&aBlock);

      v145 = v59;

      [v142 finishWithCompletion_];
      _Block_release(v144);
    }

    v146 = v194;
    static DispatchTime.now()();
    v147 = v196;
    *v196 = 5;
    v148 = v199;
    v149 = v200;
    (*(v199 + 104))(v147, *MEMORY[0x277D85188], v200);
    v150 = v195;
    MEMORY[0x22AA62BC0](v146, v147);
    (*(v148 + 8))(v147, v149);
    v151 = *(v197 + 8);
    v152 = v198;
    v151(v146, v198);
    v153 = MEMORY[0x22AA630D0](v150);
    v151(v150, v152);
    v154 = static DispatchTimeoutResult.== infix(_:_:)();
    v155 = MEMORY[0x277D837D0];
    v54 = v211;
    v156 = v201;
    if (v154)
    {
      sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
      v157 = sub_225095744();
      sub_22507C9E8(v157, xmmword_225444480);
      _StringGuts.grow(_:)(106);
      MEMORY[0x22AA62E50](0xD00000000000003DLL, 0x800000022547BC40);
      v158 = sub_225082698();
      MEMORY[0x22AA62E50](v158);
      MEMORY[0x22AA62E50](0xD00000000000002BLL, 0x800000022547BC80);
      v159 = aBlock;
      v157[3].n128_u64[1] = v155;
      sub_22507CE24(v159);
    }

    if (v52)
    {
      sub_22507F290();
      if (!sub_2251025B0(*v153))
      {
        sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
        v160 = sub_225095744();
        sub_22507C9E8(v160, xmmword_225444480);
        _StringGuts.grow(_:)(117);
        MEMORY[0x22AA62E50](0xD000000000000042, 0x800000022547BBB0);
        v161 = sub_225082698();
        MEMORY[0x22AA62E50](v161);
        MEMORY[0x22AA62E50](0xD000000000000031, 0x800000022547BC00);
        v162 = aBlock;
        v160[3].n128_u64[1] = v155;
        sub_22507CE24(v162);
      }
    }

    if (v207)
    {
      swift_beginAccess();
      if (!sub_2251025B0(*v156))
      {
        sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
        v163 = sub_225095744();
        sub_22507C9E8(v163, xmmword_225444480);
        _StringGuts.grow(_:)(119);
        MEMORY[0x22AA62E50](0xD000000000000043, 0x800000022547BB20);
        v164 = sub_225082698();
        MEMORY[0x22AA62E50](v164);
        MEMORY[0x22AA62E50](0xD000000000000032, 0x800000022547BB70);
        v165 = aBlock;
        v163[3].n128_u64[1] = v155;
        sub_22507CE24(v165);
      }
    }

    sub_22507F290();
    v166 = *v153;
    if (!(*v153 >> 62))
    {
      v167 = *v153;
      swift_bridgeObjectRetain_n();

      v168 = v54;
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      v169 = v166;
LABEL_46:
      swift_beginAccess();
      v170 = *(v205 + 16);
      objc_allocWithZone(type metadata accessor for TrafficLogMessage());
      v171 = v208;
      v172 = v208;

      v173 = sub_225082698();
      v175 = sub_2250FE3F4(v173, v174, v54, v169, v209, v171, v170);

      sub_22507CF04();
      return v175;
    }

LABEL_48:

    v178 = v54;

    sub_2250B0DFC(&qword_27D7197C0, &qword_225447A70);
    v169 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_46;
  }

  v193 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
  v192 = OBJC_IVAR___CKDTrafficMetadata_headers;
  v185 = OBJC_IVAR___CKDTrafficMetadata_status;
  v184 = &v211[OBJC_IVAR___CKDTrafficMetadata_requestClassName];
  v183 = OBJC_IVAR___CKDTrafficMetadata_url;
  v182 = &v211[OBJC_IVAR___CKDTrafficMetadata_method];
  v181 = OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage;
  v57 = v51 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
  swift_beginAccess();
  sub_22507CC18();
  v58 = 0;
  v213 = 0;
  v191 = &v220;
  v214 = v56;
  v212 = (v56 - 1);
LABEL_3:
  v59 = v58;
  while (2)
  {
    if (v59 >= *(v51 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    v60 = &v59->isa + 1;
    sub_22507EE88(v57 + *(v215 + 72) * v59, v46);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v61 = v46[1];
        v54 = v46[2];
        v62 = v46[3];
        isa = Data._bridgeToObjectiveC()().super.isa;
        v63 = sub_22507E9D0();
        [v63 v64];

        sub_22508D128(v54, v62);
        v52 = 1;
        v59 = (v59 + 1);
        if (v214 == v60)
        {
          goto LABEL_34;
        }

        continue;
      case 2u:
        sub_22507F4BC();
        sub_2251070D4(v46, v98);
        if (!__OFADD__(v209, 1))
        {
          ++v209;
          v99 = v206;
          v100 = *(v206 + 16);
          *(v206 + 16) = MEMORY[0x277D84F90];

          isa = v216;
          v101 = [objc_allocWithZone(CKDProtobufResponseBodyParser) initWithQoS:25 messageClass:objc_msgSend(v216 parsingStandaloneMessage:{sel_messageClass), objc_msgSend(v216, sel_parsingStandaloneMessage)}];
          v222 = sub_225107918;
          v223 = v99;
          sub_22507F3F8();
          v220 = v102;
          v221 = &unk_28385C300;
          v54 = _Block_copy(&aBlock);

          v103 = v101;

          [v103 setObjectParsedBlock_];
          _Block_release(v54);

          v216 = v103;
LABEL_30:
          v58 = (&v59->isa + 1);
LABEL_31:
          if (v212 == v59)
          {
            goto LABEL_34;
          }

          goto LABEL_3;
        }

        __break(1u);
LABEL_50:
        aBlock = isa;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);

        __break(1u);
        return result;
      case 3u:
        v180 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
        v116 = v189;
        sub_225107074(v46, v189, type metadata accessor for PartialTrafficLog.ResponseMetadata);
        isa = v190;
        v117 = v190[5];
        v118 = type metadata accessor for Date();
        sub_225072BF0(v118);
        v120 = *(v119 + 16);
        v121 = sub_22507CAA4();
        v122(v121);
        sub_225075670();
        v123 = v208;
        v124 = v193;
        sub_22507D378();
        sub_2251077B4(v117, &v123[v124], &unk_27D719260, &unk_225445B40);
        swift_endAccess();
        v54 = *&v123[v192];
        *&v123[v192] = *(v116 + isa[7]);

        v125 = *(v116 + isa[6]);
        sub_2251070D4(v116, v180);
        *&v123[v185] = v125;
        goto LABEL_30;
      case 4u:
        isa = v46[2];
        v109 = v46[1];
        v110 = v46[4];
        switch(isa)
        {
          case 0uLL:
          case 4uLL:
            v54 = v46[3];
            v111 = v46[1];

            if (v110 && (v54 = MEMORY[0x22AA62D80](v54, v110), , v112 = NSClassFromString(v54), v54, v112))
            {
              v113 = [objc_allocWithZone(CKDProtobufResponseBodyParser) initWithQoS:25 messageClass:v112 parsingStandaloneMessage:isa == 4];
              sub_22507CF04();

              v115 = v113;
LABEL_29:
              v222 = sub_2251077AC;
              v223 = v205;
              sub_22507F3F8();
              v220 = v131;
              v221 = &unk_28385C2D8;
              v132 = _Block_copy(&aBlock);
              v54 = v223;
              v213 = v115;
              v133 = v115;

              [v133 setObjectParsedBlock_];
              _Block_release(v132);
            }

            else
            {
              sub_22507CF04();

              v213 = 0;
            }

            break;
          case 1uLL:
            v128 = CKDJSONResponseBodyParser;
            goto LABEL_28;
          case 2uLL:
            v128 = CKDPlistResponseBodyParser;
            goto LABEL_28;
          case 3uLL:
            v128 = CKDPlaintextResponseBodyParser;
LABEL_28:
            v129 = [objc_allocWithZone(v128) initWithQoS_];

            sub_22507CF04();

            v115 = v129;
            goto LABEL_29;
          default:
            goto LABEL_50;
        }

        goto LABEL_30;
      case 5u:
        isa = v46[1];
        v104 = v46[2];
        v105 = v46[3];
        v106 = v213;
        if (v213)
        {
          v107 = v46[2];
          v108 = v46[3];
          v54 = Data._bridgeToObjectiveC()().super.isa;
          [v106 processData:v54 completionHandler:0];

          sub_22508D128(v104, v105);
        }

        else
        {
          v126 = v46[1];

          sub_22508D128(v104, v105);
        }

        v58 = (&v59->isa + 1);
        v207 = 1;
        goto LABEL_31;
      case 6u:
        sub_22507F4BC();
        v97 = v46;
        goto LABEL_16;
      default:
        v65 = v204;
        sub_225107074(v46, v204, type metadata accessor for PartialTrafficLog.RequestMetadata);
        v66 = v187;
        v67 = v65 + v187[9];
        v68 = *(v67 + 8);
        v180 = *v67;
        v69 = v184;
        v70 = v184[1];
        *v184 = v180;
        v69[1] = v68;
        v179 = v68;

        v71 = v66[5];
        v72 = type metadata accessor for Date();
        sub_225072BF0(v72);
        v74 = *(v73 + 16);
        v75 = sub_22507CAA4();
        v76(v75);
        sub_225075670();
        isa = v211;
        v77 = v193;
        sub_22507D378();
        sub_2251077B4(v71, isa + v77, &unk_27D719260, &unk_225445B40);
        swift_endAccess();
        v78 = v66[6];
        v79 = type metadata accessor for URL();
        sub_225072BF0(v79);
        v81 = *(v80 + 16);
        v82 = sub_22507CAA4();
        v83(v82);
        sub_225075670();
        v84 = v183;
        sub_22507D378();
        sub_2251077B4(v78, isa + v84, &qword_27D7197B8, &unk_225447A60);
        swift_endAccess();
        v85 = (v65 + v66[7]);
        v87 = *v85;
        v86 = v85[1];
        v88 = v182;
        v89 = *(v182 + 1);
        *v182 = v87;
        *(v88 + 1) = v86;

        v90 = *(isa + v192);
        *(isa + v192) = *(v65 + v66[8]);

        *(isa + v181) = *(v65 + v66[10]);
        v91 = sub_22507E9D0();
        [v91 v92];
        v54 = MEMORY[0x22AA62D80](v180, v179);
        v93 = NSClassFromString(v54);

        if (v93)
        {
          swift_getObjCClassMetadata();
          swift_getObjCClassFromMetadata();
        }

        v94 = sub_22507E9D0();
        [v94 v95];
        v96 = type metadata accessor for PartialTrafficLog.RequestMetadata;
        v97 = v204;
LABEL_16:
        sub_2251070D4(v97, v96);
        goto LABEL_30;
    }
  }
}

uint64_t sub_2251016F0(void *a1, uint64_t *a2)
{
  v4 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  v19 = *a2;
  sub_2250F4AA8(*a1 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v10);
  if (sub_22507C8E8(v10, 1, v11) == 1)
  {
    static Date.distantPast.getter();
    if (sub_22507C8E8(v10, 1, v11) != 1)
    {
      sub_2251076BC(v10);
    }
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
  }

  sub_2250F4AA8(v19 + OBJC_IVAR___CKLTrafficLogMessage_requestTime, v8);
  if (sub_22507C8E8(v8, 1, v11) == 1)
  {
    static Date.distantPast.getter();
    if (sub_22507C8E8(v8, 1, v11) != 1)
    {
      sub_2251076BC(v8);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v8, v11);
  }

  v20 = static Date.< infix(_:_:)();
  v21 = *(v12 + 8);
  v21(v16, v11);
  v21(v18, v11);
  return v20 & 1;
}

BOOL sub_225101A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialTrafficLog(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  sub_22507EE88(a1, v12 - v9);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_2251070D4(v10, type metadata accessor for PartialTrafficLog);
  sub_22507EE88(a2, v8);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2251070D4(v8, type metadata accessor for PartialTrafficLog);
  return a1 < a2;
}

uint64_t sub_225101B60(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v16[3] = swift_getObjectType();
  v16[0] = a2;

  swift_unknownObjectRetain();
  v9 = a3;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = _Block_copy(a4);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v8(v16, v10, v12, sub_225107814, v14);

  sub_22508D128(v10, v12);

  return sub_225073BF0(v16);
}

uint64_t sub_225101C58(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_22508DF28(a1, &v21);
  sub_2250C7F8C(0, &qword_27D719808, 0x277D43168);
  if (swift_dynamicCast())
  {
    v9 = swift_beginAccess();
    MEMORY[0x22AA62F00](v9);
    sub_225102584(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = swift_endAccess();
  }

  else
  {
    sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
    v11 = sub_225095744();
    *(v11 + 16) = xmmword_225444480;
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v21 = 0xD000000000000021;
    v22 = 0x800000022547BCB0;
    v12 = a1[3];
    v13 = sub_225073BAC(a1, v12);
    v14 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v13);
    sub_225072C00();
    (*(v17 + 16))(v16 - v15);
    v18 = String.init<A>(describing:)();
    MEMORY[0x22AA62E50](v18);

    v19 = v21;
    *(v11 + 56) = MEMORY[0x277D837D0];
    sub_22507CE24(v19);
  }

  return a4(v10);
}

uint64_t sub_225101E74(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_22508DF28(a1, &v22);
  sub_2250B0DFC(&qword_27D7197C0, &qword_225447A70);
  if (swift_dynamicCast())
  {
    v9 = swift_beginAccess();
    MEMORY[0x22AA62F00](v9);
    sub_225102584(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = swift_endAccess();
  }

  else
  {
    sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_225444480;
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    MEMORY[0x22AA62E50](0xD00000000000003BLL, 0x800000022547BCE0);
    v12 = a1[3];
    v13 = sub_225073BAC(a1, v12);
    v14 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v13);
    (*(v16 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = String.init<A>(describing:)();
    MEMORY[0x22AA62E50](v17);

    v18 = v22;
    v19 = v23;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = v18;
    *(v11 + 40) = v19;
    print(_:separator:terminator:)();
  }

  return a4(v10);
}

void sub_2251020B4(void *a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_225444480;
    v9 = a1;
    _StringGuts.grow(_:)(67);
    MEMORY[0x22AA62E50](0xD00000000000003DLL, 0x800000022547BD60);
    MEMORY[0x22AA62E50](a2, a3);
    MEMORY[0x22AA62E50](8250, 0xE200000000000000);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

  dispatch_group_leave(group);
}

void sub_2251021F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_22510225C(void *a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    sub_2250B0DFC(&qword_27D719800, &qword_225447A78);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_225444480;
    v9 = a1;
    _StringGuts.grow(_:)(68);
    MEMORY[0x22AA62E50](0xD00000000000003ELL, 0x800000022547BD20);
    MEMORY[0x22AA62E50](a2, a3);
    MEMORY[0x22AA62E50](8250, 0xE200000000000000);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

  dispatch_group_leave(group);
}

id sub_225102398()
{
  v1 = OBJC_IVAR___CKDTrafficLogParser_lock;
  sub_2250B0DFC(&qword_27D719838, &qword_225447AB0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  v3 = MEMORY[0x277D84F98];
  *(v2 + 16) = MEMORY[0x277D84F98];
  *(v2 + 24) = v3;
  *&v0[v1] = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TrafficLogParser();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_225102434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrafficLogParser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22510249C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2251024DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225102528(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for TrafficLogMessage();
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_225102584(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_2251025B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x22AA633A0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

void *sub_2251025D4(uint64_t a1, uint64_t a2)
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

  sub_2250B0DFC(&qword_27D718C88, &qword_225443F10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_225102650(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_225102674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2250D72C0(a2, a3, a4, a5);
  sub_22507CCF8(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_2250B0DFC(&unk_27D719848, &qword_225447AD0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a6 & 1, v14))
  {
    goto LABEL_5;
  }

  v22 = *v7;
  v23 = sub_2250D72C0(a2, a3, a4, a5);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v23;
LABEL_5:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v20);
    *(v26 + 8 * v20) = a1;
  }

  else
  {
    sub_225102A38(v20, a2, a3, a4, a5, a1, v25);
  }
}

uint64_t sub_2251027D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22507DF9C(a2, a3);
  sub_22507CCF8(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_2250B0DFC(&qword_27D719298, &qword_225445B70);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v10))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_22507DF9C(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_225102A84(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_225102908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2250D7360(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_2250B0DFC(&qword_27D719828, &unk_225447AA0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_2250D7360(a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_225102ACC(v16, a3, a1, a2, v21);
  }
}

unint64_t sub_225102A38(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
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

unint64_t sub_225102A84(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_225102ACC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_225102B14(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_225102B64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2254479E0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}