uint64_t sub_24E799AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  v9 = sub_24F929DA8();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E799BBC, 0, 0);
}

uint64_t sub_24E799BBC()
{
  v20 = v0;

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_24E7620D4(v4, v3, &v19);
    _os_log_impl(&dword_24E5DD000, v1, v2, "Dispatching intent %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  v10 = v0[24];
  v11 = v0[25];
  v13 = v10[3];
  v12 = v10[4];
  v14 = __swift_project_boxed_opaque_existential_1(v10, v13);
  (*(v7 + 16))(v8, v11 + qword_27F21C838, v9);
  v0[15] = swift_getAssociatedTypeWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  v16[1] = sub_24E799DC0;
  v17 = v0[26];

  return MEMORY[0x28217FC60](boxed_opaque_existential_1, v14, v17, v13, v12);
}

uint64_t sub_24E799DC0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  (*(v2[29] + 8))(v2[30], v2[28]);
  if (v0)
  {
    v3 = sub_24E79A2A0;
  }

  else
  {
    v3 = sub_24E799F28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24E799F28()
{
  v13 = v0;

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_24E7620D4(v4, v3, v12);
    _os_log_impl(&dword_24E5DD000, v1, v2, "Received result for intent %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  sub_24E643A9C(v0 + 96, v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_24E601704(v0 + 56, &qword_27F21C908);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001CLL, 0x800000024FA471C0);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    swift_getDynamicType();
    v9 = sub_24F92D1E8();
    MEMORY[0x253050C20](v9);

    MEMORY[0x253050C20](0xD000000000000041, 0x800000024FA471E0);
    sub_24F92A868();
    sub_24E79B74C(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_7;
  }

  v7 = *(v0 + 256);
  sub_24E612C80((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v8 = sub_24F929FC8();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);

    v10 = *(v0 + 8);
    goto LABEL_8;
  }

  **(v0 + 160) = v8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  v10 = *(v0 + 8);
LABEL_8:

  return v10();
}

uint64_t sub_24E79A2A0()
{
  __swift_deallocate_boxed_opaque_existential_2(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E79A30C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a2;
  v37 = a8;
  v34 = a6;
  v13 = a5;
  v32 = a5;
  v35 = a1;
  v40 = a12;
  v41 = a3;
  v38 = a10;
  v39 = a11;
  v16 = sub_24F9220D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = v13;
  LOBYTE(v13) = v34;
  *(v19 + 32) = v34;
  *(v19 + 40) = a7;
  *(v19 + 48) = a1;
  v33 = a7;
  (*(v17 + 16))(&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a9, v16);
  v20 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 16) = a4;
  *(v21 + 24) = v22;
  *(v21 + 32) = v13;
  *(v21 + 40) = a7;
  v24 = v36;
  v23 = v37;
  *(v21 + 48) = v36;
  *(v21 + 56) = v23;
  (*(v17 + 32))(v21 + v20, &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v25 = (v21 + ((v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v39;
  *v25 = v38;
  v25[1] = v26;
  v42[3] = sub_24F9298F8();
  v42[4] = MEMORY[0x277D22078];
  v42[0] = v40;
  v27 = v24;
  v28 = v23;

  swift_retain_n();
  v29 = v35;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

void sub_24E79A550(void **a1, const char *a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v29 = a6;
  v30 = a2;
  v27 = a4;
  v7 = sub_24F922068();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24F922028();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *a1;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v15 = sub_24F922058();
  __swift_project_value_buffer(v15, qword_27F23DAC0);
  v16 = sub_24F922038();
  sub_24F922078();
  v17 = sub_24F92C048();
  if ((sub_24F92C478() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v27)
  {
LABEL_7:
    if (v30 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v30 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v30 >> 16 <= 0x10)
      {
        v30 = &v31;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v30)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:

  sub_24F9220A8();

  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D85B00])
  {
    v18 = "[Error] Interval already ended";
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v18 = "completed";
  }

  v19 = swift_slowAlloc();
  *v19 = 0;
  v20 = sub_24F922008();
  _os_signpost_emit_with_name_impl(&dword_24E5DD000, v16, v17, v20, v30, v18, v19, 2u);
  MEMORY[0x2530542D0](v19, -1, -1);
LABEL_15:

  (*(v12 + 8))(v14, v11);
  v21 = v29;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_24F93DE60;
    *(v22 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    v23 = v28;
    *(v22 + 32) = v28;
    v24 = v23;
    v25 = sub_24F92B588();
  }
}

uint64_t sub_24E79A8E4(void *a1, const char *a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v32[1] = a8;
  v36 = a7;
  v38 = a6;
  v39 = a2;
  v35 = a4;
  v9 = sub_24F922068();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F92A868();
  v16 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  sub_24E79AEB8(a1);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v20 = sub_24F922058();
  __swift_project_value_buffer(v20, qword_27F23DAC0);
  v21 = sub_24F922038();
  sub_24F922078();
  v33 = sub_24F92C048();
  result = sub_24F92C478();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v35)
  {
LABEL_7:
    if (v39 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v39 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if (v39 >> 16 <= 0x10)
      {
        v39 = &v40;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v39)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:

  sub_24F9220A8();

  v23 = v34;
  if ((*(v34 + 88))(v11, v9) == *MEMORY[0x277D85B00])
  {
    v24 = "[Error] Interval already ended";
  }

  else
  {
    (*(v23 + 8))(v11, v9);
    v24 = "failed";
  }

  v25 = swift_slowAlloc();
  *v25 = 0;
  v26 = sub_24F922008();
  _os_signpost_emit_with_name_impl(&dword_24E5DD000, v21, v33, v26, v39, v24, v25, 2u);
  MEMORY[0x2530542D0](v25, -1, -1);
LABEL_15:

  (*(v13 + 8))(v15, v12);
  v28 = v37;
  v27 = v38;
  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_24F93DE60;
    v30 = sub_24F929FE8();
    *(v29 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    *(v29 + 32) = v30;
    v31 = sub_24F92B588();
  }

  return (*(v16 + 8))(v18, v28);
}

uint64_t sub_24E79AEB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C8E8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = v26 - v3;
  v4 = sub_24F9294C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C8F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v11 = sub_24F92A868();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v11);
    (*(v12 + 32))(v14, v10, v11);
    v18 = _s9JetEngine7JSErrorV12GameStoreKitE23metricsErrorDescriptionSSvg_0();
    v30 = v19;
    v31 = v18;
    v28 = sub_24F92A7D8();
    v26[1] = v20;
    v27 = sub_24F92A7E8();
    v29 = a1;
    sub_24F92A858();
    sub_24F92A798();
    sub_24F92A838();
    sub_24F92A7F8();

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v17(v10, 1, 1, v11);
    sub_24E601704(v10, &qword_27F21C8F0);
    sub_24F9294B8();
    sub_24F92A7C8();
    v22 = sub_24F91F268();
    v23 = [v22 domain];

    sub_24F92B0D8();
    sub_24F9294A8();
    sub_24F92A7A8();
    v24 = sub_24F91F268();
    [v24 code];

    sub_24F929468();
    swift_getErrorValue();
    sub_24F92CFE8();
    v25 = v32;
    (*(v5 + 16))(v32, v7, v4);
    (*(v5 + 56))(v25, 0, 1, v4);
    sub_24F92A7F8();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_24E79B350(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_24E79B3DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_24E798880(v4);

  return v6;
}

id JSNativeIntentDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JSNativeIntentDispatcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E79B524(uint64_t a1)
{
  v2 = qword_27F21C838;
  v3 = sub_24F929DA8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_27F21C840;
  v5 = sub_24F9220D8();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

uint64_t sub_24E79B614()
{
  result = sub_24F929DA8();
  if (v1 <= 0x3F)
  {
    result = sub_24F9220D8();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24E79B74C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E79B794()
{
  v1 = sub_24F9220D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_24E79B884(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F9220D8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_24E614970;

  return sub_24E799AF0(a1, v1 + v6, v12, v13, v1 + v8, v14, v15, v16);
}

uint64_t sub_24E79B9F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E79BA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24E6948F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24E79BB14()
{
  v1 = sub_24F9220D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E79BC18(void *a1, void *a2)
{
  v5 = *(sub_24F9220D8() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24E79A30C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E79BD00()
{

  return swift_deallocObject();
}

uint64_t sub_24E79BD50()
{
  v1 = sub_24F9220D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E79BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E614970;

  return MEMORY[0x28217FBA8](a1, a2, a3, a4);
}

uint64_t sub_24E79BFD4(uint64_t a1)
{
  if (qword_27F210670 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_project_value_buffer(v2, qword_27F22E400);
  v3 = MEMORY[0x277D837D0];
  result = sub_24F929AD8();
  if (v5[1])
  {
    v5[3] = v3;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_24E79C0F4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C918);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_24E79C2EC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C918);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

void sub_24E79C4F0()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
    if (v1 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F215458, &qword_27F215460, &unk_24F942C00, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_24E79CB34(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E79CB34(319, &qword_27F21C938, type metadata accessor for OverviewTileAccessoryType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24E79CB34(319, &qword_27F21C940, type metadata accessor for GradientBackground, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E79C6D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E79C740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E79C888(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E79C9E0()
{
  sub_24E79CAE4();
  if (v0 <= 0x3F)
  {
    sub_24E79CB34(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E79CAE4()
{
  if (!qword_27F215590)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F215590);
    }
  }
}

void sub_24E79CB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24E79CC18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746469576C6C7566;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEF6E6F7474754268;
  }

  if (*a2)
  {
    v5 = 0x746469576C6C7566;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xEF6E6F7474754268;
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
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E79CCCC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E79CD5C()
{
  sub_24F92B218();
}

uint64_t sub_24E79CDD8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E79CE64@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24E79CEC4(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x746469576C6C7566;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEF6E6F7474754268;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24E79CF70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F925218();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = type metadata accessor for ShelfLayoutEnvironment();
  if ((_s12GameStoreKit15PageEnvironmentV4isAXSbvg_0() & 1) == 0)
  {
    goto LABEL_8;
  }

  v28 = a2;
  v17 = *(v16 + 32);
  (*(v5 + 104))(v15, *MEMORY[0x277CE0558], v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v18 = *(v7 + 48);
  sub_24E60169C(a1 + v17, v9, &qword_27F215598);
  sub_24E60169C(v15, &v9[v18], &qword_27F215598);
  v19 = *(v5 + 48);
  if (v19(v9, 1, v4) == 1)
  {
    sub_24E601704(v15, &qword_27F215598);
    v20 = v19(&v9[v18], 1, v4);
    a2 = v28;
    if (v20 == 1)
    {
      sub_24E601704(v9, &qword_27F215598);
LABEL_11:
      v21 = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_24E60169C(v9, v13, &qword_27F215598);
  if (v19(&v9[v18], 1, v4) == 1)
  {
    sub_24E601704(v15, &qword_27F215598);
    (*(v5 + 8))(v13, v4);
    a2 = v28;
LABEL_7:
    sub_24E601704(v9, &unk_27F254F20);
    goto LABEL_8;
  }

  v25 = v29;
  (*(v5 + 32))(v29, &v9[v18], v4);
  sub_24E79C6D4(&qword_27F215650, MEMORY[0x277CE0570]);
  v26 = sub_24F92AFF8();
  v27 = *(v5 + 8);
  v27(v25, v4);
  sub_24E601704(v15, &qword_27F215598);
  v27(v13, v4);
  sub_24E601704(v9, &qword_27F215598);
  a2 = v28;
  if (v26)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = *(a1 + 24);
LABEL_9:
  *a2 = v21;
  v22 = *MEMORY[0x277D7EB30];
  v23 = sub_24F9218F8();
  return (*(*(v23 - 8) + 104))(a2, v22, v23);
}

uint64_t sub_24E79D3E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C918);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CAA0);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  v15 = type metadata accessor for PlayTogetherActivityTile(0);
  MEMORY[0x28223BE20](v15);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 4) = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *(v17 + 5) = 0u;
  *(v17 + 12) = 0;
  v55 = v17 + 64;
  sub_24E61DA68(&v56, (v17 + 64), qword_27F21B590);
  v18 = v15[8];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v51 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = v15[9];
  v22 = sub_24F929608();
  v23 = *(*(v22 - 8) + 56);
  v52 = v21;
  v23(&v17[v21], 1, 1, v22);
  v48 = v15;
  v24 = v15[11];
  v25 = type metadata accessor for GradientBackground(0);
  v26 = *(*(v25 - 8) + 56);
  v53 = v24;
  v26(&v17[v24], 1, 1, v25);
  v27 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_24E7A1634();
  v49 = v14;
  v28 = v50;
  sub_24F92D108();
  if (v28)
  {
    v29 = v51;
    __swift_destroy_boxed_opaque_existential_1(v54);
    v30 = v52;
    sub_24E601704(v55, qword_27F24EC90);
    sub_24E601704(&v17[v29], &qword_27F215440);
    sub_24E601704(&v17[v30], &qword_27F213E68);
    return sub_24E601704(&v17[v53], &qword_27F21C920);
  }

  else
  {
    v41[1] = v9;
    v50 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v59 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v31 = v57;
    *v17 = v56;
    *(v17 + 1) = v31;
    *(v17 + 4) = v58;
    LOBYTE(v56) = 1;
    v32 = sub_24F92CC28();
    v33 = v51;
    v34 = v46;
    *(v17 + 5) = v32;
    *(v17 + 6) = v35;
    v59 = 2;
    sub_24E7A1688();
    sub_24F92CC68();
    v36 = v52;
    v17[56] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v59 = 3;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v56, v55, qword_27F24EC90);
    LOBYTE(v56) = 4;
    sub_24E65CAA0();
    v37 = v50;
    sub_24F92CC68();
    sub_24E61DA68(v37, &v17[v33], &qword_27F215440);
    LOBYTE(v56) = 5;
    sub_24E79C6D4(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v45, &v17[v36], &qword_27F213E68);
    type metadata accessor for OverviewTileAccessoryType(0);
    LOBYTE(v56) = 6;
    sub_24E79C6D4(&qword_27F21CAB8, type metadata accessor for OverviewTileAccessoryType);
    v38 = v44;
    sub_24F92CC18();
    sub_24E6009C8(v38, &v17[v48[10]], &qword_27F21C918);
    LOBYTE(v56) = 7;
    sub_24E79C6D4(&qword_27F21CAC0, type metadata accessor for GradientBackground);
    v39 = v43;
    sub_24F92CC18();
    (*(v34 + 8))(v49, v47);
    sub_24E61DA68(v39, &v17[v53], &qword_27F21C920);
    sub_24E7A16DC(v17, v42, type metadata accessor for PlayTogetherActivityTile);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_24E7A1744(v17, type metadata accessor for PlayTogetherActivityTile);
  }
}

double sub_24E79DCF4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PlayTogetherActivityTileComponent(0) + 32));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

unint64_t sub_24E79DE50()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x726F737365636361;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C797473;
  if (v1 != 2)
  {
    v5 = 0x6575676573;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E79DF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7A1A0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E79DF74(uint64_t a1)
{
  v2 = sub_24E7A1634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E79DFB0(uint64_t a1)
{
  v2 = sub_24E7A1634();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E79DFEC@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 64, v5, qword_27F24EC90);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24E79E044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

double sub_24E79E148@<D0>(_OWORD *a1@<X8>)
{
  v63 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v6 = MEMORY[0x28223BE20](v5);
  v60 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v47[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v49 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v47[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v47[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v47[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v47[-v23];
  v55 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  v57 = v1;
  sub_24F769764(v24);
  v25 = v3[13];
  v54 = *MEMORY[0x277CE0560];
  v53 = v25;
  v51 = v3 + 13;
  v25(v22);
  v52 = v3[7];
  v52(v22, 0, 1, v2);
  v56 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v24, v9, &qword_27F215598);
  v27 = v2;
  sub_24E60169C(v22, &v9[v26], &qword_27F215598);
  v62 = v3;
  v28 = v3[6];
  if (v28(v9, 1, v2) == 1)
  {
    v61 = v28;
    sub_24E601704(v22, &qword_27F215598);
    v27 = v2;
    sub_24E601704(v24, &qword_27F215598);
    if (v61(&v9[v26], 1, v2) != 1)
    {
LABEL_13:
      sub_24E601704(v9, &unk_27F254F20);
      goto LABEL_14;
    }

    sub_24E601704(v9, &qword_27F215598);
LABEL_6:
    v24 = v59;
    sub_24F769764(v59);
    v22 = v58;
    v53(v58, v54, v27);
    v52(v22, 0, 1, v27);
    v33 = *(v56 + 48);
    v34 = v60;
    sub_24E60169C(v24, v60, &qword_27F215598);
    sub_24E60169C(v22, &v34[v33], &qword_27F215598);
    v35 = v61;
    if (v61(v34, 1, v27) == 1)
    {
      sub_24E601704(v22, &qword_27F215598);
      sub_24E601704(v24, &qword_27F215598);
      if (v35(&v34[v33], 1, v27) == 1)
      {
        sub_24E601704(v34, &qword_27F215598);
LABEL_17:
        v37 = xmmword_24F956A00;
        v38 = 0x4058000000000000;
        goto LABEL_15;
      }

      v9 = v34;
      goto LABEL_13;
    }

    v36 = v49;
    sub_24E60169C(v34, v49, &qword_27F215598);
    if (v35(&v34[v33], 1, v27) == 1)
    {
      v19 = v36;
      v9 = v34;
      goto LABEL_11;
    }

    v41 = v22;
    v42 = v24;
    v43 = v62;
    v44 = v50;
    (v62[4])(v50, &v34[v33], v27);
    sub_24E79C6D4(&qword_27F215650, MEMORY[0x277CE0570]);
    v45 = sub_24F92AFF8();
    v46 = v43[1];
    v46(v44, v27);
    sub_24E601704(v41, &qword_27F215598);
    sub_24E601704(v42, &qword_27F215598);
    v46(v36, v27);
    sub_24E601704(v34, &qword_27F215598);
    if (v45)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  sub_24E60169C(v9, v19, &qword_27F215598);
  if (v28(&v9[v26], 1, v2) == 1)
  {
LABEL_11:
    sub_24E601704(v22, &qword_27F215598);
    sub_24E601704(v24, &qword_27F215598);
    (v62[1])(v19, v27);
    goto LABEL_13;
  }

  v61 = v28;
  v29 = v62;
  v30 = &v9[v26];
  v31 = v50;
  (v62[4])(v50, v30, v27);
  sub_24E79C6D4(&qword_27F215650, MEMORY[0x277CE0570]);
  v48 = sub_24F92AFF8();
  v32 = v29[1];
  v32(v31, v27);
  sub_24E601704(v22, &qword_27F215598);
  sub_24E601704(v24, &qword_27F215598);
  v32(v19, v27);
  sub_24E601704(v9, &qword_27F215598);
  if (v48)
  {
    goto LABEL_6;
  }

LABEL_14:
  v37 = xmmword_24F956A10;
  v38 = 0x4053000000000000;
LABEL_15:
  v39 = v63;
  *v63 = xmmword_24F956A20;
  v39[1] = v37;
  *(v39 + 4) = v38;
  *(v39 + 40) = xmmword_24F94D5D0;
  *(v39 + 56) = xmmword_24F956A30;
  result = 10.0;
  *(v39 + 72) = xmmword_24F956A40;
  return result;
}

uint64_t sub_24E79E950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C980);
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C988);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-v10 - 8];
  sub_24E79EBD8(v2, a1, v7);
  sub_24E60169C(a1 + 64, v18, qword_27F24EC90);
  sub_24E601704(v18, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9248C8();
  __swift_project_value_buffer(v12, qword_27F39F078);
  sub_24E7A10E0();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v7, &qword_27F21C980);
  v13 = *(type metadata accessor for PlayTogetherActivityTile(0) + 44);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA08) + 36);
  v15 = type metadata accessor for ComponentBackgroundModifier(0);
  sub_24E60169C(a1 + v13, v14 + *(v15 + 40), &qword_27F21C920);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0x403A000000000000;
  *(v14 + 40) = 1;
  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_24E79EBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA10);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v76[-v6];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA18);
  MEMORY[0x28223BE20](v80);
  v81 = &v76[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA00);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v76[-v9];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C9F0);
  MEMORY[0x28223BE20](v83);
  v86 = &v76[-v10];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C9E0);
  MEMORY[0x28223BE20](v85);
  v88 = &v76[-v11];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C9D0);
  v12 = MEMORY[0x28223BE20](v95);
  v87 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v89 = &v76[-v14];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA20);
  MEMORY[0x28223BE20](v93);
  v94 = &v76[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C9C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v76[-v17];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C9B0);
  v19 = MEMORY[0x28223BE20](v92);
  v90 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v91 = &v76[-v21];
  v22 = sub_24F924848();
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v76[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_24F923E98();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v76[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *(a2 + 56);
  type metadata accessor for PlayTogetherActivityTileComponent(0);
  sub_24F769788(v28);
  v30 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v26 + 8))(v28, v25);
  if (v30)
  {
LABEL_2:
    *v18 = sub_24F924C98();
    *(v18 + 1) = 0;
    v18[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA30);
    sub_24E79F724(a2, &v18[*(v31 + 44)]);
    sub_24E79E148(v111);
    sub_24F9275A8();
    sub_24F9242E8();
    v32 = v90;
    sub_24E6009C8(v18, v90, &qword_27F21C9C0);
    v33 = &v32[*(v92 + 36)];
    v34 = v108;
    v33[4] = v107;
    v33[5] = v34;
    v33[6] = v109;
    v35 = v104;
    *v33 = v103;
    v33[1] = v35;
    v36 = v106;
    v33[2] = v105;
    v33[3] = v36;
    v37 = v32;
    v38 = v91;
    sub_24E6009C8(v37, v91, &qword_27F21C9B0);
    sub_24E60169C(v38, v94, &qword_27F21C9B0);
    swift_storeEnumTagMultiPayload();
    sub_24E7A11F0();
    sub_24E7A12A8();
    sub_24F924E28();
    v39 = v38;
    v40 = &qword_27F21C9B0;
    return sub_24E601704(v39, v40);
  }

  v77 = v29;
  if (v29)
  {
    sub_24E79E148(v97);
    v41 = v98;
    v42 = sub_24F9249A8();
    v43 = v84;
    *v84 = v42;
    *(v43 + 8) = v41;
    *(v43 + 16) = 0;
    v44 = v82;
    sub_24E7A04BC(a2, 1, v82);
    sub_24F927618();
  }

  else
  {
    v45 = *a1;
    if (*(a1 + 8) == 1)
    {
      v46 = *a1;
    }

    else
    {

      sub_24F92BDC8();
      v47 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v45, 0);
      (*(v78 + 8))(v24, v79);
      v46 = *&v103;
    }

    if (sub_24E6B00B4(v46) <= 3u)
    {
      goto LABEL_2;
    }

    sub_24E79E148(v97);
    v48 = v98;
    v49 = sub_24F9249A8();
    v43 = v84;
    *v84 = v49;
    *(v43 + 8) = v48;
    *(v43 + 16) = 0;
    v44 = v82;
    sub_24E7A04BC(a2, 0, v82);
    sub_24F927628();
  }

  v50 = v88;
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA28) + 44);
  sub_24F9238C8();
  v52 = v81;
  sub_24E6009C8(v44, v81, &qword_27F21CA10);
  v53 = &v52[*(v80 + 36)];
  v54 = v100;
  *v53 = v99;
  v53[1] = v54;
  v53[2] = v101;
  sub_24E6009C8(v52, v43 + v51, &qword_27F21CA18);
  v55 = v77;
  sub_24E79E148(v102);
  sub_24E79DCF4();
  sub_24F927618();
  sub_24F9242E8();
  v56 = v86;
  sub_24E6009C8(v43, v86, &qword_27F21CA00);
  v57 = &v56[*(v83 + 36)];
  v58 = v108;
  v57[4] = v107;
  v57[5] = v58;
  v57[6] = v109;
  v59 = v104;
  *v57 = v103;
  v57[1] = v59;
  v60 = v106;
  v57[2] = v105;
  v57[3] = v60;
  sub_24E79E148(v110);
  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v56, v50, &qword_27F21C9F0);
  v61 = (v50 + *(v85 + 36));
  v62 = *&v110[13];
  *v61 = *&v110[11];
  v61[1] = v62;
  v61[2] = *&v110[15];
  v63 = sub_24F925838();
  if ((v55 & 1) == 0)
  {
    sub_24E79E148(v111);
  }

  sub_24F923318();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v87;
  sub_24E6009C8(v50, v87, &qword_27F21C9E0);
  v73 = &v72[*(v95 + 36)];
  *v73 = v63;
  *(v73 + 1) = v65;
  *(v73 + 2) = v67;
  *(v73 + 3) = v69;
  *(v73 + 4) = v71;
  v73[40] = 0;
  v74 = v89;
  sub_24E6009C8(v72, v89, &qword_27F21C9D0);
  sub_24E60169C(v74, v94, &qword_27F21C9D0);
  swift_storeEnumTagMultiPayload();
  sub_24E7A11F0();
  sub_24E7A12A8();
  sub_24F924E28();
  v39 = v74;
  v40 = &qword_27F21C9D0;
  return sub_24E601704(v39, v40);
}

uint64_t sub_24E79F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v134 = a1;
  v130 = sub_24F9297D8();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v126 = &v110 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_24F929888();
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v127 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358);
  MEMORY[0x28223BE20](v115);
  v117 = &v110 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA38);
  MEMORY[0x28223BE20](v116);
  v119 = &v110 - v5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA40);
  MEMORY[0x28223BE20](v120);
  v121 = &v110 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA48);
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v123 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = &v110 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA50);
  MEMORY[0x28223BE20](v11);
  v13 = &v110 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA58);
  MEMORY[0x28223BE20](v110);
  v15 = &v110 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA60);
  v113 = *(v16 - 8);
  v114 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v112 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v111 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C918);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v110 - v21;
  v23 = type metadata accessor for OverviewTileAccessoryType(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA68);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v118 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v133 = &v110 - v30;
  v31 = type metadata accessor for PlayTogetherActivityTile(0);
  sub_24E60169C(v134 + *(v31 + 40), v22, &qword_27F21C918);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_24E601704(v22, &qword_27F21C918);
    v32 = 1;
    v33 = v133;
    v34 = v114;
  }

  else
  {
    sub_24E7A15D0(v22, v26);
    sub_24E7A16DC(v26, v13, type metadata accessor for OverviewTileAccessoryType);
    sub_24E79E148(&v139);
    v35 = *(&v139 + 1);
    v36 = type metadata accessor for OverviewTileAccessory(0);
    v37 = &v13[*(v36 + 20)];
    *v37 = v35;
    v37[8] = 0;
    v13[*(v36 + 24)] = 0;
    sub_24E79E148(v140);
    sub_24F927618();
    sub_24F9238C8();
    v38 = &v13[*(v11 + 36)];
    v39 = *&v140[13];
    *v38 = *&v140[11];
    *(v38 + 1) = v39;
    *(v38 + 2) = *&v140[15];
    sub_24F9275B8();
    sub_24F9242E8();
    sub_24E6009C8(v13, v15, &qword_27F21CA50);
    v40 = &v15[*(v110 + 36)];
    v41 = *&v140[27];
    *(v40 + 4) = *&v140[25];
    *(v40 + 5) = v41;
    *(v40 + 6) = *&v140[29];
    v42 = *&v140[19];
    *v40 = *&v140[17];
    *(v40 + 1) = v42;
    v43 = *&v140[23];
    *(v40 + 2) = *&v140[21];
    *(v40 + 3) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v45 = sub_24F925828();
    *(inited + 32) = v45;
    v46 = sub_24F925858();
    *(inited + 33) = v46;
    v47 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v45)
    {
      v47 = sub_24F925848();
    }

    sub_24F925848();
    if (sub_24F925848() != v46)
    {
      v47 = sub_24F925848();
    }

    sub_24E79E148(v141);
    sub_24F923318();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_24E7A1744(v26, type metadata accessor for OverviewTileAccessoryType);
    v56 = v112;
    sub_24E6009C8(v15, v112, &qword_27F21CA58);
    v34 = v114;
    v57 = v56 + *(v114 + 36);
    *v57 = v47;
    *(v57 + 8) = v49;
    *(v57 + 16) = v51;
    *(v57 + 24) = v53;
    *(v57 + 32) = v55;
    *(v57 + 40) = 0;
    v58 = v111;
    sub_24E6009C8(v56, v111, &qword_27F21CA60);
    v59 = v58;
    v33 = v133;
    sub_24E6009C8(v59, v133, &qword_27F21CA60);
    v32 = 0;
  }

  (*(v113 + 56))(v33, v32, 1, v34);
  v60 = *(v134 + 48);
  *&v142 = *(v134 + 40);
  *(&v142 + 1) = v60;
  sub_24E600AEC();

  v61 = sub_24F925E18();
  v63 = v62;
  v65 = v64;
  sub_24F9258D8();
  v66 = sub_24F925C98();
  v68 = v67;
  v70 = v69;
  v72 = v71;

  sub_24E600B40(v61, v63, v65 & 1);

  *&v142 = v66;
  *(&v142 + 1) = v68;
  LOBYTE(v143) = v70 & 1;
  *(&v143 + 1) = v72;
  v73 = v117;
  sub_24F9268B8();
  sub_24E600B40(v66, v68, v70 & 1);

  *(v73 + *(v115 + 36)) = sub_24F925198();
  sub_24F9275C8();
  sub_24F9242E8();
  v74 = v119;
  sub_24E6009C8(v73, v119, &qword_27F217358);
  v75 = (v74 + *(v116 + 36));
  v76 = v147;
  v75[4] = v146;
  v75[5] = v76;
  v75[6] = v148;
  v77 = v143;
  *v75 = v142;
  v75[1] = v77;
  v78 = v145;
  v75[2] = v144;
  v75[3] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_24F93A400;
  v80 = sub_24F9257F8();
  *(v79 + 32) = v80;
  v81 = sub_24F925828();
  *(v79 + 33) = v81;
  v82 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v80)
  {
    v82 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v81)
  {
    v82 = sub_24F925848();
  }

  sub_24E79E148(v149);
  sub_24F923318();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v121;
  sub_24E6009C8(v74, v121, &qword_27F21CA38);
  v92 = v91 + *(v120 + 36);
  *v92 = v82;
  *(v92 + 8) = v84;
  *(v92 + 16) = v86;
  *(v92 + 24) = v88;
  *(v92 + 32) = v90;
  *(v92 + 40) = 0;
  v93 = v128;
  v94 = v126;
  v95 = v130;
  (*(v128 + 104))(v126, *MEMORY[0x277D22050], v130);
  memset(v138, 0, 32);
  v137[3] = MEMORY[0x277D84030];
  v96 = swift_allocObject();
  v137[0] = v96;
  sub_24E60169C(v134, v135, &qword_27F213F18);
  v97 = v135[1];
  *(v96 + 16) = v135[0];
  *(v96 + 32) = v97;
  *(v96 + 48) = v136;
  v98 = v127;
  sub_24F929818();
  sub_24E601704(v138, &qword_27F2129B0);
  (*(v93 + 8))(v94, v95);
  sub_24E601704(v137, &qword_27F2129B0);
  sub_24E7A14B8();
  v99 = v122;
  sub_24F925EE8();
  (*(v129 + 8))(v98, v131);
  sub_24E601704(v91, &qword_27F21CA40);
  v100 = v133;
  v101 = v118;
  sub_24E60169C(v133, v118, &qword_27F21CA68);
  v103 = v123;
  v102 = v124;
  v104 = *(v124 + 16);
  v105 = v125;
  v104(v123, v99, v125);
  v106 = v132;
  sub_24E60169C(v101, v132, &qword_27F21CA68);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA80);
  v104((v106 + *(v107 + 48)), v103, v105);
  v108 = *(v102 + 8);
  v108(v99, v105);
  sub_24E601704(v100, &qword_27F21CA68);
  v108(v103, v105);
  return sub_24E601704(v101, &qword_27F21CA68);
}

