id _CKGetCachedGestaltValue(void *a1)
{
  v1 = _CKGetCachedGestaltValues_pred;
  v2 = a1;
  if (v1 != -1)
  {
    _CKGetCachedGestaltValue_cold_1();
  }

  v3 = [_CKCachedGestaltValues objectForKeyedSubscript:v2];

  return v3;
}

id processInfoDict()
{
  if (processInfoDict_onceToken != -1)
  {
    processInfoDict_cold_1();
  }

  v1 = processInfoDict_processInfoDict;

  return v1;
}

uint64_t sub_24215D044(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = OUTLINED_FUNCTION_24();

  return sub_24215D0F8(v16, v17);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_task_alloc();
}

uint64_t sub_24215D0F8(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFF8, &qword_242196A88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  v7 = sub_2421919E8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_242196A98;
  v9[5] = v8;
  sub_24218EE7C(0, 0, v6, &unk_242196AA8, v9);
}

uint64_t sub_24215D260(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_24215D2C4()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15(v6);
  *v7 = v8;
  v7[1] = sub_24215D9C8;
  v9 = OUTLINED_FUNCTION_1_0();

  return v10(v9);
}

uint64_t sub_24215D378(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24215D9C8;

  return v7();
}

uint64_t sub_24215D498(void *a1, void *a2, uint64_t a3, const void *a4, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFE8, &qword_242196A70) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[6] = v12;
  v13 = swift_task_alloc();
  v5[7] = v13;
  v5[8] = _Block_copy(a4);
  if (a3)
  {
    sub_242191928();
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_242191938();
  __swift_storeEnumTagSinglePayload(v12, v14, 1, v15);
  v16 = a5;
  v17 = a1;
  v18 = a2;
  v21 = swift_task_alloc();
  v5[9] = v21;
  *v21 = v5;
  v21[1] = sub_24215D718;

  return sub_24215D610(v13, v19, v20, v12);
}

uint64_t sub_24215D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return OUTLINED_FUNCTION_2_0(sub_24215D648);
}

uint64_t sub_24215D648()
{
  OUTLINED_FUNCTION_8();
  sub_24215D6BC(*(v0 + 24), *(v0 + 16), &qword_27EC8DFE8, &qword_242196A70);
  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_24215D6BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_24();
  v9(v8);
  return a2;
}

uint64_t sub_24215D718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_3();
  *v13 = v12;
  v15 = v14[9];
  v16 = v14[8];
  v17 = v14[6];
  v18 = v14[4];
  v19 = v14[3];
  v20 = v14[2];
  v21 = *v10;
  OUTLINED_FUNCTION_0_1();
  *v22 = v21;

  sub_24215D260(v17, &qword_27EC8DFE8, &qword_242196A70);
  if (v16)
  {
    v23 = v12[5];
    sub_24215DD24(v12[7], v23);
    v24 = sub_242191938();
    OUTLINED_FUNCTION_27(v24);
    if (!v25)
    {
      v26 = v12[5];
      v23 = v26;
      sub_242191918();
      OUTLINED_FUNCTION_25();
      (*(v27 + 8))(v26, v16);
    }

    v28 = v12[8];
    v29 = OUTLINED_FUNCTION_4();
    v30(v29);
    _Block_release(v28);
  }

  v32 = v12[6];
  v31 = v12[7];
  v33 = v12[5];

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t OUTLINED_FUNCTION_14()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{
  *(a1 + 8) = sub_24215DDD4;
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  return v1 + 32;
}

uint64_t sub_24215D9CC()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DF20, &qword_2421969B8);
  v1[4] = v3;
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_23();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFD8, &qword_242196A60);
  v1[6] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_23();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFE0, &qword_242196A68);
  v1[9] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_23();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DF28, &qword_2421969C0);
  v1[12] = v14;
  OUTLINED_FUNCTION_6(v14);
  v1[13] = v15;
  v17 = *(v16 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24215F3C4, 0, 0);
}

uint64_t sub_24215DB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18();
  v11 = v10[5];
  if (v11 >> 60 == 15)
  {
    v12 = v10[11];
    v13 = v10[12];
    v14 = v10[9];
    v15 = v10[10];
    (*(v10[7] + 8))(v10[8], v10[6]);
    sub_24215DCE4(v10[4], v10[5]);
    v16 = v10[2];
    v17 = v10[3];
    (*(v15 + 8))(v13, v14);

    v18 = v10[1];
    v19 = v10[14];
    OUTLINED_FUNCTION_22();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    v29 = v10[4];
    v30 = v10[5];
    sub_242191968();
    sub_24215DCE4(v29, v11);
    OUTLINED_FUNCTION_12(&unk_280C529E0, &unk_27EC8DF30, &unk_2421969D0);
    v31 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16();
    v10[16] = v32;
    *v32 = v33;
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282200308](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
  }
}

uint64_t sub_24215DCE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24218EBC0(a1, a2);
  }

  return a1;
}

uint64_t sub_24215DD24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFE8, &qword_242196A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24215DDD4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    (*(v3[7] + 8))(v3[8], v3[6]);
    sub_24218EBC0(v3[2], v3[3]);
    v9 = sub_24218EA60;
  }

  else
  {
    v9 = sub_24215DB78;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t C2RequestManager.data(for:options:)()
{
  OUTLINED_FUNCTION_13();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC8DF30, &unk_2421969D0);
  v0[6] = v1;
  OUTLINED_FUNCTION_6(v1);
  v0[7] = v2;
  v4 = *(v3 + 64);
  v0[8] = OUTLINED_FUNCTION_23();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DF28, &qword_2421969C0);
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v8 = *(v7 + 64) + 15;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_16();
  v0[13] = v9;
  *v9 = v10;
  v9[1] = sub_24215FAB4;

  return C2RequestManager.dataStream(for:options:)();
}

uint64_t C2RequestManager.dataStream(for:options:)()
{
  OUTLINED_FUNCTION_8();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DF20, &qword_2421969B8);
  v1[6] = v5;
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](sub_24215EAA8, 0, 0);
}

uint64_t sub_24215EAA8()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = sub_24215F8F8;
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000018, 0x800000024219A430, sub_24215EDB8, v2, v8);
}

void sub_24215EB98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFD8, &qword_242196A60);
  OUTLINED_FUNCTION_11(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20]();
  v10 = &v23 - v9;
  (*(v11 + 16))(&v23 - v9, a1);
  v12 = _s25C2AsyncDataStreamDelegateCMa();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_bytesStreamContinuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFB8, &qword_242196A40);
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v15);
  v13[OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_responseNeeded] = 1;
  v16 = OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_responseConitnuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFD8, &qword_242196A60);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v13[v16], v10, v17);
  v25.receiver = v13;
  v25.super_class = v12;
  v19 = objc_msgSendSuper2(&v25, sel_init);
  (*(v18 + 8))(v10, v17);
  v20 = sub_242191918();
  v21 = [a2 createDataTaskWithRequest:v20 options:v24 delegate:v19 sessionHandle:0];

  if (v21)
  {
    v22 = v21;
    [v22 resume];
  }
}

uint64_t OUTLINED_FUNCTION_12(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_24215FCC8(a1, a2, a3);
}

