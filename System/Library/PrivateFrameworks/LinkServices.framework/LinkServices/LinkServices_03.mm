id sub_197689FA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_opt_self();
  v5 = sub_19774EF20();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v10[4] = sub_19768FB00;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_19766A054;
  v10[3] = &block_descriptor_21_2;
  v7 = _Block_copy(v10);

  v8 = [v4 validateEntitlement:v5 forCurrentTaskWithValidator:v7];
  _Block_release(v7);

  return v8;
}

uint64_t sub_19768A0AC(uint64_t a1, int a2)
{
  sub_19768FBC8(a1, v5, &unk_1EAF3F8C0, &qword_19775AA48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F8C0, &qword_19775AA48);
  return swift_dynamicCast() & (v4 ^ a2 ^ 1);
}

uint64_t sub_19768A138(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_19768A1AC(uint64_t a1, uint64_t a2)
{
  sub_197673508(a2, *(*(a1 + 64) + 40));

  return swift_continuation_throwingResume();
}

id sub_19768A2B4()
{
  OUTLINED_FUNCTION_43_1();
  v0[OBJC_IVAR___LNURLLaunchRequest_dismissSiri] = 0;
  OUTLINED_FUNCTION_8_5(&v0[OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey]);
  v2 = sub_19774EA60();
  v3 = &v0[OBJC_IVAR___LNURLLaunchRequest_storage];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = v2;
  v3[24] = 0;
  v8.receiver = v0;
  v8.super_class = LNURLLaunchRequest;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  v5 = sub_19774EAD0();
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 8))(v1);
  return v4;
}

id sub_19768A3F8()
{
  v0[OBJC_IVAR___LNURLLaunchRequest_dismissSiri] = 0;
  OUTLINED_FUNCTION_8_5(&v0[OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey]);
  v1 = &v0[OBJC_IVAR___LNURLLaunchRequest_storage];
  *v1 = v2;
  *(v1 + 1) = v3;
  *(v1 + 2) = 0;
  v1[24] = 1;
  v5.receiver = v0;
  v5.super_class = LNURLLaunchRequest;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_19768A4B4()
{
  v0[OBJC_IVAR___LNURLLaunchRequest_dismissSiri] = 0;
  OUTLINED_FUNCTION_8_5(&v0[OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey]);
  v1 = &v0[OBJC_IVAR___LNURLLaunchRequest_storage];
  *v1 = v2;
  *(v1 + 1) = v3;
  *(v1 + 2) = v4;
  v1[24] = 2;
  v6.receiver = v0;
  v6.super_class = LNURLLaunchRequest;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_19768A57C()
{
  v0[OBJC_IVAR___LNURLLaunchRequest_dismissSiri] = 0;
  OUTLINED_FUNCTION_8_5(&v0[OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey]);
  v1 = &v0[OBJC_IVAR___LNURLLaunchRequest_storage];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = v2;
  v1[24] = 3;
  v4.receiver = v0;
  v4.super_class = LNURLLaunchRequest;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_19768A61C()
{
  *(v1 + 144) = v0;
  OUTLINED_FUNCTION_41_1();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_19768A648()
{
  OUTLINED_FUNCTION_18_0();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_19768A75C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCB8, &qword_19775DD10);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19768A8E4;
  v0[13] = &block_descriptor_29;
  v0[14] = v2;
  [v1 performValidatingURLScheme:0 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19768A75C()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 152) = *(v4 + 48);
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19768A880()
{
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 152);
  swift_willThrow();
  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 152);

  return v2();
}

uint64_t sub_19768A8E4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_19768A138(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume();
}

uint64_t sub_19768A9C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_19768FC94;

  return sub_19768A61C();
}

uint64_t sub_19768AA6C()
{
  OUTLINED_FUNCTION_9_2();
  v15 = *MEMORY[0x1E69E9840];
  *(v1 + 744) = v0;
  *(v1 + 1024) = v2;
  *(v1 + 752) = swift_getObjectType();
  v3 = sub_19774ED60();
  *(v1 + 760) = v3;
  v4 = *(v3 - 8);
  *(v1 + 768) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 776) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220) - 8) + 64) + 15;
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  v7 = sub_19774EAD0();
  *(v1 + 816) = v7;
  v8 = *(v7 - 8);
  *(v1 + 824) = v8;
  v9 = *(v8 + 64) + 15;
  *(v1 + 832) = swift_task_alloc();
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();
  *(v1 + 856) = swift_task_alloc();
  *(v1 + 864) = swift_task_alloc();
  *(v1 + 872) = swift_task_alloc();
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_19768B7B4()
{
  OUTLINED_FUNCTION_9_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 936) = *(v4 + 176);
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19768C058()
{
  OUTLINED_FUNCTION_9_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 960) = *(v4 + 112);
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19768C90C()
{
  OUTLINED_FUNCTION_9_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 1000) = *(v4 + 48);
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19768CA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_54_0();
  v37 = *MEMORY[0x1E69E9840];
  v36 = v14[124];
  v15 = v14[123];
  v16 = v14[122];
  v17 = v14[121];
  v18 = v14[109];
  v19 = v14[103];
  v20 = v14[102];
  v21 = v14[97];
  v22 = v14[96];
  v23 = v14[95];

  (*(v22 + 8))(v21, v23);
  v24 = OUTLINED_FUNCTION_27();
  v17(v24);
  v25 = v14[84];

  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_12_3();
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_53_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

uint64_t sub_19768CB8C()
{
  OUTLINED_FUNCTION_9_2();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;
  v6 = *(v5 + 1008);
  v7 = *v1;
  OUTLINED_FUNCTION_18_3();
  *v8 = v7;
  *(v9 + 1016) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_19768CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_54_0();
  v15 = *MEMORY[0x1E69E9840];
  v16 = OUTLINED_FUNCTION_29_1();
  v17(v16);
  v18 = *(v14 + 8);
  v19 = OUTLINED_FUNCTION_27();
  v20(v19);
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_12_3();
  v21 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_53_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19768CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_55_0();
  v37 = *MEMORY[0x1E69E9840];
  v17 = v16[117];
  v18 = v16[114];
  v19 = v16[113];
  v20 = v16[111];
  v21 = v16[110];
  swift_willThrow();

  v22 = v16[117];
  OUTLINED_FUNCTION_0_16();
  v35 = v24;
  v36 = v23;

  OUTLINED_FUNCTION_17();
  v25 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_52_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, a12, v37, a14, a15, a16);
}

uint64_t sub_19768CEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_55_0();
  v38 = *MEMORY[0x1E69E9840];
  v17 = v16[120];
  v18 = v16[119];
  v19 = v16[118];
  v20 = v16[116];
  v21 = v16[115];
  v22 = v16[112];
  swift_willThrow();

  v23 = v16[120];
  OUTLINED_FUNCTION_0_16();
  v36 = v25;
  v37 = v24;

  OUTLINED_FUNCTION_17();
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_52_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, v38, a14, a15, a16);
}

uint64_t sub_19768CFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_55_0();
  v44 = *MEMORY[0x1E69E9840];
  v17 = v16[125];
  v40 = v16[123];
  v42 = v16[124];
  v18 = v16[122];
  v19 = v16[121];
  v20 = v16[109];
  v21 = v16[103];
  v22 = v16[102];
  v23 = v16[97];
  v24 = v16[96];
  v25 = v16[95];
  swift_willThrow();

  (*(v24 + 8))(v23, v25);
  v26 = OUTLINED_FUNCTION_27();
  v19(v26);

  v27 = v16[125];
  OUTLINED_FUNCTION_0_16();
  v41 = v29;
  v43 = v28;

  OUTLINED_FUNCTION_17();
  v30 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_52_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v41, v43, a12, v44, a14, a15, a16);
}

uint64_t sub_19768D148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_54_0();
  v16 = *MEMORY[0x1E69E9840];
  v17 = OUTLINED_FUNCTION_29_1();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_27();
  v21(v20);
  v22 = *(v15 + 1016);
  OUTLINED_FUNCTION_0_16();
  v35 = v24;
  v36 = v23;

  OUTLINED_FUNCTION_12_3();
  v25 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_53_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, a11, a12, a13, a14);
}

uint64_t sub_19768D250(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_19768A138(v13, a3);
  }

  if (a2)
  {
    sub_19774EA90();
    v15 = sub_19774EAD0();
    v16 = 0;
  }

  else
  {
    v15 = sub_19774EAD0();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v16, 1, v15);
  sub_197673508(v10, v12);
  return sub_19768A1AC(v13, v12);
}

uint64_t sub_19768D37C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCB0, &qword_19775DCF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_19774E8F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19774E8D0();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_197665DE0(v3, &qword_1EAF3FCB0, &qword_19775DCF0);
LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  (*(v5 + 32))(v8, v3, v4);
  sub_19774E8E0();
  if (!v9)
  {
    (*(v5 + 8))(v8, v4);
    goto LABEL_11;
  }

  v10 = sub_19774EFC0();
  v12 = v11;

  v13 = v10 == 1886680168 && v12 == 0xE400000000000000;
  if (v13 || (sub_19774F7E0() & 1) != 0)
  {
    (*(v5 + 8))(v8, v4);

    v14 = 1;
  }

  else
  {
    if (v10 == 0x7370747468 && v12 == 0xE500000000000000)
    {

      v14 = 1;
    }

    else
    {
      v14 = sub_19774F7E0();
    }

    (*(v5 + 8))(v8, v4);
  }

  return v14 & 1;
}

uint64_t sub_19768D5E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_19768A138(v5, a3);
  }

  if (a2)
  {
    v7 = sub_19774EE30();
  }

  else
  {
    v7 = 0;
  }

  return sub_19768A204(v5, v7);
}

uint64_t sub_19768D678(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_19774EAD0();
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v6 = sub_19774ED60();
  v2[37] = v6;
  v7 = *(v6 - 8);
  v2[38] = v7;
  v8 = *(v7 + 64) + 15;
  v2[39] = swift_task_alloc();
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_19768D7C0, 0, 0);
}

uint64_t sub_19768D7C0()
{
  v44 = *MEMORY[0x1E69E9840];
  if ((sub_197689FA4(0xD000000000000026, 0x8000000197761700, 1) & 1) == 0)
  {
    v24 = v0[39];
    OUTLINED_FUNCTION_51_1();
    sub_19774ED50();
    v25 = sub_19774ED40();
    v26 = sub_19774F2B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_19763D000, v25, v26, "This process can't open sensitive URLs, falling back to the default app launch request", v27, 2u);
      MEMORY[0x19A8E67F0](v27, -1, -1);
    }

    v29 = v0[35];
    v28 = v0[36];
    v30 = v0[34];
    v31 = v0[32];

    v32 = *(v29 + 16);
    v33 = OUTLINED_FUNCTION_33_2();
    v34(v33);
    v35 = objc_allocWithZone(MEMORY[0x1E69AA860]);
    v36 = sub_19768EA88(v28);
    v0[40] = v36;
    v41 = v36;
    v0[2] = v0;
    v0[7] = v0 + 42;
    v0[3] = sub_19768DC3C;
    v42 = swift_continuation_init();
    v0[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCA0, &qword_19775DCE0);
    v0[23] = MEMORY[0x1E69E9820];
    v0[24] = 1107296256;
    v0[25] = sub_19768E7C0;
    v0[26] = &block_descriptor_14;
    v0[27] = v42;
    [v41 performWithCompletionHandler_];
    v43 = *MEMORY[0x1E69E9840];
    v12 = v0 + 2;

    return MEMORY[0x1EEE6DEC8](v12);
  }

  v1 = v0[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCA8, &qword_19775DCE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v3 = *MEMORY[0x1E699F990];
  *(inited + 32) = sub_19774EF50();
  *(inited + 40) = v4;
  *(inited + 48) = 1;
  v5 = *MEMORY[0x1E699F970];
  *(inited + 56) = sub_19774EF50();
  *(inited + 64) = v6;
  *(inited + 72) = 1;
  v7 = [v1 doNotDismissSiriKey];
  v8 = sub_19774EF50();
  v10 = v9;

  *(inited + 80) = v8;
  *(inited + 88) = v10;
  *(inited + 96) = [v1 dismissSiri] ^ 1;
  v11 = sub_19774EE40();
  v12 = [objc_opt_self() defaultWorkspace];
  if (!v12)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v12);
  }

  v13 = v12;
  v14 = v0[32];
  v15 = sub_19774EA60();
  v16 = sub_19768E838(v11);

  v0[31] = 0;
  v17 = sub_19768F8E0(v15, v16, (v0 + 31), v13);

  v18 = v0[31];
  if (v17)
  {
    v19 = v0[39];
    v20 = v0[36];
    v21 = v18;
  }

  else
  {
    v37 = v18;
    sub_19774E9F0();

    swift_willThrow();
    v38 = v0[39];
    v39 = v0[36];
  }

  OUTLINED_FUNCTION_12_3();
  v23 = *MEMORY[0x1E69E9840];

  return v22();
}

uint64_t sub_19768DC3C()
{
  OUTLINED_FUNCTION_9_2();
  v10 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 328) = *(v4 + 48);
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_41_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19768DD68()
{
  OUTLINED_FUNCTION_18_0();
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  v7 = *(v0 + 312);
  v8 = *(v0 + 288);

  OUTLINED_FUNCTION_17();
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t sub_19768DE24()
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  swift_willThrow();

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  v9 = v0[41];
  v10 = v0[39];
  v11 = v0[36];

  OUTLINED_FUNCTION_12_3();
  v13 = *MEMORY[0x1E69E9840];

  return v12();
}

uint64_t sub_19768DF74(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_19768E030;

  return sub_19768AA6C();
}

uint64_t sub_19768E030()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *v1;
  OUTLINED_FUNCTION_18_3();
  *v3 = v2;
  v5 = v4[4];
  v6 = v4[3];
  v7 = v4[2];
  v8 = *v1;
  OUTLINED_FUNCTION_18_3();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = *(v2 + 24);
      v11 = sub_19774E9E0();

      (v10)[2](v10, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v12 = *(v2 + 24);
    v12[2](v12, 0);
    _Block_release(v12);
  }

  OUTLINED_FUNCTION_17();

  return v13();
}

BOOL sub_19768E1BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCB0, &qword_19775DCF0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-v5];
  sub_19774E8D0();
  sub_19768FBC8(v6, v4, &qword_1EAF3FCB0, &qword_19775DCF0);
  v7 = sub_19774E8F0();
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    sub_197665DE0(v6, &qword_1EAF3FCB0, &qword_19775DCF0);
    v8 = v4;
LABEL_6:
    sub_197665DE0(v8, &qword_1EAF3FCB0, &qword_19775DCF0);
    return 0;
  }

  sub_19774E8E0();
  v10 = v9;
  (*(*(v7 - 8) + 8))(v4, v7);
  if (!v10)
  {
    v8 = v6;
    goto LABEL_6;
  }

  v11 = sub_19774EFC0();
  v13 = v12;

  v18[0] = v11;
  v18[1] = v13;
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v18;
  v15 = sub_197689DFC(sub_19766EC58, &v17[-32], &unk_1F0BB83F8);
  sub_197665DE0(v6, &qword_1EAF3FCB0, &qword_19775DCF0);

  return v15;
}

uint64_t sub_19768E504()
{
  v1 = *(v0 + OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey);
  v2 = *(v0 + OBJC_IVAR___LNURLLaunchRequest_doNotDismissSiriKey + 8);

  return v1;
}

id LNURLLaunchRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_19768E628()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19768E6D8;

  return sub_19768DF74(v2, v4, v3);
}

uint64_t sub_19768E6D8()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_18_3();
  *v3 = v2;

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_19768E7C0(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_19768A138(*v5, a3);
  }

  v7 = *v5;

  return sub_19768A224(v7, a2);
}