uint64_t sub_24E7A04BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v90 = a3;
  v91 = a1;
  v89 = sub_24F9297D8();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v83 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_24F929888();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358);
  MEMORY[0x28223BE20](v74);
  v75 = &v71 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA38);
  MEMORY[0x28223BE20](v78);
  v79 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA88);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v71 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA50);
  v11 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C918);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v71 - v15;
  v17 = type metadata accessor for OverviewTileAccessoryType(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA90);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v76 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - v24;
  v26 = type metadata accessor for PlayTogetherActivityTile(0);
  sub_24E60169C(v91 + *(v26 + 40), v16, &qword_27F21C918);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24E601704(v16, &qword_27F21C918);
    v27 = 1;
    v28 = v72;
  }

  else
  {
    sub_24E7A15D0(v16, v20);
    sub_24E7A16DC(v20, v13, type metadata accessor for OverviewTileAccessoryType);
    sub_24E79E148(&v96);
    v29 = v97;
    v30 = type metadata accessor for OverviewTileAccessory(0);
    v31 = &v13[*(v30 + 20)];
    *v31 = v29;
    v31[8] = 0;
    v13[*(v30 + 24)] = 0;
    sub_24E79E148(v98);
    sub_24F927628();
    sub_24F9238C8();
    sub_24E7A1744(v20, type metadata accessor for OverviewTileAccessoryType);
    v32 = v72;
    v33 = &v13[*(v72 + 36)];
    v34 = *&v98[13];
    *v33 = *&v98[11];
    *(v33 + 1) = v34;
    *(v33 + 2) = *&v98[15];
    sub_24E6009C8(v13, v25, &qword_27F21CA50);
    v27 = 0;
    v28 = v32;
  }

  v73 = v25;
  (*(v11 + 56))(v25, v27, 1, v28);
  v35 = *(v91 + 48);
  *&v99 = *(v91 + 40);
  *(&v99 + 1) = v35;
  sub_24E600AEC();

  v36 = sub_24F925E18();
  v38 = v37;
  v40 = v39;
  sub_24F9258D8();
  v41 = sub_24F925C98();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_24E600B40(v36, v38, v40 & 1);

  *&v99 = v41;
  *(&v99 + 1) = v43;
  LOBYTE(v100) = v45 & 1;
  *(&v100 + 1) = v47;
  v48 = v75;
  sub_24F9268B8();
  sub_24E600B40(v41, v43, v45 & 1);

  *(v48 + *(v74 + 36)) = sub_24F925198();
  sub_24F927628();
  sub_24F9242E8();
  v49 = v79;
  sub_24E6009C8(v48, v79, &qword_27F217358);
  v50 = (v49 + *(v78 + 36));
  v51 = v104;
  v50[4] = v103;
  v50[5] = v51;
  v50[6] = v105;
  v52 = v100;
  *v50 = v99;
  v50[1] = v52;
  v53 = v102;
  v50[2] = v101;
  v50[3] = v53;
  v54 = v87;
  v55 = v83;
  v56 = v89;
  (*(v87 + 104))(v83, *MEMORY[0x277D22050], v89);
  memset(v95, 0, 32);
  v94[3] = MEMORY[0x277D84030];
  v57 = swift_allocObject();
  v94[0] = v57;
  sub_24E60169C(v91, v92, &qword_27F213F18);
  v58 = v92[1];
  *(v57 + 16) = v92[0];
  *(v57 + 32) = v58;
  *(v57 + 48) = v93;
  v59 = v82;
  sub_24F929818();
  sub_24E601704(v95, &qword_27F2129B0);
  (*(v54 + 8))(v55, v56);
  sub_24E601704(v94, &qword_27F2129B0);
  sub_24E7A1544();
  v60 = v80;
  sub_24F925EE8();
  (*(v86 + 8))(v59, v88);
  sub_24E601704(v49, &qword_27F21CA38);
  v61 = v73;
  v62 = v76;
  sub_24E60169C(v73, v76, &qword_27F21CA90);
  v64 = v84;
  v63 = v85;
  v65 = *(v84 + 16);
  v66 = v81;
  v65(v81, v60, v85);
  v67 = v90;
  sub_24E60169C(v62, v90, &qword_27F21CA90);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CA98);
  v65((v67 + *(v68 + 48)), v66, v63);
  v69 = *(v64 + 8);
  v69(v60, v63);
  sub_24E601704(v61, &qword_27F21CA90);
  v69(v66, v63);
  return sub_24E601704(v62, &qword_27F21CA90);
}

uint64_t sub_24E7A0E64()
{
  v1 = MEMORY[0x28223BE20](v0);
  sub_24E7A16DC(v1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayTogetherActivityTileComponent);
  sub_24E79C6D4(&qword_27F21C958, type metadata accessor for PlayTogetherActivityTileComponent);
  return sub_24F9218E8();
}

unint64_t sub_24E7A0F40()
{
  result = qword_27F21C960;
  if (!qword_27F21C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C960);
  }

  return result;
}

unint64_t sub_24E7A108C()
{
  result = qword_27F21C978;
  if (!qword_27F21C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C978);
  }

  return result;
}

unint64_t sub_24E7A10E0()
{
  result = qword_27F21C990;
  if (!qword_27F21C990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C980);
    sub_24E7A1164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C990);
  }

  return result;
}

unint64_t sub_24E7A1164()
{
  result = qword_27F21C998;
  if (!qword_27F21C998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C9A0);
    sub_24E7A11F0();
    sub_24E7A12A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C998);
  }

  return result;
}

unint64_t sub_24E7A11F0()
{
  result = qword_27F21C9A8;
  if (!qword_27F21C9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C9B0);
    sub_24E602068(&qword_27F21C9B8, &qword_27F21C9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C9A8);
  }

  return result;
}

unint64_t sub_24E7A12A8()
{
  result = qword_27F21C9C8;
  if (!qword_27F21C9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C9D0);
    sub_24E7A1334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C9C8);
  }

  return result;
}

unint64_t sub_24E7A1334()
{
  result = qword_27F21C9D8;
  if (!qword_27F21C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C9E0);
    sub_24E7A13C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C9D8);
  }

  return result;
}

unint64_t sub_24E7A13C0()
{
  result = qword_27F21C9E8;
  if (!qword_27F21C9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C9F0);
    sub_24E602068(&qword_27F21C9F8, &qword_27F21CA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C9E8);
  }

  return result;
}

uint64_t sub_24E7A1480()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24E7A14B8()
{
  result = qword_27F21CA70;
  if (!qword_27F21CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CA40);
    sub_24E7A1544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CA70);
  }

  return result;
}

unint64_t sub_24E7A1544()
{
  result = qword_27F21CA78;
  if (!qword_27F21CA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CA38);
    sub_24E6A62C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CA78);
  }

  return result;
}