uint64_t _s25C2AsyncDataStreamDelegateCMa()
{
  result = qword_280C52AB0;
  if (!qword_280C52AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24215EE48()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_17(v4);

  return v7(v6);
}

uint64_t sub_24215EEE0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24215FE0C;

  return v7(a1);
}

uint64_t sub_24215EFD8()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15(v7);
  *v8 = v9;
  v8[1] = sub_24215FD2C;

  return sub_24215F09C(v2, v3, v4, v6);
}

uint64_t sub_24215F09C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24215FD2C;

  return v8();
}

uint64_t sub_24215F184()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15(v5);
  *v6 = v7;
  v6[1] = sub_24215D9C8;
  v8 = OUTLINED_FUNCTION_1_0();

  return v9(v8);
}

uint64_t sub_24215F230()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15(v6);
  *v7 = v8;
  v7[1] = sub_24215D9C8;
  v9 = OUTLINED_FUNCTION_1_0();

  return v10(v9);
}

uint64_t sub_24215F2E4(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  a5;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_24215F778;

  return sub_24215D9CC();
}

uint64_t sub_24215F3C4()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[3];
  *(swift_task_alloc() + 16) = v5;
  (*(v3 + 104))(v2, *MEMORY[0x277D858A0], v4);
  sub_242191A28();

  v6 = v0[15];
  if (*(v5 + OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_responseNeeded) == 1)
  {
    v31 = OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_responseNeeded;
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    v10 = v0[2];
    (*(v0[7] + 16))(v0[8], v0[3] + OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_responseConitnuation, v0[6]);
    v11 = *(v8 + 16);
    v12 = OUTLINED_FUNCTION_24();
    result = v13(v12);
    if (!v10)
    {
      __break(1u);
      return result;
    }

    v30 = v0[15];
    v15 = v0[12];
    v16 = v0[13];
    v18 = v0[7];
    v17 = v0[8];
    v20 = v0[5];
    v19 = v0[6];
    v21 = v0[2];
    v22 = *(v0[4] + 48);
    (*(v16 + 32))(v20, v0[14], v15);
    *(v20 + v22) = v21;
    v23 = v21;
    sub_2421919A8();
    (*(v18 + 8))(v17, v19);
    (*(v16 + 8))(v30, v15);
    *(v5 + v31) = 0;
  }

  else
  {
    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[11];
  v27 = v0[8];
  v28 = v0[5];

  v29 = v0[1];

  return v29(1);
}

uint64_t sub_24215F600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFC0, &qword_242196A48);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20]();
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFB8, &qword_242196A40);
  OUTLINED_FUNCTION_7(v9);
  (*(v10 + 16))(v8, a1, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_bytesStreamContinuation;
  swift_beginAccess();
  sub_24215F708(v8, a2 + v11);
  return swift_endAccess();
}

uint64_t sub_24215F708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFC0, &qword_242196A48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24215F778()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = v4[4];
  v9 = v4[3];
  v10 = v4[2];
  v11 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v12 = v11;

  if (v6)
  {
    v13 = *(v2 + 48);
    v14 = OUTLINED_FUNCTION_4();
    v15(v14);
    _Block_release(v13);
  }

  OUTLINED_FUNCTION_10();

  return v16();
}

uint64_t sub_24215F8F8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = sub_24218E9B4;
  }

  else
  {
    v10 = *(v3 + 64);

    v9 = sub_24215F9FC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24215F9FC()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[2];
  v2 = *(v0[7] + *(v0[6] + 48));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DF28, &qword_2421969C0);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_24();
  v7(v6);

  v8 = v0[1];

  return v8(v2);
}

uint64_t sub_24215FAB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 104);
  v8 = *v1;
  *(v3 + 112) = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_24218EB00;
  }

  else
  {
    v6 = sub_24215FBC0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24215FBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_13();
  v12 = *(v10 + 88);
  v11 = *(v10 + 96);
  v14 = *(v10 + 72);
  v13 = *(v10 + 80);
  v15 = *(v10 + 64);
  *(v10 + 16) = xmmword_2421969A0;
  (*(v13 + 16))(v12, v11, v14);
  sub_24215FCC8(&qword_280C529D8, &qword_27EC8DF28, &qword_2421969C0);
  sub_2421919F8();
  OUTLINED_FUNCTION_12(&unk_280C529E0, &unk_27EC8DF30, &unk_2421969D0);
  v16 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16();
  *(v10 + 128) = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_5(v17);

  return MEMORY[0x282200308](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_24215FCC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24215FD2C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_24215FE0C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_242160010(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFC0, &qword_242196A48);
  v7 = OUTLINED_FUNCTION_20(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFB8, &qword_242196A40);
  OUTLINED_FUNCTION_11(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  if (a3)
  {
    v23 = OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_bytesStreamContinuation;
    swift_beginAccess();
    sub_24215D6BC(v4 + v23, v14, &qword_27EC8DFC0, &qword_242196A48);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      v24 = a3;
      sub_24215D260(v14, &qword_27EC8DFC0, &qword_242196A48);
      v25 = OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_responseNeeded;
      if (*(v4 + OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_responseNeeded) == 1)
      {
        v29 = a3;
        v26 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFD8, &qword_242196A60);
        sub_242191998();

        *(v4 + v25) = 0;
      }

      else
      {
      }
    }

    else
    {
      (*(v17 + 32))(v22, v14, v15);
      v29 = a3;
      v28 = a3;
      sub_242191A18();
      (*(v17 + 8))(v22, v15);
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_bytesStreamContinuation;
    swift_beginAccess();
    sub_24215D6BC(v4 + v27, v12, &qword_27EC8DFC0, &qword_242196A48);
    if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = 0;
      sub_242191A18();
      (*(v17 + 8))(v12, v15);
    }
  }
}

uint64_t sub_2421603D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24216040C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24216045C()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t C2MPInternalTestConfigReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 101)
      {
        break;
      }

      if ((v12 >> 3) == 102)
      {
        v13 = &OBJC_IVAR___C2MPInternalTestConfig__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___C2MPInternalTestConfig__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t C2MPGenericEventMetricValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 103)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v30 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v30 & 0x7F) << v18;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_38;
          }
        }

        v24 = [a2 hasError] ? 0 : v20;
LABEL_38:
        *(a1 + 8) = v24;
      }

      else if (v13 == 102)
      {
        *(a1 + 32) |= 2u;
        v28 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v28;
      }

      else if (v13 == 101)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 24);
        *(a1 + 24) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t C2MPCloudKitOperationInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 100)
      {
        if (v13 == 101)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              LOBYTE(v31) = 0;
              goto LABEL_50;
            }
          }

          v31 = (v27 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 32) = v31;
        }

        else
        {
          if (v13 != 201)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          *(a1 + 8) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_51:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t C2MPPathInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 199)
      {
        if (v13 == 100)
        {
          v21 = PBReaderReadString();
          v22 = 32;
        }

        else
        {
          if (v13 != 101)
          {
LABEL_53:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_68;
          }

          v21 = PBReaderReadString();
          v22 = 40;
        }

        v35 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        switch(v13)
        {
          case 0xC8:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              v42 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v42 & 0x7F) << v23;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_58;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v25;
            }

