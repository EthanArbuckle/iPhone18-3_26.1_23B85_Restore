uint64_t sub_1BC85CEAC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC85CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_91();
  v15 = *(v14 + 105);
  v16 = *(v14 + 72);
  v17 = *(v14 + 16);
  sub_1BC85E8D4();
  if (v15 == 1)
  {
    v18 = *(v14 + 80);
    v19 = sub_1BC8F7714();
    v20 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v20))
    {
      v21 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v21);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v27 = *(v14 + 88);

    v28 = sub_1BC8F7BE4();
    [v27 setInteger:8 forKey:v28];
  }

  if (*(v14 + 104) == 1)
  {
    v29 = *(v14 + 80);
    v30 = sub_1BC8F7714();
    v31 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v31))
    {
      v32 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v32);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    v38 = *(v14 + 88);

    v39 = sub_1BC8F7BE4();
    [v38 setInteger:0 forKey:v39];
  }

  v40 = *(v14 + 88);
  v41 = *(v14 + 64);
  v42 = *(v14 + 48);
  v43 = *(v14 + 56);
  v44 = *(v14 + 32);
  v45 = *(v14 + 40);
  v46 = *(v14 + 24);
  v65 = *(v14 + 16);
  v66 = *(v14 + 72);
  sub_1BC8F7284();
  sub_1BC8F7274();
  (*(v44 + 8))(v45, v46);
  v47 = sub_1BC8F7BE4();

  OUTLINED_FUNCTION_31_0();
  v48 = sub_1BC8F7BE4();
  [v40 setObject:v47 forKey:v48];

  sub_1BC8F71D4();
  v49 = sub_1BC8F7174();
  v50 = *(v43 + 8);
  v50(v41, v42);
  v51 = sub_1BC8F7BE4();
  [v40 setObject:v49 forKey:v51];

  v52 = *(v65 + 128);
  sub_1BC881B10();
  v50(v66, v42);
  v54 = *(v14 + 64);
  v53 = *(v14 + 72);
  v55 = *(v14 + 40);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_62_1();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, v65, v66, a12, a13, a14);
}

uint64_t sub_1BC85D254()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  v1[9] = OUTLINED_FUNCTION_47_3();
  v5 = sub_1BC8F7264();
  v1[10] = v5;
  OUTLINED_FUNCTION_26(v5);
  v1[11] = v6;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v1[14] = Request;
  OUTLINED_FUNCTION_25(Request);
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_47_3();
  v12 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BC85D35C()
{
  OUTLINED_FUNCTION_71();
  v29 = v0;
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1BC8F7734();
  v0[16] = __swift_project_value_buffer(v1, qword_1EDC2B3C0);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v3))
  {
    v4 = OUTLINED_FUNCTION_21_1();
    v5 = OUTLINED_FUNCTION_28();
    v28 = v5;
    *v4 = 136446210;
    OUTLINED_FUNCTION_31_0();
    *(v4 + 4) = sub_1BC7A9A4C(0xD000000000000013, v6, &v28);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_18_12();
  }

  v12 = [*(v0[8] + 104) voicemailSearchEnabled];
  v13 = v0[15];
  if (!v12)
  {
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[9];
    v25 = v0[15];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_48_4();

    __asm { BRAA            X1, X16 }
  }

  v14 = v0[14];
  v15 = v0[8];
  OUTLINED_FUNCTION_21_4();
  *(swift_allocObject() + 16) = &unk_1F3B36988;
  OUTLINED_FUNCTION_21_4();
  *(swift_allocObject() + 16) = &unk_1F3B369B0;
  OUTLINED_FUNCTION_21_4();
  v0[17] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v16 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_70_1(v16, xmmword_1BC8FEAA0);
  sub_1BC8F7254();
  OUTLINED_FUNCTION_43_6();
  v17 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  OUTLINED_FUNCTION_54_4(v17, v18);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_1BC85D5E0;
  OUTLINED_FUNCTION_28_9(v0[15]);
  OUTLINED_FUNCTION_48_4();

  return sub_1BC7BF034();
}

uint64_t sub_1BC85D5E0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v1;
  *(v2 + 152) = v6;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC85DA94()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 136);

  v2 = *(v0 + 160);
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC85DB1C()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *(v2 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v7 = v6;
  *(v9 + 184) = v8;
  *(v9 + 192) = v0;

  v10 = *(v2 + 168);

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC85DC44()
{
  OUTLINED_FUNCTION_22_0();
  if (*(v0[23] + 16))
  {
    v1 = v0[24];
    v2 = v0[16];
    v3 = sub_1BC855A68(v0[23]);
    v0[25] = v3;

    v4 = sub_1BC8F7714();
    v5 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_20_8(v5))
    {
      v6 = OUTLINED_FUNCTION_21_1();
      *v6 = 134349056;
      *(v6 + 4) = sub_1BC7C0454(v3);

      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }

    v19 = *__swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
    v20 = swift_task_alloc();
    v0[26] = v20;
    *v20 = v0;
    OUTLINED_FUNCTION_15_9(v20);

    return sub_1BC815FC8();
  }

  else
  {
    v12 = v0[17];
    sub_1BC7ADC24(v0[15]);

    v13 = v0[15];
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[9];

    OUTLINED_FUNCTION_27();

    return v17();
  }
}

uint64_t sub_1BC85DE0C()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *(v2 + 208);
  *v4 = *v1;
  *(v3 + 216) = v0;

  v6 = *(v2 + 200);

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC85DF34()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[16];
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_72_1(v3);
  v5 = v0[17];
  v6 = v0[15];
  if (v4)
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_42_9();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v12 = v0[17];
  }

  sub_1BC7ADC24(v6);
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[9];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1BC85E02C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 136);

  v2 = *(v0 + 216);
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC85E0B4()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 136);

  v2 = *(v0 + 192);
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC85E13C(uint64_t (*a1)(void))
{
  sub_1BC861468(v5);
  v3 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
  LOBYTE(a1) = a1(*(v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(v5);
  return a1 & 1;
}

uint64_t sub_1BC85E19C()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  Request = type metadata accessor for MessageStoreFetchRequest();
  v1[3] = Request;
  OUTLINED_FUNCTION_25(Request);
  v4 = *(v3 + 64);
  v1[4] = OUTLINED_FUNCTION_47_3();
  v5 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC85E218()
{
  OUTLINED_FUNCTION_22_0();
  v1 = [*(v0[2] + 104) voicemailSearchEnabled];
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[2];
    v4 = v0[3];
    OUTLINED_FUNCTION_21_4();
    *(swift_allocObject() + 16) = &unk_1F3B36908;
    OUTLINED_FUNCTION_21_4();
    *(swift_allocObject() + 16) = &unk_1F3B36930;
    OUTLINED_FUNCTION_21_4();
    v0[5] = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
    v5 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_70_1(v5, xmmword_1BC8FEAA0);
    sub_1BC8F7254();
    OUTLINED_FUNCTION_43_6();
    v6 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    OUTLINED_FUNCTION_54_4(v6, v7);
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_1BC85E3B8;
    OUTLINED_FUNCTION_28_9(v0[4]);

    return sub_1BC7BF034();
  }

  else
  {
    v10 = v0[4];

    OUTLINED_FUNCTION_27();

    return v11();
  }
}

uint64_t sub_1BC85E3B8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC85E4B8()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = v0[7];
  v2 = sub_1BC8F7734();
  v0[9] = __swift_project_value_buffer(v2, qword_1EDC2B3C0);

  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_21(v4))
  {
    v5 = OUTLINED_FUNCTION_21_1();
    v6 = OUTLINED_FUNCTION_100_0(v5, 3.9122e-34);
    OUTLINED_FUNCTION_78_2(v6);

    OUTLINED_FUNCTION_10_3(&dword_1BC7A3000, v7, v8, "Indexing %{public}ld messages");
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v9 = v0[7];
  }

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1BC85E70C;
  v11 = v0[2];
  v12 = OUTLINED_FUNCTION_28_9(v0[7]);

  return sub_1BC856984(v12);
}

uint64_t sub_1BC85E5F8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20730 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B3C0);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F81E4();
  v4 = OUTLINED_FUNCTION_72_1(v3);
  v5 = v0[8];
  v6 = v0[5];
  if (v4)
  {
    *OUTLINED_FUNCTION_36() = 0;
    OUTLINED_FUNCTION_42_9();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v12 = v0[5];
  }

  sub_1BC7ADC24(v0[4]);
  v13 = v0[4];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BC85E70C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC85E80C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[9];
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_20_8(v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_118(v6);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v12 = v0[5];
  }

  sub_1BC7ADC24(v0[4]);
  v13 = v0[4];

  OUTLINED_FUNCTION_27();

  return v14();
}

uint64_t sub_1BC85E8D4()
{
  v1 = v0;
  type metadata accessor for SpotlightIndexManagerUtilities();
  static SpotlightIndexManagerUtilities.voicemailsDeferredReindexingReason(defaults:)(0, &v11);
  if ((static SpotlightIndexManagerUtilities.voicemailsNeedIndexingDueToVersionMismatch(defaults:)(0) & 1) != 0 && (v11 & 2) == 0)
  {
    v11 |= 2uLL;
  }

  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B3C0);
  v3 = v11;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Finished Reindexing voicemail for reasons: %ld", v6, 0xCu);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
  }

  v7 = *(v1 + 160);
  swift_beginAccess();
  v10 = v11;

  sub_1BC8F7194();
  sub_1BC7E5254(v7, &v10, 0, -v8);
}

uint64_t sub_1BC85EA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v6 = sub_1BC7C0454(a1);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      v14 = v2[10];
      v15 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v14);
      v16 = (*(v15 + 16))(v5, a2, v14, v15);

      return v16;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB29A00](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = sub_1BC7C83A8();
    if (v10)
    {
      v11 = v10;
      MEMORY[0x1BFB29230]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      sub_1BC8F7ED4();

      v5 = v27;
    }

    v12 = sub_1BC7C7E54();
    if (v12)
    {
      v13 = v12;
      MEMORY[0x1BFB29230]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      sub_1BC8F7ED4();

      v5 = v27;
    }

    else
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  swift_once();
  v17 = sub_1BC8F7734();
  __swift_project_value_buffer(v17, qword_1EDC2B3C0);
  v18 = v2;
  v19 = sub_1BC8F7714();
  v20 = sub_1BC8F81E4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v3;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1BC7A3000, v19, v20, "Failed to fetch contacts by handle: %@", v21, 0xCu);
    sub_1BC862F74(v22, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v22, -1, -1);
    MEMORY[0x1BFB2AA50](v21, -1, -1);
  }

  sub_1BC7D9730(0, &qword_1EDC1DD30, 0x1E69D8C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E00, &qword_1BC9041D8);
  sub_1BC863030();
  v16 = sub_1BC8F7AD4();

  return v16;
}

void sub_1BC85EDC0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v90 = a5;
  v80 = a4;
  v92 = a3;
  v7 = sub_1BC8F7264();
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v89 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v88 = &v79 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v79 - v16;
  v85 = sub_1BC8F7014();
  v82 = *(v85 - 8);
  v18 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  sub_1BC85F5CC();
  v22 = v21;
  v23 = sub_1BC7C83A8();
  v91 = v20;
  if (!v23)
  {
    LODWORD(v84) = 0;
    goto LABEL_14;
  }

  v24 = v23;
  v25 = a2;
  v26 = sub_1BC8E7370(v23, a2);
  if (v26)
  {
    v27 = v26;
    if (sub_1BC7C0454(v26))
    {
      sub_1BC8E2358(0, (v27 & 0xC000000000000001) == 0, v27);
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1BFB29A00](0, v27);
      }

      else
      {
        v28 = *(v27 + 32);
      }

      v29 = v28;

      LODWORD(v84) = 0;
      goto LABEL_10;
    }
  }

  v29 = 0;
  LODWORD(v84) = 1;
LABEL_10:
  v30 = sub_1BC85FD38(v24, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC904010;
  *(v31 + 32) = v30;
  v32 = v30;
  sub_1BC8627FC();
  sub_1BC862874(v32, &selRef_displayName);
  if (v33)
  {
    v34 = sub_1BC8F7BE4();
  }

  else
  {
    v34 = 0;
  }

  [v22 setTitle_];

  v20 = v91;
  a2 = v25;
LABEL_14:
  v35 = sub_1BC7C7E54();
  if (!v35)
  {
    goto LABEL_23;
  }

  v36 = v35;
  v37 = sub_1BC8E7370(v35, a2);
  if (v37)
  {
    v38 = v37;
    if (sub_1BC7C0454(v37))
    {
      sub_1BC8E2358(0, (v38 & 0xC000000000000001) == 0, v38);
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1BFB29A00](0, v38);
      }

      else
      {
        v39 = *(v38 + 32);
      }

      v40 = v39;
      v20 = v91;

      goto LABEL_22;
    }
  }

  v40 = 0;
LABEL_22:
  v41 = sub_1BC85FD38(v36, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BC904010;
  *(v42 + 32) = v41;
  sub_1BC8627FC();

LABEL_23:
  v43 = *(v92 + 120);
  v44 = (v20 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];

  v47 = sub_1BC8F7BE4();

  v48 = [v43 providerWithIdentifier_];

  if (v48)
  {
    sub_1BC862874(v48, &selRef_bundleIdentifier);
    if (v49)
    {
      v50 = sub_1BC8F7BE4();
    }

    else
    {
      v50 = 0;
    }

    [v22 setRelatedAppBundleIdentifier_];
  }

  if (v84)
  {
    v51 = *v44 == 0xD000000000000017 && 0x80000001BC90BE40 == v44[1];
    if (v51 || (sub_1BC8F8AA4() & 1) != 0)
    {
      v52 = v22;
      v53 = v80;
      MEMORY[0x1BFB29230]();
      sub_1BC8ABF08(*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1BC8F7ED4();
    }
  }

  sub_1BC85FFA0(v20, v17);
  v54 = v85;
  if (__swift_getEnumTagSinglePayload(v17, 1, v85) == 1)
  {
    sub_1BC862F74(v17, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {
    v55 = v81;
    v56 = v82;
    (*(v82 + 32))(v81, v17, v54);
    v57 = sub_1BC8F6F44();
    [v22 setPhoneCallBackURL_];

    (*(v56 + 8))(v55, v54);
  }

  v58 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  v59 = v91;
  swift_beginAccess();
  v60 = v86;
  v61 = v87;
  v92 = *(v87 + 16);
  (v92)(v86, v59 + v58, v7);
  v62 = sub_1BC8F7204();
  v84 = v63;
  v85 = v62;
  v87 = *(v61 + 8);
  (v87)(v60, v7);
  v64 = sub_1BC862874(v22, &selRef_title);
  if (v65)
  {
    v66 = v64;
  }

  else
  {
    v66 = 0;
  }

  v86 = v66;
  sub_1BC8F7AD4();
  v83 = v22;
  sub_1BC8F8324();

  v67 = v88;
  v68 = v92;
  (v92)(v88, v59 + v58, v7);
  v69 = sub_1BC8F7204();
  v86 = v70;
  v71 = v87;
  (v87)(v67, v7);
  v72 = v59 + v58;
  v73 = v89;
  v68(v89, v72, v7);
  v74 = sub_1BC8F7204();
  v76 = v75;
  v71(v73, v7);
  objc_allocWithZone(MEMORY[0x1E6964E80]);
  v77 = v83;
  v78 = sub_1BC862414(v69, v86, v74, v76, v77);
  [v78 setUpdateListenerOptions_];

  *v90 = v78;
}

void sub_1BC85F5CC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v2 = sub_1BC8F71E4();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  v8 = [objc_allocWithZone(MEMORY[0x1E6964E90]) init];
  sub_1BC86279C();
  v9 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_17_1();
  v10 = *(v5 + 16);
  v10(v0, v0 + v9, v2);
  v11 = sub_1BC8F7174();
  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v14 = OUTLINED_FUNCTION_40();
  v13(v14);
  [v8 setContentCreationDate_];

  v10(v0, v0 + v9, v2);
  v15 = sub_1BC8F7174();
  v16 = OUTLINED_FUNCTION_40();
  v13(v16);
  [v8 setLastUsedDate_];

  v17 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_17_1();
  v19 = *v17;
  v18 = v17[1];

  sub_1BC86279C();
  v20 = sub_1BC7C83A8();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 type];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v12 = OUTLINED_FUNCTION_55();
    *(v12 + 16) = xmmword_1BC8FC230;
    if (v22 == 2)
    {
      v84 = xmmword_1BC8FC230;
      v23 = [v21 value];
      v24 = sub_1BC8F7C24();
      v26 = v25;

      *(v12 + 32) = v24;
      *(v12 + 40) = v26;
      sub_1BC86273C();
      sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
      v27 = sub_1BC8F8374();
      [v8 setSupportsPhoneCall_];

      v28 = sub_1BC8605F0();
      v30 = v29;
      v31 = sub_1BC87C8D8(v21);
      v33 = sub_1BC8611A4(v28, v30, v31, v32);
      v35 = v34;

      v12 = OUTLINED_FUNCTION_55();
      *(v12 + 16) = v84;
      *(v12 + 32) = v33;
    }

    else
    {
      v36 = sub_1BC8605F0();
      v35 = v37;
      *(v12 + 32) = v36;
    }

    *(v12 + 40) = v35;
    v38 = sub_1BC8F7E34();

    [v8 setParticipants_];
  }

  Message.getTranscriptString()();
  if (v39)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v40 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v40, qword_1EDC2B3C0);
    v41 = v39;
    v42 = sub_1BC8F7714();
    v43 = sub_1BC8F81E4();

    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_21_1();
      *&v84 = OUTLINED_FUNCTION_5_12();
      v86[0] = v84;
      *v12 = 136446210;
      swift_getErrorValue();
      v44 = v85;
      v45 = sub_1BC8F83F4();
      v82 = &v82;
      OUTLINED_FUNCTION_0(v45);
      v83 = v43;
      v47 = v46;
      v49 = *(v48 + 64);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1EEE9AC00](v50);
      v52 = &v82 - v51;
      OUTLINED_FUNCTION_10(v44);
      v54 = *(v53 + 16);
      v55 = OUTLINED_FUNCTION_45_2();
      v56(v55);
      OUTLINED_FUNCTION_76_2();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      v61 = sub_1BC8073F0(v52, v44);
      v63 = v62;
      (*(v47 + 8))(v52, v45);
      v64 = sub_1BC7A9A4C(v61, v63, v86);

      *(v12 + 4) = v64;
      OUTLINED_FUNCTION_42_9();
      _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v70 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v70, qword_1EDC2B3C0);
    v71 = sub_1BC8F7714();
    v72 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_20_8(v72))
    {
      v73 = OUTLINED_FUNCTION_36();
      *v73 = 0;
      OUTLINED_FUNCTION_25_9();
      _os_log_impl(v74, v75, v76, v77, v73, 2u);
      OUTLINED_FUNCTION_6();
    }
  }

  sub_1BC86279C();
  v78 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  OUTLINED_FUNCTION_17_1();
  if (v78[1])
  {
    v79 = *v78;

    OUTLINED_FUNCTION_40();
    sub_1BC86279C();
  }

  v80 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_17_1();
  v81 = *v80 == 0xD00000000000003BLL && 0x80000001BC90BE00 == v80[1];
  if (v81 || (sub_1BC8F8AA4() & 1) != 0)
  {
    sub_1BC86279C();
    if (qword_1EDC1EF18 != -1)
    {
      swift_once();
    }

    sub_1BC8F6DC4();
    sub_1BC86279C();
  }

  sub_1BC86279C();
  OUTLINED_FUNCTION_24();
}

id sub_1BC85FD38(id a1, void *a2)
{
  if (a2)
  {
    v4 = objc_opt_self();
    v5 = a2;
    v6 = [v4 stringFromContact:v5 style:0];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1BC8F7C24();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v14 = OUTLINED_FUNCTION_55();
    *(v14 + 16) = xmmword_1BC8FC230;
    *(v14 + 32) = sub_1BC8605F0();
    *(v14 + 40) = v15;
    sub_1BC860658();
    v16 = objc_allocWithZone(MEMORY[0x1E6964E50]);
    v17 = sub_1BC8624C0(v8, v10);
    v18 = [v5 identifier];
    sub_1BC8F7C24();

    sub_1BC86279C();
    return v17;
  }

  else
  {
    v11 = [a1 type];
    sub_1BC870714(a1);
    if (v11 == 2)
    {
      if (v12)
      {
        OUTLINED_FUNCTION_45_1();
        v13 = sub_1BC8F7BE4();
      }

      else
      {
        v13 = 0;
      }

      sub_1BC87C8D8(a1);
      if (v20)
      {
        v21 = sub_1BC8F7BE4();
      }

      else
      {
        v21 = 0;
      }

      OUTLINED_FUNCTION_45_1();
      v22 = TUFormattedPhoneNumber();

      if (v22)
      {
        sub_1BC8F7C24();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
    v23 = OUTLINED_FUNCTION_55();
    *(v23 + 16) = xmmword_1BC8FC230;
    *(v23 + 32) = sub_1BC8605F0();
    *(v23 + 40) = v24;
    sub_1BC860658();
    v25 = objc_allocWithZone(MEMORY[0x1E6964E50]);
    v26 = OUTLINED_FUNCTION_45_1();
    return sub_1BC8624C0(v26, v27);
  }
}

uint64_t sub_1BC85FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48[-v15];
  v17 = *(v2 + 120);
  v18 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_17_1();
  v20 = *v18;
  v19 = v18[1];

  v21 = sub_1BC8F7BE4();

  v22 = [v17 providerWithIdentifier_];

  if (v22)
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
    v24 = sub_1BC7C83A8();
    [v23 setHandle_];

    v25 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
    OUTLINED_FUNCTION_17_1();
    if (v25[1])
    {
      v26 = *v25;

      sub_1BC8F71F4();

      v27 = sub_1BC8F7264();
      v28 = 0;
      if (__swift_getEnumTagSinglePayload(v16, 1, v27) != 1)
      {
        v28 = sub_1BC8F7214();
        OUTLINED_FUNCTION_10(v27);
        (*(v29 + 8))(v16, v27);
      }

      [v23 setLocalSenderIdentityAccountUUID_];
    }

    [v23 setOriginatingUIType_];
    v30 = [v23 URL];
    if (v30)
    {
      v31 = v30;
      sub_1BC8F6FB4();

      v32 = 0;
      v23 = v31;
    }

    else
    {
      v32 = 1;
    }

    v43 = sub_1BC8F7014();
    __swift_storeEnumTagSinglePayload(v10, v32, 1, v43);
    v44 = OUTLINED_FUNCTION_45_1();
    return sub_1BC862FD0(v44, v45, v46, v47);
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v33 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v33, qword_1EDC2B3C0);
    v34 = sub_1BC8F7714();
    v35 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_20_8(v35))
    {
      v36 = OUTLINED_FUNCTION_36();
      *v36 = 0;
      OUTLINED_FUNCTION_25_9();
      _os_log_impl(v37, v38, v39, v40, v36, 2u);
      OUTLINED_FUNCTION_6();
    }

    v41 = sub_1BC8F7014();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v41);
  }
}

