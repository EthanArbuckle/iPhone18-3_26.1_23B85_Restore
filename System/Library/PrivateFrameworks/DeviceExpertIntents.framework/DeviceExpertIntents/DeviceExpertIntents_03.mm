uint64_t sub_1DA321BC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FE0, &unk_1DA3522B8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock - v7;
  OUTLINED_FUNCTION_61_0();
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v10 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v11 = [v10 InFocus];
  swift_unknownObjectRelease();
  v12 = sub_1DA34B900();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
  v19 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v20 = sub_1DA3220FC(v8, v6, a1, 0, 1);
  v21 = [v11 publisherWithOptions_];

  v33 = nullsub_1;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1DA321EA4;
  v32 = &block_descriptor_57;
  v22 = _Block_copy(&aBlock);
  v33 = sub_1DA323AF4;
  v34 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1DA321FA8;
  v32 = &block_descriptor_60;
  v23 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_87();
  v26 = [v24 v25];

  _Block_release(v23);
  _Block_release(v22);

  swift_beginAccess();
  v27 = *(v9 + 16);

  return v27;
}

void sub_1DA321EA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1DA321F0C(void *a1, uint64_t a2)
{
  if ([a1 eventBody])
  {
    v3 = swift_beginAccess();
    MEMORY[0x1DA74A6E0](v3);
    sub_1DA2FBF10(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1DA34CCB0();
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_1DA321FA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t ContextRetriever.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ContextRetriever.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_61_0();

  return swift_deallocClassInstance();
}

id sub_1DA322054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DA34CB30();

  v10 = sub_1DA34CB30();

  v11 = [v6 initWithIntent:a1 moduleIdentifier:v9 containerBundleIdentifier:v10 moduleSize:a6];

  return v11;
}

id sub_1DA3220FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1DA34B900();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1DA34B8F0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1DA34B8F0();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_1DA322238(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1DA322298(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA322390;

  return v7(a1);
}

uint64_t sub_1DA322390()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_1DA322474(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

void sub_1DA322498(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1DA32250C()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_84(v6);
  OUTLINED_FUNCTION_87();

  return sub_1DA31E7D0(v8, v9, v10, v11, v4, v3);
}

unint64_t sub_1DA3225B8()
{
  result = qword_1EE108FF8;
  if (!qword_1EE108FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE108FF8);
  }

  return result;
}

unint64_t sub_1DA3225FC(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_1DA322620(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA34CB40();

  return v3;
}

uint64_t sub_1DA322684(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DA34CB40();

  return v3;
}

uint64_t dispatch thunk of ContextRetriever.retrieveAppleAccountSignedIn()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 136);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveFamilySharingMember()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 144);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveFamilyOrganizer()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 152);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveFindMy()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 160);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveApplePaySetup()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 192);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveICloudBackup()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 200);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveFaceIDSetup()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 208);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveICloudPhotos()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 216);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedScreenRecordToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 240);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedBackgroundSoundsToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0 + 248);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedHearingLiveListenToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v8 = *(v0 + 256) + **(v0 + 256);
  v1 = *(*(v0 + 256) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedScreenMirroringToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v8 = *(v0 + 264) + **(v0 + 264);
  v1 = *(*(v0 + 264) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of ContextRetriever.retrieveAddedPortraitOrientationToControlCenter()()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v8 = *(v0 + 272) + **(v0 + 272);
  v1 = *(*(v0 + 272) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_12(v3);

  return v6(v5);
}

uint64_t dispatch thunk of ContextRetriever.retrieve(settingContextType:)()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(*v0 + 280);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_84(v4);

  return v8(v6);
}

uint64_t dispatch thunk of ContextRetriever.retrieve(settingContextString:)()
{
  OUTLINED_FUNCTION_2_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*v0 + 288);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_9(v9);
  *v10 = v11;
  v10[1] = sub_1DA323DD0;

  return v13(v6, v4, v2);
}

uint64_t dispatch thunk of ContextRetriever.retrieveMultiple(contextStrings:)()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_9();
  v6 = (*(v1 + 296) + **(v1 + 296));
  v2 = *(*(v1 + 296) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DA32392C;
  v4 = OUTLINED_FUNCTION_40_0();

  return v6(v4);
}

uint64_t sub_1DA32392C()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  OUTLINED_FUNCTION_22();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  OUTLINED_FUNCTION_60_0();

  return v7(v2);
}

uint64_t sub_1DA323A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FC8, &qword_1DA3522A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DA323AFC()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_9(v5);
  *v6 = v7;
  v6[1] = sub_1DA323DD0;
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_87();

  return sub_1DA31F350(v8, v9, v10, v11, v3);
}

uint64_t sub_1DA323BA8()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_9(v6);
  *v7 = v8;
  v7[1] = sub_1DA323DD0;
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_87();

  return sub_1DA31F7BC(v9, v10, v11, v12, v4, v5);
}

uint64_t sub_1DA323C5C()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v4[1] = sub_1DA323DD0;
  v6 = OUTLINED_FUNCTION_28_3();

  return v7(v6, v2, v1);
}

uint64_t sub_1DA323D04()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v4[1] = sub_1DA2E8A9C;
  v6 = OUTLINED_FUNCTION_28_3();

  return v7(v6, v2, v1);
}

void OUTLINED_FUNCTION_3_14()
{
  v4 = *(v3 - 80);
  *(v4 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  v5 = (*(v4 + 48) + 16 * v2);
  *v5 = v0;
  v5[1] = v1;
  v6 = *(v4 + 56) + 16 * v2;
}

unint64_t OUTLINED_FUNCTION_4_16@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *(a2 + 48);
  *(a1 + 16) = v18;
  v22 = (*(a18 + 80) + 32) & ~*(a18 + 80);
  *(v20 - 88) = a1;
  result = a1 + v22 + *(a18 + 72) * v19;
  v24 = *(a18 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, int a2)
{
  *(v3 + 96) = a2;
  *(v3 + 64) = *(v2 + 104);
  *(v3 + 72) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return a1 + v4;
}

uint64_t OUTLINED_FUNCTION_9_5@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  *a1 = v15;
  a1[1] = v14;
  v17 = *a14;
  return v16;
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_7()
{
  **(v0 + 152) = 2;
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 24);
  return v2;
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_26_3@<X0>(char a1@<W8>)
{
  **(v1 + 152) = a1;
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1)
{
  *(a1 + 8) = sub_1DA31ECD0;
  v2 = *(v1 + 496);
  v3 = *(v1 + 480);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_1DA34CFA0();
}

unint64_t OUTLINED_FUNCTION_33_2()
{
  *(v3 - 80) = v0;

  return sub_1DA30F7DC(v1, v2);
}

uint64_t OUTLINED_FUNCTION_34_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DA300D78(0xD00000000000001ALL, a1 | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_35_0()
{
  v1[12] = sub_1DA31B214;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

unint64_t OUTLINED_FUNCTION_43_0()
{
  v4 = *(v2 - 80);

  return sub_1DA30F7DC(v0, v1);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1DA300D78(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_68_0()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_70(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_71(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_73()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1)
{
  *(v1 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_1DA34C930();
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_77()
{

  sub_1DA2FC42C();
}

uint64_t OUTLINED_FUNCTION_86(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1DA32446C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1DA34C600();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA324568, 0, 0);
}

uint64_t sub_1DA324568()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[2];
  v5 = v0[3];

  sub_1DA34C5F0();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1DA324668;
  v9 = v0[4];
  v8 = v0[5];

  return sub_1DA308958();
}

uint64_t sub_1DA324668(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[5];
  if (v1)
  {
    sub_1DA324D04(v7);
    v8 = sub_1DA324848;
  }

  else
  {
    v4[11] = a1;
    sub_1DA324D04(v7);
    v8 = sub_1DA3247B0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DA3247B0()
{
  v1 = v0[11];
  v2 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1DA324848()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1DA3248D0(uint64_t a1, unint64_t a2, void *a3)
{

  if (sub_1DA308D10() == 11)
  {
    if (qword_1EE109058 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA34C8E0();
    __swift_project_value_buffer(v6, qword_1EE109060);

    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CDA0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1DA300D78(a1, a2, &v17);
      _os_log_impl(&dword_1DA2E0000, v7, v8, "Unrecognized body label dialogId for issueType %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1DA74B3A0](v10, -1, -1);
      MEMORY[0x1DA74B3A0](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6008, &qword_1DA352340);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = a3;
    sub_1DA34C650();
    v11 = sub_1DA34C660();
  }

  return v11;
}

uint64_t sub_1DA324AA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA324B34;

  return sub_1DA308FB0();
}

uint64_t sub_1DA324B34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DA324C80, 0, 0);
  }
}

uint64_t sub_1DA324C80()
{
  v1 = *(v0 + 24);
  v2 = sub_1DA34C660();
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_1DA324D04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA324D6C()
{
  v0 = sub_1DA34C8E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA34C860();
  __swift_allocate_value_buffer(v5, qword_1EE10E040);
  __swift_project_value_buffer(v5, qword_1EE10E040);
  if (qword_1EE109078 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EE109080);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1DA34C840();
}

uint64_t sub_1DA324EA8()
{
  OUTLINED_FUNCTION_16();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1DA34C830();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = type metadata accessor for ContextualRewriteResult();
  v1[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = sub_1DA34C910();
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA324FFC()
{
  v2 = v0[6];
  if (sub_1DA325C98())
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v3 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v3, qword_1EE109080);
    v4 = sub_1DA34C8C0();
    v5 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v5))
    {
      v6 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v6 = 136315138;
      *(v6 + 4) = OUTLINED_FUNCTION_21_3("invokeContextualRewrite(resolvedResult:)", v44, v46);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_6();
    }

    v12 = v0[4];
    v13 = v0[5];
    v14 = sub_1DA34BFB0();
    OUTLINED_FUNCTION_2_16(v14);
    (*(v15 + 16))(v12, v13);
    if (qword_1EE109470 != -1)
    {
      OUTLINED_FUNCTION_12_7();
    }

    v16 = v0[4] + *(v0[10] + 20);
    v17 = xmmword_1EE109478;
    v18 = xmmword_1EE109488;
    v19 = xmmword_1EE109498;
    *(v16 + 48) = byte_1EE1094A8;
    *(v16 + 16) = v18;
    *(v16 + 32) = v19;
    *v16 = v17;
    OUTLINED_FUNCTION_26_4();

    OUTLINED_FUNCTION_15();

    return v20();
  }

  else
  {
    v22 = static DeviceExpertPreferences.contextualTimeoutOverride.getter();
    if (v23)
    {
      v24 = 0;
      v25 = 6000000000000000000;
    }

    else
    {
      v26 = v22;
      if (qword_1EE109058 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v27 = sub_1DA34C8E0();
      OUTLINED_FUNCTION_12_4(v27, qword_1EE109060);
      v28 = sub_1DA34C8C0();
      v29 = sub_1DA34CD90();
      if (OUTLINED_FUNCTION_23_5(v29))
      {
        OUTLINED_FUNCTION_72();
        v48 = OUTLINED_FUNCTION_22_4();
        *v1 = 136315394;
        *(v1 + 4) = OUTLINED_FUNCTION_21_3("invokeContextualRewrite(resolvedResult:)", v44, v46);
        *(v1 + 12) = 2048;
        *(v1 + 14) = v26;
        OUTLINED_FUNCTION_19_6();
        _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v48);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_15_8();
      }

      v25 = sub_1DA325D68(v26);
      v24 = v35;
    }

    v0[16] = v25;
    v0[17] = v24;
    v36 = v0[15];
    sub_1DA34C900();
    if (qword_1EE109CF0 != -1)
    {
      swift_once();
    }

    v37 = v0[9];
    v38 = sub_1DA34C860();
    v45 = *(v0 + 5);
    __swift_project_value_buffer(v38, qword_1EE10E040);
    v39 = swift_task_alloc();
    v0[18] = v39;
    v39[1] = vextq_s8(v45, v45, 8uLL);
    v39[2].i64[0] = v25;
    v39[2].i64[1] = v24;
    sub_1DA34C820();
    OUTLINED_FUNCTION_28_4(&unk_1DA352378);
    OUTLINED_FUNCTION_47();
    v0[19] = v40;
    *v40 = v41;
    v40[1] = sub_1DA3253D8;
    v42 = v0[11];
    v43 = v0[9];

    return (v45.i64[0])(v42, "contextualRewrite", 17, 2, v43, &unk_1DA352370, v39);
  }
}

uint64_t sub_1DA3253D8()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  v6 = v5[19];
  v7 = v5[9];
  v8 = v5[8];
  v9 = v5[7];
  v10 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;
  *(v3 + 160) = v0;

  (*(v8 + 8))(v7, v9);
  if (!v0)
  {
    v12 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DA325540()
{
  v35 = v0;
  v4 = v0[14];
  v3 = v0[15];
  sub_1DA34C900();
  v5 = sub_1DA34C8F0();
  v6 = sub_1DA34C8F0();
  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v1 = (v5 - v6);
    v2 = 1000000000.0;
    if (qword_1EE109058 == -1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_1_0();
LABEL_3:
  v7 = v1 / v2;
  v8 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v8, qword_1EE109060);
  v9 = sub_1DA34C8C0();
  v10 = sub_1DA34CD90();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  if (v11)
  {
    v16 = OUTLINED_FUNCTION_72();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1DA300D78(0xD000000000000028, 0x80000001DA3565E0, &v34);
    *(v16 + 12) = 2048;
    *(v16 + 14) = v7;
    _os_log_impl(&dword_1DA2E0000, v9, v10, "%s - contextual rewrite took %f seconds", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v18 = *(v15 + 8);
  v18(v13, v14);
  v18(v12, v14);
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[4];
  v22 = sub_1DA34BFB0();
  OUTLINED_FUNCTION_2_16(v22);
  (*(v23 + 16))(v21, v19);
  v24 = v19 + *(v20 + 20);
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = *(v24 + 24);
  v28 = *(v24 + 32);
  v29 = *(v24 + 40);
  v30 = *(v24 + 48);
  result = sub_1DA327BB8(v19);
  if (v7 == INFINITY)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v32 = v0[4] + *(v20 + 20);
  *v32 = v25;
  *(v32 + 1) = v26;
  *(v32 + 8) = v7;
  *(v32 + 16) = 0;
  *(v32 + 24) = v27;
  *(v32 + 32) = v28;
  *(v32 + 40) = v29;
  *(v32 + 48) = v30;
  OUTLINED_FUNCTION_26_4();

  OUTLINED_FUNCTION_15();

  return v33();
}

uint64_t sub_1DA32580C()
{
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));

  *(v0 + 16) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
  if (swift_dynamicCast())
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v5, qword_1EE109060);
    v6 = sub_1DA34C8C0();
    v7 = sub_1DA34CDA0();
    if (OUTLINED_FUNCTION_23_5(v7))
    {
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      OUTLINED_FUNCTION_72();
      v10 = OUTLINED_FUNCTION_22_4();
      *v1 = 136315394;
      *(v1 + 4) = OUTLINED_FUNCTION_11_5("invokeContextualRewrite(resolvedResult:)", v10);
      *(v1 + 12) = 2050;
      *(v1 + 14) = sub_1DA34D260();
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_15_8();
    }

    v16 = *(v0 + 16);
LABEL_13:

    goto LABEL_19;
  }

  v17 = *(v0 + 160);

  *(v0 + 24) = v17;
  v18 = v17;
  if (swift_dynamicCast())
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v19 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v19, qword_1EE109060);
    v20 = sub_1DA34C8C0();
    v21 = sub_1DA34CDA0();
    if (OUTLINED_FUNCTION_23_5(v21))
    {
      swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_22_4();
      *v1 = 136315138;
      *(v1 + 4) = OUTLINED_FUNCTION_11_5("invokeContextualRewrite(resolvedResult:)", v22);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_15_8();
    }

    v16 = *(v0 + 24);
    goto LABEL_13;
  }

  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v28 = *(v0 + 160);
  v29 = sub_1DA34C8E0();
  OUTLINED_FUNCTION_12_4(v29, qword_1EE109060);
  v30 = v28;
  v31 = sub_1DA34C8C0();
  v32 = sub_1DA34CDA0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 160);
    v34 = OUTLINED_FUNCTION_72();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = OUTLINED_FUNCTION_11_5("invokeContextualRewrite(resolvedResult:)", v36);
    *(v34 + 12) = 2112;
    v37 = v33;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v38;
    *v35 = v38;
    _os_log_impl(&dword_1DA2E0000, v31, v32, "%s - unexpected error %@", v34, 0x16u);
    sub_1DA2E7E4C(v35, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_6();
  }

LABEL_19:
  v39 = *(v0 + 32);
  v40 = *(v0 + 40);
  v41 = sub_1DA34BFB0();
  OUTLINED_FUNCTION_2_16(v41);
  (*(v42 + 16))(v39, v40);
  if (qword_1EE109430 != -1)
  {
    OUTLINED_FUNCTION_0_18();
  }

  v43 = *(v0 + 80);
  v44 = *(v0 + 32);
  v48 = xmmword_1EE109438;
  v49 = xmmword_1EE109448;
  v50 = xmmword_1EE109458;
  v51 = byte_1EE109468;

  v45 = v44 + *(v43 + 20);
  *v45 = v48;
  *(v45 + 16) = v49;
  *(v45 + 32) = v50;
  *(v45 + 48) = v51;
  OUTLINED_FUNCTION_26_4();

  OUTLINED_FUNCTION_15();

  return v46();
}

uint64_t sub_1DA325C98()
{
  if (static DeviceExpertPreferences.shouldForceContextualRewriteInLowPowerMode.getter())
  {
    return 0;
  }

  if (qword_1EE109938 != -1)
  {
    swift_once();
  }

  sub_1DA31A8A4(&v2);
  if (v2 == 2)
  {
    return 0;
  }

  if (v2)
  {
    v1 = sub_1DA34D160();

    return v1 & 1;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1DA325D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA325DC0, 0, 0);
}

uint64_t sub_1DA325DC0()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = type metadata accessor for ContextualRewriteResult();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 64) = v6;
  *v6 = v7;
  v6[1] = sub_1DA325EB8;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v8, v3, v3, 0, 0, &unk_1DA352398, v4, v3);
}

uint64_t sub_1DA325EB8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_15();

    return v13();
  }
}