unint64_t sub_19768E838(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC88, &qword_19775DCD0);
    v2 = sub_19774F760();
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

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + v11);

    swift_dynamicCast();
    sub_19766A150(&v25, v27);
    sub_19766A150(v27, v28);
    sub_19766A150(v28, &v26);
    result = sub_1976525E4(v14, v13, sub_197652668);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_0(v19);
      result = sub_19766A150(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_19766A150(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
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
  return result;
}

id sub_19768EA88(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_19774EA60();
  v14[0] = 0;
  v5 = [v2 initWithURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_19774EAD0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_19774E9F0();

    swift_willThrow();
    v11 = sub_19774EAD0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t sub_19768EBD4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC88, &qword_19775DCD0);
  v2 = sub_19774F760();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_19768FBC8(v6, &v15, &qword_1EAF3FC90, &qword_19775DCD8);
    v7 = v15;
    v8 = v16;
    result = sub_1976525E4(v15, v16, sub_197652668);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_19766A150(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_19768ED3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_41_1();
  v9 = sub_19768EDFC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_197677CC0(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

unint64_t sub_19768EDFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_19768EEFC(a5, a6);
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
    result = sub_19774F640();
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

uint64_t sub_19768EEFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_19768EF48(a1, a2);
  sub_19768F060(&unk_1F0BB83D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_19768EF48(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_19774F050())
  {
    result = sub_19768F144(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_19774F5A0();
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
          result = sub_19774F640();
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

uint64_t sub_19768F060(uint64_t result)
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

    result = sub_19768F1B4(result, v8, 1, v3);
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

void *sub_19768F144(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC98, qword_19775E620);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_19768F1B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC98, qword_19775E620);
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

unint64_t sub_19768F350(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_19774EF50();
  sub_19774F930();
  sub_19774EFF0();
  v4 = sub_19774F950();

  return sub_19768F55C(a1, v4);
}

unint64_t sub_19768F3E4()
{
  OUTLINED_FUNCTION_43_1();
  v2 = *(v0 + 40);
  v3 = sub_19774F3F0();
  return sub_19768F654(v1, v3, &qword_1EAF3FC18, 0x1E69C7548);
}

unint64_t sub_19768F430()
{
  OUTLINED_FUNCTION_43_1();
  v2 = *(v0 + 40);
  v3 = sub_19774F3F0();
  return sub_19768F654(v1, v3, &qword_1EAF3FE00, 0x1E69AC6E8);
}

unint64_t sub_19768F47C()
{
  OUTLINED_FUNCTION_43_1();
  v2 = *(v0 + 40);
  v3 = sub_19774F3F0();
  return sub_19768F654(v1, v3, &qword_1ED696D90, 0x1E69ACA48);
}

unint64_t sub_19768F4C8()
{
  OUTLINED_FUNCTION_43_1();
  v2 = *(v0 + 40);
  sub_19774EBF0();
  sub_19768FC28(&qword_1ED696E30, MEMORY[0x1E69695A8]);
  v3 = sub_19774EE80();

  return sub_19768F724(v1, v3);
}

unint64_t sub_19768F55C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_19774EF50();
    v8 = v7;
    if (v6 == sub_19774EF50() && v8 == v9)
    {

      return i;
    }

    v11 = sub_19774F7E0();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_19768F654(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = v4 + 64;
  v9 = ~(-1 << *(v4 + 32));
  for (i = a2 & v9; ((1 << i) & *(v8 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_197648238(0, a3, a4);
    v11 = *(*(v7 + 48) + 8 * i);
    v12 = sub_19774F400();

    if (v12)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_19768F724(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_19774EBF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_19768FC28(&qword_1ED696E28, MEMORY[0x1E69695A8]);
    v10 = sub_19774EED0();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

id sub_19768F8E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_19774EE20();

  v8 = [a4 openSensitiveURL:a1 withOptions:v7 error:a3];

  return v8;
}

void sub_19768F974(uint64_t a1, void *a2)
{
  v3 = sub_19774EE20();

  [a2 setFrontBoardOptions_];
}

void sub_19768F9F4(void *a1, void *a2, void *a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 3:
      goto LABEL_4;
    case 1:

      a1 = a2;
      goto LABEL_4;
    case 2:

      a1 = a3;
LABEL_4:

      break;
    default:
      return;
  }
}

uint64_t sub_19768FA74()
{
  v0 = sub_19774EF50();
  v2 = v1;
  if (v0 == sub_19774EF50() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_19774F7E0();
  }

  return v5 & 1;
}

uint64_t block_copy_helper_19_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19768FB20()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19768FC90;

  return sub_19768A9C4(v2, v3);
}

uint64_t sub_19768FBC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_19768FC28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_19_3()
{
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[105];
  v7 = v0[104];
  v8 = v0[101];
  v9 = v0[100];
  v10 = v0[99];
  v11 = v0[98];
  v13 = v0[97];
}

void OUTLINED_FUNCTION_20_2()
{

  JUMPOUT(0x19A8E67F0);
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_19768ED3C(v6, v7, va);
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  v1 = v0[109];
  v2 = v0[103];
  v3 = v0[102];
  result = v0[97];
  v5 = v0[95];
  v6 = *(v0[96] + 8);
  return result;
}

void OUTLINED_FUNCTION_30_1()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t result)
{
  *(v1 + 168) = v2;
  *(v1 + 144) = result ^ 1;
  return result;
}

void OUTLINED_FUNCTION_50_0()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return sub_19774F400();
}

uint64_t sub_19768FDDC(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_19774F730();

    return v10;
  }

  v4 = sub_197652138(a2);
  v5 = sub_197690178(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1976901C4(0, a2);
  sub_1976901C4(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_197652E44();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_19774F5D0();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

id sub_19768FF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v23 = sub_19774EF20();

  v15 = sub_19774EF20();

  v16 = sub_19774EF20();

  sub_197652E44();
  v17 = sub_19774F110();

  if (a9)
  {
    v18 = sub_19774EF20();
  }

  else
  {
    v18 = 0;
  }

  if (a11)
  {
    v19 = sub_19774EF20();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_19774EF20();

  v21 = [v24 initWithBundleIdentifier:v23 localeIdentifier:v15 actionIdentifier:v16 orderedPhrases:v17 localizedShortTitle:v18 localizedAutoShortcutDescription:v19 systemImageName:v20 shortcutTileColor:a14 parameterPresentation:a15];

  return v21;
}

void sub_19769009C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_197652E44();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_197690178(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1976901C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_19774F500();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_19769026C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v1 = sub_19765F094();
  return sub_197649708(0xD000000000000010, 0x80000001977604F0, v0, v1);
}

uint64_t sub_197690314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v7 = sub_19765F094();
  return sub_197649708(a3, a4, v6, v7);
}

void sub_19769037C()
{
  OUTLINED_FUNCTION_8();
  v35 = v1;
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v49 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v33 - v9;
  if (qword_1ED696EC0 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  memcpy(v45, &unk_1EAF3EFE0, sizeof(v45));
  if (qword_1ED696EB8 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_5(&qword_1EAF3EFC8);
  v42[0] = v6;
  v42[1] = v4;
  v39 = v11;
  v40 = v10;
  v38 = v12;
  v13 = sub_1976B7FC0();
  v15 = v14;
  v17 = v16;
  memcpy(v41, v45, sizeof(v41));
  sub_1976BB434(v13, v15, v17, &unk_1F0BBACF0, &off_1F0BBAB00, v18, v19, v20, v33, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14], v41[15], v41[16], v41[17], v41[18], v41[19], v41[20], v41[21], v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7]);

  memcpy(v48, v42, sizeof(v48));
  v46 = v43;
  v47 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19775A780;
  if (qword_1EAF3F4A0 != -1)
  {
    OUTLINED_FUNCTION_3_8();
  }

  v41[0] = qword_1EAF3FCC0;
  *&v41[1] = unk_1EAF3FCC8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F740, &unk_19775A7F0);
  v23 = sub_19765F094();
  sub_1976C78F8(v22, v23, (v21 + 32));

  v42[3] = &unk_1F0BBACF0;
  v42[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v24 = swift_allocObject();
  v42[0] = v24;
  memcpy((v24 + 16), v48, 0x88uLL);
  *(v24 + 152) = v21;
  v25 = v47;
  *(v24 + 160) = v46;
  *(v24 + 176) = v25;
  sub_19764C978(v42);
  __swift_destroy_boxed_opaque_existential_0(v42);
  if (!v0)
  {
    LOBYTE(v41[0]) = 0;
    while (1)
    {
      sub_19764EA8C();
      if (!v26)
      {
        break;
      }

      if (v41[0])
      {

        break;
      }

      v27 = objc_autoreleasePoolPush();
      sub_19765272C();
      v28 = v42[1];
      if (qword_1ED696EA8 != -1)
      {
        OUTLINED_FUNCTION_2_11();
        swift_once();
      }

      OUTLINED_FUNCTION_5(&qword_1EAF3EFB0);
      sub_19765272C();
      v34 = v28;

      sub_1976917D0();
      v29 = v37;
      v30 = sub_19774EAD0();
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
      v31 = sub_19774F2E0();
      sub_19765D558(v29);

      v35(v31, v41);

      objc_autoreleasePoolPop(v27);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9();
}

uint64_t sub_19769086C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v7 - v2;
  if (qword_1ED696EB8 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  v4 = v7[2];
  if (qword_1ED696EA8 != -1)
  {
    swift_once();
  }

  sub_19765272C();
  sub_1976917D0();
  v5 = sub_19774EAD0();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_19774F2E0();
  sub_19765D558(v3);

  return v4;
}

void sub_197690A50()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v59 - v7;
  v9 = sub_19766E2D0(v4, v2);
  if (v0)
  {
LABEL_23:
    OUTLINED_FUNCTION_9();
  }

  else
  {
    v13 = v9;
    v64 = v11;
    v65 = v12;
    v14 = v10;
    v63 = v8;
    if (qword_1ED696EC0 != -1)
    {
      OUTLINED_FUNCTION_1_15();
    }

    memcpy(v68, &unk_1EAF3EFE0, sizeof(v68));
    sub_1976BEF98();
    v67[3] = &unk_1F0BBACF0;
    v67[4] = &off_1F0BBAB00;
    OUTLINED_FUNCTION_6_0();
    v67[0] = swift_allocObject();
    memcpy((v67[0] + 16), v73, 0xB0uLL);
    sub_1976BB388();
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_4_0();
    sub_1976C7FD0();
    v67[0] = v13;
    v67[1] = v14;
    v15 = sub_1976B7FC0();
    v17 = v16;
    v19 = v18;

    memcpy(v66, v69, sizeof(v66));
    sub_1976BB434(v15, v17, v19, &unk_1F0BBACF0, &off_1F0BBAB00, v20, v21, v22, v59, v60, v61, v62, v63, v64, v65, v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v66[12], v66[13], v66[14], v66[15], v66[16], v66[17], v66[18], v66[19], v66[20], v66[21], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8]);

    memcpy(v70, v69, sizeof(v70));
    sub_19764BBBC(v70);
    OUTLINED_FUNCTION_4_0();
    sub_1976C7FD0();
    v69[0] = v64;
    v69[1] = v65;
    v23 = sub_1976B7FC0();
    v25 = v24;
    v27 = v26;

    memcpy(v66, v67, sizeof(v66));
    sub_1976BB434(v23, v25, v27, &unk_1F0BBACF0, &off_1F0BBAB00, v28, v29, v30, v59, v60, v61, v62, v63, v64, v65, v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v66[12], v66[13], v66[14], v66[15], v66[16], v66[17], v66[18], v66[19], v66[20], v66[21], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8]);

    memcpy(v71, v67, sizeof(v71));
    sub_19764BBBC(v71);
    memcpy(v72, v69, sizeof(v72));
    v69[3] = &unk_1F0BBACF0;
    v69[4] = &off_1F0BBAB00;
    OUTLINED_FUNCTION_6_0();
    v69[0] = swift_allocObject();
    memcpy((v69[0] + 16), v72, 0xB0uLL);
    v31 = sub_19764C978(v69);
    __swift_destroy_boxed_opaque_existential_0(v69);
    v32 = sub_1976917D0();
    v33 = MEMORY[0x1E69E6158];
    v64 = v32;
    v62 = sub_19774EE40();
    for (i = LNOpenURLRequest.info; ; i = (LNOpenURLRequest + 32))
    {
      while (1)
      {
        sub_19764EA8C();
        if (!v35)
        {

          goto LABEL_23;
        }

        v36 = i[471];

        if (v36 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        OUTLINED_FUNCTION_7();
        if (!v36)
        {
          break;
        }
      }

      v65 = v69[0];
      v74 = v69[1];
      if (qword_1ED696EA8 != -1)
      {
        OUTLINED_FUNCTION_2_11();
        swift_once();
      }

      OUTLINED_FUNCTION_5(&qword_1EAF3EFB0);
      OUTLINED_FUNCTION_7();
      v37 = v31;
      v38 = v33;

      v39 = sub_19774EAD0();
      v40 = v63;
      __swift_storeEnumTagSinglePayload(v63, 1, 1, v39);
      v41 = sub_19774F2E0();
      sub_19765D558(v40);

      v61 = v41;
      v42 = v62;
      HIDWORD(v60) = swift_isUniquelyReferenced_nonNull_native();
      v69[0] = v42;
      v43 = sub_19764EA74(v65, v74);
      v44 = *(v42 + 16);
      LODWORD(v62) = v45;
      if (__OFADD__(v44, (v45 & 1) == 0))
      {
        break;
      }

      v46 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCD8, &qword_19775E080);
      if (sub_19774F6F0())
      {
        v47 = sub_19764EA74(v65, v74);
        v49 = v62;
        if ((v62 & 1) != (v48 & 1))
        {
          goto LABEL_27;
        }

        v50 = v47;
        v33 = v38;
        v31 = v37;
      }

      else
      {
        v50 = v46;
        v33 = v38;
        v31 = v37;
        v49 = v62;
      }

      if (v49)
      {

        v62 = v69[0];
        v51 = *(v69[0] + 56);
        v65 = *(v51 + 8 * v50);
        v52 = v61;
        *(v51 + 8 * v50) = v61;
      }

      else
      {
        v53 = v69[0];
        *(v69[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
        v54 = (v53[6] + 16 * v50);
        *v54 = v65;
        v54[1] = v74;
        v55 = v61;
        *(v53[7] + 8 * v50) = v61;

        v56 = v53[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_26;
        }

        v62 = v53;
        v53[2] = v58;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_19774F8A0();
    __break(1u);
  }
}

void sub_197691168()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  if (qword_1ED696EC0 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  memcpy(v33, &unk_1EAF3EFE0, 0xB0uLL);
  if (v2)
  {
    sub_19764DFC8(v33, &v17);
    if (qword_1ED696EB8 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    OUTLINED_FUNCTION_5(&qword_1EAF3EFC8);
    v17 = v4;
    v18 = v2;
    v5 = sub_1976B7FC0();
    v7 = v6;
    v9 = v8;
    memcpy(v16, v33, sizeof(v16));
    sub_1976BB434(v5, v7, v9, &unk_1F0BBACF0, &off_1F0BBAB00, v10, v11, v12, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);

    sub_19764BBBC(v33);
    v13 = &v17;
  }

  else
  {
    sub_19764DFC8(v33, &v17);
    v13 = v33;
  }

  memcpy(v32, v13, sizeof(v32));
  v20 = &unk_1F0BBACF0;
  v21 = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  v17 = swift_allocObject();
  memcpy((v17 + 16), v32, 0xB0uLL);
  sub_19764C978(&v17);
  v14 = __swift_destroy_boxed_opaque_existential_0(&v17);
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](v14);

    sub_1976BF5D8();
  }

  OUTLINED_FUNCTION_9();
}

uint64_t sub_1976913E8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_197691420()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_1ED696EC0 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  memcpy(__dst, &unk_1EAF3EFE0, sizeof(__dst));
  if (qword_1ED696EB8 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  OUTLINED_FUNCTION_5(&qword_1EAF3EFC8);
  __src[0] = v8;
  __src[1] = v6;
  v9 = sub_1976B7FC0();
  v11 = v10;
  v13 = v12;
  if (qword_1EAF3F4A0 != -1)
  {
    OUTLINED_FUNCTION_3_8();
  }

  OUTLINED_FUNCTION_5(&qword_1EAF3FCC0);
  __src[0] = v4;
  v14 = sub_1976B7FC0();
  v17 = sub_1976B9D9C(v9, v11, v13, v14, v15, v16);
  v19 = v18;
  v21 = v20;

  memcpy(v27, __dst, sizeof(v27));
  sub_1976BB434(v17, v19, v21, &unk_1F0BBACF0, &off_1F0BBAB00, v22, v23, v24, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v4, v2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v30, __src, sizeof(v30));
  __src[3] = &unk_1F0BBACF0;
  __src[4] = &off_1F0BBAB00;
  OUTLINED_FUNCTION_6_0();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v30, 0xB0uLL);
  v25 = sub_1976C0920(__src);
  __swift_destroy_boxed_opaque_existential_0(__src);
  if (!v0 && v25)
  {
    sub_19769086C();
  }

  OUTLINED_FUNCTION_9();
}

uint64_t sub_1976916A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_197660250(a1, a2, a3, a4, 0x736D756E65, 0xE500000000000000, 0xD000000000000010, 0x80000001977604F0, 0x696669746E656469, 0xEA00000000007265, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000197760510);
  if (!v5)
  {
    if (v7)
    {
      sub_197691420();
      a5 = v9;
    }

    else
    {
      return 0;
    }
  }

  return a5;
}

unint64_t sub_1976917D0()
{
  result = qword_1ED696E50;
  if (!qword_1ED696E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED696E50);
  }

  return result;
}

uint64_t sub_19769181C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

uint64_t (*sub_19769187C(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_197692904;
}

uint64_t sub_1976918E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = sub_19774EF20();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  aBlock[4] = sub_197692930;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_197692944;
  aBlock[3] = &block_descriptor_42_0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [a5 enumerateActionsForBundleIdentifier:v8 usingBlock:v10 error:aBlock];
  _Block_release(v10);

  v12 = aBlock[0];
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  if (!v11)
  {
    sub_19774E9F0();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (*sub_197691A7C(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v1 = sub_19769187C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1976927BC;
}

uint64_t (*sub_197691AEC(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_197692884;
}

uint64_t sub_197691B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = sub_19774EF20();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  aBlock[4] = sub_1976928A0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_197692944;
  aBlock[3] = &block_descriptor_30_0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [a5 enumerateEnumsForBundleIdentifier:v8 usingBlock:v10 error:aBlock];
  _Block_release(v10);

  v12 = aBlock[0];
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  if (!v11)
  {
    sub_19774E9F0();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (*sub_197691CEC(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v1 = sub_197691AEC(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_197692820;
}

uint64_t (*sub_197691D5C(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_197692804;
}

uint64_t sub_197691DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = sub_19774EF20();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  aBlock[4] = sub_197692930;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_197692944;
  aBlock[3] = &block_descriptor_18_1;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [a5 enumerateEntitiesForBundleIdentifier:v8 usingBlock:v10 error:aBlock];
  _Block_release(v10);

  v12 = aBlock[0];
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  if (!v11)
  {
    sub_19774E9F0();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (*sub_197691F5C(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v1 = sub_197691D5C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1976927BC;
}

uint64_t (*sub_197691FCC(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1976927E8;
}

uint64_t sub_197692030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = sub_19774EF20();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  aBlock[4] = sub_197692930;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_197692944;
  aBlock[3] = &block_descriptor_10;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [a5 enumerateQueriesForBundleIdentifier:v8 usingBlock:v10 error:aBlock];
  _Block_release(v10);

  v12 = aBlock[0];
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  if (!v11)
  {
    sub_19774E9F0();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (*sub_1976921CC(void *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v1 = sub_197691FCC(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1976927BC;
}

id LNMetadataProvider.accumulate<A>(_:)(uint64_t a1)
{
  v3 = v1;
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  (*a1)(v3);
  v15[0] = 0;
  v5 = [v3 bundlesWithError_];
  v6 = v15[0];
  if (v5)
  {
    v7 = v5;
    v8 = sub_19774F120();
    v9 = v6;

    v15[0] = v8;
    sub_19774F190();
    v13[1] = v13;
    v14 = sub_19774EE00();
    MEMORY[0x1EEE9AC00](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
    sub_19774EE50();
    sub_197692550();
    sub_19774F0F0();

    if (v2)
    {
    }

    else
    {

      result = v15[1];
    }
  }

  else
  {
    v11 = v15[0];
    sub_19774E9F0();

    swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_197692434(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), void *), uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  v12 = sub_19774EE10();
  v11[2] = a5;
  v11[3] = &v12;
  a3(v9, v8, sub_19769292C, v11);
  if (v5)
  {
  }

  v11[6] = v8;
  v11[7] = v12;
  v11[5] = v9;
  sub_19774F190();
  sub_19774EE50();

  return sub_19774EE60();
}

unint64_t sub_197692550()
{
  result = qword_1EAF3ED68;
  if (!qword_1EAF3ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF3FF30, &unk_19775A950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF3ED68);
  }

  return result;
}

uint64_t LNMetadataProvider.accumulate<A>(_:forBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *(a1 + 8);
  v11 = (*a1)(v6);
  v14 = sub_19774EE10();
  v13[2] = a4;
  v13[3] = &v14;
  v11(a2, a3, sub_19769274C, v13);

  if (v5)
  {
  }

  else
  {
    return v14;
  }
}

uint64_t sub_19769267C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_19774F190();
  return sub_19774F180();
}

uint64_t sub_197692768()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19769284C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1976928A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1976928C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[3] = a4;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9[2] = a3;
  return v6(a1, a2, a5, v9);
}

uint64_t sub_197692948(uint64_t a1)
{
  v1 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_19774F500();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_19764AD60(0, v2 & ~(v2 >> 63), 0);
    v44 = v50;
    result = sub_197665B48(v1);
    v47 = result;
    v48 = v4;
    v49 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v40 = v1 + 56;
      v39 = v1 + 64;
      v41 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v8 = v47;
        v9 = v49;
        v43 = v48;
        v10 = v1;
        sub_197665BB4(v47, v48, v49, v1);
        v12 = v11;
        v13 = [v11 bundleIdentifier];
        v14 = sub_19774EF50();
        v16 = v15;

        v45 = v14;
        v46 = v16;
        MEMORY[0x19A8E4C40](58, 0xE100000000000000);
        v17 = [v12 actionIdentifier];
        v18 = sub_19774EF50();
        v20 = v19;

        MEMORY[0x19A8E4C40](v18, v20);

        v21 = v45;
        v22 = v46;
        v23 = v44;
        v50 = v44;
        v25 = *(v44 + 16);
        v24 = *(v44 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_19764AD60((v24 > 1), v25 + 1, 1);
          v23 = v50;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v22;
        v44 = v23;
        if (v42)
        {
          if (!v9)
          {
            goto LABEL_36;
          }

          v1 = v10;
          if (sub_19774F4D0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v31 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF40, &qword_19775E140);
          v32 = sub_19774F200();
          sub_19774F550();
          result = v32(&v45, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v10;
          v27 = 1 << *(v10 + 32);
          if (v8 >= v27)
          {
            goto LABEL_32;
          }

          v28 = v8 >> 6;
          v29 = *(v40 + 8 * (v8 >> 6));
          if (((v29 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v10 + 36) != v43)
          {
            goto LABEL_34;
          }

          v30 = v29 & (-2 << (v8 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v31 = v41;
          }

          else
          {
            v33 = v28 << 6;
            v34 = v28 + 1;
            v35 = (v39 + 8 * v28);
            v31 = v41;
            while (v34 < (v27 + 63) >> 6)
            {
              v37 = *v35++;
              v36 = v37;
              v33 += 64;
              ++v34;
              if (v37)
              {
                result = sub_197665BA8(v8, v43, 0);
                v27 = __clz(__rbit64(v36)) + v33;
                goto LABEL_27;
              }
            }

            result = sub_197665BA8(v8, v43, 0);
          }

LABEL_27:
          v38 = *(v1 + 36);
          v47 = v27;
          v48 = v38;
          v49 = 0;
        }

        if (v6 == v31)
        {
          sub_197665BA8(v47, v48, v49);
          return v44;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

uint64_t sub_197692CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for LNActionRecord();
  v5 = v4;
  if (v3)
  {
    v6 = *(*(v4 - 8) + 80);
    OUTLINED_FUNCTION_22_4();
    sub_1976A7AD4();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v5);
}

id sub_197692D68(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sub_19774EF20();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_19774E9F0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_197692E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_19764EA74(a1, a2);
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_197692EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_19764EA74(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_197692EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC8];
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v40 = *(v6 - 1);
    v41 = v6;
    v47 = *(v6 - 2);

    v39 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (!v5[2])
    {
      goto LABEL_5;
    }

    v8 = sub_19764EA74(v45, v46);
    if (v9)
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
LABEL_5:
      sub_197648238(0, &qword_1ED696EF0, 0x1E69AC7F8);
      v10 = sub_19774EE40();
    }

    v11 = v44;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_19764EA74(v42, v43);
    if (__OFADD__(v10[2], (v13 & 1) == 0))
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F748, &qword_19775A790);
    v38 = v4;
    if (sub_19774F6F0())
    {
      v16 = sub_19764EA74(v42, v43);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_29;
      }

      v14 = v16;
    }

    v18 = v10;
    if (v15)
    {
      v19 = v10[7];
      v20 = *(v19 + 8 * v14);
      *(v19 + 8 * v14) = v11;
    }

    else
    {
      v10[(v14 >> 6) + 8] |= 1 << v14;
      v21 = (v10[6] + 16 * v14);
      *v21 = v42;
      v21[1] = v43;
      *(v10[7] + 8 * v14) = v11;
      v22 = v10[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_27;
      }

      v10[2] = v24;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_19764EA74(v45, v46);
    if (__OFADD__(v5[2], (v26 & 1) == 0))
    {
      goto LABEL_26;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEC0, &qword_19775E010);
    if (sub_19774F6F0())
    {
      v29 = v45;
      v30 = sub_19764EA74(v45, v46);
      if ((v28 & 1) != (v31 & 1))
      {
        goto LABEL_29;
      }

      v27 = v30;
    }

    else
    {
      v29 = v45;
    }

    if (v28)
    {
      v32 = v5[7];
      v33 = *(v32 + 8 * v27);
      *(v32 + 8 * v27) = v18;
    }

    else
    {
      v5[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v5[6] + 16 * v27);
      *v34 = v29;
      v34[1] = v46;
      *(v5[7] + 8 * v27) = v10;
      v35 = v5[2];
      v23 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v5[2] = v36;
    }

    v6 = v41 + 3;
    v4 = v38 - 1;
    if (v38 == 1)
    {
      return v5;
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
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

uint64_t sub_19769327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v38 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v38 == v4)
    {
      return v5;
    }

    v6 = *(type metadata accessor for LNActionRecord() - 8);
    v7 = a4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (v5[2] && (v8 = sub_19764EA74(v43, v44), (v9 & 1) != 0))
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
      sub_197648238(0, &qword_1ED696FD0, 0x1E69AC678);
      v10 = sub_19774EE40();
    }

    v11 = v42;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_19764EA74(v40, v41);
    if (__OFADD__(v10[2], (v13 & 1) == 0))
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEF0, &qword_19775E110);
    v39 = v4;
    if (sub_19774F6F0())
    {
      v16 = sub_19764EA74(v40, v41);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_29;
      }

      v14 = v16;
    }

    v18 = v10;
    if (v15)
    {
      v19 = v10[7];
      v20 = *(v19 + 8 * v14);
      *(v19 + 8 * v14) = v11;
    }

    else
    {
      v10[(v14 >> 6) + 8] |= 1 << v14;
      v21 = (v10[6] + 16 * v14);
      *v21 = v40;
      v21[1] = v41;
      *(v10[7] + 8 * v14) = v11;
      v22 = v10[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_27;
      }

      v10[2] = v24;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_19764EA74(v43, v44);
    if (__OFADD__(v5[2], (v26 & 1) == 0))
    {
      goto LABEL_26;
    }

    v27 = v25;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEF8, &qword_19775E118);
    if (sub_19774F6F0())
    {
      v29 = sub_19764EA74(v43, v44);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_29;
      }

      v27 = v29;
    }

    if (v28)
    {
      v31 = v5[7];
      v32 = *(v31 + 8 * v27);
      *(v31 + 8 * v27) = v18;
    }

    else
    {
      v5[(v27 >> 6) + 8] |= 1 << v27;
      v33 = (v5[6] + 16 * v27);
      *v33 = v43;
      v33[1] = v44;
      *(v5[7] + 8 * v27) = v10;
      v34 = v5[2];
      v23 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v5[2] = v35;
    }

    v4 = v39 + 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

uint64_t sub_197693624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC8];
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v38 = *(v6 - 1);
    v39 = v6;
    v45 = *(v6 - 2);

    v37 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (!v5[2])
    {
      goto LABEL_5;
    }

    v8 = sub_19764EA74(v43, v44);
    if (v9)
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
LABEL_5:
      sub_197648238(0, &qword_1ED696E48, 0x1E69AC988);
      v10 = sub_19774EE40();
    }

    v11 = v42;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_19764EA74(v40, v41);
    if (__OFADD__(v10[2], (v13 & 1) == 0))
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3F810, &qword_19775A9B8);
    v36 = v4;
    if (sub_19774F6F0())
    {
      v16 = sub_19764EA74(v40, v41);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_28;
      }

      v14 = v16;
    }

    if (v15)
    {
      v18 = v10[7];
      v19 = *(v18 + 8 * v14);
      *(v18 + 8 * v14) = v11;
    }

    else
    {
      v10[(v14 >> 6) + 8] |= 1 << v14;
      v20 = (v10[6] + 16 * v14);
      *v20 = v40;
      v20[1] = v41;
      *(v10[7] + 8 * v14) = v11;
      v21 = v10[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v10[2] = v23;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_19764EA74(v43, v44);
    if (__OFADD__(v5[2], (v25 & 1) == 0))
    {
      goto LABEL_25;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEE0, &qword_19775E100);
    if (sub_19774F6F0())
    {
      v28 = sub_19764EA74(v43, v44);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_28;
      }

      v26 = v28;
    }

    if (v27)
    {
      v30 = v5[7];
      v31 = *(v30 + 8 * v26);
      *(v30 + 8 * v26) = v10;
    }

    else
    {
      v5[(v26 >> 6) + 8] |= 1 << v26;
      v32 = (v5[6] + 16 * v26);
      *v32 = v43;
      v32[1] = v44;
      *(v5[7] + 8 * v26) = v10;
      v33 = v5[2];
      v22 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v22)
      {
        goto LABEL_27;
      }

      v5[2] = v34;
    }

    v6 = v39 + 3;
    --v4;
    if (v36 == 1)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

uint64_t sub_19769399C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC8];
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v38 = *(v6 - 1);
    v39 = v6;
    v45 = *(v6 - 2);

    v37 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (!v5[2])
    {
      goto LABEL_5;
    }

    v8 = sub_19764EA74(v43, v44);
    if (v9)
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
LABEL_5:
      sub_197648238(0, &qword_1ED696E50, 0x1E69AC838);
      v10 = sub_19774EE40();
    }

    v11 = v42;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_19764EA74(v40, v41);
    if (__OFADD__(v10[2], (v13 & 1) == 0))
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCD8, &qword_19775E080);
    v36 = v4;
    if (sub_19774F6F0())
    {
      v16 = sub_19764EA74(v40, v41);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_28;
      }

      v14 = v16;
    }

    if (v15)
    {
      v18 = v10[7];
      v19 = *(v18 + 8 * v14);
      *(v18 + 8 * v14) = v11;
    }

    else
    {
      v10[(v14 >> 6) + 8] |= 1 << v14;
      v20 = (v10[6] + 16 * v14);
      *v20 = v40;
      v20[1] = v41;
      *(v10[7] + 8 * v14) = v11;
      v21 = v10[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v10[2] = v23;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_19764EA74(v43, v44);
    if (__OFADD__(v5[2], (v25 & 1) == 0))
    {
      goto LABEL_25;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FED0, &qword_19775E088);
    if (sub_19774F6F0())
    {
      v28 = sub_19764EA74(v43, v44);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_28;
      }

      v26 = v28;
    }

    if (v27)
    {
      v30 = v5[7];
      v31 = *(v30 + 8 * v26);
      *(v30 + 8 * v26) = v10;
    }

    else
    {
      v5[(v26 >> 6) + 8] |= 1 << v26;
      v32 = (v5[6] + 16 * v26);
      *v32 = v43;
      v32[1] = v44;
      *(v5[7] + 8 * v26) = v10;
      v33 = v5[2];
      v22 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v22)
      {
        goto LABEL_27;
      }

      v5[2] = v34;
    }

    v6 = v39 + 3;
    --v4;
    if (v36 == 1)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

uint64_t sub_197693D14()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FDE8, &qword_19775DEE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_19774F1C0();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = v0;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_19775DEF0;
  v8[5] = v7;
  sub_1976A52C8(0, 0, v5, &unk_19775DF00, v8);
}

id sub_197693E38()
{
  OUTLINED_FUNCTION_53_1();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_19774EF20();

  v3 = [v1 *v0];

  return v3;
}

void *sub_197693EA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1976A57DC(*(a1 + 16), 0);
  v4 = sub_1976A7B2C(&v6, v3 + 4, v2, a1);
  sub_197651EE4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_197693F34(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_19774EF50();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id _LNMetadataProviderDirect.__allocating_init(connection:options:)()
{
  OUTLINED_FUNCTION_6_7();
  v3 = objc_allocWithZone(v0);
  return _LNMetadataProviderDirect.init(connection:options:)(v2, v1);
}

id sub_197693FD0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_19769402C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_197694094(uint64_t a1, char *a2)
{
  v64[5] = *MEMORY[0x1E69E9840];
  v5 = sub_19774ED60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v10 = [objc_opt_self() currentProcess], v11 = objc_msgSend(v10, sel_isApplication), v10, !v11))
  {
    v20 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    sub_197660EEC();
    v21 = sub_197662474(v64);
    if (!v2)
    {
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0(v64);
      KeyPath = swift_getKeyPath();
      v24 = swift_getKeyPath();
      v25 = swift_getKeyPath();
      v5 = sub_19769327C(KeyPath, v24, v25, v22);

LABEL_25:
      v53 = *MEMORY[0x1E69E9840];
      return v5;
    }

    __swift_destroy_boxed_opaque_existential_0(v64);
LABEL_24:

    goto LABEL_25;
  }

  v12 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v13 + 32) = sub_19764AA58();
  v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v15 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v12);
  v64[0] = 0;
  if ([v15 acquireWithError_])
  {
    v16 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v17 = v64[0];
    sub_197660EEC();
    v18 = sub_197662474(v64);
    v19 = v2;
    if (!v2)
    {
      v54 = v18;
      __swift_destroy_boxed_opaque_existential_0(v64);
      v55 = swift_getKeyPath();
      v56 = swift_getKeyPath();
      v57 = swift_getKeyPath();
      v5 = sub_19769327C(v55, v56, v57, v54);

      [v15 invalidate];

      goto LABEL_25;
    }

    __swift_destroy_boxed_opaque_existential_0(v64);
    [v15 invalidate];
  }

  else
  {
    v26 = v64[0];
    v19 = sub_19774E9F0();

    swift_willThrow();
  }

  v64[0] = v19;
  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    goto LABEL_23;
  }

  v60 = v6;
  v61 = v15;
  v28 = v62;
  v29 = [v62 domain];
  v30 = sub_19774EF50();
  v32 = v31;

  v33 = *MEMORY[0x1E69C7688];
  if (v30 == sub_19774EF50() && v32 == v34)
  {
  }

  else
  {
    v36 = sub_19774F7E0();

    if ((v36 & 1) == 0)
    {

LABEL_23:
      goto LABEL_24;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v38 = v28;
    v39 = sub_19774ED40();
    v40 = sub_19774F2B0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63 = v59;
      *v41 = 136315138;
      v42 = [v38 localizedDescription];
      HIDWORD(v58) = v40;
      v43 = v42;
      v44 = sub_19774EF50();
      v46 = v45;

      v47 = sub_19768ED3C(v44, v46, &v63);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_19763D000, v39, BYTE4(v58), "Failed to acquire assertions: %s", v41, 0xCu);
      v48 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x19A8E67F0](v48, -1, -1);
      MEMORY[0x19A8E67F0](v41, -1, -1);
    }

    (*(v60 + 8))(v9, v5);
    v49 = v61;
    v50 = sub_19774EF50();
    v5 = v51;
    v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v50, v5, 9006, 0);
    swift_willThrow();

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void *sub_19769474C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v70 = a2;
  v71 = a3;
  v74[1] = *MEMORY[0x1E69E9840];
  v11 = sub_19774ED60();
  v69 = *(v11 - 1);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v15 = [objc_opt_self() currentProcess], v16 = objc_msgSend(v15, sel_isApplication), v15, !v16))
  {
    v11 = v70;
    v26 = sub_197662BA0(v71, a4, a5, a6, *&v70[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection]);
    if (v6)
    {

LABEL_24:

      goto LABEL_25;
    }

    v27 = v26;
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    v31 = sub_19769327C(KeyPath, v29, v30, v27);
    v32 = v11;
    v11 = v31;

    goto LABEL_9;
  }

  v67 = a6;
  v17 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v18 + 32) = sub_19764AA58();
  v19 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v20 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v17);
  v73 = 0;
  v68 = v20;
  if ([v20 acquireWithError_])
  {
    v21 = v70;
    v22 = *&v70[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v23 = v73;
    v24 = sub_197662BA0(v71, a4, a5, v67, v22);
    v25 = v6;
    if (v6)
    {
      [v68 invalidate];
      goto LABEL_11;
    }

    v61 = v24;
    v62 = swift_getKeyPath();
    v63 = swift_getKeyPath();
    v64 = swift_getKeyPath();
    v11 = sub_19769327C(v62, v63, v64, v61);

    v65 = v68;
    [v68 invalidate];

LABEL_9:

LABEL_25:
    v60 = *MEMORY[0x1E69E9840];
    return v11;
  }

  v33 = v73;
  v25 = sub_19774E9F0();

  swift_willThrow();
LABEL_11:
  v73 = v25;
  v34 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
LABEL_23:

    goto LABEL_24;
  }

  v35 = v72;
  v36 = [v72 domain];
  v37 = sub_19774EF50();
  v39 = v38;

  v40 = *MEMORY[0x1E69C7688];
  if (v37 == sub_19774EF50() && v39 == v41)
  {
  }

  else
  {
    v43 = sub_19774F7E0();

    if ((v43 & 1) == 0)
    {

      goto LABEL_23;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v45 = v35;
    v46 = sub_19774ED40();
    v47 = sub_19774F2B0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74[0] = v67;
      *v48 = 136315138;
      v49 = [v45 localizedDescription];
      HIDWORD(v66) = v47;
      v50 = v49;
      v51 = sub_19774EF50();
      v53 = v52;

      v54 = sub_19768ED3C(v51, v53, v74);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_19763D000, v46, BYTE4(v66), "Failed to acquire assertions: %s", v48, 0xCu);
      v55 = v67;
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x19A8E67F0](v55, -1, -1);
      MEMORY[0x19A8E67F0](v48, -1, -1);
    }

    (*(v69 + 8))(v14, v11);
    v56 = sub_19774EF50();
    v58 = v57;
    v59 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v56, v58, 9006, 0);
    swift_willThrow();

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