uint64_t sub_1BC860308(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t sub_1BC860340()
{
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_50_0();
  v2 = sub_1BC8F7BE4();
  v3 = [v1 normalizedHandleWithDestinationID_];

  if (!v3)
  {
    if (qword_1EDC20730 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v10 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v10, qword_1EDC2B3C0);

    v3 = sub_1BC8F7714();
    v11 = sub_1BC8F81E4();

    if (os_log_type_enabled(v3, v11))
    {
      v12 = OUTLINED_FUNCTION_21_1();
      v19 = OUTLINED_FUNCTION_28();
      *v12 = 136315138;
      v13 = OUTLINED_FUNCTION_50_0();
      *(v12 + 4) = sub_1BC7A9A4C(v13, v14, v15);
      _os_log_impl(&dword_1BC7A3000, v3, v11, "Unable to create TUHandle from destinationID: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    goto LABEL_11;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69D8C48]) initWithHandle_];
  if (!v4)
  {
LABEL_11:

    return 0;
  }

  v5 = v4;
  v6 = [*(v0 + 112) metadataForDestinationID_];
  sub_1BC7D9730(0, &qword_1EDC1DD68, 0x1E69D8A68);
  v7 = [v6 metadataForProvider_];
  if (!v7)
  {
    sub_1BC7D9730(0, &qword_1EDC1DD70, 0x1E69D8D08);
    v7 = [v6 metadataForProvider_];
    if (!v7)
    {
      sub_1BC7D9730(0, &qword_1EDC1DD78, 0x1E69D8BF8);
      v17 = [v6 metadataForProvider_];
      if (v17)
      {
        v18 = v17;
        v9 = sub_1BC8F7C24();

        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  v8 = v7;
  v9 = sub_1BC8F7C24();

LABEL_6:
  return v9;
}

uint64_t sub_1BC8605F0()
{
  sub_1BC870714(v0);
  if (v1)
  {
    OUTLINED_FUNCTION_24_4();
  }

  else
  {
    v2 = [v0 value];
    sub_1BC8F7C24();
    OUTLINED_FUNCTION_24_4();
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1BC860658()
{
  v1 = [v0 type];
  if (v1 == 2)
  {
    v2 = MEMORY[0x1E695C330];
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = MEMORY[0x1E695C208];
LABEL_5:
    v3 = *v2;
    return sub_1BC8F7C24();
  }

  return 0;
}

id sub_1BC8606B4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE0, &unk_1BC904190);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock - v9;
  v25 = sub_1BC862D94;
  v26 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85C634;
  v24 = &block_descriptor_85;
  v11 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v11);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v25 = sub_1BC862E64;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1BC85B8C4;
  v24 = &block_descriptor_91;
  v14 = _Block_copy(&aBlock);

  v15 = a2;

  [v15 setCompletionHandler_];
  _Block_release(v14);
  if (qword_1EDC20730 != -1)
  {
    swift_once();
  }

  v16 = sub_1BC8F7734();
  __swift_project_value_buffer(v16, qword_1EDC2B3C0);
  v17 = sub_1BC8F7714();
  v18 = sub_1BC8F8204();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BC7A3000, v17, v18, "Beginning search query for contact change", v19, 2u);
    MEMORY[0x1BFB2AA50](v19, -1, -1);
  }

  return [v15 start];
}

void sub_1BC8609EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC7C0454(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_10:
    swift_beginAccess();
    sub_1BC7F3540(v5);
    swift_endAccess();
    return;
  }

  v6 = v4;
  v17 = MEMORY[0x1E69E7CC0];
  sub_1BC7AD404();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v16 = a2;
    v7 = 0;
    v5 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB29A00](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 uniqueIdentifier];
      v11 = sub_1BC8F7C24();
      v13 = v12;

      v14 = *(v17 + 16);
      if (v14 >= *(v17 + 24) >> 1)
      {
        sub_1BC7AD404();
      }

      ++v7;
      *(v17 + 16) = v14 + 1;
      v15 = v17 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1BC860B48(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if ([a2 isCancelled])
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EDC2B3C0);
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "Search query is cancelled", v9, 2u);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE0, &unk_1BC904190);
    sub_1BC8F7F64();
  }

  else if (a1)
  {
    v11 = a1;
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v12 = sub_1BC8F7734();
    __swift_project_value_buffer(v12, qword_1EDC2B3C0);
    v13 = a1;
    v14 = sub_1BC8F7714();
    v15 = sub_1BC8F81E4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BC7A3000, v14, v15, "Fetching search results from Spotlight failed with error: %@", v16, 0xCu);
      sub_1BC862F74(v17, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
      MEMORY[0x1BFB2AA50](v16, -1, -1);
    }

    sub_1BC862C50();
    swift_allocError();
    *v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE0, &unk_1BC904190);
    sub_1BC8F7F64();
  }

  else
  {
    if (qword_1EDC20730 != -1)
    {
      swift_once();
    }

    v21 = sub_1BC8F7734();
    __swift_project_value_buffer(v21, qword_1EDC2B3C0);

    v22 = sub_1BC8F7714();
    v23 = sub_1BC8F8204();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      *(v24 + 4) = *(*(a4 + 16) + 16);

      _os_log_impl(&dword_1BC7A3000, v22, v23, "Got %ld search results for contact change query", v24, 0xCu);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v25 = *(a4 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5DE0, &unk_1BC904190);
    sub_1BC8F7F74();
  }
}

uint64_t sub_1BC860F60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *MEMORY[0x1E69646B0];
  for (i = (a1 + 40); v3; --v3)
  {
    v7 = *(i - 1);
    v6 = *i;

    v8 = OUTLINED_FUNCTION_45_2();
    MEMORY[0x1BFB29120](v8);

    v22 = sub_1BC8F7C24();
    v25 = v9;
    OUTLINED_FUNCTION_46_7();
    MEMORY[0x1BFB29120](v7, v6);
    OUTLINED_FUNCTION_47_6();
    MEMORY[0x1BFB29120](v22, v25);

    i += 2;
  }

  if (a3)
  {
    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = *MEMORY[0x1E69649E8];
      v23 = sub_1BC8F7C24();
      v26 = v12;
      OUTLINED_FUNCTION_46_7();
      v13 = OUTLINED_FUNCTION_45_1();
      MEMORY[0x1BFB29120](v13);
      OUTLINED_FUNCTION_47_6();
      v15 = v23;
      v14 = v26;
      v16 = *MEMORY[0x1E6963CF8];
      v24 = sub_1BC8F7C24();
      v27 = v17;
      OUTLINED_FUNCTION_46_7();
      v18 = OUTLINED_FUNCTION_45_1();
      MEMORY[0x1BFB29120](v18);
      OUTLINED_FUNCTION_47_6();

      MEMORY[0x1BFB29120](545029152, 0xE400000000000000);

      MEMORY[0x1BFB29120](v24, v27);

      MEMORY[0x1BFB29120](0, 0xE000000000000000);

      MEMORY[0x1BFB29120](v15, v14);
    }
  }

  return 0;
}

uint64_t sub_1BC8611A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BC8F6CE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(MEMORY[0x1E6993588]);

  v13 = sub_1BC8625E0(a1, a2, a3, a4);
  v14 = sub_1BC862874(v13, &selRef_formattedRepresentation);
  if (v15)
  {
    v31[0] = v14;
    v31[1] = v15;
    sub_1BC8F6CD4();
    sub_1BC7B7A9C();
    v16 = sub_1BC8F8404();
    (*(v9 + 8))(v12, v8);

    v18 = 0;
    v19 = *(v16 + 16);
    v20 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v21 = (v16 + 40 + 16 * v18);
    while (1)
    {
      if (v19 == v18)
      {

        v31[0] = v20;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
        sub_1BC7ADBA4();
        a1 = sub_1BC8F7B74();
        swift_bridgeObjectRelease_n();
        goto LABEL_17;
      }

      if (v18 >= v19)
      {
        break;
      }

      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_19;
      }

      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = HIBYTE(*v21) & 0xF;
      if ((*v21 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      ++v18;
      v21 += 2;
      if (v25)
      {
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v20 + 16);
          sub_1BC7F6F9C();
          v20 = v29;
        }

        v26 = *(v20 + 16);
        if (v26 >= *(v20 + 24) >> 1)
        {
          sub_1BC7F6F9C();
          v20 = v30;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + 16 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;

        v18 = v22;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

LABEL_17:

    return a1;
  }

  return result;
}

void sub_1BC861468(uint64_t a1@<X8>)
{
  os_unfair_lock_lock(v1 + 6);
  sub_1BC7A792C(&v1[8], a1);

  os_unfair_lock_unlock(v1 + 6);
}

id sub_1BC8614B0(uint64_t a1)
{
  if (qword_1EDC1E218 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B2E0);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000016, 0x80000001BC90CFA0, &v15);
    _os_log_impl(&dword_1BC7A3000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  v21 = xmmword_1BC904020;
  sub_1BC8F8724();
  v7 = v15;
  v8 = v16;
  v9 = sub_1BC8E6824();
  v10 = sub_1BC8F7BE4();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000002FLL;
  v11[3] = 0x80000001BC90CF50;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = a1;
  v19 = sub_1BC8630A0;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BC8623AC;
  v18 = &block_descriptor_121;
  v12 = _Block_copy(&v15);

  v13 = [v9 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);

  return v13;
}

id sub_1BC861734(uint64_t a1)
{
  if (qword_1EDC1E218 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B2E0);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000016, 0x80000001BC90CFA0, &v15);
    _os_log_impl(&dword_1BC7A3000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  v21 = xmmword_1BC904020;
  sub_1BC8F8724();
  v7 = v15;
  v8 = v16;
  v9 = sub_1BC8E6824();
  v10 = sub_1BC8F7BE4();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000030;
  v11[3] = 0x80000001BC90CFC0;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = a1;
  v19 = sub_1BC8631A8;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BC8623AC;
  v18 = &block_descriptor_136;
  v12 = _Block_copy(&v15);

  v13 = [v9 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);

  return v13;
}

void sub_1BC8619B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_0();
  v23 = v22;
  v25 = v24;
  v61 = v26;
  v62 = v27;
  v29 = v28;
  v31 = v30;
  v60 = v32;
  v33 = a22;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v58 - v38;
  if (qword_1EDC1E218 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v40 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v40, qword_1EDC2B2E0);

  v41 = sub_1BC8F7714();
  v42 = sub_1BC8F8204();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_21_1();
    v59 = a22;
    v44 = v43;
    v45 = OUTLINED_FUNCTION_28();
    v58 = v23;
    v46 = v45;
    v63 = v45;
    *v44 = 136446210;
    v47 = OUTLINED_FUNCTION_50_0();
    *(v44 + 4) = sub_1BC7A9A4C(v47, v48, v49);
    _os_log_impl(&dword_1BC7A3000, v41, v42, "Starting to run ScheduledActivity(%{public}s)", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_6();
    v33 = v59;
    OUTLINED_FUNCTION_6();
  }

  type metadata accessor for SendableBGSystemTask();
  swift_allocObject();
  v50 = sub_1BC8E6860(v60);
  v51 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v51);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v31;
  v52[5] = v29;
  v54 = v61;
  v53 = v62;
  v52[6] = v50;
  v52[7] = v54;
  v52[8] = v53;
  v52[9] = v25;

  sub_1BC8333D4();
  v56 = v55;
  v57 = swift_allocObject();
  v57[2] = v31;
  v57[3] = v29;
  v57[4] = v56;

  sub_1BC8E6940(v33, v57);

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC861C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_1BC8F7F84();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 104) = 0;
  v12 = swift_task_alloc();
  *(v8 + 88) = v12;
  *v12 = v8;
  v12[1] = sub_1BC861D3C;

  return sub_1BC8E634C();
}

uint64_t sub_1BC861D3C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC861E34()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_81_3();
  sub_1BC8E6B8C((v0 + 104));

  OUTLINED_FUNCTION_27();

  return v1();
}

void sub_1BC861E98()
{
  OUTLINED_FUNCTION_9_10();
  v29 = v0;
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 64);

    *(v0 + 104) = 1;
    v8 = *(v6 + 8);
    v9 = OUTLINED_FUNCTION_40();
    v10(v9);
    v11 = *(v0 + 16);
  }

  else
  {

    if (qword_1EDC1E218 != -1)
    {
      OUTLINED_FUNCTION_6_1();
    }

    v12 = *(v0 + 96);
    v13 = *(v0 + 32);
    v14 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v14, qword_1EDC2B2E0);
    v15 = v12;

    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F81E4();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 96);
    if (v18)
    {
      v21 = *(v0 + 24);
      v20 = *(v0 + 32);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_85_1();
      *v22 = 136446466;
      *(v22 + 4) = sub_1BC7A9A4C(v21, v20, &v28);
      *(v22 + 12) = 2114;
      v24 = v19;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1BC7A3000, v16, v17, "ScheduledActivity(%{public}s) threw error: %{public}@", v22, 0x16u);
      sub_1BC862F74(v23, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_9_0();

      goto LABEL_9;
    }

    v11 = v19;
  }

LABEL_9:
  OUTLINED_FUNCTION_81_3();
  sub_1BC8E6B8C((v0 + 104));

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_47_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BC8620E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_1BC862184;

  return sub_1BC8E608C();
}

uint64_t sub_1BC862184()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1BC862268()
{
  OUTLINED_FUNCTION_71();
  v18 = v0;
  v2 = v0[4];
  v3 = sub_1BC8E6824();
  [v3 setTaskCompleted];

  if (qword_1EDC1E218 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v4 = v0[3];
  v5 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v5, qword_1EDC2B2E0);

  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_21_1();
    v17 = OUTLINED_FUNCTION_5_12();
    *v1 = 136446210;
    *(v1 + 4) = sub_1BC7A9A4C(v9, v8, &v17);
    OUTLINED_FUNCTION_42_9();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48_4();

  __asm { BRAA            X1, X16 }
}

void sub_1BC8623AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1BC862414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1BC8F7BE4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1BC8F7BE4();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

id sub_1BC8624C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BC8F7BE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1BC8F7E34();

  v5 = sub_1BC8F7BE4();

  v6 = [v2 initWithDisplayName:v3 handles:v4 handleIdentifier:v5];

  return v6;
}

id sub_1BC86257C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BC8F7BE4();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

id sub_1BC8625E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BC8F7BE4();

  if (a4)
  {
    v7 = sub_1BC8F7BE4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithDigits:v6 isoCountryCode:v7];

  return v8;
}

