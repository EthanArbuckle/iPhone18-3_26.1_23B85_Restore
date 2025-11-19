uint64_t sub_1BC8733F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BC873300();
  *a2 = result;
  return result;
}

unint64_t sub_1BC873428@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BC87334C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BC873454()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 72) = v0;
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_15_9(v2);

  return sub_1BC873B24();
}

uint64_t sub_1BC8734DC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8735C0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_45_9(v1 + 4, v1[7]);
  sub_1BC810BA4();
  OUTLINED_FUNCTION_45_9(v1 + 41, v1[44]);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_15_9(v2);

  return sub_1BC85CBA0();
}

uint64_t sub_1BC873674()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC873758()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_45_9((*(v0 + 72) + 328), *(*(v0 + 72) + 352));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_15_9(v1);

  return sub_1BC85D254();
}

uint64_t sub_1BC8737EC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC873900(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_38();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v24 = v22[13];
  v25 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v25, qword_1EDC2B3A8);
  v26 = v24;
  v27 = sub_1BC8F7714();
  sub_1BC8F81E4();

  v28 = OUTLINED_FUNCTION_137();
  v29 = v22[13];
  if (v28)
  {
    OUTLINED_FUNCTION_21_1();
    a11 = OUTLINED_FUNCTION_33();
    *v23 = 136315138;
    swift_getErrorValue();
    v30 = v22[5];
    v31 = v22[6];
    v32 = sub_1BC8F83F4();
    OUTLINED_FUNCTION_0(v32);
    a10 = v29;
    v34 = v33;
    v36 = *(v35 + 64);
    v37 = OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_10(v31);
    (*(v38 + 16))();
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v31);
    sub_1BC8073F0(v37, v31);
    (*(v34 + 8))(v37, v32);

    v39 = OUTLINED_FUNCTION_45_2();
    v42 = sub_1BC7A9A4C(v39, v40, v41);

    *(v23 + 4) = v42;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(a11);
    v48 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v48);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_62_1();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

void sub_1BC873B38()
{
  v37 = v0;
  v1 = *(v0[18] + 176);
  v0[19] = v1;
  OUTLINED_FUNCTION_31_0();
  v2 = sub_1BC8F7BE4();
  v3 = [v1 integerForKey_];

  if (qword_1EDC1E1B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  v0[20] = OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B220);
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_28();
    v8 = OUTLINED_FUNCTION_28();
    v36 = v8;
    *v7 = 136446722;
    if (v3 == 1)
    {
      v9 = 28494;
    }

    else
    {
      v9 = 7562585;
    }

    if (v3 == 1)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_1BC7A9A4C(v9, v10, &v36);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2050;
    *(v7 + 14) = v3;
    *(v7 + 22) = 2050;
    *(v7 + 24) = 1;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "Is TCC migration necessary: %{public}s. Current version: %{public}ld. Expected version: %{public}ld", v7, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v12 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v12);
  }

  v13 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  v15 = os_log_type_enabled(v13, v14);
  if (v3 == 1)
  {
    if (v15)
    {
      OUTLINED_FUNCTION_45();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_89_0(&dword_1BC7A3000, v16, v17, "Skipping TCC migration because it isn't necessary.");
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_27();

    v18();
    return;
  }

  if (v15)
  {
    OUTLINED_FUNCTION_45();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_89_0(&dword_1BC7A3000, v19, v20, "Performing TCC migration");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v21 = v0[18];

  v22 = [*(v21 + 368) deviceType];
  v0[21] = v22;
  v23 = v22 != 2;
  if (!*MEMORY[0x1E69D5570])
  {
    __break(1u);
    goto LABEL_25;
  }

  v24 = *MEMORY[0x1E69D5570];
  v25 = sub_1BC8F7C24();
  v27 = v26;

  v0[22] = v25;
  v0[23] = v27;
  if (!*MEMORY[0x1E69D55F8])
  {
LABEL_25:
    __break(1u);
    return;
  }

  v28 = v0[18];
  v29 = *MEMORY[0x1E69D55F8];
  v30 = sub_1BC8F7C24();
  v32 = v31;

  v0[24] = v30;
  v0[25] = v32;
  __swift_project_boxed_opaque_existential_1((v28 + 376), *(v28 + 400));
  sub_1BC80A2F8(v23, v25, v27);
  v34 = v33;
  __swift_project_boxed_opaque_existential_1((v28 + 376), *(v28 + 400));
  v35 = swift_task_alloc();
  v0[26] = v35;
  *v35 = v0;
  OUTLINED_FUNCTION_15_9(v35);

  sub_1BC80A948(v34 != 2);
}

uint64_t sub_1BC873EF4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC873FEC()
{
  OUTLINED_FUNCTION_38();
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  __swift_project_boxed_opaque_existential_1((v0[18] + 376), *(v0[18] + 400));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FEAA0;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  sub_1BC80A5E4(v5 != 2, 1, inited);
  swift_setDeallocating();
  sub_1BC855480();
  if (v5 == 2)
  {
    v10 = v0[24];
    v9 = v0[25];
    v16 = *(v0 + 11);
    __swift_project_boxed_opaque_existential_1((v0[18] + 376), *(v0[18] + 400));
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1BC8FEAA0;
    *(v11 + 32) = v16;
    *(v11 + 48) = v10;
    *(v11 + 56) = v9;
    sub_1BC80A5E4(1, 1, v11);
    swift_setDeallocating();
    sub_1BC855480();
  }

  else
  {
    v7 = v0[25];
    v8 = v0[23];
  }

  v12 = v0[19];
  OUTLINED_FUNCTION_31_0();
  v13 = sub_1BC8F7BE4();
  [v12 setInteger:1 forKey:v13];

  OUTLINED_FUNCTION_27();

  return v14();
}

uint64_t sub_1BC87419C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  v5 = v1;
  v6 = sub_1BC8F7714();
  sub_1BC8F81E4();

  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v8);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC862F74(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v14 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v14);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1BC8742BC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8743B4()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  v5 = v1;
  v6 = sub_1BC8F7714();
  sub_1BC8F81E4();

  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v8);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC862F74(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v14 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v14);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1BC8744D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8744E8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3A8);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v5 = v0[2];
    OUTLINED_FUNCTION_21_1();
    v6 = OUTLINED_FUNCTION_62_3();
    *v3 = 138543362;
    *(v3 + 1) = v5;
    *v6 = v5;
    v7 = v5;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_1BC862F74(v6, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v13 = swift_task_alloc();
  v0[4] = v13;
  *v13 = v0;
  v13[1] = sub_1BC874658;
  v14 = v0[3];
  OUTLINED_FUNCTION_28_9(v0[2]);
  OUTLINED_FUNCTION_112();

  return sub_1BC874744(v15, v16);
}

uint64_t sub_1BC874658()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1BC874744(uint64_t a1, char a2)
{
  *(v3 + 257) = a2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC87475C()
{
  OUTLINED_FUNCTION_71();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_1BC8F7734();
  *(v0 + 200) = OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3A8);
  v3 = v1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    OUTLINED_FUNCTION_21_1();
    v7 = OUTLINED_FUNCTION_62_3();
    *v3 = 138543362;
    *(v3 + 1) = v6;
    *v7 = v6;
    v8 = v6;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "MessageStoreProviderDataSource: Saving message: %{public}@", v3, 0xCu);
    sub_1BC862F74(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v9 = *(v0 + 257);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);

  sub_1BC87901C(v11, v9);
  v12 = *(v0 + 184);
  v13 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*(v12 + v13))
  {
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v16 = __swift_project_boxed_opaque_existential_1((v14 + 32), *(v14 + 56));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
    v17 = swift_allocObject();
    *(v0 + 232) = v17;
    *(v17 + 16) = xmmword_1BC904010;
    *(v17 + 32) = v15;
    v18 = *v16;
    v19 = v15;
    v20 = swift_task_alloc();
    *(v0 + 240) = v20;
    *v20 = v0;
    OUTLINED_FUNCTION_23_8(v20);

    return sub_1BC811D84();
  }

  else
  {
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v24 = OUTLINED_FUNCTION_40_7();
    sub_1BC87CA98(v24, v25);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v27 = (v22 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v28 = *v27;
    LOBYTE(v27) = *(v27 + 4);
    v29 = *v26;
    v30 = swift_task_alloc();
    *(v0 + 208) = v30;
    *v30 = v0;
    OUTLINED_FUNCTION_15_9(v30);

    return sub_1BC81747C(v31, 1);
  }
}

uint64_t sub_1BC874A94()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v8 = *(v7 + 208);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC874BA4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[28];
  v2 = v0[23] + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  *v2 = v1;
  *(v2 + 4) = BYTE4(v1) & 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[23];
  v3 = v0[24];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v5 = __swift_project_boxed_opaque_existential_1((v3 + 32), *(v3 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v6 = swift_allocObject();
  v0[29] = v6;
  *(v6 + 16) = xmmword_1BC904010;
  *(v6 + 32) = v4;
  v7 = *v5;
  v8 = v4;
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_23_8(v9);

  return sub_1BC811D84();
}

uint64_t sub_1BC874CD4()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 216);
  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 200);
  if (v3)
  {
    v5 = *(v0 + 256) == 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    v17 = sub_1BC8F7714();
    v18 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v18))
    {
      OUTLINED_FUNCTION_45();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v19);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v26 = *(v0 + 184);
    v25 = *(v0 + 192);

    v27 = *(v25 + 272);
    sub_1BC896E70(v26);
    sub_1BC82EF30();
    OUTLINED_FUNCTION_76();
    v28 = swift_allocError();
    OUTLINED_FUNCTION_63_4(v28, v29);
  }

  else
  {

    v6 = v1;
    v7 = sub_1BC8F7714();
    sub_1BC8F8204();

    if (OUTLINED_FUNCTION_137())
    {
      OUTLINED_FUNCTION_21_1();
      v8 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_67_2(5.8381e-34);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v9);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      sub_1BC862F74(v8, &unk_1EBCF5DB0, &unk_1BC900410);
      v15 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v15);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v16 = *(v0 + 184);

    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_1BC874ED0()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *(v2 + 240);
  *v4 = *v1;
  *(v3 + 248) = v0;

  v6 = *(v2 + 232);

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC874FF8()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 200);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  OUTLINED_FUNCTION_96();
  v11 = *(v0 + 184);

  return v10(v11);
}

uint64_t sub_1BC8750A8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 248);
  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 200);
  if (v3)
  {
    v5 = *(v0 + 256) == 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    v17 = sub_1BC8F7714();
    v18 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v18))
    {
      OUTLINED_FUNCTION_45();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v19);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v26 = *(v0 + 184);
    v25 = *(v0 + 192);

    v27 = *(v25 + 272);
    sub_1BC896E70(v26);
    sub_1BC82EF30();
    OUTLINED_FUNCTION_76();
    v28 = swift_allocError();
    OUTLINED_FUNCTION_63_4(v28, v29);
  }

  else
  {

    v6 = v1;
    v7 = sub_1BC8F7714();
    sub_1BC8F8204();

    if (OUTLINED_FUNCTION_137())
    {
      OUTLINED_FUNCTION_21_1();
      v8 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_67_2(5.8381e-34);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v9);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      sub_1BC862F74(v8, &unk_1EBCF5DB0, &unk_1BC900410);
      v15 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v15);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v16 = *(v0 + 184);

    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_1BC87529C(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8752B4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  v2 = v0[7];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  v0[5] = v2;
  v4 = *v3;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_23_8(v5);

  return sub_1BC816EDC(v6);
}

uint64_t sub_1BC875364()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC875478(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC87548C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_30_10();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_8_4(v2);

  return sub_1BC815FC8();
}

uint64_t sub_1BC875524()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC875638()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v2 = *(v1 + 64);
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B3A8);
  v4 = v2;
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_91_1();
  if (OUTLINED_FUNCTION_37_8())
  {
    v6 = *(v1 + 64);
    OUTLINED_FUNCTION_21_1();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_90_0(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v8);
    OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v9, v0, "MessageStoreProviderDataSource: Got an error while updating message: %{public}@");
    sub_1BC862F74(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v10 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v10);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v11 = *(v1 + 64);

  swift_willThrow();
  OUTLINED_FUNCTION_27();
  v12 = *(v1 + 64);
  OUTLINED_FUNCTION_112();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1BC875768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC875780()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 40);
  if (sub_1BC8758D4(*(v0 + 32)))
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1BC8366C0;
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    OUTLINED_FUNCTION_28_9(*(v0 + 16));

    return sub_1BC875A6C();
  }

  else
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    v7 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v7, qword_1EDC2B2B0);
    v8 = sub_1BC8F7714();
    v9 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v9))
    {
      OUTLINED_FUNCTION_45();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v10);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_11();

    return v16();
  }
}