id sub_197694E24(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v57 = a5;
  v61[1] = *MEMORY[0x1E69E9840];
  v12 = sub_19774ED60();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v16 = [objc_opt_self() currentProcess], v17 = objc_msgSend(v16, sel_isApplication), v16, !v17))
  {
    sub_19769DF90(a2, a3, a4, v57, a6, &v60);
    if (v6)
    {

LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v54 = a6;
  v18 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v19 + 32) = sub_19764AA58();
  v20 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v21 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v18);
  v59 = 0;
  if ([v21 acquireWithError_])
  {
    v22 = v59;
    sub_19769DF90(a2, a3, a4, v57, v54, &v60);
    v23 = v6;
    if (v6)
    {
      [v21 invalidate];
      goto LABEL_11;
    }

    [v21 invalidate];

LABEL_9:
    a2 = v60;

LABEL_26:
    v50 = *MEMORY[0x1E69E9840];
    return a2;
  }

  v24 = v59;
  v23 = sub_19774E9F0();

  swift_willThrow();
LABEL_11:
  v59 = v23;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
LABEL_23:

    goto LABEL_24;
  }

  v53 = v58;
  v54 = v21;
  v26 = [v58 domain];
  v27 = sub_19774EF50();
  v29 = v28;

  v30 = *MEMORY[0x1E69C7688];
  if (v27 == sub_19774EF50() && v29 == v31)
  {
  }

  else
  {
    v33 = sub_19774F7E0();

    if ((v33 & 1) == 0)
    {

LABEL_24:
      goto LABEL_25;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v35 = v53;
    v36 = sub_19774ED40();
    v37 = sub_19774F2B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v61[0] = v52;
      *v38 = 136315138;
      v39 = [v35 localizedDescription];
      HIDWORD(v51) = v37;
      v40 = v39;
      v41 = sub_19774EF50();
      v53 = v35;
      v43 = v42;

      v44 = sub_19768ED3C(v41, v43, v61);
      v35 = v53;

      *(v38 + 4) = v44;
      _os_log_impl(&dword_19763D000, v36, BYTE4(v51), "Failed to acquire assertions: %s", v38, 0xCu);
      v45 = v52;
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x19A8E67F0](v45, -1, -1);
      MEMORY[0x19A8E67F0](v38, -1, -1);
    }

    (*(v55 + 8))(v15, v56);
    v21 = v54;
    v46 = sub_19774EF50();
    v48 = v47;
    v49 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v46, v48, 9006, 0);
    swift_willThrow();

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

_BYTE *sub_197695428(_BYTE *a1, char *a2, unint64_t a3)
{
  v4 = v3;
  v72[1] = *MEMORY[0x1E69E9840];
  v8 = sub_19774ED60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion] != 1 || (a1 = [objc_opt_self() currentProcess], v13 = objc_msgSend(a1, sel_isApplication), a1, !v13))
  {
    v21 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v22 = sub_1976627B8(a3);
    if (v3)
    {
LABEL_26:

      goto LABEL_27;
    }

    v23 = v22;
    v24 = *(v22 + 2);
    if (v24 != sub_197652138(a3))
    {
      sub_19769E8D4(v23, a3);
    }

    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    v27 = swift_getKeyPath();
    a1 = sub_19769327C(KeyPath, v26, v27, v23);

    goto LABEL_10;
  }

  v69 = v9;
  v14 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v15 + 32) = sub_19764AA58();
  v16 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v17 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v14);
  v71 = 0;
  if ([v17 acquireWithError_])
  {
    v18 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v19 = v71;
    v20 = sub_1976627B8(a3);
    if (v3)
    {
      [v17 invalidate];
      goto LABEL_12;
    }

    v59 = v20;
    v60 = *(v20 + 2);
    if (v60 != sub_197652138(a3))
    {
      sub_19769E8D4(v59, a3);
    }

    v61 = swift_getKeyPath();
    v62 = swift_getKeyPath();
    v63 = swift_getKeyPath();
    a1 = sub_19769327C(v61, v62, v63, v59);

    [v17 invalidate];

LABEL_10:

LABEL_27:
    v58 = *MEMORY[0x1E69E9840];
    return a1;
  }

  v28 = v71;
  v4 = sub_19774E9F0();

  swift_willThrow();