uint64_t sub_1DA325FD8()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_15();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1DA326034()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_9(v5);
  *v6 = v7;
  v6[1] = sub_1DA323DD0;
  v8 = OUTLINED_FUNCTION_5_13();

  return sub_1DA325D98(v8, v9, v10, v11, v3);
}

uint64_t sub_1DA3260D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6010, &unk_1DA3523A0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = sub_1DA34BFB0();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA326218, 0, 0);
}

uint64_t sub_1DA326218()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v17 = v0[6];
  v18 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v16 = v0[3];
  sub_1DA34CD30();
  OUTLINED_FUNCTION_29_5();
  (*(v4 + 16))(v2, v6, v5);
  v8 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v7;
  (*(v4 + 32))(&v9[v8], v2, v5);

  sub_1DA326C90(v1, &unk_1DA3523B8, v9);
  sub_1DA2E7E4C(v1, &qword_1ECBA5B98, &qword_1DA34F440);
  OUTLINED_FUNCTION_29_5();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v17;
  v10[5] = v18;
  sub_1DA326C90(v1, &unk_1DA3523C8, v10);
  sub_1DA2E7E4C(v1, &qword_1ECBA5B98, &qword_1DA34F440);
  v11 = *(MEMORY[0x1E69E8708] + 4);
  v12 = swift_task_alloc();
  v0[14] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6018, &qword_1DA3523D0);
  *v12 = v0;
  v12[1] = sub_1DA326428;
  v13 = v0[8];
  v14 = v0[3];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DAC8]();
}

uint64_t sub_1DA326428()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA326524()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[8];
  v2 = type metadata accessor for ContextualRewriteResult();
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[3];
    sub_1DA327E50(v1, v0[2]);
    v7 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5FB8, &unk_1DA352380);
    sub_1DA34CD50();

    OUTLINED_FUNCTION_15();

    return v8();
  }

  return result;
}

uint64_t sub_1DA32660C()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];

  OUTLINED_FUNCTION_15();
  v5 = v0[15];

  return v4();
}

uint64_t sub_1DA32667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1DA2E8A9C;

  return sub_1DA32671C(a1, a5);
}

uint64_t sub_1DA32671C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA326748()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 24);
  v2 = *(sub_1DA34BA80() + 16);

  if (v2)
  {
    if (qword_1EE109790 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE10E038;

    return MEMORY[0x1EEE6DFA0](sub_1DA326934, v3, 0);
  }

  else
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v4 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v4, qword_1EE109080);
    v5 = sub_1DA34C8C0();
    v6 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_6();
    }

    v13 = *(v0 + 16);
    v12 = *(v0 + 24);

    v14 = sub_1DA34BFB0();
    OUTLINED_FUNCTION_2_16(v14);
    (*(v15 + 16))(v13, v12);
    if (qword_1EE109470 != -1)
    {
      OUTLINED_FUNCTION_12_7();
    }

    v16 = *(v0 + 16);
    v17 = v16 + *(type metadata accessor for ContextualRewriteResult() + 20);
    v18 = byte_1EE1094A8;
    v20 = xmmword_1EE109488;
    v19 = xmmword_1EE109498;
    *v17 = xmmword_1EE109478;
    *(v17 + 16) = v20;
    *(v17 + 32) = v19;
    *(v17 + 48) = v18;
    OUTLINED_FUNCTION_15();

    return v21();
  }
}

uint64_t sub_1DA326934()
{
  OUTLINED_FUNCTION_16();
  *(v0 + 40) = sub_1DA310E4C() & 1;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA326998()
{
  OUTLINED_FUNCTION_59();
  if (*(v0 + 40) == 1)
  {
    if (qword_1EE109A28 != -1)
    {
      swift_once();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 32) = v1;
    *v1 = v2;
    v1[1] = sub_1DA326BB0;
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    return sub_1DA314F34();
  }

  else
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v6 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_12_4(v6, qword_1EE109080);
    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_6();
    }

    v15 = *(v0 + 16);
    v14 = *(v0 + 24);

    v16 = sub_1DA34BFB0();
    OUTLINED_FUNCTION_2_16(v16);
    (*(v17 + 16))(v15, v14);
    if (qword_1EE109430 != -1)
    {
      OUTLINED_FUNCTION_0_18();
    }

    v18 = *(v0 + 16);
    v19 = v18 + *(type metadata accessor for ContextualRewriteResult() + 20);
    v20 = byte_1EE109468;
    v22 = xmmword_1EE109448;
    v21 = xmmword_1EE109458;
    *v19 = xmmword_1EE109438;
    *(v19 + 16) = v22;
    *(v19 + 32) = v21;
    *(v19 + 48) = v20;
    OUTLINED_FUNCTION_15();

    return v23();
  }
}

uint64_t sub_1DA326BB0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_1DA326C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1DA302E18(a1, v20 - v9);
  v11 = sub_1DA34CD30();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1DA2E7E4C(v10, &qword_1ECBA5B98, &qword_1DA34F440);
  }

  else
  {
    sub_1DA34CD20();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1DA34CCF0();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  type metadata accessor for ContextualRewriteResult();
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1DA326E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1DA34CF80();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA326F0C, 0, 0);
}

uint64_t sub_1DA326F0C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[6];
  sub_1DA34D1B0();
  v2 = OUTLINED_FUNCTION_28_4(dword_1DA3523D8);
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DA326FB8;
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v4, 0, 0, 1);
}

uint64_t sub_1DA326FB8()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = v4[4];
  v9 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;
  *(v11 + 64) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA327110()
{
  OUTLINED_FUNCTION_59();
  sub_1DA327EB4();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_1DA327198()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_1DA3271F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = sub_1DA34C830();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3272C4, 0, 0);
}

uint64_t sub_1DA3272C4()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 72);
  v2 = sub_1DA34C850();
  v3 = sub_1DA34CDF0();
  result = sub_1DA34CE10();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1DA34C810();
        _os_signpost_emit_with_name_impl(&dword_1DA2E0000, v2, v3, v8, v5, "", v7, 2u);
        OUTLINED_FUNCTION_6();
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  v10 = sub_1DA34C8A0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_1DA34C890();
  v18 = (v9 + *v9);
  v13 = v9[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 112) = v14;
  *v14 = v15;
  v14[1] = sub_1DA3274C4;
  v16 = *(v0 + 64);
  v17 = *(v0 + 24);

  return v18(v17);
}

uint64_t sub_1DA3274C4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA3275C0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1DA327628()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 120);

  return v1();
}

uint64_t sub_1DA327690@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA327724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DA34CF70();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DA327824, 0, 0);
}

uint64_t sub_1DA327824()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1DA34CF80();
  v7 = sub_1DA327F08(&qword_1EE108FD0, MEMORY[0x1E69E8820]);
  sub_1DA34D190();
  sub_1DA327F08(&qword_1EE108FD8, MEMORY[0x1E69E87E8]);
  sub_1DA34CF90();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1DA3279B4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1DA3279B4()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_4_14();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    OUTLINED_FUNCTION_15();

    return v18();
  }
}

uint64_t sub_1DA327B54()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_15();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1DA327BB8(uint64_t a1)
{
  v2 = type metadata accessor for ContextualRewriteResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA327C14()
{
  OUTLINED_FUNCTION_2_6();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_9(v9);
  *v10 = v11;
  v10[1] = sub_1DA323DD0;

  return sub_1DA3260D8(v4, v2, v5, v6, v8, v7);
}

uint64_t sub_1DA327CD0()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(sub_1DA34BFB0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_9(v6);
  *v7 = v8;
  v7[1] = sub_1DA323DD0;
  v9 = OUTLINED_FUNCTION_5_13();

  return sub_1DA32667C(v9, v10, v11, v12, v13);
}

uint64_t sub_1DA327DAC()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_9(v5);
  *v6 = v7;
  v6[1] = sub_1DA2E8A9C;
  v8 = OUTLINED_FUNCTION_5_13();

  return sub_1DA326E4C(v8, v9, v10, v11, v3);
}

uint64_t sub_1DA327E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualRewriteResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA327EB4()
{
  result = qword_1EE109798[0];
  if (!qword_1EE109798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE109798);
  }

  return result;
}

uint64_t sub_1DA327F08(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for RewriteTimeoutError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA328000()
{
  result = qword_1ECBA6020;
  if (!qword_1ECBA6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6020);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_5@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1DA300D78(0xD000000000000028, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_8()
{

  JUMPOUT(0x1DA74B3A0);
}

uint64_t OUTLINED_FUNCTION_21_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1DA300D78(0xD000000000000028, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_23_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 128);

  return sub_1DA3386C0(v4, v5, v6, v7);
}

BOOL OUTLINED_FUNCTION_25_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26_4()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];
  v5 = v0[9];
}

uint64_t OUTLINED_FUNCTION_28_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t sub_1DA32820C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6040, &qword_1DA352558);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v32 - v4);
  v39 = type metadata accessor for AttributionItem();
  v6 = OUTLINED_FUNCTION_0(v39);
  v35 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v32 - v12;
  v13 = sub_1DA34BA40();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = *(a1 + 16);

  v23 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (v22 != v23)
  {
    (*(v16 + 16))(v20, v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v23, v13);
    sub_1DA328514(v5);
    (*(v16 + 8))(v20, v13);
    if (__swift_getEnumTagSinglePayload(v5, 1, v39) == 1)
    {
      sub_1DA2E7E4C(v5, &qword_1ECBA6040, &qword_1DA352558);
      ++v23;
    }

    else
    {
      sub_1DA2FC9FC(v5, v36);
      sub_1DA2FC9FC(v36, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v38 + 16);
        sub_1DA2FBF54();
        v38 = v29;
      }

      v24 = *(v38 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v38 + 24) >> 1)
      {
        v33 = *(v38 + 16);
        v34 = v24 + 1;
        sub_1DA2FBF54();
        v24 = v33;
        v25 = v34;
        v38 = v30;
      }

      ++v23;
      v26 = v37;
      v27 = v38;
      *(v38 + 16) = v25;
      sub_1DA2FC9FC(v26, v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24);
    }
  }

  return v38;
}

uint64_t sub_1DA328514@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DA34BC60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA34BD00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  sub_1DA34BA30();
  v19 = sub_1DA34BA20();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
  {
    v28 = a1;
    sub_1DA3094C0(v18, v16, &qword_1ECBA5818, &unk_1DA352560);
    v25 = *(v19 - 8);
    v26 = (*(v25 + 88))(v16, v19);
    if (v26 == *MEMORY[0x1E69BCCC0])
    {
      (*(v25 + 96))(v16, v19);
      (*(v3 + 32))(v6, v16, v2);
      sub_1DA329108(v28);
      (*(v3 + 8))(v6, v2);
      return sub_1DA2E7E4C(v18, &qword_1ECBA5818, &unk_1DA352560);
    }

    if (v26 == *MEMORY[0x1E69BCCC8])
    {
      (*(v25 + 96))(v16, v19);
      (*(v8 + 32))(v11, v16, v7);
      sub_1DA3289CC(v11, v28);
      (*(v8 + 8))(v11, v7);
      return sub_1DA2E7E4C(v18, &qword_1ECBA5818, &unk_1DA352560);
    }

    (*(v25 + 8))(v16, v19);
    a1 = v28;
  }

  if (qword_1EE109058 != -1)
  {
    swift_once();
  }

  v20 = sub_1DA34C8E0();
  __swift_project_value_buffer(v20, qword_1EE109060);
  v21 = sub_1DA34C8C0();
  v22 = sub_1DA34CDA0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DA2E0000, v21, v22, "Unrecognized attribution type", v23, 2u);
    MEMORY[0x1DA74B3A0](v23, -1, -1);
  }

  v24 = type metadata accessor for AttributionItem();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v24);
  return sub_1DA2E7E4C(v18, &qword_1ECBA5818, &unk_1DA352560);
}

uint64_t *sub_1DA328944()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t sub_1DA328974()
{
  sub_1DA328944();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA3289CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a1;
  v78 = a2;
  v3 = sub_1DA34C080();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = &v61 - v8;
  v76 = sub_1DA34C0C0();
  v74 = *(v76 - 8);
  v9 = *(v74 + 64);
  v10 = MEMORY[0x1EEE9AC00](v76);
  v70 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6048, &unk_1DA352570);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v61 - v17;
  v19 = sub_1DA34B970();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = sub_1DA34B7F0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DA34CB20();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = sub_1DA34B830();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v2 + 64);
  sub_1DA34CB10();
  if (qword_1ECBA5790 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v21, qword_1ECBAD2A0);
  (*(v22 + 16))(v25, v34, v21);
  sub_1DA34B960();
  sub_1DA34B840();
  v35 = sub_1DA2F13AC(v32);
  v66 = v36;
  v67 = v35;
  (*(v29 + 8))(v32, v28);
  v37 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
  v64 = v38;
  v65 = v37;
  sub_1DA34BC40();
  sub_1DA34B660();

  v39 = sub_1DA34B680();
  if (__swift_getEnumTagSinglePayload(v18, 1, v39) == 1)
  {
    sub_1DA2E7E4C(v18, &qword_1ECBA6048, &unk_1DA352570);
  }

  else
  {
    v40 = sub_1DA34B650();
    v42 = v41;
    (*(*(v39 - 8) + 8))(v18, v39);
    if (v42)
    {
      v62 = v42;
      goto LABEL_8;
    }
  }

  v40 = 0;
  v62 = 0xE000000000000000;
LABEL_8:
  v63 = v40;
  v61 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
  v44 = v43;
  if (qword_1ECBA5798 != -1)
  {
    swift_once();
  }

  v45 = sub_1DA34B8C0();
  __swift_project_value_buffer(v45, qword_1ECBA6028);
  v46 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v45);
  v47 = v69;
  sub_1DA34C0A0();
  sub_1DA2E7E4C(v46, &qword_1ECBA59B0, &qword_1DA34EA70);
  v48 = v71;
  sub_1DA34C070();
  v49 = v70;
  sub_1DA34C090();
  (*(v72 + 8))(v48, v73);
  v50 = v75;
  sub_1DA34C060();
  v51 = v74;
  v52 = *(v74 + 8);
  v53 = v76;
  v52(v49, v76);
  v52(v47, v53);
  sub_1DA34BC40();
  sub_1DA34B8B0();

  v54 = v78;
  *v78 = v61;
  v54[1] = v44;
  v55 = v66;
  v54[2] = v67;
  v54[3] = v55;
  v56 = v64;
  v54[4] = v65;
  v54[5] = v56;
  v57 = v62;
  v54[6] = v63;
  v54[7] = v57;
  v58 = type metadata accessor for AttributionItem();
  (*(v51 + 16))(v54 + *(v58 + 32), v50, v53);
  sub_1DA2FA2E0(v46);
  v59 = *(v58 + 36);
  sub_1DA2FCA60();
  sub_1DA34C010();
  sub_1DA2E7E4C(v46, &qword_1ECBA59B0, &qword_1DA34EA70);
  v52(v50, v53);
  return __swift_storeEnumTagSinglePayload(v54, 0, 1, v58);
}

uint64_t sub_1DA329108@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v72 = sub_1DA34C080();
  v70 = *(v72 - 8);
  v2 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6048, &unk_1DA352570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v66 - v15;
  v16 = sub_1DA34C0C0();
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v73 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v66 - v22;
  v23 = v1;
  v24 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v25 = _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
  v26 = *v24;
  v28 = sub_1DA2E6FFC(v25, v27);

  sub_1DA34BB50();
  sub_1DA34B660();

  v29 = sub_1DA34B680();
  if (__swift_getEnumTagSinglePayload(v7, 1, v29) == 1)
  {
    sub_1DA2E7E4C(v7, &qword_1ECBA6048, &unk_1DA352570);
    if (!v28)
    {
LABEL_3:

      v30 = v76;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1DA34B670();
    (*(*(v29 - 8) + 8))(v7, v29);
    if (!v28)
    {
      goto LABEL_3;
    }
  }

  v67 = v16;
  v31 = __swift_project_boxed_opaque_existential_1((v23 + 16), *(v23 + 40));
  _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
  sub_1DA34BC40();
  v32 = *v31;
  v33 = v68;
  sub_1DA2E72E4();

  v34 = sub_1DA34B8C0();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
  {
    v42 = v23;
    v43 = v76;
    (*(*(v34 - 8) + 32))(v76, v33, v34);
    v44 = __swift_project_boxed_opaque_existential_1((v42 + 16), *(v42 + 40));
    v45 = *(*v44 + 24);
    v46 = *(*v44 + 32);

    sub_1DA34C0B0();
    v30 = v43;

    __swift_storeEnumTagSinglePayload(v43, 0, 1, v34);
    v41 = v12;
    v16 = v67;
    v36 = v73;
    v35 = v74;
    goto LABEL_11;
  }

  sub_1DA2E7E4C(v33, &qword_1ECBA59B0, &qword_1DA34EA70);
  v30 = v76;
  v16 = v67;
LABEL_7:
  v36 = v73;
  v35 = v74;
  if (qword_1ECBA5798 != -1)
  {
    swift_once();
  }

  v37 = sub_1DA34B8C0();
  __swift_project_value_buffer(v37, qword_1ECBA6028);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v37);
  sub_1DA34C0A0();
  sub_1DA2E7E4C(v12, &qword_1ECBA59B0, &qword_1DA34EA70);
  v38 = v71;
  sub_1DA34C070();
  v39 = v69;
  sub_1DA34C090();
  (*(v70 + 8))(v38, v72);
  sub_1DA34C060();
  v40 = *(v35 + 8);
  v40(v39, v16);
  v40(v36, v16);
  sub_1DA34BB50();
  sub_1DA34B8B0();

  v41 = v12;
LABEL_11:
  v47 = sub_1DA34BC40();
  v73 = v48;
  v74 = v47;
  v49 = sub_1DA34BC10();
  v71 = v50;
  v72 = v49;
  v51 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
  v70 = v52;
  v53 = sub_1DA34BC10();
  v55 = v54;
  v56 = *(v35 + 16);
  v56(v36, v77, v16);
  sub_1DA3094C0(v30, v41, &qword_1ECBA59B0, &qword_1DA34EA70);
  v57 = v75;
  v59 = v72;
  v58 = v73;
  *v75 = v74;
  v57[1] = v58;
  v60 = v70;
  v61 = v71;
  v57[2] = v59;
  v57[3] = v61;
  v57[4] = v51;
  v57[5] = v60;
  v57[6] = v53;
  v57[7] = v55;
  v62 = type metadata accessor for AttributionItem();
  v56(v57 + *(v62 + 32), v36, v16);
  sub_1DA2FA2E0(v41);
  v63 = *(v62 + 36);
  sub_1DA2FCA60();
  sub_1DA34C010();
  sub_1DA2E7E4C(v41, &qword_1ECBA59B0, &qword_1DA34EA70);
  v64 = *(v35 + 8);
  v64(v36, v16);
  sub_1DA2E7E4C(v76, &qword_1ECBA59B0, &qword_1DA34EA70);
  v64(v77, v16);
  return __swift_storeEnumTagSinglePayload(v57, 0, 1, v62);
}