uint64_t sub_1BC862674(void *a1)
{
  v1 = [a1 phoneNumbers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F7E54();

  return v3;
}

uint64_t sub_1BC8626CC(void *a1)
{
  v2 = [a1 textContentSummary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BC8F7C24();

  return v3;
}

void sub_1BC86273C()
{
  OUTLINED_FUNCTION_60_3();
  v9 = sub_1BC8F7E34();

  OUTLINED_FUNCTION_74_1(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1BC86279C()
{
  v9 = sub_1BC8F7BE4();

  OUTLINED_FUNCTION_74_1(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1BC8627FC()
{
  OUTLINED_FUNCTION_60_3();
  sub_1BC7D9730(0, &unk_1EDC1DD58, 0x1E6964E50);
  v9 = sub_1BC8F7E34();

  OUTLINED_FUNCTION_74_1(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BC862874(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1BC8F7C24();
    OUTLINED_FUNCTION_24_4();
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_1BC862928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v18 = *a9;
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_1BC7B0168;

  return sub_1BC861C3C(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BC862A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v16 = *a9;
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_1BC7B0248;

  return sub_1BC8620E8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BC862B7C()
{
  OUTLINED_FUNCTION_60_3();
  v7 = type metadata accessor for SystemTaskScheduler();
  v8 = &off_1F3B3E598;
  *&v5[40] = 0;
  *&v6 = v1;
  *(v0 + 16) = v2;
  *v5 = 0;
  memset(&v5[8], 0, 32);
  sub_1BC7CF5EC(&v6, &v5[8]);
  v3 = *&v5[16];
  *(v0 + 24) = *v5;
  *(v0 + 40) = v3;
  *(v0 + 56) = *&v5[32];
  return v0;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

unint64_t sub_1BC862C50()
{
  result = qword_1EBCF5DA8;
  if (!qword_1EBCF5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5DA8);
  }

  return result;
}

uint64_t sub_1BC862CDC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_26(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, v12, v4 + v11, v13);
}

uint64_t objectdestroy_47Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 24) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v5 + 8))(v2 + v7, v3);
  v10 = *(v2 + v9);

  return MEMORY[0x1EEE6BDD0](v2, v9 + 8, v6 | 7);
}

uint64_t sub_1BC862E8C()
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_7(v7);
  *v8 = v9;
  v8[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_111();

  return sub_1BC859448(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BC862F74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BC862FD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return a2;
}

unint64_t sub_1BC863030()
{
  result = qword_1EDC1DD28;
  if (!qword_1EDC1DD28)
  {
    sub_1BC7D9730(255, &qword_1EDC1DD30, 0x1E69D8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DD28);
  }

  return result;
}

void sub_1BC8630B8()
{
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_41_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_9(v1);
  OUTLINED_FUNCTION_47_4();

  __asm { BR              X9 }
}

uint64_t objectdestroy_117Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_123Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_1BC863228()
{
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_41_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_24_9(v1);
  OUTLINED_FUNCTION_47_4();

  __asm { BR              X9 }
}

uint64_t objectdestroy_127Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for SpotlightIndexManager.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8633EC()
{
  result = qword_1EBCF5E28;
  if (!qword_1EBCF5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5E28);
  }

  return result;
}

void OUTLINED_FUNCTION_50_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_72_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return sub_1BC8F86A4();
}

uint64_t OUTLINED_FUNCTION_79_1()
{
  result = *(v0 + 16);
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_101_0()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
}

_BYTE *storeEnumTagSinglePayload for VideoMessagingIDSServiceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BC863608()
{
  result = qword_1EBCF5E30;
  if (!qword_1EBCF5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5E30);
  }

  return result;
}

BOOL sub_1BC86365C(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1BC8636B0()
{
  v3 = OUTLINED_FUNCTION_125();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_105();
  v10 = type metadata accessor for TrackedOutgoingMessage(v9);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_4();
  v15 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v15, v16, v10);
  if (v17)
  {
    sub_1BC7C1744(v0, &qword_1EBCF5730, &qword_1BC901220);
    OUTLINED_FUNCTION_101_1();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_40();
    sub_1BC871CE4(v18, v19);
    sub_1BC871D3C(v1, v2);
    OUTLINED_FUNCTION_62_0();
    sub_1BC8F7C94();
    OUTLINED_FUNCTION_211();
    v20 = OUTLINED_FUNCTION_81_0();
    sub_1BC871D94(v20, v21);
  }

  return OUTLINED_FUNCTION_31_3();
}

uint64_t sub_1BC863800()
{
  v3 = OUTLINED_FUNCTION_125();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_105();
  v9 = type metadata accessor for MessageAssetInfo();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_4();
  v14 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v14, v15, v9);
  if (v16)
  {
    sub_1BC7C1744(v0, &qword_1EBCF58E0, &qword_1BC904880);
    OUTLINED_FUNCTION_101_1();
  }

  else
  {
    OUTLINED_FUNCTION_79_2();
    v17 = OUTLINED_FUNCTION_40();
    sub_1BC871CE4(v17, v18);
    sub_1BC871D3C(v1, v2);
    OUTLINED_FUNCTION_62_0();
    sub_1BC8F7C94();
    OUTLINED_FUNCTION_211();
    v19 = OUTLINED_FUNCTION_81_0();
    sub_1BC871D94(v19, v20);
  }

  return OUTLINED_FUNCTION_31_3();
}

uint64_t sub_1BC863968(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_25(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33_2();
  v12 = a4(0);
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_138_0();
  sub_1BC7C4DAC(v21, v22, v23, v24);
  OUTLINED_FUNCTION_43(v4, 1, v12);
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_50_0();
    sub_1BC7C1744(v26, v27, a3);
  }

  else
  {
    v28 = *(v15 + 32);
    v29 = OUTLINED_FUNCTION_79();
    v30(v29);
    (*(v15 + 16))(v5, v20, v12);
    sub_1BC8F7C94();
    v31 = *(v15 + 8);
    v32 = OUTLINED_FUNCTION_143();
    v33(v32);
  }

  return OUTLINED_FUNCTION_41_1();
}

uint64_t sub_1BC863B08(uint64_t a1)
{
  sub_1BC7C4DAC(a1, &v2, &qword_1EBCF5EE0, &qword_1BC903B50);
  if (v3)
  {
    sub_1BC7CF5EC(&v2, v4);
    sub_1BC7A792C(v4, &v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EE8, &qword_1BC9048B8);
    sub_1BC8F7C94();
    OUTLINED_FUNCTION_211();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_1BC7C1744(&v2, &qword_1EBCF5EE0, &qword_1BC903B50);
    OUTLINED_FUNCTION_101_1();
  }

  return OUTLINED_FUNCTION_31_3();
}

uint64_t sub_1BC863BDC()
{
  v3 = OUTLINED_FUNCTION_125();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_105();
  v9 = type metadata accessor for OutgoingVideoMessage();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_4();
  v14 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v14, v15, v9);
  if (v16)
  {
    sub_1BC7C1744(v0, &qword_1EBCF5EA8, &qword_1BC904888);
    OUTLINED_FUNCTION_101_1();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_40();
    sub_1BC871CE4(v17, v18);
    sub_1BC871D3C(v1, v2);
    OUTLINED_FUNCTION_62_0();
    sub_1BC8F7C94();
    OUTLINED_FUNCTION_211();
    v19 = OUTLINED_FUNCTION_81_0();
    sub_1BC871D94(v19, v20);
  }

  return OUTLINED_FUNCTION_31_3();
}

void Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, uint64_t *a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, unsigned __int8 *a32, uint64_t a33, uint64_t *a34)
{
  OUTLINED_FUNCTION_97_0();
  a21 = v35;
  a22 = v36;
  v126 = v37;
  v128 = v39;
  v129 = v38;
  HIDWORD(v127) = v40;
  v132 = v42;
  v133 = v41;
  v134 = v43;
  v136 = v44;
  v120 = a31;
  v119 = a30;
  HIDWORD(v118) = a29;
  v124 = a26;
  v125 = a27;
  HIDWORD(v121) = a25;
  v123 = a24;
  v122 = a23;
  v45 = a34;
  v117 = a33;
  v46 = a32;
  v47 = a28;
  v48 = sub_1BC8F7014();
  v49 = OUTLINED_FUNCTION_0(v48);
  v115 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v53);
  v114 = sub_1BC8F7264();
  v54 = OUTLINED_FUNCTION_0(v114);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_31();
  v60 = v59;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_20_4();
  v63 = v62;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_47();
  v66 = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v68 = OUTLINED_FUNCTION_25(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_153();
  MEMORY[0x1EEE9AC00](v72);
  v73 = *v47;
  v130 = v47[1];
  v74 = v47[2];
  HIDWORD(v111) = *v46;
  v75 = v45[1];
  v110 = *v45;
  v109 = v75;
  v108 = v45[2];
  v135 = v106 - v76;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v48);
  v131 = v73;
  if (v73)
  {
    v137 = v131;
    v138 = v130;
    v139 = v74;
    sub_1BC7DA9A8();
    OUTLINED_FUNCTION_37_7();
    type metadata accessor for Message();
    sub_1BC866FDC();

    sub_1BC7C1744(v135, &qword_1EBCF5A20, &qword_1BC901BF0);
    v80 = OUTLINED_FUNCTION_29();
    sub_1BC805ABC(v80, v81);
  }

  v82 = *(v56 + 16);
  v106[1] = v66;
  v83 = v66;
  v84 = v114;
  v82(v83, v136, v114);
  v82(v63, v133, v84);
  v112 = v74;
  v85 = v60;
  v82(v60, v134, v84);
  v86 = v115;
  v87 = v116;
  (*(v115 + 16))(v116, v132, v48);
  v107 = v48;
  v88 = v129;
  v89 = OUTLINED_FUNCTION_62_0();
  v106[0] = v34;
  v91 = v90;
  sub_1BC7C4DAC(v89, v92, &qword_1EBCF5A20, v90);
  v93 = v113;
  sub_1BC7C4DAC(v135, v113, &qword_1EBCF5A20, v91);
  v140[0] = BYTE4(v111);
  v137 = v110;
  v138 = v109;
  v139 = v108;
  v94 = objc_allocWithZone(type metadata accessor for Message());
  OUTLINED_FUNCTION_164(&a15);
  LOBYTE(v111) = BYTE4(v118) & 1;
  LOBYTE(v108) = BYTE4(v121) & 1;
  Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(v122, v63, v85, v87, v126, HIDWORD(v127), v93, v128, v126, v122, v123, v108, v124, v125, v111, v119, v120, v140, v95, &v137, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  v97 = v96;
  sub_1BC7C1744(v88, &qword_1EBCF5A20, &qword_1BC901BF0);
  (*(v86 + 8))(v132, v107);
  v98 = *(v56 + 8);
  v98(v134, v84);
  v98(v133, v84);
  v98(v136, v84);
  sub_1BC7C1744(v135, &qword_1EBCF5A20, &qword_1BC901BF0);
  v99 = &v97[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  v100 = *&v97[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  v101 = *&v97[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript + 8];
  v102 = *&v97[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript + 16];
  v103 = v130;
  *v99 = v131;
  *(v99 + 1) = v103;
  *(v99 + 2) = v112;
  v104 = v97;
  v105 = OUTLINED_FUNCTION_40();
  sub_1BC7C532C(v105);

  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_98();
}

id sub_1BC8642A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v10 = sub_1BC8F6CB4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5EC0, &qword_1BC9048A0);
  OUTLINED_FUNCTION_218();
  sub_1BC871DEC(v13, v14, v15, v16);
  v17 = sub_1BC8F6C94();
  if (v4)
  {

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v17;
    v21 = v18;

    v22 = &v5[OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data];
    *v22 = v20;
    v22[1] = v21;
    v23.receiver = v5;
    v23.super_class = ObjectType;
    return objc_msgSendSuper2(&v23, sel_init);
  }
}

id sub_1BC8643FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v10 = sub_1BC8F6CB4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5ED0, &unk_1BC9048A8);
  sub_1BC871DEC(&qword_1EDC1F268, &unk_1EBCF5ED0, &unk_1BC9048A8, sub_1BC7C5254);
  v13 = sub_1BC8F6C94();
  if (v4)
  {

    sub_1BC7C532C(v20);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v13;
    v17 = v14;
    sub_1BC7C532C(v20);

    v18 = &v5[OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data];
    *v18 = v16;
    v18[1] = v17;
    v19.receiver = v5;
    v19.super_class = ObjectType;
    return objc_msgSendSuper2(&v19, sel_init);
  }
}

uint64_t sub_1BC86455C()
{
  v1 = sub_1BC8F6C54();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1BC8F6C44();
  v4 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data);
  v5 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data + 8);
  sub_1BC7C76BC();
  sub_1BC8F6C34();
}

uint64_t sub_1BC864600()
{
  v1 = sub_1BC8F6C54();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1BC8F6C44();
  v4 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data);
  v5 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore10XPCWrapper_data + 8);
  sub_1BC7C75C4();
  sub_1BC8F6C34();
}

uint64_t sub_1BC8646E8()
{
  v1 = *v0;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8647AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33_2();
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_50_0();
  v16(v15);
  v17 = *a2;
  return a6(v6);
}

uint64_t sub_1BC864A4C(__int16 a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  result = OUTLINED_FUNCTION_31_7();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC864B30(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_222(a1, a2);
  v3 = OUTLINED_FUNCTION_50_0();
  return v2(v3);
}

uint64_t sub_1BC864B70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_45_8(*a3);
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v6 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1BC864CB8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v7 = a3(0);
  OUTLINED_FUNCTION_4_1(v7);
  (*(v8 + 40))(v3 + v6, a1);
  return swift_endAccess();
}

uint64_t sub_1BC864D8C(char a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  result = OUTLINED_FUNCTION_31_7();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC864E18(double a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_35_7();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC864EB0(__int16 a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  result = OUTLINED_FUNCTION_31_7();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC864F3C()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
  OUTLINED_FUNCTION_30_9();
  return *(v0 + v1);
}

uint64_t sub_1BC864F70(char a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
  result = OUTLINED_FUNCTION_31_7();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC865060()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  OUTLINED_FUNCTION_30_9();
  return *(v0 + v1);
}

uint64_t sub_1BC865094(__int16 a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  result = OUTLINED_FUNCTION_31_7();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC865120()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
  OUTLINED_FUNCTION_30_9();
  return *(v0 + v1);
}

uint64_t sub_1BC865154(char a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
  result = OUTLINED_FUNCTION_31_7();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC8651E0(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_222(a1, a2);
  v3 = OUTLINED_FUNCTION_50_0();
  return v2(v3);
}

uint64_t sub_1BC865278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BC8652EC(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1BC8652B4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1BC86533C(&v4);
}

uint64_t sub_1BC8652EC@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  OUTLINED_FUNCTION_13();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1BC86533C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  result = OUTLINED_FUNCTION_31_7();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1BC8653C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1BC86543C();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1BC86543C()
{
  v1 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_1BC865490(uint64_t a1)
{
  OUTLINED_FUNCTION_45_8(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
  OUTLINED_FUNCTION_35_7();
  result = swift_beginAccess();
  *v1 = a1;
  *(v1 + 4) = BYTE4(a1) & 1;
  return result;
}

double sub_1BC865524@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BC7C84C4(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1BC865568(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;

  return sub_1BC8655B0(&v5);
}

uint64_t sub_1BC8655B0(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v4 = *(v3 + 16);
  *v3 = v6;
  *(v3 + 16) = v2;
}

uint64_t sub_1BC865664(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  OUTLINED_FUNCTION_138_0();
  sub_1BC7C4DAC(v15, v16, v17, v18);
  v19 = *a2;
  return a7(v14);
}

uint64_t sub_1BC865720(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  sub_1BC7C3684(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1BC8657DC()
{
  v2 = sub_1BC8F7014();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_190_0();
  v8 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (*(v5 + 16))(v1, v0 + v8, v2);
  sub_1BC7EF368();
  v10 = v9;
  (*(v5 + 8))(v1, v2);
  return v10;
}

id sub_1BC865904()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
  OUTLINED_FUNCTION_30_9();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BC865948(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
  OUTLINED_FUNCTION_31_7();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BC8659E0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1BC865A4C(v2);
}

void *sub_1BC865A10()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  OUTLINED_FUNCTION_30_9();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BC865A4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  OUTLINED_FUNCTION_31_7();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BC865AE0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1BC865B4C(v2);
}

void *sub_1BC865B10()
{
  v1 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  OUTLINED_FUNCTION_30_9();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BC865B4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  OUTLINED_FUNCTION_31_7();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL sub_1BC865BE0()
{
  v1 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v2 = v1[1];
  v3 = *v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  return v3 == 0;
}

void sub_1BC865C3C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_190_0();
  v10 = sub_1BC8F7014();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v0[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  v18 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  v17 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript + 8];
  v19 = *(v16 + 2);
  if (v18)
  {
    *v5 = v18;
    v5[1] = v17;
    v5[2] = v19;
  }

  else
  {
    v62 = v15;
    v20 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v21 = *&v3[v20];
    if (v21)
    {
      v60 = v20;
      v61 = v21;
      v22 = sub_1BC8316B8();
      if (v22)
      {
        v23 = v22;
        OUTLINED_FUNCTION_122();
        __swift_storeEnumTagSinglePayload(v24, v25, v26, v10);
        OUTLINED_FUNCTION_1_20();
        sub_1BC7C4720(v27, v28);
        sub_1BC8F87F4();

        v29 = OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_43(v29, v30, v10);
        if (!v31)
        {
          v32 = *(v62 + 32);
          (v32)(v2, v1, v10);
          OUTLINED_FUNCTION_220();
          v32();
          v33 = OUTLINED_FUNCTION_230();
          if (v1)
          {

            v35 = OUTLINED_FUNCTION_94_0();
            v36(v35);
          }

          else
          {
            v37 = v33;
            v38 = v34;
            if (!sub_1BC86365C(v33, v34))
            {
              type metadata accessor for Message();
              v57 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
              OUTLINED_FUNCTION_13();
              swift_beginAccess();
              sub_1BC86603C(v37, *&v3[v57], v5);
              sub_1BC7D4C94(v37, v38);

              v58 = OUTLINED_FUNCTION_94_0();
              v59(v58);
              goto LABEL_19;
            }

            v39 = OUTLINED_FUNCTION_94_0();
            v40(v39);
            sub_1BC7D4C94(v37, v38);
          }
        }
      }

      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v41 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v41, qword_1EDC2B3A8);
      v42 = v3;
      v43 = sub_1BC8F7714();
      v44 = sub_1BC8F81F4();

      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_9();
        v45 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v46 = swift_slowAlloc();
        v63[0] = v46;
        *v45 = 136446210;
        v47 = *&v3[v60];
        if (v47)
        {
          v63[4] = v47;
          type metadata accessor for SandboxExtendedURL();
          v48 = v47;
          v49 = sub_1BC8F7C94();
          v51 = v50;
        }

        else
        {
          v51 = 0xE300000000000000;
          v49 = 7104878;
        }

        v52 = sub_1BC7A9A4C(v49, v51, v63);

        *(v45 + 4) = v52;
        OUTLINED_FUNCTION_25_9();
        _os_log_impl(v53, v54, v55, v56, v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    else
    {
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }
  }

LABEL_19:
  sub_1BC7C52A8(v18);
  OUTLINED_FUNCTION_24();
}

void sub_1BC86603C(void *a1@<X0>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 2:
      goto LABEL_17;
    case 1:
      v5 = sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
      sub_1BC7D9730(0, &qword_1EBCF5550, 0x1E69E06B0);
      OUTLINED_FUNCTION_176();
      v6 = sub_1BC8F8214();
      if (a1)
      {

        goto LABEL_5;
      }

      if (!v6)
      {
LABEL_5:
        if (qword_1EDC20728 != -1)
        {
          OUTLINED_FUNCTION_1();
          swift_once();
        }

        v7 = sub_1BC8F7734();
        OUTLINED_FUNCTION_37_0(v7, qword_1EDC2B3A8);
        v8 = sub_1BC8F7714();
        v9 = sub_1BC8F81E4();
        if (!OUTLINED_FUNCTION_28_7(v9))
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      sub_1BC7DA3A8(v6, &v18);
      goto LABEL_22;
    case 0:
      v5 = sub_1BC7D9730(0, &qword_1EBCF5548, 0x1E696ACD0);
      sub_1BC7D9730(0, &unk_1EBCF5E40, 0x1E69D8AD8);
      OUTLINED_FUNCTION_176();
      v10 = sub_1BC8F8224();
      if (a1)
      {
      }

      else if (v10)
      {
        sub_1BC7DA1B0(v10, &v18);
LABEL_22:
        *a3 = v18;
        *(a3 + 8) = v19;
        return;
      }

      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v11 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v11, qword_1EDC2B3A8);
      v8 = sub_1BC8F7714();
      v12 = sub_1BC8F81E4();
      if (!OUTLINED_FUNCTION_28_7(v12))
      {
        goto LABEL_16;
      }

LABEL_15:
      OUTLINED_FUNCTION_45();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_202(v13);
      OUTLINED_FUNCTION_25_9();
      _os_log_impl(v14, v15, v16, v17, v5, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
LABEL_16:

LABEL_17:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
  }

  sub_1BC8F8B04();
  __break(1u);
}

void Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, __int128 a15, uint64_t a16, unint64_t a17, uint64_t a18)
{
  HIDWORD(v27) = a6;
  v19 = objc_allocWithZone(v18);
  LOBYTE(v23) = a14;
  LOBYTE(v22) = a11;
  v20 = OUTLINED_FUNCTION_82();
  Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(v20, v21, a3, a4, a5, HIDWORD(v27), a7, a8, a9, *(&a9 + 1), a10, v22, a12, a13, v23, a15, *(&a15 + 1), a16, a17 | ((HIDWORD(a17) & 1) << 32), a18, a15, *(&a15 + 1), a9, *(&a9 + 1), a3, a4, a5, v27, a7, a8, v30, v31, v32, v33);
}

void Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, uint64_t *a34)
{
  OUTLINED_FUNCTION_97_0();
  a21 = v36;
  a22 = v37;
  v38 = v34;
  v187 = v39;
  v202 = v40;
  v205 = v41;
  v198 = v42;
  v200 = v43;
  v45 = v44;
  v199 = v46;
  v201 = v47;
  v204 = a25;
  v196 = a31;
  v193 = a30;
  v192 = a29;
  v203 = a28;
  v191 = a27;
  v190 = a26;
  v197 = a23;
  v185 = a24;
  v48 = a34;
  v194 = a33;
  v49 = a32;
  v50 = sub_1BC8F7014();
  v51 = OUTLINED_FUNCTION_0(v50);
  v206 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v57 = OUTLINED_FUNCTION_25(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v62);
  v183 = sub_1BC8F71E4();
  v63 = OUTLINED_FUNCTION_0(v183);
  v182 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_185();
  v186 = *v49;
  v189 = *v48;
  v188 = v48[1];
  v195 = v48[2];
  v67 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v50);
  v71 = OUTLINED_FUNCTION_49_6(OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript);
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v50);
  v74 = &v34[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
  *v74 = 0;
  v74[1] = 0;
  v75 = &v34[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID];
  *v75 = 0;
  v75[1] = 0;
  v76 = &v34[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  v184 = &v34[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  *v76 = 0;
  v76[4] = 1;
  v77 = &v34[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary];
  v77[1] = 0;
  v77[2] = 0;
  *v77 = 0;
  v78 = sub_1BC8F7264();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v78);
  OUTLINED_FUNCTION_177(&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript]);
  v177 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  *&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile] = 0;
  v173 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  *&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile] = 0;
  v180 = *(v78 - 8);
  v82 = *(v180 + 16);
  v82(&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID], v201, v78);
  v82(&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID], v199, v78);
  v181 = v78;
  v82(&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID], v200, v78);
  v83 = v198;
  v172 = *(v206 + 16);
  v172(&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile], v198, v50);
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v84 = &v38[v67];
  v85 = v205;
  sub_1BC87064C(v205, v84);
  swift_endAccess();
  *&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType] = v202;
  v86 = OUTLINED_FUNCTION_195();
  v87 = v187;
  if (!v86)
  {
    v87 = 0;
  }

  v88 = 0xE000000000000000;
  if (v86)
  {
    v88 = v86;
  }

  v89 = &v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
  *v89 = v87;
  v89[1] = v88;
  v90 = &v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider];
  v91 = v204;
  *v90 = v185;
  v90[1] = v91;

  sub_1BC8F71D4();
  v92 = *(v182 + 32);
  v92(&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated], v35, v183);
  sub_1BC8F71D4();
  v92(&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified], v35, v183);
  v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead] = 0;
  *&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration] = v45;
  *&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType] = 0;
  v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive] = v190;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v93 = v74[1];
  v94 = v203;
  *v74 = v191;
  v74[1] = v94;

  v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT] = v192;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v95 = v75[1];
  v96 = v196;
  *v75 = v193;
  v75[1] = v96;

  v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality] = v186;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  *v184 = v194;
  v184[4] = BYTE4(v194) & 1;
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v97 = v77[2];
  OUTLINED_FUNCTION_167();
  *v77 = v99;
  v77[1] = v98;
  v77[2] = v195;

  sub_1BC8F6F44();
  v100 = type metadata accessor for SandboxExtendedURL();
  v101 = objc_allocWithZone(v100);
  OUTLINED_FUNCTION_10_2();
  *&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile] = SandboxExtendedURL.init(with:)();
  v102 = v50;
  v103 = 0;
  if (__swift_getEnumTagSinglePayload(v85, 1, v50) != 1)
  {
    v93 = v176;
    sub_1BC7C4DAC(v205, v176, &qword_1EBCF5A20, &qword_1BC901BF0);
    v104 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_43(v104, v105, v50);
    if (v106)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1BC8F6F44();
    v107 = objc_allocWithZone(v100);
    OUTLINED_FUNCTION_10_2();
    v103 = SandboxExtendedURL.init(with:)();
    OUTLINED_FUNCTION_191(&a14);
    v108(v176, v50);
  }

  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v109 = *&v38[v177];
  *&v38[v177] = v103;

  v110 = OUTLINED_FUNCTION_196(&v210);
  sub_1BC7C4DAC(v110, v178, v111, v112);
  v113 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v113, v114, v50);
  if (v106)
  {
    sub_1BC7C1744(v178, &qword_1EBCF5A20, &qword_1BC901BF0);
    v85 = v206;
    OUTLINED_FUNCTION_96_0();
    v83 = v202;
  }

  else
  {
    OUTLINED_FUNCTION_215(&a14);
    v116 = *(v115 + 32);
    v117 = OUTLINED_FUNCTION_29();
    v118(v117);
    v119 = OUTLINED_FUNCTION_230();
    if (v93)
    {

LABEL_15:
      if (qword_1EDC20728 != -1)
      {
        OUTLINED_FUNCTION_1();
        swift_once();
      }

      v123 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v123, qword_1EDC2B3A8);
      v124 = v38;
      v125 = sub_1BC8F7714();
      v126 = sub_1BC8F81F4();

      if (os_log_type_enabled(v125, v126))
      {
        OUTLINED_FUNCTION_9();
        v127 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        *&v207[0] = swift_slowAlloc();
        *v127 = 136446210;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        sub_1BC7C4DAC(&v38[v174], v175, &qword_1EBCF5A20, &qword_1BC901BF0);
        OUTLINED_FUNCTION_78_3();
        v128 = OUTLINED_FUNCTION_63_1();
        v131 = sub_1BC863968(v128, v129, &qword_1BC901BF0, v130);
        v133 = v132;
        v134 = OUTLINED_FUNCTION_63_1();
        sub_1BC7C1744(v134, v135, &qword_1BC901BF0);
        v85 = v206;
        v136 = sub_1BC7A9A4C(v131, v133, v207);

        *(v127 + 4) = v136;
        OUTLINED_FUNCTION_62_2();
        _os_log_impl(v137, v138, v139, v140, v141, 0xCu);
        v142 = OUTLINED_FUNCTION_121_0(&v209);
        __swift_destroy_boxed_opaque_existential_1(v142);
        v143 = OUTLINED_FUNCTION_27_7();
        MEMORY[0x1BFB2AA50](v143);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();

        OUTLINED_FUNCTION_170();
        v145 = v179;
        v102 = v50;
      }

      else
      {

        OUTLINED_FUNCTION_170();
        v145 = v179;
      }

      v144(v145, v50);
      OUTLINED_FUNCTION_96_0();
      v83 = v202;
      goto LABEL_21;
    }

    if (sub_1BC86365C(v119, v120))
    {
      v121 = OUTLINED_FUNCTION_143();
      sub_1BC7D4C94(v121, v122);
      goto LABEL_15;
    }

    v157 = OUTLINED_FUNCTION_121_0(&v205);
    v172(v157, v179, v50);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v50);
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    sub_1BC7C3684(v178, &v38[v174], &qword_1EBCF5A20, &qword_1BC901BF0);
    swift_endAccess();
    sub_1BC8F6F44();
    v161 = objc_allocWithZone(v100);
    v162 = OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v163 = *&v38[v173];
    *&v38[v173] = v162;

    type metadata accessor for Message();
    v164 = OUTLINED_FUNCTION_143();
    v83 = v202;
    sub_1BC86603C(v164, v202, v165);
    v166 = OUTLINED_FUNCTION_143();
    sub_1BC7D4C94(v166, v167);
    OUTLINED_FUNCTION_170();
    v168(v179, v50);
    v169 = OUTLINED_FUNCTION_150();
    *v170 = v207[0];
    *(v170 + 16) = v171;
    sub_1BC7C532C(v169);
    OUTLINED_FUNCTION_96_0();
  }

