char *PARSessionSwiftInternal.init(session:configuration:connection:delegate:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___PARSessionSwiftInternal_lock;
  *&v3[v8] = swift_slowAlloc();
  v41 = OBJC_IVAR___PARSessionSwiftInternal__mapsListener;
  *&v3[OBJC_IVAR___PARSessionSwiftInternal__mapsListener] = 0;
  *&v3[OBJC_IVAR___PARSessionSwiftInternal__bag] = 0;
  v3[OBJC_IVAR___PARSessionSwiftInternal__sampled] = 0;
  *&v3[OBJC_IVAR___PARSessionSwiftInternal__sampleClientTimingEventAllowlist] = 0;
  v9 = OBJC_IVAR___PARSessionSwiftInternal_activityMonitor;
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  *&v3[v9] = sub_1B1066358();
  v10 = &v3[OBJC_IVAR___PARSessionSwiftInternal__deviceContext];
  type metadata accessor for DeviceContext();
  swift_allocObject();
  *v10 = sub_1B106655C();
  v10[1] = &off_1F27787B8;
  *&v3[OBJC_IVAR___PARSessionSwiftInternal_skappToken] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  **&v3[v8] = 0;
  *&v3[OBJC_IVAR___PARSessionSwiftInternal__configuration] = a2;
  swift_unknownObjectWeakAssign();
  v11 = objc_opt_self();
  v12 = a2;
  v13 = [v11 defaultManager];
  *&v4[OBJC_IVAR___PARSessionSwiftInternal_fileManager] = v13;
  if (a3)
  {
    v14 = objc_allocWithZone(type metadata accessor for PARSearchClient());
    v15 = a3;
    PARSearchClient.init(connection:)();
    *&v4[OBJC_IVAR___PARSessionSwiftInternal_client] = v16;
  }

  else
  {
    if (qword_1EDAD60E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = qword_1EDAD60F8;
    *&v4[OBJC_IVAR___PARSessionSwiftInternal_client] = qword_1EDAD60F8;
    v18 = v17;
  }

  swift_unknownObjectWeakAssign();
  v19 = [v12 userAgent];
  v20 = sub_1B1122A5C();
  v22 = v21;

  v45 = v20;
  v46 = v22;
  v43 = 0x6867696C746F7073;
  v44 = 0xE900000000000074;
  sub_1B1067A94();
  LOBYTE(v19) = OUTLINED_FUNCTION_14_0();

  if (v19)
  {
    v23 = 1;
LABEL_12:
    v34 = [objc_allocWithZone(MEMORY[0x1E69A2568]) initWithClientType_];
    v35 = *&v4[v41];
    *&v4[v41] = v34;

    goto LABEL_13;
  }

  v24 = [v12 userAgent];
  v25 = sub_1B1122A5C();
  v27 = v26;

  v45 = v25;
  v46 = v27;
  OUTLINED_FUNCTION_53_0();
  v43 = v28;
  v44 = v29;
  LOBYTE(v24) = OUTLINED_FUNCTION_14_0();

  if (v24)
  {
    v23 = 2;
    goto LABEL_12;
  }

  v30 = [v12 userAgent];
  v31 = sub_1B1122A5C();
  v33 = v32;

  v45 = v31;
  v46 = v33;
  v43 = 1769105779;
  v44 = 0xE400000000000000;
  LOBYTE(v30) = OUTLINED_FUNCTION_14_0();

  if (v30)
  {
    v23 = 3;
    goto LABEL_12;
  }

LABEL_13:
  v42.receiver = v4;
  v42.super_class = type metadata accessor for PARSessionSwiftInternal();
  v36 = objc_msgSendSuper2(&v42, sel_init);
  v37 = *&v36[OBJC_IVAR___PARSessionSwiftInternal_client];
  v38 = v36;
  v39 = v37;
  sub_1B1067B94();

  swift_unknownObjectRelease();
  return v38;
}

void __checkValidParsecHost_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskGetCodeSignStatus(v0) & 0x4000001;
    checkValidParsecHost_isValidHost = v2 == 67108865;
    if (v2 != 67108865)
    {
      if (MGGetBoolAnswer())
      {
        v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.parsec.default-client", 0);
        if (v3)
        {
          v4 = v3;
          v5 = CFGetTypeID(v3);
          if (v5 == CFStringGetTypeID())
          {
            v6 = [v4 length];
            CFRelease(v4);
            if (v6)
            {
              checkValidParsecHost_isValidHost = 1;
            }
          }

          else
          {
            CFRelease(v4);
          }
        }
      }
    }

    CFRelease(v1);
  }
}