uint64_t sub_1DA329818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_1DA34B8C0();
  __swift_allocate_value_buffer(v4, qword_1ECBA6028);
  v5 = __swift_project_value_buffer(v4, qword_1ECBA6028);
  sub_1DA34B8B0();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CoreAnalyticsLogger.sendEvent(_:payload:)(Swift::String _, Swift::OpaquePointer payload)
{
  v2 = sub_1DA34CB30();
  sub_1DA306F34();
  v3 = sub_1DA34CAA0();
  AnalyticsSendEvent();
}

uint64_t sub_1DA3299C0()
{
  type metadata accessor for AnalyticsManager();
  result = swift_allocObject();
  *(result + 40) = &type metadata for CoreAnalyticsLogger;
  *(result + 48) = &protocol witness table for CoreAnalyticsLogger;
  qword_1ECBA6050 = result;
  return result;
}

uint64_t *AnalyticsManager.__allocating_init(backend:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_20();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_0_20(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_2_17();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t static AnalyticsManager.shared.getter()
{
  if (qword_1ECBA57A0 != -1)
  {
    swift_once();
  }
}

uint64_t *AnalyticsManager.init(backend:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_20();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_0_20(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_2_17();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t AnalyticsManager.send(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1DA329D04(v4, v1, v2, v3);
}

uint64_t AnalyticsManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t *sub_1DA329C94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  return a2;
}

uint64_t sub_1DA329D04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v28[3] = a3;
  v28[4] = a4;
  v9 = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  if (static DeviceExpertPreferences.shouldSendAnalytics.getter())
  {
    sub_1DA32A118(boxed_opaque_existential_0, v9, a3, a4);
    if (qword_1EE109038 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA34C8E0();
    __swift_project_value_buffer(v11, qword_1EE109040);
    sub_1DA2EEF28(v28, v27);

    v12 = sub_1DA34C8C0();
    v13 = sub_1DA34CDB0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136315394;
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      v15 = (*(a4 + 8))(a3, a4);
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v18 = sub_1DA300D78(v15, v17, &v26);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_1DA306F34();
      v19 = sub_1DA34CAB0();
      v21 = sub_1DA300D78(v19, v20, &v26);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_1DA2E0000, v12, v13, "Sending analytics event %s with payload %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74B3A0](v25, -1, -1);
      MEMORY[0x1DA74B3A0](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    v22 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    v23 = (*(a4 + 8))(a3, a4);
    (*(v22 + 8))(v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

_BYTE *storeEnumTagSinglePayload for CoreAnalyticsLogger(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA32A118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  v10 = (*(a4 + 24))(a3, a4);
  (*(a4 + 16))(a3, a4);
  v11 = sub_1DA34CB30();

  swift_isUniquelyReferenced_nonNull_native();
  v15 = v10;
  sub_1DA30F908(v11, 0x5F6E6F6973736573, 0xEA00000000006469);
  v12 = v15;
  (*(v6 + 8))(v9, a3);
  return v12;
}

uint64_t *OUTLINED_FUNCTION_2_17()
{

  return sub_1DA329C94(v3, v0, v1, v2);
}

void *sub_1DA32A2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v109 = a4;
  v110 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v5 = OUTLINED_FUNCTION_12(v106);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_7();
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v94 - v10;
  v11 = type metadata accessor for TextRun(0);
  v114 = *(v11 - 8);
  v12 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v16 = sub_1DA34B9B0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_4();
  v115 = v23 - v22;
  v103 = sub_1DA34BF90();
  v24 = OUTLINED_FUNCTION_0(v103);
  v102 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19_7();
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v94 - v29;
  v30 = sub_1DA34BED0();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_1();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v94 - v40;
  sub_1DA34BEE0();
  sub_1DA34B980();
  v42 = *(v33 + 8);
  v43 = OUTLINED_FUNCTION_29_6();
  v42(v43);
  Array<A>.asTextRuns()();
  v99 = v44;

  sub_1DA34BEE0();
  sub_1DA34BE10();
  v45 = OUTLINED_FUNCTION_29_6();
  v42(v45);
  Array<A>.asTextRuns()();
  v98 = v46;

  v111 = a1;
  sub_1DA34BEE0();
  v47 = sub_1DA34BA50();
  v97 = v30;
  v96 = v33 + 8;
  v95 = v42;
  (v42)(v38, v30);
  v48 = *(v47 + 16);
  if (v48)
  {
    v94 = v41;
    v126 = MEMORY[0x1E69E7CC0];
    result = sub_1DA3489D4(0, v48, 0);
    v50 = 0;
    v51 = v126;
    v118 = v47 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v119 = v48;
    v116 = (v19 + 8);
    v117 = v19 + 16;
    v52 = v115;
    v112 = v19;
    v113 = v16;
    v120 = v47;
    while (v50 < *(v47 + 16))
    {
      v53 = *(v19 + 72);
      v123 = v50;
      (*(v19 + 16))(v52, v118 + v53 * v50, v16);
      v54 = sub_1DA34B980();
      v55 = *(v54 + 16);
      if (v55)
      {
        v122 = v51;
        v125 = MEMORY[0x1E69E7CC0];
        sub_1DA34826C();
        v56 = v125;
        v124 = sub_1DA34BA10();
        OUTLINED_FUNCTION_12(v124);
        v58 = *(v57 + 16);
        v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v121 = v54;
        v60 = v54 + v59;
        v61 = *(v57 + 72);
        v62 = v114;
        do
        {
          v58(v15, v60, v124);
          v125 = v56;
          v63 = v15;
          v64 = *(v56 + 16);
          if (v64 >= *(v56 + 24) >> 1)
          {
            sub_1DA34826C();
            v62 = v114;
            v56 = v125;
          }

          *(v56 + 16) = v64 + 1;
          sub_1DA32E8DC(v63, v56 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64);
          v60 += v61;
          --v55;
          v15 = v63;
        }

        while (v55);

        v52 = v115;
        v16 = v113;
        result = (*v116)(v115, v113);
        v51 = v122;
        v19 = v112;
      }

      else
      {

        result = (*v116)(v52, v16);
        v56 = MEMORY[0x1E69E7CC0];
      }

      v126 = v51;
      v66 = *(v51 + 16);
      v65 = *(v51 + 24);
      v67 = v123;
      if (v66 >= v65 >> 1)
      {
        result = sub_1DA3489D4((v65 > 1), v66 + 1, 1);
        v51 = v126;
      }

      v50 = v67 + 1;
      *(v51 + 16) = v66 + 1;
      *(v51 + 8 * v66 + 32) = v56;
      v47 = v120;
      if (v50 == v119)
      {

        v122 = v51;
        v41 = v94;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

    v122 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1DA34BEE0();
    _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV10parametersSaySSGSgvg_0();
    v68 = v97;
    v69 = v95;
    (v95)(v41, v97);
    Array<A>.asTextRuns()();
    v124 = v70;

    sub_1DA34B9C0();
    Array<A>.asTextRuns()();
    v123 = v71;

    sub_1DA34BEE0();
    v72 = v100;
    sub_1DA34BEA0();
    v69(v41, v68);
    v73 = v102;
    v74 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x1E69BCDB8], v103);
    sub_1DA32E940(&unk_1EE109F08);
    sub_1DA34CC40();
    sub_1DA34CC40();
    v75 = *(v73 + 8);
    v76 = OUTLINED_FUNCTION_29_6();
    v75(v76);
    (v75)(v72, v74);
    LODWORD(v121) = v126 != v125;
    v77 = v110;
    v78 = v107;
    sub_1DA32B41C(v110, v107);
    v79 = type metadata accessor for ListStyleAnswerSnippetModel();
    v80 = v79[9];
    v81 = type metadata accessor for AttributionModel();
    v82 = v104;
    __swift_storeEnumTagSinglePayload(v104, 1, 1, v81);
    v83 = v105;
    sub_1DA32B41C(v82, v105);
    v84 = v109;
    sub_1DA34C0D0();
    sub_1DA32B48C(v82);
    v126 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA34C0D0();
    v85 = v79[5];
    OUTLINED_FUNCTION_16_6();
    v86 = v79[6];
    v126 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6098, &unk_1DA352658);
    sub_1DA34C0D0();
    v87 = v79[7];
    OUTLINED_FUNCTION_16_6();
    v88 = v79[8];
    OUTLINED_FUNCTION_16_6();
    *(v84 + v79[11]) = v121;
    sub_1DA32B41C(v78, v82);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_12(v89);
    (*(v90 + 8))(v84 + v80);
    sub_1DA32B41C(v82, v83);
    OUTLINED_FUNCTION_29_6();
    sub_1DA34C0D0();
    sub_1DA32B48C(v82);
    v91 = v79[10];
    v126 = v108;
    type metadata accessor for FlowContext();
    sub_1DA34C0D0();
    sub_1DA32B48C(v77);
    v92 = sub_1DA34BFB0();
    OUTLINED_FUNCTION_12(v92);
    (*(v93 + 8))(v111);
    return sub_1DA32B48C(v78);
  }

  return result;
}

uint64_t ListStyleAnswerSnippetModel.title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA32ACAC(uint64_t *a1)
{
  v1 = *a1;

  return ListStyleAnswerSnippetModel.title.setter();
}

uint64_t (*ListStyleAnswerSnippetModel.title.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.intro.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t type metadata accessor for ListStyleAnswerSnippetModel()
{
  result = qword_1EE10A590;
  if (!qword_1EE10A590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA32AE24(uint64_t *a1)
{
  v1 = *a1;

  return ListStyleAnswerSnippetModel.intro.setter();
}

uint64_t ListStyleAnswerSnippetModel.intro.setter()
{
  v0 = *(OUTLINED_FUNCTION_27_5() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*ListStyleAnswerSnippetModel.intro.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_10_10(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.steps.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t sub_1DA32AF50(uint64_t *a1)
{
  v1 = *a1;

  return ListStyleAnswerSnippetModel.steps.setter();
}

uint64_t ListStyleAnswerSnippetModel.steps.setter()
{
  v0 = *(OUTLINED_FUNCTION_27_5() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*ListStyleAnswerSnippetModel.steps.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_10_10(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.outro.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t sub_1DA32B07C(uint64_t *a1)
{
  v1 = *a1;

  return ListStyleAnswerSnippetModel.outro.setter();
}

uint64_t ListStyleAnswerSnippetModel.outro.setter()
{
  v0 = *(OUTLINED_FUNCTION_27_5() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*ListStyleAnswerSnippetModel.outro.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_10_10(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.disclaimer.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t sub_1DA32B1A8(uint64_t *a1)
{
  v1 = *a1;

  return ListStyleAnswerSnippetModel.disclaimer.setter();
}

uint64_t ListStyleAnswerSnippetModel.disclaimer.setter()
{
  v0 = *(OUTLINED_FUNCTION_27_5() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*ListStyleAnswerSnippetModel.disclaimer.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_10_10(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.attributionModel.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA32B2DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  sub_1DA32B41C(a1, &v7 - v4);
  return ListStyleAnswerSnippetModel.attributionModel.setter(v5);
}

uint64_t ListStyleAnswerSnippetModel.attributionModel.setter(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt") - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DA32B41C(a1, &v7 - v4);
  v5 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_4_17();
  sub_1DA34C100();
  return sub_1DA32B48C(a1);
}

uint64_t sub_1DA32B41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA32B48C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*ListStyleAnswerSnippetModel.attributionModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_10_10(v2) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

uint64_t ListStyleAnswerSnippetModel.context.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t sub_1DA32B5B0(uint64_t *a1)
{
  v1 = *a1;

  return ListStyleAnswerSnippetModel.context.setter();
}

uint64_t ListStyleAnswerSnippetModel.context.setter()
{
  v0 = *(OUTLINED_FUNCTION_27_5() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*ListStyleAnswerSnippetModel.context.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_10_10(v2) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t ListStyleAnswerSnippetModel.listStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ListStyleAnswerSnippetModel();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t ListStyleAnswerSnippetModel.listStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ListStyleAnswerSnippetModel();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t sub_1DA32B73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726564726FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726564726F6E75 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA34D160();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA32B80C(char a1)
{
  if (a1)
  {
    return 0x65726564726F6E75;
  }

  else
  {
    return 0x6465726564726FLL;
  }
}

uint64_t sub_1DA32B85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA32B73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA32B884(uint64_t a1)
{
  v2 = sub_1DA32BC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA32B8C0(uint64_t a1)
{
  v2 = sub_1DA32BC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA32B900(uint64_t a1)
{
  v2 = sub_1DA32BD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA32B93C(uint64_t a1)
{
  v2 = sub_1DA32BD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA32B978(uint64_t a1)
{
  v2 = sub_1DA32BCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA32B9B4(uint64_t a1)
{
  v2 = sub_1DA32BCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ListStyleAnswerSnippetModel.ListStyle.encode(to:)()
{
  OUTLINED_FUNCTION_34_2();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6060, &qword_1DA352628);
  v4 = OUTLINED_FUNCTION_0(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_2();
  v32 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6068, &qword_1DA352630);
  v11 = OUTLINED_FUNCTION_0(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6070, &qword_1DA352638);
  OUTLINED_FUNCTION_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DA32BC5C();
  sub_1DA34D250();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1DA32BCB0();
    v29 = v32;
    sub_1DA34D0B0();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1DA32BD04();
    sub_1DA34D0B0();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  OUTLINED_FUNCTION_33_3();
}

unint64_t sub_1DA32BC5C()
{
  result = qword_1EE10A600[0];
  if (!qword_1EE10A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE10A600);
  }

  return result;
}

unint64_t sub_1DA32BCB0()
{
  result = qword_1ECBA6078;
  if (!qword_1ECBA6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6078);
  }

  return result;
}

unint64_t sub_1DA32BD04()
{
  result = qword_1EE10A5E8;
  if (!qword_1EE10A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5E8);
  }

  return result;
}

uint64_t ListStyleAnswerSnippetModel.ListStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](v1);
  return sub_1DA34D230();
}

void ListStyleAnswerSnippetModel.ListStyle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34_2();
  a22 = v24;
  a23 = v25;
  v79 = v23;
  v27 = v26;
  v76 = v28;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6080, &qword_1DA352640);
  OUTLINED_FUNCTION_0(v78);
  v75 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v71 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6088, &qword_1DA352648);
  OUTLINED_FUNCTION_0(v35);
  v74 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v71 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6090, &qword_1DA352650);
  OUTLINED_FUNCTION_0(v42);
  v77 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v71 - v47;
  v49 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DA32BC5C();
  v50 = v79;
  sub_1DA34D240();
  if (v50)
  {
    goto LABEL_10;
  }

  v72 = v35;
  v73 = v41;
  v79 = v27;
  v51 = v78;
  v52 = sub_1DA34D0A0();
  v53 = sub_1DA30DDC8(v52, 0);
  if (v55 == v56 >> 1)
  {
    v78 = v53;
LABEL_9:
    v66 = sub_1DA34CEF0();
    swift_allocError();
    v68 = v67;
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DF8, &qword_1DA3501A0) + 48);
    *v68 = &type metadata for ListStyleAnswerSnippetModel.ListStyle;
    sub_1DA34D020();
    sub_1DA34CEE0();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69E6AF8], v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v77 + 8))(v48, v42);
    v27 = v79;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_11:
    OUTLINED_FUNCTION_33_3();
    return;
  }

  v71[1] = 0;
  if (v55 < (v56 >> 1))
  {
    v57 = *(v54 + v55);
    v58 = sub_1DA30EAD0(v55 + 1);
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      if (v57)
      {
        a13 = 1;
        sub_1DA32BCB0();
        v63 = v34;
        OUTLINED_FUNCTION_26_5(&type metadata for ListStyleAnswerSnippetModel.ListStyle.UnorderedCodingKeys, &a13);
        v64 = v76;
        v65 = v77;
        swift_unknownObjectRelease();
        (*(v75 + 8))(v63, v51);
      }

      else
      {
        a12 = 0;
        sub_1DA32BD04();
        v70 = v73;
        OUTLINED_FUNCTION_26_5(&type metadata for ListStyleAnswerSnippetModel.ListStyle.OrderedCodingKeys, &a12);
        v64 = v76;
        v65 = v77;
        swift_unknownObjectRelease();
        (*(v74 + 8))(v70, v72);
      }

      (*(v65 + 8))(v48, v60);
      *v64 = v57;
      __swift_destroy_boxed_opaque_existential_1(v79);
      goto LABEL_11;
    }

    v78 = v58;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t ListStyleAnswerSnippetModel.init(title:intro:steps:outro:disclaimer:listStyle:attributionModel:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a7;
  v41 = a8;
  v38 = a4;
  v39 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_1();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v24 = *a6;
  v25 = type metadata accessor for ListStyleAnswerSnippetModel();
  v26 = v25[9];
  v27 = type metadata accessor for AttributionModel();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v27);
  sub_1DA32B41C(v23, v20);
  sub_1DA34C0D0();
  sub_1DA32B48C(v23);
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v28 = v25[5];
  v42 = a2;
  OUTLINED_FUNCTION_23_6();
  v29 = v25[6];
  v42 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6098, &unk_1DA352658);
  sub_1DA34C0D0();
  v30 = v25[7];
  v42 = v38;
  OUTLINED_FUNCTION_23_6();
  v31 = v25[8];
  v42 = v39;
  OUTLINED_FUNCTION_23_6();
  *(a9 + v25[11]) = v24;
  v32 = v40;
  sub_1DA32B41C(v40, v23);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12(v33);
  (*(v34 + 8))(a9 + v26);
  sub_1DA32B41C(v23, v20);
  sub_1DA34C0D0();
  sub_1DA32B48C(v23);
  v35 = v25[10];
  v42 = v41;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  return sub_1DA32B48C(v32);
}

BOOL ListStyleAnswerSnippetModel.hasTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v0 = sub_1DA34C0F0();
  OUTLINED_FUNCTION_35_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  return OUTLINED_FUNCTION_30_5();
}

BOOL ListStyleAnswerSnippetModel.hasIntro.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v1 = OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_35_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return OUTLINED_FUNCTION_30_5();
}

BOOL ListStyleAnswerSnippetModel.hasOutro.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v1 = OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_35_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return OUTLINED_FUNCTION_30_5();
}

BOOL ListStyleAnswerSnippetModel.hasDisclaimer.getter()
{
  v0 = *(type metadata accessor for ListStyleAnswerSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v1 = OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_35_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return OUTLINED_FUNCTION_30_5();
}

uint64_t ListStyleAnswerSnippetModel.selectableComponents.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DA352610;
  v3 = type metadata accessor for ListStyleAnswerSnippetModel();
  v4 = v3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(v2 + 56) = v5;
  *(v2 + 64) = &protocol witness table for [A];
  *(v2 + 32) = v9;
  v6 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  sub_1DA34C0F0();
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6098, &unk_1DA352658);
  *(v2 + 104) = &protocol witness table for [A];
  *(v2 + 72) = v9;
  v7 = v1 + v3[7];
  sub_1DA34C0F0();
  *(v2 + 136) = v5;
  *(v2 + 144) = &protocol witness table for [A];
  *(v2 + 112) = v9;
  return v2;
}

uint64_t sub_1DA32C774(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v4 = sub_1DA34C0F0();
  v12 = OUTLINED_FUNCTION_22_5(v4, v5, v6, v7, v8, v9, v10, v11, v60, v65);
  v13 = a1(v12);

  if (v13)
  {
    goto LABEL_5;
  }

  v14 = type metadata accessor for ListStyleAnswerSnippetModel();
  v15 = v14[5];
  v16 = OUTLINED_FUNCTION_24_3();
  v24 = OUTLINED_FUNCTION_22_5(v16, v17, v18, v19, v20, v21, v22, v23, v61, v66);
  v25 = a1(v24);

  if (v25)
  {
    goto LABEL_5;
  }

  v26 = v14[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  v27 = sub_1DA34C0F0();
  v35 = OUTLINED_FUNCTION_22_5(v27, v28, v29, v30, v31, v32, v33, v34, v62, v67);
  v36 = a2(v35);

  if (v36 & 1) != 0 || (v37 = v14[7], v38 = OUTLINED_FUNCTION_24_3(), v46 = OUTLINED_FUNCTION_22_5(v38, v39, v40, v41, v42, v43, v44, v45, v63, v68), v47 = a1(v46), , (v47))
  {
LABEL_5:
    v48 = 1;
  }

  else
  {
    v50 = v14[8];
    v51 = OUTLINED_FUNCTION_24_3();
    v59 = OUTLINED_FUNCTION_22_5(v51, v52, v53, v54, v55, v56, v57, v58, v64, v69);
    v48 = a1(v59);
  }

  return v48 & 1;
}

uint64_t sub_1DA32C8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F72746E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7370657473 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F7274756FLL && a2 == 0xE500000000000000;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265;
          if (v9 || (sub_1DA34D160() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001DA354F50 == a2;
            if (v10 || (sub_1DA34D160() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
              if (v11 || (sub_1DA34D160() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6C7974537473696CLL && a2 == 0xE900000000000065)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DA34D160();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DA32CB3C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6F72746E69;
      break;
    case 2:
      result = 0x7370657473;
      break;
    case 3:
      result = 0x6F7274756FLL;
      break;
    case 4:
      result = 0x6D69616C63736964;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x747865746E6F63;
      break;
    case 7:
      result = 0x6C7974537473696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA32CC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA32C8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA32CC44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA32CB34();
  *a1 = result;
  return result;
}

uint64_t sub_1DA32CC6C(uint64_t a1)
{
  v2 = sub_1DA32D9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA32CCA8(uint64_t a1)
{
  v2 = sub_1DA32D9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ListStyleAnswerSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_34_2();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60A0, &qword_1DA352668);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DA32D9BC();
  sub_1DA34D250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_1_6();
  sub_1DA32DE78(v14);
  OUTLINED_FUNCTION_6_12();
  if (!v1)
  {
    v15 = type metadata accessor for ListStyleAnswerSnippetModel();
    v16 = *(v15 + 20);
    OUTLINED_FUNCTION_6_12();
    v26 = v15;
    v17 = *(v15 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA32DF4C(v18);
    OUTLINED_FUNCTION_17_7();
    v19 = v26;
    v20 = v26[7];
    OUTLINED_FUNCTION_6_12();
    v21 = v19[8];
    OUTLINED_FUNCTION_6_12();
    v22 = v19[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA32DBF8(v23);
    OUTLINED_FUNCTION_17_7();
    v24 = v26[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA32DD54(v25);
    OUTLINED_FUNCTION_17_7();
    v28 = *(v2 + v26[11]);
    v27 = 7;
    sub_1DA32DE24();
    sub_1DA34D120();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_33_3();
}

void ListStyleAnswerSnippetModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_34_2();
  v121 = v10;
  v12 = v11;
  v105 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  v15 = OUTLINED_FUNCTION_0(v14);
  v115 = v16;
  v116 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17_2();
  v106 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  v22 = OUTLINED_FUNCTION_0(v21);
  v124 = v23;
  v125 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17_2();
  v107 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  v29 = OUTLINED_FUNCTION_0(v28);
  v111 = v30;
  v112 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_17_2();
  v110 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v36 = OUTLINED_FUNCTION_0(v35);
  v118 = v37;
  v119 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3_1();
  v108 = v40 - v41;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v109 = &v105 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v105 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v117 = &v105 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60A8, &qword_1DA352670);
  v50 = OUTLINED_FUNCTION_0(v49);
  v113 = v51;
  v114 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v105 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v58 = OUTLINED_FUNCTION_12(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_3_1();
  v63 = v61 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v105 - v65;
  v67 = type metadata accessor for ListStyleAnswerSnippetModel();
  v68 = OUTLINED_FUNCTION_12(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_1_4();
  v73 = v72 - v71;
  v126 = v74;
  v75 = *(v74 + 36);
  v76 = type metadata accessor for AttributionModel();
  __swift_storeEnumTagSinglePayload(v66, 1, 1, v76);
  sub_1DA32B41C(v66, v63);
  v123 = v75;
  v77 = v73;
  sub_1DA34C0D0();
  sub_1DA32B48C(v66);
  v78 = v12[3];
  v79 = v12[4];
  v122 = v12;
  __swift_project_boxed_opaque_existential_1(v12, v78);
  sub_1DA32D9BC();
  v120 = v56;
  v80 = v121;
  sub_1DA34D240();
  if (v80)
  {
    __swift_destroy_boxed_opaque_existential_1(v122);
    (*(v124 + 8))(v73 + v123, v125);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    v82 = sub_1DA32DE78(v81);
    v83 = v119;
    sub_1DA34D090();
    v84 = v77;
    v85 = v77;
    v86 = *(v118 + 32);
    v86(v85, v117, v83);
    OUTLINED_FUNCTION_25_5();
    v121 = v82;
    v87 = v126;
    v86(v84 + *(v126 + 20), v47, v83);
    OUTLINED_FUNCTION_2_4();
    sub_1DA32DF4C(v88);
    v89 = v110;
    v90 = v112;
    OUTLINED_FUNCTION_25_5();
    v117 = v86;
    (*(v111 + 32))(v84 + *(v87 + 24), v89, v90);
    v91 = v109;
    sub_1DA34D090();
    v92 = v91;
    v93 = v117;
    (v117)(v84 + *(v87 + 28), v92, v119);
    OUTLINED_FUNCTION_25_5();
    LODWORD(v121) = 1;
    v94 = v126;
    v95 = OUTLINED_FUNCTION_28_5(*(v126 + 32));
    v93(v95);
    OUTLINED_FUNCTION_2_4();
    sub_1DA32DBF8(v96);
    v97 = v107;
    v98 = v125;
    OUTLINED_FUNCTION_25_5();
    (*(v124 + 40))(v84 + v123, v97, v98);
    OUTLINED_FUNCTION_2_4();
    sub_1DA32DD54(v99);
    v100 = v106;
    v101 = v116;
    OUTLINED_FUNCTION_25_5();
    (*(v115 + 32))(v84 + *(v94 + 40), v100, v101);
    v127 = 7;
    sub_1DA32DFB0();
    v102 = v114;
    OUTLINED_FUNCTION_25_5();
    v103 = OUTLINED_FUNCTION_9_6();
    v104(v103, v102);
    *(v84 + *(v94 + 44)) = a10;
    sub_1DA32E004(v84, v105);
    __swift_destroy_boxed_opaque_existential_1(v122);
    sub_1DA32E068(v84);
  }

  OUTLINED_FUNCTION_33_3();
}

unint64_t sub_1DA32D9BC()
{
  result = qword_1EE10A5B8;
  if (!qword_1EE10A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5B8);
  }

  return result;
}

unint64_t sub_1DA32DA10(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA32E940(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DA98()
{
  result = qword_1EE109F50;
  if (!qword_1EE109F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA6098, &unk_1DA352658);
    sub_1DA32DA10(&unk_1EE109F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F50);
  }

  return result;
}

unint64_t sub_1DA32DB48()
{
  result = qword_1EE109F58;
  if (!qword_1EE109F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA6098, &unk_1DA352658);
    sub_1DA32DA10(&unk_1EE109F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F58);
  }

  return result;
}

unint64_t sub_1DA32DBF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    sub_1DA32DCCC(&unk_1EE10A850);
    sub_1DA32DCCC(&unk_1EE10A858);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DCCC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5840, "lt");
    sub_1DA32E940(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DD54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA32E940(&unk_1EE10AC10);
    sub_1DA32E940(&unk_1EE10AC18);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DE24()
{
  result = qword_1EE10A5C0;
  if (!qword_1EE10A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5C0);
  }

  return result;
}

unint64_t sub_1DA32DE78(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A88, &qword_1DA352620);
    sub_1DA32DA10(&unk_1EE109F68);
    sub_1DA32DA10(&unk_1EE109F70);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DF4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA6058, &qword_1DA352DC0);
    sub_1DA32DA98();
    sub_1DA32DB48();
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA32DFB0()
{
  result = qword_1EE109250;
  if (!qword_1EE109250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109250);
  }

  return result;
}

uint64_t sub_1DA32E004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListStyleAnswerSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA32E068(uint64_t a1)
{
  v2 = type metadata accessor for ListStyleAnswerSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA32E0C8()
{
  result = qword_1ECBA60B0;
  if (!qword_1ECBA60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA60B0);
  }

  return result;
}

uint64_t sub_1DA32E1D4()
{
  sub_1DA3063E8(319, &qword_1EE10AC50, &qword_1ECBA58C0, &qword_1DA34DF10);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1DA3063E8(319, &qword_1EE10AC38, &qword_1ECBA6098, &unk_1DA352658);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1DA3063E8(319, &qword_1EE10AC88, &qword_1ECBA5840, "lt");
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1DA2F33D8();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for ListStyleAnswerSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ListStyleAnswerSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA32E470(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA32E570()
{
  result = qword_1ECBA60B8;
  if (!qword_1ECBA60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA60B8);
  }

  return result;
}

unint64_t sub_1DA32E5C8()
{
  result = qword_1ECBA60C0;
  if (!qword_1ECBA60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA60C0);
  }

  return result;
}

unint64_t sub_1DA32E620()
{
  result = qword_1EE10A5A8;
  if (!qword_1EE10A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5A8);
  }

  return result;
}

unint64_t sub_1DA32E678()
{
  result = qword_1EE10A5B0;
  if (!qword_1EE10A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5B0);
  }

  return result;
}

unint64_t sub_1DA32E6D0()
{
  result = qword_1EE10A5D8;
  if (!qword_1EE10A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5D8);
  }

  return result;
}

unint64_t sub_1DA32E728()
{
  result = qword_1EE10A5E0;
  if (!qword_1EE10A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5E0);
  }

  return result;
}

unint64_t sub_1DA32E780()
{
  result = qword_1EE10A5C8;
  if (!qword_1EE10A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5C8);
  }

  return result;
}

unint64_t sub_1DA32E7D8()
{
  result = qword_1EE10A5D0;
  if (!qword_1EE10A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5D0);
  }

  return result;
}

unint64_t sub_1DA32E830()
{
  result = qword_1EE10A5F0;
  if (!qword_1EE10A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5F0);
  }

  return result;
}

unint64_t sub_1DA32E888()
{
  result = qword_1EE10A5F8;
  if (!qword_1EE10A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A5F8);
  }

  return result;
}

uint64_t sub_1DA32E8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextRun(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA32E940(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for ListStyleAnswerSnippetModel();
}

uint64_t OUTLINED_FUNCTION_16_6()
{
  *(v1 - 96) = v0;

  return sub_1DA34C0D0();
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_23_6()
{

  return sub_1DA34C0D0();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return sub_1DA34C0F0();
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  v2 = *(v0 - 152);

  return sub_1DA34D090();
}

uint64_t OUTLINED_FUNCTION_26_5(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 152);

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return type metadata accessor for ListStyleAnswerSnippetModel();
}

uint64_t OUTLINED_FUNCTION_35_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 16);
}

uint64_t sub_1DA32EB54()
{
  v0 = sub_1DA34C8E0();
  __swift_allocate_value_buffer(v0, qword_1EE109040);
  OUTLINED_FUNCTION_1_21();
  return sub_1DA34C8D0();
}

uint64_t sub_1DA32EBEC()
{
  v0 = sub_1DA34C8E0();
  __swift_allocate_value_buffer(v0, qword_1ECBA60C8);
  __swift_project_value_buffer(v0, qword_1ECBA60C8);
  return sub_1DA34C8D0();
}

uint64_t sub_1DA32EC90()
{
  v0 = sub_1DA34C8E0();
  __swift_allocate_value_buffer(v0, qword_1EE109060);
  OUTLINED_FUNCTION_1_21();
  return OUTLINED_FUNCTION_0_21();
}

uint64_t sub_1DA32ED08()
{
  v0 = sub_1DA34C8E0();
  __swift_allocate_value_buffer(v0, qword_1EE109080);
  OUTLINED_FUNCTION_1_21();
  return OUTLINED_FUNCTION_0_21();
}

uint64_t sub_1DA32ED80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA34C8E0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return sub_1DA34C8D0();
}

uint64_t sub_1DA32EE68(char a1)
{
  if (a1)
  {
    v1 = 0xEC00000064657463;
  }

  else
  {
    v1 = 0xE900000000000064;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32EF04(unsigned __int8 a1, char a2)
{
  v2 = 0x6E65657263536E6FLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656572635366666FLL;
    }

    else
    {
      v4 = 0x676E697373696DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE90000000000006ELL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x6E65657263536E6FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656572635366666FLL;
    }

    else
    {
      v2 = 0x676E697373696DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE90000000000006ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32EFFC(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000007475;
  }

  else
  {
    v1 = 0xE90000000000006ELL;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F094(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000007265626DLL;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F128(unsigned __int8 a1, char a2)
{
  v2 = 0x6465646461;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6564646120746F6ELL;
    }

    else
    {
      v4 = 0x64656C696166;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6465646461;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6564646120746F6ELL;
    }

    else
    {
      v2 = 0x64656C696166;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F214(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F2A0(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F697473657571;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6E6F697473657571;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x64695F616E71;
      break;
    case 2:
      v5 = 0xD000000000000011;
      v3 = 0x80000001DA3549F0;
      break;
    case 3:
      v5 = 0x5F747865746E6F63;
      v3 = 0xEC00000073676174;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x64695F616E71;
      break;
    case 2:
      v2 = 0xD000000000000011;
      v6 = 0x80000001DA3549F0;
      break;
    case 3:
      v2 = 0x5F747865746E6F63;
      v6 = 0xEC00000073676174;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F3E8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x657A696E6167726FLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000072;
  }

  else
  {
    v4 = 0x80000001DA354950;
  }

  if (a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x657A696E6167726FLL;
  }

  if (a2)
  {
    v6 = 0x80000001DA354950;
  }

  else
  {
    v6 = 0xE900000000000072;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F484()
{
  SettingContextType.rawValue.getter();
  v1 = v0;
  v3 = v2;
  SettingContextType.rawValue.getter();
  if (v1 == v5 && v3 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_38_1();
  }

  return v7 & 1;
}

uint64_t sub_1DA32F50C(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000006465;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F5A0(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F62C(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000006465;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F6BC(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0x696669746E656469;
  v6 = 0xEA00000000007265;
  switch(v4)
  {
    case 1:
      v6 = 0xE500000000000000;
      v5 = 0x656C746974;
      break;
    case 2:
      v5 = 0x746E6F4379646F62;
      v6 = 0xEF61746144746E65;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x65676175676E616CLL;
      break;
    case 4:
      v5 = 0xD00000000000001BLL;
      v6 = 0x80000001DA354490;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x747865746E6F63;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE500000000000000;
      v3 = 0x656C746974;
      break;
    case 2:
      v3 = 0x746E6F4379646F62;
      v2 = 0xEF61746144746E65;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x65676175676E616CLL;
      break;
    case 4:
      v3 = 0xD00000000000001BLL;
      v2 = 0x80000001DA354490;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x747865746E6F63;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DA34D160();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F880(char a1)
{
  if (a1)
  {
    v1 = 0xEA0000000000746ELL;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F910(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6710895;
  }

  else
  {
    v3 = 28271;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6710895;
  }

  else
  {
    v5 = 28271;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32F990(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C6261736964;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C6261736964;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32FA24(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000012;
  v3 = "icememos";
  v4 = "icememos";
  v5 = a1;
  v6 = 0xD000000000000012;
  switch(v5)
  {
    case 1:
      v4 = "minimum_os_version";
      v6 = 0xD000000000000016;
      break;
    case 2:
      v4 = "minimum_hardware_model";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "specific_app_involved";
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "minimum_os_version";
      v2 = 0xD000000000000016;
      break;
    case 2:
      v3 = "minimum_hardware_model";
      v2 = 0xD000000000000015;
      break;
    case 3:
      v3 = "specific_app_involved";
      v2 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32FB40(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000070;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_78_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32FBD0(char a1, char a2)
{
  v3 = sub_1DA308D50(a1);
  v5 = v4;
  if (v3 == sub_1DA308D50(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_38_1();
  }

  return v8 & 1;
}

uint64_t sub_1DA32FC48(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_1DA34CB80();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DA34B5D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = a1[1];
  v52 = *a1;
  v53 = v15;
  v54 = a1[2];
  if (qword_1EE109E70 != -1)
  {
    result = swift_once();
  }

  if (byte_1EE10E058 == 1)
  {
    v48 = a3;
    v16 = sub_1DA34B610();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1DA34B600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6100, &qword_1DA352D88);
    v19 = *(v12 + 72);
    v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v21 = swift_allocObject();
    if (a5)
    {
      *(v21 + 16) = xmmword_1DA34DA00;
      sub_1DA34B5C0();
    }

    else
    {
      *(v21 + 16) = xmmword_1DA34DC80;
    }

    sub_1DA34B5B0();
    v49 = v21;
    sub_1DA33ACBC(&qword_1EE109F40, 255, MEMORY[0x1E6967F78]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6108, &unk_1DA352D90);
    sub_1DA33AA2C();
    sub_1DA34CE90();
    sub_1DA34B5E0();
    sub_1DA33AA90();
    v22 = sub_1DA34B5F0();
    v24 = v23;
    sub_1DA34CB70();
    v25 = sub_1DA34CB60();
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      if (a5)
      {
        v29 = 2618;
      }

      else
      {
        v29 = 8250;
      }

      if (a4)
      {
        v49 = v48;
        v50 = a4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60F0, &unk_1DA352C30);
        v49 = sub_1DA34CBA0();
        v50 = v39;
        MEMORY[0x1DA74A690](0x4E4F534A20, 0xE500000000000000);
      }

      MEMORY[0x1DA74A690](v29, 0xE200000000000000);

      MEMORY[0x1DA74A690](v27, v28);

      v41 = v49;
      v40 = v50;

      v30 = sub_1DA34C8C0();
      v42 = sub_1DA34CD90();

      if (!os_log_type_enabled(v30, v42))
      {
        sub_1DA2E62C4(v22, v24);

LABEL_22:
      }

      v43 = swift_slowAlloc();
      v36 = v24;
      v44 = swift_slowAlloc();
      v49 = v44;
      *v43 = 136315138;
      v45 = sub_1DA300D78(v41, v40, &v49);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_1DA2E0000, v30, v42, "%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1DA74B3A0](v44, -1, -1);
      v38 = v43;
    }

    else
    {
      v30 = sub_1DA34C8C0();
      v31 = sub_1DA34CDA0();
      if (!os_log_type_enabled(v30, v31))
      {
        v46 = v22;
        v47 = v24;
        goto LABEL_21;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315138;
      v51 = &unk_1F55E2958;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60F0, &unk_1DA352C30);
      v34 = sub_1DA34CBA0();
      v36 = v24;
      v37 = sub_1DA300D78(v34, v35, &v49);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1DA2E0000, v30, v31, "Failed to convert %s JSON data to string", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1DA74B3A0](v33, -1, -1);
      v38 = v32;
    }

    MEMORY[0x1DA74B3A0](v38, -1, -1);
    v46 = v22;
    v47 = v36;
LABEL_21:
    sub_1DA2E62C4(v46, v47);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1DA330318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DA34BFB0();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t DeviceExpertTellMeGeneratedFlow.__allocating_init(outputPublisher:assistantSupportClient:analyticsManager:biomeEventSender:siriKitEventSender:tipKitEventSender:responseGenerator:deviceState:enableSuggestions:enableContextualRewrite:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, __int128 *a7, __int128 *a8, char a9, char a10)
{
  v17 = swift_allocObject();
  DeviceExpertTellMeGeneratedFlow.init(outputPublisher:assistantSupportClient:analyticsManager:biomeEventSender:siriKitEventSender:tipKitEventSender:responseGenerator:deviceState:enableSuggestions:enableContextualRewrite:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t DeviceExpertTellMeGeneratedFlow.init(outputPublisher:assistantSupportClient:analyticsManager:biomeEventSender:siriKitEventSender:tipKitEventSender:responseGenerator:deviceState:enableSuggestions:enableContextualRewrite:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, __int128 *a7, __int128 *a8, char a9, char a10)
{
  v11 = v10;
  v19 = sub_1DA34C680();
  v20 = OUTLINED_FUNCTION_15_3(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  *(v10 + 312) = 0u;
  *(v10 + 328) = 0u;
  *(v10 + 296) = 0u;
  sub_1DA2EEF28(a1, v10 + 16);
  *(v10 + 56) = a2;
  type metadata accessor for DeviceExpertCATsSimple();

  sub_1DA34C670();
  *(v10 + 64) = sub_1DA34C630();
  *(v10 + 248) = a3;
  sub_1DA2EEF28(a4, v10 + 72);
  sub_1DA2EEF28(a5, v10 + 112);
  sub_1DA2EEF28(a6, v10 + 152);
  sub_1DA34C3F0();

  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for LocalizedResourceProvider();
  OUTLINED_FUNCTION_121();
  v23 = swift_allocObject();
  sub_1DA2E5B48(&v26, v23 + 16);
  *(v11 + 192) = v23;
  sub_1DA2E5B48(a7, v11 + 200);
  sub_1DA2E5B48(a8, v11 + 256);
  *(v11 + 240) = a9;
  *(v11 + 241) = a10;
  return v11;
}

uint64_t sub_1DA330610()
{
  type metadata accessor for DeviceExpertTellMeGeneratedFlow();
  sub_1DA33ACBC(&qword_1ECBA60E0, v0, type metadata accessor for DeviceExpertTellMeGeneratedFlow);
  OUTLINED_FUNCTION_12_5();
  return sub_1DA34C140();
}

uint64_t sub_1DA3306BC()
{
  OUTLINED_FUNCTION_16();
  v1[70] = v0;
  v1[69] = v2;
  v3 = sub_1DA34C8E0();
  v1[71] = v3;
  OUTLINED_FUNCTION_0_12(v3);
  v1[72] = v4;
  v6 = *(v5 + 64);
  v1[73] = OUTLINED_FUNCTION_76();
  v7 = sub_1DA34C1A0();
  v1[74] = v7;
  OUTLINED_FUNCTION_0_12(v7);
  v1[75] = v8;
  v10 = *(v9 + 64);
  v1[76] = OUTLINED_FUNCTION_76();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  OUTLINED_FUNCTION_15_3(v11);
  v13 = *(v12 + 64);
  v1[77] = OUTLINED_FUNCTION_76();
  v14 = sub_1DA34C290();
  v1[78] = v14;
  OUTLINED_FUNCTION_0_12(v14);
  v1[79] = v15;
  v17 = *(v16 + 64);
  v1[80] = OUTLINED_FUNCTION_76();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60E8, &unk_1DA352C00);
  v1[81] = v18;
  OUTLINED_FUNCTION_15_3(v18);
  v20 = *(v19 + 64);
  v1[82] = OUTLINED_FUNCTION_76();
  v21 = sub_1DA34C3B0();
  v1[83] = v21;
  OUTLINED_FUNCTION_0_12(v21);
  v1[84] = v22;
  v24 = *(v23 + 64);
  v1[85] = OUTLINED_FUNCTION_76();
  v25 = sub_1DA34C280();
  v1[86] = v25;
  OUTLINED_FUNCTION_0_12(v25);
  v1[87] = v26;
  v28 = *(v27 + 64);
  v1[88] = OUTLINED_FUNCTION_129();
  v1[89] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5910, &unk_1DA34E238);
  OUTLINED_FUNCTION_15_3(v29);
  v31 = *(v30 + 64);
  v1[90] = OUTLINED_FUNCTION_76();
  v32 = type metadata accessor for TellMeGeneratedSnippetModels();
  v1[91] = v32;
  OUTLINED_FUNCTION_15_3(v32);
  v34 = *(v33 + 64);
  v1[92] = OUTLINED_FUNCTION_129();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5848, qword_1DA34DF20);
  OUTLINED_FUNCTION_15_3(v35);
  v37 = *(v36 + 64);
  v1[97] = OUTLINED_FUNCTION_129();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v38 = type metadata accessor for SnippetResponseComponents();
  v1[105] = v38;
  OUTLINED_FUNCTION_15_3(v38);
  v40 = *(v39 + 64);
  v1[106] = OUTLINED_FUNCTION_76();
  v41 = type metadata accessor for ContextualRewriteResult();
  v1[107] = v41;
  OUTLINED_FUNCTION_15_3(v41);
  v43 = *(v42 + 64);
  v1[108] = OUTLINED_FUNCTION_129();
  v1[109] = swift_task_alloc();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10);
  OUTLINED_FUNCTION_15_3(v44);
  v46 = *(v45 + 64);
  v1[110] = OUTLINED_FUNCTION_129();
  v1[111] = swift_task_alloc();
  v47 = sub_1DA34BFB0();
  v1[112] = v47;
  OUTLINED_FUNCTION_0_12(v47);
  v1[113] = v48;
  v50 = *(v49 + 64);
  v1[114] = OUTLINED_FUNCTION_129();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v51 = sub_1DA34BFD0();
  v1[117] = v51;
  OUTLINED_FUNCTION_0_12(v51);
  v1[118] = v52;
  v54 = *(v53 + 64);
  v1[119] = OUTLINED_FUNCTION_76();
  v55 = sub_1DA34BFF0();
  v1[120] = v55;
  OUTLINED_FUNCTION_0_12(v55);
  v1[121] = v56;
  v58 = *(v57 + 64);
  v1[122] = OUTLINED_FUNCTION_76();
  v59 = sub_1DA34B940();
  v1[123] = v59;
  OUTLINED_FUNCTION_0_12(v59);
  v1[124] = v60;
  v62 = *(v61 + 64);
  v1[125] = OUTLINED_FUNCTION_76();
  v63 = sub_1DA34C540();
  v1[126] = v63;
  OUTLINED_FUNCTION_0_12(v63);
  v1[127] = v64;
  v66 = *(v65 + 64);
  v1[128] = OUTLINED_FUNCTION_76();
  v67 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v67, v68, v69);
}

uint64_t sub_1DA330C1C()
{
  OUTLINED_FUNCTION_59();
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v0[129] = __swift_project_value_buffer(v0[71], qword_1EE109060);
  v1 = sub_1DA34C8C0();
  v2 = sub_1DA34CD90();
  if (OUTLINED_FUNCTION_25_4(v2))
  {
    v3 = OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_9_3(v3);
    OUTLINED_FUNCTION_18_6();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_6_9();
  }

  v9 = v0[128];

  sub_1DA34C530();
  if (qword_1EE109790 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE10E038;

  return MEMORY[0x1EEE6DFA0](sub_1DA330D38, v10, 0);
}

uint64_t sub_1DA330D38()
{
  OUTLINED_FUNCTION_59();
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  sub_1DA311144();
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_102();
  v6(v5);
  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DA330DBC()
{
  v102 = v0;
  sub_1DA34C1F0();
  v1 = v0[29];
  v2 = v0[30];
  OUTLINED_FUNCTION_123(v0 + 26);
  OUTLINED_FUNCTION_68_1();
  v3 = sub_1DA34C300();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v7 = v0[125];
    v8 = v0[124];
    v9 = v0[123];
    sub_1DA34B930();
    v5 = sub_1DA34B920();
    v6 = v10;
    v11 = *(v8 + 8);
    v12 = OUTLINED_FUNCTION_68_1();
    v13(v12);
  }

  v0[131] = v6;
  v0[130] = v5;
  v14 = v0[70];
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  v15 = *(v14 + 296);
  v0[132] = v15;
  if (v15 && (v16 = v0[70], v17 = v16[38], (v0[133] = v17) != 0))
  {
    v18 = v0[129];
    v19 = v16[17];
    v20 = v16[18];
    v95 = v16;
    __swift_project_boxed_opaque_existential_1(v16 + 14, v19);
    v21 = *(v20 + 16);
    v22 = v15;
    v99 = v17;
    v21(v22, v19, v20);
    v23 = v22;
    v24 = sub_1DA34C8C0();
    v25 = sub_1DA34CD90();

    v97 = v23;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_37();
      v27 = swift_slowAlloc();
      v101 = v27;
      *v26 = 136315138;
      v28 = sub_1DA34C7E0();
      v30 = sub_1DA300D78(v28, v29, &v101);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DA2E0000, v24, v25, "DeviceExpertTellMeGeneratedFlow#execute - Search request utterance %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v31 = v0[122];
    v32 = v0[121];
    v33 = v0[120];
    v34 = v0[119];
    v35 = v0[118];
    v36 = v0[117];
    sub_1DA34C740();
    sub_1DA34BFE0();
    (*(v32 + 8))(v31, v33);
    v37 = sub_1DA34B980();
    v0[134] = v37;
    (*(v35 + 8))(v34, v36);
    v38 = v0[129];
    if (!*(v37 + 16))
    {

      v51 = sub_1DA34C8C0();
      v52 = sub_1DA34CDA0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_11_2();
        *v53 = 0;
        _os_log_impl(&dword_1DA2E0000, v51, v52, "DeviceExpertTellMeGeneratedFlow#execute() No results available", v53, 2u);
        OUTLINED_FUNCTION_15_8();
      }

      v54 = v0[80];
      v55 = v0[79];
      v56 = v0[78];
      v57 = v0[77];
      v58 = v0[76];
      v59 = v0[75];
      v91 = v0[74];
      v93 = v0[69];

      v60 = v95[18];
      __swift_project_boxed_opaque_existential_1(v95 + 14, v95[17]);
      sub_1DA34C1E0();
      (*(v55 + 104))(v54, *MEMORY[0x1E69CFDD0], v56);
      sub_1DA34C410();
      OUTLINED_FUNCTION_21();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
      (*(v59 + 104))(v58, *MEMORY[0x1E69CFC70], v91);
      sub_1DA3070C4(v54, v57, v58, 0);
      (*(v60 + 8))();

      sub_1DA34C2B0();

      sub_1DA3343E8();
      OUTLINED_FUNCTION_1_22();
      v74 = v0[104];
      v75 = v0[103];
      v76 = v0[102];
      v77 = v0[101];
      v78 = v0[100];
      v79 = v0[99];
      v80 = v0[98];
      v81 = v0[97];
      v82 = v0[96];
      v83 = v0[95];
      v84 = v0[94];
      v85 = v0[93];
      v86 = v0[92];
      v87 = v0[90];
      v88 = v0[89];
      v89 = v0[88];
      v90 = v0[85];
      v92 = v0[82];
      v94 = v0[80];
      v96 = v0[77];
      v98 = v0[76];
      v100 = v0[73];

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_96();

      __asm { BRAA            X1, X16 }
    }

    v39 = sub_1DA34C8C0();
    v40 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v40))
    {
      v41 = OUTLINED_FUNCTION_37();
      *v41 = 134217984;
      *(v41 + 4) = *(v37 + 16);

      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      OUTLINED_FUNCTION_6_9();
    }

    else
    {
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[135] = v67;
    *v67 = v68;
    v67[1] = sub_1DA3314EC;
    v69 = v0[111];
    v70 = v0[70];
    OUTLINED_FUNCTION_96();

    sub_1DA33453C(v71, v72);
  }

  else
  {
    v47 = v0[129];
    v48 = sub_1DA34C8C0();
    v49 = sub_1DA34CDA0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_11_2();
      *v50 = 0;
      _os_log_impl(&dword_1DA2E0000, v48, v49, "DeviceExpertTellMeGeneratedFlow#execute() Invalid pommes response or experience. Error executing request", v50, 2u);
      OUTLINED_FUNCTION_6();
    }

    sub_1DA34CFC0();
    OUTLINED_FUNCTION_96();
  }
}

uint64_t sub_1DA3314EC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 1080);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3315D0()
{
  v93 = v0;
  v2 = v0[112];
  v3 = v0[111];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v2);
  v5 = v0[134];
  if (EnumTagSinglePayload == 1)
  {
    v6 = v0[131];
    v7 = v0[129];

    sub_1DA2EF188(v3, &qword_1ECBA57C8, &unk_1DA34DA10);

    v8 = sub_1DA34C8C0();
    v9 = sub_1DA34CDA0();
    v10 = OUTLINED_FUNCTION_25_4(v9);
    v11 = v0[134];
    if (v10)
    {
      v12 = OUTLINED_FUNCTION_37();
      *v12 = 134217984;
      v13 = *(v11 + 16);

      *(v12 + 4) = v13;

      _os_log_impl(&dword_1DA2E0000, v8, v2, "DeviceExpertTellMeGeneratedFlow#execute() Unable to determine best result from candidates (%ld)", v12, 0xCu);
      OUTLINED_FUNCTION_15_8();
    }

    else
    {
      v28 = v0[134];
      swift_bridgeObjectRelease_n();
    }

    v87 = v0[133];
    v89 = v0[132];
    v29 = v0[80];
    v30 = v0[79];
    v31 = v0[78];
    v32 = v0[77];
    v33 = v0[76];
    v34 = v0[75];
    v85 = v0[74];
    v35 = v0[70];
    v86 = v0[69];
    v36 = v35[18];
    __swift_project_boxed_opaque_existential_1(v35 + 14, v35[17]);
    sub_1DA34C1E0();
    (*(v30 + 104))(v29, *MEMORY[0x1E69CFDD0], v31);
    sub_1DA34C410();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    (*(v34 + 104))(v33, *MEMORY[0x1E69CFC70], v85);
    sub_1DA3070C4(v29, v32, v33, 1);
    (*(v36 + 8))();

    sub_1DA34C2B0();

    sub_1DA3343E8();
    OUTLINED_FUNCTION_1_22();
    OUTLINED_FUNCTION_35_2();
    v88 = v0[76];
    v90 = v0[73];

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X1, X16 }
  }

  v14 = v0[116];
  v15 = v0[113];
  v16 = v0[70];
  v17 = v0[134];

  (*(v15 + 32))(v14, v3, v2);
  if (*(v16 + 240) == 1)
  {
    v18 = swift_task_alloc();
    v0[136] = v18;
    *v18 = v0;
    v18[1] = sub_1DA331DAC;
    v19 = v0[131];
    v20 = v0[130];
    v21 = v0[116];
    v22 = v0[70];
    OUTLINED_FUNCTION_115();

    return sub_1DA33BD24(v23, v24, v25);
  }

  if (qword_1EE109078 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  __swift_project_value_buffer(v0[71], qword_1EE109080);
  v43 = sub_1DA34C8C0();
  v44 = sub_1DA34CD90();
  if (OUTLINED_FUNCTION_25_4(v44))
  {
    OUTLINED_FUNCTION_37();
    v14 = OUTLINED_FUNCTION_130();
    *&v91[0] = v14;
    v45 = OUTLINED_FUNCTION_52_1(4.8149e-34);
    *(v5 + 4) = sub_1DA300D78(v45, 0xE900000000000029, v91);
    OUTLINED_FUNCTION_18_6();
    _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_6_9();
  }

  OUTLINED_FUNCTION_118();
  v51 = v14[2];
  v0[137] = v51;
  v52 = OUTLINED_FUNCTION_122();
  (v51)(v52);
  OUTLINED_FUNCTION_50_1();
  v51();
  if (qword_1EE109470 != -1)
  {
    OUTLINED_FUNCTION_12_7();
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_79_0(v53);
  if (!v54)
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    __swift_project_value_buffer(v0[71], qword_1EE109080);
    v58 = sub_1DA34C8C0();
    v59 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v59))
    {
      OUTLINED_FUNCTION_37();
      v60 = OUTLINED_FUNCTION_130();
      *&v91[0] = v60;
      v61 = OUTLINED_FUNCTION_52_1(4.8149e-34);
      *(v5 + 4) = sub_1DA300D78(v61, 0xE900000000000029, v91);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_6_9();
    }

    if (qword_1EE109E70 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    OUTLINED_FUNCTION_2_7();
    if (!v54)
    {
      goto LABEL_35;
    }

    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v67 = qword_1EE10E060;
    v68 = OUTLINED_FUNCTION_100();
    v69 = [v2 stringForKey_];

    if (v69)
    {
      v70 = v0[115];
      sub_1DA34CB40();
      OUTLINED_FUNCTION_89_0();

      OUTLINED_FUNCTION_68_1();
    }

    else
    {
LABEL_35:
      v71 = v0[115];
      sub_1DA34BFA0();
      v72 = static DeviceExpertPreferences.troubleshootingFlowClusterIDMap.getter();
      v73 = OUTLINED_FUNCTION_81_0();
      sub_1DA31A60C(v73, v74, v72);
      OUTLINED_FUNCTION_132();

      if (!v2)
      {
LABEL_38:
        OUTLINED_FUNCTION_29_7();
        swift_allocObject();
        v75 = OUTLINED_FUNCTION_93();
        OUTLINED_FUNCTION_133(v75);

        sub_1DA34BFA0();
        v76 = *(v1 + 16);
        v91[0] = *v1;
        v91[1] = v76;
        v91[2] = *(v1 + 32);
        v92 = *(v1 + 48);
        type metadata accessor for FlowContext();
        OUTLINED_FUNCTION_117();
        swift_allocObject();
        v77 = OUTLINED_FUNCTION_75_0();
        v0[141] = OUTLINED_FUNCTION_126(v77, v78, v79, v80, v81);
        swift_task_alloc();
        OUTLINED_FUNCTION_47();
        v0[142] = v82;
        *v82 = v83;
        OUTLINED_FUNCTION_13_7(v82);
        OUTLINED_FUNCTION_115();

        return sub_1DA2E8B8C();
      }

      OUTLINED_FUNCTION_110();
    }

    sub_1DA34BB20();
    goto LABEL_38;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[139] = v55;
  *v55 = v56;
  OUTLINED_FUNCTION_48_1(v55);
  OUTLINED_FUNCTION_115();

  return sub_1DA324EA8();
}

uint64_t sub_1DA331DAC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 1088);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA331E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_144();
  a25 = v30;
  a26 = v31;
  a24 = v28;
  OUTLINED_FUNCTION_118();
  v32 = *(v29 + 16);
  v28[137] = v32;
  v33 = OUTLINED_FUNCTION_122();
  (v32)(v33);
  OUTLINED_FUNCTION_50_1();
  v32();
  if (qword_1EE109470 != -1)
  {
    OUTLINED_FUNCTION_12_7();
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_79_0(v34);
  if (!v35)
  {
    if (qword_1EE109078 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    __swift_project_value_buffer(v28[71], qword_1EE109080);
    v40 = sub_1DA34C8C0();
    v41 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v41))
    {
      OUTLINED_FUNCTION_37();
      v42 = OUTLINED_FUNCTION_130();
      a9 = v42;
      v43 = OUTLINED_FUNCTION_52_1(4.8149e-34);
      *(v27 + 4) = sub_1DA300D78(v43, 0xE900000000000029, &a9);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_6_9();
    }

    if (qword_1EE109E70 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    OUTLINED_FUNCTION_2_7();
    if (!v35)
    {
      goto LABEL_20;
    }

    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v49 = qword_1EE10E060;
    v50 = OUTLINED_FUNCTION_100();
    v51 = [v26 stringForKey_];

    if (v51)
    {
      v52 = v28[115];
      sub_1DA34CB40();
      OUTLINED_FUNCTION_89_0();

      OUTLINED_FUNCTION_68_1();
    }

    else
    {
LABEL_20:
      v53 = v28[115];
      sub_1DA34BFA0();
      v54 = static DeviceExpertPreferences.troubleshootingFlowClusterIDMap.getter();
      v55 = OUTLINED_FUNCTION_81_0();
      sub_1DA31A60C(v55, v56, v54);
      OUTLINED_FUNCTION_132();

      if (!v26)
      {
LABEL_23:
        OUTLINED_FUNCTION_29_7();
        swift_allocObject();
        v57 = OUTLINED_FUNCTION_93();
        OUTLINED_FUNCTION_133(v57);

        sub_1DA34BFA0();
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_117();
        swift_allocObject();
        v58 = OUTLINED_FUNCTION_75_0();
        v28[141] = OUTLINED_FUNCTION_126(v58, v59, v60, v61, v62);
        swift_task_alloc();
        OUTLINED_FUNCTION_47();
        v28[142] = v63;
        *v63 = v64;
        OUTLINED_FUNCTION_13_7(v63);
        OUTLINED_FUNCTION_84_0();

        return sub_1DA2E8B8C();
      }

      OUTLINED_FUNCTION_110();
    }

    sub_1DA34BB20();
    goto LABEL_23;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v28[139] = v36;
  *v36 = v37;
  OUTLINED_FUNCTION_48_1(v36);
  OUTLINED_FUNCTION_84_0();

  return sub_1DA324EA8();
}

uint64_t sub_1DA3321A8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 1112);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA33228C()
{
  OUTLINED_FUNCTION_144();
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[115];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[109];
  v7 = v0[108];
  OUTLINED_FUNCTION_3_15();
  sub_1DA33AC64(v6, v8);
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_102();
  v11(v10);
  v12 = OUTLINED_FUNCTION_75_0();
  sub_1DA33AC04(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_81_0();
  v2(v15);
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_2_7();
  if (!v16)
  {
    goto LABEL_9;
  }

  if (qword_1EE109E78 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v17 = qword_1EE10E060;
  v18 = OUTLINED_FUNCTION_100();
  v19 = [v5 stringForKey_];

  if (v19)
  {
    v20 = v0[115];
    sub_1DA34CB40();
    OUTLINED_FUNCTION_89_0();

    OUTLINED_FUNCTION_68_1();
  }

  else
  {
LABEL_9:
    v21 = v0[115];
    sub_1DA34BFA0();
    v22 = static DeviceExpertPreferences.troubleshootingFlowClusterIDMap.getter();
    v23 = OUTLINED_FUNCTION_81_0();
    sub_1DA31A60C(v23, v24, v22);
    OUTLINED_FUNCTION_132();

    if (!v5)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_110();
  }

  sub_1DA34BB20();
LABEL_12:
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  v25 = OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_133(v25);

  sub_1DA34BFA0();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_117();
  swift_allocObject();
  v26 = OUTLINED_FUNCTION_75_0();
  v0[141] = OUTLINED_FUNCTION_126(v26, v27, v28, v29, v30);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[142] = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_13_7(v31);
  OUTLINED_FUNCTION_84_0();

  return sub_1DA2E8B8C();
}

uint64_t sub_1DA3324B0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 1136);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA332594()
{
  v116 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 808);
  v5 = *(v0 + 728);
  v6 = *(*(v0 + 840) + 20);
  *(v0 + 1224) = v6;
  sub_1DA2F00BC(v1 + v6, v2);
  v7 = OUTLINED_FUNCTION_81_0();
  sub_1DA2F00BC(v7, v8);
  sub_1DA2F00BC(v2, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v9 = *(v0 + 808);
    v10 = *(v0 + 728);
    sub_1DA2F00BC(*(v0 + 824), *(v0 + 816));
    if (OUTLINED_FUNCTION_134() != 1)
    {
      sub_1DA2EF188(*(v0 + 808), &qword_1ECBA5848, qword_1DA34DF20);
    }
  }

  else
  {
    v11 = *(v0 + 816);
    v12 = *(v0 + 808);
    v13 = *(v0 + 728);
    OUTLINED_FUNCTION_2_18();
    sub_1DA33AC04(v14, v11, v15);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  }

  v16 = *(v0 + 728);
  sub_1DA2F00BC(*(v0 + 816), *(v0 + 800));
  if (OUTLINED_FUNCTION_134() == 1)
  {
    v17 = *(v0 + 1048);
    v18 = *(v0 + 1032);
    v19 = *(v0 + 800);

    sub_1DA2EF188(v19, &qword_1ECBA5848, qword_1DA34DF20);
    v20 = sub_1DA34C8C0();
    v21 = sub_1DA34CDA0();
    if (OUTLINED_FUNCTION_25_4(v21))
    {
      v22 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v22);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_6_9();
    }

    v98 = *(v0 + 1128);
    v99 = *(v0 + 1120);
    v101 = *(v0 + 1064);
    v102 = *(v0 + 1056);
    v108 = *(v0 + 920);
    v109 = *(v0 + 928);
    v106 = *(v0 + 904);
    v107 = *(v0 + 896);
    v105 = *(v0 + 872);
    v111 = *(v0 + 848);
    v103 = *(v0 + 824);
    v104 = *(v0 + 832);
    v100 = *(v0 + 816);
    v28 = *(v0 + 640);
    v29 = *(v0 + 632);
    v30 = *(v0 + 616);
    v31 = *(v0 + 608);
    v32 = *(v0 + 600);
    v95 = *(v0 + 624);
    v96 = *(v0 + 592);
    v33 = *(v0 + 560);
    v97 = *(v0 + 552);

    v34 = v33[18];
    __swift_project_boxed_opaque_existential_1(v33 + 14, v33[17]);
    sub_1DA34C1E0();
    (*(v29 + 104))(v28, *MEMORY[0x1E69CFDD0], v95);
    sub_1DA34C410();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    (*(v32 + 104))(v31, *MEMORY[0x1E69CFC70], v96);
    sub_1DA3070C4(v28, v30, v31, 2);
    (*(v34 + 8))();

    sub_1DA34C2B0();

    OUTLINED_FUNCTION_50_1();
    sub_1DA2EF188(v39, v40, v41);
    OUTLINED_FUNCTION_50_1();
    sub_1DA2EF188(v42, v43, v44);
    OUTLINED_FUNCTION_50_1();
    sub_1DA2EF188(v45, v46, v47);
    OUTLINED_FUNCTION_3_15();
    sub_1DA33AC64(v105, v48);
    v49 = *(v106 + 8);
    v49(v108, v107);
    v49(v109, v107);
    OUTLINED_FUNCTION_7_9();
    sub_1DA33AC64(v111, v50);
    sub_1DA3343E8();
    OUTLINED_FUNCTION_1_22();
    OUTLINED_FUNCTION_35_2();
    v110 = *(v0 + 608);
    v112 = *(v0 + 584);

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_96();

    __asm { BRAA            X1, X16 }
  }

  v53 = *(v0 + 832);
  v54 = *(v0 + 800);
  v55 = *(v0 + 792);
  v56 = *(v0 + 768);
  v57 = *(v0 + 728);
  OUTLINED_FUNCTION_2_18();
  sub_1DA33AC04(v58, v59, v60);
  v61 = OUTLINED_FUNCTION_102();
  sub_1DA2F00BC(v61, v62);
  if (__swift_getEnumTagSinglePayload(v55, 1, v57) == 1)
  {
    sub_1DA2EF188(*(v0 + 792), &qword_1ECBA5848, qword_1DA34DF20);
  }

  else
  {
    v63 = *(v0 + 760);
    v64 = *(v0 + 728);
    v65 = OUTLINED_FUNCTION_102();
    sub_1DA30CD4C(v65, v66);
    OUTLINED_FUNCTION_68_1();
    v67 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
    OUTLINED_FUNCTION_19_8();
    sub_1DA33AC64(v63, v68);
    v69 = OUTLINED_FUNCTION_81_0();
    sub_1DA33AC64(v69, v70);
    if (v67 == 2)
    {
LABEL_17:
      v80 = *(v0 + 1104);
      v81 = *(v0 + 896);
      v82 = *(v0 + 880);
      v83 = *(v0 + 560);
      (*(v0 + 1096))(v82, *(v0 + 920), v81);
      __swift_storeEnumTagSinglePayload(v82, 0, 1, v81);
      FeedbackModel.init(result:)(v82, &v113);
      v84 = v114;
      v85 = v115;
      v86 = v83[39];
      v87 = v83[40];
      v88 = v83[41];
      v89 = v83[42];
      v83[39] = v113;
      *(v83 + 20) = v84;
      v83[42] = v85;
      sub_1DA338A04(v86, v87);
      goto LABEL_18;
    }
  }

  v71 = *(v0 + 728);
  sub_1DA2F00BC(*(v0 + 824), *(v0 + 784));
  if (OUTLINED_FUNCTION_134() == 1)
  {
    sub_1DA2EF188(*(v0 + 784), &qword_1ECBA5848, qword_1DA34DF20);
    goto LABEL_18;
  }

  v72 = *(v0 + 752);
  v73 = *(v0 + 728);
  v74 = OUTLINED_FUNCTION_102();
  sub_1DA30CD4C(v74, v75);
  OUTLINED_FUNCTION_68_1();
  v76 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  OUTLINED_FUNCTION_19_8();
  sub_1DA33AC64(v72, v77);
  v78 = OUTLINED_FUNCTION_81_0();
  sub_1DA33AC64(v78, v79);
  if (v76 == 2)
  {
    goto LABEL_17;
  }

LABEL_18:
  v90 = swift_task_alloc();
  *(v0 + 1144) = v90;
  *v90 = v0;
  v90[1] = sub_1DA332C44;
  v91 = *(v0 + 768);
  v92 = *(v0 + 560);
  OUTLINED_FUNCTION_96();

  return sub_1DA334F38();
}

uint64_t sub_1DA332C44()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v2 = v1;
  v4 = *(v3 + 1144);
  *v2 = *v0;
  *(v1 + 1152) = v5;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA332D30()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 776);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v78 = *(v0 + 1224);
  v5 = *(v0 + 696);
  v79 = *(v0 + 688);
  v80 = *(v0 + 720);
  v82 = *(v0 + 656);
  v83 = *(v0 + 680);
  v6 = *(v0 + 560);
  v81 = v6 + 25;
  v84 = *(v0 + 648);
  v85 = *(v0 + 728);
  sub_1DA34C2C0();
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1DA34C270();
  v11 = v6[39];
  *(v0 + 1160) = v11;
  v12 = v6[40];
  *(v0 + 1168) = v12;
  v13 = v6[41];
  *(v0 + 1176) = v13;
  v14 = v6[42];
  *(v0 + 1184) = v14;
  sub_1DA338978(v11, v12);
  sub_1DA2F00BC(v1 + v78, v2);
  (*(v5 + 16))(v4, v3, v79);
  v15 = swift_task_alloc();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = v1;
  *(v15 + 48) = v80;
  *(v15 + 56) = 2;
  *(v15 + 64) = v2;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  *&v17 = v13;
  *(&v17 + 1) = v14;
  *(v15 + 88) = v17;
  *(v15 + 72) = v16;
  *(v15 + 104) = v81;
  sub_1DA34C320();

  v18 = *(v84 + 48);
  sub_1DA2F00BC(v1, v82);
  sub_1DA2F00BC(v2, v82 + v18);
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v82, 1, v85);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82 + v18, 1, v85);
  v20 = EnumTagSinglePayload;
  if (v5 == 1)
  {
    if (EnumTagSinglePayload == 1)
    {
      v21 = *(v0 + 560);
      v22 = v21[28];
      v23 = v21[29];
      OUTLINED_FUNCTION_123(v21 + 25);
      v24 = *(MEMORY[0x1E69CFF70] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 1216) = v25;
      *v25 = v26;
      v25[1] = sub_1DA333E74;
      v27 = *(v0 + 1152);
      v28 = *(v0 + 680);
      OUTLINED_FUNCTION_141();

      return MEMORY[0x1EEE39990]();
    }

    v46 = *(v0 + 744);
    v47 = *(v0 + 728);
    v48 = *(v0 + 560);
    OUTLINED_FUNCTION_2_18();
    sub_1DA33AC04(v82 + v18, v46, v49);
    v50 = v48[28];
    v51 = v48[29];
    OUTLINED_FUNCTION_123(v48 + 25);
    *(v0 + 352) = v47;
    OUTLINED_FUNCTION_18_7();
    *(v0 + 360) = sub_1DA33ACBC(v52, 255, v53);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
    sub_1DA30CD4C(v46, boxed_opaque_existential_0);
    v55 = *(MEMORY[0x1E69CFF68] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 1208) = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_137(v56);
    goto LABEL_9;
  }

  v30 = *(v0 + 744);
  v31 = *(v0 + 656);
  OUTLINED_FUNCTION_2_18();
  sub_1DA33AC04(v32, v33, v34);
  if (v20 == 1)
  {
    v35 = *(v0 + 744);
    v36 = *(v0 + 728);
    v37 = *(v0 + 560);
    v38 = v37[28];
    v39 = v37[29];
    OUTLINED_FUNCTION_123(v37 + 25);
    *(v0 + 392) = v36;
    OUTLINED_FUNCTION_18_7();
    *(v0 + 400) = sub_1DA33ACBC(v40, 255, v41);
    v42 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
    sub_1DA30CD4C(v35, v42);
    v43 = *(MEMORY[0x1E69CFF68] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 1200) = v44;
    *v44 = v45;
    OUTLINED_FUNCTION_137(v44);
LABEL_9:
    OUTLINED_FUNCTION_141();

    return MEMORY[0x1EEE39988]();
  }

  v59 = *(v0 + 744);
  v60 = *(v0 + 736);
  v61 = *(v0 + 728);
  v62 = *(v0 + 560);
  OUTLINED_FUNCTION_2_18();
  sub_1DA33AC04(v82 + v18, v60, v63);
  v64 = v62[28];
  v65 = v62[29];
  OUTLINED_FUNCTION_123(v62 + 25);
  *(v0 + 432) = v61;
  OUTLINED_FUNCTION_18_7();
  v68 = sub_1DA33ACBC(v66, 255, v67);
  *(v0 + 440) = v68;
  v69 = __swift_allocate_boxed_opaque_existential_0((v0 + 408));
  sub_1DA30CD4C(v60, v69);
  *(v0 + 472) = v61;
  *(v0 + 480) = v68;
  v70 = __swift_allocate_boxed_opaque_existential_0((v0 + 448));
  sub_1DA30CD4C(v59, v70);
  v71 = *(MEMORY[0x1E69CFF60] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 1192) = v72;
  *v72 = v73;
  v72[1] = sub_1DA333254;
  v74 = *(v0 + 1152);
  v75 = *(v0 + 680);
  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE39980]();
}

uint64_t sub_1DA333254()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = v1;
  OUTLINED_FUNCTION_2_12();
  *v3 = v2;
  v5 = *(v4 + 1192);
  v6 = *(v4 + 1152);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 448));
  __swift_destroy_boxed_opaque_existential_1((v2 + 408));
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA3337F0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = v1;
  OUTLINED_FUNCTION_2_12();
  *v3 = v2;
  v5 = *(v4 + 1200);
  v6 = *(v4 + 1152);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 368));
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA333D74()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = v1;
  OUTLINED_FUNCTION_2_12();
  *v3 = v2;
  v5 = *(v4 + 1208);
  v6 = *(v4 + 1152);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 328));
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA333E74()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 1216);
  v3 = *(v1 + 1152);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3343E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1DA34CD30();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  if (qword_1EE109790 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE10E038;
  v6 = sub_1DA33ACBC(&qword_1EE109788, 255, type metadata accessor for TokenGeneratorActor);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_1DA302998(0, 0, v3, &unk_1DA350E20, v7);
}

uint64_t sub_1DA33453C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1DA34BFB0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA33460C, 0, 0);
}