uint64_t sub_24E7A15D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTileAccessoryType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E7A1634()
{
  result = qword_27F21CAA8;
  if (!qword_27F21CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CAA8);
  }

  return result;
}

unint64_t sub_24E7A1688()
{
  result = qword_27F21CAB0;
  if (!qword_27F21CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CAB0);
  }

  return result;
}

uint64_t sub_24E7A16DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7A1744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E7A17A4()
{
  result = qword_27F21CAC8;
  if (!qword_27F21CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CAC8);
  }

  return result;
}

unint64_t sub_24E7A180C()
{
  result = qword_27F21CAD0;
  if (!qword_27F21CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C980);
    sub_24E7A10E0();
    swift_getOpaqueTypeConformance2();
    sub_24E79C6D4(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CAD0);
  }

  return result;
}

unint64_t sub_24E7A1908()
{
  result = qword_27F21CAD8;
  if (!qword_27F21CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CAD8);
  }

  return result;
}

unint64_t sub_24E7A1960()
{
  result = qword_27F21CAE0;
  if (!qword_27F21CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CAE0);
  }

  return result;
}

unint64_t sub_24E7A19B8()
{
  result = qword_27F21CAE8;
  if (!qword_27F21CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CAE8);
  }

  return result;
}

uint64_t sub_24E7A1A0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006570795479 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA472E0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24E7A1CB8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for GameLockup(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_24E7A1E50(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for GameLockup(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_24E7A1FF4()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameLockup(319);
    if (v1 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_24E68857C(319, &qword_27F215458, &qword_27F215460, &unk_24F942C00, MEMORY[0x277D21D28]);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24E7A2120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7A217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7A2244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7A2310()
{
  sub_24E746BEC(319, &qword_27F215590);
  if (v0 <= 0x3F)
  {
    sub_24E746BEC(319, &qword_27F254DF0);
    if (v1 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E7A247C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v36);
  v37 = &v32 - v5;
  v6 = type metadata accessor for GameLockup(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB58);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v32 - v9;
  v11 = type metadata accessor for GameInstallLockup(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 28)];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v42 = v15;
  sub_24E61DA68(&v44, v15, qword_27F21B590);
  v16 = v11[8];
  v17 = sub_24F92A6D8();
  v18 = *(*(v17 - 8) + 56);
  v43 = v16;
  v18(&v14[v16], 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7A3E7C();
  v39 = v10;
  v19 = v41;
  sub_24F92D108();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = v43;
    sub_24E601704(v42, qword_27F24EC90);
    return sub_24E601704(&v14[v20], &qword_27F215440);
  }

  else
  {
    v33 = v6;
    v41 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v21 = v45;
    *v14 = v44;
    *(v14 + 1) = v21;
    *(v14 + 4) = v46;
    LOBYTE(v44) = 1;
    sub_24E7A2120(&qword_27F21CB68, type metadata accessor for GameLockup);
    sub_24F92CC68();
    v22 = v38;
    v23 = v11;
    sub_24E7A3ED0(v8, &v14[v11[5]]);
    LOBYTE(v44) = 2;
    v33 = 0;
    v24 = sub_24F92CC28();
    v25 = v42;
    v26 = v43;
    v27 = &v14[v11[6]];
    *v27 = v24;
    v27[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v47 = 3;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v44, v25, qword_27F24EC90);
    LOBYTE(v44) = 4;
    sub_24E65CAA0();
    v29 = v37;
    sub_24F92CC68();
    sub_24E61DA68(v29, &v14[v26], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v44) = 5;
    sub_24E7A2120(&qword_27F213F48, MEMORY[0x277D21F70]);
    v30 = v35;
    sub_24F92CC18();
    (*(v22 + 8))(v39, v40);
    sub_24E6009C8(v30, &v14[v23[9]], &qword_27F213E68);
    sub_24E7A3F34(v14, v34, type metadata accessor for GameInstallLockup);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24E7A3F9C(v14, type metadata accessor for GameInstallLockup);
  }
}

double sub_24E7A2B88()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    return *(v0 + 56);
  }

  sub_24F92BDC8();
  v7 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_24E7A2CD4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B636F4C656D6167;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E7A2D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7A425C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7A2DC0(uint64_t a1)
{
  v2 = sub_24E7A3E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7A2DFC(uint64_t a1)
{
  v2 = sub_24E7A3E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E7A2E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

id sub_24E7A2F10()
{
  v1 = sub_24F925218();
  v47 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = sub_24F924848();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v0;
  LODWORD(v17) = *(v0 + 8);
  v48 = v15;
  v49 = v16;
  v46 = v18;
  v50 = v0;
  if (v17 == 1)
  {
    v20 = *&v19;
  }

  else
  {

    sub_24F92BDC8();
    v21 = v1;
    v22 = v13;
    v23 = sub_24F9257A8();
    sub_24F921FD8();

    v13 = v22;
    v1 = v21;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v19, 0);
    (*(v48 + 8))(v18, v14);
    v20 = v51;
  }

  type metadata accessor for GameInstallLockupComponent(0);
  sub_24F769764(v13);
  v24 = v47;
  (*(v47 + 104))(v11, *MEMORY[0x277CE0558], v1);
  (*(v24 + 56))(v11, 0, 1, v1);
  v25 = *(v3 + 48);
  sub_24E60169C(v13, v5, &qword_27F215598);
  sub_24E60169C(v11, &v5[v25], &qword_27F215598);
  v26 = *(v24 + 48);
  if (v26(v5, 1, v1) == 1)
  {
    sub_24E601704(v11, &qword_27F215598);
    sub_24E601704(v13, &qword_27F215598);
    v27 = v26(&v5[v25], 1, v1);
    v29 = v49;
    v28 = v50;
    if (v27 == 1)
    {
      sub_24E601704(v5, &qword_27F215598);
      v30 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v43 = v13;
  v31 = v45;
  sub_24E60169C(v5, v45, &qword_27F215598);
  if (v26(&v5[v25], 1, v1) == 1)
  {
    sub_24E601704(v11, &qword_27F215598);
    sub_24E601704(v43, &qword_27F215598);
    (*(v24 + 8))(v31, v1);
    v29 = v49;
    v28 = v50;
LABEL_9:
    sub_24E601704(v5, &unk_27F254F20);
    v30 = 0;
    goto LABEL_11;
  }

  v32 = v44;
  (*(v24 + 32))(v44, &v5[v25], v1);
  sub_24E7A2120(&qword_27F215650, MEMORY[0x277CE0570]);
  v33 = v31;
  v30 = sub_24F92AFF8();
  v34 = *(v24 + 8);
  v34(v32, v1);
  sub_24E601704(v11, &qword_27F215598);
  sub_24E601704(v43, &qword_27F215598);
  v34(v33, v1);
  sub_24E601704(v5, &qword_27F215598);
  v29 = v49;
  v28 = v50;
LABEL_11:
  v35 = *(v28 + 24);
  v36 = *(v28 + 40);
  if (*(v28 + 48) != 1)
  {
    v37 = *(v28 + 16);
    v38 = *(v28 + 32);

    sub_24F92BDC8();
    v39 = sub_24F9257A8();
    sub_24F921FD8();

    v40 = v46;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v37, v35, v38, v36, 0);
    (*(v48 + 8))(v40, v29);
  }

  v41 = 1580.0;
  if (v20 <= 1580.0)
  {
    v41 = v20;
  }

  LOBYTE(v51) = 2;
  return sub_24F422FFC(v30 & 1, v41);
}

uint64_t sub_24E7A35D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB28);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB30);
  sub_24E7A3740(a1, &v7[*(v8 + 44)]);
  v9 = sub_24F925868();
  v10 = &v7[*(v5 + 44)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  v11 = sub_24F9257F8();
  if (sub_24E7A2B88() == 0.0)
  {
    sub_24E7A2F10();
  }

  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_24E6009C8(v7, a2, &qword_27F21CB28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB38);
  v21 = a2 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_24E7A3740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v53 = a1;
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB40) - 8;
  v3 = MEMORY[0x28223BE20](v54);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v52);
  v8 = &v49 - v7;
  v51 = type metadata accessor for GameInstallLockup(0);
  v9 = (v2 + *(v51 + 24));
  v10 = v9[1];
  v57 = *v9;
  v58 = v10;
  sub_24E600AEC();

  v11 = sub_24F925E18();
  v13 = v12;
  LOBYTE(v2) = v14;
  sub_24F9259D8();
  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;
  v49 = v20;

  sub_24E600B40(v11, v13, v2 & 1);

  LODWORD(v2) = sub_24F9251C8();
  v21 = *(v52 + 36);
  v22 = *MEMORY[0x277CE13B8];
  v23 = sub_24F927748();
  (*(*(v23 - 8) + 104))(&v8[v21], v22, v23);
  *v8 = v2;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v24 = sub_24F925C58();
  v26 = v25;
  LODWORD(v52) = v27;
  v50 = v28;
  sub_24E600B40(v15, v17, v19 & 1);

  sub_24E601704(v8, &qword_27F213F10);
  v29 = *(v51 + 20);
  *(v6 + 5) = type metadata accessor for GameLockup(0);
  *(v6 + 6) = sub_24E7A2120(&qword_27F216AD0, type metadata accessor for GameLockup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  sub_24E7A3F34(v53 + v29, boxed_opaque_existential_1, type metadata accessor for GameLockup);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24E7A2120(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *v6 = sub_24F923598();
  v6[8] = v31 & 1;
  v6[56] = sub_24F9257F8();
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v6[96] = 1;
  v32 = &v6[*(v54 + 44)];
  v33 = *(sub_24F924258() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_24F924B38();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #12.0 }

  *v32 = _Q0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48);
  v42 = *(v41 + 36);
  v43 = type metadata accessor for GradientBackground(0);
  (*(*(v43 - 8) + 56))(&v32[v42], 1, 1, v43);
  *&v32[*(v41 + 40)] = 0;
  v44 = v55;
  sub_24E60169C(v6, v55, &qword_27F21CB40);
  v45 = v56;
  *v56 = v24;
  v45[1] = v26;
  LOBYTE(v41) = v52 & 1;
  *(v45 + 16) = v52 & 1;
  v45[3] = v50;
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB50);
  sub_24E60169C(v44, v46 + *(v47 + 48), &qword_27F21CB40);
  sub_24E5FD138(v24, v26, v41);

  sub_24E601704(v6, &qword_27F21CB40);
  sub_24E601704(v44, &qword_27F21CB40);
  sub_24E600B40(v24, v26, v41);
}

uint64_t sub_24E7A3C68()
{
  v1 = MEMORY[0x28223BE20](v0);
  sub_24E7A3F34(v1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameInstallLockupComponent);
  sub_24E7A2120(&qword_27F21CB10, type metadata accessor for GameInstallLockupComponent);
  return sub_24F9218E8();
}

unint64_t sub_24E7A3E7C()
{
  result = qword_27F21CB60;
  if (!qword_27F21CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CB60);
  }

  return result;
}

uint64_t sub_24E7A3ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLockup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7A3F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7A3F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E7A4010()
{
  result = qword_27F21CB70;
  if (!qword_27F21CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CB38);
    sub_24E7A409C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CB70);
  }

  return result;
}

unint64_t sub_24E7A409C()
{
  result = qword_27F21CB78;
  if (!qword_27F21CB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CB28);
    sub_24E602068(&qword_27F21CB80, &qword_27F21CB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CB78);
  }

  return result;
}

unint64_t sub_24E7A4158()
{
  result = qword_27F21CB90;
  if (!qword_27F21CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CB90);
  }

  return result;
}

unint64_t sub_24E7A41B0()
{
  result = qword_27F21CB98;
  if (!qword_27F21CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CB98);
  }

  return result;
}

unint64_t sub_24E7A4208()
{
  result = qword_27F21CBA0;
  if (!qword_27F21CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CBA0);
  }

  return result;
}

uint64_t sub_24E7A425C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B636F4C656D6167 && a2 == 0xEA00000000007075 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24E7A4478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E7A4504(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for DataIntentCacheBusterStreamState()
{
  result = qword_27F21CBA8;
  if (!qword_27F21CBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E7A45DC()
{
  sub_24E7A4634();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24E7A4634()
{
  if (!qword_27F21CBB8)
  {
    v0 = sub_24F92B918();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21CBB8);
    }
  }
}

uint64_t sub_24E7A469C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_24E7A4888(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

void sub_24E7A4A80()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E7A4FFC(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PlayerAvatar(319);
          if (v4 <= 0x3F)
          {
            sub_24E6BCB04();
            if (v5 <= 0x3F)
            {
              sub_24E7A4FFC(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24E65B038(319, &qword_27F21C120, &qword_27F213840);
                if (v7 <= 0x3F)
                {
                  sub_24E6CFC68();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E7A4C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7A4CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CBD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24E7A4DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CBD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24E7A4F10()
{
  sub_24E7A4FFC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E7A4FFC(319, &qword_27F21CBE8, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7A4FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24E7A50E0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0x4D747865746E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x76417265646E6573;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x656372756F73;
      break;
    case 8:
      result = 0x6349656372756F73;
      break;
    case 9:
      result = 0x676B636142736168;
      break;
    case 10:
      result = 1970169197;
      break;
    case 11:
      v3 = 0x747065636361;
      goto LABEL_6;
    case 12:
      v3 = 0x65726F6E6769;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E7A527C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7AA2C8();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v9 = type metadata accessor for FriendRequestLockup(0);
    LOBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v14) = 3;
    sub_24F929608();
    sub_24E7A4C64(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    LOBYTE(v14) = 4;
    type metadata accessor for PlayerAvatar(0);
    sub_24E7A4C64(&qword_27F218A38, type metadata accessor for PlayerAvatar);
    sub_24F92CD48();
    LOBYTE(v14) = 5;
    sub_24F92CD08();
    LOBYTE(v14) = 6;
    sub_24F92CCA8();
    LOBYTE(v14) = 7;
    sub_24F92CCA8();
    LOBYTE(v14) = 8;
    sub_24F9289E8();
    sub_24E7A4C64(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    LOBYTE(v14) = 9;
    sub_24F92CD18();
    v14 = *(v3 + *(v9 + 56));
    v13 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    sub_24E7AA500();
    sub_24F92CD48();
    LOBYTE(v14) = 11;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
    sub_24E602068(&qword_27F218310, &qword_27F2169E8);
    v12 = v11;
    sub_24F92CD48();
    LOBYTE(v14) = 12;
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E7A5838@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v60 - v4;
  v65 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v65);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD78);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v14 = &v60 - v13;
  v15 = type metadata accessor for FriendRequestLockup(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 40) = 0u;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 9) = 0;
  v74 = v17 + 40;
  sub_24E61DA68(&v76, (v17 + 40), qword_27F21B590);
  v18 = *(v15 + 24);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v73 = v18;
  v20(&v17[v18], 1, 1, v19);
  v70 = v15;
  v21 = *(v15 + 28);
  v22 = sub_24F929608();
  v23 = *(*(v22 - 8) + 56);
  v72 = v21;
  v75 = v17;
  v23(&v17[v21], 1, 1, v22);
  v24 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24E7AA2C8();
  v67 = v14;
  v25 = v71;
  sub_24F92D108();
  if (v25)
  {
    v71 = v25;
    v26 = v70;
    __swift_destroy_boxed_opaque_existential_1(v69);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v75;
    goto LABEL_4;
  }

  v71 = v12;
  v61 = v6;
  v62 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  v79 = 0;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18);
  sub_24F92CC68();
  v34 = v77;
  v35 = v75;
  *v75 = v76;
  v35[1] = v34;
  *(v35 + 4) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  v79 = 1;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
  sub_24F92CC68();
  v36 = v70;
  sub_24E61DA68(&v76, v74, qword_27F24EC90);
  LOBYTE(v76) = 2;
  sub_24E65CAA0();
  v37 = v71;
  sub_24F92CC68();
  v38 = v75;
  sub_24E61DA68(v37, v75 + v73, &qword_27F215440);
  LOBYTE(v76) = 3;
  sub_24E7A4C64(&qword_27F213F48, MEMORY[0x277D21F70]);
  v39 = v62;
  sub_24F92CC18();
  sub_24E61DA68(v39, v38 + v72, &qword_27F213E68);
  LOBYTE(v76) = 4;
  sub_24E7A4C64(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
  v40 = v61;
  sub_24F92CC68();
  sub_24E7AA37C(v40, v38 + v36[8], type metadata accessor for PlayerAvatar);
  LOBYTE(v76) = 5;
  v41 = sub_24F92CC28();
  v42 = (v38 + v36[9]);
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v76) = 6;
  v44 = sub_24F92CBC8();
  v45 = (v38 + v36[10]);
  *v45 = v44;
  v45[1] = v46;
  LOBYTE(v76) = 7;
  v47 = sub_24F92CBC8();
  v48 = (v38 + v36[11]);
  *v48 = v47;
  v48[1] = v49;
  sub_24F9289E8();
  LOBYTE(v76) = 8;
  sub_24E7A4C64(&qword_27F214018, MEMORY[0x277D21C48]);
  v50 = v64;
  sub_24F92CC18();
  v71 = 0;
  sub_24E6009C8(v50, v38 + v36[12], &qword_27F213FB0);
  LOBYTE(v76) = 9;
  v51 = v71;
  v52 = sub_24F92CC38();
  v71 = v51;
  if (v51 || (*(v75 + v70[13]) = v52 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0), v79 = 10, sub_24E7AA3E4(), v53 = v71, sub_24F92CC68(), (v71 = v53) != 0) || (*(v75 + v70[14]) = v76, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8), v79 = 11, sub_24E602068(&qword_27F243830, &qword_27F2169E8), v54 = v71, sub_24F92CC68(), (v71 = v54) != 0))
  {
    (*(v66 + 8))(v67, v68);
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v31 = 1;
    v26 = v70;
    v32 = v75;
    __swift_destroy_boxed_opaque_existential_1(v69);
    sub_24E601704(v32, &qword_27F213F18);
LABEL_4:
    sub_24E601704(v74, qword_27F24EC90);
    sub_24E601704(v32 + v73, &qword_27F215440);
    sub_24E601704(v32 + v72, &qword_27F213E68);
    if (v27)
    {
      sub_24E7AA31C(v32 + v26[8], type metadata accessor for PlayerAvatar);
      if (!v28)
      {
LABEL_6:
        if (!v29)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if (!v28)
    {
      goto LABEL_6;
    }

    if (!v29)
    {
LABEL_7:
      if (!v30)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:

    if (!v30)
    {
LABEL_8:
      if (!v31)
      {
      }

LABEL_9:
      sub_24E601704(v32 + v26[12], &qword_27F213FB0);
    }

LABEL_14:

    if (!v31)
    {
    }

    goto LABEL_9;
  }

  v55 = v75 + v70[15];
  v56 = v77;
  *v55 = v76;
  *(v55 + 1) = v56;
  *(v55 + 4) = v78;
  v79 = 12;
  sub_24F92CC68();
  v71 = 0;
  (*(v66 + 8))(v67, v68);
  v57 = v75;
  v58 = v75 + v70[16];
  v59 = v77;
  *v58 = v76;
  *(v58 + 1) = v59;
  *(v58 + 4) = v78;
  sub_24E7AA498(v57, v63, type metadata accessor for FriendRequestLockup);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return sub_24E7AA31C(v57, type metadata accessor for FriendRequestLockup);
}

uint64_t sub_24E7A64F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7AA8F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7A6528(uint64_t a1)
{
  v2 = sub_24E7AA2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7A6564(uint64_t a1)
{
  v2 = sub_24E7AA2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E7A65A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24E7A6690(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC08);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC10);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC18);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = *(a1 + *(type metadata accessor for FriendRequestLockup(0) + 52));
  v14 = sub_24F924C88();
  if (v13 == 1)
  {
    *v12 = v14;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC20);
    sub_24E7A69D8(a1, v2, &v12[*(v15 + 44)]);
    v16 = &v12[*(v10 + 36)];
    v17 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
    v18 = type metadata accessor for GradientBackground(0);
    (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    *(v16 + 1) = xmmword_24F957250;
    *(v16 + 4) = 0x402C000000000000;
    *(v16 + 20) = 257;
    sub_24E60169C(v12, v9, &qword_27F21CC18);
    swift_storeEnumTagMultiPayload();
    sub_24E7A9EC0();
    sub_24E7AA060();
    sub_24F924E28();
    v19 = v12;
    v20 = &qword_27F21CC18;
  }

  else
  {
    *v6 = v14;
    *(v6 + 1) = 0;
    v6[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC20);
    sub_24E7A69D8(a1, v2, &v6[*(v21 + 44)]);
    v22 = sub_24F925828();
    v23 = &v6[*(v4 + 36)];
    *v23 = v22;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    v23[40] = 1;
    sub_24E60169C(v6, v9, &qword_27F21CC08);
    swift_storeEnumTagMultiPayload();
    sub_24E7A9EC0();
    sub_24E7AA060();
    sub_24F924E28();
    v19 = v6;
    v20 = &qword_27F21CC08;
  }

  return sub_24E601704(v19, v20);
}

uint64_t sub_24E7A69D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC58);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = (&v45 - v6);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC60);
  v50 = *(v48 - 8);
  v7 = MEMORY[0x28223BE20](v48);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - v9;
  v10 = sub_24F923E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC68);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v49 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC70);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  *v24 = sub_24F9249A8();
  *(v24 + 1) = 0;
  v25 = 1;
  v24[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC78);
  v27 = a1;
  sub_24E7A6F00(a1, a2, &v24[*(v26 + 44)]);
  v28 = a2;
  sub_24F769788(v13);
  LOBYTE(a2) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v29 = v10;
  v30 = v48;
  (*(v11 + 8))(v13, v29);
  if (a2)
  {
    v31 = sub_24F924C98();
    v32 = v45;
    *v45 = v31;
    *(v32 + 8) = 0x4008000000000000;
    *(v32 + 16) = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC88);
    sub_24E7A8B9C(v27, v28, (v32 + *(v33 + 44)));
    sub_24F927628();
    sub_24F9242E8();
    v34 = v47;
    sub_24E6009C8(v32, v47, &qword_27F21CC58);
    v35 = (v34 + *(v30 + 36));
    v36 = v57;
    v35[4] = v56;
    v35[5] = v36;
    v35[6] = v58;
    v37 = v53;
    *v35 = v52;
    v35[1] = v37;
    v38 = v55;
    v35[2] = v54;
    v35[3] = v38;
    v39 = v34;
    v40 = v46;
    sub_24E6009C8(v39, v46, &qword_27F21CC60);
    sub_24E6009C8(v40, v18, &qword_27F21CC60);
    v25 = 0;
  }

  (*(v50 + 56))(v18, v25, 1, v30);
  sub_24E60169C(v24, v22, &qword_27F21CC70);
  v41 = v49;
  sub_24E60169C(v18, v49, &qword_27F21CC68);
  v42 = v51;
  sub_24E60169C(v22, v51, &qword_27F21CC70);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC80);
  sub_24E60169C(v41, v42 + *(v43 + 48), &qword_27F21CC68);
  sub_24E601704(v18, &qword_27F21CC68);
  sub_24E601704(v24, &qword_27F21CC70);
  sub_24E601704(v41, &qword_27F21CC68);
  return sub_24E601704(v22, &qword_27F21CC70);
}