void *sub_1B1066358()
{
  OUTLINED_FUNCTION_0_9();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  v1[4] = v2;
  v1[5] = v4;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9()
{
  *(v0 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_once();
}

uint64_t sub_1B106655C()
{
  v1 = v0;
  v2 = sub_1B11219AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v7 = [objc_opt_self() currentLocale];
  sub_1B112199C();

  v8 = sub_1B112198C();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 24);
  *(v1 + 16) = v8;
  *(v1 + 24) = v10;

  v12 = [objc_opt_self() sharedConfiguration];
  if (v12)
  {
    v12 = sub_1B10666E0(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v1 + 40);
  *(v1 + 32) = v12;
  *(v1 + 40) = v13;

  v15 = sub_1B112271C();
  v16 = *(v1 + 56);
  *(v1 + 48) = v15;
  *(v1 + 56) = v17;

  v18 = sub_1B112272C();
  v19 = *(v1 + 72);
  *(v1 + 64) = v18;
  *(v1 + 72) = v20;

  return v1;
}

uint64_t sub_1B10666E0(void *a1)
{
  v2 = [a1 countryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1122A5C();

  return v3;
}

id sub_1B1066750()
{
  result = [objc_allocWithZone(type metadata accessor for PARSearchClient()) init];
  qword_1EDAD60F8 = result;
  return result;
}

uint64_t PARSearchClient.init()()
{
  sub_1B1066864(0, qword_1EDAD6030, 0x1E696B0B8);
  sub_1B10668A4();
  v0 = objc_allocWithZone(type metadata accessor for PARSearchClient());
  PARSearchClient.init(connection:)();
  v2 = v1;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_1B1066864(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_1B10668A4()
{
  OUTLINED_FUNCTION_25_1();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_69();
  v2 = sub_1B1122A4C();

  v3 = [v1 initWithMachServiceName:v2 options:v0];

  return v3;
}

void PARSearchClient.init(connection:)()
{
  OUTLINED_FUNCTION_57();
  v30 = v2;
  v3 = sub_1B1122E1C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_1();
  v9 = sub_1B1122E0C();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = sub_1B11229BC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_2();
  *&v0[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_sessions] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader] = 0;
  *&v0[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_receivingStreamDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC10CoreParsec15PARSearchClient_queue;
  sub_1B1066864(0, &qword_1EDAD6020, 0x1E69E9610);
  sub_1B11229AC();
  v31[0] = 0;
  sub_1B1067610(&qword_1EDAD6028, MEMORY[0x1E69E8030]);
  sub_1B112317C();
  (*(v6 + 104))(v1, *MEMORY[0x1E69E8098], v3);
  *&v0[v15] = sub_1B1122E3C();
  *&v0[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection] = v30;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for PARSearchClient();
  v16 = v30;
  v17 = objc_msgSendSuper2(&v32, sel_init);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 interfaceWithProtocol_];
  [v16 setExportedInterface_];

  v21 = [v18 interfaceWithProtocol_];
  [v16 setRemoteObjectInterface_];

  v22 = OUTLINED_FUNCTION_1();
  [v22 v23];
  v24 = qword_1EDAD5DF0;
  v25 = v19;
  if (v24 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v26 = qword_1EDAD64F0;
  type metadata accessor for PARImageLoader();
  memset(v31, 0, 40);
  v27 = swift_allocObject();
  v28 = sub_1B1067008(v25, v25, v26, v31, v27);
  v29 = *&v25[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader];
  *&v25[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_imageLoader] = v28;

  [v16 resume];

  OUTLINED_FUNCTION_4_2();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_0()
{

  JUMPOUT(0x1B272EDD0);
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_1B112303C();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_1B10A429C(a2, a3);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_1B1122BAC();
}

uint64_t sub_1B1066F70()
{
  sub_1B1066864(0, &qword_1EDAD6010, 0x1E69E9BF8);
  result = sub_1B1122ECC();
  qword_1EDAD64F0 = result;
  return result;
}

void *sub_1B1067008(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  a5[2] = a3;
  type metadata accessor for FeedbackReporter();
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 24) = &off_1F2778210;
  swift_unknownObjectWeakInit();
  v12 = a3;

  *(v10 + 16) = sub_1B10A3160;
  *(v10 + 24) = v11;
  a5[3] = v10;
  type metadata accessor for URLValidator();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  a5[4] = v13;
  type metadata accessor for ImageIDToURL();
  v14 = swift_allocObject();

  a5[5] = sub_1B1067358(a2, v14);
  sub_1B106752C();
  if (v21)
  {
    sub_1B1068D4C(&v20, v22);
  }

  else
  {
    v15 = sub_1B10677E4();
    v16 = [objc_opt_self() sessionWithConfiguration_];

    sub_1B1122DAC();
  }

  sub_1B1067888(v22, &v20);
  v17 = swift_allocObject();
  sub_1B1068D4C(&v20, v17 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A2C0, &unk_1B1134C10);
  swift_allocObject();
  v18 = sub_1B1068D7C(-1, sub_1B1082A68, 0, &unk_1B1134C08, v17);

  sub_1B1067964(a4, &qword_1EB73A2B8, &qword_1B1134C00);
  __swift_destroy_boxed_opaque_existential_1(v22);
  a5[6] = v18;
  return a5;
}

uint64_t sub_1B1067284()
{
  MEMORY[0x1B272EE80](v0 + 16);
  v1 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B10672B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1067358(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = &off_1F2778200;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A2C8, &qword_1B1134C28);
  swift_allocObject();
  v5 = sub_1B1067794(-1, &unk_1B1134C20, v4);

  *(a2 + 16) = v5;
  return a2;
}

void sub_1B1067478(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB739D08, &qword_1B1134350);
  sub_1B1122C8C();
  if (v2 <= 0x3F)
  {
    sub_1B106771C();
    if (v3 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B106752C()
{
  OUTLINED_FUNCTION_79();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

uint64_t sub_1B1067610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1067660(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for FetchOnceState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B106771C()
{
  if (!qword_1EDAD5BE8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB739D08, &qword_1B1134350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDAD5BE8);
    }
  }
}

uint64_t sub_1B1067794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 3;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  return v3;
}

id sub_1B10677E4()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  [v0 setHTTPCookieStorage_];
  [v0 setURLCredentialStorage_];
  [v0 set:1 expiredDNSBehavior:?];
  [v0 set:1 usesNWLoader:?];
  [v0 set:1 disableAPWakeOnIdleConnections:?];
  return v0;
}

uint64_t sub_1B1067888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B1067964(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_3@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return sub_1B112223C();
}

unint64_t sub_1B1067A94()
{
  result = qword_1EDAD6100;
  if (!qword_1EDAD6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD6100);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14()
{
  v2 = *(*(v1 - 208) + 8);
  result = v0;
  v4 = *(v1 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return sub_1B1122F2C();
}

uint64_t OUTLINED_FUNCTION_52_0()
{
  *v0 = v1;

  return swift_storeEnumTagMultiPayload();
}

void sub_1B1067B94()
{
  OUTLINED_FUNCTION_57();
  v2 = sub_1B112298C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_73();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_1();
  v25 = *&v0[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_queue];
  OUTLINED_FUNCTION_45();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_50_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v0;
  v26[4] = sub_1B1068A24;
  v26[5] = v15;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_13_2(COERCE_DOUBLE(1107296256));
  v26[2] = v16;
  v26[3] = &block_descriptor_314;
  v17 = _Block_copy(v26);

  v18 = v0;
  sub_1B112299C();
  OUTLINED_FUNCTION_17_1();
  sub_1B1067610(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A1E8, &unk_1B11348D0);
  sub_1B1067F54();
  OUTLINED_FUNCTION_20_1();
  sub_1B1122F5C();
  v21 = OUTLINED_FUNCTION_60_0();
  MEMORY[0x1B272DE10](v21);
  _Block_release(v17);
  v22 = *(v5 + 8);
  v23 = OUTLINED_FUNCTION_0_5();
  v24(v23);
  (*(v11 + 8))(v1, v8);

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B1067DC8()
{
  MEMORY[0x1B272EE80](v0 + 16);
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B1067DFC()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v2);
}

id OUTLINED_FUNCTION_74(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_43_0(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  os_unfair_lock_lock(v3);
}

uint64_t OUTLINED_FUNCTION_13_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B1067F54()
{
  result = qword_1EDAD5D50;
  if (!qword_1EDAD5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB73A1E8, &unk_1B11348D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5D50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

id OUTLINED_FUNCTION_61()
{

  return [v1 (v0 + 1408)];
}

id sub_1B1068078()
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  v2 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal__configuration);
  os_unfair_lock_unlock(v0);
  return v2;
}

void sub_1B10680C0()
{
  v1 = *&v0[OBJC_IVAR___PARSessionSwiftInternal_client];
  v3 = sub_1B1068078();
  v2 = v0;
  sub_1B1068120();
}

void sub_1B1068120()
{
  OUTLINED_FUNCTION_41_1();
  v2 = v1;
  v4 = v3;
  v40 = v5;
  v6 = sub_1B11228AC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_38_1();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_45();
  v44 = swift_allocObject();
  *(v44 + 16) = v2;
  v16 = qword_1EDAD60C0;
  v43 = v2;
  if (v16 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v17 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v17, qword_1EDAD60D0);
  v18 = sub_1B112293C();
  v19 = sub_1B1122DFC();
  if (OUTLINED_FUNCTION_60(v19))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_87(&dword_1B1064000, v20, v21, "requesting bag");
    OUTLINED_FUNCTION_2_0();
  }

  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  OUTLINED_FUNCTION_75();
  sub_1B112285C();
  v22 = *(v4 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v23 = v0;
  v24 = *(v9 + 16);
  v42 = v23;
  v24(v14);
  v25 = *(v9 + 80);
  v39 = v11;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B106EB48;
  *(v26 + 24) = v44;
  v45 = v9;
  v27 = v6;
  v28 = *(v9 + 32);
  v41 = v27;
  v28(v26 + ((v25 + 32) & ~v25), v14);
  v50 = sub_1B10A3734;
  v51 = v26;
  OUTLINED_FUNCTION_3_6();
  v47[1] = 1107296256;
  OUTLINED_FUNCTION_3();
  v48 = v29;
  v49 = &block_descriptor_298;
  v30 = _Block_copy(v47);

  [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_53_1())
  {
    (v24)(v14, v42, v41);
    v31 = (v25 + 16) & ~v25;
    v32 = swift_allocObject();
    (v28)(v32 + v31, v14, v41);
    v33 = (v32 + ((v39 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_1B106EB48;
    v33[1] = v44;
    v50 = sub_1B106E8B4;
    v51 = v32;
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_12_2();
    v48 = v34;
    v49 = &block_descriptor_305;
    v35 = _Block_copy(v47);

    [v46 bag:v40 reply:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1122E4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v36 = OUTLINED_FUNCTION_62();
    *(v36 + 16) = xmmword_1B1133BA0;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v36 + 32) = v37;
    *(v36 + 40) = v38;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_75();
    sub_1B112284C();
  }

  (*(v45 + 8))(v42, v41);

  OUTLINED_FUNCTION_30();
}

uint64_t sub_1B10685F4()
{
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t OUTLINED_FUNCTION_41()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[20];
  v9 = v0[17];
}

unint64_t OUTLINED_FUNCTION_41_0()
{
  v4 = *(v2 - 144) == 0;

  return sub_1B1097E08(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_40()
{
  v2 = *(v0 + 48);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_40_1()
{

  JUMPOUT(0x1B272EDD0);
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return sub_1B1122BAC();
}

BOOL OUTLINED_FUNCTION_60(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_1B1121FEC();
}

uint64_t sub_1B10687B4()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD60D0);
  __swift_project_value_buffer(v0, qword_1EDAD60D0);
  return sub_1B112295C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id OUTLINED_FUNCTION_59()
{

  return [v1 (v0 + 1408)];
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *(v5 - 128);
  v8 = *(v5 - 112);

  return sub_1B10A54FC(a1, a2, v7, v8, a5);
}

uint64_t sub_1B10689E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1B1068A24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B1068A2C();
}

void sub_1B1068A2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    sub_1B1068AB8();
    swift_endAccess();
  }
}

uint64_t sub_1B1068AB8()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_1B1068C34();
  v1 = *(*v0 + 16);
  sub_1B1068C9C(v1);
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  result = sub_1B1068CDC(v4, v2 + 8 * v1 + 32);
  *v0 = v2;
  return result;
}

void sub_1B1068B34(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_63();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A2D0, &unk_1B1134C30);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 8);
      if (a1)
      {
LABEL_12:
        sub_1B10A28B8(a4 + 32, v9, (v11 + 4));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A298, &qword_1B1134BE0);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_61_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B1068C34()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B1068B34(0, *(v1 + 16) + 1, 1, v1);
    *v0 = v3;
  }
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_allocObject();
}

void sub_1B1068C9C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    sub_1B1068B34(v2 > 1, a1 + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_1B1068CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A298, &qword_1B1134BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1068D4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1B1068D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_defaultActor_initialize();
  sub_1B112186C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  sub_1B1067610(&qword_1EDAD5F10, MEMORY[0x1E6968FB0]);
  v5[14] = sub_1B1122A0C();
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = a4;
  v5[19] = a5;
  return v5;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B1068EC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_28()
{
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[16];
}

uint64_t sub_1B1068FC8()
{
  v1 = *(v0 + OBJC_IVAR___PARSessionSwiftInternal_lock);
  os_unfair_lock_lock(v1);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v1);

  return swift_unknownObjectRelease();
}

void *sub_1B106903C()
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  v2 = *(v1 + OBJC_IVAR___PARSessionSwiftInternal__bag);
  v3 = v2;
  os_unfair_lock_unlock(v0);
  return v2;
}

void PARSessionSwiftInternal.report(_:queryId:)(void *a1, uint64_t a2)
{
  v131 = *MEMORY[0x1E69E9840];
  v4 = sub_1B112197C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = sub_1B112194C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v21 = (v20 - v19);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v127 = v21;
    if (qword_1EDAD5D18 == -1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_0_8();
LABEL_3:
  v22 = sub_1B112296C();
  __swift_project_value_buffer(v22, qword_1EDAD5D20);
  v23 = a1;
  v24 = sub_1B112293C();
  v25 = sub_1B1122DCC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v125 = v16;
    v27 = v13;
    v28 = v12;
    v29 = v4;
    v30 = v7;
    v31 = a2;
    v32 = swift_slowAlloc();
    *v26 = 138412546;
    *(v26 + 4) = v23;
    *v32 = v23;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v31;
    v33 = v23;
    _os_log_impl(&dword_1B1064000, v24, v25, "reportFeedback(%@, %llu)", v26, 0x16u);
    sub_1B1067964(v32, &qword_1EB739E58, qword_1B11345F0);
    a2 = v31;
    v7 = v30;
    v4 = v29;
    v12 = v28;
    v13 = v27;
    v16 = v125;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  objc_opt_self();
  OUTLINED_FUNCTION_16_0();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_16_0();
    v38 = swift_dynamicCastObjCClass();
    v124 = v23;
    if (v38)
    {
      v39 = sub_1B10988A8(v38, &selRef_eventName);
      if (!v40)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v4 = v40;
      v23 = sub_1B108F448(v39, v40);

      if ((v23 & 1) == 0)
      {
        goto LABEL_114;
      }

LABEL_26:
      v55 = *&v128[OBJC_IVAR___PARSessionSwiftInternal__mapsListener];
      v56 = 0x1E69CA000uLL;
      v57 = v124;
      if (!v55)
      {
        goto LABEL_47;
      }

      objc_opt_self();
      v58 = OUTLINED_FUNCTION_21_0();
      v13 = &_OBJC_LABEL_PROTOCOL____CPButtonForFeedback;
      if (v58)
      {
        v4 = v58;
        v7 = &selRef_didRankSections_;
      }

      else
      {
        objc_opt_self();
        v59 = OUTLINED_FUNCTION_21_0();
        if (v59)
        {
          v4 = v59;
          v7 = &selRef_didEngageResult_;
        }

        else
        {
          objc_opt_self();
          v60 = OUTLINED_FUNCTION_21_0();
          if (v60)
          {
            v4 = v60;
            v7 = &selRef_resultsDidBecomeVisible_;
          }

          else
          {
            objc_opt_self();
            v61 = OUTLINED_FUNCTION_21_0();
            if (v61)
            {
              v4 = v61;
              v7 = &selRef_didEngageSection_;
            }

            else
            {
              objc_opt_self();
              v62 = OUTLINED_FUNCTION_21_0();
              if (v62)
              {
                v4 = v62;
                v7 = &selRef_didPerformCommand_;
              }

              else
              {
                objc_opt_self();
                v63 = OUTLINED_FUNCTION_21_0();
                if (v63)
                {
                  v4 = v63;
                  v7 = &selRef_searchViewDidDisappear_;
                }

                else
                {
                  objc_opt_self();
                  v64 = OUTLINED_FUNCTION_21_0();
                  if (!v64)
                  {
                    objc_opt_self();
                    v117 = OUTLINED_FUNCTION_21_0();
                    if (!v117)
                    {
LABEL_47:
                      if (a2)
                      {
LABEL_111:
                        v97 = [objc_allocWithZone(_CPFeedbackPayload) initWithFeedback_];
                        if (v97)
                        {
                          v98 = v97;
                          v99 = [v97 codable];

                          if (v99)
                          {
                            v100 = *&v128[OBJC_IVAR___PARSessionSwiftInternal_client];
                            v101 = sub_1B1068078();
                            swift_getObjectType();
                            v102 = v99;
                            OUTLINED_FUNCTION_35_0();
                            sub_1B106A998();
                          }
                        }

                        goto LABEL_114;
                      }

                      objc_opt_self();
                      v65 = OUTLINED_FUNCTION_21_0();
                      if (v65)
                      {
                        v66 = [v65 section];
                        if (v66)
                        {
                          v56 = v124;
                          v67 = sub_1B1098750(v66);
                          if (v67)
                          {
                            v68 = v67;
                            sub_1B1097DD8(v67);
                            OUTLINED_FUNCTION_6_3();
                            while (v4)
                            {
                              if (v23)
                              {
                                v70 = OUTLINED_FUNCTION_32_0();
                                v69 = MEMORY[0x1B272DFA0](v70);
                              }

                              else
                              {
                                if (v4 >= v13[2])
                                {
                                  goto LABEL_119;
                                }

                                v69 = *(v68 + 8 * v4 + 32);
                              }

                              v57 = v69;
                              if (__OFADD__(v4, 1))
                              {
                                goto LABEL_118;
                              }

                              if (OUTLINED_FUNCTION_59())
                              {
                                goto LABEL_109;
                              }

                              ++v4;
                            }

                            goto LABEL_108;
                          }

                          goto LABEL_169;
                        }

LABEL_168:
                        __break(1u);
LABEL_169:
                        __break(1u);
LABEL_170:
                        __break(1u);
                        goto LABEL_171;
                      }

                      objc_opt_self();
                      v71 = OUTLINED_FUNCTION_21_0();
                      if (v71)
                      {
                        v72 = [v71 result];
                        if (!v72)
                        {
LABEL_171:
                          __break(1u);
                          goto LABEL_172;
                        }

                        goto LABEL_62;
                      }

                      objc_opt_self();
                      v74 = OUTLINED_FUNCTION_21_0();
                      if (v74)
                      {
                        v75 = [v74 section];
                        if (v75)
                        {
                          v56 = v124;
                          v76 = sub_1B1098750(v75);
                          if (v76)
                          {
                            v77 = v76;
                            sub_1B1097DD8(v76);
                            OUTLINED_FUNCTION_6_3();
                            while (v4)
                            {
                              if (v23)
                              {
                                v79 = OUTLINED_FUNCTION_32_0();
                                v78 = MEMORY[0x1B272DFA0](v79);
                              }

                              else
                              {
                                if (v4 >= v13[2])
                                {
                                  goto LABEL_151;
                                }

                                v78 = *(v77 + 8 * v4 + 32);
                              }

                              v57 = v78;
                              if (__OFADD__(v4, 1))
                              {
                                __break(1u);
LABEL_151:
                                __break(1u);
                                goto LABEL_152;
                              }

                              if (OUTLINED_FUNCTION_59())
                              {
                                goto LABEL_109;
                              }

                              ++v4;
                            }

LABEL_108:

LABEL_110:
                            v57 = v56;
                            goto LABEL_111;
                          }

                          goto LABEL_173;
                        }

LABEL_172:
                        __break(1u);
LABEL_173:
                        __break(1u);
LABEL_174:
                        __break(1u);
LABEL_175:
                        __break(1u);
LABEL_176:
                        __break(1u);
                        goto LABEL_177;
                      }

                      objc_opt_self();
                      v80 = OUTLINED_FUNCTION_21_0();
                      if (v80)
                      {
                        v81 = sub_1B1071938(v80, &selRef_sections, &qword_1EDAD54B0, 0x1E69CA390);
                        if (!v81)
                        {
                          goto LABEL_174;
                        }

                        v82 = v81;
                        v83 = sub_1B1097DD8(v81);
                        OUTLINED_FUNCTION_24_0(v83);
                        do
                        {
                          if (v57 == v127)
                          {
                            break;
                          }

                          OUTLINED_FUNCTION_41_0();
                          if (v23)
                          {
                            v84 = MEMORY[0x1B272DFA0](v57, v82);
                          }

                          else
                          {
                            v84 = *(v123 + 8 * v57);
                          }

                          v85 = v84;
                          v86 = __OFADD__(v57++, 1);
                          if (v86)
                          {
                            goto LABEL_158;
                          }

                          v23 = v82;
                          v87 = sub_1B1071938(v84, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
                          if (!v87)
                          {
                            goto LABEL_170;
                          }

                          v88 = v87;
                          sub_1B1097DD8(v87);
                          OUTLINED_FUNCTION_55_0();
                          while (1)
                          {
                            if (v13 == v56)
                            {

                              v91 = 0;
                              goto LABEL_94;
                            }

                            if (v7)
                            {
                              v89 = MEMORY[0x1B272DFA0](v56, v88);
                            }

                            else
                            {
                              if (v56 >= *(v82 + 16))
                              {
                                goto LABEL_121;
                              }

                              v89 = *(v88 + 8 * v56 + 32);
                            }

                            v90 = v89;
                            if (__OFADD__(v56, 1))
                            {
                              goto LABEL_120;
                            }

                            if (OUTLINED_FUNCTION_61())
                            {
                              break;
                            }

                            ++v56;
                          }

                          v91 = OUTLINED_FUNCTION_61();

LABEL_94:
                          ;
                        }

                        while (!v91);
                        goto LABEL_144;
                      }

                      objc_opt_self();
                      v92 = OUTLINED_FUNCTION_21_0();
                      if (v92)
                      {
                        v56 = v124;
                        v93 = sub_1B1071938(v92, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
                        if (v93)
                        {
                          v94 = v93;
                          sub_1B1097DD8(v93);
                          OUTLINED_FUNCTION_6_3();
                          while (v4)
                          {
                            if (v23)
                            {
                              v96 = OUTLINED_FUNCTION_32_0();
                              v95 = MEMORY[0x1B272DFA0](v96);
                            }

                            else
                            {
                              if (v4 >= v13[2])
                              {
                                goto LABEL_164;
                              }

                              v95 = *(v94 + 8 * v4 + 32);
                            }

                            v57 = v95;
                            if (__OFADD__(v4, 1))
                            {
                              __break(1u);
LABEL_164:
                              __break(1u);
                              goto LABEL_165;
                            }

                            if (OUTLINED_FUNCTION_59())
                            {
LABEL_109:

                              OUTLINED_FUNCTION_59();

                              goto LABEL_110;
                            }

                            ++v4;
                          }

                          goto LABEL_108;
                        }

                        goto LABEL_176;
                      }

                      objc_opt_self();
                      v104 = OUTLINED_FUNCTION_21_0();
                      if (v104)
                      {
                        v72 = [v104 result];
                        if (v72)
                        {
LABEL_62:
                          v73 = v72;
                          [v72 queryId];

                          goto LABEL_111;
                        }

                        __break(1u);
LABEL_118:
                        __break(1u);
LABEL_119:
                        __break(1u);
LABEL_120:
                        __break(1u);
LABEL_121:
                        __break(1u);
                      }

                      v105 = *(v56 + 832);
                      objc_opt_self();
                      v106 = OUTLINED_FUNCTION_21_0();
                      if (v106)
                      {
                        v107 = sub_1B1071938(v106, &selRef_sections, &unk_1EDAD5560, 0x1E69CA418);
                        if (!v107)
                        {
LABEL_177:
                          __break(1u);
                          goto LABEL_178;
                        }

                        v108 = v107;
                        v109 = sub_1B1097DD8(v107);
                        OUTLINED_FUNCTION_24_0(v109);
                        while (v57 != v127)
                        {
                          OUTLINED_FUNCTION_41_0();
                          if (v23)
                          {
                            v110 = MEMORY[0x1B272DFA0](v57, v108);
                          }

                          else
                          {
                            v110 = *(v123 + 8 * v57);
                          }

                          v111 = v110;
                          v86 = __OFADD__(v57++, 1);
                          if (v86)
                          {
                            __break(1u);
                            goto LABEL_167;
                          }

                          v23 = v108;
                          v112 = sub_1B1071938(v110, &selRef_results, &qword_1EDAD54A8, 0x1E69CA388);
                          if (!v112)
                          {
                            goto LABEL_175;
                          }

                          v113 = v112;
                          sub_1B1097DD8(v112);
                          OUTLINED_FUNCTION_55_0();
                          while (1)
                          {
                            if (v13 == v56)
                            {

                              v116 = 0;
                              goto LABEL_141;
                            }

                            if (v7)
                            {
                              v114 = MEMORY[0x1B272DFA0](v56, v113);
                            }

                            else
                            {
                              if (v56 >= *(v108 + 16))
                              {
                                goto LABEL_160;
                              }

                              v114 = *(v113 + 8 * v56 + 32);
                            }

                            v115 = v114;
                            if (__OFADD__(v56, 1))
                            {
                              goto LABEL_159;
                            }

                            if (OUTLINED_FUNCTION_61())
                            {
                              break;
                            }

                            ++v56;
                          }

                          v116 = OUTLINED_FUNCTION_61();

LABEL_141:
                          if (v116)
                          {
                            break;
                          }
                        }

LABEL_144:

                        v57 = v124;
                        goto LABEL_111;
                      }

                      objc_opt_self();
                      v118 = OUTLINED_FUNCTION_21_0();
                      if (v118)
                      {
                        [v118 queryId];
                        goto LABEL_111;
                      }

LABEL_152:
                      objc_opt_self();
                      v7 = v57;
                      v119 = swift_dynamicCastObjCClass();
                      if (v119)
                      {
                        v120 = [v119 card];
                        if (!v120)
                        {
LABEL_178:
                          __break(1u);
                          return;
                        }

                        v121 = v120;
                        [v120 queryId];

                        goto LABEL_165;
                      }

LABEL_161:
                      objc_opt_self();
                      v122 = swift_dynamicCastObjCClass();
                      if (v122)
                      {
                        [v122 queryId];
                      }

LABEL_165:
                      v57 = v7;
                      goto LABEL_111;
                    }

                    v4 = v117;
                    v7 = &selRef_didEngageCardSection_;
                    v23 = sel_didEngageCardSection_;
                    if ([v55 respondsToSelector_])
                    {
                      goto LABEL_45;
                    }

                    goto LABEL_46;
                  }

                  v4 = v64;
                  v7 = &selRef_cardViewDidAppear_;
                }
              }
            }
          }
        }
      }

      v23 = *v7;
      if ([v55 respondsToSelector_])
      {
LABEL_45:
        [v55 *v7];
      }

LABEL_46:

      goto LABEL_47;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_16_0();
    v41 = swift_dynamicCastObjCClass();
    if (!v41)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_16_0();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        v4 = v51;
        v52 = sub_1B10988A8(v51, &selRef_input);
        if (v53)
        {
          v129 = v52;
          v130 = v53;
          if (qword_1EDAD58E8 != -1)
          {
            swift_once();
          }

          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
          v13 = __swift_project_value_buffer(v54, qword_1EDAD64D8);
          sub_1B1098F10();
          sub_1B1098F64();
          v23 = sub_1B1122A2C();

          if (v23)
          {
            sub_1B1074A10(0, 0xE000000000000000, v4, &selRef_setInput_);
          }
        }
      }

      goto LABEL_26;
    }

    v42 = [objc_allocWithZone(_CPUserReportFeedback) initWithFacade_];
    if (!v42)
    {
LABEL_114:
      v103 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_30();
      return;
    }

    v126 = v42;
    sub_1B112193C();
    sub_1B112191C();
    v44 = *&v43;
    v23 = v43;
    (*(v16 + 8))(v127, v13);
    if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v44 > -1.0)
    {
      if (v44 < 1.84467441e19)
      {
        v13 = v126;
        [v126 setTimestamp_];
        sub_1B112196C();
        sub_1B112195C();
        OUTLINED_FUNCTION_52();
        v45 = v7[1];
        ++v7;
        (v45)(v12, v4);
        v129 = v23;
        v130 = v12;
        v46 = sub_1B1095F74(&v129, &v131);
        sub_1B10987C4(v46, v47, v126);
        v4 = v126;
        sub_1B1098838(v4);
        OUTLINED_FUNCTION_52();
        v48 = objc_allocWithZone(MEMORY[0x1E69CA008]);
        v49 = sub_1B1097650(10, v23, v12);
        if (v49)
        {
          v50 = v49;
          [v128 sendCustomFeedback_];

          goto LABEL_26;
        }

        goto LABEL_114;
      }

LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    __break(1u);
    goto LABEL_157;
  }

  v34 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30();

  [v35 v36];
}

uint64_t sub_1B1069EA8()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD5D20);
  __swift_project_value_buffer(v0, qword_1EDAD5D20);
  return sub_1B112295C();
}

void sub_1B106A998()
{
  OUTLINED_FUNCTION_57();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1B11228AC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1();
  v12 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable_];
  if (v12)
  {
    v13 = v12;
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v14 = sub_1B112296C();
    __swift_project_value_buffer(v14, qword_1EDAD60D0);
    v47 = v13;
    v15 = sub_1B112293C();
    v16 = sub_1B1122DCC();

    if (os_log_type_enabled(v15, v16))
    {
      v46 = v5;
      v17 = swift_slowAlloc();
      v45 = v9;
      v18 = OUTLINED_FUNCTION_55();
      v49 = v18;
      *v17 = 136315394;
      v19 = [v47 debugDescription];
      v44 = v1;
      v20 = sub_1B1122A5C();
      v22 = v21;

      v23 = sub_1B10784E0(v20, v22, &v49);

      *(v17 + 4) = v23;
      v1 = v44;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v44;
      _os_log_impl(&dword_1B1064000, v15, v16, "reportFeedback(%s, %llu)", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v9 = v45;
      OUTLINED_FUNCTION_2_0();
      v5 = v46;
      OUTLINED_FUNCTION_2_0();
    }

    v24 = sub_1B106AE3C();
    if (v24)
    {
      v25 = v24;
      sub_1B1122E6C();
      if (qword_1EDAD5DF0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      sub_1B112289C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v26 = OUTLINED_FUNCTION_64();
      *(v26 + 16) = xmmword_1B1133CF0;
      v27 = [v47 type];
      v28 = MEMORY[0x1E69E7358];
      *(v26 + 56) = MEMORY[0x1E69E72F0];
      *(v26 + 64) = v28;
      v29 = MEMORY[0x1E69E76D8];
      *(v26 + 32) = v27;
      v30 = MEMORY[0x1E69E7738];
      *(v26 + 96) = v29;
      *(v26 + 104) = v30;
      *(v26 + 72) = v1;
      OUTLINED_FUNCTION_23_1();
      sub_1B112284C();

      v31 = *(v9 + 8);
      v32 = OUTLINED_FUNCTION_23_0();
      v33(v32);
      v34 = v47;
      sub_1B106B074(v34);
      if (v35 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {

        OUTLINED_FUNCTION_36();
        v36 = sub_1B11218AC();
        v37 = OUTLINED_FUNCTION_36();
        sub_1B106C1F0(v37, v38);
        [v25 reportFeedback:v5 payloadData:v36 queryId:v1];

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_4_2();
      }

      return;
    }
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v39 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v39, qword_1EDAD60D0);
    v48 = sub_1B112293C();
    v40 = sub_1B1122DDC();
    if (os_log_type_enabled(v48, v40))
    {
      v41 = OUTLINED_FUNCTION_37();
      *v41 = 0;
      _os_log_impl(&dword_1B1064000, v48, v40, "nil feedback payload", v41, 2u);
      OUTLINED_FUNCTION_2_0();
    }
  }

  OUTLINED_FUNCTION_4_2();
}

void OUTLINED_FUNCTION_33_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1B106AE3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v13 = sub_1B10A368C;
  v14 = 0;
  OUTLINED_FUNCTION_9_1();
  v10 = 1107296256;
  OUTLINED_FUNCTION_3();
  v11 = v2;
  v12 = &block_descriptor_198;
  v3 = _Block_copy(aBlock);
  v4 = OUTLINED_FUNCTION_1();
  v6 = [v4 v5];
  _Block_release(v3);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_34_1())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

id OUTLINED_FUNCTION_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_once();
}

uint64_t sub_1B106B080(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1B11218CC();
  OUTLINED_FUNCTION_52();

  return v2;
}

uint64_t sub_1B106C1F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B106C204(a1, a2);
  }

  return a1;
}

uint64_t sub_1B106C204(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t _CPFeedbackPayloadReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v23) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(_CPFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setFeedback:v14];
        goto LABEL_165;
      case 2u:
        v14 = objc_alloc_init(_CPSearchViewAppearFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSearchViewAppearFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSearchViewAppearFeedback:v14];
        goto LABEL_165;
      case 3u:
        v14 = objc_alloc_init(_CPSearchViewDisappearFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSearchViewDisappearFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSearchViewDisappearFeedback:v14];
        goto LABEL_165;
      case 4u:
        v14 = objc_alloc_init(_CPRankingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPRankingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setRankingFeedback:v14];
        goto LABEL_165;
      case 5u:
        v14 = objc_alloc_init(_CPSectionRankingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSectionRankingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSectionRankingFeedback:v14];
        goto LABEL_165;
      case 6u:
        v14 = objc_alloc_init(_CPResultRankingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultRankingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultRankingFeedback:v14];
        goto LABEL_165;
      case 7u:
        v14 = objc_alloc_init(_CPResultFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultFeedback:v14];
        goto LABEL_165;
      case 8u:
        v14 = objc_alloc_init(_CPResultEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultEngagementFeedback:v14];
        goto LABEL_165;
      case 9u:
        v14 = objc_alloc_init(_CPVisibleResultsFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPVisibleResultsFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setVisibleResultsFeedback:v14];
        goto LABEL_165;
      case 0xAu:
        v14 = objc_alloc_init(_CPCardSectionFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCardSectionFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCardSectionFeedback:v14];
        goto LABEL_165;
      case 0xBu:
        v14 = objc_alloc_init(_CPMapsCardSectionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPMapsCardSectionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setMapsCardSectionEngagementFeedback:v14];
        goto LABEL_165;
      case 0xCu:
        v14 = objc_alloc_init(_CPStoreCardSectionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPStoreCardSectionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setStoreCardSectionEngagementFeedback:v14];
        goto LABEL_165;
      case 0xDu:
        v14 = objc_alloc_init(_CPStartSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPStartSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setStartSearchFeedback:v14];
        goto LABEL_165;
      case 0xEu:
        v14 = objc_alloc_init(_CPEndSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPEndSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setEndSearchFeedback:v14];
        goto LABEL_165;
      case 0xFu:
        v14 = objc_alloc_init(_CPStartNetworkSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPStartNetworkSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setStartNetworkSearchFeedback:v14];
        goto LABEL_165;
      case 0x10u:
        v14 = objc_alloc_init(_CPEndNetworkSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPEndNetworkSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setEndNetworkSearchFeedback:v14];
        goto LABEL_165;
      case 0x11u:
        v14 = objc_alloc_init(_CPStartLocalSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPStartLocalSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setStartLocalSearchFeedback:v14];
        goto LABEL_165;
      case 0x12u:
        v14 = objc_alloc_init(_CPEndLocalSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPEndLocalSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setEndLocalSearchFeedback:v14];
        goto LABEL_165;
      case 0x13u:
        v14 = objc_alloc_init(_CPErrorFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPErrorFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setErrorFeedback:v14];
        goto LABEL_165;
      case 0x14u:
        v14 = objc_alloc_init(_CPCustomFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCustomFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCustomFeedback:v14];
        goto LABEL_165;
      case 0x15u:
        v14 = objc_alloc_init(_CPSuggestionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSuggestionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSuggestionEngagementFeedback:v14];
        goto LABEL_165;
      case 0x16u:
        v14 = objc_alloc_init(_CPCardViewDisappearFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCardViewDisappearFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCardViewDisappearFeedback:v14];
        goto LABEL_165;
      case 0x17u:
        v14 = objc_alloc_init(_CPVisibleSuggestionsFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPVisibleSuggestionsFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setVisibleSuggestionsFeedback:v14];
        goto LABEL_165;
      case 0x18u:
        v14 = objc_alloc_init(_CPResultsReceivedAfterTimeoutFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultsReceivedAfterTimeoutFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultsReceivedAfterTimeoutFeedback:v14];
        goto LABEL_165;
      case 0x19u:
        v14 = objc_alloc_init(_CPLateSectionsAppendedFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPLateSectionsAppendedFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setLateSectionsAppendedFeedback:v14];
        goto LABEL_165;
      case 0x1Au:
        v14 = objc_alloc_init(_CPClearInputFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPClearInputFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setClearInputFeedback:v14];
        goto LABEL_165;
      case 0x1Bu:
        v14 = objc_alloc_init(_CPSectionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSectionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSectionEngagementFeedback:v14];
        goto LABEL_165;
      case 0x1Cu:
        v14 = objc_alloc_init(_CPVisibleSectionHeaderFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPVisibleSectionHeaderFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setVisibleSectionHeaderFeedback:v14];
        goto LABEL_165;
      case 0x1Du:
        v14 = objc_alloc_init(_CPDidGoToSiteFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPDidGoToSiteFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setDidGoToSiteFeedback:v14];
        goto LABEL_165;
      case 0x1Eu:
        v14 = objc_alloc_init(_CPDidGoToSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPDidGoToSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setDidGoToSearchFeedback:v14];
        goto LABEL_165;
      case 0x1Fu:
        v14 = objc_alloc_init(_CPSessionMissingResultsFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSessionMissingResultsFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSessionMissingResultsFeedback:v14];
        goto LABEL_165;
      case 0x20u:
        v14 = objc_alloc_init(_CPSessionMissingSuggestionsFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSessionMissingSuggestionsFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSessionMissingSuggestionsFeedback:v14];
        goto LABEL_165;
      case 0x21u:
        v14 = objc_alloc_init(_CPResultGradingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPResultGradingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setResultGradingFeedback:v14];
        goto LABEL_165;
      case 0x22u:
        v14 = objc_alloc_init(_CPLookupHintRelevancyFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPLookupHintRelevancyFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setLookupHintRelevancyFeedback:v14];
        goto LABEL_165;
      case 0x23u:
        v14 = objc_alloc_init(_CPConnectionInvalidatedFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPConnectionInvalidatedFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setConnectionInvalidatedFeedback:v14];
        goto LABEL_165;
      case 0x24u:
        v14 = objc_alloc_init(_CPCardSectionEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCardSectionEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCardSectionEngagementFeedback:v14];
        goto LABEL_165;
      case 0x25u:
        v14 = objc_alloc_init(_CPSessionEndFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSessionEndFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSessionEndFeedback:v14];
        goto LABEL_165;
      case 0x26u:
        v14 = objc_alloc_init(_CPCardViewAppearFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCardViewAppearFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCardViewAppearFeedback:v14];
        goto LABEL_165;
      case 0x27u:
        v14 = objc_alloc_init(_CPSkipSearchFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPSkipSearchFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setSkipSearchFeedback:v14];
        goto LABEL_165;
      case 0x28u:
        v14 = objc_alloc_init(_CPCacheHitFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCacheHitFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCacheHitFeedback:v14];
        goto LABEL_165;
      case 0x29u:
        v14 = objc_alloc_init(_CPCBAEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCBAEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCbaEngagementFeedback:v14];
        goto LABEL_165;
      case 0x2Au:
        v14 = objc_alloc_init(_CPClientTimingFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPClientTimingFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setClientTimingFeedback:v14];
        goto LABEL_165;
      case 0x2Bu:
        v14 = objc_alloc_init(_CPCommandEngagementFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPCommandEngagementFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setCommandEngagementFeedback:v14];
        goto LABEL_165;
      case 0x2Cu:
        v14 = objc_alloc_init(_CPDynamicButtonVisibilityFeedback);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_CPDynamicButtonVisibilityFeedbackReadFrom(v14, a2))
        {
          goto LABEL_173;
        }

        PBReaderRecallMark();
        [a1 setDynamicButtonVisibilityFeedback:v14];
        goto LABEL_165;
      case 0x2Du:
        v14 = objc_alloc_init(_CPExperimentTriggeredFeedback);
        v23 = 0;
        v24 = 0;
        if (PBReaderPlaceMark() && _CPExperimentTriggeredFeedbackReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setExperimentTriggeredFeedback:v14];