LABEL_58:
            v37 = 16;
            break;
          case 0xC9:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v41 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v41 & 0x7F) << v29;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_62;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v31;
            }

LABEL_62:
            v37 = 8;
            break;
          case 0xCA:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v40 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v40 & 0x7F) << v14;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_66;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_66:
            v37 = 24;
            break;
          default:
            goto LABEL_53;
        }

        *(a1 + v37) = v20;
      }

LABEL_68:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t C2MPNetworkEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v218) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v218 & 0x7F) << v5;
        if ((v218 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 203)
      {
        break;
      }

      if (v13 <= 149)
      {
        if (v13 > 100)
        {
          switch(v13)
          {
            case 'e':
              v14 = PBReaderReadString();
              v15 = 248;
              goto LABEL_349;
            case 'f':
              v14 = PBReaderReadString();
              v15 = 168;
              goto LABEL_349;
            case 'g':
              v14 = PBReaderReadString();
              v15 = 216;
              goto LABEL_349;
            case 'h':
              v14 = PBReaderReadString();
              v15 = 152;
              goto LABEL_349;
            case 'i':
              v97 = 0;
              v98 = 0;
              v99 = 0;
              *(a1 + 316) |= 0x800000u;
              while (1)
              {
                LOBYTE(v218) = 0;
                v100 = [a2 position] + 1;
                if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
                {
                  v102 = [a2 data];
                  [v102 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v99 |= (v218 & 0x7F) << v97;
                if ((v218 & 0x80) == 0)
                {
                  break;
                }

                v97 += 7;
                v11 = v98++ >= 9;
                if (v11)
                {
                  LOBYTE(v103) = 0;
                  goto LABEL_395;
                }
              }

              v103 = (v99 != 0) & ~[a2 hasError];
LABEL_395:
              v215 = 304;
              goto LABEL_462;
            case 'j':
              v14 = PBReaderReadString();
              v15 = 176;
              goto LABEL_349;
            case 'k':
              v14 = PBReaderReadString();
              v15 = 208;
              goto LABEL_349;
            case 'l':
              v128 = 0;
              v129 = 0;
              v130 = 0;
              *(a1 + 316) |= 0x80000u;
              while (1)
              {
                LOBYTE(v218) = 0;
                v131 = [a2 position] + 1;
                if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
                {
                  v133 = [a2 data];
                  [v133 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v130 |= (v218 & 0x7F) << v128;
                if ((v218 & 0x80) == 0)
                {
                  break;
                }

                v128 += 7;
                v11 = v129++ >= 9;
                if (v11)
                {
                  v89 = 0;
                  goto LABEL_417;
                }
              }

              if ([a2 hasError])
              {
                v89 = 0;
              }

              else
              {
                v89 = v130;
              }

LABEL_417:
              v214 = 224;
              goto LABEL_459;
            case 'm':
              v146 = 0;
              v147 = 0;
              v148 = 0;
              *(a1 + 316) |= 1u;
              while (1)
              {
                LOBYTE(v218) = 0;
                v149 = [a2 position] + 1;
                if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
                {
                  v151 = [a2 data];
                  [v151 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v148 |= (v218 & 0x7F) << v146;
                if ((v218 & 0x80) == 0)
                {
                  break;
                }

                v146 += 7;
                v11 = v147++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_429;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v148;
              }

LABEL_429:
              v213 = 8;
              goto LABEL_444;
            case 'n':
              v104 = 0;
              v105 = 0;
              v106 = 0;
              *(a1 + 316) |= 0x100000u;
              while (1)
              {
                LOBYTE(v218) = 0;
                v107 = [a2 position] + 1;
                if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
                {
                  v109 = [a2 data];
                  [v109 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v106 |= (v218 & 0x7F) << v104;
                if ((v218 & 0x80) == 0)
                {
                  break;
                }

                v104 += 7;
                v11 = v105++ >= 9;
                if (v11)
                {
                  v89 = 0;
                  goto LABEL_403;
                }
              }

              if ([a2 hasError])
              {
                v89 = 0;
              }

              else
              {
                v89 = v106;
              }

LABEL_403:
              v214 = 240;
              goto LABEL_459;
            case 'o':
              v140 = 0;
              v141 = 0;
              v142 = 0;
              *(a1 + 316) |= 2u;
              while (1)
              {
                LOBYTE(v218) = 0;
                v143 = [a2 position] + 1;
                if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
                {
                  v145 = [a2 data];
                  [v145 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v142 |= (v218 & 0x7F) << v140;
                if ((v218 & 0x80) == 0)
                {
                  break;
                }

                v140 += 7;
                v11 = v141++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_425;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v142;
              }

LABEL_425:
              v213 = 16;
              goto LABEL_444;
            case 'p':
              v83 = 0;
              v84 = 0;
              v85 = 0;
              *(a1 + 316) |= 0x40000u;
              while (1)
              {
                LOBYTE(v218) = 0;
                v86 = [a2 position] + 1;
                if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
                {
                  v88 = [a2 data];
                  [v88 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v85 |= (v218 & 0x7F) << v83;
                if ((v218 & 0x80) == 0)
                {
                  break;
                }

                v83 += 7;
                v11 = v84++ >= 9;
                if (v11)
                {
                  v89 = 0;
                  goto LABEL_381;
                }
              }

              if ([a2 hasError])
              {
                v89 = 0;
              }

              else
              {
                v89 = v85;
              }

LABEL_381:
              v214 = 200;
              goto LABEL_459;
            case 'q':
              v90 = objc_alloc_init(C2MPError);
              objc_storeStrong((a1 + 160), v90);
              v218 = 0;
              v219 = 0;
              if (PBReaderPlaceMark() && C2MPErrorReadFrom(v90, a2))
              {
                goto LABEL_177;
              }

              goto LABEL_465;
            case 'r':
              v134 = 0;
              v135 = 0;
              v136 = 0;
              *(a1 + 316) |= 4u;
              while (1)
              {
                LOBYTE(v218) = 0;
                v137 = [a2 position] + 1;
                if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
                {
                  v139 = [a2 data];
                  [v139 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v136 |= (v218 & 0x7F) << v134;
                if ((v218 & 0x80) == 0)
                {
                  break;
                }

                v134 += 7;
                v11 = v135++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_421;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v136;
              }

LABEL_421:
              v213 = 24;
              goto LABEL_444;
            case 's':
              v14 = PBReaderReadString();
              v15 = 232;
              goto LABEL_349;
            case 't':
              v122 = 0;
              v123 = 0;
              v124 = 0;
              *(a1 + 316) |= 0x1000000u;
              break;
            case 'u':
              v14 = PBReaderReadString();
              v15 = 184;
              goto LABEL_349;
            default:
              goto LABEL_141;
          }

          while (1)
          {
            LOBYTE(v218) = 0;
            v125 = [a2 position] + 1;
            if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
            {
              v127 = [a2 data];
              [v127 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v124 |= (v218 & 0x7F) << v122;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v122 += 7;
            v11 = v123++ >= 9;
            if (v11)
            {
              LOBYTE(v103) = 0;
              goto LABEL_413;
            }
          }

          v103 = (v124 != 0) & ~[a2 hasError];
LABEL_413:
          v215 = 305;
LABEL_462:
          *(a1 + v215) = v103;
          goto LABEL_463;
        }

        switch(v13)
        {
          case 1:
            v116 = 0;
            v117 = 0;
            v118 = 0;
            *(a1 + 316) |= 0x20000u;
            while (1)
            {
              LOBYTE(v218) = 0;
              v119 = [a2 position] + 1;
              if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
              {
                v121 = [a2 data];
                [v121 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v118 |= (v218 & 0x7F) << v116;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              v11 = v117++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_411;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v118;
            }

LABEL_411:
            v213 = 144;
            break;
          case 2:
            v110 = 0;
            v111 = 0;
            v112 = 0;
            *(a1 + 316) |= 8u;
            while (1)
            {
              LOBYTE(v218) = 0;
              v113 = [a2 position] + 1;
              if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
              {
                v115 = [a2 data];
                [v115 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v112 |= (v218 & 0x7F) << v110;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v110 += 7;
              v11 = v111++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_407;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v112;
            }

LABEL_407:
            v213 = 32;
            break;
          case 3:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 316) |= 0x10u;
            while (1)
            {
              LOBYTE(v218) = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v218 & 0x7F) << v35;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_399;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v37;
            }

LABEL_399:
            v213 = 40;
            break;
          default:
            goto LABEL_141;
        }

        goto LABEL_444;
      }

      if (v13 > 201)
      {
        if (v13 == 202)
        {
          v91 = 0;
          v92 = 0;
          v93 = 0;
          *(a1 + 316) |= 0x80u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v94 = [a2 position] + 1;
            if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
            {
              v96 = [a2 data];
              [v96 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v93 |= (v218 & 0x7F) << v91;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            v11 = v92++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_393;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v93;
          }

LABEL_393:
          v213 = 64;
        }

        else
        {
          if (v13 != 203)
          {
LABEL_141:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_463;
          }

          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 316) |= 0x40u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v218 & 0x7F) << v47;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_389;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v49;
          }

LABEL_389:
          v213 = 56;
        }

        goto LABEL_444;
      }

      if (v13 != 150)
      {
        if (v13 != 201)
        {
          goto LABEL_141;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 316) |= 0x20u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v218 & 0x7F) << v23;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_385;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_385:
        v213 = 48;
LABEL_444:
        *(a1 + v213) = v22;
        goto LABEL_463;
      }

      v90 = objc_alloc_init(C2MPPathInfo);
      [a1 addNetworkPathInfo:v90];
      v218 = 0;
      v219 = 0;
      if (!PBReaderPlaceMark() || !C2MPPathInfoReadFrom(v90, a2))
      {
LABEL_465:

        return 0;
      }

LABEL_177:
      PBReaderRecallMark();

LABEL_463:
      v216 = [a2 position];
      if (v216 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 210)
    {
      if (v13 <= 206)
      {
        switch(v13)
        {
          case 0xCC:
            v77 = 0;
            v78 = 0;
            v79 = 0;
            *(a1 + 316) |= 0x200u;
            while (1)
            {
              LOBYTE(v218) = 0;
              v80 = [a2 position] + 1;
              if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
              {
                v82 = [a2 data];
                [v82 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v79 |= (v218 & 0x7F) << v77;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v11 = v78++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_377;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v79;
            }

LABEL_377:
            v213 = 80;
            break;
          case 0xCD:
            v71 = 0;
            v72 = 0;
            v73 = 0;
            *(a1 + 316) |= 0x100u;
            while (1)
            {
              LOBYTE(v218) = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v73 |= (v218 & 0x7F) << v71;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v11 = v72++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_373;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v73;
            }

LABEL_373:
            v213 = 72;
            break;
          case 0xCE:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 316) |= 0x10000u;
            while (1)
            {
              LOBYTE(v218) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v218 & 0x7F) << v29;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_369;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v31;
            }

LABEL_369:
            v213 = 136;
            break;
          default:
            goto LABEL_141;
        }
      }

      else if (v13 > 208)
      {
        if (v13 == 209)
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 316) |= 0x800u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              v70 = [a2 data];
              [v70 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v218 & 0x7F) << v65;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v11 = v66++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_357;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v67;
          }

LABEL_357:
          v213 = 96;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 316) |= 0x400u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v218 & 0x7F) << v41;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_365;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v43;
          }

LABEL_365:
          v213 = 88;
        }
      }

      else if (v13 == 207)
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 316) |= 0x8000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v218 & 0x7F) << v59;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v61;
        }

LABEL_353:
        v213 = 128;
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 316) |= 0x4000u;
        while (1)
        {
          LOBYTE(v218) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v218 & 0x7F) << v16;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_361;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_361:
        v213 = 120;
      }
    }

    else
    {
      switch(v13)
      {
        case 301:
          v14 = PBReaderReadString();
          v15 = 272;
          goto LABEL_349;
        case 302:
          v182 = 0;
          v183 = 0;
          v184 = 0;
          *(a1 + 316) |= 0x20000000u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v185 = [a2 position] + 1;
            if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
            {
              v187 = [a2 data];
              [v187 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v184 |= (v218 & 0x7F) << v182;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v182 += 7;
            v11 = v183++ >= 9;
            if (v11)
            {
              LOBYTE(v103) = 0;
              goto LABEL_448;
            }
          }

          v103 = (v184 != 0) & ~[a2 hasError];
LABEL_448:
          v215 = 310;
          goto LABEL_462;
        case 303:
          v170 = 0;
          v171 = 0;
          v172 = 0;
          *(a1 + 316) |= 0x40000000u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v173 = [a2 position] + 1;
            if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
            {
              v175 = [a2 data];
              [v175 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v172 |= (v218 & 0x7F) << v170;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v170 += 7;
            v11 = v171++ >= 9;
            if (v11)
            {
              LOBYTE(v103) = 0;
              goto LABEL_439;
            }
          }

          v103 = (v172 != 0) & ~[a2 hasError];
LABEL_439:
          v215 = 311;
          goto LABEL_462;
        case 304:
          v176 = 0;
          v177 = 0;
          v178 = 0;
          *(a1 + 316) |= 0x4000000u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v179 = [a2 position] + 1;
            if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
            {
              v181 = [a2 data];
              [v181 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v178 |= (v218 & 0x7F) << v176;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v176 += 7;
            v11 = v177++ >= 9;
            if (v11)
            {
              LOBYTE(v103) = 0;
              goto LABEL_446;
            }
          }

          v103 = (v178 != 0) & ~[a2 hasError];
LABEL_446:
          v215 = 307;
          goto LABEL_462;
        case 305:
          v152 = 0;
          v153 = 0;
          v154 = 0;
          *(a1 + 316) |= 0x8000000u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v155 = [a2 position] + 1;
            if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
            {
              v157 = [a2 data];
              [v157 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v154 |= (v218 & 0x7F) << v152;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v152 += 7;
            v11 = v153++ >= 9;
            if (v11)
            {
              LOBYTE(v103) = 0;
              goto LABEL_431;
            }
          }

          v103 = (v154 != 0) & ~[a2 hasError];
LABEL_431:
          v215 = 308;
          goto LABEL_462;
        case 306:
          v188 = 0;
          v189 = 0;
          v190 = 0;
          *(a1 + 316) |= 0x200000u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v191 = [a2 position] + 1;
            if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
            {
              v193 = [a2 data];
              [v193 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v190 |= (v218 & 0x7F) << v188;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v188 += 7;
            v11 = v189++ >= 9;
            if (v11)
            {
              v89 = 0;
              goto LABEL_452;
            }
          }

          if ([a2 hasError])
          {
            v89 = 0;
          }

          else
          {
            v89 = v190;
          }

LABEL_452:
          v214 = 296;
          goto LABEL_459;
        case 307:
          v200 = 0;
          v201 = 0;
          v202 = 0;
          *(a1 + 316) |= 0x400000u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v203 = [a2 position] + 1;
            if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
            {
              v205 = [a2 data];
              [v205 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v202 |= (v218 & 0x7F) << v200;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v200 += 7;
            v11 = v201++ >= 9;
            if (v11)
            {
              v89 = 0;
              goto LABEL_458;
            }
          }

          if ([a2 hasError])
          {
            v89 = 0;
          }

          else
          {
            v89 = v202;
          }

LABEL_458:
          v214 = 300;
LABEL_459:
          *(a1 + v214) = v89;
          goto LABEL_463;
        case 308:
          v14 = PBReaderReadString();
          v15 = 280;
          goto LABEL_349;
        case 309:
          v14 = PBReaderReadString();
          v15 = 288;
          goto LABEL_349;
        case 310:
          v158 = 0;
          v159 = 0;
          v160 = 0;
          *(a1 + 316) |= 0x10000000u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v161 = [a2 position] + 1;
            if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
            {
              v163 = [a2 data];
              [v163 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v160 |= (v218 & 0x7F) << v158;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v158 += 7;
            v11 = v159++ >= 9;
            if (v11)
            {
              LOBYTE(v103) = 0;
              goto LABEL_433;
            }
          }

          v103 = (v160 != 0) & ~[a2 hasError];
LABEL_433:
          v215 = 309;
          goto LABEL_462;
        case 311:
          v206 = 0;
          v207 = 0;
          v208 = 0;
          *(a1 + 316) |= 0x80000000;
          while (1)
          {
            LOBYTE(v218) = 0;
            v209 = [a2 position] + 1;
            if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
            {
              v211 = [a2 data];
              [v211 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v208 |= (v218 & 0x7F) << v206;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v206 += 7;
            v11 = v207++ >= 9;
            if (v11)
            {
              LOBYTE(v103) = 0;
              goto LABEL_461;
            }
          }

          v103 = (v208 != 0) & ~[a2 hasError];
LABEL_461:
          v215 = 312;
          goto LABEL_462;
        case 312:
          v14 = PBReaderReadString();
          v15 = 256;
          goto LABEL_349;
        case 313:
          v14 = PBReaderReadString();
          v15 = 264;
LABEL_349:
          v212 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_463;
        case 314:
          v194 = 0;
          v195 = 0;
          v196 = 0;
          *(a1 + 316) |= 0x2000000u;
          while (1)
          {
            LOBYTE(v218) = 0;
            v197 = [a2 position] + 1;
            if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
            {
              v199 = [a2 data];
              [v199 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v196 |= (v218 & 0x7F) << v194;
            if ((v218 & 0x80) == 0)
            {
              break;
            }

            v194 += 7;
            v11 = v195++ >= 9;
            if (v11)
            {
              LOBYTE(v103) = 0;
              goto LABEL_454;
            }
          }

          v103 = (v196 != 0) & ~[a2 hasError];
LABEL_454:
          v215 = 306;
          goto LABEL_462;
        default:
          if (v13 == 211)
          {
            v164 = 0;
            v165 = 0;
            v166 = 0;
            *(a1 + 316) |= 0x2000u;
            while (1)
            {
              LOBYTE(v218) = 0;
              v167 = [a2 position] + 1;
              if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
              {
                v169 = [a2 data];
                [v169 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v166 |= (v218 & 0x7F) << v164;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v164 += 7;
              v11 = v165++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_437;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v166;
            }

LABEL_437:
            v213 = 112;
          }

          else
          {
            if (v13 != 212)
            {
              goto LABEL_141;
            }

            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 316) |= 0x1000u;
            while (1)
            {
              LOBYTE(v218) = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v218 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v218 & 0x7F) << v53;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_443;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v55;
            }

LABEL_443:
            v213 = 104;
          }

          break;
      }
    }

    goto LABEL_444;
  }

  return [a2 hasError] ^ 1;
}

void sub_24216D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCloudTelemetryReporterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CloudTelemetryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CloudTelemetryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D40110;
    v6 = 0;
    CloudTelemetryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CloudTelemetryLibraryCore_frameworkLibrary)
  {
    __getCloudTelemetryReporterClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CloudTelemetryReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCloudTelemetryReporterClass_block_invoke_cold_1();
  }

  getCloudTelemetryReporterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudTelemetryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudTelemetryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_242170B78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t C2MPCloudKitInfoReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v53) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 206)
      {
        if (v13 > 302)
        {
          if (v13 > 401)
          {
            if (v13 == 402)
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              a1[132] |= 1u;
              while (1)
              {
                LOBYTE(v53) = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v53 & 0x7F) << v44;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  v23 = 0;
                  goto LABEL_117;
                }
              }

              if ([a2 hasError])
              {
                v23 = 0;
              }

              else
              {
                v23 = v46;
              }

LABEL_117:
              v50 = 8;
              goto LABEL_118;
            }

            if (v13 == 403)
            {
              v24 = 0;
              v25 = 0;
              v26 = 0;
              a1[132] |= 2u;
              while (1)
              {
                LOBYTE(v53) = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v53 & 0x7F) << v24;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  v23 = 0;
                  goto LABEL_107;
                }
              }

              if ([a2 hasError])
              {
                v23 = 0;
              }

              else
              {
                v23 = v26;
              }

LABEL_107:
              v50 = 16;
              goto LABEL_118;
            }
          }

          else
          {
            if (v13 == 303)
            {
              v37 = 0;
              v38 = 0;
              v39 = 0;
              a1[132] |= 8u;
              while (1)
              {
                LOBYTE(v53) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v53 & 0x7F) << v37;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  v23 = 0;
                  goto LABEL_113;
                }
              }

              if ([a2 hasError])
              {
                v23 = 0;
              }

              else
              {
                v23 = v39;
              }

LABEL_113:
              v50 = 32;
              goto LABEL_118;
            }

            if (v13 == 401)
            {
              v16 = objc_alloc_init(C2MPCloudKitOperationInfo);
              [a1 addClientOperation:v16];
              v53 = 0;
              v54 = 0;
              if (!PBReaderPlaceMark() || !C2MPCloudKitOperationInfoReadFrom(v16, a2))
              {
LABEL_121:

                return 0;
              }

LABEL_86:
              PBReaderRecallMark();

              goto LABEL_119;
            }
          }
        }

        else
        {
          if (v13 > 300)
          {
            if (v13 != 301)
            {
              v17 = 0;
              v18 = 0;
              v19 = 0;
              a1[132] |= 4u;
              while (1)
              {
                LOBYTE(v53) = 0;
                v20 = [a2 position] + 1;
                if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
                {
                  v22 = [a2 data];
                  [v22 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v19 |= (v53 & 0x7F) << v17;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v17 += 7;
                v11 = v18++ >= 9;
                if (v11)
                {
                  v23 = 0;
                  goto LABEL_103;
                }
              }

              if ([a2 hasError])
              {
                v23 = 0;
              }

              else
              {
                v23 = v19;
              }

LABEL_103:
              v50 = 24;
LABEL_118:
              *&a1[v50] = v23;
              goto LABEL_119;
            }

            v16 = objc_alloc_init(C2MPCloudKitOperationGroupInfo);
            [a1 addOperationGroup:v16];
            v53 = 0;
            v54 = 0;
            if (!PBReaderPlaceMark() || !C2MPCloudKitOperationGroupInfoReadFrom(v16, a2))
            {
              goto LABEL_121;
            }

            goto LABEL_86;
          }

          if (v13 == 207)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_88;
          }

          if (v13 == 208)
          {
            v14 = PBReaderReadString();
            v15 = 104;
            goto LABEL_88;
          }
        }
      }

      else if (v13 > 202)
      {
        if (v13 <= 204)
        {
          if (v13 == 203)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            a1[132] |= 0x10u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v53 & 0x7F) << v30;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_109;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_109:
            a1[128] = v36;
            goto LABEL_119;
          }

          v14 = PBReaderReadString();
          v15 = 96;
          goto LABEL_88;
        }

        if (v13 == 205)
        {
          v14 = PBReaderReadString();
          v15 = 88;
          goto LABEL_88;
        }

        if (v13 == 206)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_88;
        }
      }

      else
      {
        if (v13 > 200)
        {
          if (v13 == 201)
          {
            v14 = PBReaderReadString();
            v15 = 80;
          }

          else
          {
            v14 = PBReaderReadString();
            v15 = 112;
          }

          goto LABEL_88;
        }

        if (v13 == 102)
        {
          v14 = PBReaderReadString();
          v15 = 72;
          goto LABEL_88;
        }

        if (v13 == 103)
        {
          v14 = PBReaderReadString();
          v15 = 56;
LABEL_88:
          v43 = *&a1[v15];
          *&a1[v15] = v14;

          goto LABEL_119;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_119:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t C2MPGenericEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 200)
      {
        break;
      }

      if (v13 == 201)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v40[0] & 0x7F) << v17;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_59:
        v37 = 16;
        goto LABEL_64;
      }

      if (v13 == 202)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v40[0] & 0x7F) << v24;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_63:
        v37 = 8;