LABEL_12:
  v71 = v4;
  v29 = v4;
  a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    goto LABEL_25;
  }

  v68 = v17;
  a1 = v70;
  v30 = [v70 domain];
  v31 = sub_19774EF50();
  v33 = v32;

  v34 = *MEMORY[0x1E69C7688];
  if (v31 == sub_19774EF50() && v33 == v35)
  {
  }

  else
  {
    v37 = sub_19774F7E0();

    if ((v37 & 1) == 0)
    {

LABEL_25:
      goto LABEL_26;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v39 = a1;
    v40 = sub_19774ED40();
    v41 = sub_19774F2B0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v66 = v42;
      v67 = swift_slowAlloc();
      v72[0] = v67;
      *v42 = 136315138;
      v43 = [v39 localizedDescription];
      v65 = v41;
      v44 = v43;
      v45 = sub_19774EF50();
      v47 = v46;

      v48 = sub_19768ED3C(v45, v47, v72);

      v49 = v66;
      *(v66 + 1) = v48;
      v50 = v49;
      _os_log_impl(&dword_19763D000, v40, v65, "Failed to acquire assertions: %s", v49, 0xCu);
      v51 = v67;
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x19A8E67F0](v51, -1, -1);
      MEMORY[0x19A8E67F0](v50, -1, -1);
    }

    (*(v69 + 8))(v12, v8);
    v52 = v68;
    v53 = sub_19774EF50();
    v55 = v54;
    v56 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v57 = v53;
    a1 = v56;
    sub_1976A4DDC(v57, v55, 9006, 0);
    swift_willThrow();

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_197695B08()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_0(v7);
  v52 = v9;
  v53 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_0();
  v54 = v13 - v12;
  if (*(v6 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v14 = [objc_opt_self() currentProcess], v15 = objc_msgSend(v14, sel_isApplication), v14, !v15))
  {
    v26 = *&v4[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v27 = OUTLINED_FUNCTION_61_1();
    v2(v27);
    if (v0)
    {
LABEL_26:

      goto LABEL_27;
    }

    goto LABEL_8;
  }

  v16 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v17 + 32) = OUTLINED_FUNCTION_2_12();
  v18 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v19 = OUTLINED_FUNCTION_14_4();
  v21 = sub_197648278(v19, v20, v16);
  v56 = 0;
  if ([v21 acquireWithError_])
  {
    v22 = *&v4[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v23 = v56;
    v24 = OUTLINED_FUNCTION_61_1();
    v2(v24);
    OUTLINED_FUNCTION_45_2();
    if (v0)
    {
      [v21 (v25 + 3704)];
      goto LABEL_10;
    }

    [v21 (v25 + 3704)];

LABEL_8:

LABEL_27:
    v50 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_9();
    return;
  }

  v28 = v56;
  OUTLINED_FUNCTION_33_3();
  sub_19774E9F0();

  swift_willThrow();
LABEL_10:
  OUTLINED_FUNCTION_85_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_28_0();
  if (!OUTLINED_FUNCTION_87_0())
  {

LABEL_25:
    goto LABEL_26;
  }

  v51 = v21;
  v29 = v55;
  v30 = [v55 domain];
  v31 = sub_19774EF50();
  v33 = v32;

  v34 = *MEMORY[0x1E69C7688];
  if (v31 == sub_19774EF50() && v33 == v35)
  {
  }

  else
  {
    v37 = sub_19774F7E0();

    if ((v37 & 1) == 0)
    {
LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    sub_19774ED70();
    v29 = v55;
    v38 = sub_19774ED40();
    v39 = sub_19774F2B0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_46_1();
      v41 = OUTLINED_FUNCTION_50_1();
      v57 = v41;
      *v40 = 136315138;
      v42 = [v29 localizedDescription];
      v43 = sub_19774EF50();
      v45 = v44;

      v46 = sub_19768ED3C(v43, v45, &v57);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_19763D000, v38, v39, "Failed to acquire assertions: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_38_2();
    }

    (*(v52 + 8))(v54, v53);
    sub_19774EF50();
    OUTLINED_FUNCTION_46_0();
    v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v48 = OUTLINED_FUNCTION_16_4();
    OUTLINED_FUNCTION_20_3(v48, v49);
    OUTLINED_FUNCTION_49_1();
    goto LABEL_24;
  }

  __break(1u);
}

id sub_19769602C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6, void *a7, uint64_t a8)
{
  v88 = a5;
  v89 = a7;
  v90 = a4;
  v98 = *MEMORY[0x1E69E9840];
  v14 = sub_19774ED60();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v18 = [objc_opt_self() currentProcess], v19 = objc_msgSend(v18, sel_isApplication), v18, !v19))
  {
    v31 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v32 = v90;
    sub_197677E88(a3, v90, v96);
    if (v8)
    {
      v33 = sub_19774EC60();
      sub_1976A78AC(&qword_1ED696D78, MEMORY[0x1E69AC0D0]);
      v34 = swift_allocError();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69AC0C8], v33);

      v36 = *a6;
      *a6 = v34;

LABEL_37:

      goto LABEL_38;
    }

    if (v97)
    {
      sub_197665DE0(v96, &qword_1EAF3FE90, &qword_19775DF78);
      v37 = sub_197687A64(a3, v32, v89, a8, v31);
      if (!v37)
      {
        v38 = sub_19774EC60();
        sub_1976A78AC(&qword_1ED696D78, MEMORY[0x1E69AC0D0]);
        v39 = swift_allocError();
        (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69AC0C8], v38);
        v41 = *a6;
        *a6 = v39;

        goto LABEL_37;
      }

      v56 = sub_19765213C(1000, v37);

      v57 = *v88;
      *v88 = v56;
    }

    else
    {
      v55 = *v88;
      *v88 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_37;
  }

  v85 = a8;
  v20 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v21 + 32) = sub_19764AA58();
  v22 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v23 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v20);
  v92 = 0;
  if ([v23 acquireWithError_])
  {
    v24 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v25 = v92;
    v26 = v90;
    sub_197677E88(a3, v90, v94);
    if (v8)
    {
      v27 = sub_19774EC60();
      sub_1976A78AC(&qword_1ED696D78, MEMORY[0x1E69AC0D0]);
      v28 = swift_allocError();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69AC0C8], v27);

      v30 = *a6;
      *a6 = v28;

LABEL_36:
      [v23 invalidate];

      goto LABEL_37;
    }

    v58 = v85;
    if (v95)
    {
      sub_197665DE0(v94, &qword_1EAF3FE90, &qword_19775DF78);
      v59 = sub_197687A64(a3, v26, v89, v58, v24);
      if (!v59)
      {
        v60 = sub_19774EC60();
        sub_1976A78AC(&qword_1ED696D78, MEMORY[0x1E69AC0D0]);
        v61 = swift_allocError();
        (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69AC0C8], v60);
        v63 = *a6;
        *a6 = v61;

        goto LABEL_36;
      }

      v82 = sub_19765213C(1000, v59);

      v83 = *v88;
      *v88 = v82;
    }

    else
    {
      v81 = *v88;
      *v88 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_36;
  }

  v89 = v23;
  v42 = v92;
  v43 = sub_19774E9F0();

  swift_willThrow();
  v92 = v43;
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  v45 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

LABEL_38:

    v84 = *MEMORY[0x1E69E9840];
    return result;
  }

  v46 = v91;
  v47 = [v91 domain];
  v48 = sub_19774EF50();
  v50 = v49;

  v51 = *MEMORY[0x1E69C7688];
  if (v48 == sub_19774EF50() && v50 == v52)
  {
  }

  else
  {
    v54 = sub_19774F7E0();

    if ((v54 & 1) == 0)
    {

      goto LABEL_31;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v65 = v46;
    v66 = sub_19774ED40();
    v67 = sub_19774F2B0();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v93 = v69;
      *v68 = 136315138;
      v70 = [v65 localizedDescription];
      v88 = v65;
      v71 = v70;
      v72 = sub_19774EF50();
      v74 = v73;

      v75 = v72;
      v45 = a2;
      v76 = sub_19768ED3C(v75, v74, &v93);

      *(v68 + 4) = v76;
      v65 = v88;
      _os_log_impl(&dword_19763D000, v66, v67, "Failed to acquire assertions: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x19A8E67F0](v69, -1, -1);
      MEMORY[0x19A8E67F0](v68, -1, -1);
    }

    (*(v86 + 8))(v17, v87);
    v77 = sub_19774EF50();
    v79 = v78;
    v80 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v77, v79, 9006, 0);
    swift_willThrow();

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void sub_1976969FC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void **a5, uint64_t *a6)
{
  v55 = a4;
  v58[1] = *MEMORY[0x1E69E9840];
  v12 = sub_19774ED60();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v15 = [objc_opt_self() currentProcess], v16 = objc_msgSend(v15, sel_isApplication), v15, !v16))
  {
    sub_1976A3F3C(a2, a3, v55, a5, a6);
    if (v6)
    {
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_8;
  }

  v51 = a2;
  v17 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v18 + 32) = sub_19764AA58();
  v19 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v20 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v17);
  v57 = 0;
  if ([v20 acquireWithError_])
  {
    v21 = v57;
    a2 = v51;
    sub_1976A3F3C(v51, a3, v55, a5, a6);
    v22 = v6;
    if (v6)
    {
      [v20 invalidate];
      goto LABEL_10;
    }

    [v20 invalidate];

LABEL_8:

LABEL_28:
    v49 = *MEMORY[0x1E69E9840];
    return;
  }

  v23 = v20;
  v24 = v57;
  v22 = sub_19774E9F0();

  v20 = v23;
  swift_willThrow();
  a2 = v51;
LABEL_10:
  v57 = v22;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

LABEL_26:
    goto LABEL_27;
  }

  v51 = v20;
  v26 = v56;
  v27 = [v56 domain];
  v28 = sub_19774EF50();
  v30 = v29;

  v31 = *MEMORY[0x1E69C7688];
  if (v28 == sub_19774EF50() && v30 == v32)
  {
  }

  else
  {
    v34 = sub_19774F7E0();

    if ((v34 & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    v35 = v54;
    sub_19774ED70();
    v26 = v26;
    v36 = sub_19774ED40();
    v37 = sub_19774F2B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58[0] = v39;
      *v38 = 136315138;
      v40 = [v26 localizedDescription];
      v41 = sub_19774EF50();
      v43 = v42;

      v44 = sub_19768ED3C(v41, v43, v58);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_19763D000, v36, v37, "Failed to acquire assertions: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x19A8E67F0](v39, -1, -1);
      MEMORY[0x19A8E67F0](v38, -1, -1);

      (*(v52 + 8))(v54, v53);
    }

    else
    {

      (*(v52 + 8))(v35, v53);
    }

    v45 = sub_19774EF50();
    v47 = v46;
    v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v45, v47, 9006, 0);
    swift_willThrow();
    goto LABEL_25;
  }

  __break(1u);
}

void sub_197696FE8()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_31_1();
  v8 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_40_2(OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion);
  if (!v26 || (v12 = [objc_opt_self() currentProcess], v13 = objc_msgSend(v12, sel_isApplication), v12, !v13))
  {
    v3(v7, v5, *&v0[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection]);
    if (v1)
    {
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v14 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v15 + 32) = OUTLINED_FUNCTION_2_12();
  v16 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v17 = OUTLINED_FUNCTION_14_4();
  v19 = sub_197648278(v17, v18, v14);
  v40[0] = 0;
  if ([v19 acquireWithError_])
  {
    v20 = *&v0[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v21 = v40[0];
    v3(v7, v5, v20);
    if (v1)
    {
      [v19 invalidate];
      goto LABEL_11;
    }

    [v19 invalidate];

LABEL_9:

LABEL_26:
    v36 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_9();
    return;
  }

  v22 = v40[0];
  sub_19774E9F0();

  swift_willThrow();
LABEL_11:
  OUTLINED_FUNCTION_85_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_28_0();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v38 = v19;
  v23 = [v39 domain];
  sub_19774EF50();
  OUTLINED_FUNCTION_78_0();

  v24 = *MEMORY[0x1E69C7688];
  sub_19774EF50();
  OUTLINED_FUNCTION_77_0();
  v26 = v26 && v1 == v25;
  if (v26)
  {
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_4();

    if ((v27 & 1) == 0)
    {

LABEL_24:
      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    OUTLINED_FUNCTION_90_0();
    v28 = v39;
    v29 = sub_19774ED40();
    v30 = sub_19774F2B0();

    if (OUTLINED_FUNCTION_89_0())
    {
      OUTLINED_FUNCTION_46_1();
      v40[1] = OUTLINED_FUNCTION_44_2();
      *v7 = 136315138;
      v31 = [v28 localizedDescription];
      v37 = v30;
      sub_19774EF50();
      OUTLINED_FUNCTION_84_0();
      v32 = OUTLINED_FUNCTION_68_0();

      *(v7 + 4) = v32;
      OUTLINED_FUNCTION_25_4(&dword_19763D000, "Failed to acquire assertions: %s", v37);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_38_2();
    }

    v33 = OUTLINED_FUNCTION_58_1();
    v34(v33);
    sub_19774EF50();
    OUTLINED_FUNCTION_82_0();
    v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_49_1();

    goto LABEL_24;
  }

  __break(1u);
}

id sub_1976974A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v9 = sub_19774ED60();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, sel_isApplication), v13, !v14))
  {
    sub_19769C888(a2, a3, a4, &v60);
    if (v4)
    {
LABEL_26:

      goto LABEL_27;
    }

    goto LABEL_8;
  }

  v56 = v9;
  v15 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v16 + 32) = sub_19764AA58();
  v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v18 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v15);
  v59 = 0;
  if ([v18 acquireWithError_])
  {
    v19 = v59;
    sub_19769C888(a2, a3, a4, &v60);
    v20 = v4;
    if (v4)
    {
      [v18 invalidate];
      goto LABEL_10;
    }

    [v18 invalidate];

LABEL_8:
    a2 = v60;

LABEL_27:
    v52 = *MEMORY[0x1E69E9840];
    return a2;
  }

  v21 = v59;
  v20 = sub_19774E9F0();

  swift_willThrow();
LABEL_10:
  v59 = v20;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  v23 = swift_dynamicCast();
  v24 = v56;
  if (!v23)
  {

    goto LABEL_25;
  }

  v55 = v18;
  v25 = v58;
  v26 = [v58 domain];
  v27 = sub_19774EF50();
  v29 = v28;

  v30 = *MEMORY[0x1E69C7688];
  if (v27 == sub_19774EF50() && v29 == v31)
  {
  }

  else
  {
    v33 = sub_19774F7E0();

    if ((v33 & 1) == 0)
    {

LABEL_25:
      goto LABEL_26;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v35 = v25;
    v36 = sub_19774ED40();
    v37 = sub_19774F2B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v61[0] = v54;
      *v38 = 136315138;
      v39 = v35;
      v40 = [v35 localizedDescription];
      v41 = sub_19774EF50();
      HIDWORD(v53) = v37;
      v42 = v41;
      v44 = v43;

      v45 = sub_19768ED3C(v42, v44, v61);

      *(v38 + 4) = v45;
      v35 = v39;
      _os_log_impl(&dword_19763D000, v36, BYTE4(v53), "Failed to acquire assertions: %s", v38, 0xCu);
      v46 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x19A8E67F0](v46, -1, -1);
      MEMORY[0x19A8E67F0](v38, -1, -1);

      (*(v57 + 8))(v12, v56);
    }

    else
    {

      (*(v57 + 8))(v12, v24);
    }

    v47 = v55;
    v48 = sub_19774EF50();
    v50 = v49;
    v51 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v48, v50, 9006, 0);
    swift_willThrow();

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_197697A78()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_35_2(v3, v4, v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v10 = OUTLINED_FUNCTION_0(v9);
  v53 = v11;
  v54 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_0();
  v16 = v15 - v14;
  if (*(v0 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v0 = [objc_opt_self() currentProcess], v17 = objc_msgSend(v0, sel_isApplication), v0, !v17))
  {
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_2();
    v2();
    if (v1)
    {

LABEL_25:
      v50 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_9();
      return;
    }

LABEL_9:
    OUTLINED_FUNCTION_86_1();

    goto LABEL_25;
  }

  v18 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v19 + 32) = OUTLINED_FUNCTION_2_12();
  objc_allocWithZone(MEMORY[0x1E69C7548]);
  v20 = OUTLINED_FUNCTION_14_4();
  v57 = 0;
  v52 = sub_197648278(v20, v21, v18);
  v22 = [v52 acquireWithError_];
  v23 = v57;
  if (v22)
  {
    v24 = v57;
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_2();
    v2();
    OUTLINED_FUNCTION_45_2();
    if (v1)
    {
      v26 = v52;
      [v52 (v25 + 3704)];
      goto LABEL_11;
    }

    [v52 (v25 + 3704)];

    goto LABEL_9;
  }

  v27 = v57;
  OUTLINED_FUNCTION_33_3();
  sub_19774E9F0();

  swift_willThrow();
  v26 = v52;
LABEL_11:
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_17_4();
  if (!OUTLINED_FUNCTION_87_0())
  {
LABEL_23:

    goto LABEL_24;
  }

  v28 = [v56 domain];
  v29 = sub_19774EF50();
  v31 = v30;

  v32 = *MEMORY[0x1E69C7688];
  if (v29 == sub_19774EF50() && v31 == v33)
  {
  }

  else
  {
    v35 = OUTLINED_FUNCTION_71_0();

    if ((v35 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    sub_19774ED70();
    v36 = v56;
    v37 = sub_19774ED40();
    v38 = sub_19774F2B0();

    if (OUTLINED_FUNCTION_88_0())
    {
      v39 = OUTLINED_FUNCTION_46_1();
      v51 = OUTLINED_FUNCTION_50_1();
      v58 = v51;
      *v39 = 136315138;
      v40 = [v36 localizedDescription];
      v41 = sub_19774EF50();
      v42 = v36;
      v44 = v43;

      v45 = sub_19768ED3C(v41, v44, &v58);
      v36 = v42;

      *(v39 + 4) = v45;
      OUTLINED_FUNCTION_70_0(&dword_19763D000, v46, v38, "Failed to acquire assertions: %s");
      __swift_destroy_boxed_opaque_existential_0(v51);
      v26 = v52;
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_38_2();
    }

    (*(v53 + 8))(v16, v54);
    sub_19774EF50();
    OUTLINED_FUNCTION_46_0();
    v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v48 = OUTLINED_FUNCTION_16_4();
    OUTLINED_FUNCTION_20_3(v48, v49);
    OUTLINED_FUNCTION_49_1();

    goto LABEL_23;
  }

  __break(1u);
}

void sub_197697F58()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_40_2(OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion);
  if (!v27 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, sel_isApplication), v13, !v14))
  {
    v2(v6, v4, *&v8[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection]);
    if (v0)
    {
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v15 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v16 + 32) = OUTLINED_FUNCTION_2_12();
  v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v18 = OUTLINED_FUNCTION_14_4();
  v20 = sub_197648278(v18, v19, v15);
  v44 = 0;
  if ([v20 acquireWithError_])
  {
    v21 = *&v8[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v22 = v44;
    v2(v6, v4, v21);
    if (v0)
    {
      [v20 invalidate];
      goto LABEL_11;
    }

    [v20 invalidate];

LABEL_9:

LABEL_26:
    v40 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_9();
    return;
  }

  v23 = v44;
  sub_19774E9F0();

  swift_willThrow();
LABEL_11:
  OUTLINED_FUNCTION_85_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_28_0();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v42 = v20;
  v24 = [v43 domain];
  sub_19774EF50();
  OUTLINED_FUNCTION_78_0();

  v25 = *MEMORY[0x1E69C7688];
  sub_19774EF50();
  OUTLINED_FUNCTION_77_0();
  v27 = v27 && v0 == v26;
  if (v27)
  {
  }

  else
  {
    v28 = OUTLINED_FUNCTION_15_4();

    if ((v28 & 1) == 0)
    {

LABEL_24:
      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    OUTLINED_FUNCTION_90_0();
    v29 = v43;
    v30 = sub_19774ED40();
    v31 = sub_19774F2B0();

    if (OUTLINED_FUNCTION_89_0())
    {
      OUTLINED_FUNCTION_46_1();
      v45 = OUTLINED_FUNCTION_44_2();
      *v6 = 136315138;
      v41 = v31;
      v32 = [v29 localizedDescription];
      v33 = sub_19774EF50();
      v35 = v34;

      v36 = sub_19768ED3C(v33, v35, &v45);

      *(v6 + 4) = v36;
      OUTLINED_FUNCTION_25_4(&dword_19763D000, "Failed to acquire assertions: %s", v41);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_38_2();
    }

    v37 = OUTLINED_FUNCTION_58_1();
    v38(v37);
    sub_19774EF50();
    OUTLINED_FUNCTION_82_0();
    v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_49_1();

    goto LABEL_24;
  }

  __break(1u);
}

id sub_197698428(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v64[1] = *MEMORY[0x1E69E9840];
  v12 = sub_19774ED60();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v16 = [objc_opt_self() currentProcess], v17 = objc_msgSend(v16, sel_isApplication), v16, !v17))
  {
    sub_19769DA08(a2, a3, a4, a5, v60, v64);
    if (v6)
    {

LABEL_25:
      v53 = *MEMORY[0x1E69E9840];
      return a2;
    }

    goto LABEL_24;
  }

  v57 = a2;
  v18 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v19 + 32) = sub_19764AA58();
  v20 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v21 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v18);
  v62 = 0;
  v56 = v21;
  if ([v21 acquireWithError_])
  {
    v22 = v62;
    v23 = v57;
    a2 = a4;
    sub_19769DA08(v57, a3, a4, a5, v60, v64);
    v24 = v6;
    if (v6)
    {
      [v56 invalidate];
      goto LABEL_9;
    }

    a2 = v56;
    [v56 invalidate];

LABEL_24:
    a2 = v64[0];

    goto LABEL_25;
  }

  v25 = v62;
  v24 = sub_19774E9F0();

  swift_willThrow();
  a2 = a4;