LABEL_165:

LABEL_166:
          v4 = a2;
          continue;
        }

LABEL_173:

        return 0;
      case 0x64u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v23) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v23 & 0x7F) << v15;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_170;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_170:
        [a1 setQueryId:v21];
        goto LABEL_166;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_166;
    }
  }
}

uint64_t _CPSearchViewAppearFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v58 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v58 & 0x7F) << v6;
      if ((v58 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 4)
    {
      if (v14 > 6)
      {
        if (v14 == 7)
        {
          v22 = PBReaderReadString();
          [v3 setOriginatingApp:v22];
          goto LABEL_77;
        }

        if (v14 != 8)
        {
          goto LABEL_78;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v61 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v61 & 0x7F) << v30;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_91;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_91:
        [v3 setIsUsingLoweredSearchBar:v36];
      }

      else if (v14 == 5)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v62 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v62 & 0x7F) << v37;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v43 = 0;
            goto LABEL_81;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_81:
        [v3 setReaderTextAvailable:v43];
      }

      else
      {
        if (v14 != 6)
        {
          goto LABEL_78;
        }

        v22 = PBReaderReadString();
        [v3 setPreexistingInput:v22];
LABEL_77:
      }
    }

    else if (v14 > 2)
    {
      if (v14 == 3)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v64 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v64 & 0x7F) << v44;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_83;
          }
        }

        v50 = (v46 != 0) & ~[a2 hasError];
LABEL_83:
        [v3 setIsOnLockScreen:v50];
      }

      else
      {
        if (v14 != 4)
        {
          goto LABEL_78;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v63 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v63 & 0x7F) << v23;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_89;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_89:
        [v3 setIsOverApp:v29];
      }
    }

    else
    {
      if (v14 == 1)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        while (1)
        {
          v60 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v60 & 0x7F) << v52;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v4 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v4 = 0;
        }

        else
        {
          v4 = v54;
        }

LABEL_104:
        a1 = v3;
        goto LABEL_2;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v59 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v59 & 0x7F) << v15;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_87:
        [v3 setViewAppearEvent:v21];
      }

      else
      {
LABEL_78:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t static ClientName.extractClientNameFromUserAgent(_:allowAbbreviation:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B70, &qword_1B1133C88);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B78, &qword_1B1133C90);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B80, &qword_1B1133C98);
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v50 - v26;
  if (!a2)
  {
    return a1;
  }

  v50 = v9;
  v53 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B88, &qword_1B1133CA0);
  sub_1B11226BC();
  v51 = a1;
  v52 = v27;
  v28 = v20;
  v54 = v21;
  sub_1B11226DC();
  sub_1B10782B4(v20, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) != 1)
  {
    v37 = v50;
    (*(v50 + 32))(v13, v18, v6);
    sub_1B112270C();

    v38 = MEMORY[0x1B272DA90](v55[4], v55[5], v55[6], v55[7]);
    v40 = v39;

    v41 = static ClientName.extractClientNameFromString(_:)(v38, v40);
    v43 = v42;

    if (v43)
    {
      v31 = v41;
    }

    else
    {
      v31 = 0x64636573726170;
    }

    (*(v37 + 8))(v13, v6);
LABEL_20:
    sub_1B1078324(v28);
    (*(v53 + 8))(v52, v54);
    return v31;
  }

  sub_1B1078324(v18);
  if (a3)
  {
    v29 = static ClientName.extractClientNameFromString(_:)(v51, a2);
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0x64636573726170;
    }

    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE700000000000000;
    }

    if (qword_1EDAD54E0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v33 = sub_1B112296C();
    __swift_project_value_buffer(v33, qword_1EDAD64C0);

    v34 = sub_1B112293C();
    v35 = sub_1B1122DFC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_1B10784E0(v51, a2, v55);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1B10784E0(v31, v32, v55);
      _os_log_impl(&dword_1B1064000, v34, v35, "Allows matching abbreviated user agent %s. ClientName: %s", v36, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }

    goto LABEL_20;
  }

  if (qword_1EDAD54E0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v44 = sub_1B112296C();
  __swift_project_value_buffer(v44, qword_1EDAD64C0);

  v45 = sub_1B112293C();
  v46 = sub_1B1122DDC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_1B10784E0(v51, a2, v55);
    _os_log_impl(&dword_1B1064000, v45, v46, "Couldn't find a match for regex in userAgent: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  sub_1B1078324(v20);
  (*(v53 + 8))(v52, v54);
  return 0;
}

uint64_t static ClientName.extractClientNameFromString(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B1122A8C();
    v3 = &unk_1F2778580;
    v4 = 15;
    sub_1B1067A94();
    do
    {
      a1 = *(v3 - 1);
      v7 = *v3;

      if (sub_1B1122F3C())
      {

        return a1;
      }

      v3 += 2;
      --v4;
    }

    while (v4);
    sub_1B1067A94();
    v5 = sub_1B1122F3C();

    if (v5)
    {
      return 0x64636573726170;
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_1B106E740(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1B106E758(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v9 = a2;
  v7 = a3;
  v8 = OUTLINED_FUNCTION_19_0();
  v6(v8);
}

uint64_t sub_1B106E7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_68();
  v6 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = *(v10 + 64);
  OUTLINED_FUNCTION_24_1();
  v15 = (v4 + v14);
  v16 = *v15;
  v17 = v15[1];

  return a3(v5, v3, v4 + v13, v16, v17);
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t result)
{
  *(v2 - 144) = v1 & 0xC000000000000001;
  *(v2 - 136) = result;
  *(v2 - 160) = v1 + 32;
  return result;
}

void OUTLINED_FUNCTION_7_3()
{
  v2 = *(v0 + 16) + 1;

  sub_1B10A2334(0, v2, 1, v0);
}

uint64_t sub_1B106E954(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B1133CF0;
  v8 = sub_1B106EAF4();
  v9 = v8;
  v10 = 0x67616220746F47;
  if (!a1)
  {
    v10 = 0x676162206F4ELL;
  }

  v11 = 0xE700000000000000;
  v12 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = v8;
  if (!a1)
  {
    v11 = 0xE600000000000000;
  }

  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A2B0, &qword_1B1134BF8);
  v14 = sub_1B1122A7C();
  *(v7 + 96) = v12;
  *(v7 + 104) = v9;
  *(v7 + 72) = v14;
  *(v7 + 80) = v15;
  sub_1B112284C();

  return a4(a1, a2);
}

unint64_t sub_1B106EAF4()
{
  result = qword_1EDAD5F00;
  if (!qword_1EDAD5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5F00);
  }

  return result;
}

void sub_1B106EB50(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v4 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v4, qword_1EDAD5D20);
    v5 = a2;
    v6 = sub_1B112293C();
    v7 = sub_1B1122DDC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = OUTLINED_FUNCTION_55();
      v15 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1B11230FC();
      v12 = sub_1B10784E0(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B1064000, v6, v7, "bag load %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
    }
  }

  else if (a1)
  {
    v14 = a1;
    sub_1B106ECF0(a1);
  }
}