uint64_t sub_1BC8758D4(void *a1)
{
  v3 = v1[26];
  v4 = v1[27];
  __swift_project_boxed_opaque_existential_1(v1 + 23, v3);
  v5 = (*(v4 + 64))(a1, v3, v4);
  v6 = sub_1BC879B68(a1);
  v7 = sub_1BC879F84(a1);
  v8 = sub_1BC87A17C();
  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v9 = sub_1BC8F7734();
  __swift_project_value_buffer(v9, qword_1EDC2B3A8);
  v10 = sub_1BC8F7714();
  v11 = sub_1BC8F8204();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109888;
    *(v12 + 4) = v5 & 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v6;
    *(v12 + 14) = 1024;
    *(v12 + 16) = v7;
    *(v12 + 20) = 1024;
    *(v12 + 22) = v8 & 1;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "check Incoming video message conditions:\n                isCallerInContacts: %{BOOL}d,\n                isCallerInCallHistory: %{BOOL}d,\n                isCallerInSuggestions: %{BOOL}d,\n        isSilenceUnknownVideoMailEnabled: %{BOOL}d", v12, 0x1Au);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
  }

  if (v8)
  {
    v13 = v5 | v6 | v7;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_1BC875A6C()
{
  OUTLINED_FUNCTION_5();
  v33 = *MEMORY[0x1E69E9840];
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_1BC8F7914();
  v1[11] = v5;
  OUTLINED_FUNCTION_26(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_47_3();
  v9 = sub_1BC8F79B4();
  v1[14] = v9;
  OUTLINED_FUNCTION_26(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_47_3();
  v13 = sub_1BC8F7014();
  v1[17] = v13;
  OUTLINED_FUNCTION_26(v13);
  v1[18] = v14;
  v16 = *(v15 + 64);
  v1[19] = OUTLINED_FUNCTION_38_6();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v17 = sub_1BC8F7264();
  v1[25] = v17;
  OUTLINED_FUNCTION_26(v17);
  v1[26] = v18;
  v20 = *(v19 + 64);
  v1[27] = OUTLINED_FUNCTION_38_6();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v21 = sub_1BC8F7994();
  v1[31] = v21;
  OUTLINED_FUNCTION_26(v21);
  v1[32] = v22;
  v24 = *(v23 + 64);
  v1[33] = OUTLINED_FUNCTION_47_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v25);
  v27 = *(v26 + 64);
  v1[34] = OUTLINED_FUNCTION_38_6();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v28 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1BC875D18()
{
  OUTLINED_FUNCTION_5();
  v5 = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1((v0[10] + 128), *(v0[10] + 152));
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1BC875DE0;
  v2 = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_28_9(v0[7]);

  return sub_1BC8BEBF8(v3);
}

uint64_t sub_1BC875DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_87_2();
  v23 = v22;
  v63 = *MEMORY[0x1E69E9840];
  v24 = *v21;
  OUTLINED_FUNCTION_11_3();
  *v25 = v24;
  v27 = *(v26 + 296);
  v28 = *v21;
  OUTLINED_FUNCTION_3_1();
  *v29 = v28;
  *(v24 + 369) = v23;

  if (v20)
  {
    v56 = v20;
    v31 = *(v24 + 280);
    v30 = *(v24 + 288);
    v33 = *(v24 + 264);
    v32 = *(v24 + 272);
    v35 = *(v24 + 232);
    v34 = *(v24 + 240);
    v37 = *(v24 + 216);
    v36 = *(v24 + 224);
    v38 = *(v24 + 192);
    v57 = *(v24 + 184);
    v58 = *(v24 + 176);
    v59 = *(v24 + 168);
    v60 = *(v24 + 160);
    v61 = *(v24 + 152);
    v62 = *(v24 + 128);
    v39 = *(v24 + 104);

    OUTLINED_FUNCTION_27();
    v40 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_53();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, v56, v57, v58, v59, v60, v61, v62, v63, a18, a19, a20);
  }

  else
  {
    v50 = *(v24 + 80);
    v51 = swift_task_alloc();
    *(v24 + 304) = v51;
    *v51 = v28;
    v51[1] = sub_1BC876050;
    v52 = *(v24 + 288);
    v53 = *(v24 + 56);
    v54 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_53();

    return sub_1BC83F83C();
  }
}

uint64_t sub_1BC876050()
{
  OUTLINED_FUNCTION_5();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 312) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1BC876178()
{
  v157 = v0;
  v155 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 312);
  v2 = *(v0 + 80) + 72;
  sub_1BC8400D8(*(v0 + 64), *(v0 + 264));
  if (v1)
  {
    v3 = *(v0 + 288);
    goto LABEL_3;
  }

  v7 = *(v0 + 240);
  v8 = *(v0 + 192);
  v9 = *(v0 + 56);
  sub_1BC8F7254();
  v10 = sub_1BC8F6EE4();
  v12 = v11;
  v13 = MEMORY[0x1BFB2A220]();
  sub_1BC7C1A54(v10, v12, v8);

  objc_autoreleasePoolPop(v13);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v14 = *(v0 + 184);
  v15 = *(v0 + 192);
  v16 = *(v0 + 176);
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v19 = *(v0 + 56);
  v20 = sub_1BC8F7734();
  *(v0 + 320) = v20;
  __swift_project_value_buffer(v20, qword_1EDC2B2B0);
  v21 = *(v17 + 16);
  (v21)(v14, v19, v18);
  v144 = v21;
  (v21)(v16, v15, v18);
  v22 = sub_1BC8F7714();
  v23 = sub_1BC8F8204();
  v24 = os_log_type_enabled(v22, v23);
  v26 = *(v0 + 176);
  v25 = *(v0 + 184);
  v28 = *(v0 + 136);
  v27 = *(v0 + 144);
  if (v24)
  {
    v138 = v23;
    v29 = OUTLINED_FUNCTION_8_17();
    v153 = OUTLINED_FUNCTION_15_11();
    *v29 = 136446466;
    OUTLINED_FUNCTION_8_21();
    sub_1BC7AAB14(v30, v31);
    log = v22;
    v32 = sub_1BC8F8A54();
    v34 = v33;
    v35 = *(v27 + 8);
    v36 = OUTLINED_FUNCTION_12_5();
    v35(v36);
    sub_1BC7A9A4C(v32, v34, &v153);

    OUTLINED_FUNCTION_56_3();
    sub_1BC8F8A54();
    v37 = OUTLINED_FUNCTION_199();
    v35(v37);
    v38 = OUTLINED_FUNCTION_97();
    v41 = sub_1BC7A9A4C(v38, v39, v40);

    *(v29 + 14) = v41;
    _os_log_impl(&dword_1BC7A3000, log, v138, "Moving message from %{public}s to %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v42 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v42);
  }

  else
  {

    v35 = *(v27 + 8);
    v43 = OUTLINED_FUNCTION_199();
    v35(v43);
    v44 = OUTLINED_FUNCTION_12_5();
    v35(v44);
  }

  *(v0 + 328) = v35;
  v45 = *(v0 + 192);
  v46 = *(v0 + 56);
  v47 = [objc_opt_self() defaultManager];
  v48 = sub_1BC8F6F44();
  v49 = sub_1BC8F6F44();
  *(v0 + 40) = 0;
  LODWORD(v45) = [v47 moveItemAtURL:v48 toURL:v49 error:v0 + 40];

  v50 = *(v0 + 40);
  if (!v45)
  {
    v63 = *(v0 + 192);
    v65 = *(v0 + 152);
    v64 = *(v0 + 160);
    v66 = *(v0 + 136);
    v67 = *(v0 + 56);
    v68 = v50;
    sub_1BC8F6EA4();

    swift_willThrow();
    v69 = v144;
    (v144)(v64, v67, v66);
    (v144)(v65, v63, v66);
    v70 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_35_3();
    v145 = v70;
    v72 = os_log_type_enabled(v70, v71);
    v74 = *(v0 + 152);
    v73 = *(v0 + 160);
    v76 = *(v0 + 136);
    v75 = *(v0 + 144);
    v140 = v35;
    if (v72)
    {
      v77 = OUTLINED_FUNCTION_8_17();
      v153 = OUTLINED_FUNCTION_15_11();
      *v77 = 136446466;
      OUTLINED_FUNCTION_8_21();
      sub_1BC7AAB14(v78, v79);
      v80 = sub_1BC8F8A54();
      v82 = v81;
      OUTLINED_FUNCTION_77_3();
      v83 = OUTLINED_FUNCTION_12_5();
      v35(v83);
      sub_1BC7A9A4C(v80, v82, &v153);

      OUTLINED_FUNCTION_56_3();
      sub_1BC8F8A54();
      v84 = OUTLINED_FUNCTION_199();
      v35(v84);
      v85 = OUTLINED_FUNCTION_97();
      v88 = sub_1BC7A9A4C(v85, v86, v87);

      *(v77 + 14) = v88;
      _os_log_impl(&dword_1BC7A3000, v145, v69, "Failed to move message from %{public}s to %{public}s", v77, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v89 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v89);
    }

    else
    {

      OUTLINED_FUNCTION_77_3();
      v101 = OUTLINED_FUNCTION_199();
      v35(v101);
      v102 = OUTLINED_FUNCTION_12_5();
      v35(v102);
    }

    v3 = *(v0 + 288);
    v103 = *(v0 + 256);
    v147 = *(v0 + 264);
    v105 = *(v0 + 240);
    v104 = *(v0 + 248);
    v107 = *(v0 + 200);
    v106 = *(v0 + 208);
    v108 = *(v0 + 192);
    v109 = *(v0 + 136);
    swift_willThrow();
    (v140)(v108, v109);
    v110 = *(v106 + 8);
    v111 = OUTLINED_FUNCTION_45_2();
    v112(v111);
    (*(v103 + 8))(v147, v104);
LABEL_3:
    sub_1BC862F74(v3, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_21_12();
    v134 = *(v0 + 176);
    loga = *(v0 + 168);
    v137 = *(v0 + 160);
    v141 = *(v0 + 152);
    v143 = *(v0 + 128);
    v148 = *(v0 + 104);

    OUTLINED_FUNCTION_27();
    v4 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_59_5();

    __asm { BRAA            X1, X16 }
  }

  v139 = *(v0 + 280);
  v142 = *(v0 + 288);
  v51 = *(v0 + 264);
  v53 = *(v0 + 216);
  v52 = *(v0 + 224);
  v54 = *(v0 + 192);
  v55 = *(v0 + 168);
  v56 = *(v0 + 128);
  v57 = *(v0 + 136);
  v58 = *(v0 + 120);
  v150 = *(v0 + 112);
  (*(*(v0 + 208) + 16))(*(v0 + 232), *(v0 + 240), *(v0 + 200));
  v59 = v50;
  sub_1BC8F7954();
  sub_1BC8F7954();
  v60 = OUTLINED_FUNCTION_199();
  (v144)(v60);
  sub_1BC87C84C(v142, v139, &qword_1EBCF5A20, &qword_1BC901BF0);
  sub_1BC8F7984();
  v61 = (*(v58 + 88))(v56, v150);
  if (v61 == *MEMORY[0x1E698F400])
  {
    v62 = 1;
  }

  else
  {
    if (v61 != *MEMORY[0x1E698F408] && v61 != *MEMORY[0x1E698F410])
    {
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    }

    v62 = 2;
  }

  LODWORD(v150) = v62;
  v91 = *(v0 + 264);
  v93 = *(v0 + 96);
  v92 = *(v0 + 104);
  v94 = *(v0 + 88);
  v95 = *(v0 + 72);
  __swift_storeEnumTagSinglePayload(*(v0 + 272), 1, 1, *(v0 + 136));
  v96 = [v95 value];
  v97 = sub_1BC8F7C24();
  v146 = v98;
  v149 = v97;

  sub_1BC8F7974();
  sub_1BC8F7934();
  v99 = (*(v93 + 88))(v92, v94);
  if (v99 == *MEMORY[0x1E698F3B0])
  {
    goto LABEL_23;
  }

  if (v99 == *MEMORY[0x1E698F3C8])
  {
    v100 = 1;
  }

  else if (v99 == *MEMORY[0x1E698F3C0])
  {
    v100 = 2;
  }

  else
  {
    if (v99 != *MEMORY[0x1E698F3B8])
    {
      if (v99 != *MEMORY[0x1E698F3D0])
      {
        (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      }

LABEL_23:
      v100 = 0;
      goto LABEL_32;
    }

    v100 = 3;
  }

LABEL_32:
  v113 = *(v0 + 369);
  v114 = *(v0 + 272);
  v115 = *(v0 + 280);
  v117 = *(v0 + 224);
  v116 = *(v0 + 232);
  v118 = *(v0 + 216);
  v119 = *(v0 + 168);
  v120 = *(v0 + 80);
  HIBYTE(v151) = v100;
  v121 = type metadata accessor for Message();
  v153 = 0;
  v154 = 0u;
  v122 = objc_allocWithZone(v121);
  BYTE4(v151) = 1;
  LOBYTE(v132) = 0;
  LOBYTE(v131) = (v113 & 1) == 0;
  v123 = OUTLINED_FUNCTION_45_2();
  Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(v123, v124, v118, v119, v115, v150, v114, v125, v146, 0xD00000000000003BLL, 0x80000001BC90BE00, v131, 0, 0, v132, 0, 0, &v151 + 7, 0x100000000, &v153, v133, log, v139, v142, v146, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156);
  *(v0 + 336) = v126;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_45_9((v120 + 32), *(v120 + 56));
  v127 = swift_task_alloc();
  *(v0 + 344) = v127;
  *v127 = v0;
  v127[1] = sub_1BC876BD8;
  v128 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_59_5();

  sub_1BC81771C(v129);
}

uint64_t sub_1BC876BD8()
{
  OUTLINED_FUNCTION_5();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v4 = v3;
  v6 = *(v5 + 344);
  *v4 = *v1;
  *(v3 + 352) = v7;
  *(v3 + 360) = v0;

  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC876D08()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 352);
  if (v1)
  {
    v2 = *(*(v0 + 80) + 272);
    sub_1BC895014(*(v0 + 352));
  }

  v3 = *(v0 + 328);
  v4 = *(v0 + 288);
  v17 = *(v0 + 280);
  v18 = *(v0 + 272);
  v16 = *(v0 + 264);
  v5 = *(v0 + 256);
  v15 = *(v0 + 248);
  v6 = *(v0 + 240);
  v19 = *(v0 + 232);
  v20 = *(v0 + 224);
  v21 = *(v0 + 216);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 152);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);

  v3(v9, v10);
  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v16, v15);
  sub_1BC862F74(v4, &qword_1EBCF5A20, &qword_1BC901BF0);

  OUTLINED_FUNCTION_27();
  v13 = *MEMORY[0x1E69E9840];

  return v12();
}

uint64_t sub_1BC876F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_87_2();
  v91 = *MEMORY[0x1E69E9840];
  v22 = *(v21 + 360);
  *(v21 + 48) = v22;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (swift_dynamicCast())
  {
    v24 = *(v21 + 368) == 4;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {

    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    OUTLINED_FUNCTION_37_0(*(v21 + 320), qword_1EDC2B3A8);
    v46 = sub_1BC8F7714();
    v47 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v47))
    {
      OUTLINED_FUNCTION_45();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v48);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v54 = *(v21 + 336);
    v55 = *(v21 + 256);
    v86 = *(v21 + 264);
    v89 = *(v21 + 288);
    v80 = *(v21 + 328);
    v83 = *(v21 + 248);
    v77 = *(v21 + 240);
    v57 = *(v21 + 200);
    v56 = *(v21 + 208);
    v58 = *(v21 + 192);
    v59 = *(v21 + 136);
    v60 = *(v21 + 144);
    v61 = *(v21 + 80);

    v62 = *(v61 + 272);
    sub_1BC896E70(v54);
    sub_1BC82EF30();
    OUTLINED_FUNCTION_76();
    v63 = swift_allocError();
    *v64 = 4;
    v75 = v63;
    swift_willThrow();

    v80(v58, v59);
    (*(v56 + 8))(v77, v57);
    (*(v55 + 8))(v86, v83);
    sub_1BC862F74(v89, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {

    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v25 = *(v21 + 360);
    OUTLINED_FUNCTION_37_0(*(v21 + 320), qword_1EDC2B3A8);
    v26 = v25;
    v27 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_91_1();
    if (OUTLINED_FUNCTION_37_8())
    {
      v28 = *(v21 + 360);
      OUTLINED_FUNCTION_21_1();
      v29 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_90_0(5.8381e-34);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v30);
      OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v31, v20, "MessageStoreProviderDataSource: Got an error while adding message: %{public}@");
      sub_1BC862F74(v29, &unk_1EBCF5DB0, &unk_1BC900410);
      v32 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v32);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v33 = *(v21 + 360);
    v34 = v27;
    v35 = *(v21 + 336);
    v36 = *(v21 + 256);
    v85 = *(v21 + 264);
    v88 = *(v21 + 288);
    v37 = *(v21 + 240);
    v79 = *(v21 + 328);
    v82 = *(v21 + 248);
    v39 = *(v21 + 200);
    v38 = *(v21 + 208);
    v40 = *(v21 + 192);
    v42 = *(v21 + 136);
    v41 = *(v21 + 144);

    swift_willThrow();
    v79(v40, v42);
    v43 = *(v38 + 8);
    v44 = OUTLINED_FUNCTION_45_2();
    v45(v44);
    (*(v36 + 8))(v85, v82);
    sub_1BC862F74(v88, &qword_1EBCF5A20, &qword_1BC901BF0);
    v75 = *(v21 + 360);
  }

  OUTLINED_FUNCTION_21_12();
  v76 = *(v21 + 176);
  v78 = *(v21 + 168);
  v81 = *(v21 + 160);
  v84 = *(v21 + 152);
  v87 = *(v21 + 128);
  v90 = *(v21 + 104);

  OUTLINED_FUNCTION_27();
  v65 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_53();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, v75, v76, v78, v81, v84, v87, v90, a16, v91, a18, a19, a20);
}

uint64_t sub_1BC877344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_87_2();
  v40 = *MEMORY[0x1E69E9840];
  v21 = v20[39];
  OUTLINED_FUNCTION_21_12();
  v33 = v22;
  v34 = v20[22];
  v35 = v20[21];
  v36 = v20[20];
  v37 = v20[19];
  v38 = v20[16];
  v39 = v20[13];

  OUTLINED_FUNCTION_27();
  v23 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_53();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, v37, v38, v39, v40, a18, a19, a20);
}

uint64_t sub_1BC877474()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest();
  v1[4] = Request;
  OUTLINED_FUNCTION_25(Request);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_47_3();
  v6 = sub_1BC8F7264();
  v1[6] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_38_6();
  v1[9] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC877548()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_38();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1BC8F7734();
  v6 = __swift_project_value_buffer(v5, qword_1EDC2B3A8);
  v0[10] = v6;
  v7 = *(v3 + 16);
  v0[11] = v7;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);
  v8 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  if (v10)
  {
    OUTLINED_FUNCTION_21_1();
    v40 = OUTLINED_FUNCTION_33();
    *v6 = 136446210;
    OUTLINED_FUNCTION_2_20();
    sub_1BC7AAB14(v14, v15);
    OUTLINED_FUNCTION_70_3();
    v16 = *(v12 + 8);
    v17 = OUTLINED_FUNCTION_8_1();
    v19 = v18(v17);
    OUTLINED_FUNCTION_65_2(v19, v20);
    OUTLINED_FUNCTION_28_2();

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1BC7A3000, v8, v4, "Saving message with uuid %{public}s to photo library", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v21 = *(v12 + 8);
    v22 = OUTLINED_FUNCTION_8_1();
    v23(v22);
  }

  v24 = v0[6];
  v25 = v0[7];
  v27 = v0[4];
  v26 = v0[5];
  v28 = v0[2];
  v29 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
  v30 = *(v25 + 72);
  v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BC8FC230;
  v7(v32 + v31, v28, v24);
  *(v29 + 16) = v32;
  sub_1BC8F7254();
  *(v26 + v27[5]) = v29 | 0x1000000000000000;
  *(v26 + v27[6]) = 512;
  *(v26 + v27[7]) = 2;
  v33 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v34 = (v26 + v27[8]);
  *v34 = v33;
  v34[1] = v35;
  *(v26 + v27[9]) = 1;
  *(v26 + v27[10]) = 0;
  v36 = swift_task_alloc();
  v0[13] = v36;
  *v36 = v0;
  v36[1] = sub_1BC877848;
  v37 = v0[3];
  OUTLINED_FUNCTION_28_9(v0[5]);
  OUTLINED_FUNCTION_62_1();

  return sub_1BC7BED60();
}

uint64_t sub_1BC877848()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v1;
  *(v2 + 112) = v6;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC877948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_38();
  a20 = v22;
  if (sub_1BC7C0454(v22[14]))
  {
    v28 = v22[14];
    v29 = v28 & 0xC000000000000001;
    sub_1BC8E2358(0, (v28 & 0xC000000000000001) == 0, v28);
    if (v29)
    {
      v30 = MEMORY[0x1BFB29A00](0, v22[14]);
      v83 = v22[14];
    }

    else
    {
      v30 = *(v22[14] + 32);
    }

    v22[16] = v30;
    v31 = v22[10];

    v32 = v30;
    v33 = sub_1BC8F7714();
    sub_1BC8F8204();

    if (OUTLINED_FUNCTION_137())
    {
      OUTLINED_FUNCTION_21_1();
      v34 = OUTLINED_FUNCTION_6_2();
      *v23 = 138543362;
      *(v23 + 4) = v32;
      *v34 = v32;
      v35 = v32;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      sub_1BC862F74(v34, &unk_1EBCF5DB0, &unk_1BC900410);
      v41 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v41);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v42 = swift_task_alloc();
    v22[17] = v42;
    *v42 = v22;
    v42[1] = sub_1BC877C68;
    v43 = v22[3];
    OUTLINED_FUNCTION_62_1();

    return sub_1BC877EE0();
  }

  else
  {
    v46 = v22[14];
    v48 = v22[11];
    v47 = v22[12];
    v49 = v22[10];
    v50 = v22[8];
    v51 = v22[6];
    v52 = v22[2];

    v48(v50, v52, v51);
    v53 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_35_3();
    v55 = os_log_type_enabled(v53, v54);
    v57 = v22[7];
    v56 = v22[8];
    v58 = v22[6];
    if (v55)
    {
      OUTLINED_FUNCTION_21_1();
      v59 = OUTLINED_FUNCTION_33();
      a10 = v59;
      *v52 = 136446210;
      OUTLINED_FUNCTION_2_20();
      sub_1BC7AAB14(v60, v61);
      OUTLINED_FUNCTION_70_3();
      OUTLINED_FUNCTION_76_4();
      v62 = *(v57 + 8);
      v63 = OUTLINED_FUNCTION_8_1();
      v64(v63);
      sub_1BC7A9A4C(v24, v25, &a10);
      OUTLINED_FUNCTION_28_2();

      *(v52 + 4) = v56;
      OUTLINED_FUNCTION_12_0();
      _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      v70 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v70);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v71 = *(v57 + 8);
      v72 = OUTLINED_FUNCTION_8_1();
      v73(v72);
    }

    sub_1BC87C754();
    OUTLINED_FUNCTION_76();
    swift_allocError();
    *v74 = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_60_4();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_62_1();

    return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1BC877C68()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC877D60()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);

  sub_1BC7ADC24(v3);

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t sub_1BC877DE8()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_60_4();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC877E60()
{
  OUTLINED_FUNCTION_32();

  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_60_4();

  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC877EE0()
{
  OUTLINED_FUNCTION_5();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_1BC8F7014();
  v1[28] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[29] = v4;
  v6 = *(v5 + 64);
  v1[30] = OUTLINED_FUNCTION_47_3();
  v7 = sub_1BC8F7264();
  v1[31] = v7;
  OUTLINED_FUNCTION_26(v7);
  v1[32] = v8;
  v10 = *(v9 + 64);
  v1[33] = OUTLINED_FUNCTION_38_6();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC877FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_38();
  v13 = v12[36];
  v14 = v12[31];
  v15 = v12[32];
  v16 = v12[26];
  v17 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v18 = *(v15 + 16);
  v12[37] = v18;
  v12[38] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v13, v16 + v17, v14);
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v19 = v12[35];
  v20 = v12[36];
  v21 = v12[31];
  v22 = sub_1BC8F7734();
  v23 = __swift_project_value_buffer(v22, qword_1EDC2B3A8);
  v12[39] = v23;
  v24 = OUTLINED_FUNCTION_29();
  (v18)(v24);
  v25 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_35_3();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v12[35];
  v30 = v12[31];
  v29 = v12[32];
  if (v27)
  {
    OUTLINED_FUNCTION_21_1();
    a10 = OUTLINED_FUNCTION_33();
    a11 = a10;
    *v23 = 136446210;
    OUTLINED_FUNCTION_2_20();
    sub_1BC7AAB14(v31, v32);
    OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_76_4();
    v33 = *(v29 + 8);
    v34 = OUTLINED_FUNCTION_8_1();
    v35 = v33(v34);
    OUTLINED_FUNCTION_65_2(v35, v36);
    OUTLINED_FUNCTION_28_2();

    *(v23 + 4) = v28;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v33 = *(v29 + 8);
    v42 = OUTLINED_FUNCTION_8_1();
    v33(v42);
  }

  v12[40] = v33;
  v44 = v12[29];
  v43 = v12[30];
  v45 = v12[28];
  v46 = v12[26];
  v47 = *(v12[27] + 168);
  v48 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (*(v44 + 16))(v43, v46 + v48, v45);
  v49 = sub_1BC8F6F44();
  v12[41] = v49;
  (*(v44 + 8))(v43, v45);
  v12[2] = v12;
  v12[7] = v12 + 24;
  v12[3] = sub_1BC87831C;
  v50 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5F50, &qword_1BC904E80);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC878804;
  v12[13] = &block_descriptor_4;
  v12[14] = v50;
  [v47 saveVideoWithURL:v49 completion:v12 + 10];
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DEC8](v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
}