uint64_t sub_1DA33460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, unint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_144();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  if (*(v26[3] + 16))
  {
    a14 = v26[3];

    sub_1DA338ADC(&a14);
    v35 = a14;
    v26[9] = a14;
    v36 = *(v35 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v38 = v26[6];
      a14 = MEMORY[0x1E69E7CC0];
      sub_1DA34CF40();
      v39 = *(v38 + 16);
      v38 += 16;
      a10 = v35;
      v40 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
      a11 = *(v38 + 56);
      a12 = v39;
      a13 = v38;
      v41 = (v38 - 8);
      do
      {
        v42 = v26[8];
        v43 = v26[5];
        a12(v42, v40, v43);
        sub_1DA34BD10();
        sub_1DA34BF20();
        v44 = objc_allocWithZone(sub_1DA34C980());
        sub_1DA34C970();
        (*v41)(v42, v43);
        sub_1DA34CF20();
        v45 = *(a14 + 16);
        sub_1DA34CF50();
        sub_1DA34CF60();
        sub_1DA34CF30();
        v40 += a11;
        --v36;
      }

      while (v36);
      v37 = a14;
    }

    v26[10] = v37;
    if (sub_1DA323DCC(v37))
    {
      sub_1DA323DE0(0, (v37 & 0xC000000000000001) == 0, v37);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1DA74A960](0, v37);
      }

      else
      {
        v46 = *(v37 + 32);
      }

      v47 = v46;
      v26[11] = v46;
      if (sub_1DA34C960())
      {
        v48 = *(v26[4] + 56);
        v49 = *(MEMORY[0x1E69DA3B0] + 4);
        v50 = swift_task_alloc();
        v26[12] = v50;
        *v50 = v26;
        v50[1] = sub_1DA33497C;
        OUTLINED_FUNCTION_84_0();

        return MEMORY[0x1EEE49B00](v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }
    }

    else
    {
    }

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v59 = sub_1DA34C8E0();
    __swift_project_value_buffer(v59, qword_1EE109060);
    v60 = sub_1DA34C8C0();
    v61 = sub_1DA34CD90();
    if (OUTLINED_FUNCTION_25_4(v61))
    {
      v62 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v62);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      OUTLINED_FUNCTION_6_9();
    }

    v69 = v26[2];
    v68 = v26[3];

    sub_1DA330318(v68, v69);
  }

  else
  {
    v29 = v26[5];
    v30 = v26[2];
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  v71 = v26[7];
  v70 = v26[8];

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_84_0();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DA33497C()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *(v5 + 80);
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  v3[13] = v10;
  v3[14] = v11;
  v3[15] = v0;

  if (v0)
  {
    v12 = v3[9];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DA334AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_60();
  a18 = v21;
  v24 = *(v21 + 112);
  if (v24)
  {
    if (qword_1EE109058 != -1)
    {
LABEL_28:
      OUTLINED_FUNCTION_1_0();
    }

    v25 = sub_1DA34C8E0();
    OUTLINED_FUNCTION_46_1(v25, qword_1EE109060);

    v26 = sub_1DA34C8C0();
    sub_1DA34CD90();
    OUTLINED_FUNCTION_77_0();

    if (OUTLINED_FUNCTION_73())
    {
      v27 = *(v21 + 104);
      v28 = OUTLINED_FUNCTION_37();
      v29 = swift_slowAlloc();
      a9 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DA300D78(v27, v24, &a9);
      _os_log_impl(&dword_1DA2E0000, v26, v20, "DeviceExpertTellMeGeneratedFlow#findBestResults - %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_23();
    }

    v30 = 0;
    v31 = *(v21 + 48);
    v32 = *(*(v21 + 72) + 16);
    while (1)
    {
      if (v32 == v30)
      {
        v53 = *(v21 + 88);
        v54 = *(v21 + 72);
        v55 = *(v21 + 40);
        v56 = *(v21 + 16);

        OUTLINED_FUNCTION_21();
        v58 = v55;
        goto LABEL_24;
      }

      v33 = *(v21 + 72);
      if (v30 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v35 = *(v21 + 104);
      v34 = *(v21 + 112);
      (*(v31 + 16))(*(v21 + 56), v33 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, *(v21 + 40));
      if (sub_1DA34BD10() == v35 && v34 == v36)
      {
        v59 = *(v21 + 72);

        goto LABEL_22;
      }

      v38 = *(v21 + 104);
      v20 = sub_1DA34D160();

      if (v20)
      {
        break;
      }

      (*(v31 + 8))(*(v21 + 56), *(v21 + 40));
      ++v30;
    }

    v60 = *(v21 + 72);
LABEL_22:

    v62 = *(v21 + 48);
    v61 = *(v21 + 56);
    v49 = *(v21 + 40);
    v63 = *(v21 + 16);

    v64 = *(v62 + 32);
    OUTLINED_FUNCTION_50_1();
    v65();
    v51 = v63;
    v52 = 0;
  }

  else
  {
    v39 = *(v21 + 72);

    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v40 = sub_1DA34C8E0();
    __swift_project_value_buffer(v40, qword_1EE109060);
    v41 = sub_1DA34C8C0();
    v42 = sub_1DA34CDA0();
    if (OUTLINED_FUNCTION_25_4(v42))
    {
      v43 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_9_3(v43);
      OUTLINED_FUNCTION_18_6();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_6_9();
    }

    v49 = *(v21 + 40);
    v50 = *(v21 + 16);

    v51 = v50;
    v52 = 1;
  }

  v57 = 1;
  v58 = v49;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v51, v52, v57, v58);
  v67 = *(v21 + 56);
  v66 = *(v21 + 64);

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12);
}

uint64_t sub_1DA334DDC()
{
  OUTLINED_FUNCTION_2_6();
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v1 = v0[15];
  v2 = sub_1DA34C8E0();
  v3 = OUTLINED_FUNCTION_46_1(v2, qword_1EE109060);
  v4 = sub_1DA34C8C0();
  sub_1DA34CDA0();

  v5 = OUTLINED_FUNCTION_73();
  v6 = v0[15];
  v7 = v0[11];
  if (v5)
  {
    OUTLINED_FUNCTION_37();
    v8 = OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_113(5.7779e-34);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_80_0(v9);
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v10, v11, "DeviceExpertTellMeGeneratedFlow#findBestResults - Error evaluating best result: %@");
    sub_1DA2EF188(v8, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_15_8();
  }

  else
  {
  }

  v12 = v0[5];
  v13 = v0[2];
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v19 = v0[7];
  v18 = v0[8];

  OUTLINED_FUNCTION_15();

  return v20();
}

uint64_t sub_1DA334F38()
{
  OUTLINED_FUNCTION_16();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for TroubleshootingSnippetModel();
  OUTLINED_FUNCTION_15_3(v3);
  v5 = *(v4 + 64);
  v1[11] = OUTLINED_FUNCTION_76();
  v6 = type metadata accessor for TipSnippetModel(0);
  v1[12] = v6;
  OUTLINED_FUNCTION_15_3(v6);
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_76();
  v9 = type metadata accessor for SummarizedAnswerSnippetModel();
  v1[14] = v9;
  OUTLINED_FUNCTION_15_3(v9);
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_76();
  v12 = type metadata accessor for ListStyleAnswerSnippetModel();
  v1[16] = v12;
  OUTLINED_FUNCTION_15_3(v12);
  v14 = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_76();
  v15 = type metadata accessor for LearnMoreSnippetModel();
  OUTLINED_FUNCTION_15_3(v15);
  v17 = *(v16 + 64);
  v1[18] = OUTLINED_FUNCTION_76();
  v18 = type metadata accessor for TellMeGeneratedSnippetModels();
  v1[19] = v18;
  OUTLINED_FUNCTION_15_3(v18);
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_76();
  v21 = OUTLINED_FUNCTION_7();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1DA335060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v12 = v10[19];
  sub_1DA30CD4C(v10[9], v10[20]);
  OUTLINED_FUNCTION_102();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v37 = v10[18];
      OUTLINED_FUNCTION_131(v10[20]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      sub_1DA34C0F0();
      v38 = v10[8];
      sub_1DA346FE8();
      OUTLINED_FUNCTION_89_0();

      v10[21] = v11;
      v35 = swift_task_alloc();
      v10[22] = v35;
      *v35 = v10;
      v36 = sub_1DA335538;
      goto LABEL_19;
    case 2u:
      v31 = v10[16];
      v32 = v10[17];
      OUTLINED_FUNCTION_131(v10[20]);
      v33 = *(v31 + 20);
      v10[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      sub_1DA34C0F0();
      v34 = v10[5];
      sub_1DA346FE8();
      OUTLINED_FUNCTION_89_0();

      v10[26] = v11;
      v35 = swift_task_alloc();
      v10[27] = v35;
      *v35 = v10;
      v36 = sub_1DA335774;
      goto LABEL_19;
    case 3u:
      v53 = v10[14];
      v54 = v10[15];
      OUTLINED_FUNCTION_131(v10[20]);
      v55 = *(v53 + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
      sub_1DA34C0F0();
      v56 = v10[4];
      sub_1DA346FE8();
      OUTLINED_FUNCTION_89_0();

      v10[40] = v11;
      v35 = swift_task_alloc();
      v10[41] = v35;
      *v35 = v10;
      v36 = sub_1DA335ECC;
LABEL_19:
      v35[1] = v36;
      v57 = v10[10];
      OUTLINED_FUNCTION_68_1();
      goto LABEL_20;
    case 5u:
      v40 = v10[12];
      v39 = v10[13];
      OUTLINED_FUNCTION_131(v10[20]);
      objc_opt_self();
      v41 = *(v40 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59E8, &unk_1DA34E618);
      sub_1DA34C0F0();
      sub_1DA33DB8C(v10[3]);

      v42 = OUTLINED_FUNCTION_12_5();
      sub_1DA2F8590(v42, v43);
      v10[44] = v44;
      v45 = swift_task_alloc();
      v10[45] = v45;
      *v45 = v10;
      OUTLINED_FUNCTION_103(v45);
      OUTLINED_FUNCTION_12_5();
LABEL_20:
      OUTLINED_FUNCTION_65();

      return sub_1DA337924(v58, v59, v60);
    case 6u:
      v46 = v10[11];
      OUTLINED_FUNCTION_131(v10[20]);
      v47 = *v46;
      v48 = v46[1];
      v49 = swift_task_alloc();
      v10[48] = v49;
      *v49 = v10;
      OUTLINED_FUNCTION_103(v49);
      OUTLINED_FUNCTION_68_1();
      OUTLINED_FUNCTION_65();

      return sub_1DA338488(v50, v51);
    default:
      v13 = v10[20];
      OUTLINED_FUNCTION_4_18();
      result = sub_1DA33AC64(v14, v15);
      v17 = 0;
      v18 = *(v11 + 16);
      v19 = v18;
      break;
  }

  while (v18 != v17)
  {
    if (v17 >= v19)
    {
      __break(1u);
      return result;
    }

    v20 = *(v11 + 8 * v17++ + 32);
    if (v20)
    {
      v21 = v20;
      OUTLINED_FUNCTION_114();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DA34CC80();
      }

      result = sub_1DA34CCB0();
      v19 = *(v11 + 16);
    }
  }

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_65();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, v11, a10);
}

uint64_t sub_1DA335538()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *(v4 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v10 + 184) = v9;
  *(v10 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA335774()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *(v4 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v10 + 224) = v9;
  *(v10 + 232) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA335890()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v1)
  {
    OUTLINED_FUNCTION_65_1();
  }

  v2 = v0[28];
  v4 = v0[16];
  v3 = v0[17];
  OUTLINED_FUNCTION_124();
  v0[30] = v0[2];
  v5 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6058, &qword_1DA352DC0);
  sub_1DA34C0F0();
  v6 = v0[6];
  v7 = *(v6 + 16);
  if (v7)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DA348A4C(0, v7, 0);
    v8 = 32;
    v9 = v26;
    do
    {
      v10 = *(v6 + v8);

      sub_1DA346FE8();
      v12 = v11;
      v14 = v13;

      v16 = *(v26 + 16);
      v15 = *(v26 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1DA348A4C(v15 > 1, v16 + 1, 1);
      }

      *(v26 + 16) = v16 + 1;
      v17 = v26 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v18 = v0[6];

    v9 = MEMORY[0x1E69E7CC0];
  }

  v0[31] = v9;
  v19 = *(v0[17] + *(v0[16] + 44));
  v20 = swift_task_alloc();
  v0[32] = v20;
  *v20 = v0;
  v20[1] = sub_1DA335A58;
  v21 = v0[10];
  OUTLINED_FUNCTION_27();

  return sub_1DA337DE8(v22, v23);
}