void sub_1B106ECF0(void *a1)
{
  OUTLINED_FUNCTION_43_0(OBJC_IVAR___PARSessionSwiftInternal_lock);
  v4 = *(v2 + OBJC_IVAR___PARSessionSwiftInternal__bag);
  *(v2 + OBJC_IVAR___PARSessionSwiftInternal__bag) = a1;
  v13 = a1;

  if (a1)
  {
    v5 = [v13 sampleClientTiming];
    *(v2 + OBJC_IVAR___PARSessionSwiftInternal__sampled) = v5;
    if (v5)
    {
      v6 = [v13 sampleClientTimingEventWhitelist];
      v7 = sub_1B1122B8C();

      v8 = sub_1B106EECC(v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    *(v2 + OBJC_IVAR___PARSessionSwiftInternal__sampled) = 0;
  }

  v9 = *(v2 + OBJC_IVAR___PARSessionSwiftInternal__sampleClientTimingEventAllowlist);
  *(v2 + OBJC_IVAR___PARSessionSwiftInternal__sampleClientTimingEventAllowlist) = v8;

  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1);
  if (Strong)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      if ([Strong respondsToSelector_])
      {
        [Strong session:v12 bag:v13 didLoadWithError:0];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B106EECC(uint64_t a1)
{
  result = MEMORY[0x1B272DCB0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1B106EF8C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1B106EF8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B112314C();
  sub_1B1122ACC();
  v9 = sub_1B112316C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1B11230AC() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1B106F0D8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1B106F0D8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B1097E90(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B1098244(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1B112314C();
      sub_1B1122ACC();
      result = sub_1B112316C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1B11230AC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B10980EC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B11230DC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_11(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 24);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B106F3A0()
{
  v0 = sub_1B106903C();
  if (!v0)
  {
    return 2;
  }

  v1 = v0;
  v2 = [v0 isEnabled];

  return v2;
}

uint64_t sub_1B106F4D8()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1);
}

id sub_1B106F50C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(PARTask) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  [v6 setSession_];

  [v6 setRequest_];
  objc_opt_self();
  v8 = OUTLINED_FUNCTION_21_0();
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_self();
    v11 = a1;
    v12 = [v10 mainBundle];
    v13 = [v12 preferredLocalizations];

    v14 = sub_1B1122B8C();
    if (v14[2])
    {
      v15 = v14[4];
      v16 = v14[5];

      v17 = sub_1B1122A4C();
    }

    else
    {

      v17 = 0;
    }

    [v9 setPreferredLanguage_];

    if (qword_1EDAD5D18 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v18 = sub_1B112296C();
    __swift_project_value_buffer(v18, qword_1EDAD5D20);
    v19 = v11;
    v20 = sub_1B112293C();
    v21 = sub_1B1122DBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_40_0();
      v23 = OUTLINED_FUNCTION_55();
      v30 = v23;
      *v22 = 136315138;
      aBlock = sub_1B10988A8(v9, &selRef_preferredLanguage);
      v32 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D10, &qword_1B1134390);
      v25 = sub_1B1122A7C();
      v27 = sub_1B10784E0(v25, v26, &v30);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B1064000, v20, v21, "Setting preferred language for lookup: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
    }
  }

  v35 = a2;
  v36 = a3;
  OUTLINED_FUNCTION_9_1();
  v32 = 1107296256;
  v33 = sub_1B1072818;
  v34 = &block_descriptor;
  v28 = _Block_copy(&aBlock);

  [v6 setCompletionBlock_];
  _Block_release(v28);
  return v6;
}

void sub_1B106F910()
{
  OUTLINED_FUNCTION_57();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B112279C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = [v3 request];
  v14 = sub_1B1068078();
  v15 = [v14 userAgent];

  sub_1B1122A5C();
  sub_1B11227AC();
  sub_1B112278C();
  (*(v7 + 8))(v12, v4);
  v16 = *&v1[OBJC_IVAR___PARSessionSwiftInternal_client];
  v17 = sub_1B1068078();
  v18 = v3;
  v19 = v13;
  OUTLINED_FUNCTION_35_0();
  sub_1B106FA90();
  v21 = v20;

  [v18 setQueryId_];
  OUTLINED_FUNCTION_4_2();
}

void sub_1B106FA90()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v64 = v6;
  v8 = v7;
  v58 = v9;
  v67 = sub_1B11228AC();
  v10 = OUTLINED_FUNCTION_0(v67);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_1();
  v66 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  OUTLINED_FUNCTION_51_1();
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = v3;
  v20[4] = v1;
  v63 = v5;
  v62 = v3;
  v65 = [v8 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v21 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v22 = OUTLINED_FUNCTION_64();
  *(v22 + 16) = xmmword_1B1133CF0;
  v23 = [v8 triggerEvent];
  v24 = MEMORY[0x1E69E6870];
  *(v22 + 56) = MEMORY[0x1E69E6810];
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  v25 = [v8 queryId];
  v26 = MEMORY[0x1E69E7738];
  *(v22 + 96) = MEMORY[0x1E69E76D8];
  *(v22 + 104) = v26;
  *(v22 + 72) = v25;
  OUTLINED_FUNCTION_22_1();
  v57 = v21;
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v27 = sub_1B10700E0();
  v59 = *(v64 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v60 = v27;
  v28 = *(v12 + 16);
  v29 = v66;
  v30 = v67;
  v61 = v19;
  v54 = v28;
  v28(v66, v19, v67);
  v31 = *(v12 + 80);
  v55 = v8;
  v32 = (v31 + 16) & ~v31;
  v52 = v14 + 7;
  v33 = (v14 + 7 + v32) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v64 = v12;
  v53 = *(v12 + 32);
  v53(v34 + v32, v29, v30);
  OUTLINED_FUNCTION_30_0((v34 + v33));
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v65;
  v73 = sub_1B10A372C;
  v74 = v34;
  OUTLINED_FUNCTION_2_5();
  v70 = 1107296256;
  OUTLINED_FUNCTION_3();
  v71 = v35;
  v72 = &block_descriptor_281;
  v36 = _Block_copy(&v69);

  v37 = [v59 remoteObjectProxyWithErrorHandler_];
  _Block_release(v36);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_35_1())
  {
    v38 = v67;
    v59 = v68;
    v39 = v66;
    v40 = v61;
    v54(v66, v61, v67);
    v41 = (v31 + 24) & ~v31;
    v42 = (v52 + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v60;
    v53(v43 + v41, v39, v38);
    OUTLINED_FUNCTION_30_0((v43 + v42));
    v73 = sub_1B1070650;
    v74 = v43;
    v69 = MEMORY[0x1E69E9820];
    v70 = 1107296256;
    v71 = sub_1B1070468;
    v72 = &block_descriptor_288;
    v44 = _Block_copy(&v69);

    swift_unknownObjectRetain();

    [v59 request:v58 request:v55 reply:v44];
    _Block_release(v44);
    swift_unknownObjectRelease();
    v45 = v63;
  }

  else
  {
    sub_1B1122E4C();
    v46 = OUTLINED_FUNCTION_62();
    *(v46 + 16) = xmmword_1B1133BA0;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    v40 = v61;
    sub_1B112284C();

    v45 = v63;
    v49 = [v63 completionBlock];
    v50 = v49[2];
    OUTLINED_FUNCTION_50_1();
    v51();
    _Block_release(v49);
    v38 = v67;
  }

  swift_unknownObjectRelease();
  (*(v64 + 8))(v40, v38);

  OUTLINED_FUNCTION_30();
}

uint64_t sub_1B107008C()
{
  OUTLINED_FUNCTION_51_1();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B10700E0()
{
  [v0 nwActivityLabel];
  v1 = nw_activity_create();
  nw_activity_activate();
  v2 = OUTLINED_FUNCTION_36_0();
  [v2 v3];
  return v1;
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return swift_dynamicCast();
}

void sub_1B1070468(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a3;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1B10704FC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = *(v3 + 16);
  v14 = v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 8);

  return sub_1B107065C(a1, a2, a3, v13, v3 + v12, v15);
}

uint64_t sub_1B10705B0()
{
  OUTLINED_FUNCTION_25_1();
  v2 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_24_1();
  v9 = *(v1 + 16);
  v11 = (v1 + v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = OUTLINED_FUNCTION_69();

  return sub_1B107065C(v14, v15, v0, v16, v17, v18);
}

uint64_t sub_1B107065C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void *))
{
  swift_getObjectType();
  sub_1B10708E4(a3 == 0);
  if (a3)
  {
    v10 = a6;
    v11 = a3;
    sub_1B1122E4C();
    if (qword_1EDAD5DF0 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v12 = OUTLINED_FUNCTION_64();
    *(v12 + 16) = xmmword_1B1133CF0;
    v13 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1B106EAF4();
    *(v12 + 64) = v14;
    *(v12 + 32) = 0x6572756C696166;
    *(v12 + 40) = 0xE700000000000000;
    v15 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
    v16 = sub_1B1122A7C();
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 72) = v16;
    *(v12 + 80) = v17;
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_32_1();
    sub_1B112284C();

    return v10(a1, a2, a3);
  }

  else
  {
    sub_1B1122E4C();
    if (qword_1EDAD5DF0 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v19 = OUTLINED_FUNCTION_62();
    *(v19 + 16) = xmmword_1B1133BA0;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1B106EAF4();
    *(v19 + 32) = 0x73736563637573;
    *(v19 + 40) = 0xE700000000000000;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    sub_1B112284C();

    return a6(a1, a2, 0);
  }
}

uint64_t sub_1B10708E4(char a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  return MEMORY[0x1EEDD2CF8](v1, v2);
}

uint64_t OUTLINED_FUNCTION_64()
{

  return swift_allocObject();
}

void sub_1B1070910()
{
  OUTLINED_FUNCTION_48_0();
  if (!v2)
  {
    v10 = [v0 completionBlock];
    if (v1)
    {
      v11 = sub_1B11217EC();
    }

    else
    {
      v11 = 0;
    }

    v14 = OUTLINED_FUNCTION_44_0();
    v15(v14);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = v3;
  v7 = v2;
  [v7 setTask_];
  v8 = [v0 request];
  [v7 scale];
  [v8 setScale_];

  if (sub_1B1070B54())
  {
    v9 = [objc_opt_self() responseFromReply_];
LABEL_11:
    v13 = v9;
    goto LABEL_12;
  }

  objc_opt_self();
  if (!OUTLINED_FUNCTION_21_0())
  {
    [v6 responseClass];
    swift_getObjCClassMetadata();
    v9 = [swift_getObjCClassFromMetadata() responseFromReply_];
    goto LABEL_11;
  }

  v12 = v6;
  sub_1B107B50C(v5);
  v13 = [swift_getObjCClassFromMetadata() responseFromReply_];

LABEL_12:
  v11 = v13;
  v10 = [v0 completionBlock];
  if (v1)
  {
    v1 = sub_1B11217EC();
  }

  v16 = OUTLINED_FUNCTION_44_0();
  v17(v16);

LABEL_15:

  _Block_release(v10);
}

void sub_1B1070B08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1B1070910();
}

id PARTopicResponse.init(reply:factory:dataZKW:)(void *a1, void *a2)
{
  v26 = a1;
  v27 = a2;
  v2 = sub_1B11227EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A428, &qword_1B1135120);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_1B112252C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v19 = OUTLINED_FUNCTION_2_2();
  sub_1B1070FD4(v19, v20);
  sub_1B11227DC();
  sub_1B1070F7C();
  OUTLINED_FUNCTION_2_2();
  sub_1B112280C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  (*(v11 + 32))(v18, v7, v8);
  swift_getObjectType();
  (*(v11 + 16))(v16, v18, v8);
  v21 = sub_1B1071054(v26, v27, v16);
  v22 = OUTLINED_FUNCTION_2_2();
  sub_1B106C204(v22, v23);
  (*(v11 + 8))(v18, v8);
  swift_deallocPartialClassInstance();
  return v21;
}

unint64_t sub_1B1070F7C()
{
  result = qword_1EDAD5480;
  if (!qword_1EDAD5480)
  {
    sub_1B112252C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5480);
  }

  return result;
}

uint64_t sub_1B1070FD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1B1071054(void *a1, id a2, unint64_t a3)
{
  v5 = a1;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReply_];
  v7 = [v5 task];
  if (!v7)
  {

LABEL_31:
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v8 = v7;
  v9 = [v7 request];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      swift_unknownObjectRelease();
      goto LABEL_32;
    }

    v11 = v10;
    v12 = v6;
    v13 = sub_1B1071694(a3, [v11 queryId], a2);
    sub_1B107191C(v13, v12);
    v48 = sub_1B1071938(v12, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
    v46 = v5;
    if (v48)
    {
      v42 = v9;
      v44 = a3;
      v45 = v6;
      v43 = v11;
      v14 = [v11 localTopics];
      sub_1B1066864(0, &qword_1EDAD5478, 0x1E69CA1C8);
      OUTLINED_FUNCTION_16_0();
      v15 = sub_1B1122B8C();

      v16 = MEMORY[0x1E69E7CC0];
      v47 = MEMORY[0x1E69E7CC0];
      v11 = sub_1B1099EF8(v15);
      v17 = 0;
      a3 = v15 & 0xC000000000000001;
      v9 = (v15 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v11 == v17)
        {

          sub_1B1071B28(v16);
          sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
          OUTLINED_FUNCTION_16_0();
          v21 = sub_1B1122B7C();

          a3 = v44;
          v6 = v45;
          v5 = v46;
          v9 = v42;
          v11 = v43;
          [v12 setResults_];

          goto LABEL_21;
        }

        if (a3)
        {
          v18 = MEMORY[0x1B272DFA0](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v5 = v18;
        v6 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          break;
        }

        a2 = [v18 result];

        ++v17;
        if (a2)
        {
          MEMORY[0x1B272DB50]();
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B1122BAC();
          }

          sub_1B1122BCC();
          v16 = v47;
          v17 = v6;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    else
    {
      [v12 setResults_];
LABEL_21:
      v22 = sub_1B1071DE8();
      v17 = v12;
      sub_1B1071F28(v11, v22);
      OUTLINED_FUNCTION_8_2();
      sub_1B10725F0(a2, v17);

      if (qword_1EDAD5488 == -1)
      {
        goto LABEL_22;
      }
    }

    swift_once();
LABEL_22:
    v23 = sub_1B112296C();
    __swift_project_value_buffer(v23, qword_1EDAD5490);
    v24 = v17;
    v25 = v9;
    v26 = v24;
    v27 = v25;
    v28 = sub_1B112293C();
    v29 = sub_1B1122DBC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v11;
      v32 = v30;
      *v30 = 134218496;
      v33 = [v31 topics];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A430, &qword_1B1135138);
      OUTLINED_FUNCTION_16_0();
      v34 = sub_1B1122B8C();

      v35 = sub_1B1097DD8(v34);

      *(v32 + 1) = v35;

      *(v32 + 6) = 2048;
      v36 = sub_1B1071938(v26, &selRef_sections, &qword_1EDAD54B0, 0x1E69CA390);
      if (v36)
      {
        sub_1B1097DD8(v36);
        OUTLINED_FUNCTION_8_2();
      }

      else
      {
        v34 = 0;
      }

      *(v32 + 14) = v34;

      *(v32 + 11) = 2048;
      v37 = sub_1B1071938(v26, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
      if (v37)
      {
        v38 = sub_1B1097DD8(v37);
      }

      else
      {

        v38 = 0;
      }

      *(v32 + 3) = v38;

      _os_log_impl(&dword_1B1064000, v28, v29, "ZKW: Sections and results successfully created. Given %ld topics in request. Response has %ld sections and %ld results", v32, 0x20u);
      MEMORY[0x1B272EDD0](v32, -1, -1);

      goto LABEL_31;
    }

    swift_unknownObjectRelease();
LABEL_32:
    v39 = sub_1B112252C();
    OUTLINED_FUNCTION_11(v39);
    (*(v40 + 8))(a3);
    return v6;
  }

  v19 = sub_1B112252C();
  OUTLINED_FUNCTION_11(v19);
  (*(v20 + 8))(a3);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B1071694(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v16 = a2;
  v3 = sub_1B112236C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B11224DC();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v11 = *(v8 + 16);
  v15[1] = v4 + 16;
  v12 = (v4 + 8);
  while (1)
  {
    if (v11 == v9)
    {

      return v10;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v3);
    sub_1B10A7AB0(v17, v16, v18, &v19);
    ++v9;
    v13 = (*v12)(v7, v3);
    if (v19)
    {
      MEMORY[0x1B272DB50](v13);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15[0] = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v10 = v20;
    }
  }

  __break(1u);

  (*v12)(v7, v3);

  __break(1u);
  return result;
}

void sub_1B1071898(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_1B1066864(0, a3, a4);
  v7 = sub_1B1122B7C();

  [a2 *a5];
}

uint64_t sub_1B1071938(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1B1066864(0, a3, a4);
  v8 = sub_1B1122B8C();

  return v8;
}

uint64_t sub_1B1071B28(unint64_t a1)
{
  v3 = sub_1B1097DD8(a1);
  v4 = sub_1B1097DD8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B1071BD4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B1071C74(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B1071BD4(uint64_t a1)
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
    sub_1B112306C();
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
  result = sub_1B1122FCC();
  *v1 = result;
  return result;
}

uint64_t sub_1B1071C74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B112306C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B1097DD8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B10A90F8();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A438, &qword_1B1135140);
          v9 = sub_1B1098904(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1071DE8()
{
  v1 = v0;
  v4 = MEMORY[0x1E69E7CC8];
  v2 = sub_1B112251C();
  sub_1B1071E54(v2, v1, &v4);

  return v4;
}

void sub_1B1071E54(uint64_t a1, void *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    if (v8 == v7)
    {
      break;
    }

    v9 = *(sub_1B11224FC() - 8);
    sub_1B10A8824(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++, a2, a3);
  }

  while (!v3);
}

void sub_1B1071F28(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = [a1 queryTopicContexts];
  sub_1B1066864(0, &unk_1EDAD5468, off_1E7AC5140);
  v4 = sub_1B1122B8C();

  v5 = &selRef_setSearchIndex_;
  v6 = [v2 topics];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A430, &qword_1B1135138);
  v7 = sub_1B1122B8C();

  v61 = MEMORY[0x1E69E7CC0];
  v8 = sub_1B1097DD8(v7);

  if (v8 < 0)
  {
    goto LABEL_52;
  }

  if (!v8)
  {
LABEL_46:

    return;
  }

  v10 = 0;
  v58 = v4 & 0xFFFFFFFFFFFFFF8;
  v59 = v4 & 0xC000000000000001;
  *&v9 = 136315138;
  v51 = v9;
  v55 = v4;
  v56 = v8;
  v54 = v2;
  while (1)
  {
    v11 = [v2 v5[337]];
    v12 = sub_1B1122B8C();

    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B272DFA0](v10, v12);
    }

    else
    {
      if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v13 = *(v12 + 8 * v10 + 32);
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      break;
    }

    swift_unknownObjectRelease();
    v20 = v56;
LABEL_43:
    if (++v10 == v20)
    {
      goto LABEL_46;
    }
  }

  v15 = v14;
  v57 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v16 = sub_1B1099EF8(v4);
    for (i = 0; v16 != i; ++i)
    {
      if (v59)
      {
        v18 = MEMORY[0x1B272DFA0](i, v4);
      }

      else
      {
        if (i >= *(v58 + 16))
        {
          goto LABEL_50;
        }

        v18 = *(v4 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        goto LABEL_49;
      }

      if ([v18 index] == v10)
      {
        v21 = [v19 contextId];
        v22 = sub_1B1122A5C();
        v23 = v2;
        v25 = v24;

        v26 = sub_1B10A7800(v22, v25, a2);
        v2 = v23;

        if (!v26)
        {
          break;
        }

        goto LABEL_30;
      }
    }
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739EE0, &unk_1B1134620);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1B11345C0;
    swift_unknownObjectRetain();
    v30 = [v28 result];
    if (!v30)
    {
      v30 = [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
    }

    *(v29 + 32) = v30;
    v26 = v57;
    sub_1B1072550(v29, v57);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDAD5488 != -1)
    {
      swift_once();
    }

    v31 = sub_1B112296C();
    __swift_project_value_buffer(v31, qword_1EDAD5490);
    swift_unknownObjectRetain();
    v32 = sub_1B112293C();
    v33 = sub_1B1122DDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v60 = v52;
      *v34 = v51;
      v35 = v33;
      v36 = [v15 identifier];
      v37 = v2;
      v38 = sub_1B1122A5C();
      v40 = v39;

      v41 = sub_1B10784E0(v38, v40, &v60);

      *(v34 + 4) = v41;
      v2 = v37;
      v42 = v35;
      v5 = &selRef_setSearchIndex_;
      _os_log_impl(&dword_1B1064000, v32, v42, "ZKW: Failed to find or construct section for topic %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1B272EDD0](v52, -1, -1);
      MEMORY[0x1B272EDD0](v34, -1, -1);
    }

    v26 = v57;
  }

LABEL_30:
  v43 = v26;
  v44 = sub_1B10725D4(v26);
  if (!v44)
  {
LABEL_40:
    v50 = v43;
    MEMORY[0x1B272DB50]();
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B1122BAC();
    }

    sub_1B1122BCC();

    swift_unknownObjectRelease();
    v4 = v55;
    v20 = v56;
    goto LABEL_43;
  }

  v45 = v44;
  v46 = sub_1B1099EF8(v44);
  for (j = 0; ; ++j)
  {
    if (v46 == j)
    {

      v2 = v54;
      v5 = &selRef_setSearchIndex_;
      goto LABEL_40;
    }

    if ((v45 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1B272DFA0](j, v45);
    }

    else
    {
      if (j >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v48 = *(v45 + 8 * j + 32);
    }

    v49 = v48;
    if (__OFADD__(j, 1))
    {
      break;
    }

    [v48 setRequestedTopic_];
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
}

void sub_1B1072550(uint64_t a1, void *a2)
{
  sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
  v3 = sub_1B1122B7C();

  [a2 setResults_];
}

uint64_t OUTLINED_FUNCTION_8_2()
{
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_1B11230AC();
}

uint64_t sub_1B1072684()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD5490);
  __swift_project_value_buffer(v0, qword_1EDAD5490);
  return sub_1B112294C();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_task_alloc();
}

void sub_1B1072818(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

void sub_1B10728C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_1B11217EC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_11(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072B1C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072BD4()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1B1072C08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CF0, &qword_1B1134320);
  OUTLINED_FUNCTION_11(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072C94()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072CC8()
{
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1B11228DC();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  v14 = *(v0 + 4);

  v15 = *(v0 + 6);

  (*(v3 + 8))(&v0[v4], v1);
  (*(v9 + 8))(&v0[v10], v7);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1072E10()
{
  v1 = sub_1B112186C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v22 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v23 = v2;
  v6 = (*(v5 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_1B11228AC();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v10 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v12 = *(v11 + 64);
  v13 = sub_1B11228DC();
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v16 = (v10 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  v21 = *(v17 + 64);
  v18 = *(v0 + 16);
  swift_unknownObjectRelease();
  v19 = *(v0 + 32);

  (*(v4 + 8))(v0 + v22, v23);
  (*(v9 + 8))(v0 + v10, v7);
  (*(v15 + 8))(v0 + v16, v13);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B1073038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1B10730D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B10731EC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x1EEE6BDD0](v2);
}

uint64_t sub_1B1073220()
{
  MEMORY[0x1B272EE80](v0 + 16);
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B1073250()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x1EEE6BDD0](v2);
}

uint64_t sub_1B107328C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  v3 = *(v0 + 40);

  OUTLINED_FUNCTION_54_0();

  return MEMORY[0x1EEE6BDD0](v4);
}

uint64_t sub_1B10732E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B108E454();
  *a2 = result;
  return result;
}

id sub_1B1073318@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1068078();
  *a2 = result;
  return result;
}

void *sub_1B1073348@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B106903C();
  *a2 = result;
  return result;
}

uint64_t sub_1B10733D8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B107342C()
{
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B107345C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v2);
}

uint64_t sub_1B10734E4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v2);
}

uint64_t sub_1B107351C()
{
  v1 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B1073574@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B109B070();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B10735CC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B1073600()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6BDD0](v2);
}

id sub_1B1073F50(uint64_t a1)
{
  v2 = sub_1B112186C();
  v3 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v2) != 1)
  {
    v3 = sub_1B112182C();
    (*(*(v2 - 8) + 8))(a1, v2);
  }

  v4 = [swift_getObjCClassFromMetadata() punchoutWithURL_];

  return v4;
}

uint64_t sub_1B107400C(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = sub_1B1121E4C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v36 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = sub_1B11227EC();
  v14 = OUTLINED_FUNCTION_17(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7399E0, &qword_1B1133C10);
  v18 = OUTLINED_FUNCTION_17(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  v23 = sub_1B112247C();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  switch(a2 >> 62)
  {
    case 1uLL:
      v32 = a1;
      v33 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v32 = *(a1 + 16);
      v33 = *(a1 + 24);
LABEL_6:
      if (v32 == v33)
      {
        return 0;
      }

      goto LABEL_3;
    case 3uLL:
      return v4;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        return 0;
      }

LABEL_3:
      v31 = v27;
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      sub_1B1070FD4(a1, a2);
      sub_1B11227DC();
      sub_1B10780FC(&qword_1EB7395A8, MEMORY[0x1E69BD550]);
      sub_1B112280C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
      (*(v31 + 32))(v30, v22, v23);
      v34 = sub_1B112246C();
      if (v34)
      {
        sub_1B112245C();
        sub_1B10780FC(&unk_1EB7395B0, MEMORY[0x1E69BCE50]);
        v4 = sub_1B112281C();
        (*(v36 + 8))(v12, v5);
        (*(v31 + 8))(v30, v23);
      }

      else
      {
        (*(v31 + 8))(v30, v23);
        return 0;
      }

      return v4;
  }
}