uint64_t sub_1BC87831C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC878418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_38();
  a20 = v22;
  v25 = v22[41];
  v27 = v22[38];
  v26 = v22[39];
  v28 = v22[36];
  v29 = v22[37];
  v30 = v22[34];
  v31 = v22[31];
  v32 = v22[25];

  v29(v30, v28, v31);
  v33 = sub_1BC8F7714();
  v34 = sub_1BC8F8204();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v22[40];
  v37 = v22[36];
  v38 = v22[34];
  v40 = v22[31];
  v39 = v22[32];
  if (v35)
  {
    a10 = v22[40];
    v41 = OUTLINED_FUNCTION_21_1();
    a9 = v37;
    v42 = OUTLINED_FUNCTION_28();
    a11 = v42;
    *v41 = 136446210;
    OUTLINED_FUNCTION_2_20();
    sub_1BC7AAB14(v43, v44);
    v45 = sub_1BC8F8A54();
    v47 = v46;
    v48 = OUTLINED_FUNCTION_97();
    a10(v48);
    v49 = sub_1BC7A9A4C(v45, v47, &a11);

    *(v41 + 4) = v49;
    _os_log_impl(&dword_1BC7A3000, v33, v34, "Saved message to user's photo library %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();

    (a10)(a9, v40);
  }

  else
  {

    v50 = OUTLINED_FUNCTION_97();
    v36(v50);
    (v36)(v37, v40);
  }

  v52 = v22[35];
  v51 = v22[36];
  v54 = v22[33];
  v53 = v22[34];
  v55 = v22[30];

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_62_1();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BC878624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_38();
  a20 = v22;
  v26 = v22[41];
  v25 = v22[42];
  v28 = v22[38];
  v27 = v22[39];
  v29 = v22[36];
  v30 = v22[37];
  v31 = v22[33];
  v32 = v22[31];
  swift_willThrow();

  v30(v31, v29, v32);
  v33 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_35_3();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v22[40];
  v38 = v22[32];
  v37 = v22[33];
  v39 = v22[31];
  if (v35)
  {
    OUTLINED_FUNCTION_21_1();
    a9 = v36;
    v40 = OUTLINED_FUNCTION_33();
    a10 = v40;
    *v36 = 136446210;
    OUTLINED_FUNCTION_2_20();
    sub_1BC7AAB14(v41, v42);
    OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_76_4();
    v43 = OUTLINED_FUNCTION_8_1();
    (v36)(v43);
    sub_1BC7A9A4C(v28, v30, &a10);
    OUTLINED_FUNCTION_28_2();

    *(v36 + 4) = v37;
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v49 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v49);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v50 = OUTLINED_FUNCTION_8_1();
    (v36)(v50);
  }

  v51 = v22[42];
  v52 = v22[40];
  v53 = v22[35];
  v54 = v22[36];
  v56 = v22[33];
  v55 = v22[34];
  v58 = v22[30];
  v57 = v22[31];
  swift_willThrow();
  v59 = OUTLINED_FUNCTION_8_1();
  v52(v59);

  OUTLINED_FUNCTION_27();
  v60 = v22[42];
  OUTLINED_FUNCTION_62_1();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BC878804(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1BC899994(v4, v5);
  }

  else
  {
    v8 = sub_1BC8F7C24();

    return sub_1BC891024(v4, v8, v7);
  }
}

uint64_t sub_1BC8788B0()
{
  OUTLINED_FUNCTION_32();
  v1 = *(*(v0 + 48) + 176);
  v2 = sub_1BC8F7BE4();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1BC8F8474();
    swift_unknownObjectRelease();
    sub_1BC862F74(v0 + 16, &unk_1EBCF5E50, &qword_1BC8FE850);
    v4 = sub_1BC8F7BE4();
    v5 = [v1 BOOLForKey_];
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1BC862F74(v0 + 16, &unk_1EBCF5E50, &qword_1BC8FE850);
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v6 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v6, qword_1EDC2B3A8);
    v4 = sub_1BC8F7714();
    v7 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v7))
    {
      OUTLINED_FUNCTION_45();
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v8);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v5 = 0;
  }

  OUTLINED_FUNCTION_96();

  return v14(v5);
}

void sub_1BC878A64()
{
  v1 = v0;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC87C84C(v0 + 424, v9, &qword_1EBCF58F8, &qword_1BC9034D0);
  if (v10)
  {
    sub_1BC87CA98(v9, v8);
    sub_1BC862F74(v9, &qword_1EBCF58F8, &qword_1BC9034D0);
    v2 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v3 = *(*v2 + 48);
    v4 = *(*v2 + 56);
    __swift_project_boxed_opaque_existential_1((*v2 + 24), v3);
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1BC862F74(v9, &qword_1EBCF58F8, &qword_1BC9034D0);
    v5 = 0;
  }

  v6 = *(v1 + 176);
  OUTLINED_FUNCTION_31_0();
  v7 = sub_1BC8F7BE4();
  [v6 setBool:v5 & 1 forKey:v7];
}

uint64_t sub_1BC878BA8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_30_10();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_15_9(v2);

  return sub_1BC8171EC();
}

uint64_t sub_1BC878C40()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 168) = v2;
  *(v1 + 128) = v3;
  *(v1 + 136) = v0;
  v4 = sub_1BC8F7264();
  *(v1 + 144) = v4;
  OUTLINED_FUNCTION_26(v4);
  *(v1 + 152) = v5;
  v7 = *(v6 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_47_3();
  v8 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC878CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_38();
  a20 = v22;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v26 = *(v22 + 152);
  v25 = *(v22 + 160);
  v28 = *(v22 + 136);
  v27 = *(v22 + 144);
  v29 = *(v22 + 128);
  v30 = sub_1BC8F7734();
  __swift_project_value_buffer(v30, qword_1EDC2B3A8);
  (*(v26 + 16))(v25, v29, v27);

  v31 = sub_1BC8F7714();
  LOBYTE(v29) = sub_1BC8F8204();

  v32 = os_log_type_enabled(v31, v29);
  v34 = *(v22 + 152);
  v33 = *(v22 + 160);
  v35 = *(v22 + 144);
  if (v32)
  {
    v36 = *(v22 + 136);
    HIDWORD(a10) = *(v22 + 168);
    v37 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v37 = 136446978;
    *(v22 + 120) = *v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5F48, &unk_1BC904E70);
    v38 = sub_1BC8F7C94();
    v40 = sub_1BC7A9A4C(v38, v39, &a11);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    OUTLINED_FUNCTION_31_0();
    *(v37 + 14) = sub_1BC7A9A4C(0xD00000000000002DLL, v41, &a11);
    *(v37 + 22) = 2082;
    OUTLINED_FUNCTION_2_20();
    sub_1BC7AAB14(v42, v43);
    OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_76_4();
    v44 = *(v34 + 8);
    v45 = OUTLINED_FUNCTION_8_1();
    v47 = v46(v45);
    OUTLINED_FUNCTION_65_2(v47, v48);
    OUTLINED_FUNCTION_28_2();

    *(v37 + 24) = v33;
    *(v37 + 32) = 1026;
    *(v37 + 34) = HIDWORD(a10);
    OUTLINED_FUNCTION_12_0();
    _os_log_impl(v49, v50, v51, v52, v53, 0x26u);
    swift_arrayDestroy();
    v54 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v54);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v55 = *(v34 + 8);
    v56 = OUTLINED_FUNCTION_8_1();
    v57(v56);
  }

  v58 = *(v22 + 136);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC87C84C(v58 + 424, v22 + 16, &qword_1EBCF58F8, &qword_1BC9034D0);
  if (*(v22 + 40))
  {
    v59 = *(v22 + 168);
    v60 = *(v22 + 128);
    sub_1BC87CA98(v22 + 16, v22 + 56);
    sub_1BC862F74(v22 + 16, &qword_1EBCF58F8, &qword_1BC9034D0);
    OUTLINED_FUNCTION_45_9((v22 + 56), *(v22 + 80));
    sub_1BC8C75A8(v60, v59);
    __swift_destroy_boxed_opaque_existential_1((v22 + 56));
  }

  else
  {
    sub_1BC862F74(v22 + 16, &qword_1EBCF58F8, &qword_1BC9034D0);
  }

  v61 = *(v22 + 160);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_62_1();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

char *sub_1BC87901C(char *a1, int a2)
{
  LODWORD(v142) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  v138 = v8;
  OUTLINED_FUNCTION_17_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v124 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v124 - v13;
  v143 = sub_1BC8F7014();
  v14 = OUTLINED_FUNCTION_0(v143);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  v135 = v19;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_4();
  v134 = v21;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_4();
  v136 = v23;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_4();
  v137 = v25;
  OUTLINED_FUNCTION_17_0();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v124 - v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_20_4();
  v141 = v30;
  OUTLINED_FUNCTION_17_0();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v124 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v140 = &v124 - v35;
  v36 = sub_1BC8F7264();
  v37 = OUTLINED_FUNCTION_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v37);
  v44 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + 280) & 1) == 0)
  {
    v130 = v12;
    v47 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    v48 = v42;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v132 = v39;
    v133 = v48;
    v49 = v48;
    v50 = v44;
    (*(v39 + 16))(v44, &a1[v47], v49);
    v45 = a1;
    v51 = v143;
    if (v142)
    {
      v52 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      (*(v16 + 16))(v34, &v45[v52], v51);
      sub_1BC7ED3FC();
      LOBYTE(v52) = v53;
      (*(v16 + 8))(v34, v51);
      if ((v52 & 1) == 0)
      {
        v54 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        v55 = *&v45[v54];
        v56 = sub_1BC8316B8();

        if (!v56)
        {
          if (qword_1EDC20728 != -1)
          {
            OUTLINED_FUNCTION_1();
            swift_once();
          }

          v89 = sub_1BC8F7734();
          __swift_project_value_buffer(v89, qword_1EDC2B3A8);
          v90 = sub_1BC8F7714();
          v91 = sub_1BC8F81E4();
          if (os_log_type_enabled(v90, v91))
          {
            OUTLINED_FUNCTION_45();
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_1BC7A3000, v90, v91, "MessageStoreProviderDataSource: Failed to consume sandbox URL for asset!", v92, 2u);
            v93 = OUTLINED_FUNCTION_5_5();
            MEMORY[0x1BFB2AA50](v93);
          }

          sub_1BC87C754();
          OUTLINED_FUNCTION_76();
          swift_allocError();
          *v94 = 0;
          swift_willThrow();
          goto LABEL_29;
        }
      }

      v57 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v58 = *&v45[v57];
      if (v58)
      {
        v59 = v58;
        v60 = sub_1BC8316B8();
      }

      v61 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v62 = *&v45[v61];
      if (v62)
      {
        v63 = v62;
        v64 = sub_1BC8316B8();
      }
    }

    v142 = v34;
    v65 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v66 = (v16 + 16);
    v131 = *(v16 + 16);
    v131(v29, &v45[v65], v51);
    v67 = v45;
    v68 = v141;
    v69 = v144;
    sub_1BC7ED740(v29, v141);
    v144 = v69;
    if (v69)
    {
      (*(v16 + 8))(v29, v51);
      v45 = v67;
LABEL_29:
      v111 = OUTLINED_FUNCTION_51_4();
      v112(v111);
      return v45;
    }

    v70 = *(v16 + 8);
    v129 = v16 + 8;
    v127 = v50;
    v128 = v70;
    v70(v29, v51);
    v71 = *(v16 + 32);
    v72 = v140;
    v141 = v16 + 32;
    v126 = v71;
    v71(v140, v68, v51);
    v73 = v142;
    v74 = v131;
    v131(v142, v72, v51);
    swift_beginAccess();
    (*(v16 + 40))(&v67[v65], v73, v51);
    swift_endAccess();
    sub_1BC8F6F44();
    OUTLINED_FUNCTION_37_7();
    v125 = type metadata accessor for SandboxExtendedURL();
    v75 = objc_allocWithZone(v125);
    v76 = OUTLINED_FUNCTION_114_1();
    v77 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v78 = *&v67[v77];
    *&v67[v77] = v76;

    v79 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v80 = v139;
    sub_1BC87C84C(&v67[v79], v139, &qword_1EBCF5A20, &qword_1BC901BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v51);
    v82 = v74;
    v45 = v67;
    if (EnumTagSinglePayload == 1)
    {
      v83 = v82;
      sub_1BC862F74(v80, &qword_1EBCF5A20, &qword_1BC901BF0);
      v84 = v144;
    }

    else
    {
      v142 = (v16 + 16);
      v83 = v82;
      v85 = v137;
      v126(v137, v80, v51);
      v86 = v136;
      v87 = v144;
      sub_1BC7ED740(v85, v136);
      v84 = v87;
      if (v87)
      {
        v88 = v85;
LABEL_28:
        v110 = v128;
        v128(v88, v51);
        v110(v140, v51);
        goto LABEL_29;
      }

      v95 = v130;
      v83(v130, v86, v51);
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v51);
      swift_beginAccess();
      sub_1BC87C6E4(v95, &v45[v79]);
      swift_endAccess();
      v96 = sub_1BC8F6F44();
      v97 = objc_allocWithZone(v125);
      OUTLINED_FUNCTION_114_1();
      v98 = OUTLINED_FUNCTION_28_2();
      v99 = v128;
      v128(v98, v51);
      v99(v137, v51);
      v66 = v142;
      v100 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
      OUTLINED_FUNCTION_35_7();
      swift_beginAccess();
      v101 = *&v45[v100];
      *&v45[v100] = v96;
    }

    v102 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v103 = v138;
    sub_1BC87C84C(&v45[v102], v138, &qword_1EBCF5A20, &qword_1BC901BF0);
    v51 = v143;
    if (__swift_getEnumTagSinglePayload(v103, 1, v143) == 1)
    {
      v128(v140, v51);
      v104 = OUTLINED_FUNCTION_51_4();
      v105(v104);
      sub_1BC862F74(v103, &qword_1EBCF5A20, &qword_1BC901BF0);
      goto LABEL_3;
    }

    v142 = v66;
    v106 = v134;
    v126(v134, v103, v51);
    v107 = v135;
    v108 = OUTLINED_FUNCTION_199();
    sub_1BC7ED740(v108, v109);
    if (!v84)
    {
      v114 = v107;
      v115 = v130;
      v83(v130, v114, v51);
      __swift_storeEnumTagSinglePayload(v115, 0, 1, v51);
      swift_beginAccess();
      sub_1BC87C6E4(v115, &v45[v102]);
      swift_endAccess();
      v116 = v135;
      sub_1BC8F6F44();
      v117 = objc_allocWithZone(v125);
      v118 = OUTLINED_FUNCTION_114_1();
      v119 = v128;
      v128(v116, v51);
      v119(v106, v51);
      v119(v140, v51);
      v120 = OUTLINED_FUNCTION_51_4();
      v121(v120);
      v122 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
      OUTLINED_FUNCTION_35_7();
      swift_beginAccess();
      v123 = *&v45[v122];
      *&v45[v122] = v118;

      goto LABEL_3;
    }

    v88 = v106;
    goto LABEL_28;
  }

  v45 = a1;
LABEL_3:
  v46 = v45;
  return v45;
}

uint64_t sub_1BC879A30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_1BC849AE8(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));

  v2 = *(v0 + 272);

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));

  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  sub_1BC7CF604(v0 + 416);
  sub_1BC862F74(v0 + 424, &qword_1EBCF58F8, &qword_1BC9034D0);
  v3 = *(v0 + 464);

  __swift_destroy_boxed_opaque_existential_1((v0 + 472));

  return v0;
}

uint64_t sub_1BC879AF0()
{
  sub_1BC879A30();

  return MEMORY[0x1EEE6BDC0](v0, 520, 7);
}

uint64_t sub_1BC879B24()
{
  v1 = *v0;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL sub_1BC879B68(void *a1)
{
  v2 = sub_1BC87C8D8(a1);
  if (v3)
  {
    if (v2 == 29557 && v3 == 0xE200000000000000)
    {
    }

    else
    {
      v5 = sub_1BC8F8AA4();

      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if ([a1 type] == 2)
    {
      v6 = &unk_1F3B36B70;
      v7 = 7;
      while (--v7)
      {
        v8 = v6 + 2;
        v10 = *(v6 - 1);
        v9 = *v6;

        v11 = [a1 value];
        sub_1BC8F7C24();

        LOBYTE(v10) = sub_1BC8731C0();

        v6 = v8;
        if (v10)
        {
          sub_1BC7D9730(0, &qword_1EBCF5F58, 0x1E6993578);
          v12 = sub_1BC87A1E4(a1);
          v13 = [a1 value];
          v14 = sub_1BC8F7C24();
          v16 = v15;

          v17 = sub_1BC7F2EE0(2uLL, v14, v16);
          v18 = MEMORY[0x1BFB290C0](v17);
          v20 = v19;

          v21 = [a1 value];
          v22 = sub_1BC8F7C24();
          v24 = v23;

          v25 = objc_allocWithZone(MEMORY[0x1E6993578]);
          v26 = sub_1BC87C7A8(v12, v18, v20, v22, v24);
          v42 = v26;
          if (v26)
          {
            goto LABEL_33;
          }

          goto LABEL_14;
        }
      }
    }
  }

LABEL_15:
  v31 = [a1 type];
  if (v31 == 1)
  {
    v32 = [a1 value];
    if (!v32)
    {
      sub_1BC8F7C24();
      v32 = sub_1BC8F7BE4();
    }

    v33 = [objc_opt_self() normalizedGenericHandleForValue_];
LABEL_28:
    v26 = v33;

    goto LABEL_32;
  }

  if (v31 != 2)
  {
    if (v31 != 3)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v26 = 0;
      goto LABEL_34;
    }

    v32 = [a1 value];
    if (!v32)
    {
      sub_1BC8F7C24();
      v32 = sub_1BC8F7BE4();
    }

    v33 = [objc_opt_self() normalizedEmailAddressHandleForValue_];
    goto LABEL_28;
  }

  v34 = [a1 value];
  if (!v34)
  {
    sub_1BC8F7C24();
    v34 = sub_1BC8F7BE4();
  }

  sub_1BC87C8D8(a1);
  if (v35)
  {
    v36 = sub_1BC8F7BE4();
  }

  else
  {
    v36 = 0;
  }

  v26 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v34 isoCountryCode:v36];

LABEL_32:
  v42 = v26;
  if (v26)
  {
LABEL_33:
    v37 = [v26 value];
    v30 = sub_1BC8F7C24();
    v26 = v38;

    v28 = sub_1BC87C938(&v42);
    v29 = v39;
    v27 = v42;
  }

  else
  {
LABEL_14:
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

LABEL_34:
  v40 = sub_1BC87A210(v30, v26, v28, v29);

  return v40;
}

BOOL sub_1BC879F84(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    sub_1BC8F7C24();
    v1 = sub_1BC8F7BE4();
  }

  v2 = [objc_opt_self() suggestedNamesForDestinationID:v1 onlySignificant:1 supportsInfoLookup:0 error:0];

  v3 = sub_1BC8F7E54();
  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B3A8);

  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1BFB29280](v3, MEMORY[0x1E69E6158]);
    v11 = sub_1BC7A9A4C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "isCallerInSuggestions %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB2AA50](v8, -1, -1);
    MEMORY[0x1BFB2AA50](v7, -1, -1);
  }

  v12 = *(v3 + 16);

  return v12 != 0;
}