LABEL_9:
  v62 = v24;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    goto LABEL_22;
  }

  v27 = v61;
  v28 = [v61 domain];
  v29 = sub_19774EF50();
  v31 = v30;

  v32 = *MEMORY[0x1E69C7688];
  if (v29 == sub_19774EF50() && v31 == v33)
  {
  }

  else
  {
    v35 = sub_19774F7E0();

    if ((v35 & 1) == 0)
    {

LABEL_22:

      goto LABEL_25;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v37 = v27;
    v38 = sub_19774ED40();
    v39 = sub_19774F2B0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63 = v55;
      *v40 = 136315138;
      v41 = [v37 localizedDescription];
      v42 = v37;
      v43 = sub_19774EF50();
      v45 = v44;

      v46 = v43;
      v37 = v42;
      v47 = sub_19768ED3C(v46, v45, &v63);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_19763D000, v38, v39, "Failed to acquire assertions: %s", v40, 0xCu);
      v48 = v55;
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x19A8E67F0](v48, -1, -1);
      MEMORY[0x19A8E67F0](v40, -1, -1);
    }

    (*(v58 + 8))(v15, v59);
    v49 = sub_19774EF50();
    v51 = v50;
    v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v49, v51, 9006, 0);
    swift_willThrow();

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_197698A4C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_31_1();
  v4 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_40_2(OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion);
  if (!v35 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, sel_isApplication), v13, !v14))
  {
    v26 = OUTLINED_FUNCTION_62_0();
    v3(v26);
    if (!v1)
    {

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v53 = v7;
  v15 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v16 + 32) = OUTLINED_FUNCTION_2_12();
  v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v18 = OUTLINED_FUNCTION_14_4();
  v20 = sub_197648278(v18, v19, v15);
  v55 = 0;
  v21 = [v20 acquireWithError_];
  v22 = v55;
  if (v21)
  {
    v23 = v55;
    v24 = OUTLINED_FUNCTION_62_0();
    v3(v24);
    OUTLINED_FUNCTION_45_2();
    if (!v1)
    {
      [v20 (v25 + 3704)];

      goto LABEL_26;
    }

    [v20 (v25 + 3704)];
  }

  else
  {
    v27 = v55;
    OUTLINED_FUNCTION_42_2();
    v22 = sub_19774E9F0();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_17_4();
  if (!swift_dynamicCast())
  {
LABEL_24:

LABEL_25:
LABEL_26:
    v49 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_9();
    return;
  }

  v28 = v54;
  v29 = [v54 domain];
  v30 = sub_19774EF50();
  v32 = v31;

  v33 = *MEMORY[0x1E69C7688];
  v35 = v30 == sub_19774EF50() && v32 == v34;
  if (v35)
  {
  }

  else
  {
    v36 = sub_19774F7E0();

    if ((v36 & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    sub_19774ED70();
    v28 = v54;
    v37 = sub_19774ED40();
    v38 = sub_19774F2B0();

    if (OUTLINED_FUNCTION_88_0())
    {
      v39 = OUTLINED_FUNCTION_46_1();
      v51 = OUTLINED_FUNCTION_50_1();
      v56 = v51;
      *v39 = 136315138;
      v52 = v28;
      v40 = [v28 localizedDescription];
      v41 = sub_19774EF50();
      v50 = v38;
      v43 = v42;

      v44 = sub_19768ED3C(v41, v43, &v56);

      *(v39 + 4) = v44;
      v28 = v52;
      OUTLINED_FUNCTION_70_0(&dword_19763D000, v45, v50, "Failed to acquire assertions: %s");
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_38_2();
    }

    (*(v53 + 8))(v12, v4);
    sub_19774EF50();
    v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v47 = OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_20_3(v47, v48);
    OUTLINED_FUNCTION_49_1();
    goto LABEL_23;
  }

  __break(1u);
}

void *sub_197698F00(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v72 = a4;
  v75[1] = *MEMORY[0x1E69E9840];
  v9 = sub_19774ED60();
  v71 = *(v9 - 1);
  v10 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, sel_isApplication), v13, !v14))
  {
    v24 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v21 = v72;
    sub_1976683BC();
    if (v5)
    {
LABEL_7:

LABEL_8:
LABEL_11:
      v30 = *MEMORY[0x1E69E9840];
      return v9;
    }

    v26 = v25;
    KeyPath = swift_getKeyPath();
    v28 = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v9 = sub_197693624(KeyPath, v28, v29, v26);

    goto LABEL_10;
  }

  v70 = a5;
  v15 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v16 + 32) = sub_19764AA58();
  v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v18 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v15);
  v74 = 0;
  if ([v18 acquireWithError_])
  {
    v19 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v20 = v74;
    v21 = v72;
    a5 = v70;
    sub_1976683BC();
    v23 = v5;
    if (v5)
    {
      [v18 invalidate];
      goto LABEL_13;
    }

    v62 = v22;
    v63 = swift_getKeyPath();
    v64 = swift_getKeyPath();
    v65 = swift_getKeyPath();
    v69 = v18;
    v9 = sub_197693624(v63, v64, v65, v62);

    v66 = v69;
    [v69 invalidate];

LABEL_10:
    goto LABEL_11;
  }

  v32 = v74;
  v23 = sub_19774E9F0();

  swift_willThrow();
  a5 = v70;
  v21 = v72;
LABEL_13:
  v74 = v23;
  v33 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    goto LABEL_7;
  }

  v69 = v18;
  v70 = v73;
  v34 = [v73 domain];
  v35 = sub_19774EF50();
  v37 = v36;

  v38 = *MEMORY[0x1E69C7688];
  if (v35 == sub_19774EF50() && v37 == v39)
  {
  }

  else
  {
    v41 = sub_19774F7E0();

    if ((v41 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v42 = v70;
    v43 = sub_19774ED40();
    v44 = sub_19774F2B0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v68 = v45;
      v70 = swift_slowAlloc();
      v75[0] = v70;
      *v45 = 136315138;
      v46 = [v42 localizedDescription];
      HIDWORD(v67) = v44;
      v47 = v46;
      v48 = v42;
      v49 = sub_19774EF50();
      v51 = v50;

      v52 = v49;
      v42 = v48;
      v53 = sub_19768ED3C(v52, v51, v75);

      v54 = v68;
      *(v68 + 1) = v53;
      v55 = v54;
      _os_log_impl(&dword_19763D000, v43, BYTE4(v67), "Failed to acquire assertions: %s", v54, 0xCu);
      v56 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x19A8E67F0](v56, -1, -1);
      MEMORY[0x19A8E67F0](v55, -1, -1);
    }

    (*(v71 + 8))(v12, v9);
    v9 = v72;
    v57 = v69;
    v58 = sub_19774EF50();
    v60 = v59;
    v61 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v58, v60, 9006, 0);
    swift_willThrow();

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_197699604(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a4;
  v62[1] = *MEMORY[0x1E69E9840];
  v10 = sub_19774ED60();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v14 = [objc_opt_self() currentProcess], v15 = objc_msgSend(v14, sel_isApplication), v14, !v15))
  {
    sub_1976A1500(a2, &v61);
    if (v6)
    {

LABEL_8:

LABEL_25:
      v51 = *MEMORY[0x1E69E9840];
      return a2;
    }

    goto LABEL_24;
  }

  v55 = a2;
  v16 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v17 + 32) = sub_19764AA58();
  v18 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v19 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v16);
  v60 = 0;
  a2 = v19;
  if ([v19 acquireWithError_])
  {
    v20 = v60;
    v21 = v55;
    v22 = a6;
    sub_1976A1500(v55, &v61);
    v23 = v6;
    if (v6)
    {
      [a2 invalidate];
      goto LABEL_10;
    }

    [a2 invalidate];

LABEL_24:
    a2 = v61;

    goto LABEL_25;
  }

  v24 = v60;
  v23 = sub_19774E9F0();

  swift_willThrow();
  v22 = a6;
LABEL_10:
  v60 = v23;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    goto LABEL_8;
  }

  v54 = v22;
  v26 = v59;
  v27 = [v59 domain];
  v28 = sub_19774EF50();
  v30 = v29;

  v31 = *MEMORY[0x1E69C7688];
  if (v28 == sub_19774EF50() && v30 == v32)
  {
  }

  else
  {
    v34 = sub_19774F7E0();

    if ((v34 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v36 = v26;
    v37 = sub_19774ED40();
    v38 = sub_19774F2B0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62[0] = v53;
      *v39 = 136315138;
      v40 = [v36 localizedDescription];
      v41 = sub_19774EF50();
      v42 = v36;
      v44 = v43;

      v45 = sub_19768ED3C(v41, v44, v62);
      v36 = v42;

      *(v39 + 4) = v45;
      _os_log_impl(&dword_19763D000, v37, v38, "Failed to acquire assertions: %s", v39, 0xCu);
      v46 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x19A8E67F0](v46, -1, -1);
      MEMORY[0x19A8E67F0](v39, -1, -1);
    }

    (*(v56 + 8))(v13, v57);
    v47 = sub_19774EF50();
    v49 = v48;
    v50 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v47, v49, 9006, 0);
    swift_willThrow();

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_197699C3C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_35_2(v3, v4, v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v10 = OUTLINED_FUNCTION_0(v9);
  v53 = v11;
  v54 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_0();
  v16 = v15 - v14;
  if (*(v0 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v0 = [objc_opt_self() currentProcess], v17 = objc_msgSend(v0, sel_isApplication), v0, !v17))
  {
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_2();
    v2();
    if (v1)
    {

LABEL_25:
      v50 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_9();
      return;
    }

LABEL_9:
    OUTLINED_FUNCTION_86_1();

    goto LABEL_25;
  }

  v18 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v19 + 32) = OUTLINED_FUNCTION_2_12();
  objc_allocWithZone(MEMORY[0x1E69C7548]);
  v20 = OUTLINED_FUNCTION_14_4();
  v57 = 0;
  v52 = sub_197648278(v20, v21, v18);
  v22 = [v52 acquireWithError_];
  v23 = v57;
  if (v22)
  {
    v24 = v57;
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_2();
    v2();
    OUTLINED_FUNCTION_45_2();
    if (v1)
    {
      v26 = v52;
      [v52 (v25 + 3704)];
      goto LABEL_11;
    }

    [v52 (v25 + 3704)];

    goto LABEL_9;
  }

  v27 = v57;
  OUTLINED_FUNCTION_33_3();
  sub_19774E9F0();

  swift_willThrow();
  v26 = v52;
LABEL_11:
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_17_4();
  if (!OUTLINED_FUNCTION_87_0())
  {
LABEL_23:

    goto LABEL_24;
  }

  v28 = [v56 domain];
  v29 = sub_19774EF50();
  v31 = v30;

  v32 = *MEMORY[0x1E69C7688];
  if (v29 == sub_19774EF50() && v31 == v33)
  {
  }

  else
  {
    v35 = OUTLINED_FUNCTION_71_0();

    if ((v35 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    sub_19774ED70();
    v36 = v56;
    v37 = sub_19774ED40();
    v38 = sub_19774F2B0();

    if (OUTLINED_FUNCTION_88_0())
    {
      v39 = OUTLINED_FUNCTION_46_1();
      v51 = OUTLINED_FUNCTION_50_1();
      v58 = v51;
      *v39 = 136315138;
      v40 = [v36 localizedDescription];
      v41 = sub_19774EF50();
      v42 = v36;
      v44 = v43;

      v45 = sub_19768ED3C(v41, v44, &v58);
      v36 = v42;

      *(v39 + 4) = v45;
      OUTLINED_FUNCTION_70_0(&dword_19763D000, v46, v38, "Failed to acquire assertions: %s");
      __swift_destroy_boxed_opaque_existential_0(v51);
      v26 = v52;
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_38_2();
    }

    (*(v53 + 8))(v16, v54);
    sub_19774EF50();
    OUTLINED_FUNCTION_46_0();
    v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v48 = OUTLINED_FUNCTION_16_4();
    OUTLINED_FUNCTION_20_3(v48, v49);
    OUTLINED_FUNCTION_49_1();

    goto LABEL_23;
  }

  __break(1u);
}

void sub_19769A11C()
{
  OUTLINED_FUNCTION_8();
  v61 = v1;
  v3 = v2;
  v63 = v4;
  v5 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v6 = OUTLINED_FUNCTION_0(v5);
  v60 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_40_2(OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion);
  if (!v38 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, sel_isApplication), v13, !v14))
  {
    v27 = *&v63[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];

    v28 = OUTLINED_FUNCTION_26_3();
    v3(v28);
    if (v0)
    {

LABEL_13:
      v30 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_9();
      return;
    }

    if (v29)
    {
    }

    else
    {
      v40 = OUTLINED_FUNCTION_26_3();
      v61(v40);
      v55 = v41;

      if (!v55)
      {
        goto LABEL_12;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v59 = v5;
  v15 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v16 + 32) = OUTLINED_FUNCTION_2_12();
  v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v18 = OUTLINED_FUNCTION_14_4();
  v20 = sub_197648278(v18, v19, v15);
  v65 = 0;
  if ([v20 acquireWithError_])
  {
    v21 = v63;
    v22 = *&v63[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v23 = v65;

    v24 = OUTLINED_FUNCTION_26_3();
    v3(v24);
    v26 = v0;
    if (v0)
    {

      [v20 invalidate];
      goto LABEL_15;
    }

    if (v25)
    {
    }

    else
    {
      v56 = OUTLINED_FUNCTION_26_3();
      v61(v56);
      v58 = v57;

      if (!v58)
      {
        goto LABEL_32;
      }
    }

LABEL_32:
    [v20 invalidate];

    goto LABEL_12;
  }

  v31 = v65;
  OUTLINED_FUNCTION_80_0();
  v26 = sub_19774E9F0();

  swift_willThrow();
  v21 = v63;
LABEL_15:
  OUTLINED_FUNCTION_85_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_28_0();
  if (!OUTLINED_FUNCTION_87_0())
  {

    goto LABEL_13;
  }

  v32 = [v64 domain];
  v33 = sub_19774EF50();
  v35 = v34;

  v36 = *MEMORY[0x1E69C7688];
  v38 = v33 == sub_19774EF50() && v35 == v37;
  if (v38)
  {
  }

  else
  {
    v39 = sub_19774F7E0();

    if ((v39 & 1) == 0)
    {

      goto LABEL_13;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    sub_19774ED70();
    v42 = v64;
    v43 = sub_19774ED40();
    v44 = sub_19774F2B0();

    if (OUTLINED_FUNCTION_89_0())
    {
      v45 = OUTLINED_FUNCTION_46_1();
      v62 = v20;
      v46 = OUTLINED_FUNCTION_50_1();
      v66 = v46;
      *v45 = 136315138;
      v47 = [v42 localizedDescription];
      v48 = sub_19774EF50();
      v50 = v49;

      v51 = sub_19768ED3C(v48, v50, &v66);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_19763D000, v43, v44, "Failed to acquire assertions: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v20 = v62;
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_38_2();
    }

    (*(v60 + 8))(v12, v59);
    sub_19774EF50();
    v52 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v53 = OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_20_3(v53, v54);
    OUTLINED_FUNCTION_49_1();

    goto LABEL_13;
  }

  __break(1u);
}

void *sub_19769A79C(uint64_t a1, char *a2)
{
  v69[22] = *MEMORY[0x1E69E9840];
  v5 = sub_19774ED60();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v10 = [objc_opt_self() currentProcess], v11 = objc_msgSend(v10, sel_isApplication), v10, !v11))
  {
    v21 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    if (qword_1ED696F20 != -1)
    {
      swift_once();
    }

    v5 = &unk_1EAF3F308;
    memcpy(v69, &unk_1EAF3F308, 0xB0uLL);
    v67 = &unk_1F0BBACF0;
    v68 = &off_1F0BBAB00;
    v66[0] = swift_allocObject();
    memcpy((v66[0] + 16), &unk_1EAF3F308, 0xB0uLL);
    sub_19764DFC8(v69, v65);
    v22 = sub_19765E82C(v66);
    if (!v2)
    {
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0(v66);
      KeyPath = swift_getKeyPath();
      v25 = swift_getKeyPath();
      v26 = swift_getKeyPath();
      v5 = sub_197692EF4(KeyPath, v25, v26, v23);

LABEL_29:
      v55 = *MEMORY[0x1E69E9840];
      return v5;
    }

    __swift_destroy_boxed_opaque_existential_0(v66);
LABEL_28:

    goto LABEL_29;
  }

  v64 = v6;
  v12 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v13 + 32) = sub_19764AA58();
  v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v15 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v12);
  v69[0] = 0;
  if ([v15 acquireWithError_])
  {
    v16 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v17 = qword_1ED696F20;
    v18 = v69[0];
    if (v17 != -1)
    {
      swift_once();
    }

    memcpy(v69, &unk_1EAF3F308, 0xB0uLL);
    v67 = &unk_1F0BBACF0;
    v68 = &off_1F0BBAB00;
    v66[0] = swift_allocObject();
    memcpy((v66[0] + 16), &unk_1EAF3F308, 0xB0uLL);
    sub_19764DFC8(v69, v65);
    v19 = sub_19765E82C(v66);
    v20 = v2;
    if (!v2)
    {
      v56 = v19;
      __swift_destroy_boxed_opaque_existential_0(v66);
      v57 = swift_getKeyPath();
      v58 = swift_getKeyPath();
      v59 = swift_getKeyPath();
      v5 = sub_197692EF4(v57, v58, v59, v56);

      [v15 invalidate];

      goto LABEL_29;
    }

    __swift_destroy_boxed_opaque_existential_0(v66);
    [v15 invalidate];
  }

  else
  {
    v27 = v69[0];
    v20 = sub_19774E9F0();

    swift_willThrow();
  }

  v69[0] = v20;
  v28 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    goto LABEL_27;
  }

  v63 = v15;
  v29 = v65[0];
  v30 = [v65[0] domain];
  v31 = sub_19774EF50();
  v33 = v32;

  v34 = *MEMORY[0x1E69C7688];
  if (v31 == sub_19774EF50() && v33 == v35)
  {
  }

  else
  {
    v37 = sub_19774F7E0();

    if ((v37 & 1) == 0)
    {

LABEL_27:
      goto LABEL_28;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v39 = v29;
    v40 = sub_19774ED40();
    v41 = sub_19774F2B0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v66[0] = v61;
      *v42 = 136315138;
      v43 = [v39 localizedDescription];
      v62 = v39;
      v44 = v43;
      v45 = sub_19774EF50();
      HIDWORD(v60) = v41;
      v46 = v45;
      v48 = v47;

      v49 = sub_19768ED3C(v46, v48, v66);

      *(v42 + 4) = v49;
      v39 = v62;
      _os_log_impl(&dword_19763D000, v40, BYTE4(v60), "Failed to acquire assertions: %s", v42, 0xCu);
      v50 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x19A8E67F0](v50, -1, -1);
      MEMORY[0x19A8E67F0](v42, -1, -1);
    }

    (*(v64 + 8))(v9, v5);
    v51 = v63;
    v52 = sub_19774EF50();
    v5 = v53;
    v54 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v52, v5, 9006, 0);
    swift_willThrow();

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