id sub_1B10743FC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B11218AC();
  v6 = [v4 initWithJSON_];

  sub_1B106C204(a1, a2);
  return v6;
}

void sub_1B1074474(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399D8, &qword_1B1133C08);
    v2 = sub_1B112307C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = sub_1B1122CBC();
    v16 = sub_1B10A429C(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.toSFSearchResult(using:queryID:isCardRequest:)(void *a1, uint64_t a2, char a3, char a4)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = [objc_allocWithZone(PARDefaultFactory) init];
  }

  swift_unknownObjectRetain();
  if (a4)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1B1076408(a2, v9 & 0xFFFFFFFE | a3 & 1, 0x6E776F6E6B6E75, 0xE700000000000000, v8, v4);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t Apple_Parsec_Search_V1alpha_SearchResult.toSFSearchResult(using:queryID:isCardRequest:userAgent:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    v13 = a1;
  }

  else
  {
    v14 = objc_allocWithZone(PARDefaultFactory);

    v13 = [v14 init];
  }

  swift_unknownObjectRetain();
  if (a4)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1B1076408(a2, v15 & 0xFFFFFFFE | a3 & 1, a5, a6, v13, v6);

  swift_unknownObjectRelease();
  return v16;
}

id sub_1B1074800(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1B11218AC();
    sub_1B106C1F0(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() imageWithData_];

  return v5;
}

void sub_1B107488C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1B11218AC();
  sub_1B106C204(a1, a2);
  [a3 setMapsData_];
}

void sub_1B1074900(uint64_t a1, void *a2)
{
  sub_1B1066864(0, qword_1EDAD5B00, 0x1E696AD98);
  v3 = sub_1B11229DC();

  [a2 setServerFeatures_];
}

void sub_1B1074994(uint64_t a1, void *a2, SEL *a3)
{
  sub_1B112186C();
  v5 = sub_1B1122B7C();

  [a2 *a3];
}

void sub_1B1074A10(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1B1122A4C();

  [a3 *a4];
}

void sub_1B1074A7C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  objc_allocWithZone(MEMORY[0x1E69CA5E0]);
  sub_1B1070FD4(a3, a4);
  v8 = sub_1B10814B8(a3, a4);
  if (v8)
  {
    v15 = v8;
    v9 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
    if (v9)
    {
      v10 = v9;
      sub_1B1077FE8(a1, &v16);
      if (!v17)
      {
        sub_1B107809C(&v16, &qword_1EB7399C0, &qword_1B1133BF8);
        goto LABEL_10;
      }

      sub_1B1068D4C(&v16, v18);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      if ((*(v12 + 16))(v11, v12))
      {
        __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_10:
        v13 = v10;
        [a2 setCard_];

        return;
      }

      v14 = v10;
      [a2 setInlineCard_];

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
    }
  }
}