id sub_1BC87A17C()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = [v0 BOOLForKey:*MEMORY[0x1E69D8E80] withDefault:1];

  return v1;
}

char *sub_1BC87A1E4(void *a1)
{
  result = [a1 type];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

BOOL sub_1BC87A210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = sub_1BC87A3C8(a1, a2, a3, a4);
  v6 = v4[31];
  v7 = v4[32];
  __swift_project_boxed_opaque_existential_1(v4 + 28, v6);
  v8 = (*(v7 + 8))(v5, 1, 0, 0, v6, v7);
  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v9 = sub_1BC8F7734();
  __swift_project_value_buffer(v9, qword_1EDC2B3A8);
  v10 = v5;
  v11 = sub_1BC8F7714();
  v12 = sub_1BC8F8204();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v5;
    v15 = v10;
    _os_log_impl(&dword_1BC7A3000, v11, v12, "Fetching call history calls matching predicate %@", v13, 0xCu);
    sub_1BC862F74(v14, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v14, -1, -1);
    MEMORY[0x1BFB2AA50](v13, -1, -1);
  }

  v16 = sub_1BC7C0454(v8);

  return v16 != 0;
}

id sub_1BC87A3C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC903280;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 predicateForCallsWithStatusOriginated_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC8FEAA0;
  v9 = *MEMORY[0x1E69935E0];
  *(v8 + 32) = sub_1BC8F7C24();
  *(v8 + 40) = v10;
  v11 = *MEMORY[0x1E69935E8];
  *(v8 + 48) = sub_1BC8F7C24();
  *(v8 + 56) = v12;
  v13 = sub_1BC8F7E34();

  v14 = [v7 predicateForCallsWithAnyServiceProviders_];

  *(v6 + 40) = v14;
  *(v6 + 48) = [v7 predicateForCallsWithRemoteParticipantCount_];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC904010;
  v16 = sub_1BC8F7BE4();
  v17 = [v7 predicateForCallsWithRemoteParticipantHandleValue_];

  *(v15 + 32) = v17;
  if (a4)
  {
    v18 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v18 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = sub_1BC8F7BE4();
      v20 = [v7 predicateForCallsWithRemoteParticipantHandleNormalizedValue_];

      MEMORY[0x1BFB29230]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      sub_1BC8F7ED4();
    }
  }

  if (sub_1BC7C0454(v15) < 2)
  {
    if (!sub_1BC7C0454(v15))
    {

      goto LABEL_17;
    }

    sub_1BC8E2358(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB29A00](0, v15);
    }

    else
    {
      v22 = *(v15 + 32);
    }
  }

  else
  {
    sub_1BC7D9730(0, &unk_1EDC1DE08, 0x1E696AB28);
    v21 = sub_1BC7E61E0(v15);
  }

  MEMORY[0x1BFB29230](v21);
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BC8F7E94();
  }

  sub_1BC8F7ED4();
LABEL_17:
  sub_1BC7D9730(0, &unk_1EDC1DE08, 0x1E696AB28);
  return sub_1BC7E61EC(v6);
}

uint64_t sub_1BC87A730(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v55 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v7 = OUTLINED_FUNCTION_25(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v46[-v10];
  v11 = sub_1BC8F7014();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v51 = v18;
  v52 = &v46[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46[-v19];
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v21 = sub_1BC8F7734();
  v22 = __swift_project_value_buffer(v21, qword_1EDC2B2B0);
  v50 = *(v14 + 16);
  v50(v20, a2, v11);
  v23 = a4;
  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F8204();

  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_8_17();
    v48 = OUTLINED_FUNCTION_62_3();
    v49 = OUTLINED_FUNCTION_28();
    v56 = v49;
    *v22 = 136446466;
    OUTLINED_FUNCTION_8_21();
    sub_1BC7AAB14(v26, v27);
    v47 = v25;
    v28 = sub_1BC8F8A54();
    v29 = a2;
    v31 = v30;
    v32 = OUTLINED_FUNCTION_80_2();
    v33(v32);
    v34 = sub_1BC7A9A4C(v28, v31, &v56);
    a2 = v29;

    *(v22 + 4) = v34;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v23;
    v35 = v48;
    *v48 = v23;
    v36 = v23;
    _os_log_impl(&dword_1BC7A3000, v24, v47, "Handling incoming video message url %{public}s from %@", v22, 0x16u);
    sub_1BC862F74(v35, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v37 = OUTLINED_FUNCTION_80_2();
    v38(v37);
  }

  v39 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v39);
  v40 = v52;
  v50(v52, a2, v11);
  v41 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v42 = (v51 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 4) = v54;
  (*(v14 + 32))(&v43[v41], v40, v11);
  *&v43[v42] = v55;
  *&v43[(v42 + 15) & 0xFFFFFFFFFFFFFFF8] = v23;
  v44 = v23;

  sub_1BC8333D4();
}

uint64_t sub_1BC87AB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1BC87ABCC;

  return sub_1BC875768(a5, a6, a7);
}

uint64_t sub_1BC87ABCC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC87ACE0()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v1 = *(v0 + 24);
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B2B0);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();

  v5 = OUTLINED_FUNCTION_137();
  v6 = *(v0 + 24);
  if (v5)
  {
    OUTLINED_FUNCTION_21_1();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v8);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC862F74(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v14 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v14);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1BC87AE20(uint64_t a1)
{
  v2 = v1;
  v51 = sub_1BC8F71E4();
  v4 = OUTLINED_FUNCTION_0(v51);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31();
  v50 = v9;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v11;
  if (qword_1EDC20728 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v12 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v12, qword_1EDC2B3A8);

    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_8_17();
      v53[0] = OUTLINED_FUNCTION_15_11();
      *v15 = 136446466;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v52 = Strong;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5F60, &unk_1BC904E88);
        v17 = sub_1BC8F7C94();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = sub_1BC7A9A4C(v17, v19, v53);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v52 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
      v21 = sub_1BC8F7C94();
      v23 = sub_1BC7A9A4C(v21, v22, v53);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1BC7A3000, v13, v14, "Callback from store to datasource %{public}s - added messages %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v45 = v2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_37_7();
      type metadata accessor for Message();
      v24 = sub_1BC8F7E34();
      [v13 messageStoreDidAddMessages:v24];

      swift_unknownObjectRelease();
    }

    result = sub_1BC7C0454(a1);
    if (!result)
    {
      return sub_1BC87B2B0(a1, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    }

    v26 = result;
    if (result < 1)
    {
      break;
    }

    v27 = 0;
    v28 = a1 & 0xC000000000000001;
    v47 = v6 + 1;
    v48 = (v6 + 2);
    v46 = result;
    v29 = v49;
    while (1)
    {
      if (v28)
      {
        v30 = MEMORY[0x1BFB29A00](v27, a1);
      }

      else
      {
        v30 = *(a1 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      if (v31[v32])
      {
        goto LABEL_23;
      }

      v2 = v28;
      v33 = a1;
      v34 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v35 = v51;
      (*v48)(v29, &v31[v34], v51);
      v36 = v50;
      sub_1BC8F71D4();
      sub_1BC8F7164();
      v38 = v37;
      v6 = v47;
      v39 = *v47;
      (*v47)(v36, v35);
      v40 = round(fabs(v38) / 86400.0);
      a1 = *&v40;
      v39(v29, v35);
      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v40 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v40 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v41 = v40;
      a1 = v33;
      v28 = v2;
      v26 = v46;
      if (v40 < 0)
      {
        v42 = __OFSUB__(0, v41);
        v41 = -v41;
        if (v42)
        {
          goto LABEL_28;
        }
      }

      if (v41 <= 7)
      {
        v43 = *(v45 + 272);
        sub_1BC895014(v31);
      }

LABEL_23:
      ++v27;

      if (v26 == v27)
      {
        return sub_1BC87B2B0(a1, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
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
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC87B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;

  sub_1BC8333D4();
}

void sub_1BC87B3C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BC8F7264();
  v49 = OUTLINED_FUNCTION_0(v4);
  v50 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC20728 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v9 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v9, qword_1EDC2B3A8);

  v10 = sub_1BC8F7714();
  v11 = sub_1BC8F8204();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_8_17();
    v54[0] = OUTLINED_FUNCTION_15_11();
    *v12 = 136446466;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v53 = Strong;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5F60, &unk_1BC904E88);
      v14 = sub_1BC8F7C94();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_1BC7A9A4C(v14, v16, v54);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    v53 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    v18 = sub_1BC8F7C94();
    v20 = sub_1BC7A9A4C(v18, v19, v54);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "Callback from store to datasource %{public}s - updated messages %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v44 = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_37_7();
    type metadata accessor for Message();
    v21 = sub_1BC8F7E34();
    [v10 messageStoreDidUpdateMessages:v21];

    swift_unknownObjectRelease();
  }

  v51 = MEMORY[0x1E69E7CC0];
  v22 = sub_1BC7C0454(a1);
  v23 = 0;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v22 != v23)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1BFB29A00](v23, a1);
    }

    else
    {
      if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v24 = *(a1 + 8 * v23 + 32);
    }

    v25 = v24;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v26 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    if ((v25[v26] & 1) != 0 || (v27 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType, OUTLINED_FUNCTION_13(), swift_beginAccess(), *&v25[v27]))
    {
      sub_1BC8F8654();
      v28 = *(v51 + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
    }

    else
    {
    }

    ++v23;
  }

  v29 = v51;
  v30 = sub_1BC7C0454(v51);
  if (!v30)
  {
    goto LABEL_30;
  }

  v31 = v30;
  v52 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v33 = v52;
    v34 = (v50 + 16);
    v45 = v50 + 32;
    v46 = v29 & 0xC000000000000001;
    v47 = a1;
    v35 = v29;
    do
    {
      if (v46)
      {
        v36 = MEMORY[0x1BFB29A00](v32, v29);
      }

      else
      {
        v36 = *(v29 + 8 * v32 + 32);
      }

      v37 = v36;
      v38 = v48;
      v39 = v49;
      v40 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      (*v34)(v38, &v37[v40], v39);

      v52 = v33;
      v41 = *(v33 + 16);
      if (v41 >= *(v33 + 24) >> 1)
      {
        sub_1BC7DDB5C();
        v33 = v52;
      }

      ++v32;
      *(v33 + 16) = v41 + 1;
      (*(v50 + 32))(v33 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, v38, v39);
      a1 = v47;
      v29 = v35;
    }

    while (v31 != v32);
LABEL_30:

    v42 = *(v44 + 272);
    sub_1BC897D10();

    sub_1BC87B2B0(MEMORY[0x1E69E7CC0], a1, MEMORY[0x1E69E7CC0]);
    return;
  }

  __break(1u);
}

uint64_t sub_1BC87B8F0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v4 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B3A8);

  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_8_17();
    v21 = OUTLINED_FUNCTION_15_11();
    *v7 = 136446466;
    if (swift_unknownObjectWeakLoadStrong())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5F60, &unk_1BC904E88);
      v8 = sub_1BC8F7C94();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_1BC7A9A4C(v8, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
    v12 = sub_1BC8F7C94();
    v14 = sub_1BC7A9A4C(v12, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "Callback from store to datasource %{public}s - delete messages with UUIDs %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    v15 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v15);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v16, v17);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_37_7();
    sub_1BC8F7264();
    v18 = sub_1BC8F7E34();
    [v5 messageStoreDidDeleteMessagesWithUUIDs:v18];

    swift_unknownObjectRelease();
  }

  v19 = *(v2 + 272);
  sub_1BC897D10();
  return sub_1BC87B2B0(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], a1);
}

uint64_t sub_1BC87BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BC87BB5C, 0, 0);
}

uint64_t sub_1BC87BB5C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_45_9((v0[2] + 328), *(v0[2] + 352));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1BC8366C0;
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_28_9(v0[3]);

  return sub_1BC858248();
}

void *sub_1BC87BBFC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result messageStoreAccountInfoDidChange_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BC87BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [v4 callsWithPredicate:a1 limit:a2 offset:a3 batchSize:a4];
  sub_1BC7D9730(0, &qword_1EBCF5F68, 0x1E6993590);
  v6 = sub_1BC8F7E54();

  return v6;
}

uint64_t sub_1BC87BD2C(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC87BD40()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1BC8F7734();
  v3 = __swift_project_value_buffer(v2, qword_1EDC2B3A8);
  v0[8] = v3;

  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_21(v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_21_1();
    *v8 = 134349056;
    *(v8 + 4) = sub_1BC7C0454(v7);

    OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v9, v3, "MessageStoreProviderDataSource: Saving %{public}ld voicemails");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
    v10 = v0[6];
  }

  v11 = v0[7];
  sub_1BC80F420(20, v0[6]);
  v0[9] = v12;
  v0[10] = *(v12 + 16);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v0[11] = 0;
  result = v0[9];
  if (v0[10])
  {
    if (*(result + 16))
    {
      v14 = v0[7];
      v0[12] = *(result + 32);
      OUTLINED_FUNCTION_45_9((v14 + 32), *(v14 + 56));

      v15 = swift_task_alloc();
      v0[13] = v15;
      *v15 = v0;
      OUTLINED_FUNCTION_23_8(v15);

      return sub_1BC811D84();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v16();
  }

  return result;
}

uint64_t sub_1BC87BF24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[9];
  }

  else
  {
    v10 = v3[12];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC87C030()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[10];
  v2 = v0[11] + 1;
  v0[11] = v2;
  result = v0[9];
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_11();

    return v4();
  }

  else if (v2 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = v0[7];
    v0[12] = *(result + 8 * v2 + 32);
    OUTLINED_FUNCTION_45_9((v5 + 32), *(v5 + 56));

    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_23_8(v6);

    return sub_1BC811D84();
  }

  return result;
}

uint64_t sub_1BC87C140()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 112);
  *(v0 + 40) = v1;
  v2 = (v0 + 40);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 112);
  if (v4)
  {
    v6 = *(v0 + 120) == 4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v18 = *(v0 + 64);

    v19 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_35_3();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_45();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v26 = *(v0 + 96);
    v27 = *(v0 + 56);

    v28 = *(v27 + 272);
    if (sub_1BC7C0454(v26))
    {
      v29 = *(v0 + 96);
      v30 = v29 & 0xC000000000000001;
      sub_1BC8E2358(0, (v29 & 0xC000000000000001) == 0, v29);
      v26 = *(v0 + 96);
      if (!v30)
      {
        v31 = *(v26 + 32);
LABEL_13:

        sub_1BC896E70(v31);

        sub_1BC82EF30();
        OUTLINED_FUNCTION_76();
        v32 = swift_allocError();
        OUTLINED_FUNCTION_63_4(v32, v33);

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    v31 = MEMORY[0x1BFB29A00](0, v26);
    v43 = *(v0 + 96);
    goto LABEL_13;
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 64);

  v9 = v5;
  v10 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_91_1();
  if (OUTLINED_FUNCTION_37_8())
  {
    v11 = *(v0 + 112);
    OUTLINED_FUNCTION_21_1();
    v12 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_90_0(5.8381e-34);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v13);
    OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v14, v2, "MessageStoreProviderDataSource: Got an error while adding voicemails: %{public}@");
    sub_1BC862F74(v12, &unk_1EBCF5DB0, &unk_1BC900410);
    v15 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v15);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v16 = *(v0 + 112);

  swift_willThrow();
  v17 = *(v0 + 112);
LABEL_14:
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_1BC87C39C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC87C3B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_30_10();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_8_4(v2);

  return sub_1BC8168E4();
}

uint64_t sub_1BC87C448()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC87C55C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v2 = *(v1 + 64);
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B3A8);
  v4 = v2;
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_91_1();
  if (OUTLINED_FUNCTION_37_8())
  {
    v6 = *(v1 + 64);
    OUTLINED_FUNCTION_21_1();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_90_0(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v8);
    OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v9, v0, "MessageStoreProviderDataSource: Got an error while updating voicemails: %{public}@");
    sub_1BC862F74(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v10 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v10);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v11 = *(v1 + 64);

  swift_willThrow();
  OUTLINED_FUNCTION_27();
  v12 = *(v1 + 64);
  OUTLINED_FUNCTION_112();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

void *sub_1BC87C68C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result messageStoreRequiresRefetch];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BC87C6E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC87C754()
{
  result = qword_1EBCF5F40;
  if (!qword_1EBCF5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5F40);
  }

  return result;
}

id sub_1BC87C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BC8F7BE4();

  if (a5)
  {
    v9 = sub_1BC8F7BE4();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithType:a1 value:v8 normalizedValue:v9];

  return v10;
}

uint64_t sub_1BC87C84C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return a2;
}