LABEL_21:
  if (v83 - 1 < 2)
  {
    v146 = 4;
    v147 = &v211;
LABEL_25:
    v148 = *(v147 - 32);

    *&v38[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus] = v146;
    v149 = type metadata accessor for Message();
    v208.receiver = v38;
    v208.super_class = v149;
    objc_msgSendSuper2(&v208, sel_init);
    OUTLINED_FUNCTION_72();
    sub_1BC7C1744(v150, v151, v152);
    (*(v85 + 8))(v198, v102);
    v153 = *(v180 + 8);
    v153(v200, v181);
    v153(v199, v181);
    v153(v201, v181);
    OUTLINED_FUNCTION_72();
    sub_1BC7C1744(v154, v155, v156);
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_98();
    return;
  }

  if (!v83)
  {
    v146 = 3;
    v147 = &v212;
    goto LABEL_25;
  }

LABEL_28:
  LOWORD(v207[0]) = v83;
  sub_1BC8F8B04();
  __break(1u);
}

void sub_1BC866FDC()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v122 = v4;
  v128 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1BC8F7014();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_53_5();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v114 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_156();
  v121 = v3;
  if (sub_1BC7C0454(v3))
  {
    sub_1BC8F6F34();
    v126 = 0;
    v127 = 0xE000000000000000;
    v118 = v12;
    sub_1BC8F85A4();
    v120 = v0;
    sub_1BC8F7264();
    OUTLINED_FUNCTION_23_7();
    sub_1BC7C4720(v19, v20);
    v21 = sub_1BC8F8A54();
    v23 = v22;
    v24 = v120;

    v126 = v21;
    v127 = v23;
    MEMORY[0x1BFB29120](0xD000000000000014, 0x80000001BC90D130);
    sub_1BC8F6F74();
    v25 = v118;

    v26 = v25 + 1;
    v119 = v25[1];
    v119(v18, v9);
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_10_18();
      swift_once();
    }

    v27 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v27, qword_1EDC2B3D8);
    v28 = v25[2];
    v28(v1, v24, v9);

    v116 = v18;
    v29 = sub_1BC8F7714();
    v30 = sub_1BC8F8204();

    v115 = v30;
    v31 = os_log_type_enabled(v29, v30);
    v117 = v9;
    if (v31)
    {
      OUTLINED_FUNCTION_11_2();
      v32 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *v32 = 136315394;
      v33 = OUTLINED_FUNCTION_125();
      (v28)(v33);
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v9);
      OUTLINED_FUNCTION_78_3();
      v37 = OUTLINED_FUNCTION_221();
      sub_1BC863968(v37, v38, &qword_1BC901BF0, v39);
      v114 = v29;
      v41 = v40;
      v42 = OUTLINED_FUNCTION_221();
      v43 = v121;
      sub_1BC7C1744(v42, v44, &qword_1BC901BF0);
      v119(v1, v9);
      v45 = OUTLINED_FUNCTION_29();
      v48 = sub_1BC7A9A4C(v45, v46, v47);

      *(v32 + 4) = v48;
      *(v32 + 12) = 2080;
      v123 = sub_1BC7C0454(v43);
      v49 = sub_1BC8F7C94();
      sub_1BC7A9A4C(v49, v50, &v126);
      OUTLINED_FUNCTION_10_2();

      *(v32 + 14) = v41;
      v51 = v114;
      _os_log_impl(&dword_1BC7A3000, v114, v115, "saving transcription to file %s of %s entries", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v24 = v120;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      v119(v1, v9);
    }

    v68 = objc_opt_self();
    sub_1BC7D9730(0, &unk_1EBCF5E40, 0x1E69D8AD8);
    v69 = sub_1BC8F7E34();
    v126 = 0;
    v70 = [v68 archivedDataWithRootObject:v69 requiringSecureCoding:1 error:&v126];

    v71 = v126;
    if (v70)
    {
      v72 = sub_1BC8F70D4();
      v74 = v73;

      sub_1BC8F70F4();
      sub_1BC7D4C94(v72, v74);
      v106 = v117;
      v107 = v118[4];
      v108 = v122;
      v109 = OUTLINED_FUNCTION_19_5();
      v110(v109);
      v111 = v108;
      v112 = 0;
    }

    else
    {
      v75 = v71;
      v76 = sub_1BC8F6EA4();

      swift_willThrow();
      v77 = v76;
      v78 = sub_1BC8F7714();
      v79 = sub_1BC8F81E4();

      if (os_log_type_enabled(v78, v79))
      {
        OUTLINED_FUNCTION_9();
        v80 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v81 = swift_slowAlloc();
        v126 = v81;
        *v80 = 136315138;
        swift_getErrorValue();
        v82 = v124;
        v83 = v125;
        v84 = sub_1BC8F83F4();
        v118 = &v114;
        OUTLINED_FUNCTION_0(v84);
        v121 = v26;
        v86 = v85;
        v88 = *(v87 + 64);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1EEE9AC00](v89);
        v91 = &v114 - v90;
        (*(*(v83 - 8) + 16))(&v114 - v90, v82, v83);
        OUTLINED_FUNCTION_30_0();
        __swift_storeEnumTagSinglePayload(v92, v93, v94, v83);
        v95 = sub_1BC8073F0(v91, v83);
        v97 = v96;
        v98 = *(v86 + 8);
        v99 = OUTLINED_FUNCTION_199();
        v100(v99);
        v101 = sub_1BC7A9A4C(v95, v97, &v126);

        *(v80 + 4) = v101;
        OUTLINED_FUNCTION_25_9();
        _os_log_impl(v102, v103, v104, v105, v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();

        v106 = v117;
        v119(v120, v117);
      }

      else
      {

        v106 = v117;
        v119(v24, v117);
      }

      v111 = v122;
      v112 = 1;
    }

    __swift_storeEnumTagSinglePayload(v111, v112, 1, v106);
    v113 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_24();
  }

  else
  {
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_10_18();
      swift_once();
    }

    v52 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v52, qword_1EDC2B3D8);
    v53 = sub_1BC8F7714();
    sub_1BC8F8204();
    v54 = OUTLINED_FUNCTION_63_3();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_45();
      v56 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v56);
      OUTLINED_FUNCTION_62_2();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v62 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_24();

    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  }
}

void Message.__allocating_init(conversationID:messageFile:messageThumbnail:messageType:transcript:sender:provider:isSensitive:duration:recipient:isRTT:simID:quality:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, unsigned __int8 *a29, __int128 *a30)
{
  OUTLINED_FUNCTION_97_0();
  a21 = v32;
  a22 = v33;
  v102 = v34;
  v103 = v35;
  v100 = v36;
  v101 = v37;
  v99 = v38;
  v111 = v39;
  v112 = v40;
  v109 = a23;
  v110 = v41;
  v107 = a25;
  v108 = a24;
  v106 = a26;
  v104 = a28;
  v105 = a27;
  v42 = a29;
  v43 = a30;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v45 = OUTLINED_FUNCTION_25(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v49);
  v50 = sub_1BC8F7014();
  v94 = v50;
  OUTLINED_FUNCTION_0_5();
  v52 = v51;
  v95 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_12();
  v58 = v57 - v56;
  v92 = v57 - v56;
  v59 = sub_1BC8F7264();
  v97 = v59;
  OUTLINED_FUNCTION_0_5();
  v61 = v60;
  v98 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v86 - v67;
  v91 = *v42;
  v88 = *v43;
  v87 = *(v43 + 2);
  sub_1BC8F7254();
  v69 = *(v61 + 16);
  v70 = v111;
  v69(v31, v111, v59);
  v69(v30, v70, v59);
  (*(v52 + 16))(v58, v112, v50);
  v71 = v93;
  sub_1BC7C4DAC(v99, v93, &qword_1EBCF5A20, &qword_1BC901BF0);
  v72 = v100;
  OUTLINED_FUNCTION_116();
  sub_1BC7C4DAC(v73, v58, &qword_1EBCF5A20, &qword_1BC901BF0);
  v74 = v102;
  if (!v101)
  {
    v74 = 0;
  }

  v102 = v74;
  if (v101)
  {
    v75 = v101;
  }

  else
  {
    v75 = 0xE000000000000000;
  }

  v76 = MessageStoreProvider.identifierString.getter(v103);
  v78 = v77;
  v116[0] = v91;
  v114 = v88;
  v115 = v87;
  v79 = objc_allocWithZone(type metadata accessor for Message());
  v113 = 1;
  LOBYTE(v85) = v106;
  LOBYTE(v84) = v109;
  Message.init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(v68, v31, v30, v92, v71, v110, v58, v102, v75, v76, v78, v84, v108, v107, v85, v105, v104, v116, 0x100000000, &v114, v86, v87, v88, *(&v88 + 1), v89, v90, v92, v93, v94, v95, v96, v97, v98, v99);
  sub_1BC7C1744(v72, &qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_72();
  sub_1BC7C1744(v80, v81, v82);
  OUTLINED_FUNCTION_20_3(&a18);
  v83(v112, v94);
  (*(v98 + 8))(v111, v97);
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_98();
}

void Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:reminderUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, __int128 *a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, unsigned __int8 *a32, uint64_t a33, __int128 *a34, uint64_t *a35)
{
  OUTLINED_FUNCTION_97_0();
  a21 = v35;
  a22 = v36;
  v111 = v37;
  v112 = v38;
  HIDWORD(v110) = v39;
  v100 = v40;
  v99 = v41;
  v114 = v42;
  v115 = v43;
  v116 = v44;
  v108 = a24;
  v109 = a23;
  HIDWORD(v107) = a25;
  v106 = a26;
  v105 = a27;
  v104 = a29;
  v102 = a30;
  v101 = a31;
  v45 = a34;
  v113 = a35;
  v98 = a33;
  v46 = a32;
  v47 = a28;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_9(v52);
  v96 = sub_1BC8F7014();
  v53 = OUTLINED_FUNCTION_0(v96);
  v55 = v54;
  v95 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_12();
  v60 = v59 - v58;
  v61 = sub_1BC8F7264();
  v62 = OUTLINED_FUNCTION_0(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_20_0();
  v69 = v67 - v68;
  v71 = MEMORY[0x1EEE9AC00](v70);
  v73 = &v89 - v72;
  MEMORY[0x1EEE9AC00](v71);
  v94 = *v47;
  v93 = *(v47 + 2);
  HIDWORD(v92) = *v46;
  v91 = *v45;
  v90 = *(v45 + 2);
  v74 = *(v64 + 16);
  v74(&v89 - v75, v116, v61);
  v74(v73, v114, v61);
  v74(v69, v115, v61);
  v76 = v99;
  v77 = v96;
  (*(v55 + 16))(v60, v99, v96);
  v78 = OUTLINED_FUNCTION_196(&a16);
  v79 = v97;
  sub_1BC7C4DAC(v78, v97, &qword_1EBCF5A20, &qword_1BC901BF0);
  v120 = v94;
  v121 = v93;
  v119 = BYTE4(v92);
  v117 = v91;
  v118 = v90;
  OUTLINED_FUNCTION_164(&a14);
  v97 = v80;
  v98 = &v117;
  v96 = &v119;
  v95 = v101;
  *(&v94 + 1) = v102;
  LOBYTE(v94) = v104;
  v93 = &v120;
  v92 = v105;
  *(&v91 + 1) = v106;
  LOBYTE(v91) = BYTE4(v107);
  v90 = v108;
  v89 = v109;
  v81 = OUTLINED_FUNCTION_41_1();
  Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:)(v81, v82, v69, v60, v79, HIDWORD(v110), v111, v112, v89, v90, v91, *(&v91 + 1), v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  v84 = v83;
  sub_1BC7C1744(v55 + 16, &qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_20_3(&a11);
  v85(v76, v77);
  v86 = *(v64 + 8);
  v86(v115, v61);
  v86(v114, v61);
  v86(v116, v61);
  v87 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v88 = v84;
  sub_1BC7C3684(v113, v84 + v87, &unk_1EBCF5D70, &qword_1BC8FC740);
  swift_endAccess();

  OUTLINED_FUNCTION_98();
}

void Message.__allocating_init(conversationID:messageFile:messageThumbnail:messageType:transcript:sender:provider:isSensitive:duration:recipient:isRTT:simID:quality:summary:reminderUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, __int128 *a24, unsigned __int8 *a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, _BYTE *a29, __int128 *a30, uint64_t a31)
{
  OUTLINED_FUNCTION_97_0();
  a21 = v33;
  a22 = v34;
  v105 = v35;
  v106 = v36;
  v104 = v37;
  v39 = v38;
  v108 = v41;
  v109 = v40;
  v42 = a30;
  v107 = a31;
  v102 = a23;
  v103 = v43;
  v100 = a25;
  v101 = a24;
  HIDWORD(v99) = a26;
  v98 = a27;
  v96 = v44;
  v97 = a28;
  v45 = a29;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v47 = OUTLINED_FUNCTION_25(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_31();
  v95 = v50;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v51);
  v91 = &v89 - v52;
  v53 = sub_1BC8F7014();
  v92 = v53;
  OUTLINED_FUNCTION_0_5();
  v93 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_105();
  v94 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0_5();
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_190_0();
  LOBYTE(v45) = *v45;
  v89 = *v42;
  v63 = *(v42 + 2);
  (*(v59 + 16))(v32, v109);
  OUTLINED_FUNCTION_186();
  v64(v31, v108, v53);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_171();
  sub_1BC7C4DAC(v65, v66, v67, v68);
  v69 = v95;
  OUTLINED_FUNCTION_171();
  sub_1BC7C4DAC(v70, v71, v72, v73);
  v112[0] = v45;
  v110 = v89;
  v111 = v63;
  v88 = v97;
  v87 = v98;
  LOBYTE(v86) = BYTE4(v99);
  v85 = v100;
  v84 = v101;
  LOBYTE(v83) = v102;
  v74 = OUTLINED_FUNCTION_41_1();
  Message.__allocating_init(conversationID:messageFile:messageThumbnail:messageType:transcript:sender:provider:isSensitive:duration:recipient:isRTT:simID:quality:summary:)(v74, v75, v91, v103, v69, v104, v105, v106, v83, v84, v85, v86, v87, v88, v112, &v110, v89, *(&v89 + 1), v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  v77 = v76;
  sub_1BC7C1744(v39, &qword_1EBCF5A20, &qword_1BC901BF0);
  v78 = OUTLINED_FUNCTION_221();
  sub_1BC7C1744(v78, v79, &qword_1BC901BF0);
  OUTLINED_FUNCTION_20_3(&a20);
  v80(v108, v92);
  (*(v59 + 8))(v109, v94);
  v81 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v82 = v77;
  sub_1BC7C3684(v107, v77 + v81, &unk_1EBCF5D70, &qword_1BC8FC740);
  swift_endAccess();

  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_98();
}

void Message.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_0();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  OUTLINED_FUNCTION_37_7();
  v251 = sub_1BC8F71E4();
  v25 = OUTLINED_FUNCTION_0(v251);
  v250 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v29);
  v30 = sub_1BC8F7264();
  v31 = OUTLINED_FUNCTION_0(v30);
  v248 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_18_1(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_18_1(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v42 = OUTLINED_FUNCTION_25(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_156();
  v46 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
  v47 = sub_1BC8F7014();
  v255 = v46;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  v51 = OUTLINED_FUNCTION_26_8(OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript);
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
  v54 = &v20[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
  *v54 = 0;
  v54[1] = 0;
  OUTLINED_FUNCTION_162(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  v253 = v55;
  v56 = &v20[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  *v56 = 0;
  v56[4] = 1;
  v57 = &v20[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary];
  *(v57 + 1) = 0;
  *(v57 + 2) = 0;
  *v57 = 0;
  v58 = OUTLINED_FUNCTION_26_8(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID);
  v249 = v30;
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v30);
  v61 = &v20[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  *(v61 + 1) = 0;
  *(v61 + 2) = 0;
  *v61 = 0;
  OUTLINED_FUNCTION_165(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile);
  OUTLINED_FUNCTION_165(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile);
  v62 = sub_1BC7D9730(0, &qword_1EDC20640, 0x1E696AEC0);
  v63 = sub_1BC8F8364();
  if (!v63)
  {
    goto LABEL_26;
  }

  v252 = v63;
  v64 = sub_1BC8F8364();
  if (!v64)
  {
    v96 = &a9;
LABEL_24:

LABEL_26:
LABEL_27:
    OUTLINED_FUNCTION_197();
LABEL_28:
    v98 = OUTLINED_FUNCTION_42_10(&a15);
    sub_1BC7C1744(v98, v99, &qword_1BC901BF0);
    v100 = OUTLINED_FUNCTION_42_10(&a14);
    sub_1BC7C1744(v100, v101, &qword_1BC901BF0);
    v102 = v54[1];

    v103 = *(v21 + 8);

    v104 = *(v57 + 2);

    v105 = OUTLINED_FUNCTION_88_1(&a12);
    sub_1BC7C1744(v105, v106, v107);
    v108 = OUTLINED_FUNCTION_206();
    sub_1BC7C532C(v108);
    OUTLINED_FUNCTION_135_0(&a13);

    type metadata accessor for Message();
    OUTLINED_FUNCTION_99_0();
    v111 = *((*MEMORY[0x1E69E7D40] & v110) + 0x30);
    v112 = *((*MEMORY[0x1E69E7D40] & v110) + 0x34);
    swift_deallocPartialClassInstance();
LABEL_29:
    OUTLINED_FUNCTION_24();
    return;
  }

  v65 = v64;
  v66 = sub_1BC8F8364();
  if (!v66)
  {
    OUTLINED_FUNCTION_58_4();

    goto LABEL_26;
  }

  v244 = v54;
  v245 = v65;
  v246 = v66;
  v67 = sub_1BC8F8364();
  if (!v67)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();
LABEL_32:

LABEL_33:
    OUTLINED_FUNCTION_197();
    v54 = v244;
    goto LABEL_28;
  }

  v68 = v67;
  v242 = sub_1BC7D9730(0, &qword_1EDC210D0, 0x1E696AD98);
  v69 = sub_1BC8F8364();
  if (!v69)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();

    goto LABEL_32;
  }

  v243 = v69;
  v70 = sub_1BC8F8364();
  v54 = v244;
  if (!v70)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();

    v96 = v263;
    goto LABEL_24;
  }

  v241 = v70;
  v71 = sub_1BC8F8364();
  if (!v71)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();

    OUTLINED_FUNCTION_145();
    v96 = &v262;
    goto LABEL_24;
  }

  v239 = v71;
  v240 = v68;
  sub_1BC7D9730(0, &qword_1EDC1FF30, 0x1E695DF00);
  v72 = sub_1BC8F8364();
  if (!v72)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_154();
    v96 = v261;
    goto LABEL_24;
  }

  v237 = v72;
  v73 = sub_1BC8F8364();
  if (!v73)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_159();
    v96 = &v260;
    goto LABEL_24;
  }

  v236 = v73;
  v238 = v20;
  v74 = sub_1BC8F8364();
  if (!v74 || (v75 = v74, v234 = [v74 BOOLValue], v75, (v76 = OUTLINED_FUNCTION_113_0()) == 0))
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_108_0();

    v120 = &v259;
LABEL_38:

    OUTLINED_FUNCTION_167();
    goto LABEL_27;
  }

  v235 = v76;
  OUTLINED_FUNCTION_155();
  v77 = OUTLINED_FUNCTION_113_0();
  if (!v77)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_108_0();

    OUTLINED_FUNCTION_104_0();
    v120 = &v258;
    goto LABEL_38;
  }

  v233 = v77;
  OUTLINED_FUNCTION_155();
  v78 = OUTLINED_FUNCTION_113_0();
  if (!v78 || (v79 = v78, v231 = [v78 BOOLValue], v79, v80 = type metadata accessor for SandboxExtendedURL(), (v81 = sub_1BC8F8364()) == 0))
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_108_0();

    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_183();
    v120 = &v257;
    goto LABEL_38;
  }

  v230 = v80;
  v232 = v81;
  v82 = v242;
  v83 = OUTLINED_FUNCTION_113_0();
  if (!v83)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_108_0();

    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_229();
    v120 = &v256;
    goto LABEL_38;
  }

  v229 = v83;
  v84 = OUTLINED_FUNCTION_113_0();
  if (!v84)
  {
    OUTLINED_FUNCTION_58_4();

    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_108_0();

    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_229();

    v120 = &v255;
    goto LABEL_38;
  }

  v85 = v84;
  v228 = [v84 BOOLValue];

  OUTLINED_FUNCTION_166();
  v86 = sub_1BC8F8364();
  if (!v86)
  {
    goto LABEL_20;
  }

  v226 = v86;
  sub_1BC8F7C24();
  sub_1BC8F6FE4();

  OUTLINED_FUNCTION_122_0(&a15);
  OUTLINED_FUNCTION_37_5();
  v87 = swift_beginAccess();
  OUTLINED_FUNCTION_226(v87, v88, &qword_1EBCF5A20, &qword_1BC901BF0);
  swift_endAccess();
  v89 = sub_1BC8F8364();
  if (!v89)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v151 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v151, qword_1EDC2B3A8);
    v152 = sub_1BC8F7714();
    v21 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_28_7(v21))
    {
      OUTLINED_FUNCTION_45();
      v153 = swift_slowAlloc();
      v62 = v242;
      OUTLINED_FUNCTION_81(v153);
      OUTLINED_FUNCTION_136_0();
      _os_log_impl(v154, v155, v156, v157, v242, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_108_0();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_58_4();

    goto LABEL_27;
  }

  v90 = v89;

  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v91 = *(v24 + v254);
  *(v24 + v254) = v90;
  v82 = v238;

LABEL_20:
  v92 = OUTLINED_FUNCTION_228();
  if (v92)
  {
    v227 = v92;
    sub_1BC8F7C24();
    sub_1BC8F6FE4();

    OUTLINED_FUNCTION_122_0(&a14);
    OUTLINED_FUNCTION_37_5();
    v93 = swift_beginAccess();
    OUTLINED_FUNCTION_226(v93, v94, &qword_1EBCF5A20, &qword_1BC901BF0);
    swift_endAccess();
    if (sub_1BC8F8364())
    {

      OUTLINED_FUNCTION_35_7();
      swift_beginAccess();
      OUTLINED_FUNCTION_207();

      LODWORD(v255) = 3;
      goto LABEL_45;
    }

    v62 = v227;
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v165 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v165, qword_1EDC2B3A8);
    v166 = sub_1BC8F7714();
    v21 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_28_7(v21))
    {
      OUTLINED_FUNCTION_45();
      v167 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v167);
      OUTLINED_FUNCTION_136_0();
      _os_log_impl(v168, v169, v170, v171, v82, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_108_0();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_58_4();

    goto LABEL_33;
  }

  LODWORD(v255) = 0;