uint64_t sub_1B1074C20(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1B112176C();
  v314 = OUTLINED_FUNCTION_0(v6);
  v315 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v314);
  OUTLINED_FUNCTION_4();
  v319 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v287 - v12;
  v291 = sub_1B112210C();
  v14 = OUTLINED_FUNCTION_0(v291);
  v290 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v18);
  v288 = sub_1B11223AC();
  v19 = OUTLINED_FUNCTION_0(v288);
  v287[4] = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v23);
  v320 = sub_1B112186C();
  v24 = OUTLINED_FUNCTION_0(v320);
  v318 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4();
  v313 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_0(v287 - v30);
  v294 = sub_1B112240C();
  v31 = OUTLINED_FUNCTION_0(v294);
  v293 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v35);
  v36 = sub_1B112241C();
  v37 = OUTLINED_FUNCTION_0(v36);
  v310 = v38;
  v311 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v41);
  v305 = v287 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7399B0, &qword_1B1133BE8);
  v44 = OUTLINED_FUNCTION_17(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_3_0(v287 - v47);
  v302 = sub_1B11217DC();
  v48 = OUTLINED_FUNCTION_0(v302);
  v316 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1_0();
  v300 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v54 = OUTLINED_FUNCTION_17(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = v287 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = v287 - v62;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_3_0(v287 - v65);
  v299 = sub_1B112204C();
  v66 = OUTLINED_FUNCTION_0(v299);
  v298 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v70);
  v297 = sub_1B112209C();
  v71 = OUTLINED_FUNCTION_0(v297);
  v296 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v75);
  v76 = sub_1B1121E7C();
  v77 = OUTLINED_FUNCTION_0(v76);
  v308 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(v81);
  v82 = sub_1B112206C();
  v83 = OUTLINED_FUNCTION_0(v82);
  v317 = v84;
  v86 = *(v85 + 64);
  v87 = MEMORY[0x1EEE9AC00](v83);
  v89 = v287 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v91 = v287 - v90;
  v326 = sub_1B1066864(0, &unk_1EB739610, off_1E7AC5148);
  v327 = &off_1F2778A20;
  v324 = a1;
  v304 = a1;
  v92 = [a2 createResultObject];
  objc_opt_self();
  v93 = swift_dynamicCastObjCClass();
  if (!v93)
  {
    swift_unknownObjectRelease();
LABEL_80:
    __swift_destroy_boxed_opaque_existential_1(&v324);
    return v93;
  }

  v287[0] = v92;
  v94 = sub_1B1121AFC();
  sub_1B1074A10(v94, v95, v93, &selRef_setIdentifier_);
  [v93 setType_];
  v96 = sub_1B1121D2C();
  sub_1B1074A10(v96, v97, v93, &selRef_setDomainName_);
  v98 = sub_1B1121B4C();
  v312 = v13;
  if (v98)
  {
    sub_1B1121DDC();
    sub_1B1066864(0, &qword_1EDAD5558, 0x1E69CA138);
    v99 = sub_1B112205C();
    result = sub_1B1074800(v99, v100);
    if (!result)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v102 = result;
    v103 = (v317)[1](v91, v82);
    OUTLINED_FUNCTION_9(v103, sel_setThumbnail_);
  }

  v287[2] = v63;
  [v93 setPreventThumbnailImageScaling_];
  v104 = [objc_allocWithZone(MEMORY[0x1E69CA4F0]) init];
  OUTLINED_FUNCTION_9(v104, sel_setTitle_);

  result = [v93 title];
  if (!result)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v105 = result;
  v106 = sub_1B1121D0C();
  sub_1B1074A10(v106, v107, v105, &selRef_setText_);

  v108 = sub_1B1121ADC();
  sub_1B1074A10(v108, v109, v93, &selRef_setCompletion_);
  v110 = sub_1B1121C5C();
  v111 = v309;
  if ((v110 & 1) == 0)
  {
LABEL_9:
    sub_1B1121D1C();
    OUTLINED_FUNCTION_11_0();

    OUTLINED_FUNCTION_5_1();
    if (v116)
    {
      v117 = sub_1B1121D1C();
      sub_1B1074A10(v117, v118, v93, &selRef_setStoreIdentifier_);
    }

    v119 = sub_1B1121C2C();
    sub_1B1074A10(v119, v120, v93, &selRef_setEntityIdentifier_);
    v121 = sub_1B1121D6C();
    sub_1B1074A10(v121, v122, v93, &selRef_setResultBundleId_);
    v123 = sub_1B1121ABC();
    sub_1B1074A10(v123, v124, v93, &selRef_setMapsResultType_);
    v125 = sub_1B1121D8C();
    sub_1B107488C(v125, v126, v93);
    v127 = sub_1B1121C3C();
    sub_1B1074A10(v127, v128, v93, &selRef_setNearbyBusinessesString_);
    v129 = sub_1B1121B8C();
    sub_1B1074A10(v129, v130, v93, &selRef_setAppleReferrer_);
    v131 = sub_1B1121C1C();
    sub_1B1074A10(v131, v132, v93, &selRef_setSectionBundleIdentifier_);
    OUTLINED_FUNCTION_13(&v330);
    sub_1B1121D3C();
    v133 = sub_1B1121E6C();
    OUTLINED_FUNCTION_6(&v331);
    result = v134(v63, v76);
    v135 = v320;
    v137 = v310;
    v136 = v311;
    if (v133 < 0xFFFFFFFF80000000)
    {
LABEL_83:
      __break(1u);
    }

    else if (v133 <= 0x7FFFFFFF)
    {
      [v93 setTopHit_];
      sub_1B1121CFC();
      [v93 setRankingScore_];
      [v93 setShouldAutoNavigate_];
      [v93 setNoGoTakeover_];
      if (sub_1B1121B2C())
      {
        v138 = v136;
        v139 = v135;
        v140 = v111;
        v141 = v295;
        sub_1B1121D9C();
        OUTLINED_FUNCTION_13(&v324);
        sub_1B112208C();
        v142 = sub_1B10AA678();
        OUTLINED_FUNCTION_6(v325);
        v143(v63, v299);
        OUTLINED_FUNCTION_6(v323);
        v144 = v141;
        v111 = v140;
        v135 = v139;
        v136 = v138;
        v146 = v145(v144, v297);
        OUTLINED_FUNCTION_9(v146, sel_setNormalizedTopic_);
      }

      sub_1B1121D5C();
      OUTLINED_FUNCTION_11_0();

      OUTLINED_FUNCTION_5_1();
      if (v147)
      {
        v148 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) init];
        [v148 setType_];
        [v148 setSource_];
        v149 = sub_1B1121DAC();
        sub_1B1074A10(v149, v150, v148, &selRef_setTitle_);
        sub_1B1121D5C();
        v151 = v303;
        sub_1B112185C();

        OUTLINED_FUNCTION_18(v151);
        if (v171)
        {
          v153 = 0;
        }

        else
        {
          v152 = v303;
          v153 = v303;
          sub_1B112182C();
          OUTLINED_FUNCTION_8();
          v154(v152, v135);
        }

        [v148 setUrlValue_];

        [v93 setCard_];
      }

      sub_1B1066864(0, &qword_1EB739590, 0x1E69CA320);
      sub_1B1121BCC();
      v155 = v307;
      sub_1B112185C();

      v156 = sub_1B1073F50(v155);
      OUTLINED_FUNCTION_9(v156, sel_setMoreResultsPunchout_);

      sub_1B1121CDC();
      OUTLINED_FUNCTION_11_0();

      OUTLINED_FUNCTION_5_1();
      v317 = v93;
      v301 = a3;
      if (v157)
      {
        sub_1B1121CDC();
        sub_1B11217CC();

        v158 = v302;
        if (__swift_getEnumTagSinglePayload(v111, 1, v302) == 1)
        {
          sub_1B107809C(v111, &unk_1EB7399B0, &qword_1B1133BE8);
        }

        else
        {
          v159 = v111;
          v160 = v316;
          v161 = v300;
          (*(v316 + 32))(v300, v159, v158);
          result = sub_1B112177C();
          if (result)
          {
            v158 = result;
            v162 = 0;
            v163 = *(result + 16);
            v164 = v314;
            v165 = (v315 + 8);
            while (1)
            {
              if (v163 == v162)
              {
                (*(v316 + 8))(v300, v302);

                a3 = v301;
                v135 = v320;
                v93 = v317;
                v137 = v310;
                v136 = v311;
                goto LABEL_41;
              }

              v166 = v312;
              if (v162 >= *(v158 + 16))
              {
LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_12_0();
              (*(v169 + 16))(v319, v167 + v168 * v162, v164);
              v171 = sub_1B112174C() == 0xD000000000000014 && 0x80000001B11354E0 == v170;
              if (v171)
              {

                v158 = v314;
                goto LABEL_38;
              }

              v172 = sub_1B11230AC();

              if (v172)
              {
                break;
              }

              v164 = v314;
              result = (*v165)(v319, v314);
              ++v162;
            }

            v158 = v314;
            v166 = v312;
LABEL_38:
            (*(v315 + 32))(v166, v319, v158);
            v173 = sub_1B112175C();
            a3 = v301;
            v135 = v320;
            v137 = v310;
            v136 = v311;
            if (v174)
            {
              v93 = v317;
              sub_1B1074A10(v173, v174, v317, &selRef_setCalendarIdentifier_);
              v175 = *v165;
              v176 = OUTLINED_FUNCTION_16();
              v177(v176);
              v178 = OUTLINED_FUNCTION_14();
              v179(v178);
            }

            else
            {
              v180 = *v165;
              v181 = OUTLINED_FUNCTION_16();
              v182(v181);
              v183 = OUTLINED_FUNCTION_14();
              v184(v183);
              v93 = v317;
            }
          }

          else
          {
            (*(v160 + 8))(v161, v158);
          }
        }

LABEL_41:
        sub_1B1121CDC();
        OUTLINED_FUNCTION_13(&v328);
        sub_1B112185C();

        v185 = OUTLINED_FUNCTION_18(v158);
        if (v171)
        {
          v186 = 0;
        }

        else
        {
          v186 = v158;
          sub_1B112182C();
          OUTLINED_FUNCTION_8();
          v187 = OUTLINED_FUNCTION_10();
          v185 = v188(v187);
        }

        OUTLINED_FUNCTION_9(v185, sel_setUrl_);
      }

      v189 = sub_1B1121D6C();
      sub_1B1074A10(v189, v190, v93, &selRef_setApplicationBundleIdentifier_);
      v191 = sub_1B1121DCC();
      v193 = sub_1B10A976C(v191, v192);

      [v93 setPlacement_];
      result = sub_1B1121D7C();
      if ((result & 0x80000000) == 0)
      {
        [v93 setMinimumRankOfTopHitToSuppressResult_];
        v194 = sub_1B1121B9C();
        sub_1B1074A10(v194, v195, v93, &selRef_setSectionHeader_);
        v196 = sub_1B1121C7C();
        sub_1B1074A10(v196, v197, v93, &selRef_setSectionHeaderMore_);
        sub_1B1121CAC();
        OUTLINED_FUNCTION_13(&v314);
        sub_1B112185C();

        v198 = OUTLINED_FUNCTION_18(v193);
        if (v171)
        {
          v199 = 0;
        }

        else
        {
          v199 = v193;
          sub_1B112182C();
          OUTLINED_FUNCTION_8();
          v200 = OUTLINED_FUNCTION_10();
          v198 = v201(v200);
        }

        v202 = v306;
        OUTLINED_FUNCTION_9(v198, sel_setSectionHeaderMoreURL_);

        v203 = sub_1B1121D2C();
        sub_1B1074A10(v203, v204, v93, &selRef_setResultType_);
        OUTLINED_FUNCTION_13(&v329);
        sub_1B1121B7C();
        (*(v137 + 16))(v202, v193, v136);
        v205 = (*(v137 + 88))(v202, v136);
        v206 = *MEMORY[0x1E69BD308];
        v207 = *(v137 + 8);
        v207(v193, v136);
        if (v205 == v206)
        {
          v208 = 0x636972656E6567;
        }

        else
        {
          v207(v202, v136);
          v208 = 0x6E776F6E6B6E75;
        }

        v209 = v317;
        sub_1B1074A10(v208, 0xE700000000000000, v317, &selRef_setResultTemplate_);
        v210 = sub_1B1121C8C();
        OUTLINED_FUNCTION_15(v210, sel_setRenderHorizontallyWithOtherResultsInCategory_);
        v211 = sub_1B1121DBC();
        OUTLINED_FUNCTION_15(v211, sel_setDoNotFold_);
        result = sub_1B1121D4C();
        if ((result & 0x80000000) == 0)
        {
          [v209 setBlockId_];
          if (sub_1B1121BBC())
          {
            v212 = v292;
            sub_1B1121B1C();
            v213 = sub_1B10A9830();
            OUTLINED_FUNCTION_6(v322);
            v214(v212, v294);
            [v209 setPunchout_];
          }

          else
          {
            v215 = [v209 url];
            if (v215)
            {
              v216 = v215;
              v217 = v287[1];
              sub_1B112183C();

              v218 = [objc_allocWithZone(MEMORY[0x1E69CA320]) init];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399D0, &qword_1B1133C00);
              v219 = v318;
              v220 = *(v318 + 72);
              v221 = (*(v318 + 80) + 32) & ~*(v318 + 80);
              v222 = swift_allocObject();
              *(v222 + 16) = xmmword_1B1133BA0;
              (*(v219 + 16))(v222 + v221, v217, v135);
              sub_1B1074994(v222, v218, &selRef_setUrls_);
              [v317 setPunchout_];

              v209 = v317;
              (*(v219 + 8))(v217, v135);
            }
          }

          v223 = sub_1B1121CEC();
          sub_1B1074A10(v223, v224, v209, &selRef_setCompletedQuery_);
          v225 = sub_1B1121C0C();
          v227 = v226;
          v228 = sub_1B107400C(v225, v226);
          v230 = v229;
          sub_1B106C204(v225, v227);
          if (v230 >> 60 != 15)
          {
            sub_1B1066864(0, &qword_1EB7399C8, 0x1E69CA5E0);
            v231 = OUTLINED_FUNCTION_10();
            sub_1B1070FD4(v231, v232);
            v233 = OUTLINED_FUNCTION_10();
            v235 = sub_1B10743FC(v233, v234);
            if (v235)
            {
              v236 = v235;
              v237 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
              [v209 setCompactCard_];
            }

            v238 = OUTLINED_FUNCTION_10();
            sub_1B106C1F0(v238, v239);
          }

          v240 = sub_1B1121CCC();
          v242 = v241;
          sub_1B107400C(v240, v241);
          OUTLINED_FUNCTION_11_0();
          sub_1B106C204(v240, v242);
          if (v228 >> 60 != 15)
          {
            sub_1B1067888(&v324, v321);
            swift_unknownObjectRetain();
            sub_1B1074A7C(v321, v209, a3, v228);
            v243 = OUTLINED_FUNCTION_16();
            sub_1B106C1F0(v243, v244);
            swift_unknownObjectRelease();
            sub_1B107809C(v321, &qword_1EB7399C0, &qword_1B1133BF8);
          }

          v245 = sub_1B108D1B4();
          if ((v246 & 1) == 0)
          {
            [v209 setQueryId_];
            OUTLINED_FUNCTION_19([v209 card]);

            OUTLINED_FUNCTION_19([v209 inlineCard]);
            OUTLINED_FUNCTION_19([v209 compactCard]);

            OUTLINED_FUNCTION_19([v209 tophitCard]);
          }

          v247 = sub_1B1121BFC();
          OUTLINED_FUNCTION_15(v247, sel_setIsInstantAnswer_);
          v248 = sub_1B1121BDC();
          sub_1B1074474(v248);
          v250 = v249;

          sub_1B1074900(v250, v209);
          v251 = sub_1B1121CBC();
          OUTLINED_FUNCTION_15(v251, sel_setShouldUseCompactDisplay_);
          v252 = sub_1B1121C4C();
          OUTLINED_FUNCTION_15(v252, sel_setPreferTopPlatter_);
          result = sub_1B1121BEC();
          v253 = result;
          v254 = 0;
          v255 = *(result + 16);
          v319 = (v318 + 32);
          v256 = result + 40;
          v257 = MEMORY[0x1E69E7CC0];
          v316 = result + 40;
LABEL_66:
          v258 = (v256 + 16 * v254);
          while (v255 != v254)
          {
            if (v254 >= *(v253 + 16))
            {
              __break(1u);
              goto LABEL_82;
            }

            v260 = *(v258 - 1);
            v259 = *v258;

            sub_1B112185C();
            v261 = v320;

            if (__swift_getEnumTagSinglePayload(v60, 1, v261) != 1)
            {
              v262 = *v319;
              (*v319)(v313, v60, v261);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B10A2334(0, *(v257 + 16) + 1, 1, v257);
                v257 = v267;
              }

              v264 = *(v257 + 16);
              v263 = *(v257 + 24);
              if (v264 >= v263 >> 1)
              {
                sub_1B10A2334(v263 > 1, v264 + 1, 1, v257);
                v257 = v268;
              }

              ++v254;
              *(v257 + 16) = v264 + 1;
              OUTLINED_FUNCTION_12_0();
              result = (v262)(v265 + v266 * v264, v313, v320);
              v256 = v316;
              goto LABEL_66;
            }

            result = sub_1B107809C(v60, &qword_1EB73A130, &qword_1B1133BF0);
            v258 += 2;
            ++v254;
          }

          v93 = v317;
          sub_1B1074994(v257, v317, &selRef_setAlternativeURLs_);
          [v93 processVisualCATResultSynchronously];
          if (sub_1B1121AAC())
          {
            v269 = v287[3];
            sub_1B1121B6C();
            v270 = sub_1B10A9D40();
            OUTLINED_FUNCTION_6(&v316);
            v271 = v269;
            v93 = v317;
            v273 = v272(v271, v288);
            OUTLINED_FUNCTION_9(v273, sel_setResultEntity_);
          }

          v274 = sub_1B1121CEC();
          sub_1B1074A10(v274, v275, v93, &selRef_setUserInput_);
          sub_1B1121ACC();
          OUTLINED_FUNCTION_11_0();
          v276 = sub_1B11218BC();
          v278 = v277;
          v279 = OUTLINED_FUNCTION_16();
          sub_1B106C204(v279, v280);
          sub_1B1074A10(v276, v278, v93, &selRef_setFbr_);
          v281 = sub_1B1121AEC();
          sub_1B1074A10(v281, v282, v93, &selRef_setEntityType_);
          if (sub_1B1121C9C())
          {
            v283 = v289;
            sub_1B1121C6C();
            v284 = sub_1B10A9E9C();
            OUTLINED_FUNCTION_6(&v319);
            v285 = v283;
            v93 = v317;
            v286(v285, v291);
            [v93 setMoreResultsButton_];
          }

          goto LABEL_80;
        }

        goto LABEL_86;
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    __break(1u);
    goto LABEL_85;
  }

  sub_1B1121BAC();
  v63 = sub_1B1066864(0, &qword_1EDAD5558, 0x1E69CA138);
  v112 = sub_1B112205C();
  result = sub_1B1074800(v112, v113);
  if (result)
  {
    v114 = result;
    v115 = (v317)[1](v89, v82);
    OUTLINED_FUNCTION_9(v115, sel_setCompletionImage_);

    goto LABEL_9;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1B1076408(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v283 = a5;
  v278 = sub_1B112176C();
  v280 = *(v278 - 8);
  v11 = *(v280 + 64);
  v12 = MEMORY[0x1EEE9AC00](v278);
  v282 = v243 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v244 = v243 - v14;
  v251 = sub_1B112210C();
  v250 = *(v251 - 8);
  v15 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v249 = v243 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1B11223AC();
  v247 = *(v248 - 8);
  v17 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v246 = v243 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1B112186C();
  v281 = *(v284 - 8);
  v19 = *(v281 + 64);
  v20 = MEMORY[0x1EEE9AC00](v284);
  v277 = v243 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v245 = v243 - v22;
  v254 = sub_1B112240C();
  v253 = *(v254 - 8);
  v23 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v252 = v243 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B112241C();
  v26 = *(v25 - 8);
  v275 = v25;
  v276 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v274 = v243 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v269 = v243 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7399B0, &qword_1B1133BE8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v265 = v243 - v33;
  v266 = sub_1B11217DC();
  v262 = *(v266 - 8);
  v34 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v279 = v243 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v263 = v243 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = v243 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v268 = v243 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v270 = v243 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v264 = v243 - v47;
  v261 = sub_1B112204C();
  v260 = *(v261 - 8);
  v48 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v258 = v243 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_1B112209C();
  v257 = *(v259 - 8);
  v50 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v259);
  v256 = v243 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_1B1121E7C();
  v271 = *(v272 - 8);
  v52 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v54 = v243 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1B112206C();
  v273 = *(v55 - 8);
  v56 = *(v273 + 64);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = v243 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v61 = v243 - v60;
  v286[3] = &_s17RequestParametersVN;
  v286[4] = &off_1F2778798;
  v62 = swift_allocObject();
  v286[0] = v62;
  v255 = a1;
  *(v62 + 16) = a1;
  *(v62 + 24) = a2 & 1;
  v267 = a2;
  *(v62 + 25) = BYTE1(a2) & 1;
  *(v62 + 32) = a3;
  *(v62 + 40) = a4;

  v63 = [v283 createResultObject];
  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    v124 = 0;
LABEL_87:
    __swift_destroy_boxed_opaque_existential_1(v286);
    return v124;
  }

  v65 = v64;
  v243[1] = v63;
  v66 = sub_1B1121AFC();
  sub_1B1074A10(v66, v67, v65, &selRef_setIdentifier_);
  [v65 setType_];
  v68 = sub_1B1121D2C();
  sub_1B1074A10(v68, v69, v65, &selRef_setDomainName_);
  v70 = sub_1B1121B4C();
  v283 = v65;
  if (v70)
  {
    sub_1B1121DDC();
    sub_1B1066864(0, &qword_1EDAD5558, 0x1E69CA138);
    v71 = sub_1B112205C();
    result = sub_1B1074800(v71, v72);
    if (!result)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v74 = result;
    (*(v273 + 8))(v61, v55);
    v65 = v283;
    [v283 setThumbnail_];
  }

  [v65 setPreventThumbnailImageScaling_];
  v75 = [objc_allocWithZone(MEMORY[0x1E69CA4F0]) init];
  [v65 setTitle_];

  result = [v65 title];
  if (!result)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v76 = result;
  v77 = sub_1B1121D0C();
  sub_1B1074A10(v77, v78, v76, &selRef_setText_);

  v79 = sub_1B1121ADC();
  sub_1B1074A10(v79, v80, v65, &selRef_setCompletion_);
  if ((sub_1B1121C5C() & 1) == 0)
  {
LABEL_9:
    v84 = sub_1B1121D1C();
    v86 = v85;

    v87 = HIBYTE(v86) & 0xF;
    if ((v86 & 0x2000000000000000) == 0)
    {
      v87 = v84 & 0xFFFFFFFFFFFFLL;
    }

    v88 = v283;
    if (v87)
    {
      v89 = sub_1B1121D1C();
      sub_1B1074A10(v89, v90, v88, &selRef_setStoreIdentifier_);
    }

    v91 = sub_1B1121C2C();
    sub_1B1074A10(v91, v92, v88, &selRef_setEntityIdentifier_);
    v93 = sub_1B1121D6C();
    sub_1B1074A10(v93, v94, v88, &selRef_setResultBundleId_);
    v95 = sub_1B1121ABC();
    sub_1B1074A10(v95, v96, v88, &selRef_setMapsResultType_);
    v97 = sub_1B1121D8C();
    sub_1B107488C(v97, v98, v88);
    v99 = sub_1B1121C3C();
    sub_1B1074A10(v99, v100, v88, &selRef_setNearbyBusinessesString_);
    v101 = sub_1B1121B8C();
    sub_1B1074A10(v101, v102, v88, &selRef_setAppleReferrer_);
    v103 = sub_1B1121C1C();
    sub_1B1074A10(v103, v104, v88, &selRef_setSectionBundleIdentifier_);
    sub_1B1121D3C();
    v105 = sub_1B1121E6C();
    result = (*(v271 + 8))(v54, v272);
    if (v105 < 0xFFFFFFFF80000000)
    {
LABEL_90:
      __break(1u);
    }

    else if (v105 <= 0x7FFFFFFF)
    {
      [v88 setTopHit_];
      sub_1B1121CFC();
      [v88 setRankingScore_];
      [v88 setShouldAutoNavigate_];
      [v88 setNoGoTakeover_];
      if (sub_1B1121B2C())
      {
        v106 = v256;
        sub_1B1121D9C();
        v107 = v258;
        sub_1B112208C();
        v108 = sub_1B10AA678();
        (*(v260 + 8))(v107, v261);
        (*(v257 + 8))(v106, v259);
        [v88 setNormalizedTopic_];
      }

      v109 = sub_1B1121D5C();
      v111 = v110;

      v112 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v112 = v109 & 0xFFFFFFFFFFFFLL;
      }

      v113 = v275;
      v114 = v276;
      v115 = v274;
      if (v112)
      {
        v116 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) init];
        [v116 setType_];
        [v116 setSource_];
        v117 = sub_1B1121DAC();
        sub_1B1074A10(v117, v118, v116, &selRef_setTitle_);
        sub_1B1121D5C();
        v119 = v264;
        sub_1B112185C();
        v120 = v119;

        v121 = v119;
        v122 = v284;
        if (__swift_getEnumTagSinglePayload(v121, 1, v284) == 1)
        {
          v123 = 0;
        }

        else
        {
          v125 = v120;
          v123 = sub_1B112182C();
          v114 = v276;
          (*(v281 + 8))(v125, v122);
        }

        [v116 setUrlValue_];

        [v88 setCard_];
      }

      sub_1B1066864(0, &qword_1EB739590, 0x1E69CA320);
      sub_1B1121BCC();
      v126 = v270;
      sub_1B112185C();

      v127 = sub_1B1073F50(v126);
      [v88 setMoreResultsPunchout_];

      v128 = sub_1B1121CDC();
      v130 = v129;

      v131 = HIBYTE(v130) & 0xF;
      if ((v130 & 0x2000000000000000) == 0)
      {
        v131 = v128 & 0xFFFFFFFFFFFFLL;
      }

      if (!v131)
      {
LABEL_52:
        v156 = sub_1B1121D6C();
        sub_1B1074A10(v156, v157, v88, &selRef_setApplicationBundleIdentifier_);
        v158 = sub_1B1121DCC();
        v160 = sub_1B10A976C(v158, v159);

        [v88 setPlacement_];
        result = sub_1B1121D7C();
        if ((result & 0x80000000) == 0)
        {
          [v88 setMinimumRankOfTopHitToSuppressResult_];
          v161 = sub_1B1121B9C();
          sub_1B1074A10(v161, v162, v88, &selRef_setSectionHeader_);
          v163 = sub_1B1121C7C();
          sub_1B1074A10(v163, v164, v88, &selRef_setSectionHeaderMore_);
          sub_1B1121CAC();
          v165 = v268;
          sub_1B112185C();

          v166 = v284;
          if (__swift_getEnumTagSinglePayload(v165, 1, v284) == 1)
          {
            v167 = 0;
          }

          else
          {
            v167 = sub_1B112182C();
            (*(v281 + 8))(v165, v166);
          }

          [v88 setSectionHeaderMoreURL_];

          v168 = sub_1B1121D2C();
          sub_1B1074A10(v168, v169, v88, &selRef_setResultType_);
          v170 = v269;
          sub_1B1121B7C();
          (*(v114 + 16))(v115, v170, v113);
          v171 = (*(v114 + 88))(v115, v113);
          v172 = *MEMORY[0x1E69BD308];
          v173 = *(v114 + 8);
          v173(v170, v113);
          if (v171 == v172)
          {
            v174 = 0x636972656E6567;
          }

          else
          {
            v173(v115, v113);
            v174 = 0x6E776F6E6B6E75;
          }

          sub_1B1074A10(v174, 0xE700000000000000, v88, &selRef_setResultTemplate_);
          [v88 setRenderHorizontallyWithOtherResultsInCategory_];
          [v88 setDoNotFold_];
          result = sub_1B1121D4C();
          v175 = v284;
          if ((result & 0x80000000) == 0)
          {
            [v88 setBlockId_];
            if (sub_1B1121BBC())
            {
              v176 = v252;
              sub_1B1121B1C();
              v177 = sub_1B10A9830();
              (*(v253 + 8))(v176, v254);
              [v88 setPunchout_];
            }

            else
            {
              v178 = [v88 url];
              if (v178)
              {
                v179 = v178;
                v180 = v245;
                sub_1B112183C();

                v181 = [objc_allocWithZone(MEMORY[0x1E69CA320]) init];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399D0, &qword_1B1133C00);
                v182 = v281;
                v183 = *(v281 + 72);
                v184 = (*(v281 + 80) + 32) & ~*(v281 + 80);
                v185 = swift_allocObject();
                *(v185 + 16) = xmmword_1B1133BA0;
                (*(v182 + 16))(v185 + v184, v180, v175);
                sub_1B1074994(v185, v181, &selRef_setUrls_);
                [v283 setPunchout_];

                v186 = v182;
                v88 = v283;
                (*(v186 + 8))(v180, v175);
              }
            }

            v187 = sub_1B1121CEC();
            sub_1B1074A10(v187, v188, v88, &selRef_setCompletedQuery_);
            v189 = sub_1B1121C0C();
            v191 = v190;
            v192 = sub_1B107400C(v189, v190);
            v194 = v193;
            sub_1B106C204(v189, v191);
            if (v194 >> 60 != 15)
            {
              sub_1B1066864(0, &qword_1EB7399C8, 0x1E69CA5E0);
              sub_1B1070FD4(v192, v194);
              v195 = sub_1B10743FC(v192, v194);
              if (v195)
              {
                v196 = v195;
                v197 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
                [v283 setCompactCard_];
              }

              sub_1B106C1F0(v192, v194);
            }

            v198 = sub_1B1121CCC();
            v200 = v199;
            v201 = sub_1B107400C(v198, v199);
            v203 = v202;
            sub_1B106C204(v198, v200);
            v204 = v283;
            if (v203 >> 60 != 15)
            {
              sub_1B1067888(v286, v285);
              swift_unknownObjectRetain();
              sub_1B1074A7C(v285, v204, v201, v203);
              sub_1B106C1F0(v201, v203);
              swift_unknownObjectRelease();
              sub_1B107809C(v285, &qword_1EB7399C0, &qword_1B1133BF8);
            }

            if ((v267 & 1) == 0)
            {
              v205 = v255;
              [v204 setQueryId_];
              v206 = [v204 card];
              sub_1B108D578(v206, v205);

              v207 = [v204 inlineCard];
              sub_1B108D578(v207, v205);

              v208 = [v204 compactCard];
              sub_1B108D578(v208, v205);

              v209 = [v204 tophitCard];
              sub_1B108D578(v209, v205);
            }

            [v204 setIsInstantAnswer_];
            v210 = sub_1B1121BDC();
            sub_1B1074474(v210);
            v212 = v211;

            sub_1B1074900(v212, v204);
            [v204 setShouldUseCompactDisplay_];
            [v204 setPreferTopPlatter_];
            v280 = a6;
            result = sub_1B1121BEC();
            v213 = result;
            v214 = 0;
            v215 = *(result + 16);
            v282 = (v281 + 32);
            v216 = (result + 40);
            v217 = MEMORY[0x1E69E7CC0];
            v279 = (result + 40);
LABEL_73:
            v218 = &v216[16 * v214];
            while (v215 != v214)
            {
              if (v214 >= *(v213 + 16))
              {
                __break(1u);
                goto LABEL_89;
              }

              v220 = *(v218 - 1);
              v219 = *v218;

              sub_1B112185C();
              v221 = v284;

              if (__swift_getEnumTagSinglePayload(v42, 1, v221) != 1)
              {
                v222 = *v282;
                (*v282)(v277, v42, v221);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1B10A2334(0, *(v217 + 16) + 1, 1, v217);
                  v217 = v225;
                }

                v224 = *(v217 + 16);
                v223 = *(v217 + 24);
                if (v224 >= v223 >> 1)
                {
                  sub_1B10A2334(v223 > 1, v224 + 1, 1, v217);
                  v217 = v226;
                }

                ++v214;
                *(v217 + 16) = v224 + 1;
                result = v222(v217 + ((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v224, v277, v284);
                v216 = v279;
                goto LABEL_73;
              }

              result = sub_1B107809C(v42, &qword_1EB73A130, &qword_1B1133BF0);
              v218 += 16;
              ++v214;
            }

            v227 = v283;
            sub_1B1074994(v217, v283, &selRef_setAlternativeURLs_);
            [v227 processVisualCATResultSynchronously];
            if (sub_1B1121AAC())
            {
              v228 = v246;
              sub_1B1121B6C();
              v229 = sub_1B10A9D40();
              (*(v247 + 8))(v228, v248);
              [v227 setResultEntity_];
            }

            v230 = sub_1B1121CEC();
            sub_1B1074A10(v230, v231, v227, &selRef_setUserInput_);
            v232 = sub_1B1121ACC();
            v234 = v233;
            v235 = sub_1B11218BC();
            v237 = v236;
            sub_1B106C204(v232, v234);
            v238 = v235;
            v124 = v283;
            sub_1B1074A10(v238, v237, v283, &selRef_setFbr_);
            v239 = sub_1B1121AEC();
            sub_1B1074A10(v239, v240, v124, &selRef_setEntityType_);
            if (sub_1B1121C9C())
            {
              v241 = v249;
              sub_1B1121C6C();
              v242 = sub_1B10A9E9C();
              (*(v250 + 8))(v241, v251);
              [v124 setMoreResultsButton_];
            }

            goto LABEL_87;
          }

          goto LABEL_93;
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      sub_1B1121CDC();
      v132 = v265;
      sub_1B11217CC();
      v133 = v132;

      v134 = v132;
      v135 = v266;
      if (__swift_getEnumTagSinglePayload(v134, 1, v266) == 1)
      {
        sub_1B107809C(v133, &unk_1EB7399B0, &qword_1B1133BE8);
      }

      else
      {
        v136 = v262;
        v137 = v133;
        v138 = v279;
        (*(v262 + 32))(v279, v137, v135);
        v139 = sub_1B112177C();
        if (v139)
        {
          v140 = v139;
          v141 = a6;
          v142 = 0;
          v143 = *(v139 + 16);
          v144 = (v280 + 8);
          v145 = v278;
          for (result = v138; ; result = v279)
          {
            if (v143 == v142)
            {
              (*(v262 + 8))(result, v266);

              a6 = v141;
              v88 = v283;
              v149 = v284;
              v113 = v275;
              v114 = v276;
              v115 = v274;
              goto LABEL_48;
            }

            if (v142 >= *(v140 + 16))
            {
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            (*(v280 + 16))(v282, v140 + ((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v142, v145);
            if (sub_1B112174C() == 0xD000000000000014 && 0x80000001B11354E0 == v146)
            {

              goto LABEL_45;
            }

            v148 = sub_1B11230AC();

            if (v148)
            {
              break;
            }

            v145 = v278;
            (*v144)(v282, v278);
            ++v142;
          }

          v145 = v278;
LABEL_45:
          v150 = v244;
          (*(v280 + 32))(v244, v282, v145);
          v151 = sub_1B112175C();
          a6 = v141;
          v88 = v283;
          v149 = v284;
          v153 = v145;
          v113 = v275;
          v114 = v276;
          v115 = v274;
          if (v152)
          {
            sub_1B1074A10(v151, v152, v283, &selRef_setCalendarIdentifier_);
          }

          (*v144)(v150, v153);
          (*(v262 + 8))(v279, v266);
          goto LABEL_48;
        }

        (*(v136 + 8))(v138, v135);
      }

      v149 = v284;
LABEL_48:
      sub_1B1121CDC();
      v154 = v263;
      sub_1B112185C();

      if (__swift_getEnumTagSinglePayload(v154, 1, v149) == 1)
      {
        v155 = 0;
      }

      else
      {
        v155 = sub_1B112182C();
        (*(v281 + 8))(v154, v149);
      }

      [v88 setUrl_];

      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_92;
  }

  sub_1B1121BAC();
  sub_1B1066864(0, &qword_1EDAD5558, 0x1E69CA138);
  v81 = sub_1B112205C();
  result = sub_1B1074800(v81, v82);
  if (result)
  {
    v83 = result;
    (*(v273 + 8))(v59, v55);
    [v283 setCompletionImage_];

    goto LABEL_9;
  }

LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1B1077EE0(uint64_t a1, int a2)
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

uint64_t sub_1B1077F00(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1EDAD5BB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDAD5BB8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B1077FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7399C0, &qword_1B1133BF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B107809C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B10780FC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1078150(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B1078190(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_15(char a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_19(void *a1)
{

  sub_1B108D578(a1, v1);
}

uint64_t sub_1B107823C()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EDAD64C0);
  __swift_project_value_buffer(v0, qword_1EDAD64C0);
  return sub_1B112294C();
}

uint64_t sub_1B10782B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B78, &qword_1B1133C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1078324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B78, &qword_1B1133C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ClientName.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientName.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientName();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ClientName.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientName();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B10784E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B10785A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1B1078A74(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B10785A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B10786A4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B1122FDC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B10786A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B10786F0(a1, a2);
  sub_1B1078808(&unk_1F2778668);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B10786F0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B1122B1C())
  {
    result = sub_1B10788EC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B1122F8C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B1122FDC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1078808(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1B107895C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B10788EC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B90, &qword_1B1133CC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1B107895C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B90, &qword_1B1133CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1B1078A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1B1078AD0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    sub_1B107A104();
    if (v5 <= 0x3F)
    {
      v9 = *(v4 - 8) + 64;
      v6 = sub_1B112194C();
      if (v7 <= 0x3F)
      {
        v10 = *(v6 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B1078C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B1122E4C();
  (*(a4 + 40))(a3, a4);

  return sub_1B112285C();
}

void sub_1B1078CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1B1122E4C();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_1B10AAFFC(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_1B1078D60()
{
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_1();
  return (*(*(v2 + 88) + 24))();
}

uint64_t sub_1B1078DB4()
{
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_1();
  return (*(*(v2 + 88) + 32))();
}

uint64_t sub_1B1078E08()
{
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 112);
  v3 = *(*(v2 + 88) + 40);
  OUTLINED_FUNCTION_1_1();
  return v5(*(v4 + 80));
}

uint64_t sub_1B1078E70()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - v5;
  OUTLINED_FUNCTION_1_1();
  (*(v8 + 16))(v6, v0 + *(v7 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BC8, &qword_1B1133E40);
  if (swift_dynamicCast())
  {
    sub_1B1068D4C(v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1B107A74C(v13, &unk_1EB739BD0, &qword_1B1133E48);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B1078FF0()
{
  v1 = sub_1B112194C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 16))(v5, v0 + *(v6 + 144), v1);
  sub_1B11218FC();
  return (*(v2 + 8))(v5, v1);
}

void *sub_1B1079150()
{
  OUTLINED_FUNCTION_0_1();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_1();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v8 + 112));
  OUTLINED_FUNCTION_2_1();

  OUTLINED_FUNCTION_2_1();
  sub_1B107A74C(v0 + *(v10 + 136), &unk_1EB739BB8, &qword_1B1133E38);
  OUTLINED_FUNCTION_2_1();
  v12 = *(v11 + 144);
  v13 = sub_1B112194C();
  OUTLINED_FUNCTION_6_0(v13);
  (*(v14 + 8))(v0 + v12);
  OUTLINED_FUNCTION_2_1();
  v16 = *(v0 + *(v15 + 152));

  return v0;
}

uint64_t sub_1B10792DC()
{
  sub_1B1079150();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B107936C(void (*a1)(void))
{
  OUTLINED_FUNCTION_2_1();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  sub_1B10793F4(v1, a1);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_1B10793F4(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_1B1079448();
  }

  return result;
}

uint64_t sub_1B1079448()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v50[-v9];
  v11 = *(v2 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v8);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50[-v17];
  v19 = *(v1 + 40);
  v60 = *(v1 + 24);
  v61 = v19;
  v62 = *(v1 + 56);
  v63 = *(v1 + 72);
  v20 = *(&v19 + 1);
  v54 = *(v2 + 88);
  v21 = type metadata accessor for ActivitySpan.ActivityData();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v53 = v21;
  v23(v55, &v60);
  sub_1B10799E4(v20);
  if ((BYTE1(v61) & 1) == 0)
  {
    v24 = v62;
    if (v62)
    {
      v52 = *(&v60 + 1);
      v25 = v60;
      v51 = v61;
      OUTLINED_FUNCTION_3_1();
      (*(v12 + 16))(v18, v1 + *(v26 + 112), v11);
      OUTLINED_FUNCTION_3_1();
      v28 = *(v27 + 136);
      swift_beginAccess();
      sub_1B107A654(v1 + v28, v10);
      v29 = sub_1B11228AC();
      result = __swift_getEnumTagSinglePayload(v10, 1, v29);
      if (result != 1)
      {
        v31 = v10;
        OUTLINED_FUNCTION_3_1();
        v33 = *(v1 + *(v32 + 128));

        sub_1B1078CA0(v31, v33, v25, v52, v51, v24, v11, v54);

        (*(v12 + 8))(v18, v11);
        OUTLINED_FUNCTION_6_0(v29);
        (*(v34 + 8))(v31, v29);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_3_1();
  (*(v12 + 16))(v16, v1 + *(v35 + 112), v11);
  OUTLINED_FUNCTION_3_1();
  v37 = *(v36 + 136);
  swift_beginAccess();
  sub_1B107A654(v1 + v37, v7);
  v38 = sub_1B11228AC();
  result = __swift_getEnumTagSinglePayload(v7, 1, v38);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_1();
  sub_1B1078C10(v7, *(v1 + *(v39 + 128)), v11, v54);
  (*(v12 + 8))(v16, v11);
  OUTLINED_FUNCTION_6_0(v38);
  (*(v40 + 8))(v7, v38);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan();
    sub_1B10A45F4(v1, v42, v43, &off_1F27784B0);
    v58 = 0uLL;
    v59 = 0;
    *&v57[6] = 0;
    *&v57[14] = 0;

    v44 = *(v22 + 8);
    v45 = v53;
    v44(&v60, v53);
    v46 = *(v1 + 40);
    v55[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v55[1] = v46;
    v55[2] = v47;
    v56 = *(v1 + 72);
    *(v1 + 24) = v58;
    *(v1 + 40) = v59;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v57;
    v48 = MEMORY[0x1E69E7CC0];
    *(v1 + 56) = *&v57[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v55, v45);
    OUTLINED_FUNCTION_3_1();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1B1078E70())
    {
      sub_1B1122DEC();
      sub_1B112282C();
    }

    return (*(v22 + 8))(&v60, v53);
  }
}

void sub_1B10799E4(uint64_t a1)
{
  if (sub_1B107A364(a1))
  {
    OUTLINED_FUNCTION_2_1();
    v3 = *(v1 + *(v2 + 128));
    sub_1B1122DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B1133CF0;
    v5 = sub_1B1078DB4();
    v7 = v6;
    v8 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1B106EAF4();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_1B107A6C4();
    OUTLINED_FUNCTION_7_1();
    v10 = sub_1B11229FC();
    *(v4 + 96) = v8;
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
    OUTLINED_FUNCTION_5_2();
    sub_1B112282C();

    sub_1B1078D60();
    v12 = sub_1B1078DB4();
    v14 = v13;

    MEMORY[0x1B272DAD0](46, 0xE100000000000000);
    MEMORY[0x1B272DAD0](v12, v14);

    v15 = sub_1B1122A4C();

    OUTLINED_FUNCTION_7_1();
    v16 = sub_1B11229DC();
    AnalyticsSendEvent();
  }
}

uint64_t sub_1B1079BBC()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_1();
  v3 = *(v0 + *(v2 + 152));
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for ActivitySpan.ActivityData();

  v36 = v7;
  sub_1B10AAF94(sub_1B107A35C);

  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v8 = *(v1 + *(*v1 + 128));
  sub_1B1122DDC();
  sub_1B112282C();
  sub_1B1122DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B1133D00;
  sub_1B1078E08();
  v10 = sub_1B1122FAC();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1B106EAF4();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = sub_1B1078DB4();
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = v15;
  *(v9 + 80) = v16;
  v17 = sub_1B1078D60();
  *(v9 + 136) = v13;
  *(v9 + 144) = v14;
  v37 = v14;
  *(v9 + 112) = v17;
  *(v9 + 120) = v18;
  sub_1B112282C();

  if ((BYTE1(v43) & 1) == 0)
  {
    sub_1B1122DDC();
    v19 = OUTLINED_FUNCTION_4_0();
    *(v19 + 16) = xmmword_1B1133BA0;
    v20 = sub_1B1122FAC();
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v14;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    OUTLINED_FUNCTION_5_2();
    sub_1B112282C();

    v22 = v44;
    if (v44)
    {

      sub_1B1122DDC();
      v23 = OUTLINED_FUNCTION_4_0();
      *(v23 + 16) = xmmword_1B1133BA0;
      *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BA8, &qword_1B1133E30);
      *(v23 + 64) = sub_1B107A60C(&qword_1EB739BB0, &qword_1EB739BA8, &qword_1B1133E30);
      *(v23 + 32) = v22;
      OUTLINED_FUNCTION_5_2();
      sub_1B112282C();
    }
  }

  v24 = *(&v43 + 1);
  if (*(&v43 + 1))
  {

    sub_1B1122DDC();
    v25 = OUTLINED_FUNCTION_4_0();
    *(v25 + 16) = xmmword_1B1133BA0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739B98, &qword_1B1133E28);
    *(v25 + 64) = sub_1B107A60C(&qword_1EB739BA0, &qword_1EB739B98, &qword_1B1133E28);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_5_2();
    sub_1B112282C();
  }

  v26 = *(&v44 + 1);
  result = sub_1B1099EF8(*(&v44 + 1));
  v28 = v36;
  if (result)
  {
    v29 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B272DFA0](v30, v26);
      }

      else
      {
        v31 = *(v26 + 8 * v30 + 32);
        swift_unknownObjectRetain();
      }

      ++v30;
      sub_1B1122DDC();
      v32 = OUTLINED_FUNCTION_4_0();
      *(v32 + 16) = xmmword_1B1133BA0;
      swift_unknownObjectRetain();
      v33 = sub_1B1122A7C();
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = v37;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_1B112282C();
      swift_unknownObjectRelease();
    }

    while (v29 != v30);

    v28 = v36;
  }

  sub_1B1122DDC();
  OUTLINED_FUNCTION_5_2();
  sub_1B112282C();
  if (sub_1B1078E70())
  {
    sub_1B1122DEC();
    OUTLINED_FUNCTION_5_2();
    sub_1B112282C();
  }

  OUTLINED_FUNCTION_6_0(v28);
  return (*(v35 + 8))(&v42, v28);
}

void sub_1B107A104()
{
  if (!qword_1EDAD5590)
  {
    sub_1B11228AC();
    v0 = sub_1B1122EDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAD5590);
    }
  }
}

uint64_t sub_1B107A15C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B107A1B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1B107A1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B107A258@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v11[0] = *(a1 + 3);
  v11[1] = v3;
  v12 = *(a1 + 7);
  v4 = v12;
  v13 = a1[9];
  v5 = v13;
  *a2 = v11[0];
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = type metadata accessor for ActivitySpan.ActivityData();
  return (*(*(v8 - 8) + 16))(v10, v11, v8);
}

uint64_t sub_1B107A364(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  (*(v8 + 16))(&v32 - v11, v2 + *(v13 + 112), v7);
  DynamicType = swift_getDynamicType();
  (*(v8 + 8))(v12, v7);
  v16 = dynamic_cast_existential_1_conditional(DynamicType);
  result = 0;
  if (v16)
  {
    if (a1)
    {
      v18 = v15;
      v19 = *(v15 + 16);

      v20 = v19(v16, v18);
      v22 = v21;
      v23 = *(*(v5 + 88) + 16);
      sub_1B1122B5C();
      v24 = sub_1B1122EFC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = a1;
      sub_1B107FC64(v24, v20, v22, isUniquelyReferenced_nonNull_native);

      v26 = v32;
      v27 = (*(v18 + 8))(v16, v18);
      v29 = v28;
      sub_1B1078FF0();
      v30 = sub_1B1122CBC();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v33 = v26;
      sub_1B107FC64(v30, v27, v29, v31);

      return v33;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B107A60C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B107A654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B107A6C4()
{
  result = qword_1EDAD5D40;
  if (!qword_1EDAD5D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAD5D40);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B107A74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1B107A7B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BE0, &qword_1B1133E50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_1B1121F2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v35 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v26 - v10;
  v11 = sub_1B112180C();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1122E7C();
  v15 = sub_1B107B470(&qword_1EDAD5540, MEMORY[0x1E6968EB0]);
  v31 = v6;
  v16 = (v6 + 32);
  v17 = MEMORY[0x1E69E7CC0];
  v30 = v11;
  v28 = v15;
  while (1)
  {
    sub_1B1122EEC();
    if (!v34)
    {
      (*(v27 + 8))(v14, v11);
      return v17;
    }

    sub_1B107B4B8(&v33, v32);
    sub_1B107AD28(v32, v4);
    if (v0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_1B107809C(v4, &qword_1EB739BE0, &qword_1B1133E50);
    }

    else
    {
      v18 = v14;
      v19 = *v16;
      v20 = v29;
      (*v16)(v29, v4, v5);
      v19(v35, v20, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B10A2370(0, *(v17 + 16) + 1, 1, v17);
        v17 = v23;
      }

      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B10A2370(v21 > 1, v22 + 1, 1, v17);
        v17 = v24;
      }

      *(v17 + 16) = v22 + 1;
      v19((v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22), v35, v5);
      v11 = v30;
      v14 = v18;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  (*(v27 + 8))(v14, v11);

  return v17;
}

id CoreParsec_fakeEntityData(void *a1)
{
  v2 = a1;
  v3 = sub_1B107ABB0(a1);

  return v3;
}

uint64_t sub_1B107ABB0(uint64_t a1)
{
  v2 = sub_1B1121F6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1121F5C();
  if (a1)
  {
    sub_1B107A7B4();
  }

  sub_1B1121F4C();
  v7 = *(sub_1B1121F3C() + 16);

  if (v7)
  {
    sub_1B107B470(&qword_1EDAD5538, MEMORY[0x1E69BCEB0]);
    v8 = sub_1B112281C();
    v10 = v9;
    v11 = sub_1B11218AC();
    sub_1B106C204(v8, v10);
  }

  else
  {
    v11 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_1B107AD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BE8, &qword_1B1133E58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v48 - v7;
  v9 = sub_1B1121EFC();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - v15;
  v17 = sub_1B1121F2C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1078A74(a1, &v63);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739BF0, &qword_1B1133E60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v17);
  }

  v22 = v61;
  v57 = v21;
  sub_1B1121F1C();
  sub_1B10A779C(1701667182, 0xE400000000000000, v22, &v63);
  v54 = v2;
  if (v64)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1B107809C(&v63, &qword_1EB739BF8, &qword_1B1133E68);
  }

  sub_1B1121EBC();
  sub_1B10A779C(0xD000000000000010, 0x80000001B11357D0, v22, &v63);
  if (v64)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1B107809C(&v63, &qword_1EB739BF8, &qword_1B1133E68);
  }

  sub_1B1121EAC();
  sub_1B10A779C(0x736369706F74, 0xE600000000000000, v22, &v63);

  v52 = v17;
  v53 = a2;
  v50 = v16;
  v51 = v18;
  if (!v64)
  {
    result = sub_1B107809C(&v63, &qword_1EB739BF8, &qword_1B1133E68);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C00, &qword_1B1133E70);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v24 = v61;
LABEL_14:
  v25 = 0;
  v26 = *(v24 + 16);
  v27 = (v56 + 32);
  v28 = v24 + 32;
  v58 = MEMORY[0x1E69E7CC0];
  v49 = v24 + 32;
LABEL_15:
  for (i = v28 + 32 * v25; ; i += 32)
  {
    if (v26 == v25)
    {

      v44 = v57;
      sub_1B1121F0C();
      v45 = v53;
      v46 = v44;
      v47 = v52;
      (*(v51 + 32))(v53, v46, v52);
      return __swift_storeEnumTagSinglePayload(v45, 0, 1, v47);
    }

    if (v25 >= *(v24 + 16))
    {
      break;
    }

    sub_1B1078A74(i, &v63);
    sub_1B1078A74(&v63, &v61);
    if (swift_dynamicCast())
    {
      v30 = v60;
      sub_1B1121EEC();
      if (v30[2])
      {
        v31 = sub_1B10A429C(0x696669746E656469, 0xEA00000000007265);
        if (v32)
        {
          sub_1B1078A74(v30[7] + 32 * v31, &v61);
          swift_dynamicCast();
        }
      }

      sub_1B1121ECC();
      if (v30[2] && (v34 = sub_1B10A429C(0x65726F6373, 0xE500000000000000), (v35 & 1) != 0))
      {
        sub_1B1078A74(v30[7] + 32 * v34, &v61);
      }

      else
      {
        v61 = 0u;
        v62 = 0u;
      }

      if (*(&v62 + 1))
      {
        sub_1B107B4C8();
        if (swift_dynamicCast())
        {
          v36 = v60;
          [v60 floatValue];
          sub_1B1121EDC();
        }
      }

      else
      {
        sub_1B107809C(&v61, &qword_1EB739BF8, &qword_1B1133E68);
      }

      (*v27)(v8, v65, v9);
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v33, 1, v9);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      v37 = *v27;
      v38 = v50;
      (*v27)(v50, v8, v9);
      v37(v55, v38, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B10A24AC(0, *(v58 + 16) + 1, 1, v58);
        v58 = v42;
      }

      v40 = *(v58 + 16);
      v39 = *(v58 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B10A24AC(v39 > 1, v40 + 1, 1, v58);
        v58 = v43;
      }

      ++v25;
      v41 = v58;
      *(v58 + 16) = v40 + 1;
      result = (v37)(v41 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v40, v55, v9);
      v28 = v49;
      goto LABEL_15;
    }

    result = sub_1B107809C(v8, &qword_1EB739BE8, &qword_1B1133E58);
    ++v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B107B470(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_1B107B4B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1B107B4C8()
{
  result = qword_1EDAD5B00[0];
  if (!qword_1EDAD5B00[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDAD5B00);
  }

  return result;
}

unint64_t sub_1B107B50C(uint64_t a1)
{
  if (a1 == 1)
  {
    v4[3] = &type metadata for ParsecFeatureFlag;
    v4[4] = sub_1B107B58C();
    LOBYTE(v4[0]) = 6;
    v2 = sub_1B112257C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    if (v2)
    {
      return sub_1B107B5E0();
    }
  }

  [v1 responseClass];
  return swift_getObjCClassMetadata();
}

unint64_t sub_1B107B58C()
{
  result = qword_1EB739600;
  if (!qword_1EB739600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739600);
  }

  return result;
}

unint64_t sub_1B107B5E0()
{
  result = qword_1EB739568;
  if (!qword_1EB739568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB739568);
  }

  return result;
}

uint64_t URLComponents.embeddedAMPURL()@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7399B0, &qword_1B1133BE8) - 8) + 64);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C08, &qword_1B1133E78) - 8) + 64);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C10, &qword_1B1133E80);
  OUTLINED_FUNCTION_0(v44);
  v42 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C18, &qword_1B1133E88);
  OUTLINED_FUNCTION_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C20, &qword_1B1133E90);
  sub_1B107A60C(&qword_1EB739C28, &qword_1EB739C18, &qword_1B1133E88);
  sub_1B11226CC();
  sub_1B112179C();
  sub_1B11226EC();
  v19 = v42;
  v41 = v4;

  if (__swift_getEnumTagSinglePayload(v8, 1, v44) == 1)
  {
    v20 = OUTLINED_FUNCTION_0_2();
    v21(v20);
    sub_1B107809C(v8, &qword_1EB739C08, &qword_1B1133E78);
    v22 = sub_1B11217DC();
    v23 = v43;
    v24 = 1;
  }

  else
  {
    v26 = v19;
    (*(v19 + 32))(v14, v8, v44);
    v49 = 0;
    v50 = 0xE000000000000000;
    v27 = sub_1B11217AC();
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v27 = 1886680168;
      v29 = 0xE400000000000000;
    }

    MEMORY[0x1B272DAD0](v27, v29);

    MEMORY[0x1B272DAD0](3092282, 0xE300000000000000);
    sub_1B112270C();

    v30 = MEMORY[0x1B272DA90](v45, v46, v47, v48);
    v32 = v31;

    MEMORY[0x1B272DAD0](v30, v32);

    v33 = v41;
    sub_1B11217BC();

    v34 = sub_1B11217DC();
    if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
    {
      (*(v26 + 8))(v14, v44);
      v35 = OUTLINED_FUNCTION_0_2();
      v36(v35);
      sub_1B107809C(v33, &unk_1EB7399B0, &qword_1B1133BE8);
      v23 = v43;
      v24 = 1;
    }

    else
    {
      v37 = v43;
      (*(*(v34 - 8) + 32))(v43, v33, v34);
      sub_1B112177C();
      sub_1B112178C();
      (*(v26 + 8))(v14, v44);
      v38 = OUTLINED_FUNCTION_0_2();
      v39(v38);
      v23 = v37;
      v24 = 0;
    }

    v22 = v34;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
}