uint64_t sub_24E7A6F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v103);
  v123 = &v98 - v5;
  v122 = sub_24F9241F8();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F923D48();
  v114 = *(v7 - 8);
  v115 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v113 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v109 = &v98 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCD0);
  MEMORY[0x28223BE20](v112);
  v110 = (&v98 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCD8);
  v116 = *(v12 - 8);
  v117 = v12;
  MEMORY[0x28223BE20](v12);
  v111 = &v98 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCE0);
  MEMORY[0x28223BE20](v119);
  v121 = &v98 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCE8);
  v101 = *(v102 - 8);
  v15 = MEMORY[0x28223BE20](v102);
  v100 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v98 - v17;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCF0);
  MEMORY[0x28223BE20](v107);
  v19 = &v98 - v18;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223720);
  MEMORY[0x28223BE20](v105);
  v21 = &v98 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223710);
  v22 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v24 = &v98 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCF8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v98 - v26;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD00);
  v28 = MEMORY[0x28223BE20](v108);
  v98 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v98 - v30;
  *v21 = sub_24F9249A8();
  *(v21 + 1) = 0x4020000000000000;
  v21[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD08);
  v33 = a1;
  sub_24E7A7CC0(a1, a2, &v21[*(v32 + 44)]);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v34 = sub_24F9248C8();
  __swift_project_value_buffer(v34, qword_27F39F078);
  sub_24E602068(&qword_27F21CD10, &unk_27F223720);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v21, &unk_27F223720);
  v35 = type metadata accessor for FriendRequestLockup(0);
  sub_24E993028(*(a1 + *(v35 + 56)));
  (*(v22 + 8))(v24, v106);
  v36 = *(sub_24F924258() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_24F924B38();
  (*(*(v38 - 8) + 104))(&v19[v36], v37, v38);
  __asm { FMOV            V0.2D, #12.0 }

  *v19 = _Q0;
  *&v19[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v44 = sub_24F926D08();

  *&v19[*(v107 + 52)] = v44;
  sub_24E60169C(v19, v31, &qword_27F21CCF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD18);
  sub_24E60169C(v27, &v31[v45[9]], &qword_27F21CCF8);
  v46 = &v31[v45[10]];
  *v46 = sub_24F923398() & 1;
  *(v46 + 1) = v47;
  v46[16] = v48 & 1;
  v49 = &v31[v45[11]];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v50 = qword_27F24E488;
  v51 = sub_24F923398();
  v53 = v52;
  v55 = v54;
  v56 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD20) + 36)];
  *v56 = v50;
  v56[8] = v51 & 1;
  *(v56 + 2) = v53;
  v56[24] = v55 & 1;
  LOBYTE(v50) = sub_24F923398();
  v58 = v57;
  LOBYTE(v53) = v59;
  sub_24E601704(v19, &qword_27F21CCF0);
  sub_24E601704(v27, &qword_27F21CCF8);
  v60 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD28) + 36)];
  *v60 = v50 & 1;
  *(v60 + 1) = v58;
  v60[16] = v53 & 1;
  sub_24E60169C(v33 + 40, v124, qword_27F24EC90);
  v61 = &v31[*(v108 + 9)];
  v62 = type metadata accessor for FocusableActionModifier();
  v63 = &v61[*(v62 + 24)];
  v64 = v124[1];
  *v63 = v124[0];
  *(v63 + 1) = v64;
  *(v63 + 4) = v125;
  *v61 = swift_getKeyPath();
  v61[40] = 0;
  v65 = *(v62 + 20);
  *&v61[v65] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v66 = sub_24F9249A8();
  v67 = v110;
  *v110 = v66;
  *(v67 + 8) = 0;
  *(v67 + 16) = 1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD30);
  sub_24E7A82CC(v33, (v67 + *(v68 + 44)));
  v69 = v109;
  sub_24F923D38();
  v70 = v113;
  sub_24F923D18();
  v108 = v31;
  v71 = v115;
  v72 = *(v114 + 8);
  v72(v69, v115);
  v73 = sub_24E602068(&qword_27F21CD38, &qword_27F21CCD0);
  v75 = v111;
  v74 = v112;
  sub_24F926338();
  v72(v70, v71);
  sub_24E601704(v67, &qword_27F21CCD0);
  v76 = v118;
  sub_24F9241E8();
  *&v124[0] = v74;
  *(&v124[0] + 1) = v73;
  swift_getOpaqueTypeConformance2();
  sub_24E7A4C64(&qword_27F212838, MEMORY[0x277CDDB18]);
  v78 = v121;
  v77 = v122;
  v79 = v117;
  sub_24F926178();
  (*(v120 + 8))(v76, v77);
  (*(v116 + 8))(v75, v79);
  v80 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  v82 = (v78 + *(v119 + 36));
  *v82 = KeyPath;
  v82[1] = v80;
  v83 = *MEMORY[0x277CDF988];
  v84 = sub_24F923E98();
  v85 = v123;
  (*(*(v84 - 8) + 104))(v123, v83, v84);
  sub_24E7A4C64(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24E7AA114();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v87 = v99;
    sub_24F9263F8();
    sub_24E601704(v85, &qword_27F21CCC8);
    sub_24E601704(v78, &qword_27F21CCE0);
    v88 = v108;
    v89 = v98;
    sub_24E60169C(v108, v98, &qword_27F21CD00);
    v90 = v101;
    v91 = *(v101 + 16);
    v92 = v100;
    v93 = v102;
    v91(v100, v87, v102);
    v94 = v104;
    sub_24E60169C(v89, v104, &qword_27F21CD00);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD48);
    v96 = v94 + *(v95 + 48);
    *v96 = 0;
    *(v96 + 8) = 1;
    v91((v94 + *(v95 + 64)), v92, v93);
    v97 = *(v90 + 8);
    v97(v87, v93);
    sub_24E601704(v88, &qword_27F21CD00);
    v97(v92, v93);
    return sub_24E601704(v89, &qword_27F21CD00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E7A7CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC58);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = (&v49 - v6);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC60);
  v56 = *(v54 - 8);
  v7 = MEMORY[0x28223BE20](v54);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - v9;
  v10 = sub_24F923E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC68);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v19 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(type metadata accessor for FriendRequestLockup(0) + 32);
  v50 = a1;
  sub_24E7AA498(a1 + v29, v21, type metadata accessor for PlayerAvatar);
  LOBYTE(v61[0]) = 7;
  sub_24F8319B8(v21, v61, v28);
  type metadata accessor for FriendRequestLockupComponent(0);
  sub_24F927618();
  v30 = 1;
  sub_24F9238C8();
  v31 = &v28[*(v23 + 44)];
  v32 = v59;
  *v31 = v58;
  *(v31 + 1) = v32;
  *(v31 + 2) = v60;
  sub_24F769788(v13);
  LOBYTE(v23) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v33 = v10;
  v34 = v54;
  (*(v11 + 8))(v13, v33);
  if ((v23 & 1) == 0)
  {
    v35 = sub_24F924C98();
    v36 = v51;
    *v51 = v35;
    *(v36 + 8) = 0x4008000000000000;
    *(v36 + 16) = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC88);
    sub_24E7A8B9C(v50, a2, (v36 + *(v37 + 44)));
    sub_24F927628();
    sub_24F9242E8();
    v38 = v53;
    sub_24E6009C8(v36, v53, &qword_27F21CC58);
    v39 = (v38 + *(v34 + 36));
    v40 = v61[5];
    v39[4] = v61[4];
    v39[5] = v40;
    v39[6] = v61[6];
    v41 = v61[1];
    *v39 = v61[0];
    v39[1] = v41;
    v42 = v61[3];
    v39[2] = v61[2];
    v39[3] = v42;
    v43 = v38;
    v44 = v52;
    sub_24E6009C8(v43, v52, &qword_27F21CC60);
    sub_24E6009C8(v44, v18, &qword_27F21CC60);
    v30 = 0;
  }

  (*(v56 + 56))(v18, v30, 1, v34);
  sub_24E60169C(v28, v26, &qword_27F2233D0);
  v45 = v55;
  sub_24E60169C(v18, v55, &qword_27F21CC68);
  v46 = v57;
  sub_24E60169C(v26, v57, &qword_27F2233D0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD70);
  sub_24E60169C(v45, v46 + *(v47 + 48), &qword_27F21CC68);
  sub_24E601704(v18, &qword_27F21CC68);
  sub_24E601704(v28, &qword_27F2233D0);
  sub_24E601704(v45, &qword_27F21CC68);
  return sub_24E601704(v26, &qword_27F2233D0);
}

uint64_t sub_24E7A82CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD50);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD58);
  v44 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v43 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v32 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v41 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v33 = &v32 - v16;
  v17 = sub_24F9232F8();
  v18 = *(v17 - 8);
  v38 = *(v18 + 56);
  v39 = v18 + 56;
  v38(v5, 1, 1, v17);
  v37 = type metadata accessor for FriendRequestLockup(0);
  sub_24E60169C(a1 + *(v37 + 64), v51, &qword_27F2169E8);
  sub_24E612C80(v51, &v46);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BD8);
  *&v51[0] = MEMORY[0x277CE1088];
  *(&v51[0] + 1) = MEMORY[0x277CE1078];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  v49 = MEMORY[0x277CE1120];
  v19 = sub_24E63E454();
  v50 = v19;
  sub_24E602068(&qword_27F21CD60, &qword_27F21CD50);
  sub_24E620DE8();
  v20 = v6;
  sub_24F926178();
  sub_24E6A56E8(&v46);
  v21 = *(v40 + 8);
  v21(v8, v20);
  v38(v5, 1, 1, v17);
  sub_24E60169C(v36 + *(v37 + 60), v51, &qword_27F2169E8);
  sub_24E612C80(v51, &v46);
  sub_24F921788();
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  v49 = MEMORY[0x277CE1120];
  v50 = v19;
  v22 = v41;
  sub_24F926178();
  sub_24E6A56E8(&v46);
  v21(v8, v20);
  v23 = v44;
  v24 = *(v44 + 16);
  v25 = v42;
  v26 = v33;
  v24(v42, v33, v9);
  v27 = v43;
  v24(v43, v22, v9);
  v28 = v45;
  v24(v45, v25, v9);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CD68);
  v24(&v28[*(v29 + 48)], v27, v9);
  v30 = *(v23 + 8);
  v30(v22, v9);
  v30(v26, v9);
  v30(v27, v9);
  return (v30)(v25, v9);
}

uint64_t sub_24E7A8890()
{
  v0 = sub_24F9248C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  sub_24F926DF8();
  sub_24F924CF8();
  v7 = sub_24F924D08();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_24F926E58();

  sub_24E601704(v6, &qword_27F214410);
  sub_24F9248B8();
  v10[1] = v8;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E7A8A7C()
{
  v0 = sub_24F9248C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F926DF8();
  sub_24F9248B8();
  v6[1] = v4;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E7A8B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v87 = a2;
  v95 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC90);
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v79 - v5);
  v86 = sub_24F9259B8();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_24F925A68();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CC98);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v100 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v98 = &v79 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v92 = *(v99 - 8);
  v13 = MEMORY[0x28223BE20](v99);
  v97 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v101 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  v19 = type metadata accessor for FriendRequestLockup(0);
  v20 = v19[10];
  v96 = a1;
  v21 = (a1 + v20);
  v22 = v21[1];
  if (v22)
  {
    v102 = *v21;
    v103 = v22;
    sub_24E600AEC();

    v23 = sub_24F925E18();
    v79 = v19;
    v25 = v24;
    v27 = v26;
    sub_24F925A08();
    v80 = v6;
    v28 = sub_24F925C98();
    v30 = v29;
    v32 = v31;
    v91 = v33;

    sub_24E600B40(v23, v25, v27 & 1);

    v34 = sub_24F9251C8();
    v35 = *(v16 + 36);
    v36 = *MEMORY[0x277CE13B8];
    v37 = sub_24F927748();
    (*(*(v37 - 8) + 104))(&v18[v35], v36, v37);
    *v18 = v34;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v38 = sub_24F925C58();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_24E600B40(v28, v30, v32 & 1);

    sub_24E601704(v18, &qword_27F213F10);
    v45 = v42 & 1;
    v6 = v80;
    v90 = v40;
    v91 = v38;
    v88 = v45;
    sub_24E5FD138(v38, v40, v45);
    v89 = v44;
    v19 = v79;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
  }

  v46 = v96;
  v47 = (v96 + v19[9]);
  v48 = v47[1];
  v102 = *v47;
  v103 = v48;
  sub_24E600AEC();

  v49 = sub_24F925E18();
  v51 = v50;
  v102 = v49;
  v103 = v50;
  v53 = v52 & 1;
  v104 = v52 & 1;
  v105 = v54;
  v55 = 1;
  sub_24F9268B8();
  sub_24E600B40(v49, v51, v53);

  v56 = (v46 + v19[11]);
  v57 = v56[1];
  if (v57)
  {
    v58 = *v56;
    sub_24F925A18();
    type metadata accessor for FriendRequestLockupComponent(0);
    v59 = v82;
    sub_24F769E78(v82);
    v60 = v81;
    sub_24F925A48();

    (*(v85 + 8))(v59, v86);
    sub_24F925A58();
    v62 = v61;
    (*(v83 + 8))(v60, v84);
    *v6 = sub_24F9249A8();
    v6[1] = v62 * 0.5;
    *(v6 + 16) = 0;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCA8);
    sub_24E7A9414(v96, v58, v57, v6 + *(v63 + 44));
    v64 = v98;
    sub_24E6009C8(v6, v98, &qword_27F21CC90);
    v55 = 0;
  }

  else
  {
    v64 = v98;
  }

  (*(v93 + 56))(v64, v55, 1, v94);
  v65 = v92;
  v66 = *(v92 + 16);
  v67 = v97;
  v66(v97, v101, v99);
  sub_24E60169C(v64, v100, &qword_27F21CC98);
  v68 = v95;
  v70 = v90;
  v69 = v91;
  *v95 = v91;
  v68[1] = v70;
  v71 = v88;
  v72 = v89;
  v68[2] = v88;
  v68[3] = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCA0);
  v74 = v67;
  v75 = v99;
  v66(v68 + *(v73 + 48), v74, v99);
  v76 = v100;
  sub_24E60169C(v100, v68 + *(v73 + 64), &qword_27F21CC98);
  sub_24E65D2B4(v69, v70, v71, v72);
  sub_24E65D2F8(v69, v70, v71, v72);
  sub_24E601704(v98, &qword_27F21CC98);
  v77 = *(v65 + 8);
  v77(v101, v75);
  sub_24E601704(v76, &qword_27F21CC98);
  v77(v97, v75);
  return sub_24E65D2F8(v69, v70, v71, v72);
}