LABEL_45:
  v135 = OUTLINED_FUNCTION_228();
  if (v135)
  {
    v136 = v135;
    v137 = sub_1BC8F7C24();
    v139 = v138;

    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v140 = v54[1];
    *v54 = v137;
    v54[1] = v139;
    OUTLINED_FUNCTION_166();
  }

  v141 = OUTLINED_FUNCTION_228();
  if (v141)
  {
    v142 = v141;
    v143 = sub_1BC8F7C24();
    v145 = v144;

    OUTLINED_FUNCTION_121_0(&a11);
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v146 = v142[1];
    *v142 = v143;
    v142[1] = v145;
    OUTLINED_FUNCTION_166();
  }

  v147 = OUTLINED_FUNCTION_228();
  if (v147)
  {
    v148 = v147;
    sub_1BC8F7C24();
    v149 = sub_1BC8F8804();
    OUTLINED_FUNCTION_166();

    if (v149 >= 4)
    {
      v150 = 0;
    }

    else
    {
      v150 = v149;
    }
  }

  else
  {
    v150 = 0;
  }

  v158 = v249;
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality) = v150;
  v159 = sub_1BC8F8364();
  if (v159)
  {
    v160 = v159;
    v161 = [v159 intValue];

    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    *v56 = v161;
    OUTLINED_FUNCTION_166();
    v56[4] = 0;
  }

  type metadata accessor for XPCWrapper();
  v162 = sub_1BC8F8364();
  if (v162)
  {
    v163 = v162;
    sub_1BC86455C();
    v164 = v248;

    v176 = OUTLINED_FUNCTION_206();
    *v61 = v177;
    *(v61 + 8) = v178;
    sub_1BC7C532C(v176);
  }

  else
  {
    v164 = v248;
  }

  v179 = sub_1BC8F8364();
  if (v179)
  {
    v180 = v179;
    sub_1BC864600();

    v181 = v263[7];
    v182 = v263[8];
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v183 = *(v57 + 2);
    *v57 = v263[6];
    *(v57 + 1) = v181;
    *(v57 + 2) = v182;
  }

  v184 = sub_1BC7D9730(0, &qword_1EDC20648, 0x1E696AFB0);
  v185 = sub_1BC8F8364();
  if (v185)
  {
    v186 = v185;
    sub_1BC8F7244();

    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v187, v188, v189, v158);
    OUTLINED_FUNCTION_122_0(&a12);
    OUTLINED_FUNCTION_37_5();
    v190 = swift_beginAccess();
    OUTLINED_FUNCTION_226(v190, v191, &unk_1EBCF5D70, &qword_1BC8FC740);
    swift_endAccess();
  }

  sub_1BC8F7C24();
  v192 = v247;
  if (!sub_1BC8697F8())
  {
    __break(1u);
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_141();
  sub_1BC8F7244();

  v193 = *(v164 + 32);
  v194 = OUTLINED_FUNCTION_148(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID);
  v193(v194);
  sub_1BC8F7C24();
  if (!sub_1BC8697F8())
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_141();
  sub_1BC8F7244();

  v195 = OUTLINED_FUNCTION_148(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID);
  v193(v195);
  sub_1BC8F7C24();
  if (!sub_1BC8697F8())
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_141();
  sub_1BC8F7244();

  v196 = OUTLINED_FUNCTION_148(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID);
  v193(v196);
  sub_1BC8F7C24();
  sub_1BC8F6FE4();

  v197 = OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_43(v197, v198, v47);
  if (v199)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v200 = *(*(v47 - 8) + 32);
  OUTLINED_FUNCTION_120_0();
  v201();
  v202 = MessageType.init(rawValue:)([v243 shortValue]);
  if ((v202 & 0x10000) != 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType) = v202;
  v203 = v241;
  v204 = sub_1BC8F7C24();
  OUTLINED_FUNCTION_109_0(v204, v205, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_209(v261);
  v206 = sub_1BC8F7C24();
  OUTLINED_FUNCTION_109_0(v206, v207, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_215(&v264);
  v208 = v237;
  sub_1BC8F71B4();
  v209 = *(v250 + 32);
  v209(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated, v47, v251);
  v210 = v236;
  sub_1BC8F71B4();
  v209(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified, v47, v251);
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead) = v234;
  v211 = v235;
  sub_1BC8F80B4();
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration) = v212;
  v213 = v233;
  v214 = MailboxType.init(rawValue:)([v233 shortValue]);
  if ((v214 & 0x10000) == 0)
  {
    *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType) = v214;
    *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive) = v231;
    v215 = v232;
    *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile) = v232;
    v216 = v215;
    v217 = v229;
    v218 = TranscriptionStatus.init(rawValue:)([v229 shortValue]);
    v219 = v255;
    if ((v218 & 0x10000) == 0)
    {
      v219 = v218;
    }

    *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus) = v219;
    *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT) = v228;
    v220 = type metadata accessor for Message();
    v264.receiver = v24;
    v264.super_class = v220;
    objc_msgSendSuper2(&v264, sel_init);
    OUTLINED_FUNCTION_167();

    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_58_4();

    goto LABEL_29;
  }

LABEL_87:
  __break(1u);
}

id sub_1BC8697F8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BC8F7BE4();

  v2 = [v0 initWithUUIDString_];

  return v2;
}

void sub_1BC869894()
{
  OUTLINED_FUNCTION_97_0();
  v185 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v179 = v7;
  OUTLINED_FUNCTION_19_6();
  v8 = sub_1BC8F71E4();
  v9 = OUTLINED_FUNCTION_0(v8);
  v177 = v10;
  v178 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_4();
  v176 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v175 = v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_47();
  v174 = v20;
  OUTLINED_FUNCTION_19_6();
  v21 = sub_1BC8F7014();
  v22 = OUTLINED_FUNCTION_0(v21);
  v172 = v23;
  v173 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_4();
  v180 = v26;
  OUTLINED_FUNCTION_19_6();
  v27 = sub_1BC8F7264();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_185();
  v33 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  v184 = v0;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v34 = *(v30 + 16);
  v34(v1, v0 + v33, v27);
  sub_1BC8F7204();
  v35 = *(v30 + 8);
  v36 = OUTLINED_FUNCTION_63_1();
  v35(v36);
  v182 = v35;
  OUTLINED_FUNCTION_48_1();
  v37 = sub_1BC8F7BE4();

  v38 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_171();
  [v39 v40];

  v41 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v34(v1, v0 + v41, v27);
  sub_1BC8F7204();
  v42 = OUTLINED_FUNCTION_63_1();
  v35(v42);
  OUTLINED_FUNCTION_48_1();
  v43 = sub_1BC8F7BE4();

  v44 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_171();
  [v45 v46];

  v47 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  v48 = v0;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v34(v1, v0 + v47, v27);
  sub_1BC8F7204();
  v183 = v27;
  (v35)(v1, v27);
  OUTLINED_FUNCTION_48_1();
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_28_2();

  v49 = sub_1BC8F7BE4();
  [v185 encodeObject:v1 forKey:v49];

  v50 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v51 = *(v172 + 16);
  v51(v180, v48 + v50, v173);
  v52 = sub_1BC8F6EF4();
  v53 = *(v172 + 8);
  v53(v180, v173);
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_100();

  v54 = sub_1BC8F7BE4();
  [v185 encodeObject:v52 forKey:v54];

  v55 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC7C4DAC(v184 + v55, v174, &qword_1EBCF5A20, &qword_1BC901BF0);
  v56 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v56, v57, v173))
  {
    sub_1BC7C1744(v174, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {
    v51(v180, v174, v173);
    sub_1BC7C1744(v174, &qword_1EBCF5A20, &qword_1BC901BF0);
    v58 = sub_1BC8F6EF4();
    v60 = v59;
    v53(v180, v173);
    v187[0] = v58;
    v187[1] = v60;
    sub_1BC8F8A94();
    sub_1BC8706BC(v187);
  }

  v61 = sub_1BC8F7BE4();
  v62 = OUTLINED_FUNCTION_70_2();
  [v62 v63];
  swift_unknownObjectRelease();

  v64 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  OUTLINED_FUNCTION_155();
  v66 = sub_1BC8F7BE4();
  v67 = OUTLINED_FUNCTION_70_2();
  [v67 v68];

  v69 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC7C4DAC(v184 + v69, v175, &qword_1EBCF5A20, &qword_1BC901BF0);
  v70 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v70, v71, v173))
  {
    sub_1BC7C1744(v175, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {
    v72 = OUTLINED_FUNCTION_41_1();
    (v51)(v72);
    sub_1BC7C1744(v175, &qword_1EBCF5A20, &qword_1BC901BF0);
    v73 = sub_1BC8F6EF4();
    v75 = v74;
    v53(v180, v173);
    v186[0] = v73;
    v186[1] = v75;
    sub_1BC8F8A94();
    sub_1BC8706BC(v186);
  }

  v76 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_127(v185, sel_encodeObject_forKey_);
  swift_unknownObjectRelease();

  v77 = v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from;
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v79 = *v77;
  v78 = *(v77 + 8);

  OUTLINED_FUNCTION_41_1();
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_182();
  v80 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_138_0();
  [v81 v82];

  v83 = v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider;
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v85 = *v83;
  v84 = *(v83 + 8);

  OUTLINED_FUNCTION_41_1();
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_182();
  v86 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_138_0();
  [v87 v88];

  v89 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v181 = *(v177 + 16);
  v181(v176, v184 + v89, v178);
  v90 = sub_1BC8F7174();
  v91 = *(v177 + 8);
  v92 = OUTLINED_FUNCTION_213();
  v91(v92);
  v93 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_127(v185, sel_encodeObject_forKey_);

  v94 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v181(v176, v184 + v94, v178);
  v95 = sub_1BC8F7174();
  v96 = OUTLINED_FUNCTION_213();
  v91(v96);
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_69_2();
  v97 = OUTLINED_FUNCTION_70_2();
  [v97 v98];

  v99 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v101 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v101);

  v102 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v103 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v104 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v104);

  v105 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v106 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v107 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v107);

  v108 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v109 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v110 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v110);

  v111 = (v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient);
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v112 = v111[1];
  if (v112)
  {
    v113 = *v111;

    OUTLINED_FUNCTION_40();
    sub_1BC8F7BE4();
  }

  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_69_2();
  v114 = OUTLINED_FUNCTION_70_2();
  [v114 v115];
  swift_unknownObjectRelease();

  v116 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v117 = *(v184 + v116);
  v118 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v118);

  v119 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v120 = *(v184 + v119);
  v121 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v121);

  v122 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v123 = *(v184 + v122);
  v124 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v124);

  v125 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v126 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v127 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v127);

  v128 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v129 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v130 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_22_10(v130);

  v131 = (v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v132 = v131[1];
  if (v132)
  {
    v133 = *v131;

    OUTLINED_FUNCTION_40();
    sub_1BC8F7BE4();
  }

  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_127(v185, v134);
  swift_unknownObjectRelease();

  v135 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v136 = *(v184 + v135);
  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_182();
  v137 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_138_0();
  [v138 v139];

  v140 = (v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if ((v140[4] & 1) == 0)
  {
    v141 = *v140;
    sub_1BC8F8BE4();
  }

  sub_1BC8F7BE4();
  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_127(v185, v142);
  swift_unknownObjectRelease();

  v143 = *(v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript);
  v144 = *(v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript + 8);
  v145 = *(v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript + 16);
  v146 = type metadata accessor for XPCWrapper();
  v147 = objc_allocWithZone(v146);
  v148 = OUTLINED_FUNCTION_40();
  sub_1BC7C52A8(v148);
  v149 = OUTLINED_FUNCTION_40();
  v151 = sub_1BC8643FC(v149, v150, v145);
  v152 = sub_1BC8F7BE4();
  v153 = OUTLINED_FUNCTION_131_0();
  [v153 v154];

  v155 = (v184 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary);
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  v156 = *v155;
  v157 = v155[1];
  v158 = v155[2];
  v159 = objc_allocWithZone(v146);

  v160 = OUTLINED_FUNCTION_48_1();
  v162 = sub_1BC8642A4(v160, v161, v158);
  v163 = sub_1BC8F7BE4();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_138_0();
  [v164 v165];

  v166 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC7C4DAC(v184 + v166, v179, &unk_1EBCF5D70, &qword_1BC8FC740);
  v167 = 0;
  if (__swift_getEnumTagSinglePayload(v179, 1, v183) != 1)
  {
    v167 = sub_1BC8F7214();
    v168 = OUTLINED_FUNCTION_125();
    v182(v168);
  }

  v169 = sub_1BC8F7BE4();
  v170 = OUTLINED_FUNCTION_131_0();
  [v170 v171];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_98();
}

void sub_1BC86A9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_0();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_9(v31);
  v216 = sub_1BC8F71E4();
  v32 = OUTLINED_FUNCTION_0(v216);
  v215 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v37);
  v38 = sub_1BC8F7454();
  v39 = OUTLINED_FUNCTION_25(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_4();
  v43 = OUTLINED_FUNCTION_21_9(v42);
  v209 = type metadata accessor for FaceTimeMessageStore_Transcript(v43);
  v44 = OUTLINED_FUNCTION_4_1(v209);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_1(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v50 = OUTLINED_FUNCTION_25(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v55);
  v56 = sub_1BC8F7014();
  v57 = OUTLINED_FUNCTION_0(v56);
  v219 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_1(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  OUTLINED_FUNCTION_25(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_33_2();
  v221 = type metadata accessor for MessageAssetInfo();
  v68 = OUTLINED_FUNCTION_4_1(v221);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_21_9(v71);
  v72 = sub_1BC8F7264();
  v73 = OUTLINED_FUNCTION_0(v72);
  v217 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_1(v80);
  v81 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v56);
  v85 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v56);
  OUTLINED_FUNCTION_162(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient);
  v224 = v89;
  OUTLINED_FUNCTION_162(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  v223 = v90;
  v91 = &v20[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  *v91 = 0;
  v91[4] = 1;
  v92 = &v20[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary];
  v92[1] = 0;
  v92[2] = 0;
  *v92 = 0;
  v93 = OUTLINED_FUNCTION_26_8(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID);
  v218 = v72;
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v72);
  v96 = &v20[OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript];
  v96[1] = 0;
  v96[2] = 0;
  *v96 = 0;
  v97 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile;
  *&v20[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile] = 0;
  OUTLINED_FUNCTION_165(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile);
  sub_1BC7C0FF4();
  if ((v98 & 1) == 0 || (v99 = [v26 recordUUID]) == 0)
  {

    goto LABEL_7;
  }

  v100 = v99;
  v205 = v92;
  OUTLINED_FUNCTION_208(&v235);
  sub_1BC8F7244();

  OUTLINED_FUNCTION_72();
  sub_1BC86BAB8(v101, v102, v103);
  OUTLINED_FUNCTION_43(v21, 1, v221);
  if (v124)
  {
    OUTLINED_FUNCTION_20_3(&v231 + 8);
    v104(v92, v218);

    sub_1BC7C1744(v21, &qword_1EBCF58E0, &qword_1BC904880);
LABEL_7:
    OUTLINED_FUNCTION_72();
    sub_1BC7C1744(v105, v106, v107);
    OUTLINED_FUNCTION_72();
    sub_1BC7C1744(v108, v109, v110);
    OUTLINED_FUNCTION_134_0(&a13);

    OUTLINED_FUNCTION_134_0(&a12);

    v111 = v92[2];

    v112 = OUTLINED_FUNCTION_88_1(&a11);
    sub_1BC7C1744(v112, v113, v114);
    v115 = OUTLINED_FUNCTION_206();
    sub_1BC7C532C(v115);

    OUTLINED_FUNCTION_135_0(&a10);
    type metadata accessor for Message();
    OUTLINED_FUNCTION_99_0();
    v118 = *((*MEMORY[0x1E69E7D40] & v117) + 0x30);
    v119 = *((*MEMORY[0x1E69E7D40] & v117) + 0x34);
    swift_deallocPartialClassInstance();
LABEL_8:
    OUTLINED_FUNCTION_24();
    return;
  }

  v204 = v26;
  OUTLINED_FUNCTION_79_2();
  sub_1BC871CE4(v21, v220);
  v120 = *(v219 + 16);
  OUTLINED_FUNCTION_120_0();
  v120();
  OUTLINED_FUNCTION_209(&v233);
  OUTLINED_FUNCTION_120_0();
  v203 = v120;
  v120();
  v202 = type metadata accessor for SandboxExtendedURL();
  v121 = objc_allocWithZone(v202);
  *&v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile] = SandboxExtendedURL.init(url:)(v92);
  sub_1BC7C4DAC(v220 + *(v221 + 20), v211, &qword_1EBCF5A20, &qword_1BC901BF0);
  v122 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v122, v123, v56);
  if (v124)
  {
    sub_1BC7C1744(v211, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {
    v125 = *(v219 + 32);
    v126 = OUTLINED_FUNCTION_41_1();
    v127(v126);
    v128 = OUTLINED_FUNCTION_40();
    (v120)(v128);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v56);
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    sub_1BC7C3684(v213, &v24[v81], &qword_1EBCF5A20, &qword_1BC901BF0);
    swift_endAccess();
    OUTLINED_FUNCTION_209(&v233);
    OUTLINED_FUNCTION_120_0();
    v120();
    v132 = objc_allocWithZone(v202);
    v133 = SandboxExtendedURL.init(url:)(v92);
    OUTLINED_FUNCTION_191(&v234);
    v134(v207, v56);
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v135 = *&v24[v97];
    *&v24[v97] = v133;
  }

  OUTLINED_FUNCTION_58_4();
  sub_1BC7C4DAC(v220 + *(v136 + 24), v212, &qword_1EBCF5A20, &qword_1BC901BF0);
  v137 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_43(v137, v138, v56);
  if (v124)
  {
    sub_1BC7C1744(v212, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {
    v139 = *(v219 + 32);
    v140 = OUTLINED_FUNCTION_41_1();
    v141(v140);
    v142 = OUTLINED_FUNCTION_40();
    v92 = (v219 + 16);
    (v203)(v142);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v143, v144, v145, v56);
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    sub_1BC7C3684(v213, &v24[v85], &qword_1EBCF5A20, &qword_1BC901BF0);
    swift_endAccess();
    OUTLINED_FUNCTION_196(&v233);
    OUTLINED_FUNCTION_120_0();
    v203();
    v146 = objc_allocWithZone(v202);
    v147 = SandboxExtendedURL.init(url:)(v85);
    (*(v219 + 8))(v208, v56);
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v148 = *&v24[v222];
    *&v24[v222] = v147;
  }

  v149 = sub_1BC7C30A0(v26);
  if (v150 >> 60 != 15)
  {
    v92 = v149;
    v233 = v149;
    v234 = v150;
    v228 = 0;
    memset(v227, 0, sizeof(v227));
    sub_1BC7EC5DC(v149, v150);
    sub_1BC8F7444();
    OUTLINED_FUNCTION_83_2();
    sub_1BC7C4720(v151, v152);
    sub_1BC8F7554();
    OUTLINED_FUNCTION_80_1();
    sub_1BC871D3C(v214, v206);
    sub_1BC7D9A8C(v206, v227);
    v153 = OUTLINED_FUNCTION_79();
    sub_1BC7ECAC8(v153, v154);
    sub_1BC871D94(v214, v209);
    v155 = OUTLINED_FUNCTION_206();
    *v96 = v156;
    *(v96 + 1) = *&v227[1];
    sub_1BC7C532C(v155);
  }

  v157 = [v26 recordUUID];
  if (!v157)
  {
    __break(1u);
    goto LABEL_37;
  }

  v158 = v157;
  OUTLINED_FUNCTION_208(&v229);
  sub_1BC8F7244();

  v159 = *(v217 + 32);
  (v159)(&v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID], v92, v218);
  v160 = [v26 callUUID];
  if (!v160)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v161 = v160;
  OUTLINED_FUNCTION_194(&v228);
  sub_1BC8F7244();

  v162 = OUTLINED_FUNCTION_184(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID);
  v159(v162);
  v163 = [v26 conversationID];
  if (!v163)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v164 = v163;
  OUTLINED_FUNCTION_194(&v227[3]);
  sub_1BC8F7244();

  v165 = OUTLINED_FUNCTION_184(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID);
  v159(v165);
  v166 = MessageType.init(rawValue:)([v26 messageType]);
  if ((v166 & 0x10000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *&v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType] = v166;
  v167 = sub_1BC7C3174(v26);
  if (!v168)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_109_0(v167, v168, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  v169 = sub_1BC7C3180(v26);
  if (!v170)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_109_0(v169, v170, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  v171 = [v26 dateCreated];
  if (!v171)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v172 = v171;
  OUTLINED_FUNCTION_194(&v227[1]);
  sub_1BC8F71B4();

  v173 = *(v215 + 32);
  v174 = OUTLINED_FUNCTION_184(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated);
  v173(v174);
  v175 = [v204 dateModified];
  if (!v175)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v176 = v175;
  OUTLINED_FUNCTION_194(v227);
  sub_1BC8F71B4();

  v177 = OUTLINED_FUNCTION_184(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified);
  v173(v177);
  v178 = [v204 isRead];
  v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead] = v178;
  [v204 duration];
  *&v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration] = v179;
  v180 = MailboxType.init(rawValue:)([v204 mailboxType]);
  if ((v180 & 0x10000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *&v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType] = v180;
  v181 = [v204 isSensitive];
  v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive] = v181;
  sub_1BC7C318C(v204);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v182 = v224[1];
  *v224 = v176;
  v224[1] = v173;

  v183 = TranscriptionStatus.init(rawValue:)([v204 transcriptionStatus]);
  if ((v183 & 0x10000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *&v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus] = v183;
  v184 = [v204 isRTT];
  v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT] = v184;
  sub_1BC7C31B0(v204);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_35_7();
  swift_beginAccess();
  v185 = v223[1];
  *v223 = v176;
  v223[1] = v173;

  sub_1BC7C31BC(v204);
  if (!v186)
  {
    v188 = 0;
    goto LABEL_33;
  }

  sub_1BC7C31BC(v204);
  if (v187)
  {
    sub_1BC8F8804();
    OUTLINED_FUNCTION_182();
    if (v173 >= 4)
    {
      v188 = 0;
    }

    else
    {
      v188 = v173;
    }

LABEL_33:
    v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality] = v188;
    sub_1BC7C31C8();
    v225 = v231;
    v189 = v232;
    v190 = 1;
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v191 = v205[2];
    *v205 = v225;
    v205[2] = v189;

    v192 = [v204 reminderUUID];
    if (v192)
    {
      v193 = v192;
      sub_1BC8F7244();

      v190 = 0;
    }

    sub_1BC871D94(v220, type metadata accessor for MessageAssetInfo);
    v194 = *(v217 + 8);
    v195 = OUTLINED_FUNCTION_81_0();
    v196(v195);
    __swift_storeEnumTagSinglePayload(v210, v190, 1, v218);
    OUTLINED_FUNCTION_122_0(&a11);
    OUTLINED_FUNCTION_37_5();
    v197 = swift_beginAccess();
    OUTLINED_FUNCTION_226(v197, v198, &unk_1EBCF5D70, &qword_1BC8FC740);
    swift_endAccess();
    OUTLINED_FUNCTION_121_0(&v226);
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    OUTLINED_FUNCTION_104_0();
    *v190 = v199;
    *(v190 + 4) = v200 & 1;
    v201 = type metadata accessor for Message();
    v230.receiver = v24;
    v230.super_class = v201;
    objc_msgSendSuper2(&v230, sel_init);

    goto LABEL_8;
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_1BC86BAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for MessageAssetInfo();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v34 - v21;
  v36 = a1;
  v38 = a2;
  if (a2)
  {
    v37 = &v34;
    v23 = v19;
    v24 = *(a2 + 32);
    v25 = MEMORY[0x1EEE9AC00](v20);
    *(&v34 - 2) = a2;
    *(&v34 - 1) = a1;
    MEMORY[0x1EEE9AC00](v25);
    *(&v34 - 2) = sub_1BC82EF84;
    *(&v34 - 1) = v26;
    os_unfair_lock_lock(v24 + 4);
    sub_1BC82EFA0(v27);
    v28 = v24 + 4;
    v19 = v23;
    os_unfair_lock_unlock(v28);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      sub_1BC871CE4(v14, v22);
      v29 = v22;
      v30 = a3;
LABEL_10:
      sub_1BC871CE4(v29, v30);
      v31 = 0;
      return __swift_storeEnumTagSinglePayload(a3, v31, 1, v15);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  }

  sub_1BC7C1744(v14, &qword_1EBCF58E0, &qword_1BC904880);
  sub_1BC803F84();
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) != 1)
  {
    sub_1BC871CE4(v12, v19);
    if (v38)
    {
      v32 = v35;
      sub_1BC871D3C(v19, v35);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v15);
      sub_1BC82A374(v32, v36);
      sub_1BC7C1744(v32, &qword_1EBCF58E0, &qword_1BC904880);
    }

    v29 = v19;
    v30 = a3;
    goto LABEL_10;
  }

  sub_1BC7C1744(v12, &qword_1EBCF58E0, &qword_1BC904880);
  v31 = 1;
  return __swift_storeEnumTagSinglePayload(a3, v31, 1, v15);
}