uint64_t sub_1B107BB00@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C18, &qword_1B1133E88);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v88 = &v78 - v3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C30, &qword_1B1133E98);
  v106 = *(v100 - 8);
  v4 = *(v106 + 64);
  v5 = MEMORY[0x1EEE9AC00](v100);
  v87 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v107 = *(v8 - 8);
  v9 = *(v107 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v90 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v78 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v98 = &v78 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v82 = sub_1B112267C();
  v21 = *(v82 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C40, &qword_1B1133EA8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v78 - v27;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C48, &qword_1B1133EB0);
  v108 = *(v104 - 8);
  v29 = *(v108 + 64);
  v30 = MEMORY[0x1EEE9AC00](v104);
  v83 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v102 = &v78 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v105 = &v78 - v34;
  v35 = sub_1B11225FC();
  v96 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v97 = &v78 - v41;
  sub_1B11225EC();
  v84 = sub_1B107D380(&qword_1EB739C50, MEMORY[0x1E69E8268]);
  MEMORY[0x1B272D570](v40, v35, v84);
  v42 = *(v36 + 8);
  v85 = v36 + 8;
  v86 = v42;
  v42(v40, v35);
  v43 = sub_1B11226AC();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v43);
  sub_1B11225BC();
  v101 = v18;
  sub_1B107C5D8();
  v93 = sub_1B107A60C(&qword_1EDAD5598, &qword_1EB739C38, &qword_1B1133EA0);
  v44 = MEMORY[0x1E69E67B0];
  v45 = v20;
  v81 = v8;
  sub_1B112266C();
  v94 = *(v107 + 8);
  v107 += 8;
  v94(v18, v8);
  v46 = *(v21 + 8);
  v92 = v21 + 8;
  v103 = v46;
  v47 = v82;
  v46(v24, v82);
  sub_1B107809C(v28, &qword_1EB739C40, &qword_1B1133EA8);
  v48 = v102;
  v49 = v45;
  MEMORY[0x1B272D590](v45, v44);
  v79 = sub_1B107A60C(&qword_1EB739C58, &qword_1EB739C48, &qword_1B1133EB0);
  v50 = v104;
  MEMORY[0x1B272D570](v48, v104, v79);
  v95 = *(v108 + 8);
  v108 += 8;
  v95(v48, v50);
  v109[0] = 795897185;
  v109[1] = 0xE400000000000000;
  v51 = sub_1B107C65C();
  MEMORY[0x1B272D570](v110, v109, MEMORY[0x1E69E6158], v51);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v43);
  sub_1B11225BC();
  v52 = v101;
  sub_1B107C6B0(v101);
  v53 = v81;
  sub_1B112266C();
  v54 = v94;
  v94(v52, v53);
  v55 = v47;
  v103(v24, v47);
  sub_1B107809C(v28, &qword_1EB739C40, &qword_1B1133EA8);
  v56 = v83;
  MEMORY[0x1B272D590](v49, MEMORY[0x1E69E67B0]);
  v57 = v56;
  v58 = v56;
  v59 = v104;
  MEMORY[0x1B272D570](v57, v104, v79);
  v95(v58, v59);
  sub_1B11225BC();
  sub_1B107CCC8(v49);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C20, &qword_1B1133E90);
  v61 = v88;
  v83 = v60;
  sub_1B112264C();
  v54(v49, v53);
  v62 = v103;
  v103(v24, v47);
  v63 = v87;
  MEMORY[0x1B272D5F0](v61, v60);
  v79 = sub_1B107A60C(&qword_1EB739C68, &qword_1EB739C30, &qword_1B1133E98);
  v64 = v89;
  v65 = v63;
  v66 = v63;
  v67 = v100;
  MEMORY[0x1B272D570](v65, v100, v79);
  v68 = *(v106 + 8);
  v106 += 8;
  v88 = v68;
  (v68)(v66, v67);
  v80 = v49;
  sub_1B112259C();
  sub_1B107CA48(v105, v101);
  v69 = v110[0];
  v70 = v110[1];
  sub_1B11225BC();
  sub_1B107D1CC(v69, v70, v98);

  v62(v24, v47);
  sub_1B107CA48(v102, v99);
  sub_1B11225BC();
  v71 = v90;
  sub_1B112263C();
  v72 = v64;
  v73 = v100;
  sub_1B112262C();
  v74 = v94;
  v94(v71, v53);
  v103(v24, v55);
  v74(v99, v53);
  v74(v98, v53);
  v74(v101, v53);
  v74(v80, v53);
  (v88)(v72, v73);
  v75 = v104;
  v76 = v95;
  v95(v102, v104);
  v76(v105, v75);
  return v86(v97, v96);
}