uint64_t sub_1DA335A58()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *(v5 + 248);
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  v3[33] = v10;
  v3[34] = v0;

  if (v0)
  {
    v11 = v3[30];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA335B80()
{
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x1DA74A6E0]();
  OUTLINED_FUNCTION_30_6();
  if (v1)
  {
    OUTLINED_FUNCTION_65_1();
  }

  v2 = v0[33];
  v3 = v0[25];
  v5 = v0[16];
  v4 = v0[17];
  OUTLINED_FUNCTION_124();
  v0[35] = v0[2];
  v6 = v4 + *(v5 + 28);
  sub_1DA34C0F0();
  v7 = v0[7];
  sub_1DA346FE8();
  OUTLINED_FUNCTION_89_0();

  v0[36] = v3;
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_103(v8);
  v9 = OUTLINED_FUNCTION_68_1();

  return sub_1DA337924(v9, v10, 0);
}

uint64_t sub_1DA335C84()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *(v5 + 288);
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  v3[38] = v10;
  v3[39] = v0;

  if (v0)
  {
    v11 = v3[35];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA335ECC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *(v4 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v10 + 336) = v9;
  *(v10 + 344) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA336108()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = *(v4 + 360);
  v6 = *(v4 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v10 + 368) = v9;
  *(v10 + 376) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA336344()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4_14();
  *v3 = v2;
  v5 = *(v4 + 384);
  *v3 = *v1;
  *(v2 + 392) = v6;
  *(v2 + 400) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3371A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA3371C8, 0, 0);
}