LABEL_64:
        *(a1 + v37) = v23;
        goto LABEL_69;
      }

      if (v13 != 301)
      {
        goto LABEL_54;
      }

      v14 = objc_alloc_init(C2MPGenericEventMetric);
      [a1 addMetric:v14];
      v40[0] = 0;
      v40[1] = 0;
      if (!PBReaderPlaceMark() || !C2MPGenericEventMetricReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_69:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v40[0] & 0x7F) << v30;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_68;
        }
      }

      if ([a2 hasError])
      {
        v36 = 0;
      }

      else
      {
        v36 = v32;
      }

LABEL_68:
      *(a1 + 40) = v36;
      goto LABEL_69;
    }

    if (v13 == 101)
    {
      v15 = PBReaderReadString();
      v16 = *(a1 + 32);
      *(a1 + 32) = v15;

      goto LABEL_69;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

uint64_t C2MPErrorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v22 = PBReaderReadString();
        v23 = 16;
        goto LABEL_38;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(C2MPError);
      objc_storeStrong((a1 + 32), v21);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !C2MPErrorReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = 24;
LABEL_38:
      v24 = *(a1 + v23);
      *(a1 + v23) = v22;

      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27[0] & 0x7F) << v14;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_42:
      *(a1 + 8) = v20;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void __processInfoDict_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 infoDictionary];
  v1 = processInfoDict_processInfoDict;
  processInfoDict_processInfoDict = v0;
}