void sub_1BC86BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_9(v30);
  v253 = sub_1BC8F71E4();
  v31 = OUTLINED_FUNCTION_0(v253);
  v255 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v36);
  v37 = sub_1BC8F7454();
  v38 = OUTLINED_FUNCTION_25(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_4_4();
  v42 = OUTLINED_FUNCTION_21_9(v41);
  v243 = type metadata accessor for FaceTimeMessageStore_Transcript(v42);
  v43 = OUTLINED_FUNCTION_4_1(v243);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_1(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_9(v52);
  v53 = sub_1BC8F7014();
  v54 = OUTLINED_FUNCTION_0(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_21_9(v62);
  v63 = sub_1BC8F7264();
  v64 = OUTLINED_FUNCTION_0(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v71);
  v73 = v236 - v72;
  v74 = OUTLINED_FUNCTION_26_8(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail);
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v53);
  v77 = OUTLINED_FUNCTION_26_8(OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript);
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v53);
  OUTLINED_FUNCTION_162(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient);
  *&v262 = v80;
  OUTLINED_FUNCTION_162(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  v260 = v81;
  v82 = v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
  *v82 = 0;
  v247 = v82;
  *(v82 + 4) = 1;
  OUTLINED_FUNCTION_177((v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary));
  v261 = v83;
  v84 = OUTLINED_FUNCTION_26_8(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID);
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v63);
  OUTLINED_FUNCTION_177((v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__newTranscript));
  v246 = v87;
  OUTLINED_FUNCTION_165(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxThumbnailFile);
  OUTLINED_FUNCTION_165(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxTranscriptFile);
  v88 = [v25 recordUUID];
  if (!v88)
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v155 = sub_1BC8F7734();
    __swift_project_value_buffer(v155, qword_1EDC2B3A8);
    v156 = v25;
    v157 = sub_1BC8F7714();
    sub_1BC8F81E4();

    if (OUTLINED_FUNCTION_18_7())
    {
      OUTLINED_FUNCTION_9();
      v158 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_10();
      v159 = swift_slowAlloc();
      *v158 = 138412290;
      *(v158 + 4) = v156;
      *v159 = v156;
      v160 = v156;
      OUTLINED_FUNCTION_136_0();
      _os_log_impl(v161, v162, v163, v164, v158, 0xCu);
      sub_1BC7C1744(v159, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v156 = v157;
      v157 = v160;
    }

    v165 = OUTLINED_FUNCTION_42_10(&v268);
    sub_1BC7C1744(v165, v166, &qword_1BC901BF0);
    v167 = OUTLINED_FUNCTION_42_10(&v271);
    sub_1BC7C1744(v167, v168, &qword_1BC901BF0);
    OUTLINED_FUNCTION_58_4();
    v170 = *(v169 + 8);

    OUTLINED_FUNCTION_134_0(&v273);

    v171 = *(v261 + 16);

    v172 = OUTLINED_FUNCTION_88_1(&v275);
    sub_1BC7C1744(v172, v173, v174);
    OUTLINED_FUNCTION_104_0();
    v176 = OUTLINED_FUNCTION_203(v175);
    sub_1BC7C532C(v176);
    OUTLINED_FUNCTION_135_0(&v269);

    OUTLINED_FUNCTION_135_0(&v270);
    type metadata accessor for Message();
    OUTLINED_FUNCTION_99_0();
    v180 = *((*MEMORY[0x1E69E7D40] & v179) + 0x30);
    v181 = *((*MEMORY[0x1E69E7D40] & v179) + 0x34);
    swift_deallocPartialClassInstance();
    goto LABEL_40;
  }

  v89 = v88;
  sub_1BC8F7244();

  v241 = v66;
  v90 = *(v66 + 32);
  v91 = OUTLINED_FUNCTION_168();
  v242 = v63;
  v244 = v66 + 32;
  v90(v91);
  v92 = v90;
  v263 = v73;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v93 = sub_1BC8F7734();
  v94 = __swift_project_value_buffer(v93, qword_1EDC2B3A8);
  v95 = v25;
  v236[1] = v94;
  v96 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_18_7())
  {
    OUTLINED_FUNCTION_9();
    v97 = v56;
    v98 = v53;
    v99 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_10();
    v100 = swift_slowAlloc();
    *v99 = 138412290;
    *(v99 + 4) = v95;
    *v100 = v95;
    v101 = v95;
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_205();
    _os_log_impl(v102, v103, v104, v105, v106, v107);
    sub_1BC7C1744(v100, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v53 = v98;
    v56 = v97;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v108 = MessageType.init(rawValue:)([v95 messageType]);
  if ((v108 & 0x10000) != 0)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v239 = v108;
  v109 = MailboxType.init(rawValue:)([v95 mailboxType]);
  if ((v109 & 0x10000) != 0)
  {
    v110 = 0;
  }

  else
  {
    v110 = v109;
  }

  v238 = v110;
  v111 = [v95 messageFile];
  if (!v111)
  {
    goto LABEL_42;
  }

  v112 = v111;
  v113 = v264;
  sub_1BC8F6FB4();

  v114 = *(v56 + 16);
  v114(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile, v113, v53);
  sub_1BC8F6F44();
  OUTLINED_FUNCTION_37_7();
  v115 = objc_allocWithZone(type metadata accessor for SandboxExtendedURL());
  *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_sandboxMessageFile) = OUTLINED_FUNCTION_114_1();
  v116 = [v95 messageThumbnail];
  if (v116)
  {
    v117 = v116;
    v118 = v245;
    sub_1BC8F6FB4();

    v119 = OUTLINED_FUNCTION_121_0(&v272);
    v114(v119, v118, v53);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v53);
    v236[0] = v114;
    v123 = v92;
    v124 = v257;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    sub_1BC7C3684(v117, v23 + v124, &qword_1EBCF5A20, &qword_1BC901BF0);
    swift_endAccess();
    sub_1BC8F6F44();
    v125 = objc_allocWithZone(OUTLINED_FUNCTION_100());
    v126 = OUTLINED_FUNCTION_114_1();
    (*(v56 + 8))(v118, v53);
    v127 = v258;
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v128 = *(v23 + v127);
    *(v23 + v127) = v126;
    v92 = v123;
    v114 = v236[0];
  }

  v258 = v56;
  v256 = v53;
  v129 = sub_1BC7C30A0(v95);
  v240 = v92;
  if (v130 >> 60 != 15)
  {
    sub_1BC7ECAC8(v129, v130);
    v131 = sub_1BC7C19F8(v95, &selRef_transcriptType);
    if (v132)
    {
      v133 = v131;
      v134 = v132;
      v135 = MEMORY[0x1BFB2A220]();
      OUTLINED_FUNCTION_204(&v263);
      sub_1BC7C1A54(v133, v134, v136);

      objc_autoreleasePoolPop(v135);
      v137 = v259;
      v138 = v256;
      v114(v259, v114, v256);
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v138);
      OUTLINED_FUNCTION_122_0(&v271);
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      sub_1BC7C3684(v137, v23 + v134, &qword_1EBCF5A20, &qword_1BC901BF0);
      swift_endAccess();
      sub_1BC8F6F44();
      v142 = objc_allocWithZone(OUTLINED_FUNCTION_100());
      OUTLINED_FUNCTION_114_1();
      OUTLINED_FUNCTION_191(&v269);
      v143(v114, v138);
LABEL_18:
      v92 = v241;
      OUTLINED_FUNCTION_35_7();
      swift_beginAccess();
      OUTLINED_FUNCTION_207();

      v154 = v255;
      goto LABEL_25;
    }
  }

  v144 = [v95 transcript];
  if (v144)
  {
    v145 = v144;
    OUTLINED_FUNCTION_215(&v265);
    sub_1BC8F6FB4();

    v146 = OUTLINED_FUNCTION_196(&v272);
    v147 = v256;
    v114(v146, v92, v256);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v147);
    OUTLINED_FUNCTION_122_0(&v271);
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    sub_1BC7C3684(v53, v145 + v23, &qword_1EBCF5A20, &qword_1BC901BF0);
    swift_endAccess();
    sub_1BC8F6F44();
    v151 = objc_allocWithZone(OUTLINED_FUNCTION_100());
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_191(&v269);
    v152(v92, v147);
    goto LABEL_18;
  }

  v92 = v241;
  v154 = v255;
LABEL_25:
  v182 = v254;
  v183 = sub_1BC7C30A0(v95);
  if (v184 >> 60 != 15)
  {
    v272 = v183;
    v273 = v184;
    memset(v266, 0, sizeof(v266));
    sub_1BC7EC5DC(v183, v184);
    sub_1BC8F7444();
    OUTLINED_FUNCTION_83_2();
    sub_1BC7C4720(v185, v186);
    v187 = v243;
    sub_1BC8F7554();
    OUTLINED_FUNCTION_80_1();
    v188 = v237;
    sub_1BC871D3C(v182, v237);
    sub_1BC7D9A8C(v188, v266);
    v189 = OUTLINED_FUNCTION_168();
    sub_1BC7ECAC8(v189, v190);
    sub_1BC871D94(v182, v187);
    v191 = OUTLINED_FUNCTION_150();
    *v193 = v192;
    *(v193 + 8) = *&v266[1];
    sub_1BC7C532C(v191);
  }

  v194 = *(v92 + 2);
  v195 = OUTLINED_FUNCTION_149(OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID);
  v196 = v242;
  v197(v195);
  v198 = [v95 callUUID];
  if (!v198)
  {
    goto LABEL_43;
  }

  v199 = v198;
  v200 = v252;
  sub_1BC8F7244();

  v201 = v240;
  v240(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID, v200, v196);
  v202 = [v95 conversationID];
  v203 = v253;
  if (!v202)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v204 = v202;
  v205 = v251;
  sub_1BC8F7244();

  v201(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID, v205, v196);
  *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType) = v239;
  v206 = sub_1BC7C3174(v95);
  if (!v207)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_109_0(v206, v207, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  v208 = sub_1BC7C3180(v95);
  if (!v209)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_109_0(v208, v209, OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  v210 = [v95 dateCreated];
  if (!v210)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v211 = v210;
  v212 = v250;
  sub_1BC8F71B4();

  v215 = *(v154 + 32);
  v214 = (v154 + 32);
  v213 = v215;
  v215(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated, v212, v203);
  v216 = [v95 dateModified];
  if (!v216)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v217 = v216;
  v218 = v249;
  sub_1BC8F71B4();

  v213(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified, v218, v203);
  v219 = [v95 isRead];
  *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead) = v219;
  [v95 duration];
  *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration) = v220;
  *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType) = v238;
  v221 = [v95 isSensitive];
  *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive) = v221;
  sub_1BC7C318C(v95);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_20_9(&a9);
  swift_beginAccess();
  v222 = v203[1];
  *v203 = v217;
  v203[1] = v213;

  v223 = TranscriptionStatus.init(rawValue:)([v95 transcriptionStatus]);
  if ((v223 & 0x10000) == 0)
  {
    *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus) = v223;
    v224 = [v95 isRTT];
    *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT) = v224;
    v225 = sub_1BC7C31B0(v95);
    v227 = v226;
    v228 = 1;
    OUTLINED_FUNCTION_209(&v273);
    OUTLINED_FUNCTION_35_7();
    swift_beginAccess();
    v229 = v214[1];
    *v214 = v225;
    v214[1] = v227;

    LODWORD(v225) = [v95 voicemailID];
    OUTLINED_FUNCTION_20_9(&v266[2]);
    swift_beginAccess();
    *v227 = v225;
    *(v227 + 4) = 0;
    sub_1BC83C50C();
    v262 = *&v267[5];
    v230 = v268;
    OUTLINED_FUNCTION_20_9(&v274);
    swift_beginAccess();
    v231 = *(v227 + 16);
    *v227 = v262;
    *(v227 + 16) = v230;

    v232 = [v95 reminderUUID];
    if (v232)
    {
      v230 = v232;
      OUTLINED_FUNCTION_208(&v266[3]);
      sub_1BC8F7244();

      v228 = 0;
      OUTLINED_FUNCTION_198();
    }

    else
    {
      OUTLINED_FUNCTION_198();
      v214 = v248;
    }

    __swift_storeEnumTagSinglePayload(v214, v228, 1, v196);
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    sub_1BC7C3684(v214, v230 + v23, &unk_1EBCF5D70, &qword_1BC8FC740);
    swift_endAccess();
    sub_1BC7C31BC(v95);
    v234 = v233;
    if (v233)
    {
      sub_1BC8F8804();
      OUTLINED_FUNCTION_182();
      v234 = v228;
    }

    (*(v227 + 8))(v264, v256);
    (*(v92 + 1))(v263, v196);
    *(v23 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality) = v234;
    v235 = type metadata accessor for Message();
    v267[0] = v23;
    v267[1] = v235;
    objc_msgSendSuper2(v267, sel_init);

LABEL_40:
    OUTLINED_FUNCTION_24();
    return;
  }

LABEL_49:
  __break(1u);
  objc_autoreleasePoolPop(v92);
  __break(1u);
}