uint64_t sub_24E7A9414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a3;
  v70 = a2;
  v67 = a1;
  v75 = a4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v73);
  v74 = &v64 - v4;
  v5 = type metadata accessor for GameIconModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameIcon(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCB0);
  v68 = *(v69 - 8);
  v11 = MEMORY[0x28223BE20](v69);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - v15;
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCB8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v72 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v76 = &v64 - v24;
  v25 = type metadata accessor for FriendRequestLockup(0);
  sub_24E60169C(v67 + *(v25 + 48), v16, &qword_27F213FB0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24E601704(v16, &qword_27F213FB0);
    v26 = 1;
    v27 = v76;
    v28 = v69;
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v29 = *(v18 + 16);
    v29(v7, v20, v17);
    v7[*(v5 + 20)] = 0;
    v30 = v8[8];
    *&v10[v30] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
    swift_storeEnumTagMultiPayload();
    v29(v10, v7, v17);
    (*(v18 + 56))(v10, 0, 1, v17);
    sub_24E7AA31C(v7, type metadata accessor for GameIconModel);
    v10[v8[5]] = 1;
    v10[v8[6]] = 1;
    v10[v8[7]] = 0;
    sub_24F927618();
    sub_24F9242E8();
    (*(v18 + 8))(v20, v17);
    v31 = v65;
    sub_24E7AA37C(v10, v65, type metadata accessor for GameIcon);
    v28 = v69;
    v32 = (v31 + *(v69 + 36));
    v33 = v84;
    v32[4] = v83;
    v32[5] = v33;
    v32[6] = v85;
    v34 = v80;
    *v32 = v79;
    v32[1] = v34;
    v35 = v82;
    v32[2] = v81;
    v32[3] = v35;
    v36 = v31;
    v37 = v66;
    sub_24E6009C8(v36, v66, &qword_27F21CCB0);
    v38 = v37;
    v27 = v76;
    sub_24E6009C8(v38, v76, &qword_27F21CCB0);
    v26 = 0;
  }

  (*(v68 + 56))(v27, v26, 1, v28);
  v77 = v70;
  v78 = v71;
  sub_24E600AEC();

  v39 = sub_24F925E18();
  v41 = v40;
  v43 = v42;
  sub_24F925A18();
  v44 = sub_24F925C98();
  v46 = v45;
  v48 = v47;

  sub_24E600B40(v39, v41, v43 & 1);

  LODWORD(v39) = sub_24F9251C8();
  v49 = *(v73 + 36);
  v50 = *MEMORY[0x277CE13B8];
  v51 = sub_24F927748();
  v52 = v74;
  (*(*(v51 - 8) + 104))(&v74[v49], v50, v51);
  *v52 = v39;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v53 = sub_24F925C58();
  v55 = v54;
  LOBYTE(v49) = v56;
  v58 = v57;
  sub_24E600B40(v44, v46, v48 & 1);

  sub_24E601704(v52, &qword_27F213F10);
  v59 = v76;
  v60 = v72;
  sub_24E60169C(v76, v72, &qword_27F21CCB8);
  v61 = v75;
  sub_24E60169C(v60, v75, &qword_27F21CCB8);
  v62 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC0) + 48);
  *v62 = v53;
  *(v62 + 8) = v55;
  *(v62 + 16) = v49 & 1;
  *(v62 + 24) = v58;
  sub_24E5FD138(v53, v55, v49 & 1);

  sub_24E601704(v59, &qword_27F21CCB8);
  sub_24E600B40(v53, v55, v49 & 1);

  return sub_24E601704(v60, &qword_27F21CCB8);
}

uint64_t sub_24E7A9CD8()
{
  v1 = MEMORY[0x28223BE20](v0);
  sub_24E7AA498(v1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendRequestLockupComponent);
  sub_24E7A4C64(&qword_27F21CBF0, type metadata accessor for FriendRequestLockupComponent);
  return sub_24F9218E8();
}

unint64_t sub_24E7A9EC0()
{
  result = qword_27F21CC28;
  if (!qword_27F21CC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CC18);
    sub_24E7A9F7C();
    sub_24E7A4C64(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CC28);
  }

  return result;
}

unint64_t sub_24E7A9F7C()
{
  result = qword_27F21CC30;
  if (!qword_27F21CC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CC38);
    sub_24E602068(&qword_27F21CC40, &qword_27F21CC48);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CC30);
  }

  return result;
}

unint64_t sub_24E7AA060()
{
  result = qword_27F21CC50;
  if (!qword_27F21CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CC08);
    sub_24E7A9F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CC50);
  }

  return result;
}

unint64_t sub_24E7AA114()
{
  result = qword_27F21CD40;
  if (!qword_27F21CD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCD8);
    sub_24F9241F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCD0);
    sub_24E602068(&qword_27F21CD38, &qword_27F21CCD0);
    swift_getOpaqueTypeConformance2();
    sub_24E7A4C64(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CD40);
  }

  return result;
}

unint64_t sub_24E7AA2C8()
{
  result = qword_27F21CD80;
  if (!qword_27F21CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CD80);
  }

  return result;
}

uint64_t sub_24E7AA31C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7AA37C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E7AA3E4()
{
  result = qword_27F21C1A8;
  if (!qword_27F21C1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C1A0);
    sub_24E785200(&qword_27F21C1B0, sub_24E785278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C1A8);
  }

  return result;
}

uint64_t sub_24E7AA498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E7AA500()
{
  result = qword_27F21C1D8;
  if (!qword_27F21C1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C1A0);
    sub_24E785200(&qword_27F21C1E0, sub_24E785434);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C1D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendRequestLockup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FriendRequestLockup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E7AA708()
{
  result = qword_27F21CD90;
  if (!qword_27F21CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CD90);
  }

  return result;
}

unint64_t sub_24E7AA760()
{
  result = qword_27F21CD98;
  if (!qword_27F21CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CDA0);
    sub_24E7A9EC0();
    sub_24E7AA060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CD98);
  }

  return result;
}

unint64_t sub_24E7AA7F0()
{
  result = qword_27F21CDA8;
  if (!qword_27F21CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CDA8);
  }

  return result;
}

unint64_t sub_24E7AA848()
{
  result = qword_27F21CDB0;
  if (!qword_27F21CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CDB0);
  }

  return result;
}

unint64_t sub_24E7AA8A0()
{
  result = qword_27F21CDB8;
  if (!qword_27F21CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CDB8);
  }

  return result;
}

uint64_t sub_24E7AA8F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x76417265646E6573 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA47300 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA47320 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6349656372756F73 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676B636142736168 && a2 == 0xED0000646E756F72 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6341747065636361 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x634165726F6E6769 && a2 == 0xEC0000006E6F6974)
  {

    return 12;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_24E7AAD1C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v9;
    v20 = v8;
    v21 = a3;
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      sub_24E60169C(v14, v12, &qword_27F213800);
      v16 = a1(v12);
      if (v3)
      {
        return sub_24E601704(v12, &qword_27F213800);
      }

      if (v16)
      {
        break;
      }

      sub_24E601704(v12, &qword_27F213800);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_24E6009C8(v12, v21, &qword_27F213800);
    v17 = 0;
LABEL_10:
    v9 = v19;
    v8 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a3, v17, 1, v8, v10);
}

uint64_t sub_24E7AAEE8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for GameSearchResultsGroup(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_24E7B4A64(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_24E7B4AC8(v10);
      }

      if (v14)
      {
        break;
      }

      sub_24E7B4AC8(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_24E7B4B24(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_24E7AB064@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_24E615E00(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }

      if (v8)
      {
        return sub_24E612C80(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24E7AB11C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a2 + 80);
    while (1)
    {
      v9 = *v8;
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *(v8 - 4);
      v13 = *(v8 - 3);
      v14 = *(v8 - 5);
      *&v19 = *(v8 - 6);
      *(&v19 + 1) = v14;
      *&v20 = v12;
      *(&v20 + 1) = v13;
      v21 = v10;
      v22 = v11;
      v23 = v9;

      result = v7(&v19);
      if (v4)
      {
      }

      if (result)
      {
        break;
      }

      v8 += 56;

      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    *a3 = v19;
    *(a3 + 16) = v15;
    *(a3 + 32) = v16;
    *(a3 + 40) = v17;
    *(a3 + 48) = v18;
  }

  else
  {
LABEL_6:
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_24E7AB248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E760BD8;

  return ThreeDimensionalIconViewRendering.fetchIconImages(_:with:)(a1, a2, a3, a4);
}

uint64_t ThreeDimensionalIconViewRendering.fetchIconImages(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_24E7AB32C, 0, 0);
}

uint64_t sub_24E7AB32C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = *(v0 + 40);
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_24E7AB460;

  return MEMORY[0x282200600](v0 + 16, v4, v6, 0, 0, &unk_24F957818, v5, v4);
}

uint64_t sub_24E7AB460()
{

  return MEMORY[0x2822009F8](sub_24E626BB4, 0, 0);
}

uint64_t sub_24E7AB580(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t))
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDC0);
  MEMORY[0x28223BE20](v3 - 8);
  v75 = v64 - v4;
  v5 = sub_24F921488();
  MEMORY[0x28223BE20](v5 - 8);
  v74 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDD0);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = v64 - v11;
  v84 = sub_24F9214A8();
  v70 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDD8);
  v78 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = v64 - v13;
  v83 = sub_24F91FCF8();
  v73 = *(v83 - 1);
  v14 = MEMORY[0x28223BE20](v83);
  v82 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800) - 8;
  result = MEMORY[0x28223BE20](v17);
  v21 = v64 - v20;
  v22 = *(a1 + 16);
  v69 = a1;
  if (v22)
  {
    v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = v22 - 1;
    v25 = *(v19 + 72);
    do
    {
      sub_24E60169C(v23, v21, &qword_27F213800);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
      v27 = (*(*(v26 - 8) + 48))(v21, 1, v26);
      result = sub_24E601704(v21, &qword_27F213800);
      v29 = v24-- != 0;
      v30 = v27 == 1;
      v31 = v27 != 1;
      if (v30)
      {
        break;
      }

      v23 += v25;
    }

    while (v29);
    if (!v79)
    {
      return result;
    }
  }

  else
  {
    v31 = 1;
    if (!v79)
    {
      return result;
    }
  }

  result = sub_24F91FC78();
  if (result)
  {
    if (v31)
    {
      v32 = result;
      v79 = sub_24F91FD28();
      v64[1] = v32;
      sub_24F91FAE8();
      v92 = MEMORY[0x277D84F90];
      sub_24E7B4350(&qword_27F21CDE8, MEMORY[0x277CDB190]);
      sub_24F92B3F8();
      sub_24E602068(&qword_27F21CDF0, &qword_27F21CDD8);
      sub_24F92C4D8();
      if (v89)
      {
        v33 = (v73 + 8);
        do
        {
          sub_24F91FD08();
          v34 = sub_24F92B198();
          v36 = v35;

          *&v89 = v34;
          *(&v89 + 1) = v36;
          v87 = 0x72656E6F6C63;
          v88 = 0xE600000000000000;
          sub_24E600AEC();
          v37 = sub_24F92C5F8();

          if ((v37 & 1) != 0 && (v38 = v82, sub_24F91FAE8(), sub_24E7B4350(&qword_27F21CE10, MEMORY[0x277CDB190]), v39 = v83, sub_24F92BB88(), sub_24F92BC08(), (*v33)(v38, v39), v89 == v87))
          {
          }

          else
          {
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
          }

          sub_24F92C4D8();
        }

        while (v89);
      }

      (*(v78 + 8))(v85, v86);
      v40 = v92;
      if (v92 < 0 || (v92 & 0x4000000000000000) != 0)
      {
        goto LABEL_64;
      }

      v41 = *(v92 + 16);
LABEL_23:
      v42 = v69;
      v43 = v76;
      if (v41)
      {
        v44 = 0;
        v73 = v40 & 0xC000000000000001;
        v72 = v40 + 32;
        v83 = (v70 + 7);
        v79 = (v70 + 6);
        v71 = (v70 + 4);
        v66 = (v70 + 2);
        ++v70;
        v65 = xmmword_24F93DE60;
        v68 = v40;
        v67 = v41;
        v80 = v9;
        do
        {
          if (v73)
          {
            v46 = MEMORY[0x253052270](v44, v40);
            v45 = (v44 + 1);
            if (__OFADD__(v44, 1))
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v44 >= *(v40 + 16))
            {
              goto LABEL_62;
            }

            v46 = *(v72 + 8 * v44);

            v45 = (v44 + 1);
            if (__OFADD__(v44, 1))
            {
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              v41 = sub_24F92C738();
              goto LABEL_23;
            }
          }

          v82 = sub_24E7B0D9C(v42, v44);
          if (v82)
          {
            v47 = sub_24E9910A0();
            v48 = v47;
            v77 = v45;
            v78 = v46;
            if (v47 >> 62)
            {
              v49 = sub_24F92C738();
              if (v49)
              {
LABEL_33:
                if (v49 < 1)
                {
                  goto LABEL_63;
                }

                v50 = 0;
                v85 = v48;
                v86 = v48 & 0xC000000000000001;
                while (2)
                {
                  if (v86)
                  {
                    MEMORY[0x253052270](v50, v48);
                  }

                  else
                  {
                  }

                  sub_24F91FAA8();
                  sub_24F91FD48();
                  v51 = sub_24F91FB48();
                  v52 = *(*(v51 - 8) + 48);
                  if (v52(v9, 1, v51))
                  {

                    sub_24E601704(v9, &qword_27F21CDC8);
                    v89 = 0u;
                    v90 = 0u;
                    v91 = 0;
                    goto LABEL_46;
                  }

                  v53 = sub_24F91FB28();
                  sub_24E601704(v9, &qword_27F21CDC8);
                  if (*(v53 + 16))
                  {
                    sub_24E615E00(v53 + 32, &v89);

                    if (*(&v90 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE00);
                      v54 = v84;
                      v55 = swift_dynamicCast();
                      (*v83)(v43, v55 ^ 1u, 1, v54);
                      if ((*v79)(v43, 1, v54) == 1)
                      {

                        v9 = v80;
                        v48 = v85;
                        goto LABEL_47;
                      }

                      (*v71)(v81, v43, v54);

                      v56 = v75;
                      sub_24F921468();
                      v57 = sub_24F921458();
                      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
                      v58 = [objc_opt_self() whiteColor];
                      sub_24F921478();
                      v59 = v81;
                      sub_24F921498();
                      v60 = sub_24F91FD38();
                      if (!v52(v61, 1, v51))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE08);
                        v62 = swift_allocObject();
                        *(v62 + 16) = v65;
                        *(v62 + 56) = v54;
                        *(v62 + 64) = MEMORY[0x277CDB510];
                        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v62 + 32));
                        (*v66)(boxed_opaque_existential_1, v59, v54);
                        sub_24F91FB38();
                      }

                      v60(&v89, 0);

                      (*v70)(v59, v54);
                      v43 = v76;
                      v9 = v80;
                      v48 = v85;
LABEL_48:
                      if (v49 == ++v50)
                      {
                        goto LABEL_25;
                      }

                      continue;
                    }
                  }

                  else
                  {

                    v91 = 0;
                    v89 = 0u;
                    v90 = 0u;
                  }

                  break;
                }

LABEL_46:
                v48 = v85;
                sub_24E601704(&v89, &qword_27F21CDF8);
                (*v83)(v43, 1, 1, v84);
LABEL_47:
                sub_24E601704(v43, &qword_27F21CDD0);
                goto LABEL_48;
              }
            }

            else
            {
              v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v49)
              {
                goto LABEL_33;
              }
            }

LABEL_25:

            v42 = v69;
            v40 = v68;
            v41 = v67;
            v45 = v77;
          }

          v44 = v45;
        }

        while (v45 != v41);
      }
    }
  }

  return result;
}

uint64_t sub_24E7AC220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[53] = a3;
  v4[54] = a4;
  v4[51] = a1;
  v4[52] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v5 = sub_24F91F6B8();
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239480);
  v4[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v4[65] = v6;
  v4[66] = *(v6 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE28);
  v4[73] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239470);
  v4[74] = v7;
  v4[75] = *(v7 - 8);
  v4[76] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30);
  v4[77] = v8;
  v9 = *(v8 - 8);
  v4[78] = v9;
  v4[79] = *(v9 + 64);
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7AC5A4, 0, 0);
}

uint64_t sub_24E7AC5A4()
{
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  *(v0 + 688) = v2;
  if (v2)
  {
    v37 = *(v0 + 680);
    v3 = *(v0 + 624);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v35 = (*(v0 + 464) + 32);
    v36 = *(v0 + 616);
    v32 = **(v0 + 408);
    v33 = *(v36 + 48);
    v34 = (v4 + 200) & ~v4;
    v30 = *(v3 + 72);
    v31 = (*(v0 + 632) + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v40 = v5;
      v41 = v2;
      v8 = *(v0 + 680);
      v9 = *(v0 + 648);
      v10 = *(v0 + 640);
      v12 = *(v0 + 448);
      v11 = *(v0 + 456);
      v38 = *(v0 + 432);
      v39 = *(v0 + 440);
      v13 = *(v0 + 424);
      sub_24E60169C(v5, v8, &qword_27F21CE30);
      v14 = *(v36 + 48);
      *v9 = *v8;
      (*v35)(&v9[v14], v37 + v33, v11);
      v15 = sub_24F92B858();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v12, 1, 1, v15);
      v50 = v13[8];
      v51 = v13[9];
      v52 = *(v13 + 20);
      v46 = v13[4];
      v47 = v13[5];
      v48 = v13[6];
      v49 = v13[7];
      v42 = *v13;
      v43 = v13[1];
      v44 = v13[2];
      v45 = v13[3];
      sub_24E60169C(v9, v10, &qword_27F21CE30);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 160) = v50;
      *(v17 + 176) = v51;
      *(v17 + 192) = v52;
      *(v17 + 96) = v46;
      *(v17 + 112) = v47;
      *(v17 + 128) = v48;
      *(v17 + 144) = v49;
      *(v17 + 32) = v42;
      *(v17 + 48) = v43;
      *(v17 + 64) = v44;
      *(v17 + 80) = v45;
      sub_24E6009C8(v10, v17 + v34, &qword_27F21CE30);
      *(v17 + v31) = v38;
      sub_24E60169C(v12, v39, &unk_27F21B570);
      v18 = (*(v16 + 48))(v39, 1, v15);
      v19 = *(v0 + 440);
      v20 = *(v0 + 424);
      if (v18 == 1)
      {
        sub_24E7B4F28(v20, v0 + 16);

        sub_24E601704(v19, &unk_27F21B570);
      }

      else
      {
        sub_24E7B4F28(v20, v0 + 240);

        sub_24F92B848();
        (*(v16 + 8))(v19, v15);
      }

      if (*(v17 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_24F92B778();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = &unk_24F957990;
      *(v24 + 24) = v17;
      v25 = v23 | v21;
      if (v23 | v21)
      {
        v25 = v0 + 184;
        *(v0 + 184) = 0;
        *(v0 + 192) = 0;
        *(v0 + 200) = v21;
        *(v0 + 208) = v23;
      }

      v6 = *(v0 + 648);
      v7 = *(v0 + 448);
      *(v0 + 216) = 1;
      *(v0 + 224) = v25;
      *(v0 + 232) = v32;
      swift_task_create();

      sub_24E601704(v7, &unk_27F21B570);
      sub_24E601704(v6, &qword_27F21CE30);
      v5 = v40 + v30;
      v2 = v41 - 1;
    }

    while (v41 != 1);
  }

  sub_24F92B7A8();
  *(v0 + 696) = MEMORY[0x277D84F90];
  v26 = swift_task_alloc();
  *(v0 + 704) = v26;
  *v26 = v0;
  v26[1] = sub_24E7ACA9C;
  v27 = *(v0 + 592);
  v28 = *(v0 + 584);

  return MEMORY[0x2822002E8](v28, 0, 0, v27);
}

uint64_t sub_24E7ACA9C()
{

  return MEMORY[0x2822009F8](sub_24E7ACB98, 0, 0);
}