void __C2MetricProcessUUID_block_invoke()
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v0 = [v2 UUIDString];
  v1 = C2MetricProcessUUID_processUUIDString;
  C2MetricProcessUUID_processUUIDString = v0;
}

void __entitlementsDict_block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  memset(&task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 8;
  v0 = task_info(*MEMORY[0x277D85F48], 0xFu, &task_info_out, &task_info_outCnt);
  if (v0)
  {
    v1 = v0;
    if (C2_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __entitlementsDict_block_invoke_cold_1();
    }

    v2 = C2_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 67109120;
      buf.val[1] = v1;
      v3 = "Unable to get a self audit token: %d";
      v4 = v2;
      v5 = 8;
LABEL_6:
      _os_log_impl(&dword_242158000, v4, OS_LOG_TYPE_ERROR, v3, &buf, v5);
    }
  }

  else
  {
    buf = task_info_out;
    v6 = SecTaskCreateWithAuditToken(0, &buf);
    if (v6)
    {
      v7 = v6;
      *buf.val = @"application-identifier";
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:1];
      v9 = v8;
      v10 = SecTaskCopyValuesForEntitlements(v7, v8, 0);
      v11 = entitlementsDict_entitlementsDict;
      entitlementsDict_entitlementsDict = v10;

      CFRelease(v7);
      goto LABEL_13;
    }

    if (C2_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __entitlementsDict_block_invoke_cold_2();
    }

    v12 = C2_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.val[0]) = 0;
      v3 = "Unable to get a sec task";
      v4 = v12;
      v5 = 2;
      goto LABEL_6;
    }
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __entitlementsDict_block_invoke_2()
{
  C2_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t __entitlementsDict_block_invoke_33()
{
  C2_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

void sub_24217C498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  objc_sync_exit(v11);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t C2MPGenericEventMetricReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 201)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(C2MPGenericEventMetricValue);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !C2MPGenericEventMetricValueReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t C2MPServerInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 102;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = (&off_278D406D0)[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id getBRContainersMonitorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBRContainersMonitorClass_softClass;
  v7 = getBRContainersMonitorClass_softClass;
  if (!getBRContainersMonitorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBRContainersMonitorClass_block_invoke;
    v3[3] = &unk_278D400F0;
    v3[4] = &v4;
    __getBRContainersMonitorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_242180520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242180860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBRContainersMonitorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CloudDocsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D406F0;
    v6 = 0;
    CloudDocsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    __getBRContainersMonitorClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("BRContainersMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBRContainersMonitorClass_block_invoke_cold_1();
  }

  getBRContainersMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudDocsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudDocsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAKAppleIDSessionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D40708;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    __getAKAppleIDSessionClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("AKAppleIDSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAppleIDSessionClass_block_invoke_cold_1();
  }

  getAKAppleIDSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24218272C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location)
{
  objc_destroyWeak(&a47);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242187F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id obj)
{
  objc_sync_exit(obj);
  objc_sync_exit(a10);
  _Unwind_Resume(a1);
}

uint64_t C2MPMetricReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v61) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 101)
      {
        if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
              v16 = objc_alloc_init(C2MPServerInfo);
              objc_storeStrong((a1 + 88), v16);
              v61 = 0;
              v62 = 0;
              if (!PBReaderPlaceMark() || !C2MPServerInfoReadFrom(v16, a2))
              {
LABEL_132:

                return 0;
              }

              goto LABEL_96;
            case 0x64:
              v51 = 0;
              v52 = 0;
              v53 = 0;
              *(a1 + 100) |= 4u;
              while (1)
              {
                LOBYTE(v61) = 0;
                v54 = [a2 position] + 1;
                if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
                {
                  v56 = [a2 data];
                  [v56 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v53 |= (v61 & 0x7F) << v51;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                v11 = v52++ >= 9;
                if (v11)
                {
                  v30 = 0;
                  goto LABEL_121;
                }
              }

              if ([a2 hasError])
              {
                v30 = 0;
              }

              else
              {
                v30 = v53;
              }

LABEL_121:
              v57 = 24;
              goto LABEL_129;
            case 0x65:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              *(a1 + 100) |= 1u;
              while (1)
              {
                LOBYTE(v61) = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v61 & 0x7F) << v24;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  v30 = 0;
                  goto LABEL_128;
                }
              }

              if ([a2 hasError])
              {
                v30 = 0;
              }

              else
              {
                v30 = v26;
              }

LABEL_128:
              v57 = 8;
              goto LABEL_129;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v44 = 0;
              v45 = 0;
              v46 = 0;
              *(a1 + 100) |= 8u;
              while (1)
              {
                LOBYTE(v61) = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v61 & 0x7F) << v44;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  v50 = 0;
                  goto LABEL_117;
                }
              }

              if ([a2 hasError])
              {
                v50 = 0;
              }

              else
              {
                v50 = v46;
              }