uint64_t sub_1DA3371C8()
{
  OUTLINED_FUNCTION_16();
  sub_1DA2EEF28(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_1DA337224(uint64_t a1)
{
  v2 = sub_1DA34C3D0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v47 = v4;
  v48 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = sub_1DA34C3E0();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v46 - v17);
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v19 = sub_1DA34C8E0();
  __swift_project_value_buffer(v19, qword_1EE109060);
  v20 = sub_1DA34C8C0();
  v21 = sub_1DA34CD90();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_11_2();
    *v22 = 0;
    _os_log_impl(&dword_1DA2E0000, v20, v21, "DeviceExpertTellMeGeneratedFlow#onInput", v22, 2u);
    OUTLINED_FUNCTION_6();
  }

  sub_1DA34C3C0();
  if ((*(v13 + 88))(v18, v10) == *MEMORY[0x1E69D0138])
  {
    (*(v13 + 96))(v18, v10);
    v23 = *v18;
    v24 = sub_1DA34C7D0();
    if (sub_1DA323DCC(v24))
    {
      sub_1DA323DE0(0, (v24 & 0xC000000000000001) == 0, v24);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1DA74A960](0, v24);
      }

      else
      {
        v25 = *(v24 + 32);
      }

      v26 = v25;

      sub_1DA34C750();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v28 = v27;
        v29 = v46;
        v30 = *(v46 + 296);
        *(v46 + 296) = v23;

        v31 = *(v29 + 304);
        *(v29 + 304) = v28;

        return 1;
      }
    }

    else
    {
    }

    v43 = sub_1DA34C8C0();
    v44 = sub_1DA34CDA0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_11_2();
      *v45 = 0;
      _os_log_impl(&dword_1DA2E0000, v43, v44, "DeviceExpertTellMeGeneratedFlow#onInput - Unexpected experience in pommes", v45, 2u);
      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    (*(v13 + 8))(v18, v10);
    v34 = v47;
    v33 = v48;
    (*(v47 + 16))(v9, a1, v48);
    v35 = sub_1DA34C8C0();
    v36 = sub_1DA34CDA0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_37();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136315138;
      sub_1DA34C3C0();
      v39 = sub_1DA34CBA0();
      v41 = v40;
      (*(v34 + 8))(v9, v33);
      v42 = sub_1DA300D78(v39, v41, &v49);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1DA2E0000, v35, v36, "DeviceExpertTellMeGeneratedFlow#onInput - Parse is of unexpected type: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      (*(v34 + 8))(v9, v33);
    }
  }

  return 0;
}