uint64_t sub_24E7ACB98()
{
  v1 = v0[73];
  if ((*(v0[66] + 48))(v1, 1, v0[65]) != 1)
  {
    sub_24E6009C8(v1, v0[72], &qword_27F213800);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v0[87];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_24E61798C(0, v52[2] + 1, 1, v0[87]);
    }

    v54 = v52[2];
    v53 = v52[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_24E61798C(v53 > 1, v54 + 1, 1, v52);
    }

    v55 = v0[72];
    v56 = v0[66];
    v52[2] = v54 + 1;
    sub_24E6009C8(v55, v52 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, &qword_27F213800);
    v0[87] = v52;
    v57 = swift_task_alloc();
    v0[88] = v57;
    *v57 = v0;
    v57[1] = sub_24E7ACA9C;
    v58 = v0[74];
    v59 = v0[73];

    return MEMORY[0x2822002E8](v59, 0, 0, v58);
  }

  v2 = v0[86];
  (*(v0[75] + 8))(v0[76], v0[74]);
  if (!v2)
  {
    v63 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v3 = 0;
  v67 = v0[84];
  v68 = v0[87];
  v4 = v0[78];
  v5 = v0[58];
  v66 = v0[52] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v79 = (v5 + 32);
  v74 = (v5 + 48);
  v75 = (v5 + 56);
  v63 = MEMORY[0x277D84F90];
  v72 = v0[68];
  v73 = v0[60];
  v77 = v0[77];
  v71 = (v5 + 8);
  v64 = *(v4 + 72);
  v65 = *(v77 + 48);
  while (2)
  {
    v7 = v0[84];
    v8 = v0[83];
    v9 = v0[57];
    sub_24E60169C(v66 + v3 * v64, v7, &qword_27F21CE30);
    v10 = *(v77 + 48);
    *v8 = *v7;
    v11 = *v79;
    (*v79)(&v8[v10], v67 + v65, v9);
    v12 = *(v68 + 16);
    if (!v12)
    {
      goto LABEL_5;
    }

    v78 = v11;
    v69 = v3;
    v13 = v0[66];
    v76 = *(v13 + 72);
    v62 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v14 = v0[87] + v62;
    while (1)
    {
      v80 = v14;
      v81 = v12;
      v16 = v0[69];
      v17 = v0[68];
      sub_24E60169C(v14, v16, &qword_27F213800);
      sub_24E60169C(v16, v17, &qword_27F213800);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
      v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
      v20 = v0[68];
      if (v19 == 1)
      {
        sub_24E601704(v0[68], &qword_27F213800);
        v21 = 1;
        v22 = v78;
      }

      else
      {
        v23 = v0[64];
        v24 = v0[57];

        v22 = v78;
        v78(v23, v20 + *(v18 + 64), v24);
        v21 = 0;
      }

      v25 = v0[83];
      v26 = v0[82];
      v27 = v0[63];
      v28 = v0[64];
      v29 = v0[61];
      v30 = v0[57];
      v31 = *v75;
      (*v75)(v28, v21, 1, v30);
      sub_24E60169C(v25, v26, &qword_27F21CE30);

      v22(v27, v26 + *(v77 + 48), v30);
      v31(v27, 0, 1, v30);
      v32 = *(v73 + 48);
      sub_24E60169C(v28, v29, &qword_27F21CE20);
      sub_24E60169C(v27, v29 + v32, &qword_27F21CE20);
      v33 = *v74;
      v34 = (*v74)(v29, 1, v30);
      v35 = v0[57];
      if (v34 == 1)
      {
        break;
      }

      sub_24E60169C(v0[61], v0[62], &qword_27F21CE20);
      v36 = v33(v29 + v32, 1, v35);
      v38 = v0[63];
      v37 = v0[64];
      v39 = v0[62];
      if (v36 == 1)
      {
        v40 = v0[57];
        sub_24E601704(v0[63], &qword_27F21CE20);
        sub_24E601704(v37, &qword_27F21CE20);
        (*v71)(v39, v40);
        goto LABEL_9;
      }

      v70 = v0[61];
      v41 = v0[59];
      v42 = v0[57];
      v78(v41, v29 + v32, v42);
      sub_24E7B4350(&unk_27F239490, MEMORY[0x277CC95F0]);
      v43 = sub_24F92AFF8();
      v44 = *v71;
      (*v71)(v41, v42);
      sub_24E601704(v38, &qword_27F21CE20);
      sub_24E601704(v37, &qword_27F21CE20);
      v44(v39, v42);
      sub_24E601704(v70, &qword_27F21CE20);
      if (v43)
      {
        goto LABEL_20;
      }

LABEL_10:
      sub_24E601704(v0[69], &qword_27F213800);
      v14 = v80 + v76;
      v12 = v81 - 1;
      if (v81 == 1)
      {
        v3 = v69;
        goto LABEL_5;
      }
    }

    v15 = v0[64];
    sub_24E601704(v0[63], &qword_27F21CE20);
    sub_24E601704(v15, &qword_27F21CE20);
    if (v33(v29 + v32, 1, v35) != 1)
    {
LABEL_9:
      sub_24E601704(v0[61], &unk_27F239480);
      goto LABEL_10;
    }

    sub_24E601704(v0[61], &qword_27F21CE20);
LABEL_20:
    v45 = v0[71];
    v46 = v0[70];
    v47 = v0[67];
    sub_24E6009C8(v0[69], v46, &qword_27F213800);
    sub_24E6009C8(v46, v45, &qword_27F213800);
    sub_24E60169C(v45, v47, &qword_27F213800);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_24E61798C(0, v63[2] + 1, 1, v63);
    }

    v3 = v69;
    v49 = v63[2];
    v48 = v63[3];
    if (v49 >= v48 >> 1)
    {
      v63 = sub_24E61798C(v48 > 1, v49 + 1, 1, v63);
    }

    v50 = v0[67];
    sub_24E601704(v0[71], &qword_27F213800);
    v63[2] = v49 + 1;
    sub_24E6009C8(v50, v63 + v62 + v49 * v76, &qword_27F213800);
LABEL_5:
    ++v3;
    v6 = v0[86];
    sub_24E601704(v0[83], &qword_27F21CE30);
    if (v3 != v6)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v60 = v0[1];

  return v60(v63);
}

uint64_t sub_24E7AD558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v5 = sub_24F91F6B8();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239480);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE28);
  v4[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239470);
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30);
  v4[35] = v8;
  v9 = *(v8 - 8);
  v4[36] = v9;
  v4[37] = *(v9 + 64);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7AD8DC, 0, 0);
}

uint64_t sub_24E7AD8DC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  *(v0 + 352) = v2;
  if (v2)
  {
    v35 = *(v0 + 344);
    v3 = *(v0 + 288);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v33 = (*(v0 + 128) + 32);
    v34 = *(v0 + 280);
    v30 = **(v0 + 72);
    v31 = *(v34 + 48);
    v32 = (v4 + 40) & ~v4;
    v29 = *(v3 + 72);
    v6 = (*(v0 + 296) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v39 = v2;
      v9 = *(v0 + 344);
      v10 = *(v0 + 304);
      v11 = *(v0 + 312);
      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v36 = *(v0 + 96);
      v37 = *(v0 + 104);
      v14 = *(v0 + 88);
      v38 = v5;
      sub_24E60169C(v5, v9, &qword_27F21CE30);
      v15 = *(v34 + 48);
      *v11 = *v9;
      (*v33)(&v11[v15], v35 + v31, v13);
      v16 = sub_24F92B858();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v12, 1, 1, v16);
      sub_24E60169C(v11, v10, &qword_27F21CE30);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v14;
      sub_24E6009C8(v10, v18 + v32, &qword_27F21CE30);
      *(v18 + v6) = v36;
      sub_24E60169C(v12, v37, &unk_27F21B570);
      LODWORD(v12) = (*(v17 + 48))(v37, 1, v16);

      v19 = *(v0 + 104);
      if (v12 == 1)
      {
        sub_24E601704(*(v0 + 104), &unk_27F21B570);
      }

      else
      {
        sub_24F92B848();
        (*(v17 + 8))(v19, v16);
      }

      if (v18[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = sub_24F92B778();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v23 = swift_allocObject();
      *(v23 + 16) = &unk_24F957900;
      *(v23 + 24) = v18;
      v24 = v22 | v20;
      if (v22 | v20)
      {
        v24 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      v7 = *(v0 + 312);
      v8 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v24;
      *(v0 + 64) = v30;
      swift_task_create();

      sub_24E601704(v8, &unk_27F21B570);
      sub_24E601704(v7, &qword_27F21CE30);
      v5 = v38 + v29;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  sub_24F92B7A8();
  *(v0 + 360) = MEMORY[0x277D84F90];
  v25 = swift_task_alloc();
  *(v0 + 368) = v25;
  *v25 = v0;
  v25[1] = sub_24E7ADD48;
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);

  return MEMORY[0x2822002E8](v26, 0, 0, v27);
}

uint64_t sub_24E7ADD48()
{

  return MEMORY[0x2822009F8](sub_24E7ADE44, 0, 0);
}

uint64_t sub_24E7ADE44()
{
  v1 = v0[31];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) != 1)
  {
    sub_24E6009C8(v1, v0[30], &qword_27F213800);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v0[45];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_24E61798C(0, v57[2] + 1, 1, v0[45]);
    }

    v59 = v57[2];
    v58 = v57[3];
    if (v59 >= v58 >> 1)
    {
      v57 = sub_24E61798C(v58 > 1, v59 + 1, 1, v57);
    }

    v60 = v0[30];
    v61 = v0[24];
    v57[2] = v59 + 1;
    sub_24E6009C8(v60, v57 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v59, &qword_27F213800);
    v0[45] = v57;
    v62 = swift_task_alloc();
    v0[46] = v62;
    *v62 = v0;
    v62[1] = sub_24E7ADD48;
    v63 = v0[31];
    v64 = v0[32];

    return MEMORY[0x2822002E8](v63, 0, 0, v64);
  }

  v2 = v0[44];
  (*(v0[33] + 8))(v0[34], v0[32]);
  if (!v2)
  {
    v68 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v3 = 0;
  v4 = v0[36];
  v73 = v0[10] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v5 = v0[16];
  v6 = (v5 + 32);
  v80 = (v5 + 56);
  v68 = MEMORY[0x277D84F90];
  v79 = (v5 + 48);
  v72 = v0[45];
  v71 = v0[42];
  v77 = v0[26];
  v78 = v0[18];
  v82 = v0[35];
  v76 = (v5 + 8);
  v69 = *(v4 + 72);
  v70 = *(v82 + 48);
  v87 = v0;
  v84 = (v5 + 32);
  while (2)
  {
    v8 = v0[41];
    v9 = v0[42];
    v10 = v0[15];
    sub_24E60169C(v73 + v3 * v69, v9, &qword_27F21CE30);
    v11 = *(v82 + 48);
    *v8 = *v9;
    v12 = *v6;
    (*v6)(&v8[v11], v71 + v70, v10);
    v13 = *(v72 + 16);
    if (!v13)
    {
      goto LABEL_5;
    }

    v83 = v12;
    v74 = v3;
    v14 = v0[24];
    v81 = *(v14 + 72);
    v67 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v15 = v0[45] + v67;
    v16 = v0;
    while (1)
    {
      v85 = v15;
      v86 = v13;
      v19 = v16[26];
      v18 = v16[27];
      sub_24E60169C(v15, v18, &qword_27F213800);
      sub_24E60169C(v18, v19, &qword_27F213800);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
      v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
      v22 = v16[26];
      if (v21 == 1)
      {
        sub_24E601704(v16[26], &qword_27F213800);
        v23 = 1;
        v24 = v83;
      }

      else
      {
        v25 = v16[22];
        v26 = v16[15];

        v27 = v22 + *(v20 + 64);
        v24 = v83;
        v83(v25, v27, v26);
        v23 = 0;
      }

      v29 = v16[40];
      v28 = v16[41];
      v30 = v16[21];
      v31 = v16[22];
      v32 = v16[19];
      v33 = v87[15];
      v34 = *v80;
      (*v80)(v31, v23, 1, v33);
      sub_24E60169C(v28, v29, &qword_27F21CE30);

      v24(v30, v29 + *(v82 + 48), v33);
      v34(v30, 0, 1, v33);
      v35 = *(v78 + 48);
      sub_24E60169C(v31, v32, &qword_27F21CE20);
      sub_24E60169C(v30, v32 + v35, &qword_27F21CE20);
      v36 = *v79;
      v37 = v33;
      v16 = v87;
      v38 = (*v79)(v32, 1, v37);
      v39 = v87[15];
      if (v38 == 1)
      {
        break;
      }

      sub_24E60169C(v87[19], v87[20], &qword_27F21CE20);
      v40 = v36(v32 + v35, 1, v39);
      v42 = v87[21];
      v41 = v87[22];
      v43 = v87[20];
      if (v40 == 1)
      {
        v44 = v87[15];
        sub_24E601704(v87[21], &qword_27F21CE20);
        sub_24E601704(v41, &qword_27F21CE20);
        (*v76)(v43, v44);
        goto LABEL_9;
      }

      v75 = v87[19];
      v45 = v87[17];
      v46 = v87[15];
      v83(v45, v32 + v35, v46);
      sub_24E7B4350(&unk_27F239490, MEMORY[0x277CC95F0]);
      v47 = sub_24F92AFF8();
      v48 = *v76;
      v49 = v45;
      v16 = v87;
      (*v76)(v49, v46);
      sub_24E601704(v42, &qword_27F21CE20);
      sub_24E601704(v41, &qword_27F21CE20);
      v48(v43, v46);
      sub_24E601704(v75, &qword_27F21CE20);
      if (v47)
      {
        goto LABEL_20;
      }

LABEL_10:
      sub_24E601704(v16[27], &qword_27F213800);
      v15 = v85 + v81;
      v13 = v86 - 1;
      if (v86 == 1)
      {
        v3 = v74;
        v6 = v84;
        goto LABEL_5;
      }
    }

    v17 = v87[22];
    sub_24E601704(v87[21], &qword_27F21CE20);
    sub_24E601704(v17, &qword_27F21CE20);
    if (v36(v32 + v35, 1, v39) != 1)
    {
LABEL_9:
      sub_24E601704(v87[19], &unk_27F239480);
      goto LABEL_10;
    }

    sub_24E601704(v87[19], &qword_27F21CE20);
LABEL_20:
    v51 = v16[28];
    v50 = v16[29];
    v52 = v16[25];
    sub_24E6009C8(v16[27], v51, &qword_27F213800);
    sub_24E6009C8(v51, v50, &qword_27F213800);
    sub_24E60169C(v50, v52, &qword_27F213800);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_24E61798C(0, v68[2] + 1, 1, v68);
    }

    v3 = v74;
    v6 = v84;
    v54 = v68[2];
    v53 = v68[3];
    if (v54 >= v53 >> 1)
    {
      v68 = sub_24E61798C(v53 > 1, v54 + 1, 1, v68);
    }

    v55 = v87[25];
    sub_24E601704(v87[29], &qword_27F213800);
    v68[2] = v54 + 1;
    sub_24E6009C8(v55, v68 + v67 + v54 * v81, &qword_27F213800);
LABEL_5:
    ++v3;
    v0 = v87;
    v7 = v87[44];
    sub_24E601704(v87[41], &qword_27F21CE30);
    if (v3 != v7)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v65 = v0[1];

  return v65(v68);
}

uint64_t sub_24E7AE7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = *(a6 - 8);
  v7[15] = v10;
  v7[16] = *(v10 + 64);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE28);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239470);
  v7[21] = v11;
  v7[22] = *(v11 - 8);
  v7[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30);
  v7[24] = v12;
  v13 = *(v12 - 8);
  v7[25] = v13;
  v7[26] = *(v13 + 64);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7AEAB0, 0, 0);
}

uint64_t sub_24E7AEAB0()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 256) = v2;
  if (v2)
  {
    v3 = *(v0 + 200);
    v4 = *(v3 + 80);
    v32 = ~v4;
    v31 = *(v0 + 248);
    v5 = v1 + ((v4 + 32) & ~v4);
    v29 = *(v0 + 128) + v4;
    v33 = *(v0 + 192);
    v27 = *(v0 + 208) + 7;
    v28 = *(v33 + 48);
    v30 = *(v0 + 120);
    v26 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 240);
      v6 = *(v0 + 248);
      v8 = *(v0 + 232);
      v10 = *(v0 + 136);
      v9 = *(v0 + 144);
      v34 = v9;
      v35 = v2;
      v11 = *(v0 + 56);
      v36 = *(v0 + 64);
      v37 = *(v0 + 72);
      sub_24E60169C(v5, v6, &qword_27F21CE30);
      v12 = *v6;
      v13 = *(v33 + 48);
      *v7 = v12;
      v14 = sub_24F91F6B8();
      (*(*(v14 - 8) + 32))(&v7[v13], v31 + v28, v14);
      v15 = sub_24F92B858();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      v16 = v10;
      (*(v30 + 16))(v10, v11, v37);
      v17 = v8;
      sub_24E60169C(v7, v8, &qword_27F21CE30);
      v18 = (*(v30 + 80) + 48) & ~*(v30 + 80);
      v19 = (v29 + v18) & v32;
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = v37;
      (*(v30 + 32))(v20 + v18, v16, v37);
      sub_24E6009C8(v17, v20 + v19, &qword_27F21CE30);
      *(v20 + ((v27 + v19) & 0xFFFFFFFFFFFFFFF8)) = v36;

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE48);
      sub_24E7AFF78(v34, &unk_24F957938, v20, v21);
      sub_24E601704(v34, &unk_27F21B570);
      sub_24E601704(v7, &qword_27F21CE30);
      v5 += v26;
      v2 = v35 - 1;
    }

    while (v35 != 1);
  }

  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_24F92B7A8();
  v22 = swift_task_alloc();
  *(v0 + 264) = v22;
  *v22 = v0;
  v22[1] = sub_24E7AEE44;
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);

  return MEMORY[0x2822002E8](v23, 0, 0, v24);
}

uint64_t sub_24E7AEE44()
{

  return MEMORY[0x2822009F8](sub_24E7AEF40, 0, 0);
}

uint64_t sub_24E7AEF40()
{
  v1 = v0[20];
  v30 = *(v0[12] + 48);
  if (v30(v1, 1, v0[11]) == 1)
  {
    v2 = v0[32];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v3 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F90];
    v4 = v0[2];
    if (v2)
    {
      v5 = 0;
      v6 = v0[25];
      v28 = v0[28];
      v29 = v0[24];
      v7 = v0[6] + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v26 = *(v6 + 72);
      v27 = *(v29 + 48);
      do
      {
        v14 = v0[27];
        v13 = v0[28];
        v15 = v0[19];
        v31 = v0[11];
        sub_24E60169C(v7, v13, &qword_27F21CE30);
        v16 = *v13;
        v17 = *(v29 + 48);
        *v14 = v16;
        v18 = sub_24F91F6B8();
        (*(*(v18 - 8) + 32))(&v14[v17], v28 + v27, v18);
        v0[3] = v4;
        *(swift_task_alloc() + 16) = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460);
        sub_24E602068(&qword_27F21CE40, &unk_27F239460);
        sub_24F92B478();

        v19 = v30(v15, 1, v31);
        v10 = v0[19];
        if (v19 == 1)
        {
          v11 = &unk_27F21CE28;
        }

        else
        {
          v9 = v0[13];
          v8 = v0[14];
          sub_24E6009C8(v10, v9, &qword_27F213800);
          sub_24E60169C(v9, v8, &qword_27F213800);
          sub_24F92B658();
          v10 = v9;
          v11 = &qword_27F213800;
        }

        sub_24E601704(v10, v11);
        ++v5;
        v12 = v0[32];
        sub_24E601704(v0[27], &qword_27F21CE30);
        v7 += v26;
      }

      while (v5 != v12);
      v3 = v32;
    }

    v23 = v0[4];

    *v23 = v3;

    v24 = v0[1];

    return v24();
  }

  else
  {
    sub_24E6009C8(v1, v0[14], &qword_27F213800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460);
    sub_24F92B658();
    v20 = swift_task_alloc();
    v0[33] = v20;
    *v20 = v0;
    v20[1] = sub_24E7AEE44;
    v21 = v0[20];
    v22 = v0[21];

    return MEMORY[0x2822002E8](v21, 0, 0, v22);
  }
}