LABEL_117:
              *(a1 + 56) = v50;
              goto LABEL_130;
            case 2:
              v16 = objc_alloc_init(C2MPDeviceInfo);
              objc_storeStrong((a1 + 40), v16);
              v61 = 0;
              v62 = 0;
              if (!PBReaderPlaceMark() || !C2MPDeviceInfoReadFrom(v16, a2))
              {
                goto LABEL_132;
              }

              goto LABEL_96;
            case 3:
              v16 = objc_alloc_init(C2MPCloudKitInfo);
              objc_storeStrong((a1 + 32), v16);
              v61 = 0;
              v62 = 0;
              if (!PBReaderPlaceMark() || !C2MPCloudKitInfoReadFrom(v16, a2))
              {
                goto LABEL_132;
              }

              goto LABEL_96;
          }
        }
      }

      else if (v13 <= 104)
      {
        switch(v13)
        {
          case 'f':
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 100) |= 2u;
            while (1)
            {
              LOBYTE(v61) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v61 & 0x7F) << v32;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_111;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v34;
            }

LABEL_111:
            v57 = 16;
LABEL_129:
            *(a1 + v57) = v30;
            goto LABEL_130;
          case 'g':
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 100) |= 0x10u;
            while (1)
            {
              LOBYTE(v61) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v61 & 0x7F) << v38;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_113;
              }
            }

            v23 = (v40 != 0) & ~[a2 hasError];