id sub_19769AF6C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v9 = sub_19774ED60();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, sel_isApplication), v13, !v14))
  {
    sub_1976A2AC0(a2, a5, &v60);
    if (v5)
    {
LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v55 = a2;
  v15 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v16 + 32) = sub_19764AA58();
  v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v18 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v15);
  v59 = 0;
  if ([v18 acquireWithError_])
  {
    v19 = v59;
    a2 = v55;
    sub_1976A2AC0(v55, a5, &v60);
    v20 = v5;
    if (v5)
    {
      [v18 invalidate];
      goto LABEL_10;
    }

    [v18 invalidate];

LABEL_8:
    a2 = v60;

LABEL_25:
    v52 = *MEMORY[0x1E69E9840];
    return a2;
  }

  v21 = v59;
  v20 = sub_19774E9F0();

  swift_willThrow();
  a2 = v55;
LABEL_10:
  v59 = v20;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    goto LABEL_23;
  }

  v55 = v18;
  v23 = v58;
  v24 = [v58 domain];
  v25 = sub_19774EF50();
  v27 = v26;

  v28 = *MEMORY[0x1E69C7688];
  if (v25 == sub_19774EF50() && v27 == v29)
  {
  }

  else
  {
    v31 = sub_19774F7E0();

    if ((v31 & 1) == 0)
    {

LABEL_23:
      goto LABEL_24;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v33 = v23;
    v34 = sub_19774ED40();
    v35 = sub_19774F2B0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v61[0] = v54;
      *v36 = 136315138;
      v37 = [v33 localizedDescription];
      HIDWORD(v53) = v35;
      v38 = v37;
      v39 = a2;
      v40 = v33;
      v41 = sub_19774EF50();
      v43 = v42;

      v44 = v41;
      v33 = v40;
      a2 = v39;
      v45 = sub_19768ED3C(v44, v43, v61);

      *(v36 + 4) = v45;
      _os_log_impl(&dword_19763D000, v34, BYTE4(v53), "Failed to acquire assertions: %s", v36, 0xCu);
      v46 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x19A8E67F0](v46, -1, -1);
      MEMORY[0x19A8E67F0](v36, -1, -1);
    }

    (*(v56 + 8))(v12, v57);
    v47 = v55;
    v48 = sub_19774EF50();
    v50 = v49;
    v51 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v48, v50, 9006, 0);
    swift_willThrow();

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

char *sub_19769B540(uint64_t a1, char *a2, uint64_t a3, char *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = sub_19774ED60();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, sel_isApplication), v13, !v14))
  {
    v22 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    sub_197677E88(a3, a4, &v65);
    if (v4)
    {
LABEL_25:

LABEL_31:
      v51 = *MEMORY[0x1E69E9840];
      return v12;
    }

    if (v66)
    {
      v12 = v67;
      v59[0] = v65;
      v59[1] = v66;
      sub_1976A7960(v59);
    }

    else
    {

      v12 = 0;
    }

    goto LABEL_30;
  }

  v55 = a4;
  v15 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v16 + 32) = sub_19764AA58();
  v17 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v18 = sub_197648278(0xD000000000000010, 0x8000000197761A40, v15);
  v58 = 0;
  if ([v18 acquireWithError_])
  {
    v19 = *&a2[OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection];
    v20 = v58;
    sub_197677E88(a3, v55, &v62);
    v21 = v4;
    if (v4)
    {
      [v18 invalidate];
      goto LABEL_10;
    }

    if (v63)
    {
      v12 = v64;
      v60[0] = v62;
      v60[1] = v63;
      sub_1976A7960(v60);
    }

    else
    {
      v12 = 0;
    }

    [v18 invalidate];

LABEL_30:

    goto LABEL_31;
  }

  v23 = v58;
  v21 = sub_19774E9F0();

  swift_willThrow();
LABEL_10:
  v58 = v21;
  v24 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v55 = v18;
  v25 = v57;
  v26 = [v57 domain];
  v27 = sub_19774EF50();
  v29 = v28;

  v30 = *MEMORY[0x1E69C7688];
  if (v27 == sub_19774EF50() && v29 == v31)
  {
  }

  else
  {
    v33 = sub_19774F7E0();

    if ((v33 & 1) == 0)
    {

LABEL_24:
      goto LABEL_25;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    sub_19774ED70();
    v35 = v25;
    v36 = sub_19774ED40();
    v37 = sub_19774F2B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v38 = 136315138;
      v39 = [v35 localizedDescription];
      v54 = v35;
      v40 = v39;
      v41 = sub_19774EF50();
      HIDWORD(v52) = v37;
      v42 = v41;
      v44 = v43;

      v45 = sub_19768ED3C(v42, v44, &v61);

      *(v38 + 4) = v45;
      v35 = v54;
      _os_log_impl(&dword_19763D000, v36, BYTE4(v52), "Failed to acquire assertions: %s", v38, 0xCu);
      v46 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x19A8E67F0](v46, -1, -1);
      MEMORY[0x19A8E67F0](v38, -1, -1);
    }

    (*(v56 + 8))(v12, v9);
    v12 = v55;
    v47 = sub_19774EF50();
    v49 = v48;
    v50 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v47, v49, 9006, 0);
    swift_willThrow();

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_19769BB84()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_31_1();
  v6 = OUTLINED_FUNCTION_55_1(*MEMORY[0x1E69E9840]);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_40_2(OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_requiresAssertion);
  if (!v26 || (v10 = [objc_opt_self() currentProcess], v11 = objc_msgSend(v10, sel_isApplication), v10, !v11))
  {
    v21 = OUTLINED_FUNCTION_62_0();
    v3(v21, v5);
    if (v1)
    {
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v12 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  OUTLINED_FUNCTION_24_3();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19775A750;
  sub_197648238(0, &qword_1ED696D30, 0x1E69C7560);
  *(v13 + 32) = OUTLINED_FUNCTION_2_12();
  v14 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v15 = OUTLINED_FUNCTION_14_4();
  v17 = sub_197648278(v15, v16, v12);
  v45 = 0;
  if ([v17 acquireWithError_])
  {
    v18 = v45;
    v19 = OUTLINED_FUNCTION_62_0();
    v3(v19, v5);
    OUTLINED_FUNCTION_45_2();
    if (v1)
    {
      [v17 (v20 + 3704)];
      goto LABEL_11;
    }

    [v17 (v20 + 3704)];

LABEL_9:
    OUTLINED_FUNCTION_86_1();
LABEL_28:
    v41 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_9();
    return;
  }

  v22 = v45;
  OUTLINED_FUNCTION_42_2();
  sub_19774E9F0();

  swift_willThrow();
LABEL_11:
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FC80, &unk_19775DF50);
  sub_197648238(0, &unk_1EAF3FE60, 0x1E696ABC0);
  OUTLINED_FUNCTION_17_4();
  if (!swift_dynamicCast())
  {

    goto LABEL_26;
  }

  v43 = v17;
  v23 = [v44 domain];
  sub_19774EF50();
  OUTLINED_FUNCTION_78_0();

  v24 = *MEMORY[0x1E69C7688];
  sub_19774EF50();
  OUTLINED_FUNCTION_77_0();
  v26 = v26 && v1 == v25;
  if (v26)
  {
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_4();

    if ((v27 & 1) == 0)
    {

LABEL_26:
      goto LABEL_27;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    OUTLINED_FUNCTION_90_0();
    v28 = v44;
    v29 = sub_19774ED40();
    v30 = sub_19774F2B0();

    if (OUTLINED_FUNCTION_88_0())
    {
      OUTLINED_FUNCTION_46_1();
      v46 = OUTLINED_FUNCTION_44_2();
      *v23 = 136315138;
      v31 = v28;
      v32 = [v28 localizedDescription];
      v42 = v30;
      v33 = sub_19774EF50();
      v35 = v34;

      v36 = sub_19768ED3C(v33, v35, &v46);

      *(v23 + 1) = v36;
      v28 = v31;
      OUTLINED_FUNCTION_25_4(&dword_19763D000, "Failed to acquire assertions: %s", v42);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_38_2();

      v37 = OUTLINED_FUNCTION_58_1();
    }

    else
    {

      v37 = OUTLINED_FUNCTION_58_1();
      v38 = v6;
    }

    v39(v37, v38);
    sub_19774EF50();
    OUTLINED_FUNCTION_82_0();
    v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_49_1();

    goto LABEL_26;
  }

  __break(1u);
}

id _LNMetadataProviderDirect.actions()()
{
  v1 = v0;
  OUTLINED_FUNCTION_43_2();
  return sub_197694094(v2, v3);
}

void _LNMetadataProviderDirect.enumerateActions(forBundleIdentifier:using:)()
{
  OUTLINED_FUNCTION_3_9();
  v1 = v0;
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_1_16();
  sub_197695B08();
}

void _LNMetadataProviderDirect.enumerateEnums(forBundleIdentifier:using:)()
{
  OUTLINED_FUNCTION_3_9();
  v1 = v0;
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_1_16();
  sub_197695B08();
}

void sub_19769C184()
{
  OUTLINED_FUNCTION_64_1();
  v1 = v0;
  v3 = _Block_copy(v2);
  v4 = sub_19774EF50();
  v6 = v5;
  _Block_copy(v3);
  v7 = v1;
  sub_19769C2D8(v4, v6, v7, v3);

  _Block_release(v3);

  OUTLINED_FUNCTION_63_0();
}

void _LNMetadataProviderDirect.enumerateEntities(forBundleIdentifier:using:)()
{
  OUTLINED_FUNCTION_3_9();
  v1 = v0;
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_1_16();
  sub_197695B08();
}

void sub_19769C2D8(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v5 = a3;
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_12_4();
  sub_197695B08();
  _Block_release(a4);
}

void _LNMetadataProviderDirect.enumerateQueries(forBundleIdentifier:using:)()
{
  OUTLINED_FUNCTION_3_9();
  v1 = v0;
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_1_16();
  sub_197695B08();
}

void _LNMetadataProviderDirect.actions(forSchemaIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_197696FE8();
}

void _LNMetadataProviderDirect.enums(forSchemaIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_197696FE8();
}

id sub_19769C4C0()
{
  OUTLINED_FUNCTION_64_1();
  v6 = OUTLINED_FUNCTION_57_1();
  v7 = v1;
  v8 = OUTLINED_FUNCTION_60_0();
  v9 = v4(v8);

  if (v6)
  {
    if (v0)
    {
      sub_19774E9E0();

      v10 = v9;
      OUTLINED_FUNCTION_59_0();
    }

    else
    {
    }
  }

  else
  {
    sub_197648238(0, v3, v2);
    sub_19774EE20();
    OUTLINED_FUNCTION_73_0();
  }

  OUTLINED_FUNCTION_63_0();

  return v11;
}

void _LNMetadataProviderDirect.entities(forSchemaIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_197696FE8();
}

void _LNMetadataProviderDirect.queries(forSchemaIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_197696FE8();
}

void *_LNMetadataProviderDirect.actionsConforming(to:logicalType:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_3_9();

  v0;

  v1 = OUTLINED_FUNCTION_1_16();
  return sub_19769474C(v1, v2, v3, v4, v5, v6);
}

id _LNMetadataProviderDirect.actionsAndSystemProtocolDefaults(forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();

  v1 = v0;
  OUTLINED_FUNCTION_7_6();
  return sub_1976974A0(v2, v3, v4, v5);
}

uint64_t sub_19769C888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  sub_197660EEC();
  if (a3)
  {
    v34 = v4;
    v9 = v32;
    v10 = v33;
    __swift_project_boxed_opaque_existential_0Tm(v31, v32);
    if (qword_1ED696FE8 != -1)
    {
      swift_once();
    }

    *&v28 = a2;
    *(&v28 + 1) = a3;
    v11 = a2;
    v12 = sub_1976B7FC0();
    v14 = v13;
    v16 = v15;
    v29 = v9;
    v30 = v10;
    __swift_allocate_boxed_opaque_existential_1(&v28);
    v17 = v12;
    a2 = v11;
    sub_1976C2388(v17, v14, v16, v9, v10);

    __swift_destroy_boxed_opaque_existential_0(v31);
    sub_19764C774(&v28, v31);
    v5 = v34;
  }

  v18 = sub_197662474(v31);
  result = __swift_destroy_boxed_opaque_existential_0(v31);
  if (!v5)
  {
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    v22 = swift_getKeyPath();
    v23 = sub_19769327C(KeyPath, v21, v22, v18);

    v24 = sub_197670BBC(a2, a3);
    v25 = sub_19769CAC8(v24);
    v26 = sub_19769CD54(v25, v23);

    *a4 = v26;
  }

  return result;
}

uint64_t sub_19769CAC8(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v35 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 6)
  {
    if (v35 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v6 = *(i - 5);
    v5 = *(i - 4);
    v7 = *(i - 2);
    v36 = v2;
    v37 = *(i - 3);
    v8 = *i;
    v38 = *(i - 1);
    swift_bridgeObjectRetain_n();

    v10 = sub_19764EA74(v6, v5);
    v11 = v3[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    v14 = v9;
    if (v3[3] < v13)
    {
      sub_1976A602C(v13, 1);
      v3 = v39;
      v15 = sub_19764EA74(v6, v5);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_21;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v3[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_197663F70(0, *(v18 + 16) + 1, 1, v18);
        v18 = v30;
        *(v17 + 8 * v10) = v30;
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_197663F70(v20 > 1, v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v31;
        *(v33 + 8 * v10) = v31;
      }

      *(v18 + 16) = v22;
      v23 = (v18 + 48 * v21);
      v23[4] = v6;
      v23[5] = v5;
      v24 = v36;
      v23[6] = v37;
      v23[7] = v7;
      v23[8] = v38;
      v23[9] = v8;
      v1 = a1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F7A8, &unk_19775A910);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_19775A780;
      *(v25 + 32) = v6;
      *(v25 + 40) = v5;
      *(v25 + 48) = v37;
      *(v25 + 56) = v7;
      *(v25 + 64) = v38;
      *(v25 + 72) = v8;
      v3[(v10 >> 6) + 8] |= 1 << v10;
      v26 = (v3[6] + 16 * v10);
      *v26 = v6;
      v26[1] = v5;
      *(v3[7] + 8 * v10) = v25;
      v27 = v3[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_20;
      }

      v3[2] = v29;
      v24 = v36;
    }

    v2 = v24 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

uint64_t sub_19769CD54(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v50 = a1;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v10 = v8;
      v51 = v9;
      if (!v6)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v8 = v10;
        v11 = __clz(__rbit64(v6)) | (v8 << 6);
        v12 = (*(a2 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(*(a2 + 56) + 8 * v11);
        v16 = *(a1 + 16);

        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_9:
        v17 = OUTLINED_FUNCTION_76_0();
        v19 = sub_19764EA74(v17, v18);
        if (v20)
        {
          v21 = *(*(a1 + 56) + 8 * v19);

          sub_1976A3850(v22);
        }

        else
        {
LABEL_12:
          sub_197648238(0, &qword_1ED696D90, 0x1E69ACA48);
          sub_197665D90(&qword_1ED696D40, &qword_1ED696D90, 0x1E69ACA48);

          sub_19774EE40();
        }

        v6 &= v6 - 1;
        v23 = objc_allocWithZone(MEMORY[0x1E69AC730]);
        v24 = sub_1976A4F18();
        if (v24)
        {
          break;
        }

        v25 = OUTLINED_FUNCTION_76_0();
        v9 = v51;
        v27 = sub_19764EA74(v25, v26);
        if (v28)
        {
          v38 = v27;
          swift_isUniquelyReferenced_nonNull_native();
          v39 = v51[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF58, &qword_19775E148);
          sub_19774F6F0();
          v9 = v51;
          v40 = *(v51[6] + 16 * v38 + 8);

          v41 = *(v51[7] + 8 * v38);
          sub_197648238(0, &qword_1EAF3FE58, 0x1E69AC730);
          sub_19774F700();

          a1 = v50;
          goto LABEL_4;
        }

        v10 = v8;
        a1 = v50;
        if (!v6)
        {
LABEL_6:
          while (1)
          {
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v8 >= v7)
            {

              return v9;
            }

            v6 = *(v3 + 8 * v8);
            ++v10;
            if (v6)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_29;
        }
      }

      v29 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      v54 = v51;
      v30 = OUTLINED_FUNCTION_76_0();
      v49 = sub_19764EA74(v30, v31);
      v52 = v32;
      if (__OFADD__(v54[2], (v32 & 1) == 0))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF58, &qword_19775E148);
      if (sub_19774F6F0())
      {
        v33 = OUTLINED_FUNCTION_76_0();
        v35 = sub_19764EA74(v33, v34);
        v37 = v52;
        if ((v52 & 1) != (v36 & 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v35 = v49;
        v37 = v52;
      }

      if (v37)
      {
        v42 = v54[7];
        v43 = *(v42 + 8 * v35);
        *(v42 + 8 * v35) = v29;

        a1 = v50;
        v9 = v54;
        continue;
      }

      break;
    }

    v54[(v35 >> 6) + 8] |= 1 << v35;
    v44 = (v54[6] + 16 * v35);
    *v44 = v13;
    v44[1] = v14;
    *(v54[7] + 8 * v35) = v29;
    v45 = v54[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (!v46)
    {
      v9 = v54;
      v54[2] = v47;

      a1 = v50;
      continue;
    }

    break;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}

void _LNMetadataProviderDirect.actions(forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_19764A2F4();
}

uint64_t sub_19769D2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = a4;
  v7 = type metadata accessor for LNActionRecord();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  sub_197660EEC();
  v13 = v35;
  v12 = v36;
  __swift_project_boxed_opaque_existential_0Tm(v34, v35);
  if (qword_1ED696FE8 != -1)
  {
    swift_once();
  }

  *&v31 = a2;
  *(&v31 + 1) = a3;
  v14 = sub_1976B7FC0();
  v16 = v15;
  v18 = v17;
  v32 = v13;
  v33 = v12;
  __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_1976C2388(v14, v16, v18, v13, v12);

  __swift_destroy_boxed_opaque_existential_0(v34);
  sub_19764C774(&v31, v34);
  v19 = v37;
  v20 = sub_197662474(v34);
  result = __swift_destroy_boxed_opaque_existential_0(v34);
  if (!v19)
  {
    v22 = *(v20 + 16);
    if (v22)
    {
      v34[0] = MEMORY[0x1E69E7CC0];
      sub_19774F680();
      v23 = *(v29 + 80);
      v37 = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v25 = *(v29 + 72);
      do
      {
        sub_1976A7AD4();
        v26 = *&v10[*(v7 + 24)];
        sub_1976A79B4(v10, type metadata accessor for LNActionRecord);
        sub_19774F650();
        v27 = *(v34[0] + 16);
        sub_19774F690();
        sub_19774F6A0();
        sub_19774F660();
        v24 += v25;
        --v22;
      }

      while (v22);

      v28 = v34[0];
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    *v30 = v28;
  }

  return result;
}

void _LNMetadataProviderDirect.actionIdentifiers(forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();

  v1 = v0;
  OUTLINED_FUNCTION_7_6();
  sub_197697F58();
}

uint64_t sub_19769D63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v40 = a6;
  v43 = type metadata accessor for LNActionRecord();
  v12 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF50, &unk_19775A920);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  result = sub_1976622A8(a2, a3, a4, a5, *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection));
  if (!v6)
  {
    v36 = a4;
    v37 = a5;
    v38 = a2;
    v39 = a3;
    sub_197692CC0(result, v21);

    sub_1976476C8();
    v23 = v43;
    if (__swift_getEnumTagSinglePayload(v19, 1, v43) == 1)
    {
      sub_197665DE0(v19, &qword_1EAF3FF50, &unk_19775A920);
      v24 = sub_19774EF50();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD20, &qword_19775DCB8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A780;
      v28 = *MEMORY[0x1E696A578];
      *(inited + 32) = sub_19774EF50();
      *(inited + 40) = v29;
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_19774F5B0();

      v41 = 0xD000000000000020;
      v42 = 0x8000000197761AE0;
      MEMORY[0x19A8E4C40](v36, v37);
      MEMORY[0x19A8E4C40](0x646E7562206E6920, 0xEC000000203A656CLL);
      MEMORY[0x19A8E4C40](v38, v39);
      v30 = v41;
      v31 = v42;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v30;
      *(inited + 56) = v31;
      v32 = sub_19774EE40();
      v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1976A4DDC(v24, v26, 9004, v32);
      swift_willThrow();
      return sub_197665DE0(v21, &qword_1EAF3FF50, &unk_19775A920);
    }

    else
    {
      sub_197665DE0(v21, &qword_1EAF3FF50, &unk_19775A920);
      sub_1976A7908();
      v34 = *&v14[*(v23 + 24)];
      result = sub_1976A79B4(v14, type metadata accessor for LNActionRecord);
      *v40 = v34;
    }
  }

  return result;
}

id _LNMetadataProviderDirect.action(forBundleIdentifier:actionIdentifier:)()
{
  OUTLINED_FUNCTION_3_9();
  v1 = v0;
  OUTLINED_FUNCTION_67_0();

  v2 = OUTLINED_FUNCTION_1_16();
  return sub_197698428(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_19769DA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v36 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF50, &unk_19775A920);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);

  v22 = v37;
  v23 = sub_1976622A8(a2, a3, a4, a5, v21);
  v37 = v22;
  if (v22)
  {
  }

  v34 = v15;
  v35 = v20;
  sub_197692CC0(v23, v18);

  v25 = type metadata accessor for LNActionRecord();
  if (__swift_getEnumTagSinglePayload(v18, 1, v25) == 1)
  {
    v28 = v35;
    v29 = v37;
    sub_197662A74(a2, a3, a4, a5, v21, v26, v27, v35);
    if (v29)
    {

      result = __swift_getEnumTagSinglePayload(v18, 1, v25);
      if (result != 1)
      {
        return sub_197665DE0(v18, &qword_1EAF3FF50, &unk_19775A920);
      }

      return result;
    }

    if (__swift_getEnumTagSinglePayload(v18, 1, v25) != 1)
    {
      sub_197665DE0(v18, &qword_1EAF3FF50, &unk_19775A920);
    }
  }

  else
  {

    v28 = v35;
    sub_1976A7908();
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
  }

  v30 = v28;
  v31 = v34;
  sub_1976A7D2C(v30, v34);
  if (__swift_getEnumTagSinglePayload(v31, 1, v25) == 1)
  {
    result = sub_197665DE0(v31, &qword_1EAF3FF50, &unk_19775A920);
    v32 = 0;
  }

  else
  {
    v32 = *(v31 + *(v25 + 24));
    result = sub_1976A79B4(v31, type metadata accessor for LNActionRecord);
  }

  *v36 = v32;
  return result;
}

uint64_t sub_19769DD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v27 = a6;
  v12 = type metadata accessor for LNActionRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1976622A8(a2, a3, a4, a5, *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection));
  if (!v6)
  {
    v18 = result;
    v19 = *(result + 16);
    if (v19)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_19774F680();
      v20 = *(v13 + 80);
      v26 = v18;
      v21 = v18 + ((v20 + 32) & ~v20);
      v22 = *(v13 + 72);
      do
      {
        sub_1976A7AD4();
        v23 = *&v16[*(v12 + 24)];
        sub_1976A79B4(v16, type metadata accessor for LNActionRecord);
        sub_19774F650();
        v24 = *(v28 + 16);
        sub_19774F690();
        sub_19774F6A0();
        sub_19774F660();
        v21 += v22;
        --v19;
      }

      while (v19);

      v25 = v28;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    *v27 = v25;
  }

  return result;
}