uint64_t sub_24E7AF3C0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24E6541E4;

  return sub_24E7AE7EC(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_24E7AF498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x2822009F8](sub_24E7AF4C0, 0, 0);
}

uint64_t sub_24E7AF4C0()
{
  v1 = v0[4];
  v2 = *v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) + 48);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_24E7AF58C;
  v5 = v0[5];
  v6 = v0[2];

  return sub_24E7AF680(v6, v2, v1 + v3, v5);
}

uint64_t sub_24E7AF58C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24E7AF680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24E7AF6A4, 0, 0);
}

uint64_t sub_24E7AF6A4()
{
  sub_24F92B7F8();
  *(v0 + 48) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7AF738, v2, v1);
}

uint64_t sub_24E7AF738()
{
  v1 = *(v0 + 24);

  *(v0 + 56) = sub_24E7E9768(v1, 128.0, 128.0);

  return MEMORY[0x2822009F8](sub_24E7AF7BC, 0, 0);
}

uint64_t sub_24E7AF7BC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v0 + 64) = v2;
    v11 = *(v0 + 24);
    swift_weakInit();
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v3[1].i64[0] = v2;
    v3[1].i64[1] = v1;
    v3[2] = vextq_s8(v11, v11, 8uLL);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
    *v4 = v0;
    v4[1] = sub_24E7AF998;
    v6 = *(v0 + 16);

    return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000020, 0x800000024FA473A0, sub_24E7B5074, v3, v5);
  }

  else
  {
    v7 = *(v0 + 16);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24E7AF998()
{

  return MEMORY[0x2822009F8](sub_24E7B5084, 0, 0);
}

uint64_t sub_24E7AFACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24E7AFAF0, 0, 0);
}

uint64_t sub_24E7AFAF0()
{
  sub_24F92B7F8();
  *(v0 + 48) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7AFB84, v2, v1);
}

uint64_t sub_24E7AFB84()
{
  v1 = *(v0 + 24);

  *(v0 + 56) = sub_24E7E9768(v1, 128.0, 128.0);

  return MEMORY[0x2822009F8](sub_24E7AFC08, 0, 0);
}

uint64_t sub_24E7AFC08()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v0 + 64) = v2;
    v11 = *(v0 + 24);
    swift_weakInit();
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v3[1].i64[0] = v2;
    v3[1].i64[1] = v1;
    v3[2] = vextq_s8(v11, v11, 8uLL);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
    *v4 = v0;
    v4[1] = sub_24E7AFDE4;
    v6 = *(v0 + 16);

    return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000020, 0x800000024FA473A0, sub_24E7B4344, v3, v5);
  }

  else
  {
    v7 = *(v0 + 16);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24E7AFDE4()
{

  return MEMORY[0x2822009F8](sub_24E7AFF18, 0, 0);
}

uint64_t sub_24E7AFF18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7AFF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v22 - v11;
  sub_24E60169C(a1, v22 - v11, &unk_27F21B570);
  v13 = sub_24F92B858();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &unk_27F21B570);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_24F92B778();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24F92B848();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_24E7B0198(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239480);
  MEMORY[0x28223BE20](v45);
  v48 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v41 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v47 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  sub_24E60169C(a1, v12, &qword_27F213800);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    sub_24E601704(v12, &qword_27F213800);
    v21 = 1;
  }

  else
  {

    (*(v4 + 32))(v19, v12 + *(v20 + 64), v3);
    v21 = 0;
  }

  v22 = v4;
  v23 = *(v4 + 56);
  v23(v19, v21, 1, v3);
  sub_24E60169C(v46, v9, &qword_27F21CE30);

  v24 = &v9[*(v7 + 48)];
  v25 = v3;
  v26 = v47;
  v42 = *(v22 + 32);
  v42(v47, v24, v25);
  v23(v26, 0, 1, v25);
  v27 = *(v45 + 12);
  v28 = v48;
  sub_24E60169C(v19, v48, &qword_27F21CE20);
  v46 = v27;
  sub_24E60169C(v26, v28 + v27, &qword_27F21CE20);
  v29 = v22;
  v30 = *(v22 + 48);
  if (v30(v28, 1, v25) != 1)
  {
    v45 = v19;
    v33 = v44;
    sub_24E60169C(v28, v44, &qword_27F21CE20);
    v34 = v46;
    v35 = v25;
    if (v30(v28 + v46, 1, v25) != 1)
    {
      v36 = v33;
      v37 = v43;
      v42(v43, (v28 + v34), v35);
      sub_24E7B4350(&unk_27F239490, MEMORY[0x277CC95F0]);
      v38 = v28;
      v32 = sub_24F92AFF8();
      v39 = *(v29 + 8);
      v39(v37, v35);
      sub_24E601704(v47, &qword_27F21CE20);
      sub_24E601704(v45, &qword_27F21CE20);
      v39(v36, v35);
      sub_24E601704(v38, &qword_27F21CE20);
      return v32 & 1;
    }

    sub_24E601704(v47, &qword_27F21CE20);
    v31 = v48;
    sub_24E601704(v45, &qword_27F21CE20);
    (*(v29 + 8))(v33, v25);
    goto LABEL_9;
  }

  sub_24E601704(v26, &qword_27F21CE20);
  v31 = v48;
  sub_24E601704(v19, &qword_27F21CE20);
  if (v30(v31 + v46, 1, v25) != 1)
  {
LABEL_9:
    sub_24E601704(v31, &unk_27F239480);
    v32 = 0;
    return v32 & 1;
  }

  sub_24E601704(v31, &qword_27F21CE20);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_24E7B07E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE38);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v28 - v8;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = a3;
    v31 = Strong;
    v18 = *(v11 + 16);
    v29 = v7;
    v19 = a4;
    v18(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    sub_24E7B4350(&qword_27F2551B0, MEMORY[0x277CC95F0]);
    sub_24F92C7F8();
    v20 = v32;
    v21 = v35;
    (*(v32 + 16))(v9, v34, v35);
    v18(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v10);
    v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v23 = (v29 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (*(v11 + 80) + v23 + 8) & ~*(v11 + 80);
    v25 = swift_allocObject();
    (*(v20 + 32))(v25 + v22, v9, v21);
    *(v25 + v23) = v33;
    (*(v11 + 32))(v25 + v24, v13, v10);

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v30, 0, v36, sub_24E7B4500, v25);

    return sub_24E601704(v36, &qword_27F235830);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    return sub_24F92B798();
  }
}

uint64_t sub_24E7B0B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  if (a1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
    v14 = *(v13 + 64);
    v15 = *(a6 + 48);
    *v12 = a1;
    *(v12 + 1) = v15;
    v16 = sub_24F91F6B8();
    (*(*(v16 - 8) + 16))(&v12[v14], a7, v16);
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
    v17 = v15;
    v18 = a1;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE38);
  return sub_24F92B798();
}

uint64_t sub_24E7B0D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91FB88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91FB68();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE18);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_24F91FBA8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_24F928418();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800) - 8;
  MEMORY[0x28223BE20](v18);
  v21 = (&v55 - v20);
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v60 = v10;
  sub_24E60169C(a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * a2, &v55 - v20, &qword_27F213800);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_24E601704(v21, &qword_27F213800);
    return 0;
  }

  v59 = v7;
  v23 = v5;
  v24 = v4;
  v57 = v17;
  v25 = *v21;

  v26 = *(v22 + 64);
  v27 = v25;
  v28 = sub_24F91F6B8();
  (*(*(v28 - 8) + 8))(v21 + v26, v28);
  if (!v25)
  {
    return 0;
  }

  [v25 size];
  [v25 size];
  v30 = v29 / 0.95;
  if (COERCE__INT64(fabs(v29 / 0.95)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = v24;
  v32 = v23;
  [v27 size];
  v34 = v33 / 0.95;
  v35 = v59;
  if (v33 / 0.95 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v36 = v30;
  v37 = v30;
  if (v37 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v33 / 0.95)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v38 = v34;
  if (v38 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v58 = v27;
  if (v38 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = v34;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v41 = CGBitmapContextCreate(0, v36, v39, 8uLL, 0, DeviceRGB, 1u);

  if (!v41)
  {
    if (qword_27F2105D8 == -1)
    {
LABEL_21:
      v52 = sub_24F92AAE8();
      __swift_project_value_buffer(v52, qword_27F39C488);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v61[3] = MEMORY[0x277D83B88];
      v61[0] = a2;
      sub_24F9283D8();
      sub_24E601704(v61, &qword_27F2129B0);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();

      return 0;
    }

LABEL_36:
    swift_once();
    goto LABEL_21;
  }

  v42 = sub_24E7B17D4(a1, a2);
  CGContextSetFillColorWithColor(v41, v42);

  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v37;
  v62.size.height = v38;
  CGContextFillRect(v41, v62);
  v43 = v58;
  v44 = [v58 CGImage];
  if (v44)
  {
    v45 = v44;
    sub_24F92BD38();
    Image = CGBitmapContextCreateImage(v41);
    if (Image)
    {
      v47 = Image;
      v56 = v45;
      v55 = sub_24F91FBC8();
      v48 = *MEMORY[0x277CDACA0];
      v49 = sub_24F91FBB8();
      v50 = *(v49 - 8);
      (*(v50 + 104))(v13, v48, v49);
      (*(v50 + 56))(v13, 0, 1, v49);
      v51 = v47;
      sub_24F91FB58();
      (*(v32 + 104))(v35, *MEMORY[0x277CDAC98], v31);
      sub_24F91FB98();
      v53 = sub_24F91FB78();

      return v53;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24E7B17D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800) - 8;
  result = MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  if (*(a1 + 16) <= a2)
  {
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_24E60169C(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a2, &v15 - v7, &qword_27F213800);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
    if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
    {
      sub_24E601704(v8, &qword_27F213800);
    }

    else
    {

      v10 = *(v8 + 1);
      v11 = *(v9 + 64);
      v12 = sub_24F91F6B8();
      (*(*(v12 - 8) + 8))(&v8[v11], v12);
      if (v10)
      {
        v13 = [v10 CGColor];
LABEL_8:
        v14 = v13;

        return v14;
      }
    }

LABEL_7:
    v10 = [objc_opt_self() clearColor];
    v13 = [v10 CGColor];
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E7B19D8(uint64_t a1, uint64_t a2)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;
  v4 = *(v2 + 144);
  *(v3 + 144) = *(v2 + 128);
  *(v3 + 160) = v4;
  *(v3 + 176) = *(v2 + 160);
  v5 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  v7 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;
  v8 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v8;
  return MEMORY[0x2822009F8](sub_24E7B1A28, 0, 0);
}

uint64_t sub_24E7B1A28()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v4 = swift_task_alloc();
  v0[26] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_24E7B1B54;

  return MEMORY[0x282200600](v0 + 23, v3, v5, 0, 0, &unk_24F957978, v4, v3);
}

uint64_t sub_24E7B1B54()
{

  return MEMORY[0x2822009F8](sub_24E7B1C6C, 0, 0);
}

uint64_t sub_24E7B1C9C(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = *v2;
  return MEMORY[0x2822009F8](sub_24E7B1CC4, 0, 0);
}

uint64_t sub_24E7B1CC4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24E7B1DF0;

  return MEMORY[0x282200600](v0 + 3, v3, v5, 0, 0, &unk_24F9578C0, v4, v3);
}

uint64_t sub_24E7B1DF0()
{

  return MEMORY[0x2822009F8](sub_24E7B1F08, 0, 0);
}

uint64_t sub_24E7B1F20(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E7B507C;

  return v6(a1);
}

uint64_t sub_24E7B2018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 144);
  *(v5 + 144) = *(a4 + 128);
  *(v5 + 160) = v9;
  *(v5 + 176) = *(a4 + 160);
  *(v5 + 184) = a1;
  v10 = *(a4 + 80);
  *(v5 + 80) = *(a4 + 64);
  *(v5 + 96) = v10;
  v11 = *(a4 + 112);
  *(v5 + 112) = *(a4 + 96);
  *(v5 + 128) = v11;
  v12 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v12;
  v13 = *(a4 + 48);
  *(v5 + 48) = *(a4 + 32);
  *(v5 + 64) = v13;
  v14 = swift_task_alloc();
  *(v5 + 192) = v14;
  *v14 = v5;
  v14[1] = sub_24E7B20F8;

  return sub_24E7AC220(a2, a3, v5 + 16, a5);
}

uint64_t sub_24E7B20F8(uint64_t a1)
{
  v3 = *(*v1 + 184);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24E7B2208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  return MEMORY[0x2822009F8](sub_24E7B222C, 0, 0);
}

uint64_t sub_24E7B222C()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) + 48);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_24E7B5080;
  v5 = v0[4];
  v6 = v0[2];

  return sub_24E7AF680(v6, v2, v1 + v3, v5);
}

uint64_t sub_24E7B22F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_24E7B23AC;

  return sub_24E7AD558(a2, a3, v9, a5);
}

uint64_t sub_24E7B23AC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24E7B24BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  return MEMORY[0x2822009F8](sub_24E7B24E0, 0, 0);
}

uint64_t sub_24E7B24E0()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) + 48);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_24E7B25A8;
  v5 = v0[4];
  v6 = v0[2];

  return sub_24E7AFACC(v6, v2, v1 + v3, v5);
}

uint64_t sub_24E7B25A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_24E7B269C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  MEMORY[0x28223BE20](v3);
  v5 = (&v11 - v4);
  if (sub_24F92B648() <= a2)
  {
    return 0;
  }

  sub_24F92B758();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_24E601704(v5, &qword_27F213800);
    return 0;
  }

  v8 = *v5;

  v9 = *(v6 + 64);
  v10 = sub_24F91F6B8();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  return v8;
}

id sub_24E7B2804(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  if (sub_24F92B648() <= a2)
  {
    goto LABEL_6;
  }

  sub_24F92B758();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_24E601704(v5, &qword_27F213800);
LABEL_6:
    v7 = [objc_opt_self() clearColor];
    v10 = [v7 CGColor];
    goto LABEL_7;
  }

  v7 = *(v5 + 1);
  v8 = *(v6 + 64);
  v9 = sub_24F91F6B8();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  if (!v7)
  {
    goto LABEL_6;
  }

  v10 = [v7 CGColor];
LABEL_7:
  v11 = v10;

  return v11;
}