uint64_t sub_1B107C5D8()
{
  v2 = 47;
  v3 = 0xE100000000000000;
  v0 = sub_1B107C65C();
  MEMORY[0x1B272D570](v4, &v2, MEMORY[0x1E69E6158], v0);
  v2 = v4[0];
  v3 = v4[1];
  sub_1B112259C();
}

unint64_t sub_1B107C65C()
{
  result = qword_1EB739C60;
  if (!qword_1EB739C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739C60);
  }

  return result;
}

uint64_t sub_1B107C6B0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_1B112267C();
  v25 = *(v27 - 8);
  v1 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v24 - v6;
  v8 = sub_1B11225CC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C88, &qword_1B1133EC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  sub_1B112269C();
  sub_1B107D380(&qword_1EB739C78, MEMORY[0x1E69E8250]);
  sub_1B11225DC();
  v18 = sub_1B107A60C(&qword_1EB739C90, &qword_1EB739C88, &qword_1B1133EC0);
  MEMORY[0x1B272D570](v15, v10, v18);
  v19 = *(v11 + 8);
  v19(v15, v10);
  v28[0] = 47;
  v28[1] = 0xE100000000000000;
  v20 = sub_1B107C65C();
  MEMORY[0x1B272D570](v29, v28, MEMORY[0x1E69E6158], v20);
  sub_1B112259C();
  v21 = v29[0];
  v22 = v29[1];
  sub_1B11225BC();
  sub_1B107D1CC(v21, v22, v26);

  (*(v25 + 8))(v3, v27);
  (*(v4 + 8))(v7, v24);
  return (v19)(v17, v10);
}

uint64_t sub_1B107CA48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a1;
  v19 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v17 = sub_1B112267C();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B11225BC();
  sub_1B107A60C(&qword_1EDAD5598, &qword_1EB739C38, &qword_1B1133EA0);
  sub_1B112263C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C48, &qword_1B1133EB0);
  sub_1B107A60C(&qword_1EB739C58, &qword_1EB739C48, &qword_1B1133EB0);
  sub_1B112263C();
  sub_1B112262C();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v14(v9, v2);
  return (*(v10 + 8))(v13, v17);
}

uint64_t sub_1B107CCC8@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_1B11225CC();
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v38 - v14;
  v44 = sub_1B112267C();
  v42 = *(v44 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C40, &qword_1B1133EA8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C70, &qword_1B1133EB8);
  v40 = *(v21 - 8);
  v22 = *(v40 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v39 = &v38 - v26;
  v27 = sub_1B11226AC();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v27);
  sub_1B11225BC();
  sub_1B112268C();
  v28 = sub_1B107D380(&qword_1EB739C78, MEMORY[0x1E69E8250]);
  MEMORY[0x1B272D570](v5, v1, v28);
  v29 = *(v43 + 8);
  v29(v5, v1);
  sub_1B112259C();
  v29(v7, v1);
  sub_1B107A60C(&qword_1EDAD5598, &qword_1EB739C38, &qword_1B1133EA0);
  v30 = MEMORY[0x1E69E67B0];
  v31 = v41;
  v32 = v45;
  v33 = v38;
  sub_1B112265C();
  (*(v46 + 8))(v13, v32);
  (*(v42 + 8))(v33, v44);
  sub_1B107809C(v20, &qword_1EB739C40, &qword_1B1133EA8);
  MEMORY[0x1B272D600](v31, v30);
  v34 = sub_1B107A60C(&qword_1EB739C80, &qword_1EB739C70, &qword_1B1133EB8);
  v35 = v39;
  MEMORY[0x1B272D570](v25, v21, v34);
  v36 = *(v40 + 8);
  v36(v25, v21);
  sub_1B112259C();
  return (v36)(v35, v21);
}

uint64_t sub_1B107D1CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C38, &qword_1B1133EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v15[2] = a1;
  v15[3] = a2;
  sub_1B107A60C(&qword_1EDAD5598, &qword_1EB739C38, &qword_1B1133EA0);
  sub_1B112263C();
  sub_1B107C65C();
  sub_1B112263C();
  sub_1B112262C();
  v13 = *(v6 + 8);
  v13(v10, v5);
  return (v13)(v12, v5);
}

uint64_t sub_1B107D380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PARSafariSummarizationPrefetchResponse.init(reply:factory:data:)(void *a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v2 = sub_1B11227EC();
  v3 = OUTLINED_FUNCTION_17(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739C98, &qword_1B1133EC8);
  v7 = OUTLINED_FUNCTION_17(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = sub_1B112254C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v23 = OUTLINED_FUNCTION_2_2();
  sub_1B1070FD4(v23, v24);
  sub_1B11227DC();
  sub_1B107E4AC(&qword_1EB7395A0, MEMORY[0x1E69BD7D0]);
  OUTLINED_FUNCTION_2_2();
  sub_1B112280C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  (*(v15 + 32))(v22, v11, v12);
  swift_getObjectType();
  (*(v15 + 16))(v20, v22, v12);
  sub_1B107D6C4(v31, v32, v20);
  v26 = v25;
  v27 = OUTLINED_FUNCTION_2_2();
  sub_1B106C204(v27, v28);
  (*(v15 + 8))(v22, v12);
  swift_deallocPartialClassInstance();
  return v26;
}

void sub_1B107D6C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B112218C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v13 = (v12 - v11);
  v53 = sub_1B11221BC();
  v14 = OUTLINED_FUNCTION_0(v53);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v52 = v20 - v19;
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReply_];
  v22 = sub_1B112253C();
  v55 = MEMORY[0x1E69E7CC0];
  v49 = *(v22 + 16);
  if (v49)
  {
    v43 = a1;
    v44 = a3;
    v23 = 0;
    v24 = *(v16 + 80);
    OUTLINED_FUNCTION_4_1();
    v48 = v25 + v26;
    v47 = v16;
    v45 = (v16 + 8);
    v46 = v25;
    while (v23 < *(v25 + 16))
    {
      (*(v16 + 16))(v52, v48 + *(v16 + 72) * v23, v53);
      v51 = v23 + 1;
      v27 = [objc_allocWithZone(MEMORY[0x1E69CA108]) init];
      v28 = sub_1B112211C();
      v50 = v27;
      sub_1B1074A10(v28, v29, v27, &selRef_setHash_prefix_);
      v30 = sub_1B11221AC();
      v31 = 0;
      v32 = MEMORY[0x1E69E7CC0];
      v54 = MEMORY[0x1E69E7CC0];
      v33 = *(v30 + 16);
      while (v33 != v31)
      {
        if (v31 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v34 = *(v8 + 80);
        OUTLINED_FUNCTION_4_1();
        (*(v8 + 16))(v13, v30 + v35 + *(v8 + 72) * v31, v5);
        sub_1B107DAD4(v13);
        v36 = (*(v8 + 8))(v13, v5);
        MEMORY[0x1B272DB50](v36);
        v37 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37 >> 1)
        {
          OUTLINED_FUNCTION_6_1(v37);
          sub_1B1122BAC();
        }

        sub_1B1122BCC();
        v32 = v54;
        ++v31;
      }

      sub_1B1071898(v32, v50, &unk_1EB739580, 0x1E69CA110, &selRef_setHash_details_);
      v38 = (*v45)(v52, v53);
      MEMORY[0x1B272DB50](v38);
      v39 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39 >> 1)
      {
        OUTLINED_FUNCTION_6_1(v39);
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v23 = v51;
      v25 = v46;
      v16 = v47;
      if (v51 == v49)
      {
        v40 = v55;

        a3 = v44;
        a1 = v43;
        goto LABEL_15;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
LABEL_15:
    sub_1B1071898(v40, v21, &qword_1EB739578, 0x1E69CA108, &selRef_setHashBucketDetails_);

    swift_unknownObjectRelease();
    v41 = sub_1B112254C();
    OUTLINED_FUNCTION_5(v41);
    (*(v42 + 8))(a3);
  }
}

uint64_t sub_1B107DAD4(void *a1)
{
  v2 = sub_1B112214C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69CA110]) init];
  v8 = sub_1B112211C();
  sub_1B1074A10(v8, v9, v7, &selRef_setFull_hash_);
  [v7 setHas:sub_1B112212C() & 1 summary:?];
  v10 = sub_1B112217C();
  v20[0] = v7;
  [v7 setHas:v10 & 1 table:? of:? contents:?];
  v20[1] = a1;
  result = sub_1B112215C();
  v12 = result;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = *(result + 16);
  v20[2] = (v3 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v15 == v13)
    {

      v17 = v20[0];
      sub_1B1071898(v14, v20[0], qword_1EDAD5B00, 0x1E696AD98, &selRef_setSba_entity_types_);
      v18 = sub_1B112216C();
      sub_1B1074A10(v18, v19, v17, &selRef_setMatched_url_variant_);
      return v17;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    (*(v3 + 16))(v6, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v2);
    sub_1B1066864(0, qword_1EDAD5B00, 0x1E696AD98);
    sub_1B112213C();
    sub_1B1122E9C();
    v16 = (*(v3 + 8))(v6, v2);
    MEMORY[0x1B272DB50](v16);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B1122BAC();
    }

    result = sub_1B1122BCC();
    v14 = v21;
    ++v13;
  }

  __break(1u);
  return result;
}

id _sSo38PARSafariSummarizationPrefetchResponseC10CoreParsecE5reply7factory4dataABSgSo8PARReplyC_So16PARResultFactory_p10Foundation4DataVtcfC_0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1B11218AC();
  v10 = [v8 initWithReply:a1 factory:a2 data:v9];

  sub_1B106C204(a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

void PARSafariSummarizationSummarizeResponse.init(reply:factory:data:)(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  v98 = sub_1B1121DEC();
  v8 = OUTLINED_FUNCTION_0(v98);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_1B11224AC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v89 = v18;
  v90 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v93 = v22 - v21;
  v23 = sub_1B11227EC();
  v24 = OUTLINED_FUNCTION_17(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CA0, &unk_1B1133ED0);
  v28 = OUTLINED_FUNCTION_17(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v77 - v31;
  v33 = sub_1B112256C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v79 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2();
  v40 = v39 - v38;
  v92 = a1;
  v80 = [v97 initWithReply_];
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  sub_1B1070FD4(a3, a4);
  sub_1B11227DC();
  sub_1B107E4AC(&qword_1EB739598, MEMORY[0x1E69BDA00]);
  sub_1B112280C();
  v78 = a4;
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  v41 = v79;
  (*(v79 + 32))(v40, v32, v33);
  v42 = sub_1B112253C();
  *&v100 = MEMORY[0x1E69E7CC0];
  v88 = *(v42 + 16);
  if (v88)
  {
    v77 = v33;
    v43 = *(v89 + 80);
    OUTLINED_FUNCTION_4_1();
    v85 = v44 + v47;
    v84 = v45 + 16;
    v96 = v10 + 16;
    v48 = (v10 + 8);
    v83 = (v45 + 8);
    v97 = a2;
    v49 = v90;
    v82 = a3;
    v81 = v10;
    v86 = v44;
    v87 = v40;
    while (v46 < *(v44 + 16))
    {
      v50 = *(v45 + 72);
      v95 = v46;
      v51 = v93;
      (*(v45 + 16))(v93, v85 + v50 * v46, v49);
      v52 = objc_allocWithZone(PARSafariSummarizationSummaryCandidate);
      v53 = v92;
      v54 = [v52 initWithReply_];
      v55 = sub_1B112248C();
      sub_1B1074A10(v55, v56, v54, &selRef_setUrl_);
      v94 = v54;
      v57 = sub_1B112249C();
      v58 = MEMORY[0x1E69E7CC0];
      v99 = MEMORY[0x1E69E7CC0];
      v59 = *(v57 + 16);
      if (v59)
      {
        v60 = *(v10 + 80);
        OUTLINED_FUNCTION_4_1();
        v91 = v61;
        v63 = v61 + v62;
        v64 = *(v10 + 72);
        v65 = *(v10 + 16);
        do
        {
          v66 = v98;
          v65(v15, v63, v98);
          if (!sub_1B1074C20(v53, a2, v15))
          {
            [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
          }

          v67 = (*v48)(v15, v66);
          MEMORY[0x1B272DB50](v67);
          v68 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v68 >> 1)
          {
            OUTLINED_FUNCTION_6_1(v68);
            sub_1B1122BAC();
          }

          sub_1B1122BCC();
          v63 += v64;
          --v59;
          a2 = v97;
        }

        while (v59);
        v58 = v99;

        a3 = v82;
        v10 = v81;
        v51 = v93;
      }

      else
      {
      }

      v69 = a3;
      v70 = v94;
      sub_1B1071898(v58, v94, &qword_1EDAD5528, 0x1E69CA3E8, &selRef_setResults_);

      v49 = v90;
      v71 = (*v83)(v51, v90);
      MEMORY[0x1B272DB50](v71);
      v72 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v72 >> 1)
      {
        OUTLINED_FUNCTION_6_1(v72);
        sub_1B1122BAC();
      }

      v73 = v95 + 1;
      sub_1B1122BCC();
      v46 = v73;
      v45 = v89;
      v74 = v73 == v88;
      v44 = v86;
      v40 = v87;
      a3 = v69;
      if (v74)
      {
        v75 = v100;

        v76 = v78;
        v41 = v79;
        v33 = v77;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
    v76 = v78;
LABEL_19:
    sub_1B1071898(v75, v80, &qword_1EB739560, off_1E7AC5188, &selRef_setSummaryCandidates_);

    swift_unknownObjectRelease();
    sub_1B106C204(a3, v76);
    (*(v41 + 8))(v40, v33);
  }
}