uint64_t sub_1BC87C8D8(void *a1)
{
  v1 = [a1 isoCountryCode];
  if (v1)
  {
    v2 = v1;
    sub_1BC8F7C24();
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1BC87C938(id *a1)
{
  v1 = *a1;

  return sub_1BC87C964(v1);
}

uint64_t sub_1BC87C964(void *a1)
{
  v2 = [a1 normalizedValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BC8F7C24();

  return v3;
}

uint64_t sub_1BC87C9D4()
{
  OUTLINED_FUNCTION_71();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1BC7B0168;
  OUTLINED_FUNCTION_73_3();

  return sub_1BC87BB38(v9, v10, v11, v12, v5, v7, v6);
}

uint64_t sub_1BC87CA98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_10(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1BC87CAF8()
{
  OUTLINED_FUNCTION_71();
  v2 = sub_1BC8F7014();
  OUTLINED_FUNCTION_26(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_73_3();

  return sub_1BC87AB18(v12, v13, v14, v15, v16, v9, v10);
}

_BYTE *storeEnumTagSinglePayload for MessageStoreProviderDataSourceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC87CD04()
{
  result = qword_1EBCF5F70;
  if (!qword_1EBCF5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5F70);
  }

  return result;
}

void OUTLINED_FUNCTION_89_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

id OUTLINED_FUNCTION_90_0(float a1)
{
  *v2 = a1;

  return v1;
}

unint64_t sub_1BC87CDD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for VoicemailUpdate();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_21_13();
  v12 = v2[16];
  v13 = OUTLINED_FUNCTION_7_14();
  v14(v13);
  OUTLINED_FUNCTION_12_14();
  v16 = *(v15 + 48);
  v17 = OUTLINED_FUNCTION_7_14();
  v19 = v18(v17);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v20)
  {
    v22 = v20;
  }

  v23 = (v11 + v5[5]);
  *v23 = v21;
  v23[1] = v22;
  OUTLINED_FUNCTION_12_14();
  v25 = *(v24 + 16);
  v26 = OUTLINED_FUNCTION_7_14();
  *(v11 + v5[6]) = v27(v26) & 1;
  v28 = a1[3];
  v29 = a1[4];
  v30 = OUTLINED_FUNCTION_29();
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v32 = sub_1BC7EA54C(v28, v29);
  v33 = v11 + v5[7];
  *v33 = v32;
  *(v33 + 2) = BYTE2(v32) & 1;
  OUTLINED_FUNCTION_12_14();
  v35 = *(v34 + 56);
  v36 = OUTLINED_FUNCTION_7_14();
  v38 = v37(v36);
  v39 = (v11 + v5[8]);
  *v39 = v38;
  v39[1] = v40;
  OUTLINED_FUNCTION_12_14();
  v42 = *(v41 + 88);
  v43 = OUTLINED_FUNCTION_7_14();
  v45 = v44(v43);
  v46 = v11 + v5[9];
  *v46 = v45;
  *(v46 + 2) = 0;
  OUTLINED_FUNCTION_21_13();
  v47 = v2[13];
  v48 = OUTLINED_FUNCTION_7_14();
  v49(v48);
  v50 = v11 + v5[10];
  *v50 = v72;
  *(v50 + 16) = v73;
  OUTLINED_FUNCTION_12_14();
  v52 = *(v51 + 136);
  v53 = OUTLINED_FUNCTION_7_14();
  v55 = v54(v53);
  v56 = (v11 + v5[11]);
  *v56 = v55;
  v56[1] = v57;
  v58 = v5[12];
  OUTLINED_FUNCTION_21_13();
  v59 = v2[5];
  v60 = OUTLINED_FUNCTION_7_14();
  v61(v60);
  v62 = sub_1BC8F71E4();
  __swift_storeEnumTagSinglePayload(v11 + v58, 0, 1, v62);
  OUTLINED_FUNCTION_12_14();
  v64 = *(v63 + 144);
  v65 = OUTLINED_FUNCTION_7_14();
  result = v66(v65);
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    v68 = v11 + v5[13];
    *v68 = result;
    *(v68 + 4) = 0;
    v69 = (v11 + v5[14]);
    *v69 = 0;
    v69[1] = 0;
    v69[2] = 0;
    v70 = v5[15];
    v71 = sub_1BC8F7264();
    __swift_storeEnumTagSinglePayload(v11 + v70, 1, 1, v71);
    sub_1BC880FD4(v11, a2);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

void sub_1BC87D064()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v189 = sub_1BC8F71E4();
  v4 = OUTLINED_FUNCTION_0(v189);
  v181 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_4();
  v178 = v8;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D58, &qword_1BC903E30);
  OUTLINED_FUNCTION_4_1(v184);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v185 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_0();
  v183 = v17 - v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_4();
  v186 = v20;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_20_4();
  v188 = v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v174[-v24];
  v25 = sub_1BC8F7264();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_4();
  v190 = v31;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B40, &unk_1BC904FF0);
  v32 = OUTLINED_FUNCTION_4_1(v193);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_20_0();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v174[-v39];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v42 = OUTLINED_FUNCTION_25(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_20_0();
  v177 = v45 - v46;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_20_4();
  v179 = v48;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_20_4();
  v180 = v50;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_20_4();
  v182 = v52;
  OUTLINED_FUNCTION_17_0();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v174[-v55];
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v174[-v58];
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v174[-v60];
  (*(v28 + 16))(&v174[-v60], v3, v25);
  v62 = 1;
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v25);
  v192 = v1;
  v63 = [v1 recordUUID];
  v191 = v3;
  if (v63)
  {
    v64 = v63;
    sub_1BC8F7244();

    v62 = 0;
  }

  __swift_storeEnumTagSinglePayload(v59, v62, 1, v25);
  v65 = *(v193 + 48);
  sub_1BC7C4DAC(v61, v40, &unk_1EBCF5D70, &qword_1BC8FC740);
  sub_1BC7C4DAC(v59, &v40[v65], &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_10_19(v40);
  if (v66)
  {
    sub_1BC7C1744(v59, &unk_1EBCF5D70, &qword_1BC8FC740);
    sub_1BC7C1744(v61, &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_10_19(&v40[v65]);
    if (v66)
    {
      v176 = v37;
      sub_1BC7C1744(v40, &unk_1EBCF5D70, &qword_1BC8FC740);
      goto LABEL_15;
    }

LABEL_11:
    v76 = &qword_1EBCF5B40;
    v77 = &unk_1BC904FF0;
    v78 = v40;
LABEL_12:
    sub_1BC7C1744(v78, v76, v77);
    goto LABEL_13;
  }

  sub_1BC7C4DAC(v40, v56, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_10_19(&v40[v65]);
  if (v66)
  {
    OUTLINED_FUNCTION_72();
    sub_1BC7C1744(v67, v68, v69);
    OUTLINED_FUNCTION_72();
    sub_1BC7C1744(v70, v71, v72);
    v73 = *(v28 + 8);
    v74 = OUTLINED_FUNCTION_36_8();
    v75(v74);
    goto LABEL_11;
  }

  v176 = v37;
  v79 = v190;
  (*(v28 + 32))(v190, &v40[v65], v25);
  OUTLINED_FUNCTION_0_21();
  sub_1BC881470(v80, v81);
  v175 = sub_1BC8F7BC4();
  v82 = *(v28 + 8);
  v82(v79, v25);
  sub_1BC7C1744(v59, &unk_1EBCF5D70, &qword_1BC8FC740);
  sub_1BC7C1744(v61, &unk_1EBCF5D70, &qword_1BC8FC740);
  v83 = OUTLINED_FUNCTION_36_8();
  (v82)(v83);
  sub_1BC7C1744(v40, &unk_1EBCF5D70, &qword_1BC8FC740);
  if ((v175 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  v84 = type metadata accessor for VoicemailUpdate();
  v86 = v191;
  v85 = v192;
  v87 = (v191 + v84[5]);
  v88 = v87[1];
  if (v88)
  {
    v89 = *v87;
    v90 = sub_1BC7C3174(v192);
    if (!v91)
    {
      goto LABEL_13;
    }

    if (v89 == v90 && v88 == v91)
    {
    }

    else
    {
      v93 = OUTLINED_FUNCTION_35_8();

      if ((v93 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v94 = *(v86 + v84[6]);
  if (v94 != 2 && (([v85 isRead] ^ v94) & 1) != 0)
  {
    goto LABEL_13;
  }

  v95 = (v86 + v84[7]);
  if ((v95[1] & 1) == 0)
  {
    v96 = *v95;
    if (v96 != [v85 mailboxType])
    {
      goto LABEL_13;
    }
  }

  v97 = (v86 + v84[8]);
  v98 = v97[1];
  if (v98)
  {
    v99 = *v97;
    v100 = sub_1BC7C318C(v85);
    if (!v101)
    {
      goto LABEL_13;
    }

    if (v99 == v100 && v98 == v101)
    {
    }

    else
    {
      v103 = OUTLINED_FUNCTION_35_8();

      if ((v103 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v104 = (v86 + v84[9]);
  if ((v104[1] & 1) == 0)
  {
    v105 = *v104;
    if (v105 != [v85 transcriptionStatus])
    {
      goto LABEL_13;
    }
  }

  if (*(v86 + v84[10]))
  {
    v106 = sub_1BC870710(v85);
    if (v107 >> 60 == 15)
    {
      goto LABEL_13;
    }

    sub_1BC7ECAC8(v106, v107);
  }

  v108 = (v86 + v84[11]);
  v109 = v108[1];
  if (v109)
  {
    v110 = *v108;
    v111 = sub_1BC7C31B0(v85);
    if (!v112)
    {
      goto LABEL_13;
    }

    if (v110 == v111 && v109 == v112)
    {
    }

    else
    {
      v114 = OUTLINED_FUNCTION_35_8();

      if ((v114 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v115 = v84[12];
  v116 = v187;
  sub_1BC7C4DAC(v86 + v115, v187, &unk_1EBCF5D80, &qword_1BC8FEA60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116, 1, v189);
  OUTLINED_FUNCTION_71_0(v116);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_52;
  }

  sub_1BC7C4DAC(v86 + v115, v188, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v124 = [v85 dateCreated];
  if (v124)
  {
    v125 = v124;
    v126 = v186;
    sub_1BC8F71B4();

    v127 = 0;
    v128 = v189;
    v129 = v185;
  }

  else
  {
    v127 = 1;
    v128 = v189;
    v129 = v185;
    v126 = v186;
  }

  __swift_storeEnumTagSinglePayload(v126, v127, 1, v128);
  v130 = *(v184 + 48);
  v131 = v188;
  sub_1BC7C4DAC(v188, v129, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v189 = v130;
  sub_1BC7C4DAC(v126, v129 + v130, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v132 = v128;
  OUTLINED_FUNCTION_43(v129, 1, v128);
  if (v66)
  {
    sub_1BC7C1744(v126, &unk_1EBCF5D80, &qword_1BC8FEA60);
    OUTLINED_FUNCTION_71_0(v131);
    OUTLINED_FUNCTION_43(v129 + v189, 1, v128);
    if (v66)
    {
      sub_1BC7C1744(v129, &unk_1EBCF5D80, &qword_1BC8FEA60);
LABEL_52:
      v118 = (v86 + v84[14]);
      v119 = v118[2];
      if (v119)
      {
        v121 = *v118;
        v120 = v118[1];
        sub_1BC7C31C8();
        if (!v196 || v121 != v194)
        {

          goto LABEL_13;
        }

        if (v120 == v195 && v119 == v196)
        {
        }

        else
        {
          v123 = sub_1BC8F8AA4();

          if ((v123 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      v142 = v84[15];
      v143 = v182;
      sub_1BC7C4DAC(v86 + v142, v182, &unk_1EBCF5D70, &qword_1BC8FC740);
      v144 = __swift_getEnumTagSinglePayload(v143, 1, v25);
      OUTLINED_FUNCTION_58_5(v143);
      if (v144 == 1)
      {
        goto LABEL_13;
      }

      v145 = v86 + v142;
      v146 = v180;
      sub_1BC7C4DAC(v145, v180, &unk_1EBCF5D70, &qword_1BC8FC740);
      v147 = [v85 reminderUUID];
      if (v147)
      {
        v148 = v147;
        v149 = v179;
        sub_1BC8F7244();

        v150 = 0;
      }

      else
      {
        v150 = 1;
        v149 = v179;
      }

      __swift_storeEnumTagSinglePayload(v149, v150, 1, v25);
      v151 = *(v193 + 48);
      v129 = v176;
      sub_1BC7C4DAC(v146, v176, &unk_1EBCF5D70, &qword_1BC8FC740);
      sub_1BC7C4DAC(v149, v129 + v151, &unk_1EBCF5D70, &qword_1BC8FC740);
      OUTLINED_FUNCTION_10_19(v129);
      if (v66)
      {
        OUTLINED_FUNCTION_72();
        sub_1BC7C1744(v152, v153, v154);
        OUTLINED_FUNCTION_72();
        sub_1BC7C1744(v155, v156, v157);
        OUTLINED_FUNCTION_10_19(v129 + v151);
        if (v66)
        {
          sub_1BC7C1744(v129, &unk_1EBCF5D70, &qword_1BC8FC740);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1BC7C4DAC(v129, v177, &unk_1EBCF5D70, &qword_1BC8FC740);
        OUTLINED_FUNCTION_10_19(v129 + v151);
        if (!v158)
        {
          v168 = v129 + v151;
          v169 = v190;
          (*(v28 + 32))(v190, v168, v25);
          OUTLINED_FUNCTION_0_21();
          sub_1BC881470(v170, v171);
          sub_1BC8F7BC4();
          v172 = *(v28 + 8);
          v172(v169, v25);
          OUTLINED_FUNCTION_58_5(v149);
          OUTLINED_FUNCTION_58_5(v146);
          v173 = OUTLINED_FUNCTION_36_8();
          (v172)(v173);
          OUTLINED_FUNCTION_58_5(v129);
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_72();
        sub_1BC7C1744(v159, v160, v161);
        OUTLINED_FUNCTION_72();
        sub_1BC7C1744(v162, v163, v164);
        v165 = *(v28 + 8);
        v166 = OUTLINED_FUNCTION_36_8();
        v167(v166);
      }

      v76 = &qword_1EBCF5B40;
      v77 = &unk_1BC904FF0;
      goto LABEL_91;
    }

LABEL_72:
    v76 = &qword_1EBCF5D58;
    v77 = &qword_1BC903E30;
LABEL_91:
    v78 = v129;
    goto LABEL_12;
  }

  v133 = v183;
  sub_1BC7C4DAC(v129, v183, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v134 = v189;
  v135 = v132;
  OUTLINED_FUNCTION_43(v129 + v189, 1, v132);
  if (v136)
  {
    sub_1BC7C1744(v186, &unk_1EBCF5D80, &qword_1BC8FEA60);
    sub_1BC7C1744(v188, &unk_1EBCF5D80, &qword_1BC8FEA60);
    (*(v181 + 8))(v133, v132);
    goto LABEL_72;
  }

  v137 = v181;
  v138 = v178;
  (*(v181 + 32))(v178, v129 + v134, v135);
  OUTLINED_FUNCTION_1_21();
  sub_1BC881470(v139, v140);
  LODWORD(v189) = sub_1BC8F7BC4();
  v141 = *(v137 + 8);
  v141(v138, v135);
  OUTLINED_FUNCTION_71_0(v186);
  OUTLINED_FUNCTION_71_0(v188);
  v141(v183, v135);
  OUTLINED_FUNCTION_71_0(v185);
  if (v189)
  {
    goto LABEL_52;
  }

LABEL_13:
  OUTLINED_FUNCTION_24();
}

void sub_1BC87DDDC()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0;
  v166[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1BC8F7C64();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v152 - v11;
  v13 = sub_1BC8F7134();
  v14 = OUTLINED_FUNCTION_0(v13);
  v157 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_4();
  v155 = v18;
  v156 = sub_1BC8F7154();
  v19 = OUTLINED_FUNCTION_0(v156);
  v154 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_4();
  v153 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v29 = v28;
  *&v164 = 0x555564726F636572;
  *(&v164 + 1) = 0xEA00000000004449;
  v30 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v31 = sub_1BC8F7204();
  v165 = v30;
  *&v164 = v31;
  *(&v164 + 1) = v32;
  sub_1BC7F0E58(&v164, v163);
  v33 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  *&v161 = v33;
  sub_1BC83D6F0(v163, v166);
  OUTLINED_FUNCTION_39_6();
  *&v164 = 1836020326;
  *(&v164 + 1) = 0xE400000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v158 = type metadata accessor for VoicemailUpdate();
  v34 = *(v158 + 20);
  v159 = v2;
  v35 = (v2 + v34);
  v36 = v35[1];
  if (v36)
  {
    sub_1BC7EB6B4(*v35, v36);
    v165 = v30;
    *&v164 = v37;
    *(&v164 + 1) = v38;
    OUTLINED_FUNCTION_25_0();
    v39 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v39, v40);
    OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v41)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_14_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_13_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v42 + v30 * v43);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v164 = 0x646165527369;
  *(&v164 + 1) = 0xE600000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  OUTLINED_FUNCTION_33_11();
  v45 = *(v159 + *(v44 + 24));
  if (v45 == 2)
  {
    OUTLINED_FUNCTION_52();
    if (v46)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_14_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_13_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v47 + v30 * v48);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v165 = MEMORY[0x1E69E6370];
    LOBYTE(v164) = v45 & 1;
    OUTLINED_FUNCTION_25_0();
    v49 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v49, v50);
    OUTLINED_FUNCTION_39_6();
  }

  *&v164 = 0x54786F626C69616DLL;
  *(&v164 + 1) = 0xEB00000000657079;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_15_12(*(v51 + 28));
  if (v52[1])
  {
    OUTLINED_FUNCTION_52();
    if (v53)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_14_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_13_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v54 + v30 * v55);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v56 = *v52;
    v165 = MEMORY[0x1E69E7290];
    LOWORD(v164) = v56;
    OUTLINED_FUNCTION_25_0();
    v57 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v57, v58);
    OUTLINED_FUNCTION_39_6();
  }

  *&v164 = 0xD000000000000013;
  *(&v164 + 1) = 0x80000001BC90B210;
  v59 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_15_12(*(v60 + 36));
  if (*(v61 + 2))
  {
    OUTLINED_FUNCTION_52();
    if (v62)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_14_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_13_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v63 + v30 * v64);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v65 = sub_1BC8C21C4(*v61);
    v165 = v59;
    *&v164 = v65;
    *(&v164 + 1) = v66;
    OUTLINED_FUNCTION_25_0();
    v67 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v67, v68);
    OUTLINED_FUNCTION_39_6();
  }

  *&v164 = 0x6E65697069636572;
  *(&v164 + 1) = 0xE900000000000074;
  v69 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_15_12(*(v70 + 32));
  v72 = v71[1];
  if (v72)
  {
    sub_1BC7EB6B4(*v71, v72);
    v165 = v69;
    *&v164 = v73;
    *(&v164 + 1) = v74;
    OUTLINED_FUNCTION_25_0();
    v75 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v75, v76);
    OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v77)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_14_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_13_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v78 + v30 * v79);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v164 = 0x697263736E617274;
  *(&v164 + 1) = 0xEA00000000007470;
  v80 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_15_12(*(v81 + 40));
  if (*v82)
  {
    *&v163[0] = *v82;
    *(v163 + 8) = *(v82 + 8);
    v83 = Transcript.text.getter();
    v165 = v80;
    *&v164 = v83;
    *(&v164 + 1) = v84;
    OUTLINED_FUNCTION_25_0();
    v85 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v85, v86);
    OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_52();
    if (v87)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_14_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_13_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v88 + v80 * v89);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v164 = 0x44496D6973;
  *(&v164 + 1) = 0xE500000000000000;
  v90 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_15_12(*(v91 + 44));
  v93 = v92[1];
  if (v93)
  {
    v94 = *v92;
    v165 = v90;
    *&v164 = v94;
    *(&v164 + 1) = v93;
    sub_1BC7F0E58(&v164, v163);

    swift_isUniquelyReferenced_nonNull_native();
    v95 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v95, v96);
    OUTLINED_FUNCTION_39_6();
    v97 = v29;
  }

  else
  {
    OUTLINED_FUNCTION_15_10();
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
    OUTLINED_FUNCTION_52();
    if (v98)
    {
      OUTLINED_FUNCTION_44_9();
      *&v161 = v1;
      v99 = *(v1 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      v1 = v161;
      sub_1BC8037DC(*(v161 + 48));
      sub_1BC7F0E58(*(v1 + 56), v163);
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      memset(v163, 0, sizeof(v163));
    }

    v97 = v29;
    sub_1BC8037DC(v166);
    sub_1BC7C1744(v163, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  *&v164 = 0x6165724365746164;
  *(&v164 + 1) = 0xEB00000000646574;
  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  OUTLINED_FUNCTION_33_11();
  sub_1BC7C4DAC(v159 + *(v101 + 48), v97, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v102 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_43(v97, 1, v102);
  if (v103)
  {
    sub_1BC7C1744(v97, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v104 = OUTLINED_FUNCTION_52();
    if (v105)
    {
      v106 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v163[0] = v1;
      v107 = *(v1 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v108 + v106 * v109);
      sub_1BC7F0E58((*(v1 + 56) + 32 * v106), &v164);
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v110 = v153;
    sub_1BC8F7144();
    v111 = v155;
    sub_1BC8F7124();
    v112 = sub_1BC8F71C4();
    v114 = v113;
    (*(v157 + 8))(v111, v13);
    (*(v154 + 8))(v110, v156);
    (*(*(v102 - 8) + 8))(v97, v102);
    v165 = isUniquelyReferenced_nonNull_native;
    *&v164 = v112;
    *(&v164 + 1) = v114;
    OUTLINED_FUNCTION_25_0();
    v115 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v115, v116);
    OUTLINED_FUNCTION_39_6();
  }

  *&v164 = 0x69616D6563696F76;
  *(&v164 + 1) = 0xEB0000000044496CLL;
  v117 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_15_12(*(v118 + 52));
  if (v119[1])
  {
    OUTLINED_FUNCTION_52();
    if (v120)
    {
      OUTLINED_FUNCTION_44_9();
      *&v163[0] = v1;
      v121 = *(v1 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_13_14();
      sub_1BC8F8734();
      OUTLINED_FUNCTION_22_9();
      sub_1BC8037DC(v122 + isUniquelyReferenced_nonNull_native * v123);
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_24_11();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v124 = *v119;
    v165 = MEMORY[0x1E69E72F0];
    LODWORD(v164) = v124;
    OUTLINED_FUNCTION_25_0();
    v125 = OUTLINED_FUNCTION_3_20();
    sub_1BC83D6F0(v125, v126);
    OUTLINED_FUNCTION_39_6();
  }

  *&v164 = 0x7972616D6D7573;
  *(&v164 + 1) = 0xE700000000000000;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v127 = v158;
  v128 = v159;
  v129 = (v159 + *(v158 + 56));
  v130 = *(v129 + 2);
  v161 = *v129;
  v162 = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EC0, &qword_1BC9048A0);
  v131 = sub_1BC8F83E4();
  v165 = v117;
  *&v164 = v131;
  *(&v164 + 1) = v132;
  OUTLINED_FUNCTION_25_0();
  v160 = v1;
  sub_1BC83D6F0(v163, v166);
  v133 = v160;
  sub_1BC8037DC(v166);
  strcpy(&v164, "reminderUUID");
  BYTE13(v164) = 0;
  HIWORD(v164) = -5120;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  sub_1BC7C4DAC(v128 + *(v127 + 60), v12, &unk_1EBCF5D70, &qword_1BC8FC740);
  v134 = sub_1BC8F7264();
  OUTLINED_FUNCTION_43(v12, 1, v134);
  if (v103)
  {
    sub_1BC7C1744(v12, &unk_1EBCF5D70, &qword_1BC8FC740);
    v135 = sub_1BC83C8E8();
    if (v136)
    {
      v137 = v135;
      swift_isUniquelyReferenced_nonNull_native();
      *&v163[0] = v133;
      v138 = *(v133 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      v139 = *&v163[0];
      sub_1BC8037DC(*(*&v163[0] + 48) + 40 * v137);
      sub_1BC7F0E58((*(v139 + 56) + 32 * v137), &v164);
      OUTLINED_FUNCTION_22_11();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v166);
    sub_1BC7C1744(&v164, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v140 = sub_1BC8F7204();
    v165 = v117;
    *&v164 = v140;
    *(&v164 + 1) = v141;
    (*(*(v134 - 8) + 8))(v12, v134);
    sub_1BC7F0E58(&v164, v163);
    swift_isUniquelyReferenced_nonNull_native();
    *&v161 = v133;
    sub_1BC83D6F0(v163, v166);
    sub_1BC8037DC(v166);
  }

  v142 = objc_opt_self();
  v143 = sub_1BC8F7A94();
  v166[0] = 0;
  v144 = [v142 dataWithJSONObject:v143 options:11 error:v166];

  v145 = v166[0];
  if (v144)
  {
    v146 = sub_1BC8F70D4();
    v148 = v147;

    sub_1BC8F7C54();
    sub_1BC8F7C34();
    sub_1BC7D4C94(v146, v148);
  }

  else
  {
    v149 = v145;

    v150 = sub_1BC8F6EA4();

    swift_willThrow();
    v166[0] = 0;
    v166[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_1BC8F8A64();
  }

  v151 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

void sub_1BC87EE2C()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1BC8F7264();
  v5 = OUTLINED_FUNCTION_0(v4);
  v145 = v6;
  v146 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_4();
  v144 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v135[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B40, &unk_1BC904FF0);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v135[-v20];
  v22 = sub_1BC8F71E4();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v135[-v35];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5D58, &qword_1BC903E30);
  OUTLINED_FUNCTION_4_1(v147);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v135[-v40];
  if ((sub_1BC8F7234() & 1) == 0)
  {
    goto LABEL_53;
  }

  v42 = *(type metadata accessor for VoicemailUpdate() + 20);
  OUTLINED_FUNCTION_31_8();
  if (v46)
  {
    if (!v43)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_40_8(v44);
    v49 = v49 && v47 == v48;
    if (!v49)
    {
      v143 = v36;
      OUTLINED_FUNCTION_8_22();
      v21 = v50;
      sub_1BC8F8AA4();
      OUTLINED_FUNCTION_6_16();
      v36 = v143;
      if ((v51 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v43)
  {
    goto LABEL_53;
  }

  v52 = *(v45 + 24);
  v53 = *(v3 + v52);
  v54 = *(v1 + v52);
  if (v53 == 2)
  {
    if (v54 != 2)
    {
      goto LABEL_53;
    }
  }

  else if (v54 == 2 || ((v54 ^ v53) & 1) != 0)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_52_4(*(v45 + 28));
  if (v57)
  {
    if (!v55)
    {
      goto LABEL_53;
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_8();
    if (v58)
    {
      goto LABEL_53;
    }
  }

  v59 = *(v56 + 32);
  OUTLINED_FUNCTION_31_8();
  if (v63)
  {
    if (!v60)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_40_8(v61);
    if (!v49 || v64 != v65)
    {
      v143 = v36;
      OUTLINED_FUNCTION_8_22();
      v21 = v67;
      sub_1BC8F8AA4();
      OUTLINED_FUNCTION_6_16();
      v36 = v143;
      if ((v68 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v60)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_52_4(*(v62 + 36));
  if (v71)
  {
    if (!v69)
    {
      goto LABEL_53;
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_8();
    if (v72)
    {
      goto LABEL_53;
    }
  }

  v73 = v70[10];
  v74 = *(v3 + v73);
  v75 = *(v3 + v73 + 8);
  v76 = *(v3 + v73 + 16);
  v77 = (v1 + v73);
  v78 = *v77;
  v139 = v77[1];
  v141 = v77[2];
  if (!v74)
  {
    v142 = 0;
    v143 = v75;
    v137 = v70;
    v138 = v78;
    v140 = v76;
    sub_1BC7C52A8(0);
    if (!v138)
    {
      sub_1BC7C52A8(0);
      v89 = 0;
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_49_7();
    v82 = v81;
    sub_1BC7C52A8(v81);
    v83 = v142;
    goto LABEL_47;
  }

  if (!v78)
  {
    v83 = v74;
    v82 = 0;
    sub_1BC7C52A8(v74);
    OUTLINED_FUNCTION_49_7();
    sub_1BC7C52A8(v84);
    sub_1BC7C52A8(v83);

LABEL_47:
    sub_1BC7C532C(v83);
    v85 = v82;
LABEL_52:
    sub_1BC7C532C(v85);
    goto LABEL_53;
  }

  v142 = v74;
  v143 = v75;
  v140 = v76;
  v137 = v70;
  v138 = v78;
  if ((sub_1BC7DC654(v74, v78) & 1) == 0)
  {
    v79 = v142;
LABEL_49:
    sub_1BC7C52A8(v79);
    goto LABEL_50;
  }

  if (!v140)
  {
    sub_1BC7C52A8(v142);
    if (!v141)
    {
      sub_1BC7C52A8(v138);
      sub_1BC7C52A8(v142);
      v90 = v138;
      goto LABEL_59;
    }

LABEL_50:
    v86 = OUTLINED_FUNCTION_29();
    sub_1BC7C52A8(v86);
    sub_1BC7C52A8(v142);
    OUTLINED_FUNCTION_72();
    sub_1BC7C532C(v87);
LABEL_51:
    v88 = v142;

    v85 = v88;
    goto LABEL_52;
  }

  v79 = v142;
  if (!v141)
  {
    v141 = 0;
    goto LABEL_49;
  }

  if (v143 != v139 || v140 != v141)
  {
    v136 = sub_1BC8F8AA4();
    sub_1BC7C52A8(v142);
    sub_1BC7C52A8(v138);
    sub_1BC7C52A8(v142);
    sub_1BC7C532C(v138);
    if (v136)
    {
      goto LABEL_60;
    }

    goto LABEL_51;
  }

  sub_1BC7C52A8(v142);
  sub_1BC7C52A8(v138);
  sub_1BC7C52A8(v142);
  v90 = v138;
LABEL_59:
  sub_1BC7C532C(v90);
LABEL_60:

  v89 = v142;
LABEL_61:
  sub_1BC7C532C(v89);
  v91 = v137[11];
  OUTLINED_FUNCTION_31_8();
  if (v95)
  {
    if (!v92)
    {
      goto LABEL_53;
    }

    v143 = v36;
    OUTLINED_FUNCTION_40_8(v93);
    if (!v49 || v96 != v97)
    {
      OUTLINED_FUNCTION_8_22();
      v21 = v99;
      sub_1BC8F8AA4();
      OUTLINED_FUNCTION_6_16();
      if ((v100 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v143 = v36;
    if (v92)
    {
      goto LABEL_53;
    }
  }

  v137 = v94;
  v142 = v94[12];
  v101 = *(v147 + 48);
  sub_1BC7C4DAC(v3 + v142, v41, &unk_1EBCF5D80, &qword_1BC8FEA60);
  v147 = v101;
  sub_1BC7C4DAC(v1 + v142, &v41[v101], &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v41, 1, v22);
  if (v49)
  {
    OUTLINED_FUNCTION_43(&v41[v147], 1, v22);
    if (v49)
    {
      sub_1BC7C1744(v41, &unk_1EBCF5D80, &qword_1BC8FEA60);
      goto LABEL_81;
    }

LABEL_78:
    v104 = &qword_1EBCF5D58;
    v105 = &qword_1BC903E30;
    v106 = v41;
LABEL_79:
    sub_1BC7C1744(v106, v104, v105);
    goto LABEL_53;
  }

  v102 = v143;
  sub_1BC7C4DAC(v41, v143, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(&v41[v147], 1, v22);
  if (v103)
  {
    (*(v25 + 8))(v102, v22);
    goto LABEL_78;
  }

  (*(v25 + 32))(v30, &v41[v147], v22);
  OUTLINED_FUNCTION_1_21();
  sub_1BC881470(v107, v108);
  LODWORD(v147) = sub_1BC8F7BC4();
  v143 = v102;
  v109 = *(v25 + 8);
  v110 = OUTLINED_FUNCTION_29();
  v109(v110);
  (v109)(v143, v22);
  sub_1BC7C1744(v41, &unk_1EBCF5D80, &qword_1BC8FEA60);
  if ((v147 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_81:
  v111 = v137[13];
  v112 = (v3 + v111);
  v113 = *(v3 + v111 + 4);
  v114 = (v1 + v111);
  v115 = *(v1 + v111 + 4);
  if (v113)
  {
    if (!v115)
    {
      goto LABEL_53;
    }

LABEL_87:
    v116 = v137[14];
    v117 = (v3 + v116);
    v118 = *(v3 + v116 + 16);
    v119 = (v1 + v116);
    v120 = v119[2];
    if (v118)
    {
      if (v120)
      {
        if (*v117 != *v119)
        {
          goto LABEL_53;
        }

        if (v117[1] != v119[1] || v118 != v120)
        {
          v122 = v119[2];
          if ((sub_1BC8F8AA4() & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_100;
      }
    }

    else
    {
      if (!v120)
      {

LABEL_100:
        v124 = v137[15];
        v125 = *(v16 + 48);
        sub_1BC7C4DAC(v3 + v124, v21, &unk_1EBCF5D70, &qword_1BC8FC740);
        sub_1BC7C4DAC(v1 + v124, &v21[v125], &unk_1EBCF5D70, &qword_1BC8FC740);
        OUTLINED_FUNCTION_43(v21, 1, v146);
        if (v49)
        {
          v126 = v21;
          OUTLINED_FUNCTION_10_19(&v21[v125]);
          if (v49)
          {
            sub_1BC7C1744(v21, &unk_1EBCF5D70, &qword_1BC8FC740);
            goto LABEL_53;
          }
        }

        else
        {
          sub_1BC7C4DAC(v21, v15, &unk_1EBCF5D70, &qword_1BC8FC740);
          v126 = v21;
          OUTLINED_FUNCTION_10_19(&v21[v125]);
          if (!v127)
          {
            v129 = v144;
            v128 = v145;
            v130 = &v21[v125];
            v131 = v146;
            (*(v145 + 32))(v144, v130, v146);
            OUTLINED_FUNCTION_0_21();
            sub_1BC881470(v132, v133);
            sub_1BC8F7BC4();
            v134 = *(v128 + 8);
            v134(v129, v131);
            v134(v15, v131);
            sub_1BC7C1744(v21, &unk_1EBCF5D70, &qword_1BC8FC740);
            goto LABEL_53;
          }

          (*(v145 + 8))(v15, v146);
        }

        v104 = &qword_1EBCF5B40;
        v105 = &unk_1BC904FF0;
        v106 = v126;
        goto LABEL_79;
      }

      v123 = v119[2];
    }

    goto LABEL_53;
  }

  if (*v112 != *v114)
  {
    LOBYTE(v115) = 1;
  }

  if ((v115 & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_53:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC87F848(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x555564726F636572 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1836020326 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646165527369 && a2 == 0xE600000000000000;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x54786F626C69616DLL && a2 == 0xEB00000000657079;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65697069636572 && a2 == 0xE900000000000074;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001BC90B210 == a2;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x697263736E617274 && a2 == 0xEA00000000007470;
              if (v11 || (sub_1BC8F8AA4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x44496D6973 && a2 == 0xE500000000000000;
                if (v12 || (sub_1BC8F8AA4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6165724365746164 && a2 == 0xEB00000000646574;
                  if (v13 || (sub_1BC8F8AA4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x69616D6563696F76 && a2 == 0xEB0000000044496CLL;
                    if (v14 || (sub_1BC8F8AA4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
                      if (v15 || (sub_1BC8F8AA4() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x7265646E696D6572 && a2 == 0xEC00000044495555)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1BC8F8AA4();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
    }
  }
}

unint64_t sub_1BC87FC10(char a1)
{
  result = 0x555564726F636572;
  switch(a1)
  {
    case 1:
      result = 1836020326;
      break;
    case 2:
      result = 0x646165527369;
      break;
    case 3:
      result = 0x54786F626C69616DLL;
      break;
    case 4:
      result = 0x6E65697069636572;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x697263736E617274;
      break;
    case 7:
      result = 0x44496D6973;
      break;
    case 8:
      result = 0x6165724365746164;
      break;
    case 9:
      result = 0x69616D6563696F76;
      break;
    case 10:
      result = 0x7972616D6D7573;
      break;
    case 11:
      result = 0x7265646E696D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC87FD74(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5FD0, &qword_1BC905100);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC88135C();
  sub_1BC8F8CA4();
  LOBYTE(v32) = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_21();
  sub_1BC881470(v14, v15);
  OUTLINED_FUNCTION_25_11();
  sub_1BC8F89F4();
  if (!v2)
  {
    v16 = type metadata accessor for VoicemailUpdate();
    OUTLINED_FUNCTION_51_5(v16[5]);
    LOBYTE(v32) = 1;
    OUTLINED_FUNCTION_25_11();
    sub_1BC8F8944();
    v17 = *(v3 + v16[6]);
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_19_15();
    sub_1BC8F8954();
    OUTLINED_FUNCTION_45_10(v16[7]);
    v34 = 3;
    sub_1BC7B5C78();
    OUTLINED_FUNCTION_19_15();
    sub_1BC8F8974();
    OUTLINED_FUNCTION_51_5(v16[8]);
    LOBYTE(v32) = 4;
    OUTLINED_FUNCTION_25_11();
    sub_1BC8F8944();
    OUTLINED_FUNCTION_45_10(v16[9]);
    v34 = 5;
    sub_1BC7C4F00();
    OUTLINED_FUNCTION_19_15();
    sub_1BC8F8974();
    v18 = OUTLINED_FUNCTION_51_5(v16[10]);
    v20 = *(v19 + 16);
    *&v32 = v18;
    *(&v32 + 1) = v21;
    v33 = v20;
    v34 = 6;
    sub_1BC7C52A8(v18);
    sub_1BC7C5254();
    OUTLINED_FUNCTION_19_15();
    sub_1BC8F8974();
    sub_1BC7C532C(v32);
    OUTLINED_FUNCTION_51_5(v16[11]);
    LOBYTE(v32) = 7;
    OUTLINED_FUNCTION_25_11();
    sub_1BC8F8944();
    v31[1] = v16[12];
    LOBYTE(v32) = 8;
    sub_1BC8F71E4();
    OUTLINED_FUNCTION_1_21();
    sub_1BC881470(v22, v23);
    OUTLINED_FUNCTION_25_11();
    sub_1BC8F8974();
    v24 = (v3 + v16[13]);
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 4);
    LOBYTE(v32) = 9;
    v34 = v24;
    OUTLINED_FUNCTION_19_15();
    sub_1BC8F8984();
    v26 = (v3 + v16[14]);
    v27 = *(v26 + 2);
    v32 = *v26;
    v33 = v27;
    v34 = 10;
    v28 = sub_1BC7C518C();

    OUTLINED_FUNCTION_25_11();
    sub_1BC8F8974();

    if (!v28)
    {
      v29 = v16[15];
      LOBYTE(v32) = 11;
      OUTLINED_FUNCTION_25_11();
      sub_1BC8F8974();
    }
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1BC88018C()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1BC8F7264();
  v5 = OUTLINED_FUNCTION_0(v4);
  v63 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_4();
  v62 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v64 = v14;
  v15 = sub_1BC8F71E4();
  v16 = OUTLINED_FUNCTION_0(v15);
  v60 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_4();
  v59 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - v25;
  OUTLINED_FUNCTION_0_21();
  v61 = sub_1BC881470(v27, v28);
  sub_1BC8F7B64();
  v29 = type metadata accessor for VoicemailUpdate();
  v30 = (v0 + v29[5]);
  if (v30[1])
  {
    v31 = *v30;
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_22_11();
    sub_1BC8F7CD4();
  }

  else
  {
    OUTLINED_FUNCTION_38_9();
  }

  if (*(v0 + v29[6]) != 2)
  {
    OUTLINED_FUNCTION_36_10();
  }

  sub_1BC8F8C24();
  v32 = (v0 + v29[7]);
  if (*(v32 + 2) == 1)
  {
    OUTLINED_FUNCTION_38_9();
  }

  else
  {
    v33 = *v32;
    OUTLINED_FUNCTION_36_10();
    sub_1BC8F8C34();
  }

  v34 = (v0 + v29[8]);
  if (v34[1])
  {
    v35 = *v34;
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_22_11();
    sub_1BC8F7CD4();
  }

  else
  {
    OUTLINED_FUNCTION_38_9();
  }

  v36 = (v0 + v29[9]);
  if (*(v36 + 2) == 1)
  {
    OUTLINED_FUNCTION_38_9();
  }

  else
  {
    v37 = *v36;
    OUTLINED_FUNCTION_36_10();
    sub_1BC8F8C34();
  }

  v38 = (v0 + v29[10]);
  v39 = *v38;
  if (*v38 && (v40 = v38[1], v41 = v38[2], OUTLINED_FUNCTION_36_10(), sub_1BC7DF040(v3, v39), v41))
  {
    OUTLINED_FUNCTION_36_10();
    sub_1BC8F7CD4();
  }

  else
  {
    OUTLINED_FUNCTION_38_9();
  }

  v42 = (v0 + v29[11]);
  if (v42[1])
  {
    v43 = *v42;
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_22_11();
    sub_1BC8F7CD4();
  }

  else
  {
    OUTLINED_FUNCTION_38_9();
  }

  sub_1BC7C4DAC(v0 + v29[12], v26, &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_43(v26, 1, v15);
  if (v44)
  {
    OUTLINED_FUNCTION_38_9();
  }

  else
  {
    v46 = v59;
    v45 = v60;
    (*(v60 + 32))(v59, v26, v15);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_1_21();
    sub_1BC881470(v47, v48);
    sub_1BC8F7B64();
    (*(v45 + 8))(v46, v15);
  }

  v49 = (v0 + v29[13]);
  if (*(v49 + 4) == 1)
  {
    OUTLINED_FUNCTION_38_9();
  }

  else
  {
    v50 = *v49;
    OUTLINED_FUNCTION_36_10();
    sub_1BC8F8C44();
  }

  v51 = (v0 + v29[14]);
  if (v51[2])
  {
    v53 = *v51;
    v52 = v51[1];
    OUTLINED_FUNCTION_36_10();
    MEMORY[0x1BFB2A020](v53);

    sub_1BC8F7CD4();
  }

  else
  {
    OUTLINED_FUNCTION_38_9();
  }

  v54 = v64;
  sub_1BC7C4DAC(v1 + v29[15], v64, &unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_43(v54, 1, v4);
  if (v44)
  {
    OUTLINED_FUNCTION_38_9();
  }

  else
  {
    v56 = v62;
    v55 = v63;
    v57 = *(v63 + 32);
    OUTLINED_FUNCTION_72();
    v58();
    OUTLINED_FUNCTION_36_10();
    sub_1BC8F7B64();
    (*(v55 + 8))(v56, v4);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC88065C()
{
  sub_1BC8F8C04();
  sub_1BC88018C();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC88069C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v65 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  v15 = sub_1BC8F7264();
  v16 = OUTLINED_FUNCTION_0(v15);
  v69 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v22 = v21 - v20;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5FC0, &qword_1BC9050F8);
  OUTLINED_FUNCTION_0(v68);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v72 = type metadata accessor for VoicemailUpdate();
  v28 = OUTLINED_FUNCTION_4_1(v72);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_4();
  v70 = a1;
  v71 = v31;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC88135C();
  v66 = v27;
  sub_1BC8F8C84();
  v67 = v15;
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v33 = v14;
  LOBYTE(v73) = 0;
  OUTLINED_FUNCTION_0_21();
  sub_1BC881470(v34, v35);
  sub_1BC8F88F4();
  v36 = v71;
  (*(v69 + 32))(v71, v22, v15);
  LOBYTE(v73) = 1;
  v37 = sub_1BC8F8834();
  v38 = v72;
  v39 = (v36 + v72[5]);
  *v39 = v37;
  v39[1] = v40;
  OUTLINED_FUNCTION_17_9(2);
  *(v36 + v38[6]) = sub_1BC8F8844();
  v75 = 3;
  sub_1BC7C7198();
  OUTLINED_FUNCTION_18_13();
  sub_1BC8F8864();
  v41 = BYTE2(v73);
  v42 = v36 + v38[7];
  *v42 = v73;
  *(v42 + 2) = v41;
  OUTLINED_FUNCTION_17_9(4);
  v43 = sub_1BC8F8834();
  v44 = (v36 + v38[8]);
  *v44 = v43;
  v44[1] = v45;
  v75 = 5;
  sub_1BC7C7244();
  OUTLINED_FUNCTION_18_13();
  sub_1BC8F8864();
  v46 = BYTE2(v73);
  v47 = v36 + v38[9];
  *v47 = v73;
  *(v47 + 2) = v46;
  v75 = 6;
  sub_1BC7C76BC();
  OUTLINED_FUNCTION_18_13();
  sub_1BC8F8864();
  v48 = v74;
  v49 = v36 + v38[10];
  *v49 = v73;
  *(v49 + 16) = v48;
  OUTLINED_FUNCTION_17_9(7);
  v50 = sub_1BC8F8834();
  v51 = (v36 + v38[11]);
  *v51 = v50;
  v51[1] = v52;
  sub_1BC8F71E4();
  LOBYTE(v73) = 8;
  OUTLINED_FUNCTION_1_21();
  sub_1BC881470(v53, v54);
  sub_1BC8F8864();
  sub_1BC8555B8(v33, v36 + v38[12], &unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_17_9(9);
  v55 = sub_1BC8F8874();
  v56 = v71 + v72[13];
  *v56 = v55;
  *(v56 + 4) = BYTE4(v55) & 1;
  v75 = 10;
  sub_1BC7C75C4();
  OUTLINED_FUNCTION_18_13();
  sub_1BC8F8864();
  v57 = v74;
  v58 = v71 + v72[14];
  *v58 = v73;
  *(v58 + 16) = v57;
  LOBYTE(v73) = 11;
  sub_1BC8F8864();
  v59 = OUTLINED_FUNCTION_43_9();
  v60(v59);
  v61 = v71;
  sub_1BC8555B8(v65, v71 + v72[15], &unk_1EBCF5D70, &qword_1BC8FC740);
  sub_1BC8813B0(v61, v64);
  __swift_destroy_boxed_opaque_existential_1(v70);
  return sub_1BC881414(v61);
}

uint64_t sub_1BC880E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC87F848(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC880E6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC87FC08();
  *a1 = result;
  return result;
}

uint64_t sub_1BC880E94(uint64_t a1)
{
  v2 = sub_1BC88135C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC880ED0(uint64_t a1)
{
  v2 = sub_1BC88135C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC880F44()
{
  sub_1BC8F8C04();
  sub_1BC88018C();
  return sub_1BC8F8C64();
}

uint64_t type metadata accessor for VoicemailUpdate()
{
  result = qword_1EBCF5F78;
  if (!qword_1EBCF5F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC880FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailUpdate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC881060()
{
  v0 = sub_1BC8F7264();
  if (v1 <= 0x3F)
  {
    sub_1BC881274(319, &qword_1EDC206A8);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1BC881274(319, &qword_1EBCF5F88);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_1BC881274(319, &qword_1EBCF5F90);
      if (v6 > 0x3F)
      {
        return v4;
      }

      sub_1BC881274(319, &qword_1EBCF5F98);
      if (v7 > 0x3F)
      {
        return v4;
      }

      sub_1BC881274(319, &qword_1EBCF5FA0);
      if (v8 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1BC8812C0(319, &unk_1EDC21210, MEMORY[0x1E6969530]);
        v0 = v9;
        if (v10 <= 0x3F)
        {
          sub_1BC881274(319, &qword_1EBCF5FA8);
          v0 = v11;
          if (v12 <= 0x3F)
          {
            sub_1BC881274(319, &qword_1EBCF5FB0);
            v0 = v13;
            if (v14 <= 0x3F)
            {
              sub_1BC8812C0(319, &unk_1EDC21200, MEMORY[0x1E69695A8]);
              v0 = v15;
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1BC881274(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BC8F83F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1BC8812C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC8F83F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BC88135C()
{
  result = qword_1EBCF5FC8;
  if (!qword_1EBCF5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5FC8);
  }

  return result;
}

uint64_t sub_1BC8813B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC881414(uint64_t a1)
{
  v2 = type metadata accessor for VoicemailUpdate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC881470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for VoicemailUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VoicemailUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC881620()
{
  result = qword_1EBCF5FE0;
  if (!qword_1EBCF5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5FE0);
  }

  return result;
}

unint64_t sub_1BC881678()
{
  result = qword_1EBCF5FE8;
  if (!qword_1EBCF5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5FE8);
  }

  return result;
}

unint64_t sub_1BC8816D0()
{
  result = qword_1EBCF5FF0;
  if (!qword_1EBCF5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5FF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_6()
{
  v2 = *(v0 - 240);

  return sub_1BC8037DC(v0 - 136);
}

uint64_t ContextProviderError.hashValue.getter()
{
  v1 = *v0;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC8817D4()
{
  result = qword_1EBCF5FF8;
  if (!qword_1EBCF5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5FF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BC881904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1BC8838D0(a3, v23 - v10);
  v12 = sub_1BC8F7FC4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BC7A7730(v11);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BC8F7F54();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      OUTLINED_FUNCTION_79();
      v19 = sub_1BC8F7CA4() + 32;

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
      v21 = OUTLINED_FUNCTION_11_13();

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

  return OUTLINED_FUNCTION_11_13();
}

id sub_1BC881B10()
{
  result = [*(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags) voicemailSearchEnabled];
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore + 24);
    v3 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore), v2);
    v4 = (*(v3 + 8))(v2, v3);

    return sub_1BC881C4C(v4, v5);
  }

  return result;
}

uint64_t sub_1BC881BAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_userDefaults);
  v2 = sub_1BC8F7BE4();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BC8F70D4();

  return v4;
}

uint64_t sub_1BC881C4C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_userDefaults);
  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1BC8F70C4();
  }

  v7 = sub_1BC8F7BE4();
  [v5 setObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  return sub_1BC7ECAC8(a1, a2);
}

void sub_1BC881D0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  if ([*(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags) voicemailSearchEnabled])
  {
    if (*(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_processingNotification))
    {
      if (qword_1EDC20730 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v5 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v5, qword_1EDC2B3C0);
      v13 = sub_1BC8F7714();
      v6 = sub_1BC8F8204();
      if (os_log_type_enabled(v13, v6))
      {
        v7 = OUTLINED_FUNCTION_36();
        *v7 = 0;
        _os_log_impl(&dword_1BC7A3000, v13, v6, "Already processing notification", v7, 2u);
        OUTLINED_FUNCTION_6();
      }

      v8 = v13;
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_processingNotification) = 1;
      v9 = sub_1BC8F7FC4();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v10;
      sub_1BC881904(0, 0, v4, &unk_1BC905360, v11);

      sub_1BC7A7730(v4);
    }
  }
}

void sub_1BC881EFC()
{
  if ([*(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags) voicemailSearchEnabled])
  {

    sub_1BC881D0C();
  }
}

uint64_t sub_1BC882028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1BC8F86F4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8820E8, 0, 0);
}

uint64_t sub_1BC8820E8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 64);
  sub_1BC8F8B74();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1BC8821B0;
  v3 = *(v0 + 64);

  return sub_1BC82D814();
}

uint64_t sub_1BC8821B0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v5 = sub_1BC8823A8;
  }

  else
  {
    v5 = sub_1BC882318;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BC882318()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BC882408();
  }

  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BC8823A8()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_1BC882408()
{
  v1 = v0;
  v2 = sub_1BC8F6EC4();
  OUTLINED_FUNCTION_0_5();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  sub_1BC881BAC();
  if (v11 >> 60 == 15)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v12 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v12, qword_1EDC2B3C0);
    v13 = sub_1BC8F7714();
    v14 = sub_1BC8F8204();
    if (os_log_type_enabled(v13, v14))
    {
      *OUTLINED_FUNCTION_36() = 0;
      OUTLINED_FUNCTION_19_1(&dword_1BC7A3000, v15, v16, "currentHistoryToken is nil, triggering a full reindex");
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_12_15();
  }

  else
  {
    v55 = v2;
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v17 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v17, qword_1EDC2B3C0);
    v18 = OUTLINED_FUNCTION_79();
    sub_1BC7EC5DC(v18, v19);
    v20 = sub_1BC8F7714();
    v21 = sub_1BC8F8204();
    v22 = OUTLINED_FUNCTION_79();
    sub_1BC7ECAC8(v22, v23);
    v54 = v4;
    if (os_log_type_enabled(v20, v21))
    {
      v24 = OUTLINED_FUNCTION_21_1();
      v25 = swift_slowAlloc();
      v58[0] = v25;
      *v24 = 136315138;
      v26 = OUTLINED_FUNCTION_79();
      sub_1BC7EC5DC(v26, v27);
      OUTLINED_FUNCTION_79();
      v28 = sub_1BC8F7074();
      v30 = v29;
      v31 = OUTLINED_FUNCTION_79();
      sub_1BC7ECAC8(v31, v32);
      v33 = sub_1BC7A9A4C(v28, v30, v58);

      *(v24 + 4) = v33;
      _os_log_impl(&dword_1BC7A3000, v20, v21, "Fetching contact store changes for token: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v34 = [objc_allocWithZone(MEMORY[0x1E695CD40]) init];
    v35 = OUTLINED_FUNCTION_79();
    sub_1BC883940(v35, v36, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BC8FEA90;
    v38 = *MEMORY[0x1E695C208];
    v39 = *MEMORY[0x1E695C330];
    *(v37 + 32) = *MEMORY[0x1E695C208];
    *(v37 + 40) = v39;
    v40 = v38;
    v41 = v39;
    sub_1BC883998(v37, v34);
    if (sub_1BC882A8C(v34))
    {
      v42 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore + 24);
      v43 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore), v42);
      v46 = (*(v43 + 40))(v34, v42, v43);
      *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_processingNotification) = 0;
      v47 = [v46 currentHistoryToken];
      v48 = sub_1BC8F70D4();
      v50 = v49;

      sub_1BC881C4C(v48, v50);
      v51 = [v46 value];
      sub_1BC8F81A4();

      while (1)
      {
        sub_1BC8F6EB4();
        if (!v59)
        {
          break;
        }

        sub_1BC7F0E58(v58, &v57);
        sub_1BC883A18();
        if (swift_dynamicCast())
        {
          [v56 acceptEventVisitor_];
        }
      }

      (*(v54 + 8))(v10, v55);
      v52 = OUTLINED_FUNCTION_79();
      sub_1BC7ECAC8(v52, v53);
    }

    else
    {

      v44 = OUTLINED_FUNCTION_79();

      sub_1BC7ECAC8(v44, v45);
    }
  }
}

uint64_t sub_1BC8829FC(uint64_t *a1)
{
  v2 = *a1;
  *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_processingNotification) = 0;
  type metadata accessor for SpotlightIndexManagerUtilities();
  v3 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_analyticsManager);
  v7 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_userDefaults);

  sub_1BC7E46FC(v5, &v7, v4);
}

uint64_t sub_1BC882A8C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore + 24);
  v5 = *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore), v4);
  v6 = (*(v5 + 56))(a1, v4, v5);
  v7 = [v6 value];
  v8 = [v7 integerValue];

  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v9 = sub_1BC8F7734();
  __swift_project_value_buffer(v9, qword_1EDC2B3C0);
  v10 = sub_1BC8F7714();
  v11 = sub_1BC8F8204();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_21_1();
    *v12 = 134349056;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "Contact store change count: %{public}ld", v12, 0xCu);
    OUTLINED_FUNCTION_6();
  }

  if (v8 < 101)
  {
    if (v8)
    {

      return 1;
    }

    *(v2 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_processingNotification) = 0;
    v17 = sub_1BC8F7714();
    v21 = sub_1BC8F8204();
    if (os_log_type_enabled(v17, v21))
    {
      v22 = OUTLINED_FUNCTION_36();
      *v22 = 0;
      _os_log_impl(&dword_1BC7A3000, v17, v21, "Contact store count is 0, no need to reindex", v22, 2u);
      goto LABEL_12;
    }
  }

  else
  {
    v13 = [v6 currentHistoryToken];
    v14 = sub_1BC8F70D4();
    v16 = v15;

    sub_1BC881C4C(v14, v16);
    v23 = 64;
    sub_1BC8829FC(&v23);
    v17 = sub_1BC8F7714();
    v18 = sub_1BC8F8204();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_21_1();
      *v19 = 134349056;
      *(v19 + 4) = v8;
      _os_log_impl(&dword_1BC7A3000, v17, v18, "Contact store count: %{public}ld is greater than threshold, triggering a full reindex", v19, 0xCu);
LABEL_12:
      OUTLINED_FUNCTION_6();
    }
  }

  return 0;
}

id sub_1BC882FAC()
{
  result = [*(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags) voicemailSearchEnabled];
  if (result)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v2 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3C0);
    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    if (os_log_type_enabled(v3, v4))
    {
      *OUTLINED_FUNCTION_36() = 0;
      OUTLINED_FUNCTION_19_1(&dword_1BC7A3000, v5, v6, "Handling a Drop Everything change history event");
      OUTLINED_FUNCTION_6();
    }

    v7 = 128;
    return sub_1BC8829FC(&v7);
  }

  return result;
}

void sub_1BC8830EC(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags) voicemailSearchEnabled])
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v3 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B3C0);
    v4 = sub_1BC8F7714();
    v5 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_7_15(v5))
    {
      *OUTLINED_FUNCTION_36() = 0;
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_6();
    }

    v19 = [a1 contact];
    v11 = [v19 phoneNumberLastFourDigitStrings];
    v12 = sub_1BC8F7E54();

    v13 = [v19 emailAddressStrings];
    v14 = sub_1BC8F7E54();

    sub_1BC7F3540(v14);
    if (*(v12 + 16))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1BC859344(v12, 0, 0);

        OUTLINED_FUNCTION_14_14();

        swift_unknownObjectRelease();
      }

      else
      {

        OUTLINED_FUNCTION_14_14();
      }
    }

    else
    {

      OUTLINED_FUNCTION_14_14();
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }
}

void sub_1BC883378(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags) voicemailSearchEnabled])
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v3 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B3C0);
    v4 = sub_1BC8F7714();
    v5 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_7_15(v5))
    {
      *OUTLINED_FUNCTION_36() = 0;
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_6();
    }

    v24 = [a1 contact];
    v11 = [v24 phoneNumberLastFourDigitStrings];
    v12 = sub_1BC8F7E54();

    v13 = [v24 emailAddressStrings];
    v14 = sub_1BC8F7E54();

    sub_1BC7F3540(v14);
    v15 = v12;
    if (*(v12 + 16))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = [v24 identifier];
        v17 = sub_1BC8F7C24();
        v19 = v18;

        sub_1BC859344(v15, v17, v19);

        OUTLINED_FUNCTION_14_14();

        swift_unknownObjectRelease();
      }

      else
      {

        OUTLINED_FUNCTION_14_14();
      }
    }

    else
    {

      OUTLINED_FUNCTION_14_14();
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
  }
}

id sub_1BC883638(void *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags) voicemailSearchEnabled];
  if (result)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v4 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B3C0);
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_7_15(v6))
    {
      *OUTLINED_FUNCTION_36() = 0;
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_6();
    }

    v12 = [a1 contactIdentifier];
    v13 = sub_1BC8F7C24();
    v15 = v14;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BC859344(0, v13, v15);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BC88381C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BC849DF0;

  return sub_1BC882028(a1, v4, v5, v6);
}

uint64_t sub_1BC8838D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BC883940(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BC8F70C4();
  [a3 setStartingToken_];
}

void sub_1BC883998(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF60A0, &qword_1BC905378);
  v3 = sub_1BC8F7E34();

  [a2 setAdditionalContactKeyDescriptors_];
}

unint64_t sub_1BC883A18()
{
  result = qword_1EDC1DDF8;
  if (!qword_1EDC1DDF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC1DDF8);
  }

  return result;
}

uint64_t sub_1BC883A74(uint64_t a1)
{
  v2 = sub_1BC883BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC883AB0(uint64_t a1)
{
  v2 = sub_1BC883BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC883AEC(uint64_t a1)
{
  v2 = sub_1BC7B9B24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC883B28(uint64_t a1)
{
  v2 = sub_1BC7B9B24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC883B64(uint64_t a1)
{
  v2 = sub_1BC7B9B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC883BA0(uint64_t a1)
{
  v2 = sub_1BC7B9B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC883BDC()
{
  result = qword_1EBCF60C8;
  if (!qword_1EBCF60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF60C8);
  }

  return result;
}

uint64_t MessageSortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC883CB4()
{
  result = qword_1EBCF60E8;
  if (!qword_1EBCF60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF60E8);
  }

  return result;
}

unint64_t sub_1BC883D0C()
{
  result = qword_1EBCF60F0;
  if (!qword_1EBCF60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF60F0);
  }

  return result;
}

FaceTimeMessageStore::Summary __swiftcall Summary.init(version:text:)(Swift::Int version, Swift::String text)
{
  *v2 = version;
  *(v2 + 8) = text;
  result.text = text;
  result.version = version;
  return result;
}

uint64_t Summary.text.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static Summary.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1BC8F8AA4();
  }
}

uint64_t sub_1BC883DF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC883EBC(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1BC883EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC883DF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC883F1C(uint64_t a1)
{
  v2 = sub_1BC8840FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC883F58(uint64_t a1)
{
  v2 = sub_1BC8840FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Summary.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF60F8, &qword_1BC905730);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - v10;
  v13 = *v1;
  v12 = v1[1];
  v16[0] = v1[2];
  v16[1] = v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8840FC();
  sub_1BC8F8CA4();
  v18 = 0;
  sub_1BC8F89D4();
  if (!v2)
  {
    v17 = 1;
    sub_1BC8F89A4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1BC8840FC()
{
  result = qword_1EBCF6100;
  if (!qword_1EBCF6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6100);
  }

  return result;
}

uint64_t Summary.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB2A020](*v0);

  return sub_1BC8F7CD4();
}

uint64_t Summary.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  sub_1BC8F7CD4();
  return sub_1BC8F8C64();
}

uint64_t Summary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6108, &qword_1BC905738);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8840FC();
  sub_1BC8F8C84();
  if (!v2)
  {
    v21 = 0;
    v14 = sub_1BC8F88D4();
    v20 = 1;
    v16 = sub_1BC8F88A4();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BC8843DC()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1BC8F8C04();
  Summary.hash(into:)();
  return sub_1BC8F8C64();
}

unint64_t sub_1BC884430()
{
  result = qword_1EBCF6110;
  if (!qword_1EBCF6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6110);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Summary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC884568()
{
  result = qword_1EBCF6118;
  if (!qword_1EBCF6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6118);
  }

  return result;
}

unint64_t sub_1BC8845C0()
{
  result = qword_1EBCF6120;
  if (!qword_1EBCF6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6120);
  }

  return result;
}

unint64_t sub_1BC884618()
{
  result = qword_1EBCF6128;
  if (!qword_1EBCF6128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6128);
  }

  return result;
}

uint64_t sub_1BC88466C()
{
  v1 = v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_lockedValues;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_lockedValues));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1BC8846BC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_lockedValues;
  os_unfair_lock_lock(v5);
  *(v5 + 8) = a1;
  *(v5 + 16) = a2 & 1;

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1BC88471C()
{
  v1 = v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_lockedValues;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_lockedValues));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1BC884770(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_lockedValues;
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 32);
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1BC8847D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BC800BD8();
}

uint64_t sub_1BC8847F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BC7CCF94();
  *a2 = result;
  return result;
}

uint64_t sub_1BC884824@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC7CCFE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BC884858@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7CCF94();
  *a1 = result;
  return result;
}

uint64_t sub_1BC884880(uint64_t a1)
{
  v2 = sub_1BC885508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8848BC(uint64_t a1)
{
  v2 = sub_1BC885508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8848F8()
{
  sub_1BC88466C();
  if ((v1 & 1) == 0)
  {
    sandbox_extension_release();
    sub_1BC8846BC(0, 1);
  }

  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_fileURL;
  v3 = sub_1BC8F7014();
  OUTLINED_FUNCTION_42(v3);
  (*(v4 + 8))(v0 + v2);
  sub_1BC7F1790(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_lockedValues + 8, &qword_1EBCF6168, &qword_1BC905A50);
  return v0;
}

uint64_t sub_1BC884988()
{
  sub_1BC8848F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for SandboxURL()
{
  result = qword_1EBCF6130;
  if (!qword_1EBCF6130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC884A34()
{
  result = sub_1BC8F7014();
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

uint64_t sub_1BC884ACC(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1BC884B1C(a1);
  return v5;
}

void *sub_1BC884B1C(uint64_t *a1)
{
  v3 = v1;
  v41 = *v3;
  v42 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v9 = sub_1BC8F7014();
  v10 = OUTLINED_FUNCTION_0(v9);
  v39 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6160, &qword_1BC905A48);
  v17 = OUTLINED_FUNCTION_0(v16);
  v40 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v39 - v21;
  v43 = v3;
  v44 = a1;
  v23 = v3 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_lockedValues;
  *v23 = 0;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v23[16] = 1;
  *(v23 + 4) = 0;
  *(v23 + 1) = 0;
  v24 = (v23 + 8);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC885508();
  v26 = v42;
  sub_1BC8F8C84();
  if (!v26)
  {
    v27 = v40;
    v47 = 1;
    OUTLINED_FUNCTION_1_22();
    sub_1BC8F88A4();
    v42 = v16;
    sub_1BC8F6FE4();

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      v33 = v39;
      (*(v39 + 32))(v15, v8, v9);
      v29 = v43;
      (*(v33 + 16))(v43 + OBJC_IVAR____TtC20FaceTimeMessageStore10SandboxURL_fileURL, v15, v9);
      v46 = 0;
      v34 = v42;
      OUTLINED_FUNCTION_1_22();
      v35 = sub_1BC8F8834();
      sub_1BC884770(v35, v36);
      v45 = 2;
      OUTLINED_FUNCTION_1_22();
      v37 = sub_1BC8F8884();
      sub_1BC8846BC(v37, v38 & 1);
      (*(v33 + 8))(v15, v9);
      (*(v27 + 8))(v22, v34);
      goto LABEL_5;
    }

    sub_1BC7F1790(v8, &qword_1EBCF5A20, &qword_1BC901BF0);
    sub_1BC8855A4();
    swift_allocError();
    *v28 = 0x5564696C61766E69;
    v28[1] = 0xEA00000000004C52;
    swift_willThrow();
    (*(v27 + 8))(v22, v42);
  }

  v29 = v43;
  sub_1BC7F1790(v24, &qword_1EBCF6168, &qword_1BC905A50);
  v30 = *(*v29 + 48);
  v31 = *(*v29 + 52);
  swift_deallocPartialClassInstance();
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v29;
}

uint64_t sub_1BC884F7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6150, &unk_1BC905A38);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC885508();
  sub_1BC8F8CA4();
  sub_1BC8F6EF4();
  v15[15] = 1;
  sub_1BC8F89A4();
  if (v1)
  {
    (*(v6 + 8))(v10, v3);
  }

  else
  {

    sub_1BC88471C();
    if (v13)
    {
      v15[13] = 0;
      sub_1BC8F89A4();
    }

    sub_1BC88466C();
    if ((v14 & 1) == 0)
    {
      v15[14] = 2;
      sub_1BC8F8A04();
    }

    return (*(v6 + 8))(v10, v3);
  }
}

uint64_t sub_1BC885154()
{
  if ((sub_1BC8F6FA4() & 1) == 0)
  {
    goto LABEL_4;
  }

  v0 = sub_1BC88466C();
  v2 = v1;
  v3 = sub_1BC88466C();
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
LABEL_4:
      v5 = 0;
      return v5 & 1;
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 1) != 0 || v0 != v3)
    {
      return v5 & 1;
    }
  }

  v6 = sub_1BC88471C();
  v8 = v7;
  v9 = sub_1BC88471C();
  if (v8)
  {
    if (v10)
    {
      if (v6 == v9 && v8 == v10)
      {

        v5 = 1;
      }

      else
      {
        v5 = sub_1BC8F8AA4();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v10)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1BC885268()
{
  sub_1BC8F7014();
  sub_1BC88555C(&qword_1EBCF5CE0, MEMORY[0x1E6968FB0]);
  sub_1BC8F7B64();
  v0 = sub_1BC88466C();
  if (v1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    v2 = v0;
    sub_1BC8F8C24();
    MEMORY[0x1BFB2A060](v2);
  }

  sub_1BC88471C();
  if (!v3)
  {
    return sub_1BC8F8C24();
  }

  sub_1BC8F8C24();
  sub_1BC8F7CD4();
}

uint64_t sub_1BC885384()
{
  sub_1BC8F8C04();
  sub_1BC885268();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8853C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC884ACC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BC88545C()
{
  v1 = *v0;
  sub_1BC8F8C04();
  sub_1BC885268();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC88549C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BC885154() & 1;
}

unint64_t sub_1BC885508()
{
  result = qword_1EBCF6158;
  if (!qword_1EBCF6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6158);
  }

  return result;
}

uint64_t sub_1BC88555C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC8855A4()
{
  result = qword_1EBCF6170;
  if (!qword_1EBCF6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6170);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SandboxURL.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8856D8()
{
  result = qword_1EBCF6178;
  if (!qword_1EBCF6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6178);
  }

  return result;
}

unint64_t sub_1BC885730()
{
  result = qword_1EBCF6180;
  if (!qword_1EBCF6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6180);
  }

  return result;
}

unint64_t sub_1BC885788()
{
  result = qword_1EBCF6188;
  if (!qword_1EBCF6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6188);
  }

  return result;
}

unint64_t MessageStoreFetchRequest.init(sortedQuery:options:pageSize:page:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  if ((v9 & 4) != 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v11 = *a1;
  }

  if ((v9 & 4) != 0)
  {
    v12 = *a1 & 0x1FF;
  }

  else
  {
    v12 = 512;
  }

  sub_1BC7A5AB4(v11);
  sub_1BC8F7254();
  Request = type metadata accessor for MessageStoreFetchRequest();
  *(a5 + Request[5]) = v11;
  *(a5 + Request[6]) = v12;
  *(a5 + Request[7]) = v10;
  v14 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v16 = v15;
  result = sub_1BC80157C(v8, v9);
  v18 = (a5 + Request[8]);
  *v18 = v14;
  v18[1] = v16;
  *(a5 + Request[9]) = a3;
  *(a5 + Request[10]) = a4;
  return result;
}

uint64_t MessageStoreFetchRequest.QuerySearchType.description.getter()
{
  v1 = *v0;
  if ((*v0 & 0xFF00) == 0x200)
  {
    return 0x6574726F736E752ELL;
  }

  BYTE8(v4) = 0;
  sub_1BC8F85A4();
  OUTLINED_FUNCTION_6_17();
  sub_1BC7F173C();
  v3 = sub_1BC8F8A54();
  MEMORY[0x1BFB29120](v3);

  OUTLINED_FUNCTION_9_13();
  *&v4 = HIBYTE(v1) & 1;
  sub_1BC8F8714();
  MEMORY[0x1BFB29120](41, 0xE100000000000000);
  return *(&v4 + 1);
}

BOOL static MessageStoreFetchRequest.QuerySearchType.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a2 & 0xFF00;
  if ((*a1 & 0xFF00) == 0x200)
  {
    return v4 == 512;
  }

  if (v4 == 512)
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2;
  return (sub_1BC800DDC() & 1) != 0 && ((v3 ^ v2) & 0x100) == 0;
}

uint64_t sub_1BC885A24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC885B00(uint64_t a1)
{
  v2 = sub_1BC7B49EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC885B3C(uint64_t a1)
{
  v2 = sub_1BC7B49EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC885B78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BC8F8C04();
  a4(v8, v6);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC885BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC885A24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC885BEC(uint64_t a1)
{
  v2 = sub_1BC7B8574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC885C28(uint64_t a1)
{
  v2 = sub_1BC7B8574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC885C64(uint64_t a1)
{
  v2 = sub_1BC7B4A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC885CA0(uint64_t a1)
{
  v2 = sub_1BC7B4A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageStoreFetchRequest.QuerySearchType.hash(into:)()
{
  v1 = *v0;
  if ((v1 & 0xFF00) == 0x200)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1BFB2A020](1);
    MessageKey.rawValue.getter();
    OUTLINED_FUNCTION_9_1();

    v2 = (v1 >> 8) & 1;
  }

  return MEMORY[0x1BFB2A020](v2);
}

uint64_t MessageStoreFetchRequest.QuerySearchType.hashValue.getter()
{
  v1 = *v0;
  sub_1BC8F8C04();
  v2 = 0;
  if ((v1 & 0xFF00) != 0x200)
  {
    MEMORY[0x1BFB2A020](1);
    MessageKey.rawValue.getter();
    sub_1BC8F7CD4();

    v2 = (v1 >> 8) & 1;
  }

  MEMORY[0x1BFB2A020](v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC885DF8()
{
  v1 = *v0;
  sub_1BC8F8C04();
  if ((v1 & 0xFF00) == 0x200)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1BFB2A020](1);
    MessageKey.rawValue.getter();
    sub_1BC8F7CD4();

    v2 = (v1 >> 8) & 1;
  }

  MEMORY[0x1BFB2A020](v2);
  return sub_1BC8F8C64();
}

unint64_t MessageStoreFetchRequest.query.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for MessageStoreFetchRequest() + 20));
  *a1 = v3;

  return sub_1BC7A5AB4(v3);
}

uint64_t MessageStoreFetchRequest.sortType.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for MessageStoreFetchRequest();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MessageStoreFetchRequest.options.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for MessageStoreFetchRequest();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MessageStoreFetchRequest.originatingBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageStoreFetchRequest() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

BOOL static MessageStoreFetchRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BC8F7234() & 1) == 0)
  {
    return 0;
  }

  Request = type metadata accessor for MessageStoreFetchRequest();
  v5 = Request[5];
  v6 = *(a1 + v5);
  v20 = *(a2 + v5);
  v21 = v6;
  sub_1BC7A5AB4(v6);
  sub_1BC7A5AB4(v20);
  v7 = static MessageStoreQuery.== infix(_:_:)(&v21, &v20);
  sub_1BC7B0EFC(v20);
  sub_1BC7B0EFC(v21);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = Request[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  v11 = v10 & 0xFF00;
  if ((v9 & 0xFF00) == 0x200)
  {
    if (v11 != 512)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 512)
    {
      return 0;
    }

    v12 = sub_1BC800DDC();
    result = 0;
    if ((v12 & 1) == 0 || ((v10 ^ v9) & 0x100) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_10_20(Request[7]);
  if (!v19)
  {
    return 0;
  }

  v14 = Request[8];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }

    v19 = *v15 == *v17 && v16 == v18;
    if (!v19 && (sub_1BC8F8AA4() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (v18)
  {
    return 0;
  }

LABEL_20:
  OUTLINED_FUNCTION_10_20(Request[9]);
  if (!v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_10_20(Request[10]);
  return v19;
}

uint64_t sub_1BC886118(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6570795474726F73 && a2 == 0xE800000000000000;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001BC90D480 == a2;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x657A695365676170 && a2 == 0xE800000000000000;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1701273968 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1BC8F8AA4();

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

uint64_t sub_1BC886344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC886118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC88636C(uint64_t a1)
{
  v2 = sub_1BC7B22F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8863A8(uint64_t a1)
{
  v2 = sub_1BC7B22F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageStoreFetchRequest.hash(into:)(uint64_t a1)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_22();
  sub_1BC7AAB5C(v3, v4);
  sub_1BC8F7B64();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v11 = *(v1 + Request[5]);
  MessageStoreQuery.hash(into:)(a1);
  v6 = 0;
  v7 = *(v1 + Request[6]);
  if ((v7 & 0xFF00) != 0x200)
  {
    MEMORY[0x1BFB2A020](1);
    MessageKey.rawValue.getter();
    OUTLINED_FUNCTION_9_1();

    v6 = (v7 >> 8) & 1;
  }

  MEMORY[0x1BFB2A020](v6);
  MEMORY[0x1BFB2A020](*(v1 + Request[7]));
  v8 = (v1 + Request[8]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1BC8F8C24();
    sub_1BC8F7CD4();
  }

  else
  {
    sub_1BC8F8C24();
  }

  MEMORY[0x1BFB2A020](*(v1 + Request[9]));
  return MEMORY[0x1BFB2A020](*(v1 + Request[10]));
}

uint64_t MessageStoreFetchRequest.hashValue.getter()
{
  sub_1BC8F8C04();
  MessageStoreFetchRequest.hash(into:)(v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC886580()
{
  sub_1BC8F8C04();
  MessageStoreFetchRequest.hash(into:)(v1);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC8865C4()
{
  result = qword_1EBCF61D0;
  if (!qword_1EBCF61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF61D0);
  }

  return result;
}

uint64_t sub_1BC88666C(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BC886694()
{
  result = qword_1EBCF61E0;
  if (!qword_1EBCF61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF61E0);
  }

  return result;
}

unint64_t sub_1BC8866EC()
{
  result = qword_1EBCF61E8;
  if (!qword_1EBCF61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF61E8);
  }

  return result;
}

unint64_t sub_1BC886744()
{
  result = qword_1EBCF61F0;
  if (!qword_1EBCF61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF61F0);
  }

  return result;
}

unint64_t sub_1BC886798()
{
  result = qword_1EDC1DE28;
  if (!qword_1EDC1DE28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC1DE28);
  }

  return result;
}

uint64_t ManateeSupport.name.getter(uint64_t a1)
{
  result = 0x74726F707075732ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6E776F6E6B6E752ELL;
      break;
    default:
      result = sub_1BC8F8B04();
      __break(1u);
      break;
  }

  return result;
}

unint64_t ManateeSupport.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BC8868CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ManateeSupport.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AccountInfo.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1BC886A90(a1, v8);
  if (!v9)
  {
    sub_1BC803774(v8);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    return v5 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_accountStatus) != *&v7[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_accountStatus] || *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_deviceToDeviceEncryption) != *&v7[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_deviceToDeviceEncryption])
  {

    goto LABEL_8;
  }

  v3 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_hasValidCredentials);
  v4 = v7[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_hasValidCredentials];

  v5 = v3 ^ v4 ^ 1;
  return v5 & 1;
}

uint64_t sub_1BC886A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E50, &qword_1BC8FE850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id AccountInfo.init(accountStatus:deviceToDeviceEncryption:hasValidCredentials:)()
{
  OUTLINED_FUNCTION_1_23();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_accountStatus] = v3;
  *&v1[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_deviceToDeviceEncryption] = v2;
  v1[OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_hasValidCredentials] = v0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t AccountInfo.description.getter()
{
  sub_1BC8F85A4();
  OUTLINED_FUNCTION_4_14();
  v1 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_accountStatus);
  v2 = AccountStatus.name.getter();
  MEMORY[0x1BFB29120](v2);

  MEMORY[0x1BFB29120](0xD00000000000001DLL, 0x80000001BC90D500);
  v3 = ManateeSupport.name.getter(*(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_deviceToDeviceEncryption));
  MEMORY[0x1BFB29120](v3);

  OUTLINED_FUNCTION_4_14();
  if (*(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_hasValidCredentials))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore11AccountInfo_hasValidCredentials))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1BFB29120](v4, v5);

  MEMORY[0x1BFB29120](32010, 0xE200000000000000);
  return 0;
}

id AccountInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}