id _LNMetadataProviderDirect.actionsConforming(to:withParametersOfTypes:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_3_9();

  v5 = v0;
  v6 = v4;
  v7 = OUTLINED_FUNCTION_66_0();
  return sub_197694E24(v7, v8, v9, v2, v1, v3);
}

uint64_t sub_19769DF90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = type metadata accessor for LNActionRecord();
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v61 - v17;
  v18 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  inited = swift_initStackObject();
  inited[1] = xmmword_19775A750;
  *(inited + 4) = a2;
  if (!sub_197652138(inited))
  {
    swift_setDeallocating();
    v36 = a2;
    sub_1976A5794();
    v27 = MEMORY[0x1E69E7CD0];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_197663308(v27, v18, v21, v22, v23, v24, v25, v26, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75[0], v75[1], v75[2], v76, v77, v78, v79);
    if (!v6)
    {
      v39 = v37;
      v62 = 0;
      v63 = a6;
      goto LABEL_11;
    }
  }

  v20 = a2;
  v27 = sub_19767B934(inited);
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v70 = v6;
  v63 = a6;
  sub_197660EEC();
  v28 = v76;
  inited = v77;
  __swift_project_boxed_opaque_existential_0Tm(v75, v76);
  if (qword_1ED696FE8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    *&v71 = a3;
    *(&v71 + 1) = a4;
    v29 = sub_1976B7FC0();
    v31 = v30;
    a3 = v32;
    v73 = v28;
    v74 = inited;
    __swift_allocate_boxed_opaque_existential_1(&v71);
    sub_1976C2388(v29, v31, a3, v28, inited);

    __swift_destroy_boxed_opaque_existential_0(v75);
    sub_19764C774(&v71, v75);
    v33 = v70;
    v34 = sub_197662474(v75);
    if (v33)
    {
      break;
    }

    a4 = v34;
    v62 = 0;
    __swift_destroy_boxed_opaque_existential_0(v75);
    sub_197662D68();
    v39 = v38;

LABEL_11:

    v40 = 0;
    v65 = *(v39 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    v64 = v39;
    while (1)
    {
LABEL_12:
      if (v40 == v65)
      {

        KeyPath = swift_getKeyPath();
        v58 = swift_getKeyPath();
        v59 = swift_getKeyPath();
        v60 = sub_19769327C(KeyPath, v58, v59, v28);

        *v63 = v60;
        return result;
      }

      if (v40 >= *(v39 + 16))
      {
        break;
      }

      v41 = *(v66 + 72);
      v69 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v70 = v40 + 1;
      v68 = v41;
      sub_1976A7AD4();
      v42 = 1 << *(a5 + 32);
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v44 = v43 & *(a5 + 64);
      v45 = (v42 + 63) >> 6;

      v46 = 0;
      while (v44)
      {
        v47 = v46;
LABEL_24:
        v48 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v49 = v48 | (v47 << 6);
        v50 = (*(a5 + 48) + 16 * v49);
        v51 = *v50;
        a3 = v50[1];
        v52 = *(*(a5 + 56) + 8 * v49);

        inited = v52;
        sub_19769E558(v51, a3, inited, v80);
        a4 = v53;

        if ((a4 & 1) == 0)
        {

          sub_1976A79B4(v80, type metadata accessor for LNActionRecord);
          v40 = v70;
          v39 = v64;
          goto LABEL_12;
        }
      }

      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v47 >= v45)
        {
          break;
        }

        v44 = *(a5 + 64 + 8 * v47);
        ++v46;
        if (v44)
        {
          v46 = v47;
          goto LABEL_24;
        }
      }

      sub_1976A7908();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1976A5998(0, *(v28 + 16) + 1, 1);
        v28 = v75[0];
      }

      v39 = v64;
      v56 = *(v28 + 16);
      v55 = *(v28 + 24);
      a4 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        sub_1976A5998(v55 > 1, v56 + 1, 1);
        v28 = v75[0];
      }

      *(v28 + 16) = a4;
      sub_1976A7908();
      v40 = v70;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  return __swift_destroy_boxed_opaque_existential_0(v75);
}

void sub_19769E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a4 + *(type metadata accessor for LNActionRecord() + 24)) parameters];
  sub_197648238(0, &qword_1EAF3FD08, 0x1E69AC688);
  v7 = sub_19774F120();

  v8 = sub_197652138(v7);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
LABEL_18:

      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x19A8E5210](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = sub_1976A7450(v10);
    if (!v13)
    {
      goto LABEL_13;
    }

    if (v12 == a1 && v13 == a2)
    {
    }

    else
    {
      v15 = sub_19774F7E0();

      if ((v15 & 1) == 0)
      {
LABEL_13:

        continue;
      }
    }

    sub_197648238(0, &unk_1EAF3FD10, 0x1E69E58C0);
    v16 = [v11 valueType];
    v17 = sub_19774F400();

    if (v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

_BYTE *_LNMetadataProviderDirect.actions(withFullyQualifiedIdentifiers:)(unint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_39_2();
  v4 = OUTLINED_FUNCTION_12_4();
  return sub_197695428(v4, v5, a1);
}

uint64_t sub_19769E8D4(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA8, &unk_19775DF90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v127 - v6;
  v8 = type metadata accessor for LNActionRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EAF3F428 != -1)
  {
LABEL_52:
    swift_once();
  }

  v13 = sub_19774ED60();
  v14 = __swift_project_value_buffer(v13, qword_1EAF43E18);

  v140 = v14;
  v15 = sub_19774ED40();
  v16 = sub_19774F2B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = sub_197652138(a2);

    *(v17 + 12) = 2048;
    *(v17 + 14) = *(a1 + 2);

    _os_log_impl(&dword_19763D000, v15, v16, "Received request for %ld actions but found %ld, running diagnostic", v17, 0x16u);
    MEMORY[0x19A8E67F0](v17, -1, -1);
  }

  else
  {
  }

  v134 = v7;
  v18 = *(a1 + 2);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v141 = a2;
    v144[0] = MEMORY[0x1E69E7CC0];
    sub_19774F680();
    v20 = &a1[(*(v9 + 80) + 32) & ~*(v9 + 80)];
    v21 = *(v9 + 72);
    do
    {
      sub_1976A7AD4();
      v22 = [*(v12 + *(v8 + 24)) identifier];
      sub_19774EF50();

      v23 = *v12;
      v24 = v12[1];
      v25 = objc_allocWithZone(MEMORY[0x1E69AC858]);

      sub_197663E14();
      sub_1976A79B4(v12, type metadata accessor for LNActionRecord);
      sub_19774F650();
      v26 = *(v144[0] + 16);
      sub_19774F690();
      sub_19774F6A0();
      sub_19774F660();
      v20 += v21;
      --v18;
    }

    while (v18);
    v19 = v144[0];
  }

  sub_197663870(v27, v28, v29, v30, v31, v32, v33, v34, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138);
  v36 = v35;
  sub_197663870(v19, v37, v38, v39, v40, v41, v42, v43, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138);
  a2 = sub_19769F710(v44, v36);

  v7 = 0;
  a1 = sub_197692948(a2);
  v45 = sub_19774ED40();
  v46 = sub_19774F2B0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v144[0] = v48;
    *v47 = 136446210;
    v143[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
    v49 = a2;
    sub_1976A7CC8();
    v50 = sub_19774EEB0();
    v52 = v51;

    v53 = sub_19768ED3C(v50, v52, v144);
    a2 = v49;

    *(v47 + 4) = v53;
    _os_log_impl(&dword_19763D000, v45, v46, "Missing: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x19A8E67F0](v48, -1, -1);
    MEMORY[0x19A8E67F0](v47, -1, -1);
  }

  else
  {
  }

  v143[2] = MEMORY[0x1E69E7CD0];
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_19774F4C0();
    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    sub_197665D90(&qword_1EAF3F7A0, &unk_1ED696D80, 0x1E69AC858);
    sub_19774F210();
    a2 = v144[0];
    v55 = v144[1];
    v56 = v144[2];
    v57 = v144[3];
    v9 = v144[4];
  }

  else
  {
    v57 = 0;
    v58 = -1 << *(a2 + 32);
    v55 = a2 + 56;
    v56 = ~v58;
    v59 = -v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v9 = v60 & *(a2 + 56);
  }

  v130 = v56;
  v61 = (v56 + 64) >> 6;
  v12 = &selRef_setEXIFVersion_;
  *&v54 = 136446210;
  v132 = v54;
  *&v54 = 136446466;
  v131 = v54;
  v8 = v134;
  v135 = v61;
  v136 = v55;
  v137 = a2;
  while ((a2 & 0x8000000000000000) == 0)
  {
    v62 = v57;
    v63 = v9;
    if (!v9)
    {
      while (1)
      {
        v57 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v57 >= v61)
        {
          goto LABEL_50;
        }

        v63 = *(v55 + 8 * v57);
        ++v62;
        if (v63)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_24:
    v141 = (v63 - 1) & v63;
    v64 = *(*(a2 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v63)))));
    if (!v64)
    {
      goto LABEL_50;
    }

LABEL_28:
    v66 = *(v138 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
    v67 = [v64 v12[263]];
    sub_19774EF50();

    sub_1976731F8(1, v8);
    if (v7)
    {

      v68 = type metadata accessor for LNBundleRecord();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v68);
      v7 = 0;
    }

    else
    {
    }

    v69 = [v64 v12[263]];
    v70 = sub_19774EF50();
    v72 = v71;

    sub_1976643D0(v143, v70, v72);

    v73 = type metadata accessor for LNBundleRecord();
    LODWORD(v69) = __swift_getEnumTagSinglePayload(v8, 1, v73);
    v74 = v64;
    v75 = sub_19774ED40();
    a1 = sub_19774F2D0();

    v76 = os_log_type_enabled(v75, a1);
    if (v69 == 1)
    {
      v139 = v74;
      if (v76)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v143[0] = v78;
        *v77 = v132;
        v12 = &selRef_setEXIFVersion_;
        v79 = [v74 bundleIdentifier];
        v80 = sub_19774EF50();
        v82 = v81;

        v83 = sub_19768ED3C(v80, v82, v143);

        *(v77 + 4) = v83;
        v74 = v139;
        _os_log_impl(&dword_19763D000, v75, a1, "Bundle %{public}s is missing from linkd", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x19A8E67F0](v78, -1, -1);
        MEMORY[0x19A8E67F0](v77, -1, -1);
      }

      else
      {

        v12 = &selRef_setEXIFVersion_;
      }

      sub_197648238(0, &qword_1EAF3F5E0, 0x1E6963620);
      v98 = [v74 bundleIdentifier];
      v99 = sub_19774EF50();
      v101 = v100;

      v102 = sub_197692D68(v99, v101, 1);
      v112 = v102;
      if (v102)
      {
        v113 = v139;
        v114 = v112;
        v103 = sub_19774ED40();
        v115 = sub_19774F2D0();

        if (os_log_type_enabled(v103, v115))
        {
          v116 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v143[0] = v129;
          *v116 = v131;
          v117 = [v113 bundleIdentifier];
          v139 = v113;
          v118 = v117;
          v119 = sub_19774EF50();
          a1 = v120;

          v121 = sub_19768ED3C(v119, a1, v143);

          *(v116 + 4) = v121;
          *(v116 + 12) = 2114;
          *(v116 + 14) = v114;
          v122 = v128;
          *v128 = v112;
          v123 = v114;
          _os_log_impl(&dword_19763D000, v103, v115, "Bundle %{public}s has LS record %{public}@", v116, 0x16u);
          sub_197665DE0(v122, &qword_1EAF3FC38, &qword_19775DC80);
          MEMORY[0x19A8E67F0](v122, -1, -1);
          v124 = v129;
          __swift_destroy_boxed_opaque_existential_0(v129);
          MEMORY[0x19A8E67F0](v124, -1, -1);
          v125 = v116;
          v12 = &selRef_setEXIFVersion_;
          MEMORY[0x19A8E67F0](v125, -1, -1);

          goto LABEL_47;
        }
      }

      else
      {
        a1 = v139;
        v103 = sub_19774ED40();
        v104 = sub_19774F2D0();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v143[0] = v106;
          *v105 = v132;
          v107 = [a1 bundleIdentifier];
          v108 = sub_19774EF50();
          v110 = v109;

          v111 = sub_19768ED3C(v108, v110, v143);
          v12 = &selRef_setEXIFVersion_;

          *(v105 + 4) = v111;
          _os_log_impl(&dword_19763D000, v103, v104, "Bundle %{public}s has no LS Record", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v106);
          MEMORY[0x19A8E67F0](v106, -1, -1);
          MEMORY[0x19A8E67F0](v105, -1, -1);

LABEL_47:
          v8 = v134;
          goto LABEL_48;
        }
      }

      goto LABEL_47;
    }

    if (!v76)
    {

      v55 = v136;
      a2 = v137;
      v61 = v135;
      v12 = &selRef_setEXIFVersion_;
      goto LABEL_49;
    }

    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v143[0] = v85;
    *v84 = v131;
    v12 = &selRef_setEXIFVersion_;
    v86 = [v74 bundleIdentifier];
    v87 = sub_19774EF50();
    v139 = 0;
    v88 = v74;
    v89 = v87;
    v91 = v90;

    v92 = sub_19768ED3C(v89, v91, v143);

    *(v84 + 4) = v92;
    *(v84 + 12) = 2082;
    v93 = [v88 actionIdentifier];
    v94 = sub_19774EF50();
    v96 = v95;

    v97 = sub_19768ED3C(v94, v96, v143);
    v8 = v134;

    *(v84 + 14) = v97;
    _os_log_impl(&dword_19763D000, v75, a1, "Bundle %{public}s exists, action %{public}s is missing", v84, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8E67F0](v85, -1, -1);
    MEMORY[0x19A8E67F0](v84, -1, -1);

    v7 = v139;
LABEL_48:
    v55 = v136;
    a2 = v137;
    v61 = v135;
LABEL_49:
    v9 = v141;
    sub_197665DE0(v8, &qword_1EAF3FEA8, &unk_19775DF90);
  }

  v65 = sub_19774F530();
  if (v65)
  {
    v142 = v65;
    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    swift_dynamicCast();
    v64 = v143[0];
    v141 = v9;
    if (v143[0])
    {
      goto LABEL_28;
    }
  }

LABEL_50:

  return sub_197651EE4();
}

uint64_t sub_19769F710(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_19774F500();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v4 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1976A62D0(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_19774F500() / 8 >= v4)
  {
    goto LABEL_14;
  }

  v6 = sub_19774F500();
  a2 = sub_197664948(v5, v6);
LABEL_11:

  return sub_1976A6508(a1, a2);
}

void _LNMetadataProviderDirect.openActions(forTypeIdentifier:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_3_9();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();

  OUTLINED_FUNCTION_12_4();
  sub_197697A78();
}

void *sub_19769F86C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v57 = a5;
  v50 = a4;
  v11 = type metadata accessor for LNActionRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v18 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A750;
  *(inited + 32) = [objc_opt_self() openEntitySystemProtocol];
  v20 = sub_197652138(inited);
  v45 = a6;
  v49 = v6;
  if (v20)
  {
    v48 = sub_19767B934(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1976A5794();
    v48 = MEMORY[0x1E69E7CD0];
  }

  sub_197660EEC();
  v21 = v55;
  v22 = v56;
  __swift_project_boxed_opaque_existential_0Tm(v54, v55);
  v47 = v18;
  if (qword_1ED696FE8 != -1)
  {
LABEL_22:
    swift_once();
  }

  *&v51 = a2;
  *(&v51 + 1) = a3;
  v44 = a3;
  a3 = a2;
  v23 = sub_1976B7FC0();
  v25 = v24;
  v27 = v26;
  v52 = v21;
  v53 = v22;
  __swift_allocate_boxed_opaque_existential_1(&v51);
  sub_1976C2388(v23, v25, v27, v21, v22);

  __swift_destroy_boxed_opaque_existential_0(v54);
  sub_19764C774(&v51, v54);
  v28 = v49;
  sub_197662474(v54);
  if (v28)
  {

    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    v49 = a3;
    __swift_destroy_boxed_opaque_existential_0(v54);
    sub_197662D68();
    v31 = v30;

    v22 = 0;
    a2 = *(v31 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    while (a2 != v22)
    {
      if (v22 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      a3 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v32 = *(v12 + 72);
      sub_1976A7AD4();
      sub_19769FD8C(v17, v50, v57);
      if (v33)
      {
        sub_1976A7908();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54[0] = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1976A5998(0, *(v21 + 16) + 1, 1);
          v21 = v54[0];
        }

        v36 = *(v21 + 16);
        v35 = *(v21 + 24);
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v47 = *(v21 + 16);
          v48 = v36 + 1;
          sub_1976A5998(v35 > 1, v36 + 1, 1);
          v37 = v48;
          v21 = v54[0];
        }

        ++v22;
        *(v21 + 16) = v37;
        sub_1976A7908();
      }

      else
      {
        sub_1976A79B4(v17, type metadata accessor for LNActionRecord);
        ++v22;
      }
    }

    KeyPath = swift_getKeyPath();
    v39 = swift_getKeyPath();
    v40 = swift_getKeyPath();
    v41 = sub_19769327C(KeyPath, v39, v40, v21);

    v42 = sub_197692EA4(v49, v44, v41);

    if (v42)
    {
      result = sub_197693EA4(v42);
    }

    else
    {
      result = MEMORY[0x1E69E7CC0];
    }

    *v45 = result;
  }

  return result;
}