uint64_t sub_1BC86D048()
{
  v2 = v0;
  v3 = sub_1BC8657DC();
  if (v4 & 1) != 0 || (v5 = v3, v6 = sub_1BC8D3338(), (v7))
  {
    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v8 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v8, qword_1EDC2B3A8);
    v9 = sub_1BC8F7714();
    v10 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_28_7(v10))
    {
      OUTLINED_FUNCTION_45();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_202(v11);
      OUTLINED_FUNCTION_25_9();
      _os_log_impl(v12, v13, v14, v15, v1, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

LABEL_8:
    v16 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    if (*(v2 + v16))
    {
      return 1;
    }

    v17 = v2 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    if (*(v17 + 4) != 1)
    {
      return 1;
    }

    if (qword_1EDC20728 == -1)
    {
LABEL_11:
      v18 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v18, qword_1EDC2B3A8);
      v19 = sub_1BC8F7714();
      sub_1BC8F81F4();
      v20 = OUTLINED_FUNCTION_63_3();
      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_45();
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v22);
        OUTLINED_FUNCTION_62_2();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      return 1;
    }

LABEL_29:
    OUTLINED_FUNCTION_1();
    swift_once();
    goto LABEL_11;
  }

  v29 = v5 + v5;
  if (v29 == INFINITY)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (__OFADD__(v29, 10485760))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v29 + 10485760 < v6)
  {
    goto LABEL_8;
  }

  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v30 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v30, qword_1EDC2B3A8);
  v31 = sub_1BC8F7714();
  sub_1BC8F81E4();
  v32 = OUTLINED_FUNCTION_63_3();
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_45();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v34);
    OUTLINED_FUNCTION_62_2();
    _os_log_impl(v35, v36, v37, v38, v39, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  return 0;
}