uint64_t DeviceExpertTellMeGeneratedFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v3 = *(v0 + 192);

  sub_1DA33A6F8(v0 + 200);
  v4 = *(v0 + 248);

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  sub_1DA338A04(*(v0 + 312), *(v0 + 320));
  return v0;
}

uint64_t DeviceExpertTellMeGeneratedFlow.__deallocating_deinit()
{
  DeviceExpertTellMeGeneratedFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA337778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E69CFA78] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DA32392C;

  return MEMORY[0x1EEE391E8](a1, a2, a3);
}

uint64_t sub_1DA33784C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA2E8A9C;

  return sub_1DA3306BC();
}

uint64_t sub_1DA3378E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceExpertTellMeGeneratedFlow();

  return MEMORY[0x1EEE391F0](v3, a2);
}

uint64_t sub_1DA337924(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 96) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = sub_1DA34C600();
  *(v4 + 48) = v6;
  v7 = *(v6 - 8);
  *(v4 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA337A24, 0, 0);
}

uint64_t sub_1DA337A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 24);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(v10 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v14 = *(v10 + 56);
    v13 = *(v10 + 64);
    v16 = *(v10 + 40);
    v15 = *(v10 + 48);
    v17 = *(v10 + 32);
    v18 = *(v10 + 24);

    sub_1DA34C5F0();
    v19 = *(v17 + 64);
    (*(v14 + 16))(v16, v13, v15);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v15);
    v20 = swift_task_alloc();
    *(v10 + 72) = v20;
    *v20 = v10;
    v20[1] = sub_1DA337B8C;
    v21 = *(v10 + 40);
    v22 = *(v10 + 96);
    OUTLINED_FUNCTION_65();

    return sub_1DA3082D4();
  }

  else
  {
LABEL_8:
    v25 = *(v10 + 64);
    v26 = *(v10 + 40);

    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_65();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

uint64_t sub_1DA337B8C()
{
  OUTLINED_FUNCTION_2_6();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *(v4 + 72);
  *v6 = *v1;
  *(v5 + 80) = v0;

  v8 = *(v4 + 40);
  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  sub_1DA2EF188(v8, &qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA337CE4()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v2 = v0[8];
  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_14_7();

  return v5(v4);
}

uint64_t sub_1DA337D68()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_15();
  v3 = v0[10];

  return v2();
}

uint64_t sub_1DA337DE8(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1DA34C600();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA337EAC, 0, 0);
}