void sub_19769FD8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v3 = [*(a1 + *(type metadata accessor for LNActionRecord() + 24)) parameters];
  sub_197648238(0, &qword_1EAF3FD08, 0x1E69AC688);
  v4 = sub_19774F120();

  v5 = sub_197652138(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8E5210](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v9 = sub_1976A7450(v7);
    if (v10)
    {
      break;
    }

LABEL_13:
  }

  if (v9 != 0x746567726174 || v10 != 0xE600000000000000)
  {
    v12 = sub_19774F7E0();

    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_17:

  v13 = [v8 valueType];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = &selRef_identifier;
LABEL_21:
    v16 = [v14 *v15];
    v17 = sub_19774EF50();
    v19 = v18;

    if (v17 != v36 || v19 != v37)
    {
      sub_19774F7E0();
    }

    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = &selRef_enumerationIdentifier;
    goto LABEL_21;
  }

  v21 = [v8 valueType];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v35 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_19775DDD0;
    sub_197648238(0, &qword_1EAF3ED60, 0x1E69AC810);

    *(v24 + 32) = sub_197693E38();
    sub_197648238(0, &unk_1EAF3FF20, 0x1E69AC898);

    *(v24 + 40) = sub_197693E38();
    v25 = [v23 memberValueTypes];
    sub_197648238(0, &qword_1EAF3EE40, 0x1E69ACA98);
    v26 = sub_19774F120();

    v27 = sub_197652138(v26);
    v36 = v26 & 0xC000000000000001;
    v37 = v26;
    v28 = v24;

    v29 = 0;
    do
    {
      if (v27 == v29)
      {
        break;
      }

      if (v36)
      {
        v30 = MEMORY[0x19A8E5210](v29, v37);
      }

      else
      {
        if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v30 = *(v37 + 8 * v29 + 32);
      }

      v31 = v30;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_42;
      }

      v39 = v30;
      MEMORY[0x1EEE9AC00](v30);
      v34[2] = &v39;
      v32 = v38;
      v33 = sub_197689DCC(sub_1976A7CA8, v34, v28);
      v38 = v32;

      ++v29;
    }

    while ((v33 & 1) == 0);

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }
}

id sub_1976A0264()
{
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_69_0();
  sub_19774EF50();
  v4 = v1;
  v5 = OUTLINED_FUNCTION_32_2();
  v6 = v2(v5);

  if (v1)
  {
    if (v0)
    {
      sub_19774E9E0();

      v7 = v6;
      OUTLINED_FUNCTION_59_0();
    }

    else
    {
    }
  }

  else
  {
    sub_197648238(0, &qword_1ED696FD0, 0x1E69AC678);
    OUTLINED_FUNCTION_79_0();
    sub_19774F110();
    OUTLINED_FUNCTION_73_0();
  }

  OUTLINED_FUNCTION_63_0();

  return v8;
}

void _LNMetadataProviderDirect.openCollectionActions(forEntityTypeIdentifier:capabilities:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_8();
  v81 = v1;
  v3 = v2;
  v5 = v4;
  v70 = v7;
  v71 = v6;
  v72 = v8;
  v66 = type metadata accessor for LNActionRecord();
  v9 = OUTLINED_FUNCTION_0(v66);
  v65 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v60 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = v58 - v15;
  v16 = *(v0 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD00, &qword_19775A768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A750;
  *(inited + 32) = [objc_opt_self() openEntitySystemProtocol];
  if (sub_197652138(inited))
  {
    sub_19767B934(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1976A5794();
  }

  sub_197660EEC();
  v18 = v79;
  v19 = v80;
  v20 = __swift_project_boxed_opaque_existential_0Tm(v78, v79);
  if (qword_1ED696FE8 != -1)
  {
LABEL_47:
    swift_once();
  }

  *&v75 = v5;
  *(&v75 + 1) = v3;
  v21 = sub_1976B7FC0();
  v67 = v5;
  v23 = v22;
  v24 = v3;
  v26 = v25;
  v76 = v18;
  v77 = v19;
  __swift_allocate_boxed_opaque_existential_1(&v75);
  v27 = v18;
  v18 = v20;
  sub_1976C2388(v21, v23, v26, v27, v19);

  __swift_destroy_boxed_opaque_existential_0(v78);
  sub_19764C774(&v75, v78);
  v28 = sub_197662474(v78);
  v58[1] = v81;
  if (v81)
  {

    __swift_destroy_boxed_opaque_existential_0(v78);
    goto LABEL_7;
  }

  v3 = v28;
  v58[0] = v24;
  __swift_destroy_boxed_opaque_existential_0(v78);
  sub_197662D68();
  v20 = v29;

  v30 = 0;
  v59 = MEMORY[0x1E69E7CC0];
  v62 = v20[2];
  v5 = v67;
  v61 = v20;
LABEL_9:
  if (v30 != v62)
  {
    if (v30 >= v20[2])
    {
      __break(1u);
      goto LABEL_47;
    }

    v31 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v32 = *(v65 + 72);
    v68 = v30 + 1;
    v64 = v31;
    v63 = v32;
    OUTLINED_FUNCTION_22_4();
    v33 = v69;
    sub_1976A7AD4();
    v3 = [*(v33 + *(v66 + 24)) parameters];
    sub_197648238(0, &qword_1EAF3FD08, 0x1E69AC688);
    v34 = sub_19774F120();

    v35 = sub_197652138(v34);
    v36 = 0;
    v19 = v34 & 0xC000000000000001;
    v81 = v34 & 0xFFFFFFFFFFFFFF8;
    v73 = v35;
    v74 = v34;
    while (1)
    {
      if (v35 == v36)
      {

        sub_1976A79B4(v69, type metadata accessor for LNActionRecord);
        v30 = v68;
        v5 = v67;
        v20 = v61;
        goto LABEL_9;
      }

      if (v19)
      {
        v37 = MEMORY[0x19A8E5210](v36, v34);
      }

      else
      {
        if (v36 >= *(v81 + 16))
        {
          goto LABEL_44;
        }

        v37 = *(v34 + 8 * v36 + 32);
      }

      v3 = v37;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_7;
      }

      v38 = sub_1976A7450(v37);
      if (!v39)
      {
        goto LABEL_32;
      }

      v18 = v39;
      if (v38 == 0x746567726174 && v39 == 0xE600000000000000)
      {
      }

      else
      {
        v41 = sub_19774F7E0();

        if ((v41 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v42 = [v3 valueType];
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (!v43)
      {
        break;
      }

      v44 = v43;
      sub_197648238(0, &unk_1EAF3FD10, 0x1E69E58C0);
      v45 = [v44 memberValueType];
      sub_197648238(0, &qword_1EAF3ED60, 0x1E69AC810);

      v46 = sub_197693E38();
      v18 = sub_19774F400();

      if ((v18 & 1) == 0)
      {
        v47 = v42;
        v35 = v73;
        v34 = v74;
        goto LABEL_31;
      }

      v18 = [v44 capabilities];

      v35 = v73;
      v34 = v74;
      if ((v70 & ~v18) == 0)
      {

        OUTLINED_FUNCTION_23_3();
        sub_1976A7908();
        v48 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v48;
        v78[0] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = v78;
          sub_1976A5998(0, *(v48 + 16) + 1, 1);
          v50 = v78[0];
        }

        v5 = v67;
        v20 = v61;
        v52 = *(v50 + 16);
        v51 = *(v50 + 24);
        v3 = (v52 + 1);
        if (v52 >= v51 >> 1)
        {
          v18 = v78;
          sub_1976A5998(v51 > 1, v52 + 1, 1);
          v50 = v78[0];
        }

        *(v50 + 16) = v3;
        v59 = v50;
        OUTLINED_FUNCTION_23_3();
        sub_1976A7908();
        v30 = v68;
        goto LABEL_9;
      }

LABEL_33:
      ++v36;
    }

    v47 = v3;
    v3 = v42;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v54 = OUTLINED_FUNCTION_34_0();
  v56 = sub_19769327C(v54, v55, KeyPath, v59);

  v57 = sub_197692EA4(v5, v58[0], v56);

  if (v57)
  {
    sub_197693EA4(v57);
  }

LABEL_7:
  OUTLINED_FUNCTION_9();
}

void _LNMetadataProviderDirect.bundles()()
{
  v1 = v0;
  OUTLINED_FUNCTION_43_2();
  sub_197698A4C();
}

uint64_t sub_1976A0C48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for LNBundleRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  result = sub_197672C5C();
  if (!v2)
  {
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      v23[2] = 0;
      v24 = a2;
      v25 = MEMORY[0x1E69E7CC0];
      sub_19764AD60(0, v13, 0);
      v14 = v25;
      v15 = *(v6 + 80);
      v23[1] = v12;
      v16 = v12 + ((v15 + 32) & ~v15);
      v17 = *(v6 + 72);
      do
      {
        sub_1976A7AD4();
        v18 = *v9;
        v19 = v9[1];

        sub_1976A79B4(v9, type metadata accessor for LNBundleRecord);
        v25 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_19764AD60((v20 > 1), v21 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v16 += v17;
        --v13;
      }

      while (v13);

      a2 = v24;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v14;
  }

  return result;
}

void _LNMetadataProviderDirect.bundleRegistrations()()
{
  v1 = v0;
  OUTLINED_FUNCTION_43_2();
  sub_197698A4C();
}

uint64_t sub_1976A0F2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for LNBundleRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  result = sub_197672C5C();
  if (!v2)
  {
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      v26[1] = 0;
      v27 = a2;
      v29 = MEMORY[0x1E69E7CC0];
      sub_19774F680();
      v14 = *(v6 + 80);
      v26[0] = v12;
      v15 = v12 + ((v14 + 32) & ~v14);
      v28 = *(v6 + 72);
      do
      {
        sub_1976A7AD4();
        v16 = *v9;
        v17 = v9[1];
        v18 = (v9 + *(v5 + 24));
        v19 = v5;
        v20 = *v18;
        v21 = v18[1];
        v22 = objc_allocWithZone(LNRegisteredBundleMetadata);

        sub_197677C68(v20, v21);
        v23 = v21;
        v5 = v19;
        sub_1976A4E8C(v16, v17, v20, v23);
        sub_1976A79B4(v9, type metadata accessor for LNBundleRecord);
        sub_19774F650();
        v24 = *(v29 + 16);
        sub_19774F690();
        sub_19774F6A0();
        sub_19774F660();
        v15 += v28;
        --v13;
      }

      while (v13);

      v25 = v29;
      a2 = v27;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v25;
  }

  return result;
}

void _LNMetadataProviderDirect.queries()()
{
  v1 = v0;
  OUTLINED_FUNCTION_43_2();
  sub_197698A4C();
}

uint64_t sub_1976A1258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  if (qword_1ED696E90 != -1)
  {
    swift_once();
  }

  memcpy(v14, &unk_1EAF3EEE8, sizeof(v14));
  v13[3] = &unk_1F0BBACF0;
  v13[4] = &off_1F0BBAB00;
  v13[0] = swift_allocObject();
  memcpy((v13[0] + 16), &unk_1EAF3EEE8, 0xB0uLL);
  sub_19764DFC8(v14, &v12);
  sub_19764C978(v13);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](result);

    sub_1976BF5D8();
    v7 = v6;

    KeyPath = swift_getKeyPath();
    v9 = swift_getKeyPath();
    v10 = swift_getKeyPath();
    v11 = sub_197693624(KeyPath, v9, v10, v7);

    *a2 = v11;
  }

  return result;
}

id _LNMetadataProviderDirect.queries(forBundleIdentifier:ofType:)()
{
  OUTLINED_FUNCTION_3_9();

  v1 = v0;
  OUTLINED_FUNCTION_67_0();
  v2 = OUTLINED_FUNCTION_1_16();
  return sub_197699604(v2, v3, v4, v5, v6, v7);
}

void sub_1976A1500(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  sub_197667C80();
  if (!v2)
  {
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_19774F680();
      v8 = 48;
      do
      {
        v9 = *(v6 + v8);
        sub_19774F650();
        v10 = *(v12 + 16);
        sub_19774F690();
        sub_19774F6A0();
        sub_19774F660();
        v8 += 24;
        --v7;
      }

      while (v7);

      v11 = v12;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v11;
  }
}

uint64_t sub_1976A177C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);

  sub_197668010();
  if (v6)
  {
  }

  if (!v13)
  {
    v17 = sub_19774EF50();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD20, &qword_19775DCB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A780;
    v21 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_19774EF50();
    *(inited + 40) = v22;
    sub_19774F5B0();

    MEMORY[0x19A8E4C40](a4, a5);
    MEMORY[0x19A8E4C40](0x646E7562206E6920, 0xEC000000203A656CLL);
    MEMORY[0x19A8E4C40](a2, a3);
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x8000000197761AC0;
    v23 = sub_19774EE40();
    v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1976A4DDC(v17, v19, 9004, v23);
    swift_willThrow();
  }

  v16 = v14;

  *a6 = v16;
}

id sub_1976A1990()
{
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_69_0();
  sub_19774EF50();
  v4 = v1;
  v5 = OUTLINED_FUNCTION_32_2();
  v2(v5);

  if (v1)
  {
    if (v0)
    {
      v6 = sub_19774E9E0();

      v7 = v6;
      *v0 = v6;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_63_0();

  return v8;
}

void *_LNMetadataProviderDirect.queries(with:inputValueType:resultValueType:)(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v8 = v3;
  v9 = a2;
  v10 = OUTLINED_FUNCTION_66_0();
  return sub_197698F00(v10, v11, a1, a2, a3);
}

void _LNMetadataProviderDirect.enums()()
{
  v1 = v0;
  OUTLINED_FUNCTION_43_2();
  sub_197698A4C();
}

uint64_t sub_1976A1C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  if (qword_1ED696EC0 != -1)
  {
    swift_once();
  }

  memcpy(v14, &unk_1EAF3EFE0, sizeof(v14));
  v13[3] = &unk_1F0BBACF0;
  v13[4] = &off_1F0BBAB00;
  v13[0] = swift_allocObject();
  memcpy((v13[0] + 16), &unk_1EAF3EFE0, 0xB0uLL);
  sub_19764DFC8(v14, &v12);
  sub_19764C978(v13);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](result);

    sub_1976BF5D8();
    v7 = v6;

    KeyPath = swift_getKeyPath();
    v9 = swift_getKeyPath();
    v10 = swift_getKeyPath();
    v11 = sub_19769399C(KeyPath, v9, v10, v7);

    *a2 = v11;
  }

  return result;
}

void _LNMetadataProviderDirect.enums(forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_19764A2F4();
}

void sub_1976A1EFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  sub_197691168();
  if (!v2)
  {
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_19774F680();
      v8 = 48;
      do
      {
        v9 = *(v6 + v8);
        sub_19774F650();
        v10 = *(v12 + 16);
        sub_19774F690();
        sub_19774F6A0();
        sub_19774F660();
        v8 += 24;
        --v7;
      }

      while (v7);

      v11 = v12;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v11;
  }
}

id sub_1976A2024()
{
  OUTLINED_FUNCTION_64_1();
  v6 = OUTLINED_FUNCTION_57_1();
  v7 = v1;
  v8 = OUTLINED_FUNCTION_60_0();
  v9 = v4(v8);

  if (v6)
  {
    if (v0)
    {
      sub_19774E9E0();

      v10 = v9;
      OUTLINED_FUNCTION_59_0();
    }

    else
    {
    }
  }

  else
  {
    sub_197648238(0, v3, v2);
    OUTLINED_FUNCTION_79_0();
    sub_19774F110();
    OUTLINED_FUNCTION_73_0();
  }

  OUTLINED_FUNCTION_63_0();

  return v11;
}

void sub_1976A2124()
{
  OUTLINED_FUNCTION_41_2();

  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_48_1();
  sub_19769A11C();
}

void *_LNMetadataProviderDirect.entities()()
{
  v1 = v0;
  OUTLINED_FUNCTION_43_2();
  return sub_19769A79C(v2, v3);
}

id sub_1976A21D4()
{
  OUTLINED_FUNCTION_64_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v5();

  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v1);
  sub_19774EE20();
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_63_0();

  return v8;
}

void _LNMetadataProviderDirect.entities(forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_0_18();
  sub_19764A2F4();
}

uint64_t sub_1976A22F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);
  if (qword_1ED696F20 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EAF3F308, sizeof(__dst));
  if (qword_1ED696F28 != -1)
  {
    swift_once();
  }

  __src[0] = a2;
  v9 = sub_1976B7FC0();
  v11 = v10;
  v13 = v12;
  memcpy(v25, __dst, sizeof(v25));
  sub_1976BB434(v9, v11, v13, &unk_1F0BBACF0, &off_1F0BBAB00, v14, v15, v16, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], __src[0], a3, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v28, __src, sizeof(v28));
  __src[3] = &unk_1F0BBACF0;
  __src[4] = &off_1F0BBAB00;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v28, 0xB0uLL);
  v17 = sub_19765E82C(__src);
  result = __swift_destroy_boxed_opaque_existential_0(__src);
  if (!v4)
  {
    v19 = *(v17 + 16);
    if (v19)
    {
      __src[0] = MEMORY[0x1E69E7CC0];
      sub_19774F680();
      v20 = 48;
      do
      {
        v21 = *(v17 + v20);
        sub_19774F650();
        v22 = *(__src[0] + 16);
        sub_19774F690();
        sub_19774F6A0();
        sub_19774F660();
        v20 += 24;
        --v19;
      }

      while (v19);

      v23 = __src[0];
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    *a4 = v23;
  }

  return result;
}

uint64_t sub_1976A25B4()
{
  OUTLINED_FUNCTION_41_2();

  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_48_1();
  return v0();
}

uint64_t sub_1976A2610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a1 + OBJC_IVAR____TtC12LinkServices25_LNMetadataProviderDirect_connection);

  sub_19765E938();
  if (v6)
  {
  }

  v17 = v14;
  v18 = v15;
  v40 = a2;
  v41 = a6;
  if (v14)
  {
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v15;
  }

  else
  {
    v39 = v13;
    v23 = a3;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v27 = sub_19765EBBC(v40, v24, a4, a5, v12);
    v20 = v29;
    if (!v29)
    {
      v31 = sub_19774EF50();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FD20, &qword_19775DCB8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A780;
      v35 = *MEMORY[0x1E696A578];
      *(inited + 32) = sub_19774EF50();
      *(inited + 40) = v36;
      sub_19774F5B0();

      MEMORY[0x19A8E4C40](v25, v26);
      MEMORY[0x19A8E4C40](0x646E7562206E6920, 0xEC000000203A656CLL);
      MEMORY[0x19A8E4C40](v40, v23);
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = 0xD00000000000001DLL;
      *(inited + 56) = 0x8000000197761AA0;
      v37 = sub_19774EE40();
      v38 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1976A4DDC(v31, v33, 9004, v37);
      swift_willThrow();
    }

    v19 = v27;
    v30 = v28;

    v21 = v30;
    v22 = v30;
    v13 = v39;
  }

  sub_1976A7A0C(v13, v17, v18);
  sub_1976A7A50(v19, v20, v21);

  *v41 = v22;
  return result;
}