void sub_1BC86D344()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v233[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F7C64();
  v3 = OUTLINED_FUNCTION_25(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v218 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  v216 = v15;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_47();
  v215 = v17;
  OUTLINED_FUNCTION_19_6();
  v223 = sub_1BC8F7134();
  v18 = OUTLINED_FUNCTION_0(v223);
  v229 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_4();
  v214 = v22;
  OUTLINED_FUNCTION_19_6();
  v222 = sub_1BC8F7154();
  v23 = OUTLINED_FUNCTION_0(v222);
  v228 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_4();
  v213 = v27;
  OUTLINED_FUNCTION_19_6();
  v212 = sub_1BC8F71E4();
  v28 = OUTLINED_FUNCTION_0(v212);
  v227 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_4();
  v211 = v32;
  OUTLINED_FUNCTION_19_6();
  v224 = sub_1BC8F7014();
  v33 = OUTLINED_FUNCTION_0(v224);
  v226 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_4();
  v220 = v37;
  OUTLINED_FUNCTION_19_6();
  v38 = sub_1BC8F7264();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_12();
  v46 = v45 - v44;
  strcpy(v231, "recordUUID");
  BYTE3(v231[1]) = 0;
  HIDWORD(v231[1]) = -369098752;
  v47 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v48 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v219 = *(v41 + 16);
  (v219)(v46, v0 + v48, v38);
  v49 = sub_1BC8F7204();
  v51 = v50;
  v225 = *(v41 + 8);
  v52 = OUTLINED_FUNCTION_144();
  v53(v52);
  v232 = v47;
  v231[0] = v49;
  v231[1] = v51;
  OUTLINED_FUNCTION_115_0();
  v54 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v55 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v55, v56);
  v57 = v54;
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(0x444955556C6C6163);
  sub_1BC8F8544();
  v58 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID;
  v221 = v1;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (v219)(v46, v1 + v58, v38);
  sub_1BC8F7204();
  OUTLINED_FUNCTION_38_3();
  v59 = OUTLINED_FUNCTION_144();
  v225(v59);
  v232 = v47;
  v231[0] = v46;
  v231[1] = v1;
  OUTLINED_FUNCTION_115_0();
  swift_isUniquelyReferenced_nonNull_native();
  v60 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v60, v61);
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(0x61737265766E6F63);
  sub_1BC8F8544();
  v62 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (v219)(v46, v1 + v62, v38);
  sub_1BC8F7204();
  OUTLINED_FUNCTION_38_3();
  v217 = v38;
  (v225)(v46, v38);
  v63 = MEMORY[0x1E69E6158];
  v232 = MEMORY[0x1E69E6158];
  v231[0] = v46;
  v231[1] = v1;
  OUTLINED_FUNCTION_115_0();
  swift_isUniquelyReferenced_nonNull_native();
  v64 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v64, v65);
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(0x466567617373656DLL);
  sub_1BC8F8544();
  v66 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v204 = *(v226 + 16);
  (v204)(v220, v1 + v66, v224);
  sub_1BC8F6EF4();
  OUTLINED_FUNCTION_38_3();
  v205 = *(v226 + 8);
  v205(v220, v224);
  v232 = v63;
  v231[0] = v220;
  v231[1] = v1;
  OUTLINED_FUNCTION_115_0();
  swift_isUniquelyReferenced_nonNull_native();
  v67 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v67, v68);
  v69 = v57;
  sub_1BC8037DC(v233);
  strcpy(v231, "messageType");
  HIDWORD(v231[1]) = -352321536;
  OUTLINED_FUNCTION_44_8();
  v70 = v63;
  sub_1BC8F8544();
  v71 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v72 = *(v1 + v71);
  v73 = v1;
  v232 = MEMORY[0x1E69E7290];
  LOWORD(v231[0]) = v72;
  OUTLINED_FUNCTION_47_7();
  v74 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v74, v75);
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(1836020326);
  v76 = v70;
  sub_1BC8F8544();
  v77 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];

  sub_1BC7EB6B4(v79, v78);
  v81 = v80;
  v83 = v82;

  v232 = v76;
  v231[0] = v81;
  v231[1] = v83;
  OUTLINED_FUNCTION_47_7();
  v84 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v84, v85);
  sub_1BC8037DC(v233);
  strcpy(v231, "provider");
  BYTE1(v231[1]) = 0;
  WORD1(v231[1]) = 0;
  HIDWORD(v231[1]) = -402653184;
  OUTLINED_FUNCTION_44_8();
  sub_1BC8F8544();
  v86 = (v73 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v232 = v76;
  v231[0] = v87;
  v231[1] = v88;
  OUTLINED_FUNCTION_38_8();

  swift_isUniquelyReferenced_nonNull_native();
  v89 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v89, v90);
  v206 = v69;
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(0x6165724365746164);
  sub_1BC8F8544();
  v91 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v210 = *(v227 + 16);
  v210(v211, v73 + v91, v212);
  sub_1BC8F7144();
  sub_1BC8F7124();
  OUTLINED_FUNCTION_144();
  sub_1BC8F71C4();
  OUTLINED_FUNCTION_119_0();
  v209 = *(v229 + 8);
  v209(v214, v223);
  v208 = *(v228 + 8);
  v208(v213, v222);
  v207 = *(v227 + 8);
  v92 = OUTLINED_FUNCTION_213();
  v93(v92);
  v232 = MEMORY[0x1E69E6158];
  v231[0] = v211;
  v231[1] = v88;
  OUTLINED_FUNCTION_115_0();
  swift_isUniquelyReferenced_nonNull_native();
  v94 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v94, v95);
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(0x69646F4D65746164);
  sub_1BC8F8544();
  v96 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v210(v211, v221 + v96, v212);
  sub_1BC8F7144();
  sub_1BC8F7124();
  OUTLINED_FUNCTION_144();
  sub_1BC8F71C4();
  OUTLINED_FUNCTION_119_0();
  v209(v214, v223);
  v208(v213, v222);
  v97 = MEMORY[0x1E69E6158];
  v98 = OUTLINED_FUNCTION_213();
  v207(v98);
  v232 = v97;
  v231[0] = v211;
  v231[1] = v88;
  OUTLINED_FUNCTION_115_0();
  swift_isUniquelyReferenced_nonNull_native();
  v99 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v99, v100);
  sub_1BC8037DC(v233);
  v101 = 0xE600000000000000;
  v231[0] = 0x646165527369;
  v231[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_29_7();
  sub_1BC8F8544();
  v102 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v103 = *(v221 + v102);
  v104 = MEMORY[0x1E69E6370];
  v232 = MEMORY[0x1E69E6370];
  LOBYTE(v231[0]) = v103;
  OUTLINED_FUNCTION_47_7();
  v105 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v105, v106);
  sub_1BC8037DC(v233);
  strcpy(v231, "duration");
  BYTE1(v231[1]) = 0;
  WORD1(v231[1]) = 0;
  HIDWORD(v231[1]) = -402653184;
  OUTLINED_FUNCTION_29_7();
  sub_1BC8F8544();
  v107 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v108 = *(v221 + v107);
  v232 = MEMORY[0x1E69E63B0];
  v231[0] = v108;
  OUTLINED_FUNCTION_47_7();
  v109 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v109, v110);
  sub_1BC8037DC(v233);
  strcpy(v231, "mailboxType");
  HIDWORD(v231[1]) = -352321536;
  OUTLINED_FUNCTION_29_7();
  sub_1BC8F8544();
  v111 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v112 = *(v221 + v111);
  v232 = MEMORY[0x1E69E7290];
  LOWORD(v231[0]) = v112;
  OUTLINED_FUNCTION_47_7();
  v113 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v113, v114);
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(0x7469736E65537369);
  sub_1BC8F8544();
  v115 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v116 = *(v221 + v115);
  v232 = v104;
  LOBYTE(v231[0]) = v116;
  OUTLINED_FUNCTION_47_7();
  v117 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v117, v118);
  sub_1BC8037DC(v233);
  v231[0] = 0xD000000000000013;
  v231[1] = 0x80000001BC90B210;
  OUTLINED_FUNCTION_29_7();
  sub_1BC8F8544();
  v119 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v120 = sub_1BC8C21C4(*(v221 + v119));
  v232 = v97;
  v231[0] = v120;
  v231[1] = v121;
  OUTLINED_FUNCTION_47_7();
  v122 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v122, v123);
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(0x5454527369);
  sub_1BC8F8544();
  v124 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v125 = *(v221 + v124);
  v232 = v104;
  LOBYTE(v231[0]) = v125;
  OUTLINED_FUNCTION_47_7();
  v126 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v126, v127);
  sub_1BC8037DC(v233);
  OUTLINED_FUNCTION_28_10(0x7974696C617571);
  sub_1BC8F8544();
  v128 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v129 = 0x6D756964656DLL;
  switch(*(v221 + v128))
  {
    case 1:
      break;
    case 2:
      v101 = 0xE400000000000000;
      v129 = 1751607656;
      break;
    case 3:
      v101 = 0xE300000000000000;
      v129 = 7823730;
      break;
    default:
      v129 = 7827308;
      v101 = 0xE300000000000000;
      break;
  }

  v232 = v97;
  v231[0] = v129;
  v231[1] = v101;
  OUTLINED_FUNCTION_47_7();
  v130 = OUTLINED_FUNCTION_53_6();
  sub_1BC83D6F0(v130, v131);
  v132 = v206;
  sub_1BC8037DC(v233);
  v231[0] = 0xD000000000000010;
  v231[1] = 0x80000001BC90B180;
  OUTLINED_FUNCTION_29_7();
  sub_1BC8F8544();
  v133 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageThumbnail;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC7C4DAC(v221 + v133, v215, &qword_1EBCF5A20, &qword_1BC901BF0);
  v134 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v134, v135, v224))
  {
    sub_1BC7C1744(v215, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_178();
    if (v136)
    {
      OUTLINED_FUNCTION_112_0();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_81_0();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v233);
    sub_1BC7C1744(v231, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    v204();
    sub_1BC7C1744(v215, &qword_1EBCF5A20, &qword_1BC901BF0);
    sub_1BC8F6EF4();
    OUTLINED_FUNCTION_49_2();
    v137 = OUTLINED_FUNCTION_125();
    (v205)(v137);
    v232 = v97;
    v231[0] = v220;
    v231[1] = v101;
    OUTLINED_FUNCTION_38_8();
    swift_isUniquelyReferenced_nonNull_native();
    v138 = OUTLINED_FUNCTION_53_6();
    sub_1BC83D6F0(v138, v139);
    sub_1BC8037DC(v233);
  }

  strcpy(v231, "_transcript");
  HIDWORD(v231[1]) = -352321536;
  v140 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_44_8();
  sub_1BC8F8544();
  v141 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC7C4DAC(v221 + v141, v216, &qword_1EBCF5A20, &qword_1BC901BF0);
  v142 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v142, v143, v224))
  {
    sub_1BC7C1744(v216, &qword_1EBCF5A20, &qword_1BC901BF0);
    OUTLINED_FUNCTION_178();
    if (v144)
    {
      OUTLINED_FUNCTION_112_0();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_81_0();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v233);
    sub_1BC7C1744(v231, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    v204();
    sub_1BC7C1744(v216, &qword_1EBCF5A20, &qword_1BC901BF0);
    v145 = sub_1BC8F6EF4();
    v147 = v146;
    v205(v220, v224);
    v232 = v140;
    v231[0] = v145;
    v231[1] = v147;
    OUTLINED_FUNCTION_38_8();
    swift_isUniquelyReferenced_nonNull_native();
    v148 = OUTLINED_FUNCTION_53_6();
    sub_1BC83D6F0(v148, v149);
    sub_1BC8037DC(v233);
  }

  strcpy(v231, "recipient");
  WORD1(v231[1]) = 0;
  HIDWORD(v231[1]) = -385875968;
  v150 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v151 = (v221 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (v151[1])
  {
    v152 = *v151;

    v153 = OUTLINED_FUNCTION_144();
    sub_1BC7EB6B4(v153, v154);
    v156 = v155;
    v158 = v157;

    v232 = v150;
    v231[0] = v156;
    v231[1] = v158;
    OUTLINED_FUNCTION_38_8();
    swift_isUniquelyReferenced_nonNull_native();
    v159 = OUTLINED_FUNCTION_53_6();
    sub_1BC83D6F0(v159, v160);
    sub_1BC8037DC(v233);
    v161 = v217;
  }

  else
  {
    OUTLINED_FUNCTION_178();
    if (v162)
    {
      OUTLINED_FUNCTION_112_0();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_81_0();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    v161 = v217;
    sub_1BC8037DC(v233);
    sub_1BC7C1744(v231, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  v231[0] = 0x44496D6973;
  v231[1] = 0xE500000000000000;
  v163 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v164 = (v221 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v165 = v164[1];
  if (v165)
  {
    v166 = *v164;
    v232 = v163;
    v231[0] = v166;
    v231[1] = v165;
    OUTLINED_FUNCTION_115_0();

    swift_isUniquelyReferenced_nonNull_native();
    v167 = OUTLINED_FUNCTION_53_6();
    sub_1BC83D6F0(v167, v168);
    sub_1BC8037DC(v233);
  }

  else
  {
    OUTLINED_FUNCTION_15_10();
    sub_1BC7C1744(v231, &unk_1EBCF5E50, &qword_1BC8FE850);
    OUTLINED_FUNCTION_178();
    if (v169)
    {
      OUTLINED_FUNCTION_112_0();
      swift_isUniquelyReferenced_nonNull_native();
      v170 = *(v206 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      v132 = v206;
      sub_1BC8037DC(*(v206 + 48));
      sub_1BC7F0E58(*(v206 + 56), v230);
      OUTLINED_FUNCTION_81_0();
      sub_1BC8F8754();
    }

    else
    {
      memset(v230, 0, 32);
    }

    sub_1BC8037DC(v233);
    sub_1BC7C1744(v230, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  strcpy(v231, "voicemailID");
  HIDWORD(v231[1]) = -352321536;
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v171 = (v221 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID);
  OUTLINED_FUNCTION_19_14();
  swift_beginAccess();
  if (v171[1])
  {
    OUTLINED_FUNCTION_178();
    if (v172)
    {
      OUTLINED_FUNCTION_112_0();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_81_0();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v233);
    sub_1BC7C1744(v231, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    v173 = *v171;
    v232 = MEMORY[0x1E69E72F0];
    LODWORD(v231[0]) = v173;
    OUTLINED_FUNCTION_38_8();
    swift_isUniquelyReferenced_nonNull_native();
    v174 = OUTLINED_FUNCTION_53_6();
    sub_1BC83D6F0(v174, v175);
    sub_1BC8037DC(v233);
  }

  strcpy(v231, "summary");
  v231[1] = 0xE700000000000000;
  v176 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_0();
  sub_1BC8F8544();
  v177 = v221 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v178 = *(v177 + 16);
  if (v178)
  {
    v179 = *(v177 + 8);
    v232 = v176;
    v231[0] = v179;
    v231[1] = v178;

    OUTLINED_FUNCTION_38_8();
    swift_isUniquelyReferenced_nonNull_native();
    v180 = OUTLINED_FUNCTION_53_6();
    sub_1BC83D6F0(v180, v181);
    sub_1BC8037DC(v233);
  }

  else
  {

    OUTLINED_FUNCTION_178();
    if (v182)
    {
      OUTLINED_FUNCTION_112_0();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_81_0();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v233);
    sub_1BC7C1744(v231, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  strcpy(v231, "reminderUUID");
  BYTE5(v231[1]) = 0;
  HIWORD(v231[1]) = -5120;
  v183 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_44_8();
  sub_1BC8F8544();
  v184 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_reminderUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC7C4DAC(v221 + v184, v218, &unk_1EBCF5D70, &qword_1BC8FC740);
  v185 = OUTLINED_FUNCTION_78();
  if (__swift_getEnumTagSinglePayload(v185, v186, v161))
  {
    sub_1BC7C1744(v218, &unk_1EBCF5D70, &qword_1BC8FC740);
    OUTLINED_FUNCTION_178();
    if (v187)
    {
      OUTLINED_FUNCTION_112_0();
      swift_isUniquelyReferenced_nonNull_native();
      *&v230[0] = v132;
      v188 = *(v132 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      sub_1BC8F8734();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_81_0();
      sub_1BC8F8754();
    }

    else
    {
      OUTLINED_FUNCTION_15_10();
    }

    sub_1BC8037DC(v233);
    sub_1BC7C1744(v231, &unk_1EBCF5E50, &qword_1BC8FE850);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    v219();
    sub_1BC7C1744(v218, &unk_1EBCF5D70, &qword_1BC8FC740);
    v189 = sub_1BC8F7204();
    v191 = v190;
    v192 = OUTLINED_FUNCTION_125();
    v225(v192);
    v232 = v183;
    v231[0] = v189;
    v231[1] = v191;
    OUTLINED_FUNCTION_38_8();
    swift_isUniquelyReferenced_nonNull_native();
    v193 = OUTLINED_FUNCTION_53_6();
    sub_1BC83D6F0(v193, v194);
    sub_1BC8037DC(v233);
  }

  v195 = objc_opt_self();
  v196 = sub_1BC8F7A94();
  v233[0] = 0;
  v197 = [v195 dataWithJSONObject:v196 options:11 error:v233];

  v198 = v233[0];
  if (v197)
  {
    v199 = sub_1BC8F70D4();
    v201 = v200;

    sub_1BC8F7C54();
    sub_1BC8F7C34();
    sub_1BC7D4C94(v199, v201);
  }

  else
  {
    OUTLINED_FUNCTION_112_0();

    v202 = sub_1BC8F6EA4();

    swift_willThrow();
    v233[0] = 0;
    v233[1] = 0xE000000000000000;
    swift_getErrorValue();
    sub_1BC8F8A64();
  }

  v203 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

void sub_1BC86EC18()
{
  OUTLINED_FUNCTION_97_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v7 = sub_1BC8F7014();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_54_3();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_4();
  v116 = v17;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v113 - v19;
  v21 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC7C4DAC(v0 + v21, v2, &qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_43(v2, 1, v7);
  if (!v22)
  {
    v33 = *(v10 + 32);
    OUTLINED_FUNCTION_220();
    v34();
    v35 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v36 = v20;
    if (*(v0 + v35) == 1)
    {
      v37 = OUTLINED_FUNCTION_230();
      if (v16)
      {
        if (qword_1EDC1E1A0 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v39 = sub_1BC8F7734();
        OUTLINED_FUNCTION_37_0(v39, qword_1EDC2B208);
        OUTLINED_FUNCTION_186();
        v40(v1, v20, v7);
        v41 = v16;
        v42 = sub_1BC8F7714();
        v43 = sub_1BC8F81E4();

        if (os_log_type_enabled(v42, v43))
        {
          OUTLINED_FUNCTION_11_2();
          v44 = swift_slowAlloc();
          OUTLINED_FUNCTION_18_10();
          v114 = swift_slowAlloc();
          OUTLINED_FUNCTION_8_2();
          v116 = swift_slowAlloc();
          v117[0] = v116;
          *v44 = 136446466;
          OUTLINED_FUNCTION_1_20();
          sub_1BC7C4720(v45, v46);
          v47 = sub_1BC8F8A54();
          v115 = v7;
          v48 = *(v10 + 8);
          v48(v1, v7);
          v49 = OUTLINED_FUNCTION_19_5();
          sub_1BC7A9A4C(v49, v50, v51);
          OUTLINED_FUNCTION_28_2();

          *(v44 + 4) = v47;
          *(v44 + 12) = 2114;
          v52 = v16;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 14) = v53;
          v54 = v114;
          *v114 = v53;
          _os_log_impl(&dword_1BC7A3000, v42, v43, "Failed to get transcriptData from URL: %{public}s with error: %{public}@", v44, 0x16u);
          sub_1BC7C1744(v54, &unk_1EBCF5DB0, &unk_1BC900410);
          v55 = OUTLINED_FUNCTION_27_7();
          MEMORY[0x1BFB2AA50](v55);
          __swift_destroy_boxed_opaque_existential_1(v116);
          v56 = OUTLINED_FUNCTION_27_7();
          MEMORY[0x1BFB2AA50](v56);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();

          v57 = v36;
          v58 = v115;
LABEL_27:
          v48(v57, v58);
          goto LABEL_31;
        }

        v88 = *(v10 + 8);
        v88(v1, v7);
        goto LABEL_30;
      }

      v62 = sub_1BC7F13F0(v37, v38);
      if (!v62)
      {
        if (qword_1EDC1E1A0 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_43;
      }

      v63 = v62;
      [v62 confidence];
      v65 = v64;

      v66 = OUTLINED_FUNCTION_82();
      sub_1BC7D4C94(v66, v67);
      v68 = *(v10 + 8);
      v10 += 8;
      v68(v20, v7);
      v69 = v65 * 100.0;
      if (COERCE_INT(fabs(v65 * 100.0)) > 2139095039)
      {
        __break(1u);
      }

      else if (v69 > -9.2234e18)
      {
        if (v69 < 9.2234e18)
        {
          goto LABEL_31;
        }

        goto LABEL_42;
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      OUTLINED_FUNCTION_1_1();
LABEL_33:
      v89 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v89, qword_1EDC2B208);
      OUTLINED_FUNCTION_186();
      v90 = v116;
      v91(v116, v36, v7);
      v92 = sub_1BC8F7714();
      v93 = v7;
      v94 = sub_1BC8F8204();
      if (os_log_type_enabled(v92, v94))
      {
        OUTLINED_FUNCTION_9();
        v95 = swift_slowAlloc();
        v113 = v95;
        OUTLINED_FUNCTION_8_2();
        v114 = swift_slowAlloc();
        v117[0] = v114;
        *v95 = 136446210;
        OUTLINED_FUNCTION_1_20();
        sub_1BC7C4720(v96, v97);
        v98 = v90;
        sub_1BC8F8A54();
        OUTLINED_FUNCTION_141();
        v100 = v99;
        v101 = *(v10 + 8);
        v102 = v90;
        v104 = v103;
        v101(v102, v103);
        v105 = sub_1BC7A9A4C(v98, v100, v117);

        v106 = v113;
        *(v113 + 1) = v105;
        _os_log_impl(&dword_1BC7A3000, v92, v94, "Failed to get transcript from url: %{public}s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v114);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        v107 = OUTLINED_FUNCTION_27_7();
        MEMORY[0x1BFB2AA50](v107);
        v108 = OUTLINED_FUNCTION_82();
        sub_1BC7D4C94(v108, v109);

        v101(v36, v104);
      }

      else
      {
        v110 = OUTLINED_FUNCTION_82();
        sub_1BC7D4C94(v110, v111);

        v112 = *(v10 + 8);
        v112(v90, v93);
        v112(v36, v93);
      }

      goto LABEL_31;
    }

    sub_1BC865C3C();
    v59 = v117[0];
    if (!v117[0])
    {
      if (qword_1EDC1E1A0 == -1)
      {
LABEL_25:
        v70 = sub_1BC8F7734();
        OUTLINED_FUNCTION_37_0(v70, qword_1EDC2B208);
        OUTLINED_FUNCTION_186();
        v71(v16, v20, v7);
        v72 = sub_1BC8F7714();
        v73 = sub_1BC8F8204();
        if (os_log_type_enabled(v72, v73))
        {
          OUTLINED_FUNCTION_9();
          v74 = swift_slowAlloc();
          OUTLINED_FUNCTION_8_2();
          v75 = swift_slowAlloc();
          v117[0] = v75;
          *v74 = 136446210;
          OUTLINED_FUNCTION_1_20();
          sub_1BC7C4720(v76, v77);
          v78 = sub_1BC8F8A54();
          v48 = *(v10 + 8);
          v48(v16, v7);
          v79 = OUTLINED_FUNCTION_19_5();
          sub_1BC7A9A4C(v79, v80, v81);
          OUTLINED_FUNCTION_28_2();

          *(v74 + 4) = v78;
          OUTLINED_FUNCTION_205();
          _os_log_impl(v82, v83, v84, v85, v86, v87);
          __swift_destroy_boxed_opaque_existential_1(v75);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();

          v57 = v36;
          v58 = v7;
          goto LABEL_27;
        }

        v88 = *(v10 + 8);
        v88(v16, v7);
LABEL_30:
        v88(v20, v7);
        goto LABEL_31;
      }

LABEL_39:
      OUTLINED_FUNCTION_1_1();
      goto LABEL_25;
    }

    v16 = v117[2];
    v60 = sub_1BC7DABBC();
    v61 = *(v10 + 8);
    v10 += 8;
    v61(v20, v7);
    sub_1BC7C532C(v59);
    if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v60 > -9.22337204e18)
    {
      if (v60 < 9.22337204e18)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1BC7C1744(v2, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_10_18();
    swift_once();
  }

  v23 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v23, qword_1EDC2B3D8);
  v24 = sub_1BC8F7714();
  sub_1BC8F81E4();
  v25 = OUTLINED_FUNCTION_63_3();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_45();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v27);
    OUTLINED_FUNCTION_62_2();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

LABEL_31:
  OUTLINED_FUNCTION_98();
}

void sub_1BC86F4F0()
{
  OUTLINED_FUNCTION_29_0();
  v89 = v4;
  v5 = OUTLINED_FUNCTION_48_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_190_0();
  v11 = sub_1BC8F7014();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  OUTLINED_FUNCTION_171();
  sub_1BC7C4DAC(v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_43(v25, v26, v11);
  if (v27)
  {
    sub_1BC7C1744(v1, &qword_1EBCF5A20, &qword_1BC901BF0);
LABEL_17:
    v60 = 4;
    goto LABEL_18;
  }

  (*(v14 + 32))(v20, v1, v11);
  v28 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*&v28[v0] != 1)
  {
    v49 = *(v14 + 8);
    v50 = OUTLINED_FUNCTION_79();
    v51(v50);
    goto LABEL_17;
  }

  v29 = OUTLINED_FUNCTION_230();
  if (v28)
  {
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v31 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v31, qword_1EDC2B208);
    (*(v14 + 16))(v2, v20, v11);
    v32 = v28;
    v33 = sub_1BC8F7714();
    v34 = sub_1BC8F81E4();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_11_2();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_10();
      v87 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v88 = swift_slowAlloc();
      v90[0] = v88;
      *v35 = 136446466;
      OUTLINED_FUNCTION_1_20();
      sub_1BC7C4720(v36, v37);
      LODWORD(v86) = v34;
      v38 = sub_1BC8F8A54();
      v40 = v39;
      v41 = *(v14 + 8);
      v41(v2, v11);
      v42 = sub_1BC7A9A4C(v38, v40, v90);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2114;
      v43 = v28;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v44;
      v45 = v87;
      *v87 = v44;
      _os_log_impl(&dword_1BC7A3000, v33, v86, "Failed to get transcriptData for confidence rating from URL: %{public}s with error: %{public}@", v35, 0x16u);
      sub_1BC7C1744(v45, &unk_1EBCF5DB0, &unk_1BC900410);
      v46 = OUTLINED_FUNCTION_27_7();
      MEMORY[0x1BFB2AA50](v46);
      __swift_destroy_boxed_opaque_existential_1(v88);
      v47 = OUTLINED_FUNCTION_27_7();
      MEMORY[0x1BFB2AA50](v47);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();

      v48 = OUTLINED_FUNCTION_79();
      (v41)(v48);
      goto LABEL_17;
    }

    v61 = *(v14 + 8);
    v61(v2, v11);
LABEL_16:
    v62 = OUTLINED_FUNCTION_79();
    (v61)(v62);
    goto LABEL_17;
  }

  v52 = sub_1BC7F13F0(v29, v30);
  if (!v52)
  {
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v63 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v63, qword_1EDC2B208);
    v64 = *(v14 + 16);
    v65 = OUTLINED_FUNCTION_63_1();
    v66(v65);
    v67 = sub_1BC8F7714();
    v68 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_28_7(v68))
    {
      OUTLINED_FUNCTION_9();
      v69 = swift_slowAlloc();
      v87 = v69;
      OUTLINED_FUNCTION_8_2();
      v88 = swift_slowAlloc();
      v90[0] = v88;
      *v69 = 136446210;
      OUTLINED_FUNCTION_1_20();
      sub_1BC7C4720(v70, v71);
      v86 = v67;
      v72 = sub_1BC8F8A54();
      v74 = v73;
      v75 = *(v14 + 8);
      v76 = OUTLINED_FUNCTION_168();
      v75(v76);
      v77 = sub_1BC7A9A4C(v72, v74, v90);

      v79 = v86;
      v78 = v87;
      *(v87 + 4) = v77;
      _os_log_impl(&dword_1BC7A3000, v79, v68, "Failed to get transcript from url: %{public}s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v80 = OUTLINED_FUNCTION_27_7();
      MEMORY[0x1BFB2AA50](v80);
      v81 = OUTLINED_FUNCTION_199();
      sub_1BC7D4C94(v81, v82);

      v83 = OUTLINED_FUNCTION_79();
      v75(v83);
      goto LABEL_17;
    }

    v84 = OUTLINED_FUNCTION_199();
    sub_1BC7D4C94(v84, v85);

    v61 = *(v14 + 8);
    v61(v3, v11);
    goto LABEL_16;
  }

  v53 = v52;
  v54 = [v52 confidenceRating];

  v55 = OUTLINED_FUNCTION_199();
  sub_1BC7D4C94(v55, v56);
  v57 = *(v14 + 8);
  v58 = OUTLINED_FUNCTION_79();
  v59(v58);
  if (v54 >= 4)
  {
    v60 = 0;
  }

  else
  {
    v60 = v54;
  }

LABEL_18:
  *v89 = v60;
  OUTLINED_FUNCTION_24();
}

unint64_t sub_1BC86FAB4@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

id Message.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BC86FB38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x555564726F636572 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x466567617373656DLL && a2 == 0xEB00000000656C69;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001BC90B180 == a2;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
            if (v10 || (sub_1BC8F8AA4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7263736E6172745FLL && a2 == 0xEB00000000747069;
              if (v11 || (sub_1BC8F8AA4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1836020326 && a2 == 0xE400000000000000;
                if (v12 || (sub_1BC8F8AA4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1BC8F8AA4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6165724365746164 && a2 == 0xEB00000000646574;
                    if (v14 || (sub_1BC8F8AA4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x69646F4D65746164 && a2 == 0xEC00000064656966;
                      if (v15 || (sub_1BC8F8AA4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x646165527369 && a2 == 0xE600000000000000;
                        if (v16 || (sub_1BC8F8AA4() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                          if (v17 || (sub_1BC8F8AA4() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x54786F626C69616DLL && a2 == 0xEB00000000657079;
                            if (v18 || (sub_1BC8F8AA4() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7469736E65537369 && a2 == 0xEB00000000657669;
                              if (v19 || (sub_1BC8F8AA4() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E65697069636572 && a2 == 0xE900000000000074;
                                if (v20 || (sub_1BC8F8AA4() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000001BC90B210 == a2;
                                  if (v21 || (sub_1BC8F8AA4() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x5454527369 && a2 == 0xE500000000000000;
                                    if (v22 || (sub_1BC8F8AA4() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x44496D6973 && a2 == 0xE500000000000000;
                                      if (v23 || (sub_1BC8F8AA4() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7974696C617571 && a2 == 0xE700000000000000;
                                        if (v24 || (sub_1BC8F8AA4() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x69616D6563696F76 && a2 == 0xEB0000000044496CLL;
                                          if (v25 || (sub_1BC8F8AA4() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
                                            if (v26 || (sub_1BC8F8AA4() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x7265646E696D6572 && a2 == 0xEC00000044495555;
                                              if (v27 || (sub_1BC8F8AA4() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6E61725477656E5FLL && a2 == 0xEE00747069726373;
                                                if (v28 || (sub_1BC8F8AA4() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000012 && 0x80000001BC90D0D0 == a2;
                                                  if (v29 || (sub_1BC8F8AA4() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000014 && 0x80000001BC90D0F0 == a2;
                                                    if (v30 || (sub_1BC8F8AA4() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else if (a1 == 0xD000000000000015 && 0x80000001BC90D110 == a2)
                                                    {

                                                      return 26;
                                                    }

                                                    else
                                                    {
                                                      v32 = sub_1BC8F8AA4();

                                                      if (v32)
                                                      {
                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        return 27;
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
  }
}

uint64_t sub_1BC870334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC86FB38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC87035C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC87032C();
  *a1 = result;
  return result;
}

uint64_t sub_1BC870384(uint64_t a1)
{
  v2 = sub_1BC7C4684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8703C0(uint64_t a1)
{
  v2 = sub_1BC7C4684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Message.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Message();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Message.callDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v4 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_4_1(v4);
  (*(v5 + 16))(a1, v1 + v3, v4);
  OUTLINED_FUNCTION_30_0();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

uint64_t Message.simUUID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;

    OUTLINED_FUNCTION_41_1();
    sub_1BC8F71F4();
  }

  else
  {
    sub_1BC8F7264();
    OUTLINED_FUNCTION_122();
    return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t Message.formattedRemoteParticipantHandles.getter()
{
  v2 = sub_1BC7C83A8();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1BC7C19F8(v2, &selRef_normalizedValue);
  if (!v4)
  {

    return 0;
  }

  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC8FC230;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;

  return v5;
}

uint64_t sub_1BC87064C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC870724()
{
  result = qword_1EBCF5E80;
  if (!qword_1EBCF5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5E80);
  }

  return result;
}

unint64_t sub_1BC87077C()
{
  result = qword_1EBCF5E88;
  if (!qword_1EBCF5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5E88);
  }

  return result;
}

unint64_t sub_1BC8707D4()
{
  result = qword_1EBCF5E90;
  if (!qword_1EBCF5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5E90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GetTranscriptError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MessageTranscriptConfidenceRating(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:transcript:from:provider:isSensitive:duration:recipient:isRTT:simID:quality:voicemailID:summary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 968);

  return v13(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

unint64_t sub_1BC871C90()
{
  result = qword_1EBCF5EA0;
  if (!qword_1EBCF5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5EA0);
  }

  return result;
}

uint64_t sub_1BC871CE4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_37_7();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return a2;
}

uint64_t sub_1BC871D3C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_37_7();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_29();
  v9(v8);
  return a2;
}

uint64_t sub_1BC871D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BC871DEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50_6()
{
  result = v1;
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  return result;
}

_OWORD *OUTLINED_FUNCTION_107_0()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1BC7F0E58(v4, (v2 - 176));
}

uint64_t OUTLINED_FUNCTION_113_0()
{
  v2 = *(v0 - 472);

  return sub_1BC8F8364();
}

_OWORD *OUTLINED_FUNCTION_115_0()
{

  return sub_1BC7F0E58((v0 - 176), (v0 - 240));
}

id OUTLINED_FUNCTION_127(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_128_0()
{
  v2 = *(v0 - 408);
}

void OUTLINED_FUNCTION_129_0()
{
  v2 = *(v0 - 416);
}

void OUTLINED_FUNCTION_146()
{
  v2 = *(v0 - 456);
}

void OUTLINED_FUNCTION_154()
{
  v2 = *(v0 - 448);
}

void OUTLINED_FUNCTION_159()
{
  v2 = *(v0 - 464);
}

void OUTLINED_FUNCTION_162(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_182()
{
}

void OUTLINED_FUNCTION_183()
{
  v2 = *(v0 - 496);
}

uint64_t OUTLINED_FUNCTION_203@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_222(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
}

uint64_t OUTLINED_FUNCTION_224(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_226(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1BC7C3684(v6, v4 + v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_228()
{

  return sub_1BC8F8364();
}

void OUTLINED_FUNCTION_229()
{
  v2 = *(v0 - 512);
}

uint64_t OUTLINED_FUNCTION_230()
{

  return sub_1BC8F7054();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BC8723E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BC87243C()
{
  v0 = sub_1BC8F77A4();
  __swift_allocate_value_buffer(v0, qword_1EDC2B300);
  v1 = __swift_project_value_buffer(v0, qword_1EDC2B300);
  *v1 = 0xD00000000000002ELL;
  v1[1] = 0x80000001BC90D150;
  v2 = *MEMORY[0x1E69937B0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_1BC8724E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_1BC8725A8(char a1)
{
  if (a1)
  {
    return 7107189;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1BC8725D0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v19 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5F18, &qword_1BC904AB0);
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v18 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC872C08();
  sub_1BC8F8CA4();
  v20 = a2;
  v21 = a3;
  v22 = 0;
  sub_1BC7EC5DC(a2, a3);
  sub_1BC872CB0();
  sub_1BC8F89F4();
  sub_1BC7D4C94(v20, v21);
  if (!v4)
  {
    v20 = v19;
    v22 = 1;
    type metadata accessor for SandboxExtendedURL();
    sub_1BC872D04(&qword_1EDC20108);
    sub_1BC8F89F4();
  }

  return (*(v11 + 8))(v15, v8);
}

uint64_t sub_1BC87279C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5F00, &qword_1BC904AA8);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC872C08();
  sub_1BC8F8C84();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = 0;
    sub_1BC872C5C();
    sub_1BC8F88F4();
    type metadata accessor for SandboxExtendedURL();
    v20 = 1;
    sub_1BC872D04(&qword_1EDC20100);
    sub_1BC8F88F4();
    (*(v6 + 8))(v10, v3);
    v13 = v21;
    v14 = OUTLINED_FUNCTION_45_2();
    sub_1BC7EC5DC(v14, v15);
    v16 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v17 = OUTLINED_FUNCTION_45_2();
    sub_1BC7D4C94(v17, v18);
  }

  return OUTLINED_FUNCTION_45_2();
}

uint64_t sub_1BC8729B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC1E440 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F77A4();
  v3 = __swift_project_value_buffer(v2, qword_1EDC2B300);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BC872A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8724E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC872A90(uint64_t a1)
{
  v2 = sub_1BC872C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC872ACC(uint64_t a1)
{
  v2 = sub_1BC872C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC872B08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC87279C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1BC872B5C()
{
  result = qword_1EDC1FA08;
  if (!qword_1EDC1FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA08);
  }

  return result;
}

unint64_t sub_1BC872BB4()
{
  result = qword_1EDC1FA10;
  if (!qword_1EDC1FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FA10);
  }

  return result;
}

unint64_t sub_1BC872C08()
{
  result = qword_1EBCF5F08;
  if (!qword_1EBCF5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5F08);
  }

  return result;
}

unint64_t sub_1BC872C5C()
{
  result = qword_1EBCF5F10;
  if (!qword_1EBCF5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5F10);
  }

  return result;
}

unint64_t sub_1BC872CB0()
{
  result = qword_1EBCF5F20;
  if (!qword_1EBCF5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5F20);
  }

  return result;
}

uint64_t sub_1BC872D04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SandboxExtendedURL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendVideoMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC872E28()
{
  result = qword_1EBCF5F28;
  if (!qword_1EBCF5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5F28);
  }

  return result;
}

unint64_t sub_1BC872E80()
{
  result = qword_1EBCF5F30;
  if (!qword_1EBCF5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5F30);
  }

  return result;
}

unint64_t sub_1BC872ED8()
{
  result = qword_1EBCF5F38;
  if (!qword_1EBCF5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5F38);
  }

  return result;
}

uint64_t sub_1BC872F2C(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_0_20(a1, a2);
  v5 = *(v3 + 112);
  if (*(v5 + 16))
  {

    v6 = sub_1BC83C928();
    if (v7)
    {
      v8 = *(*(v5 + 56) + v6);

      if (v8 >= v4)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v10 = *(v2 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 112);
  sub_1BC83DBA8();
  *(v2 + 112) = v11;
  swift_endAccess();
  return 1;
}

uint64_t sub_1BC872FF8(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_0_20(a1, a2);
  v4 = *(v2 + 112);
  if (*(v4 + 16))
  {

    v5 = sub_1BC83C928();
    if (v6)
    {
      v7 = *(*(v4 + 56) + v5);

      if (sub_1BC800E6C(v3, v7))
      {
        swift_beginAccess();
        sub_1BC8499B8(v9);
        swift_endAccess();
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1BC8730B0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC87310C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = (result + 40);
  v6 = (a2 + 40);
  while (v4 != v3)
  {
    v7 = *(v2 + 16);
    v8 = v3 == v7;
    if (v3 == v7)
    {
      return v8;
    }

    if (v3 >= v7)
    {
      __break(1u);
      goto LABEL_17;
    }

    result = *(v6 - 1);
    if (result != *(v5 - 1) || *v6 != *v5)
    {
      result = sub_1BC8F8AA4();
      if ((result & 1) == 0)
      {
        return v8;
      }
    }

    v5 += 2;
    v6 += 2;
    ++v3;
  }

  v10 = *(v2 + 16);
  if (v4 == v10)
  {
    return 1;
  }

  if (v4 < v10)
  {
    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BC8731C0()
{

  do
  {
    while (1)
    {
      v0 = sub_1BC8F7D24();
      if (!v1)
      {

        sub_1BC8F7D24();
        v8 = v7;

        if (v8)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1BC8F7D24();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    sub_1BC8F8AA4();
    OUTLINED_FUNCTION_43_8();
  }

  while ((v2 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_1BC873300()
{
  v0 = sub_1BC8F8804();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BC87334C(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}