uint64_t sub_1DA337EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_60();
  v13 = *(v12 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = sub_1DA338630(1, *(v13 + 16));
    v16 = v15[2];
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1DA348A8C(0, v16, 0);
      v18 = v52;
      v19 = *(v52 + 16);
      v20 = 4;
      do
      {
        v21 = v15[v20];
        v22 = *(v52 + 24);
        if (v19 >= v22 >> 1)
        {
          sub_1DA348A8C(v22 > 1, v19 + 1, 1);
        }

        *(v52 + 16) = v19 + 1;
        *(v52 + 8 * v19 + 32) = v21;
        ++v20;
        ++v19;
        --v16;
      }

      while (v16);

      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    *(v12 + 56) = v18;
    v33 = *(v12 + 40);
    v34 = *(v12 + 16);
    sub_1DA3489F4();
    v35 = (v34 + 40);
    do
    {
      v36 = *(v12 + 48);
      v37 = *(v35 - 1);
      v38 = *v35;

      sub_1DA34C5F0();
      v39 = *(v17 + 16);
      if (v39 >= *(v17 + 24) >> 1)
      {
        sub_1DA3489F4();
      }

      *(v12 + 64) = v17;
      v40 = *(v12 + 48);
      v41 = *(v12 + 32);
      *(v17 + 16) = v39 + 1;
      (*(v33 + 32))(v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v39, v40, v41);
      v35 += 2;
      --v14;
    }

    while (v14);
    v42 = *(v12 + 24);
    if (*(v12 + 88) == 1)
    {
      v43 = *(v42 + 64);
      v44 = swift_task_alloc();
      *(v12 + 72) = v44;
      *v44 = v12;
      v44[1] = sub_1DA3381BC;
      OUTLINED_FUNCTION_27();

      return sub_1DA30864C(v45, v46);
    }

    else
    {

      v48 = *(v42 + 64);
      v49 = swift_task_alloc();
      *(v12 + 80) = v49;
      *v49 = v12;
      v49[1] = sub_1DA338330;
      OUTLINED_FUNCTION_27();

      return sub_1DA308010(v50);
    }
  }

  else
  {
    v23 = *(v12 + 48);

    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_27();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

uint64_t sub_1DA3381BC()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v3 + 48);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    v14 = *(v3 + 48);

    v15 = OUTLINED_FUNCTION_139();

    return v16(v15);
  }
}

uint64_t sub_1DA338330()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;

  if (v0)
  {
    v10 = *(v3 + 48);

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v13 = *(v3 + 48);

    v14 = OUTLINED_FUNCTION_139();

    return v15(v14);
  }
}

uint64_t sub_1DA338488(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3384AC, 0, 0);
}

uint64_t sub_1DA3384AC()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0[4] + 64);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DA338544;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1DA32446C(v4, v3);
}

uint64_t sub_1DA338544()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  OUTLINED_FUNCTION_60_0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

void *sub_1DA338630(void *result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        v6 = sub_1DA2FC70C(v2 + 1, 0);
        if (sub_1DA33A040(&v7, (v6 + 4), v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3386C0(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v5 = sub_1DA34C870();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v14 = sub_1DA34C830();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_4();
  v22 = v21 - v20;
  v23 = sub_1DA34C850();
  sub_1DA34C880();
  v29 = sub_1DA34CDE0();
  result = sub_1DA34CE10();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v17 + 8))(v22, v14);
  }

  if ((a4 & 1) == 0)
  {
    v25 = a2;
    if (a2)
    {
LABEL_9:

      sub_1DA34C8B0();

      if ((*(v8 + 88))(v13, v5) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v13, v5);
        v26 = "";
      }

      v27 = OUTLINED_FUNCTION_11_2();
      *v27 = 0;
      v28 = sub_1DA34C810();
      _os_signpost_emit_with_name_impl(&dword_1DA2E0000, v23, v29, v28, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_6();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {
      v25 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1DA338924(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1DA338948@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA338978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DA338A04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DA338A48()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DA2E8A9C;

  return sub_1DA3371A8(v3, v0 + 16);
}

uint64_t sub_1DA338ADC(uint64_t *a1)
{
  v2 = *(sub_1DA34BFB0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA33A0DC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1DA338B84(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1DA338B84(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DA34D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DA34BFB0();
        v6 = sub_1DA34CCA0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DA34BFB0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DA338F4C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DA338CB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DA338CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DA34BFB0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v36 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v15 + 16);
    v48 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v44 = (v15 + 32);
    v45 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v41 = v20;
      v42 = a3;
      v39 = v22;
      v40 = v21;
      v23 = v21;
      v24 = v20;
      do
      {
        v25 = v49;
        v26 = v47;
        v47(v49, v22, v8);
        v27 = v50;
        v26(v50, v24, v8);
        sub_1DA34BD60();
        v29 = v28;
        sub_1DA34BD60();
        v31 = v30;
        v32 = *v19;
        (*v19)(v27, v8);
        result = v32(v25, v8);
        if (v31 >= v29)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v33 = *v44;
        v34 = v46;
        (*v44)(v46, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v33)(v24, v34, v8);
        v24 += v43;
        v22 += v43;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v42 + 1;
      v20 = v41 + v37;
      v21 = v40 - 1;
      v22 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DA338F4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v6 = sub_1DA34BFB0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v134 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v129 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v150 = &v129 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v129 - v15;
  v139 = v14;
  v140 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v150 = *v131;
    if (!v150)
    {
      goto LABEL_145;
    }

    a3 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v142;
    if (isUniquelyReferenced_nonNull_native)
    {
      v121 = a3;
LABEL_106:
      a3 = (v121 + 16);
      v122 = *(v121 + 2);
      while (v122 >= 2)
      {
        if (!*v140)
        {
          goto LABEL_142;
        }

        v123 = v121;
        v124 = &v121[16 * v122];
        v125 = *v124;
        v126 = (a3 + 16 * v122);
        v127 = v126[1];
        sub_1DA339934(&(*v140)[*(v139 + 72) * *v124], &(*v140)[*(v139 + 72) * *v126], &(*v140)[*(v139 + 72) * v127], v150);
        if (v17)
        {
          break;
        }

        if (v127 < v125)
        {
          goto LABEL_130;
        }

        if (v122 - 2 >= *a3)
        {
          goto LABEL_131;
        }

        *v124 = v125;
        *(v124 + 1) = v127;
        v128 = *a3 - v122;
        if (*a3 < v122)
        {
          goto LABEL_132;
        }

        v122 = *a3 - 1;
        memmove(v126, v126 + 2, 16 * v128);
        *a3 = v122;
        v121 = v123;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v121 = sub_1DA339E4C(a3);
    goto LABEL_106;
  }

  v129 = a4;
  v17 = 0;
  v147 = (v14 + 8);
  v148 = v14 + 16;
  v146 = (v14 + 32);
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17++;
    if (v17 < v16)
    {
      v20 = v19;
      v21 = *(v14 + 72);
      v22 = &(*v140)[v21 * v17];
      v145 = *v140;
      v23 = v145;
      v24 = *(v14 + 16);
      v25 = v149;
      v138 = v18;
      v141 = v16;
      v24(v149, &v145[v21 * v17], v6);
      v26 = &v23[v21 * v19];
      v27 = v150;
      v137 = v24;
      v24(v150, v26, v6);
      sub_1DA34BD60();
      v29 = v28;
      sub_1DA34BD60();
      v31 = v30;
      v32 = *(v139 + 8);
      v33 = v27;
      a3 = v147;
      v32(v33, v6);
      v136 = v32;
      v32(v25, v6);
      v34 = v141;
      v18 = v138;
      v130 = v20;
      v35 = v20 + 2;
      v143 = v21;
      v36 = &v145[v21 * (v20 + 2)];
      while (1)
      {
        v37 = v35;
        v38 = v17 + 1;
        if (v38 >= v34)
        {
          break;
        }

        LODWORD(v145) = v31 < v29;
        v39 = v149;
        v40 = v137;
        (v137)(v149, v36, v6, v18);
        v41 = v38;
        v42 = v150;
        v40(v150, v22, v6);
        sub_1DA34BD60();
        v44 = v43;
        sub_1DA34BD60();
        v46 = v45;
        v47 = v42;
        v17 = v41;
        a3 = v147;
        v48 = v136;
        (v136)(v47, v6);
        v48(v39, v6);
        v34 = v141;
        v18 = v138;
        v36 = &v143[v36];
        v22 += v143;
        v35 = v37 + 1;
        if (((v145 ^ (v46 >= v44)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v17 = v34;
LABEL_9:
      if (v31 >= v29)
      {
        v14 = v139;
      }

      else
      {
        v19 = v130;
        if (v17 < v130)
        {
          goto LABEL_136;
        }

        if (v130 >= v17)
        {
          v14 = v139;
          goto LABEL_32;
        }

        if (v34 >= v37)
        {
          v49 = v37;
        }

        else
        {
          v49 = v34;
        }

        a3 = v143 * (v49 - 1);
        v50 = v130;
        v51 = v143 * v49;
        v52 = v130 * v143;
        v53 = v17;
        do
        {
          if (v50 != --v53)
          {
            v54 = *v140;
            if (!*v140)
            {
              goto LABEL_143;
            }

            v145 = *v146;
            (v145)(v134, &v54[v52], v6, v18);
            v55 = v52 < a3 || &v54[v52] >= &v54[v51];
            if (v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v145)(&v54[a3], v134, v6);
          }

          ++v50;
          a3 -= v143;
          v51 -= v143;
          v52 += v143;
        }

        while (v50 < v53);
        v18 = v138;
        v14 = v139;
      }

      v19 = v130;
    }

LABEL_32:
    v56 = v140[1];
    if (v17 < v56)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_135;
      }

      if (v17 - v19 < v129)
      {
        break;
      }
    }

LABEL_48:
    if (v17 < v19)
    {
      goto LABEL_134;
    }

    v75 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v75;
    }

    else
    {
      sub_1DA2FC504(0, *(v75 + 16) + 1, 1, v75);
      v18 = v118;
    }

    a3 = *(v18 + 16);
    v76 = *(v18 + 24);
    v77 = a3 + 1;
    if (a3 >= v76 >> 1)
    {
      sub_1DA2FC504(v76 > 1, a3 + 1, 1, v18);
      v18 = v119;
    }

    *(v18 + 16) = v77;
    v78 = v18 + 32;
    v79 = (v18 + 32 + 16 * a3);
    *v79 = v19;
    v79[1] = v17;
    v145 = *v131;
    if (!v145)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v141 = v17;
      while (1)
      {
        v80 = v77 - 1;
        v81 = (v78 + 16 * (v77 - 1));
        v82 = (v18 + 16 * v77);
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v83 = *(v18 + 32);
          v84 = *(v18 + 40);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_69:
          if (v86)
          {
            goto LABEL_121;
          }

          v98 = *v82;
          v97 = v82[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_124;
          }

          v102 = v81[1];
          v103 = v102 - *v81;
          if (__OFSUB__(v102, *v81))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v100, v103))
          {
            goto LABEL_129;
          }

          if (v100 + v103 >= v85)
          {
            if (v85 < v103)
            {
              v80 = v77 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v77 < 2)
        {
          goto LABEL_123;
        }

        v105 = *v82;
        v104 = v82[1];
        v93 = __OFSUB__(v104, v105);
        v100 = v104 - v105;
        v101 = v93;
LABEL_84:
        if (v101)
        {
          goto LABEL_126;
        }

        v107 = *v81;
        v106 = v81[1];
        v93 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v93)
        {
          goto LABEL_128;
        }

        if (v108 < v100)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v80 - 1 >= v77)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v140)
        {
          goto LABEL_141;
        }

        v17 = v18;
        a3 = v78 + 16 * (v80 - 1);
        v112 = *a3;
        v113 = v80;
        v114 = (v78 + 16 * v80);
        v115 = v114[1];
        v116 = v142;
        sub_1DA339934(&(*v140)[*(v139 + 72) * *a3], &(*v140)[*(v139 + 72) * *v114], &(*v140)[*(v139 + 72) * v115], v145);
        v142 = v116;
        if (v116)
        {
          goto LABEL_114;
        }

        if (v115 < v112)
        {
          goto LABEL_116;
        }

        v117 = *(v17 + 16);
        if (v113 > v117)
        {
          goto LABEL_117;
        }

        *a3 = v112;
        *(a3 + 8) = v115;
        if (v113 >= v117)
        {
          goto LABEL_118;
        }

        v77 = v117 - 1;
        memmove(v114, v114 + 2, 16 * (v117 - 1 - v113));
        v18 = v17;
        *(v17 + 16) = v117 - 1;
        v17 = v141;
        if (v117 <= 2)
        {
          goto LABEL_98;
        }
      }

      v87 = v78 + 16 * v77;
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_119;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_120;
      }

      v94 = v82[1];
      v95 = v94 - *v82;
      if (__OFSUB__(v94, *v82))
      {
        goto LABEL_122;
      }

      v93 = __OFADD__(v85, v95);
      v96 = v85 + v95;
      if (v93)
      {
        goto LABEL_125;
      }

      if (v96 >= v90)
      {
        v110 = *v81;
        v109 = v81[1];
        v93 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v93)
        {
          goto LABEL_133;
        }

        if (v85 < v111)
        {
          v80 = v77 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v14 = v139;
    v16 = v140[1];
    if (v17 >= v16)
    {
      goto LABEL_103;
    }
  }

  v57 = v19 + v129;
  if (__OFADD__(v19, v129))
  {
    goto LABEL_137;
  }

  if (v57 >= v56)
  {
    v57 = v140[1];
  }

  if (v57 < v19)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v17 == v57)
  {
    goto LABEL_48;
  }

  v138 = v18;
  v58 = *v140;
  v59 = *(v14 + 72);
  v145 = *(v14 + 16);
  v60 = &v58[v59 * (v17 - 1)];
  v61 = -v59;
  v130 = v19;
  v62 = (v19 - v17);
  v143 = v58;
  v132 = v59;
  v63 = &v58[v17 * v59];
  v133 = v57;
LABEL_41:
  v141 = v17;
  v135 = v63;
  v136 = v62;
  v137 = v60;
  while (1)
  {
    v64 = v149;
    v65 = v145;
    (v145)(v149, v63, v6);
    v66 = v150;
    v65(v150, v60, v6);
    sub_1DA34BD60();
    v68 = v67;
    sub_1DA34BD60();
    v70 = v69;
    v71 = *v147;
    (*v147)(v66, v6);
    v72 = v64;
    a3 = v6;
    v71(v72, v6);
    if (v70 >= v68)
    {
LABEL_46:
      v17 = v141 + 1;
      v60 = &v137[v132];
      v62 = v136 - 1;
      v63 = &v135[v132];
      if (v141 + 1 == v133)
      {
        v17 = v133;
        v18 = v138;
        v19 = v130;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v143)
    {
      break;
    }

    v73 = *v146;
    v74 = v144;
    (*v146)(v144, v63, v6);
    swift_arrayInitWithTakeFrontToBack();
    v73(v60, v74, v6);
    v60 += v61;
    v63 += v61;
    v55 = __CFADD__(v62++, 1);
    if (v55)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}