id _s12GameStoreKit33ThreeDimensionalIconViewRenderingPAAE032generateMappedTextureResourceForF0_2at07RealityC00kL0CSgSaySo7UIImageCSg5image_So7UIColorCSg15backgroundColor10Foundation4UUIDV10handlerKeytSgG_SitF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928418();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91FB88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91FB68();
  MEMORY[0x28223BE20](v10 - 8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE18);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_24F91FBA8();
  MEMORY[0x28223BE20](v15 - 8);
  result = sub_24E7B269C(a1, a2);
  if (result)
  {
    v17 = result;
    v40 = v8;
    [result size];
    [v17 size];
    v19 = v18 / 0.95;
    if (COERCE__INT64(fabs(v18 / 0.95)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        [v17 size];
        v21 = v20 / 0.95;
        if (v20 / 0.95 > -9.22337204e18)
        {
          if (v21 < 9.22337204e18)
          {
            v22 = v19;
            v23 = v19;
            if (v23 > -9.22337204e18)
            {
              if (v23 < 9.22337204e18)
              {
                if (COERCE_UNSIGNED_INT64(fabs(v20 / 0.95)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v24 = v21;
                  if (v24 > -9.22337204e18)
                  {
                    if (v24 < 9.22337204e18)
                    {
                      v39 = v7;
                      v41 = v6;
                      v25 = v21;
                      DeviceRGB = CGColorSpaceCreateDeviceRGB();
                      v27 = CGBitmapContextCreate(0, v22, v25, 8uLL, 0, DeviceRGB, 1u);

                      if (v27)
                      {
                        v28 = sub_24E7B2804(a1, a2);
                        CGContextSetFillColorWithColor(v27, v28);

                        v45.origin.x = 0.0;
                        v45.origin.y = 0.0;
                        v45.size.width = v23;
                        v45.size.height = v24;
                        CGContextFillRect(v27, v45);
                        v29 = [v17 CGImage];
                        if (v29)
                        {
                          v30 = v29;
                          sub_24F92BD38();
                          Image = CGBitmapContextCreateImage(v27);
                          if (Image)
                          {
                            v32 = Image;
                            sub_24F91FBC8();
                            v33 = *MEMORY[0x277CDACA0];
                            v34 = sub_24F91FBB8();
                            v35 = *(v34 - 8);
                            (*(v35 + 104))(v14, v33, v34);
                            (*(v35 + 56))(v14, 0, 1, v34);
                            v36 = v32;
                            sub_24F91FB58();
                            (*(v40 + 104))(v43, *MEMORY[0x277CDAC98], v39);
                            sub_24F91FB98();
                            v38 = sub_24F91FB78();

                            return v38;
                          }
                        }

                        else
                        {
                        }

                        return 0;
                      }

                      if (qword_27F2105D8 == -1)
                      {
LABEL_17:
                        v37 = sub_24F92AAE8();
                        __swift_project_value_buffer(v37, qword_27F39C488);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
                        sub_24F928468();
                        *(swift_allocObject() + 16) = xmmword_24F93DE60;
                        sub_24F928408();
                        sub_24F9283F8();
                        v44[3] = MEMORY[0x277D83B88];
                        v44[0] = a2;
                        sub_24F9283D8();
                        sub_24E601704(v44, &qword_27F2129B0);
                        sub_24F9283F8();
                        sub_24F928428();
                        sub_24F92A5A8();

                        return 0;
                      }

LABEL_32:
                      swift_once();
                      goto LABEL_17;
                    }

LABEL_31:
                    __break(1u);
                    goto LABEL_32;
                  }

LABEL_30:
                  __break(1u);
                  goto LABEL_31;
                }

LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t _s12GameStoreKit33ThreeDimensionalIconViewRenderingPAAE14findAndReplace5icons2inySaySo7UIImageCSg5image_So7UIColorCSg15backgroundColor10Foundation4UUIDV10handlerKeytSgG_07RealityC06EntityCSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v59 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDC0);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = v54 - v7;
  v8 = sub_24F921488();
  MEMORY[0x28223BE20](v8 - 8);
  v66 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDD0);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = v54 - v14;
  v76 = sub_24F9214A8();
  v15 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDD8);
  v17 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = v54 - v18;
  v19 = sub_24F91FCF8();
  v73 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v58 = a1;
  *&v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460);
  sub_24E602068(&qword_27F21CE40, &unk_27F239460);
  result = sub_24F92B428();
  if (a2)
  {
    v24 = result;
    result = sub_24F91FC78();
    if (result)
    {
      v25 = result;
      if (v24)
      {
        v71 = v17;
        v63 = v15;
        v74 = sub_24F91FD28();
        v54[1] = v25;
        sub_24F91FAE8();
        v84 = MEMORY[0x277D84F90];
        sub_24E7B4350(&qword_27F21CDE8, MEMORY[0x277CDB190]);
        sub_24F92B3F8();
        v75 = sub_24E602068(&qword_27F21CDF0, &qword_27F21CDD8);
        sub_24F92C4D8();
        if (v81)
        {
          v26 = (v73 + 8);
          do
          {
            sub_24F91FD08();
            v27 = sub_24F92B198();
            v29 = v28;

            *&v81 = v27;
            *(&v81 + 1) = v29;
            v79 = 0x72656E6F6C63;
            v80 = 0xE600000000000000;
            sub_24E600AEC();
            v30 = sub_24F92C5F8();

            if ((v30 & 1) != 0 && (sub_24F91FAE8(), sub_24E7B4350(&qword_27F21CE10, MEMORY[0x277CDB190]), sub_24F92BB88(), sub_24F92BC08(), (*v26)(v22, v19), v81 == v79))
            {
            }

            else
            {
              sub_24F92C948();
              sub_24F92C988();
              sub_24F92C998();
              sub_24F92C958();
            }

            sub_24F92C4D8();
          }

          while (v81);
        }

        (*(v71 + 8))(v77, v78);
        v31 = v84;
        if (v84 < 0 || (v84 & 0x4000000000000000) != 0)
        {
          goto LABEL_56;
        }

        v32 = *(v84 + 16);
LABEL_15:
        v33 = v58;
        v34 = v68;
        if (v32)
        {
          v35 = 0;
          v65 = v31 & 0xC000000000000001;
          v64 = v31 + 32;
          v75 = (v63 + 56);
          v69 = (v63 + 48);
          v62 = (v63 + 32);
          v56 = (v63 + 16);
          v61 = (v63 + 8);
          v55 = xmmword_24F93DE60;
          v63 = v32;
          v70 = v12;
          v57 = v31;
          do
          {
            if (v65)
            {
              v74 = MEMORY[0x253052270](v35, v31);
              v36 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v35 >= *(v31 + 16))
              {
                goto LABEL_54;
              }

              v74 = *(v64 + 8 * v35);

              v36 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                v32 = sub_24F92C738();
                goto LABEL_15;
              }
            }

            v71 = v36;
            v73 = _s12GameStoreKit33ThreeDimensionalIconViewRenderingPAAE032generateMappedTextureResourceForF0_2at07RealityC00kL0CSgSaySo7UIImageCSg5image_So7UIColorCSg15backgroundColor10Foundation4UUIDV10handlerKeytSgG_SitF_0(v33, v35);
            if (v73)
            {
              v37 = sub_24E9910A0();
              v38 = v37;
              if (v37 >> 62)
              {
                v39 = sub_24F92C738();
                if (v39)
                {
LABEL_24:
                  if (v39 < 1)
                  {
                    goto LABEL_55;
                  }

                  v40 = 0;
                  v77 = (v38 & 0xC000000000000001);
                  v78 = v38;
                  while (2)
                  {
                    if (v77)
                    {
                      MEMORY[0x253052270](v40, v38);
                    }

                    else
                    {
                    }

                    sub_24F91FAA8();
                    sub_24F91FD48();
                    v41 = sub_24F91FB48();
                    v42 = *(*(v41 - 8) + 48);
                    if (v42(v12, 1, v41))
                    {

                      sub_24E601704(v12, &qword_27F21CDC8);
                      v81 = 0u;
                      v82 = 0u;
                      v83 = 0;
                      goto LABEL_37;
                    }

                    v43 = sub_24F91FB28();
                    sub_24E601704(v12, &qword_27F21CDC8);
                    if (*(v43 + 16))
                    {
                      sub_24E615E00(v43 + 32, &v81);

                      if (*(&v82 + 1))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE00);
                        v44 = v76;
                        v45 = swift_dynamicCast();
                        (*v75)(v34, v45 ^ 1u, 1, v44);
                        if ((*v69)(v34, 1, v44) == 1)
                        {

                          v12 = v70;
                          v38 = v78;
                          goto LABEL_38;
                        }

                        (*v62)(v72, v34, v44);

                        v46 = v67;
                        sub_24F921468();
                        v47 = sub_24F921458();
                        (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
                        v48 = [objc_opt_self() whiteColor];
                        sub_24F921478();
                        v49 = v72;
                        sub_24F921498();
                        v50 = sub_24F91FD38();
                        if (!v42(v51, 1, v41))
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE08);
                          v52 = swift_allocObject();
                          *(v52 + 16) = v55;
                          *(v52 + 56) = v44;
                          *(v52 + 64) = MEMORY[0x277CDB510];
                          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v52 + 32));
                          (*v56)(boxed_opaque_existential_1, v49, v44);
                          sub_24F91FB38();
                        }

                        v50(&v81, 0);
                        v38 = v78;

                        (*v61)(v49, v44);
                        v34 = v68;
                        v12 = v70;
LABEL_39:
                        if (v39 == ++v40)
                        {

                          v33 = v58;
                          v31 = v57;
                          goto LABEL_17;
                        }

                        continue;
                      }
                    }

                    else
                    {

                      v83 = 0;
                      v81 = 0u;
                      v82 = 0u;
                    }

                    break;
                  }

LABEL_37:
                  v38 = v78;
                  sub_24E601704(&v81, &qword_27F21CDF8);
                  (*v75)(v34, 1, 1, v76);
LABEL_38:
                  sub_24E601704(v34, &qword_27F21CDD0);
                  goto LABEL_39;
                }
              }

              else
              {
                v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v39)
                {
                  goto LABEL_24;
                }
              }
            }

            else
            {
            }

LABEL_17:
            v35 = v71;
          }

          while (v71 != v63);
        }
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ThreeDimensionalIconViewRendering.fetchIconImages(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E760BD8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_24E7B3FDC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E614970;

  return sub_24E7B22F4(a1, a2, v6, v7, v8);
}

uint64_t sub_24E7B40AC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[14];
  v4 = sub_24F91F6B8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E7B41C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24E7B24BC(a1, v7, v8, v1 + 32, v1 + v6, v9);
}

uint64_t sub_24E7B430C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E7B4350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7B4398()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24E7B4500(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE38) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_24F91F6B8() - 8);
  v13 = *(v4 + v11);
  v14 = v4 + ((v11 + *(v12 + 80) + 8) & ~*(v12 + 80));

  return sub_24E7B0B8C(a1, a2, a3, a4, v4 + v10, v13, v14);
}

uint64_t sub_24E7B4618()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[14];
  v8 = sub_24F91F6B8();
  (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24E7B47A4(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(*(v6 - 8) + 64);
  v8 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24E7AF498(a1, v11, v12, v1 + v8, v1 + v10, v13, v6, v5);
}

uint64_t sub_24E7B4964()
{

  return swift_deallocObject();
}

uint64_t sub_24E7B499C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24E7B1F20(a1, v4);
}

uint64_t sub_24E7B4A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSearchResultsGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7B4AC8(uint64_t a1)
{
  v2 = type metadata accessor for GameSearchResultsGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E7B4B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSearchResultsGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E7B4B88(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E6541E4;

  return sub_24E7B2018(a1, a2, v6, v7, v8);
}

uint64_t sub_24E7B4C58()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) - 8);
  v2 = (*(*v1 + 80) + 200) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[14];
  v4 = sub_24F91F6B8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E7B4DE0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE30) - 8);
  v6 = (*(v5 + 80) + 200) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24E7B2208(a1, v7, v8, v1 + 32, v1 + v6, v9);
}

uint64_t sub_24E7B4F84()
{

  return swift_deallocObject();
}

uint64_t sub_24E7B4FBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24E7B1F20(a1, v4);
}

uint64_t sub_24E7B509C(uint64_t a1)
{
  v2 = sub_24E7B53EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7B50D8(uint64_t a1)
{
  v2 = sub_24E7B53EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E7B5134@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B53EC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CC28();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_24E7B52B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B53EC();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E7B53EC()
{
  result = qword_27F21CE58;
  if (!qword_27F21CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CE58);
  }

  return result;
}

unint64_t sub_24E7B5454()
{
  result = qword_27F21CE68;
  if (!qword_27F21CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CE68);
  }

  return result;
}

unint64_t sub_24E7B54AC()
{
  result = qword_27F21CE70;
  if (!qword_27F21CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CE70);
  }

  return result;
}

unint64_t sub_24E7B5504()
{
  result = qword_27F21CE78;
  if (!qword_27F21CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CE78);
  }

  return result;
}

unint64_t ChallengesStats.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  strcpy((inited + 32), "completedCount");
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 47) = -18;
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v7 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  strcpy((inited + 88), "numberOfWins");
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = v4;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24E7B56C0()
{
  if (*v0)
  {
    return 0x664F7265626D756ELL;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_24E7B5710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEC000000736E6957)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E7B57F8(uint64_t a1)
{
  v2 = sub_24E7B5D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7B5834(uint64_t a1)
{
  v2 = sub_24E7B5D34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesStats.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B5D34();
  sub_24F92D128();
  v11 = 0;
  sub_24F92CD38();
  if (!v2)
  {
    v10 = 1;
    sub_24F92CD38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesStats.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B5D34();
  sub_24F92D108();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_24F92CC58();
    v13 = 1;
    v10 = sub_24F92CC58();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E7B5BCC@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  strcpy((inited + 32), "completedCount");
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 47) = -18;
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v7 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  strcpy((inited + 88), "numberOfWins");
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = v4;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24E7B5D34()
{
  result = qword_27F21CE88;
  if (!qword_27F21CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CE88);
  }

  return result;
}

unint64_t sub_24E7B5DAC()
{
  result = qword_27F21CE98;
  if (!qword_27F21CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CE98);
  }

  return result;
}

unint64_t sub_24E7B5E04()
{
  result = qword_27F21CEA0;
  if (!qword_27F21CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CEA0);
  }

  return result;
}

unint64_t sub_24E7B5E5C()
{
  result = qword_27F21CEA8;
  if (!qword_27F21CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CEA8);
  }

  return result;
}

uint64_t sub_24E7B5EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E7B5F98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for GameSearchResultsPageIntent()
{
  result = qword_27F21CEB0;
  if (!qword_27F21CEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E7B60A0()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E7B612C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7B612C()
{
  if (!qword_27F21CEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    v0 = sub_24F92AEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21CEC0);
    }
  }
}

unint64_t sub_24E7B61A0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E7B641C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0x74736575716572;
  *(inited + 96) = 0xE700000000000000;
  v6 = type metadata accessor for GameSearchResultsPageIntent();
  v7 = (v2 + *(v6 + 20));
  v8 = v7[9];
  v32 = v7[8];
  v33 = v8;
  v34 = v7[10];
  v9 = v7[5];
  v28 = v7[4];
  v29 = v9;
  v10 = v7[7];
  v30 = v7[6];
  v31 = v10;
  v11 = v7[3];
  v26 = v7[2];
  v27 = v11;
  v12 = v7[1];
  v24 = *v7;
  v25 = v12;
  *(inited + 128) = &type metadata for SearchRequestDescriptor;
  *(inited + 136) = sub_24E7B6474();
  v13 = swift_allocObject();
  *(inited + 104) = v13;
  v14 = v25;
  v13[1] = v24;
  v13[2] = v14;
  v15 = v29;
  v13[5] = v28;
  v13[6] = v15;
  v16 = v27;
  v13[3] = v26;
  v13[4] = v16;
  v17 = v31;
  v13[7] = v30;
  v13[8] = v17;
  v18 = v33;
  v13[9] = v32;
  v13[10] = v18;
  v13[11] = v34;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x800000024FA473D0;
  v19 = *(v2 + *(v6 + 24));
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22E000);
  *(inited + 192) = sub_24E7B6578();
  *(inited + 160) = v19;
  sub_24E7B6680(&v24, v23);

  v20 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v21 = sub_24E80FFAC(v20);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v21;
  return result;
}

unint64_t sub_24E7B641C()
{
  result = qword_27F215388;
  if (!qword_27F215388)
  {
    type metadata accessor for Player(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215388);
  }

  return result;
}

unint64_t sub_24E7B6474()
{
  result = qword_27F21CEC8;
  if (!qword_27F21CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CEC8);
  }

  return result;
}

uint64_t sub_24E7B64C8()
{

  if (*(v0 + 128) != 1)
  {

    sub_24E7B6564(*(v0 + 152), *(v0 + 160));
  }

  return swift_deallocObject();
}

uint64_t sub_24E7B6564(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t sub_24E7B6578()
{
  result = qword_27F21CED0;
  if (!qword_27F21CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E000);
    sub_24E7B65FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CED0);
  }

  return result;
}

unint64_t sub_24E7B65FC()
{
  result = qword_27F21BC38;
  if (!qword_27F21BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24E7B641C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BC38);
  }

  return result;
}

uint64_t ContinuePlayingShelfIntent.shelfID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ContinuePlayingShelfIntent()
{
  result = qword_27F21CEF0;
  if (!qword_27F21CEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContinuePlayingShelfIntent.initialData.getter()
{
  type metadata accessor for ContinuePlayingShelfIntent();
}

unint64_t ContinuePlayingShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x4449666C656873;
  *(inited + 40) = 0xE700000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for ContinuePlayingShelfIntent();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E7B74F8(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7B7540(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x6C7573655278616DLL;
  *(inited + 152) = 0xEA00000000007374;
  v10 = *(v1 + v7[6]);
  v11 = MEMORY[0x277D83B88];
  *(inited + 184) = MEMORY[0x277D83B88];
  v12 = sub_24E65901C();
  *(inited + 160) = v10;
  *(inited + 192) = v12;
  *(inited + 200) = 0x65674178616DLL;
  *(inited + 208) = 0xE600000000000000;
  v13 = *(v1 + v7[7]);
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 216) = v13;
  *(inited + 256) = 1937207154;
  *(inited + 264) = 0xE400000000000000;
  v14 = *(v1 + v7[8]);
  *(inited + 296) = v11;
  *(inited + 304) = v12;
  *(inited + 272) = v14;
  *(inited + 312) = 0x446C616974696E69;
  *(inited + 320) = 0xEB00000000617461;
  v15 = *(v1 + v7[9]);
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  *(inited + 360) = sub_24E7B745C(&qword_27F219830, &qword_27F217960);
  *(inited + 328) = v15;

  v16 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

uint64_t sub_24E7B6B14()
{
  v1 = *v0;
  v2 = 0x4449666C656873;
  v3 = 0x65674178616DLL;
  v4 = 1937207154;
  if (v1 != 4)
  {
    v4 = 0x446C616974696E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726579616C70;
  if (v1 != 1)
  {
    v5 = 0x6C7573655278616DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E7B6BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7B7990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7B6BF4(uint64_t a1)
{
  v2 = sub_24E7B7408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7B6C30(uint64_t a1)
{
  v2 = sub_24E7B7408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContinuePlayingShelfIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B7408();
  sub_24F92D128();
  v17 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for ContinuePlayingShelfIntent();
    v16 = 1;
    type metadata accessor for Player(0);
    sub_24E7B74F8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v15 = 2;
    sub_24F92CD38();
    v14 = 3;
    sub_24F92CD38();
    v13 = 4;
    sub_24F92CD38();
    v12 = *(v3 + *(v9 + 36));
    v11[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
    sub_24E7B745C(&qword_27F219848, &qword_27F214950);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ContinuePlayingShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CEE8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ContinuePlayingShelfIntent();
  MEMORY[0x28223BE20](v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B7408();
  v21 = v8;
  v12 = v22;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v9;
  v13 = v19;
  v14 = v20;
  v29 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v15;
  v28 = 1;
  sub_24E7B74F8(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  v16 = v22;
  sub_24E61C0A8(v5, v11 + v22[5]);
  v27 = 2;
  *(v11 + v16[6]) = sub_24F92CC58();
  v26 = 3;
  *(v11 + v16[7]) = sub_24F92CC58();
  v25 = 4;
  *(v11 + v16[8]) = sub_24F92CC58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  v24 = 5;
  sub_24E7B745C(&qword_27F219858, &qword_27F214968);
  sub_24F92CC68();
  (*(v13 + 8))(v21, v14);
  *(v11 + v16[9]) = v23;
  sub_24E7B7540(v11, v18, type metadata accessor for ContinuePlayingShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E7B75A8(v11, type metadata accessor for ContinuePlayingShelfIntent);
}

unint64_t sub_24E7B7408()
{
  result = qword_27F21CEE0;
  if (!qword_27F21CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CEE0);
  }

  return result;
}

uint64_t sub_24E7B745C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216FD0);
    sub_24E7B74F8(a2, type metadata accessor for Game);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E7B74F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E7B7540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E7B75A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E7B761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E7B76DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E7B7780()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E7B7820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E7B7820()
{
  if (!qword_27F21CF00)
  {
    type metadata accessor for Game();
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21CF00);
    }
  }
}

unint64_t sub_24E7B788C()
{
  result = qword_27F21CF08;
  if (!qword_27F21CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF08);
  }

  return result;
}

unint64_t sub_24E7B78E4()
{
  result = qword_27F21CF10;
  if (!qword_27F21CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF10);
  }

  return result;
}

unint64_t sub_24E7B793C()
{
  result = qword_27F21CF18;
  if (!qword_27F21CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF18);
  }

  return result;
}

uint64_t sub_24E7B7990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449666C656873 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7573655278616DLL && a2 == 0xEA00000000007374 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446C616974696E69 && a2 == 0xEB00000000617461)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ChallengeSuggestionsShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengeSuggestionsShelfIntent.playerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t ChallengeSuggestionsShelfIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v14 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v10;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x4449726579616C70;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 104) = v6;
  *(inited + 112) = v5;
  *(inited + 144) = 0x4449656C646E7562;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 192) = sub_24E605DB4();
  *(inited + 160) = v14;
  *(inited + 168) = v7;

  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24E7B7DB0()
{
  v1 = 0x4449726579616C70;
  if (*v0 != 1)
  {
    v1 = 0x4449656C646E7562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E7B7E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E7B855C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7B7E30(uint64_t a1)
{
  v2 = sub_24E7B834C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7B7E6C(uint64_t a1)
{
  v2 = sub_24E7B834C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeSuggestionsShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CF20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B834C();
  sub_24F92D128();
  v14 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD08();
  v12 = 2;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengeSuggestionsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CF30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7B834C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CBC8();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E7B834C()
{
  result = qword_27F21CF28;
  if (!qword_27F21CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF28);
  }

  return result;
}

uint64_t sub_24E7B83A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E7B83E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E7B8458()
{
  result = qword_27F21CF38;
  if (!qword_27F21CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF38);
  }

  return result;
}

unint64_t sub_24E7B84B0()
{
  result = qword_27F21CF40;
  if (!qword_27F21CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF40);
  }

  return result;
}

unint64_t sub_24E7B8508()
{
  result = qword_27F21CF48;
  if (!qword_27F21CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21CF48);
  }

  return result;
}

uint64_t sub_24E7B855C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}