LABEL_113:
            v58 = 96;
            goto LABEL_124;
          case 'h':
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 100) |= 0x20u;
            while (1)
            {
              LOBYTE(v61) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v61 & 0x7F) << v17;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_123;
              }
            }

            v23 = (v19 != 0) & ~[a2 hasError];
LABEL_123:
            v58 = 97;
LABEL_124:
            *(a1 + v58) = v23;
            goto LABEL_130;
        }
      }

      else if (v13 > 199)
      {
        if (v13 == 200)
        {
          v16 = objc_alloc_init(C2MPNetworkEvent);
          objc_storeStrong((a1 + 64), v16);
          v61 = 0;
          v62 = 0;
          if (!PBReaderPlaceMark() || !C2MPNetworkEventReadFrom(v16, a2))
          {
            goto LABEL_132;
          }

          goto LABEL_96;
        }

        if (v13 == 201)
        {
          v16 = objc_alloc_init(C2MPGenericEvent);
          objc_storeStrong((a1 + 48), v16);
          v61 = 0;
          v62 = 0;
          if (!PBReaderPlaceMark() || !C2MPGenericEventReadFrom(v16, a2))
          {
            goto LABEL_132;
          }

LABEL_96:
          PBReaderRecallMark();

          goto LABEL_130;
        }
      }

      else
      {
        if (v13 == 105)
        {
          v14 = PBReaderReadString();
          v15 = 72;
          goto LABEL_60;
        }

        if (v13 == 106)
        {
          v14 = PBReaderReadString();
          v15 = 80;
LABEL_60:
          v31 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_130;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_130:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_24218ACE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id obj, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  objc_sync_exit(v35);
  _Block_object_dispose((v36 - 160), 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t C2MPCloudKitOperationGroupInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 101)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_35;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_35:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_36;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t C2MPDeviceInfoReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 200)
      {
        break;
      }

      if (v13 <= 202)
      {
        if (v13 == 201)
        {
          v22 = PBReaderReadString();
          v23 = 16;
          goto LABEL_50;
        }

        if (v13 == 202)
        {
          v22 = PBReaderReadString();
          v23 = 32;
          goto LABEL_50;
        }

        goto LABEL_53;
      }

      if (v13 == 203)
      {
        v22 = PBReaderReadString();
        v23 = 24;
        goto LABEL_50;
      }

      if (v13 == 301)
      {
        v22 = PBReaderReadString();
        v23 = 72;
        goto LABEL_50;
      }

      if (v13 != 302)
      {
        goto LABEL_53;
      }

      v21 = objc_alloc_init(C2MPInternalTestConfig);
      [a1 addInternalTestConfig:v21];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !C2MPInternalTestConfigReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 102)
    {
      if (v13 == 101)
      {
        v22 = PBReaderReadString();
        v23 = 48;
        goto LABEL_50;
      }

      if (v13 == 102)
      {
        v22 = PBReaderReadString();
        v23 = 56;
LABEL_50:
        v24 = *&a1[v23];
        *&a1[v23] = v22;

        goto LABEL_51;
      }
    }

    else
    {
      switch(v13)
      {
        case 'g':
          v22 = PBReaderReadString();
          v23 = 64;
          goto LABEL_50;
        case 'h':
          v22 = PBReaderReadString();
          v23 = 40;
          goto LABEL_50;
        case 'i':
          v14 = 0;
          v15 = 0;
          v16 = 0;
          a1[84] |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v27[0] & 0x7F) << v14;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_56;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_56:
          a1[80] = v20;
          goto LABEL_51;
      }
    }

LABEL_53:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_24218DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return OUTLINED_FUNCTION_2_0(sub_24218F39C);
}

uint64_t sub_24218DE94(void *a1, void *a2, void *a3, uint64_t a4, const void *a5, void *a6)
{
  v6[4] = a3;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFE8, &qword_242196A70) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[7] = v14;
  v15 = swift_task_alloc();
  v6[8] = v15;
  v6[9] = _Block_copy(a5);
  if (a4)
  {
    sub_242191928();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_242191938();
  __swift_storeEnumTagSinglePayload(v14, v16, 1, v17);
  v18 = a6;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v25 = swift_task_alloc();
  v6[10] = v25;
  *v25 = v6;
  v25[1] = sub_24218E014;

  return sub_24218DDC8(v15, v22, v23, v24, v14);
}

uint64_t sub_24218E014()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[7];
  v8 = v4[5];
  v9 = v4[4];
  v10 = v4[3];
  v11 = v4[2];
  v12 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v13 = v12;

  sub_24215D260(v7, &qword_27EC8DFE8, &qword_242196A70);
  if (v6)
  {
    v14 = v2[6];
    sub_24215DD24(v2[8], v14);
    v15 = sub_242191938();
    OUTLINED_FUNCTION_27(v15);
    if (!v16)
    {
      v17 = v2[6];
      v14 = v17;
      sub_242191918();
      OUTLINED_FUNCTION_25();
      (*(v18 + 8))(v17, v6);
    }

    v19 = v2[9];
    v20 = OUTLINED_FUNCTION_4();
    v21(v20);
    _Block_release(v19);
  }

  v23 = v2[7];
  v22 = v2[8];
  v24 = v2[6];

  OUTLINED_FUNCTION_10();

  return v25();
}

uint64_t sub_24218E244()
{
  OUTLINED_FUNCTION_8();
  sub_24218EE38();
  v1 = sub_24218E2B0(0, 0xC000000000000000);
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_24218E2B0(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_242191948();
  v6 = [v4 initWithData_];

  sub_24218EBC0(a1, a2);
  return v6;
}

uint64_t sub_24218E3C0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a4;
  v9 = a1;
  v10 = a2;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_24218E484;

  return sub_24218E230();
}

uint64_t sub_24218E484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18();
  v12 = v11;
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_3();
  *v15 = v14;
  v17 = v16[6];
  v18 = v16[5];
  v19 = v16[4];
  v20 = v16[3];
  v21 = v16[2];
  v22 = *v10;
  OUTLINED_FUNCTION_0_1();
  *v23 = v22;

  if (v18)
  {
    v24 = *(v14 + 40);
    v25 = OUTLINED_FUNCTION_4();
    v26(v25);

    _Block_release(v24);
  }

  else
  {
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_24218E5F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v31[0] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFB8, &qword_242196A40);
  OUTLINED_FUNCTION_11(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFC0, &qword_242196A48);
  OUTLINED_FUNCTION_20(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v17);
  v19 = v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFC8, &qword_242196A50);
  OUTLINED_FUNCTION_20(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  v26 = OBJC_IVAR____TtCE2C2CSo16C2RequestManagerP33_84EE1E58F246DCD3EE191A742089E5F125C2AsyncDataStreamDelegate_bytesStreamContinuation;
  swift_beginAccess();
  sub_24215D6BC(v4 + v26, v19, &qword_27EC8DFC0, &qword_242196A48);
  if (__swift_getEnumTagSinglePayload(v19, 1, v6))
  {
    sub_24215D260(v19, &qword_27EC8DFC0, &qword_242196A48);
    v27 = 1;
LABEL_5:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFD0, &qword_242196A58);
    __swift_storeEnumTagSinglePayload(v25, v27, 1, v30);
    return sub_24215D260(v25, &qword_27EC8DFC8, &qword_242196A50);
  }

  v28 = v31[0];
  (*(v8 + 16))(v13, v19, v6);
  result = sub_24215D260(v19, &qword_27EC8DFC0, &qword_242196A48);
  if (a4 >> 60 != 15)
  {
    v31[1] = v28;
    v31[2] = a4;
    sub_24218EDE0(v28, a4);
    sub_242191A08();
    (*(v8 + 8))(v13, v6);
    v27 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_24218E97C()
{
  v2.receiver = v0;
  v2.super_class = _s25C2AsyncDataStreamDelegateCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24218E9B4()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_14();
  v4 = v0[10];

  return v3();
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

uint64_t sub_24218EA60()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 136);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 64);

  OUTLINED_FUNCTION_14();

  return v8();
}

uint64_t sub_24218EB00()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];

  OUTLINED_FUNCTION_14();

  return v5();
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

uint64_t sub_24218EBC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_24218EC20()
{
  sub_24218ECF4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24218ED7C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24218ECF4()
{
  if (!qword_280C52A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8DF20, &qword_2421969B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EC8DFA8, &qword_242196A20);
    v0 = sub_2421919B8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C52A00);
    }
  }
}

void sub_24218ED7C()
{
  if (!qword_280C529F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8DFB8, &qword_242196A40);
    v0 = sub_242191A38();
    if (!v1)
    {
      atomic_store(v0, &qword_280C529F0);
    }
  }
}

uint64_t sub_24218EDE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24218EE38()
{
  result = qword_27EC8DFF0;
  if (!qword_27EC8DFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC8DFF0);
  }

  return result;
}

uint64_t sub_24218EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8DFF8, &qword_242196A88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_24215D6BC(a3, v24 - v10, &qword_27EC8DFF8, &qword_242196A88);
  v12 = sub_2421919E8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_24215D260(v11, &qword_27EC8DFF8, &qword_242196A88);
  }

  else
  {
    sub_2421919D8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    v13 = *(a5 + 24);
    v14 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_242191988();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_242191978() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_24215D260(a3, &qword_27EC8DFF8, &qword_242196A88);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24215D260(a3, &qword_27EC8DFF8, &qword_242196A88);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24218F158()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_17(v4);

  return v7(v6);
}

uint64_t sub_24218F1F0()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15(v5);
  *v6 = v7;
  v6[1] = sub_24215D9C8;
  v8 = OUTLINED_FUNCTION_1_0();

  return v9(v8);
}

uint64_t sub_24218F29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_18();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v16 = v10[6];
  v15 = v10[7];
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_15(v17);
  *v18 = v19;
  v18[1] = sub_24215D9C8;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();

  return v26(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

void type metadata accessor for ResponseDisposition()
{
  if (!qword_27EC8E000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EC8E000);
    }
  }
}

void __getCloudTelemetryReporterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCloudTelemetryReporterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"C2ReportMetrics.m" lineNumber:21 description:{@"Unable to find class %s", "CloudTelemetryReporter"}];

  __break(1u);
}

void __getCloudTelemetryReporterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CloudTelemetryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"C2ReportMetrics.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getBRContainersMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBRContainersMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"C2RequestOptions.m" lineNumber:23 description:{@"Unable to find class %s", "BRContainersMonitor"}];

  __break(1u);
}

void __getBRContainersMonitorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CloudDocsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"C2RequestOptions.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getAKAppleIDSessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAKAppleIDSessionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"C2RequestOptions.m" lineNumber:28 description:{@"Unable to find class %s", "AKAppleIDSession"}];

  __break(1u);
}

void __getAKAppleIDSessionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AuthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"C2RequestOptions.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}