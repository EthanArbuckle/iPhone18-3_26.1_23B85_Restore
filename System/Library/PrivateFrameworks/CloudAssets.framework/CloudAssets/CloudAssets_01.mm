uint64_t sub_2437A1388()
{
  v36 = *MEMORY[0x277D85DE8];
  (*(v0[45] + 8))(v0[46], v0[44]);
  v1 = v0[2];
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = sub_2437AB9DC();
  OUTLINED_FUNCTION_75_0(v2, qword_27ED861C8);
  v3 = v1;
  v4 = sub_2437AB9BC();
  v5 = sub_2437ABC9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_14_0();
    v7 = OUTLINED_FUNCTION_123();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_243789000, v4, v5, "failed to process requests due to error %@", v6, 0xCu);
    sub_243797E50(v7, &qword_27ED85560, &qword_2437ACC80);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_9_0();
  }

  v10 = v0[17];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[7];

  sub_24379A874();
  *v11 = OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_36_0();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  sub_2437ABC1C();

  v14 = v0[46];
  v16 = v0[42];
  v15 = v0[43];
  v18 = v0[38];
  v17 = v0[39];
  v20 = v0[34];
  v19 = v0[35];
  v21 = v0[33];
  v22 = v0[30];
  v27 = v0[29];
  v28 = v0[28];
  v29 = v0[27];
  v30 = v0[24];
  v31 = v0[17];
  v32 = v0[21];
  v33 = v0[20];
  v23 = v0[14];
  v34 = v0[12];
  v35 = v0[11];
  (*(v0[16] + 8))();

  OUTLINED_FUNCTION_14();
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}

void sub_2437A1670()
{
  OUTLINED_FUNCTION_90();
  v41 = v1;
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v40 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v39 - v16;
  v39 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_82_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v39 - v28;
  sub_2437ABBAC();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  (*(v21 + 16))(v0, v8, v18);
  v34 = v17;
  v35 = v10;
  (*(v13 + 16))(v34, v40, v10);
  v36 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v37 = (v23 + *(v13 + 80) + v36) & ~*(v13 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (*(v21 + 32))(v38 + v36, v0, v18);
  (*(v13 + 32))(v38 + v37, v39, v35);
  sub_243791EA0(0, 0, v29, v42, v38);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2437A18C8()
{
  OUTLINED_FUNCTION_15();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_2437AB81C();
  v0[6] = v3;
  OUTLINED_FUNCTION_5(v3);
  v0[7] = v4;
  v6 = *(v5 + 64);
  v0[8] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85730, &qword_2437ACFB0);
  v0[9] = v7;
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  v0[10] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v0[11] = v10;
  OUTLINED_FUNCTION_17(v10);
  v12 = *(v11 + 64);
  v0[12] = OUTLINED_FUNCTION_43();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857D0, &qword_2437AD158);
  v0[13] = v13;
  OUTLINED_FUNCTION_5(v13);
  v0[14] = v14;
  v16 = *(v15 + 64);
  v0[15] = OUTLINED_FUNCTION_43();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85738, &qword_2437ACFB8);
  OUTLINED_FUNCTION_17(v17);
  v19 = *(v18 + 64);
  v0[16] = OUTLINED_FUNCTION_43();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85740, &qword_2437ACFC0);
  v0[17] = v20;
  OUTLINED_FUNCTION_5(v20);
  v0[18] = v21;
  v23 = *(v22 + 64);
  v0[19] = OUTLINED_FUNCTION_43();
  v24 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2437A1AA8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[19];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85728, &qword_2437ACF98);
  sub_2437ABC3C();
  v3 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[20] = v4;
  *v4 = v5;
  v4[1] = sub_2437A1B60;
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v9, v10, v11, v12, v13);
}

uint64_t sub_2437A1B60()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2437A1C5C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_10_1();
  if (v3)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    OUTLINED_FUNCTION_100();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_111();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = *(v0 + 80);
    v14 = OUTLINED_FUNCTION_26_0();
    sub_2437A65EC(v14, v15, v16, v17);
    OUTLINED_FUNCTION_58_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = *(v0 + 88);
    if (EnumCaseMultiPayload == 1)
    {
      **(v0 + 96) = **(v0 + 80);
    }

    else
    {
      v21 = *(v0 + 56);
      v20 = *(v0 + 64);
      v22 = *(v0 + 48);
      OUTLINED_FUNCTION_71_0();
      v23(v20);
      sub_2437AB7EC();
      (*(v21 + 8))(v20, v22);
    }

    OUTLINED_FUNCTION_26_0();
    swift_storeEnumTagMultiPayload();
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
    OUTLINED_FUNCTION_113();
    sub_2437ABC1C();
    v29 = *(v25 + 8);
    v30 = OUTLINED_FUNCTION_26_0();
    v31(v30);
    v32 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    *(v0 + 160) = v33;
    *v33 = v34;
    v33[1] = sub_2437A1B60;
    v35 = *(v0 + 152);
    v36 = *(v0 + 128);
    v37 = *(v0 + 136);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_111();

    return MEMORY[0x2822005A8](v38, v39, v40, v41, v42);
  }
}

uint64_t sub_2437A1E50()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = v0[5];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v0[3] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  sub_2437ABC2C();
  OUTLINED_FUNCTION_100();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_111();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t AssetManager.process(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_11();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_11();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2437A1F44()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856F0, &qword_2437ACF60);
  OUTLINED_FUNCTION_97();
  v2 = sub_2437AB77C();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_13_1();
  v0[4] = v5;
  v6 = OUTLINED_FUNCTION_8_1(v5, xmmword_2437ACF30);
  v7(v6);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_106(v8);
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_2437A2050()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_45();
  v5 = v4;
  OUTLINED_FUNCTION_20_0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_12();
  *v10 = v9;
  v5[6] = v0;

  if (!v0)
  {
    v11 = v5[4];

    v5[7] = v3;
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2437A2168()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);
  type metadata accessor for AssetUploadCoordinator();
  v2 = OUTLINED_FUNCTION_96();
  sub_24379A104(v2);
  OUTLINED_FUNCTION_109();

  return v3();
}

uint64_t sub_2437A21D4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_14();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_2437A2880()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v5 = v4[39];
  v6 = v4[31];
  v7 = v4[30];
  v8 = v4[29];
  v9 = *v1;
  OUTLINED_FUNCTION_12();
  *v10 = v9;
  *(v11 + 320) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_26_0();
  v14(v13);
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2437A29D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_116();
  v19 = *(v18 + 224);
  v20 = *(v18 + 192);
  v21 = *(v18 + 160);
  v22 = *(v18 + 168);
  v23 = *(v18 + 152);
  v47 = *(v18 + 120);
  v48 = *(v18 + 144);
  v24 = *(v18 + 88);
  v25 = *(v18 + 96);
  v46 = *(v18 + 80);
  v50 = *(v18 + 40);
  v51 = *(v18 + 272);
  v49 = *(v18 + 24);
  sub_2437AB92C();
  v26 = *MEMORY[0x277D858A0];
  *(v18 + 352) = v26;
  (*(v21 + 104))(v22, v26, v23);
  OUTLINED_FUNCTION_105();
  sub_2437ABBFC();
  v27 = *(v21 + 8);
  v28 = OUTLINED_FUNCTION_104();
  v29(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A0, &qword_2437AD010);
  (*(v24 + 104))(v25, v26, v46);
  sub_2437ABBFC();
  v30 = *(v24 + 8);
  v31 = OUTLINED_FUNCTION_25();
  v32(v31);
  v33 = swift_task_alloc();
  *(v18 + 328) = v33;
  v33[2] = v51;
  v33[3] = v47;
  v33[4] = v20;
  v33[5] = v49;
  v33[6] = v50;
  v34 = *(MEMORY[0x277D85A40] + 4);
  v35 = swift_task_alloc();
  *(v18 + 336) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A8, &qword_2437AD018);
  *v35 = v18;
  v35[1] = sub_2437A2BE8;
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_74();

  return MEMORY[0x2822008A0](v36, v37, v38, v39, v40, v41, v42, v43, a9, v46, v47, v48, v49, v50, v51, a16, a17, a18);
}

uint64_t sub_2437A2BE8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *(v4 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_12();
  *v8 = v7;
  *(v9 + 344) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2437A2D00()
{
  v43 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 16);

  v3 = sub_2437AB9BC();
  v4 = sub_2437ABCAC();

  v29 = v2;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_14_0();
    v6 = OUTLINED_FUNCTION_13_0();
    v42 = v6;
    OUTLINED_FUNCTION_91(4.8149e-34);
    v7 = sub_2437AB71C();
    v8 = MEMORY[0x245D3EEA0](v2, v7);
    v10 = sub_243793C54(v8, v9, &v42);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_243789000, v3, v4, "created ephemeral assets %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_9_0();
  }

  v27 = *(v0 + 352);
  v37 = *(v0 + 272);
  v38 = *(v0 + 296);
  v35 = *(v0 + 264);
  v36 = *(v0 + 256);
  v39 = *(v0 + 248);
  v11 = *(v0 + 224);
  v26 = *(v0 + 216);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v30 = *(v0 + 184);
  v33 = *(v0 + 176);
  v34 = *(v0 + 192);
  v40 = *(v0 + 168);
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v28 = *(v0 + 128);
  v16 = *(v0 + 112);
  v31 = *(v0 + 104);
  v32 = *(v0 + 120);
  v41 = *(v0 + 96);
  v17 = *(v0 + 64);
  v18 = *(v0 + 56);
  v24 = *(v0 + 48);
  v25 = *(v0 + 72);
  type metadata accessor for AssetsUploadCoordinator();
  v19 = OUTLINED_FUNCTION_70_0(v12);
  v20(v19, v11, v13);
  *(swift_task_alloc() + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  (*(v18 + 104))(v17, v27, v24);
  sub_2437ABC6C();

  v21 = sub_2437A9028(v29, v26, v25);
  (*(v12 + 8))(v11, v13);
  (*(v15 + 8))(v14, v28);
  (*(v16 + 8))(v32, v31);
  (*(v30 + 8))(v34, v33);
  (*(v35 + 8))(v37, v36);

  OUTLINED_FUNCTION_109();

  return v22(v21);
}

uint64_t sub_2437A3058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  v15 = *(v14 + 320);
  OUTLINED_FUNCTION_45_0();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2437A3114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_69_0();
  v15 = v14[33];
  v38 = v14[32];
  v39 = v14[34];
  v16 = v14[23];
  v37 = v14[24];
  v17 = v14[22];
  v18 = v14[17];
  v19 = v14[18];
  v21 = v14[15];
  v20 = v14[16];
  v23 = v14[13];
  v22 = v14[14];
  (*(v14[26] + 8))(v14[28], v14[25]);
  (*(v18 + 8))(v19, v20);
  v24 = *(v22 + 8);
  v25 = OUTLINED_FUNCTION_62_0();
  v26(v25);
  (*(v16 + 8))(v37, v17);
  (*(v15 + 8))(v39, v38);
  v27 = v14[43];
  OUTLINED_FUNCTION_45_0();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, a12, a13, a14);
}

uint64_t sub_2437A328C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85720, &qword_2437ACF88);
  OUTLINED_FUNCTION_97();
  v2 = sub_2437AB7BC();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_13_1();
  v0[4] = v5;
  v6 = OUTLINED_FUNCTION_8_1(v5, xmmword_2437ACF30);
  v7(v6);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_106(v8);
  OUTLINED_FUNCTION_111();

  return AssetManager.process(requests:)();
}

uint64_t sub_2437A3398()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_45();
  v5 = v4;
  OUTLINED_FUNCTION_20_0();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_12();
  *v10 = v9;
  v5[6] = v0;

  if (!v0)
  {
    v11 = v5[4];

    v5[7] = v3;
  }

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2437A34B0()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);
  type metadata accessor for AssetDownloadCoordinator();
  v2 = OUTLINED_FUNCTION_96();
  sub_24379A104(v2);
  OUTLINED_FUNCTION_109();

  return v3();
}

uint64_t sub_2437A3818()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_20_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_12();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2437A3914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_43_0();
  v13 = v12[12];
  v14 = v12[9];
  v15 = v12[10];
  v17 = v12[7];
  v16 = v12[8];
  v18 = v12[5];
  v19 = v12[6];
  v20 = v12[4];
  type metadata accessor for AssetsDownloadCoordinator();
  v21 = OUTLINED_FUNCTION_70_0(v17);
  v22(v21, v14, v19);
  v23 = sub_2437A8470(v16);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v15);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v23;
  v27[5] = v20;

  v28 = OUTLINED_FUNCTION_46_0();
  sub_24379F308(v28, v29, v18, v30, v27);

  (*(v17 + 8))(v14, v19);

  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_33_0();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_2437A3A50()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  OUTLINED_FUNCTION_14();
  v6 = v0[14];

  return v5();
}

void sub_2437A3AD4()
{
  OUTLINED_FUNCTION_90();
  v62 = v0;
  v63 = v1;
  v58 = v2;
  v59 = v3;
  v57 = v4;
  v60 = v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E8, &qword_2437AD170);
  OUTLINED_FUNCTION_1(v68);
  v66 = v6;
  v61 = *(v7 + 64);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v8);
  v67 = &v51 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_1(v65);
  v11 = v10;
  v56 = *(v12 + 64);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v13);
  v64 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  v53 = v15;
  OUTLINED_FUNCTION_5_2();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  v54 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  v52 = v23;
  OUTLINED_FUNCTION_5_2();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v30 = &v51 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85508, &qword_2437AC820);
  OUTLINED_FUNCTION_17(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_66_0();
  MEMORY[0x28223BE20](v34);
  v55 = &v51 - v35;
  sub_2437ABBAC();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  (*(v25 + 16))(v30, v57, v23);
  (*(v17 + 16))(v22, v58, v15);
  v51 = v11;
  (*(v11 + 16))(v64, v59, v65);
  v40 = v66;
  (*(v66 + 16))(v67, v60, v68);
  v41 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v42 = (v27 + *(v17 + 80) + v41) & ~*(v17 + 80);
  v43 = (v19 + *(v11 + 80) + v42) & ~*(v11 + 80);
  v44 = (v56 + *(v40 + 80) + v43) & ~*(v40 + 80);
  v45 = (v61 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  (*(v25 + 32))(v46 + v41, v30, v52);
  (*(v17 + 32))(v46 + v42, v54, v53);
  (*(v51 + 32))(v46 + v43, v64, v65);
  (*(v66 + 32))(v46 + v44, v67, v68);
  v47 = v63;
  *(v46 + v45) = v62;
  *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v47;

  v48 = OUTLINED_FUNCTION_46_0();
  sub_243791EA0(v48, v49, v55, v50, v46);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2437A3F0C()
{
  OUTLINED_FUNCTION_15();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v0[11] = v5;
  v6 = sub_2437AB85C();
  v0[16] = v6;
  OUTLINED_FUNCTION_5(v6);
  v0[17] = v7;
  v9 = *(v8 + 64);
  v0[18] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857F0, &qword_2437AD188);
  v0[19] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[20] = v11;
  v13 = *(v12 + 64);
  v0[21] = OUTLINED_FUNCTION_43();
  v14 = sub_2437AB92C();
  v0[22] = v14;
  OUTLINED_FUNCTION_5(v14);
  v0[23] = v15;
  v17 = *(v16 + 64);
  v0[24] = OUTLINED_FUNCTION_78_0();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857F8, &qword_2437AD190);
  v0[27] = v18;
  OUTLINED_FUNCTION_5(v18);
  v0[28] = v19;
  v21 = *(v20 + 64);
  v0[29] = OUTLINED_FUNCTION_43();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857A0, &qword_2437AD010);
  v0[30] = v22;
  OUTLINED_FUNCTION_5(v22);
  v0[31] = v23;
  v25 = *(v24 + 64);
  v0[32] = OUTLINED_FUNCTION_78_0();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v26 = sub_2437AB82C();
  v0[35] = v26;
  OUTLINED_FUNCTION_5(v26);
  v0[36] = v27;
  v29 = *(v28 + 64);
  v0[37] = OUTLINED_FUNCTION_43();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85800, &qword_2437AD198);
  OUTLINED_FUNCTION_17(v30);
  v32 = *(v31 + 64);
  v0[38] = OUTLINED_FUNCTION_43();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85808, &qword_2437AD1A0);
  v0[39] = v33;
  OUTLINED_FUNCTION_5(v33);
  v0[40] = v34;
  v36 = *(v35 + 64);
  v0[41] = OUTLINED_FUNCTION_43();
  v37 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_2437A4210()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 328);
  v2 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  sub_2437ABC3C();
  *(v0 + 344) = *MEMORY[0x277CFA860];
  *(v0 + 348) = *MEMORY[0x277CFA868];
  *(v0 + 352) = *MEMORY[0x277CFA878];
  *(v0 + 356) = *MEMORY[0x277CFA870];
  *(v0 + 360) = 0;
  v3 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  *(v0 + 336) = v4;
  *v4 = v5;
  v4[1] = sub_2437A430C;
  v6 = *(v0 + 328);
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v9, v10, v11, v12, v13);
}

uint64_t sub_2437A430C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 336);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2437A4C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_61_0();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_69_0();
  a20 = v23;
  v27 = OUTLINED_FUNCTION_108();
  v28(v27);
  v29 = v23[2];
  if ((v22 & 1) == 0)
  {
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v30 = v23[15];
    v31 = sub_2437AB9DC();
    OUTLINED_FUNCTION_75_0(v31, qword_27ED861C8);

    v32 = v29;
    v33 = sub_2437AB9BC();
    v34 = sub_2437ABC9C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v23[15];
      v36 = OUTLINED_FUNCTION_98();
      v37 = OUTLINED_FUNCTION_123();
      v38 = OUTLINED_FUNCTION_13_0();
      a11 = v38;
      *v36 = 138412546;
      v39 = v29;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v40;
      *v37 = v40;
      *(v36 + 12) = 2080;
      sub_2437AB77C();
      OUTLINED_FUNCTION_102();
      sub_243793C54(v41, v42, &a11);
      OUTLINED_FUNCTION_101();
      *(v36 + 14) = v24;
      _os_log_impl(&dword_243789000, v33, v34, "ephemeral asset not received due to error %@ for request %s", v36, 0x16u);
      sub_243797E50(v37, &qword_27ED85560, &qword_2437ACC80);
      OUTLINED_FUNCTION_10_0();
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_29_0();
    }

    v43 = v23[14];
    v23[3] = v29;
    v44 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E8, &qword_2437AD170);
    sub_2437ABB4C();
  }

  v46 = v23[12];
  v45 = v23[13];
  v23[4] = v29;
  v47 = v29;
  v48 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  sub_2437ABC2C();
  v23[5] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  OUTLINED_FUNCTION_96();
  sub_2437ABC2C();

  OUTLINED_FUNCTION_48_0();
  v60 = v50;
  v61 = v49;

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19_0();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, v60, v61, a11, a12, a13, a14);
}

uint64_t sub_2437A4F04()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v0[3] = v1;
  v3 = sub_2437AB92C();
  v0[4] = v3;
  OUTLINED_FUNCTION_5(v3);
  v0[5] = v4;
  v6 = *(v5 + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857B8, &qword_2437AD130);
  OUTLINED_FUNCTION_17(v7);
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  v0[10] = v10;
  OUTLINED_FUNCTION_5(v10);
  v0[11] = v11;
  v13 = *(v12 + 64);
  v0[12] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C0, &qword_2437AD138);
  v0[13] = v14;
  OUTLINED_FUNCTION_5(v14);
  v0[14] = v15;
  v17 = *(v16 + 64);
  v0[15] = OUTLINED_FUNCTION_43();
  v18 = (*v2 + 120) & 0xFFFFFFFFFFFFLL | 0x8674000000000000;
  v0[16] = *(*v2 + 120);
  v0[17] = v18;

  return MEMORY[0x2822009F8](sub_2437A50CC, v2, 0);
}

uint64_t sub_2437A50CC()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 24);
  (*(v0 + 128))();
  v4 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2437A5130()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  sub_2437ABC3C();
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_28();
  v7(v6);
  v8 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_0();
  v0[18] = v9;
  *v9 = v10;
  v9[1] = sub_2437A51F8;
  v11 = v0[15];
  v12 = v0[13];
  v13 = v0[9];
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822005A8](v14, v15, v16, v17, v18);
}

uint64_t sub_2437A51F8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2437A52F4()
{
  v50 = v0;
  v1 = v0[9];
  v2 = v0[4];
  OUTLINED_FUNCTION_95();
  if (v3)
  {
    v4 = v0[12];
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);

    OUTLINED_FUNCTION_11_0();

    return v8();
  }

  else
  {
    (*(v0[5] + 32))(v0[8], v1, v2);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[4];
    v13 = v0[5];
    v14 = sub_2437AB9DC();
    __swift_project_value_buffer(v14, qword_27ED861C8);
    v15 = *(v13 + 16);
    v16 = OUTLINED_FUNCTION_12_0();
    (v15)(v16);
    v17 = sub_2437AB9BC();
    v18 = sub_2437ABCAC();
    v19 = OUTLINED_FUNCTION_51_0(v18);
    v21 = v0[7];
    v20 = v0[8];
    if (v19)
    {
      v22 = v0[6];
      v46 = v0[5];
      v23 = v0[4];
      v48 = v0[8];
      v24 = OUTLINED_FUNCTION_14_0();
      v47 = v10;
      v25 = OUTLINED_FUNCTION_13_0();
      v49 = v25;
      *v24 = 136315138;
      OUTLINED_FUNCTION_114();
      v15();
      v26 = sub_2437ABABC();
      v28 = v27;
      v29 = *(v46 + 8);
      v29(v21, v23);
      v30 = sub_243793C54(v26, v28, &v49);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_243789000, v17, v47, "received signal %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_8_0();

      v29(v48, v23);
    }

    else
    {
      v32 = v0[4];
      v31 = v0[5];

      v33 = *(v31 + 8);
      v34 = OUTLINED_FUNCTION_88();
      v33(v34);
      (v33)(v20, v32);
    }

    v35 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_16_0();
    v0[18] = v36;
    *v36 = v37;
    v36[1] = sub_2437A51F8;
    v38 = v0[15];
    v39 = v0[13];
    v40 = v0[9];
    OUTLINED_FUNCTION_3_2();

    return MEMORY[0x2822005A8](v41, v42, v43, v44, v45);
  }
}

uint64_t sub_2437A5600()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v6 = v0[2];

  OUTLINED_FUNCTION_14();

  return v7();
}

uint64_t AssetManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2437A571C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_12();
  *v4 = v3;

  OUTLINED_FUNCTION_11_0();

  return v5();
}

uint64_t sub_2437A57FC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

void sub_2437A58E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24379E664();
}

void sub_2437A5938(uint64_t a1, char a2, uint64_t *a3)
{
  v57 = a3;
  v6 = sub_2437AB7BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v56 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2437AB5BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v58 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = v44 - v18;
  v52 = *(a1 + 16);
  if (!v52)
  {
LABEL_13:

    return;
  }

  v44[1] = v3;
  v45 = v17;
  v19 = 0;
  v51 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v20 = *(v16 + 48);
  v49 = v10;
  v50 = v20;
  v47 = v6;
  v48 = v11;
  v54 = (v7 + 32);
  v55 = (v11 + 32);
  v46 = a1;
  while (1)
  {
    if (v19 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2437ABE5C();
      __break(1u);
      goto LABEL_22;
    }

    v21 = v53;
    sub_2437A724C(v51 + *(v17 + 72) * v19, v53, &qword_27ED85748, &qword_2437ACFC8);
    v22 = *v55;
    v23 = v58;
    (*v55)(v58, v21, v10);
    v24 = *v54;
    (*v54)(v56, v21 + v50, v6);
    v25 = *v57;
    v27 = sub_2437A5E74(v23);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_19;
    }

    v31 = v26;
    if (v25[3] < v30)
    {
      break;
    }

    if (a2)
    {
      if (v26)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85868, &qword_2437AD1F8);
      sub_2437ABD9C();
      if (v31)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v36 = v58;
    v37 = *v57;
    *(*v57 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v10 = v49;
    v22(v37[6] + *(v48 + 72) * v27, v36, v49);
    v38 = v37[7] + *(v7 + 72) * v27;
    v6 = v47;
    v24(v38, v56, v47);
    v39 = v37[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_20;
    }

    ++v19;
    v37[2] = v41;
    a2 = 1;
    v17 = v45;
    a1 = v46;
    if (v52 == v19)
    {
      goto LABEL_13;
    }
  }

  v32 = v57;
  sub_2437A5F0C(v30, a2 & 1);
  v33 = *v32;
  v34 = sub_2437A5E74(v58);
  if ((v31 & 1) != (v35 & 1))
  {
    goto LABEL_21;
  }

  v27 = v34;
  if ((v31 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v42 = swift_allocError();
  swift_willThrow();
  v61 = v42;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v7 + 8))(v56, v47);
    (*(v48 + 8))(v58, v49);

    return;
  }

LABEL_22:
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_2437ABD5C();
  MEMORY[0x245D3EE60](0xD00000000000001BLL, 0x80000002437ADAD0);
  sub_2437ABD7C();
  MEMORY[0x245D3EE60](39, 0xE100000000000000);
  sub_2437ABDAC();
  __break(1u);
}

unint64_t sub_2437A5E74(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2437AB5BC();
  sub_2437A7208(&qword_27ED85850, MEMORY[0x277CC95F0]);
  v5 = sub_2437ABA5C();

  return sub_2437A63AC(a1, v5);
}

uint64_t sub_2437A5F0C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_2437AB7BC();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2437AB5BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85860, &qword_2437AD1F0);
  v52 = a2;
  result = sub_2437ABDBC();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v13 + 48);
      v55 = *(v25 + 72);
      v31 = v30 + v55 * v29;
      if (v52)
      {
        (*v54)(v58, v31, v9);
        v32 = *(v13 + 56);
        v33 = *(v51 + 72);
        (*(v51 + 32))(v56, v32 + v33 * v29, v57);
      }

      else
      {
        (*v48)(v58, v31, v9);
        v34 = *(v13 + 56);
        v33 = *(v51 + 72);
        (*(v51 + 16))(v56, v34 + v33 * v29, v57);
      }

      v35 = *(v16 + 40);
      sub_2437A7208(&qword_27ED85850, MEMORY[0x277CC95F0]);
      result = sub_2437ABA5C();
      v36 = -1 << *(v16 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v36) >> 6;
        while (++v38 != v41 || (v40 & 1) == 0)
        {
          v42 = v38 == v41;
          if (v38 == v41)
          {
            v38 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v38);
          if (v43 != -1)
          {
            v39 = __clz(__rbit64(~v43)) + (v38 << 6);
            goto LABEL_27;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v39 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      *(v24 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      (*v54)((*(v16 + 48) + v55 * v39), v58, v9);
      result = (*v53)(*(v16 + 56) + v33 * v39, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v17 >= v23)
      {
        break;
      }

      v28 = v19[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_35;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      sub_2437A6568(0, (v44 + 63) >> 6, v19);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_35:
  *v3 = v16;
  return result;
}

unint64_t sub_2437A63AC(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2437AB5BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2437A7208(&qword_27ED85858, MEMORY[0x277CC95F0]);
    v10 = sub_2437ABA7C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2437A6568(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2437ACF40;
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

size_t sub_2437A65CC(size_t a1, int64_t a2, char a3)
{
  result = sub_2437A7294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2437A65EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_118(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_42();
  v9(v8);
  return v4;
}

void sub_2437A6634()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_24379F64C();
}

void sub_2437A6640()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_2437A3AD4();
}

uint64_t sub_2437A6698()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2437A66D8()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_57_0(v2);
  *v3 = v4;
  v3[1] = sub_243792248;

  return sub_2437A4F04();
}

unint64_t sub_2437A6768()
{
  result = qword_27ED857B0;
  if (!qword_27ED857B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED857B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetManager.AssetError(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AssetManager.AssetError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2437A68FCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2437A6950()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85780, &qword_2437AD000);
  OUTLINED_FUNCTION_5(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_81_0();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_57_0(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_49_0(v9);

  return sub_24379B260();
}

uint64_t sub_2437A6A6C()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_1(v33);
  v2 = v1;
  v3 = *(v1 + 80);
  v5 = *(v4 + 64);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  OUTLINED_FUNCTION_1(v32);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (((v3 + 32) & ~v3) + v5 + v8) & ~v8;
  v29 = v9;
  v11 = *(v10 + 64);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_1(v31);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v17 = *(v16 + 64);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E8, &qword_2437AD170);
  OUTLINED_FUNCTION_1(v30);
  v19 = v18;
  v21 = v20;
  v22 = *(v19 + 80);
  v23 = (v15 + v17 + v22) & ~v22;
  v24 = v3 | v8 | v14 | v22;
  v25 = (*(v21 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + ((v3 + 32) & ~v3), v33);
  (*(v7 + 8))(v0 + v29, v32);
  (*(v13 + 8))(v0 + v15, v31);
  (*(v19 + 8))(v0 + v23, v30);
  v27 = *(v0 + v25);

  return MEMORY[0x2821FE8E8](v0, ((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v24 | 7);
}

uint64_t sub_2437A6CE8()
{
  OUTLINED_FUNCTION_71();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_5(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85778, &qword_2437ACFF8);
  OUTLINED_FUNCTION_5(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_5(v11);
  v13 = (v8 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v15 = *(v14 + 64);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857E8, &qword_2437AD170);
  OUTLINED_FUNCTION_5(v16);
  v19 = *(v0 + ((*(v18 + 64) + ((v13 + v15 + *(v17 + 80)) & ~*(v17 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_57_0(v20);
  *v21 = v22;
  v21[1] = sub_243794838;

  return sub_2437A3F0C();
}

uint64_t sub_2437A6F10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v5 + v11 + 8) & ~v11;
  v20 = v3 | v11;
  v13 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = OUTLINED_FUNCTION_83_0();
  v16(v15);
  v17 = *(v0 + v5);

  (*(v8 + 8))(v0 + v12, v6);
  v18 = *(v0 + v13);

  return MEMORY[0x2821FE8E8](v0, ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v20 | 7);
}

uint64_t sub_2437A7098()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_71();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85758, &qword_2437ACFD8);
  OUTLINED_FUNCTION_5(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85818, &qword_2437AD1A8);
  OUTLINED_FUNCTION_5(v5);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v9 = *(v0 + v4);
  v10 = *(v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_57_0(v11);
  *v12 = v13;
  v12[1] = sub_243794838;
  OUTLINED_FUNCTION_111();

  return sub_24379F8F8();
}

uint64_t sub_2437A7208(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_96();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2437A724C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_118(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_42();
  v9(v8);
  return v4;
}

size_t sub_2437A7294(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85870, &qword_2437AD200);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85748, &qword_2437ACFC8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2437A57FC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t objectdestroy_35Tm()
{
  OUTLINED_FUNCTION_90();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1(v3);
  v6 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v10 = (v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = OUTLINED_FUNCTION_83_0();
  v15(v14);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_2437A759C()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85728, &qword_2437ACF98);
  OUTLINED_FUNCTION_5(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_81_0();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_57_0(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_49_0(v9);

  return sub_2437A18C8();
}

uint64_t sub_2437A76B8()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v9 = (((v3 + 32) & ~v3) + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = OUTLINED_FUNCTION_83_0();
  v14(v13);
  (*(v8 + 8))(v0 + v9, v6);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_2437A77FC()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85700, &qword_2437ACF78);
  OUTLINED_FUNCTION_5(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857C8, &qword_2437AD140);
  OUTLINED_FUNCTION_17(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_81_0();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_57_0(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_49_0(v9);

  return sub_24379E8D0();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

char *OUTLINED_FUNCTION_8_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 16);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_1()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_29_0()
{

  JUMPOUT(0x245D3F7D0);
}

void OUTLINED_FUNCTION_40_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_41_0()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return sub_2437ABBDC();
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return sub_2437ABDAC();
}

uint64_t OUTLINED_FUNCTION_45_0()
{
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[12];
  v13 = v0[9];
  v14 = v0[8];
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  result = v0[41];
  v2 = v0[37];
  v3 = v0[38];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v11 = v0[21];
  v12 = v0[18];
  return result;
}

BOOL OUTLINED_FUNCTION_51_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
}

void OUTLINED_FUNCTION_76_0()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_92(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 112);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99()
{
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
}

uint64_t OUTLINED_FUNCTION_100()
{
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[10];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_101()
{
}

void OUTLINED_FUNCTION_102()
{

  JUMPOUT(0x245D3EEA0);
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 24);
  return v2;
}

uint64_t OUTLINED_FUNCTION_108()
{
  v1 = *(v0 + 360);
  result = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(*(v0 + 320) + 8);
  return result;
}

void OUTLINED_FUNCTION_110()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
}

uint64_t OUTLINED_FUNCTION_118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_119(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_243793C54(a1, a2, &a9);
}

BOOL OUTLINED_FUNCTION_120()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_121()
{
}

uint64_t OUTLINED_FUNCTION_122()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_123()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_124()
{

  return sub_2437ABE1C();
}

void *OUTLINED_FUNCTION_126()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = v2[6];
  result = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  *v1 = v3;
  return result;
}

uint64_t sub_2437A81F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = *(v9 + 16);

  return v10(a4, v4 + v6, v8);
}

uint64_t sub_2437A8260(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2437AB92C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED857F0, &qword_2437AD188);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2437A8388, v1, 0);
}

uint64_t sub_2437A8388()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  sub_2437ABC1C();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2437A8470(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2437A84B0(a1);
  return v5;
}

uint64_t sub_2437A84B0(uint64_t a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85788, &qword_2437AD008);
  v3 = OUTLINED_FUNCTION_1(v34);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  v9 = OUTLINED_FUNCTION_1(v35);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85880, &qword_2437AD260);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  v32 = v1;
  swift_defaultActor_initialize();
  v23 = OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator__results;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v31 = a1;
  v26(v1 + v23, a1, v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v27);
  v36 = v22;
  sub_2437AB92C();
  (*(v5 + 104))(v33, *MEMORY[0x277D858A0], v34);
  v28 = v32;
  sub_2437ABC6C();
  (*(v11 + 32))(v28 + OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator__signals, v15, v35);
  sub_2437A88A8(v22, v20);
  result = __swift_getEnumTagSinglePayload(v20, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v25 + 8))(v31, v24);
    (*(*(v27 - 8) + 32))(v28 + OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator_continutation, v20, v27);
    sub_2437A8918(v22);
    return v28;
  }

  return result;
}

uint64_t sub_2437A8810(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2437A8918(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 16))(v3, a1, v4);

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t sub_2437A88A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85880, &qword_2437AD260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2437A8918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85880, &qword_2437AD260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssetsDownloadCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator__results;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  OUTLINED_FUNCTION_7(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator__signals;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtC11CloudAssets25AssetsDownloadCoordinator_continutation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85790, &unk_2437AD250);
  OUTLINED_FUNCTION_7(v8);
  (*(v9 + 8))(v0 + v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetsDownloadCoordinator.__deallocating_deinit()
{
  AssetsDownloadCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AssetsDownloadCoordinator()
{
  result = qword_27ED86260;
  if (!qword_27ED86260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2437A8B20()
{
  sub_2437A8EDC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2437A8F64(319, &qword_27ED85890, MEMORY[0x277D858D8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2437A8F64(319, &qword_27ED85898, MEMORY[0x277D858B0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AssetsDownloadCoordinator.receive(signal:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2437A8DE8;

  return v8(a1);
}

uint64_t sub_2437A8DE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_2437A8EDC()
{
  if (!qword_27ED85888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED856C0, &unk_2437AD2F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85538, qword_2437AD390);
    v0 = sub_2437ABC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED85888);
    }
  }
}

void sub_2437A8F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_2437AB92C();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85538, qword_2437AD390);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2437A9028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_2437A9080(a1, a2, a3);
  return v9;
}

uint64_t sub_2437A9080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  v7 = OBJC_IVAR____TtC11CloudAssets23AssetsUploadCoordinator__signals;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  OUTLINED_FUNCTION_7(v8);
  (*(v9 + 32))(v3 + v7, a2);
  v10 = OBJC_IVAR____TtC11CloudAssets23AssetsUploadCoordinator__results;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  OUTLINED_FUNCTION_7(v11);
  (*(v12 + 32))(v3 + v10, a3);
  return v3;
}

uint64_t AssetsUploadCoordinator.deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC11CloudAssets23AssetsUploadCoordinator__signals;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85798, &unk_2437AD300);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = OBJC_IVAR____TtC11CloudAssets23AssetsUploadCoordinator__results;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 8))(v0 + v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetsUploadCoordinator.__deallocating_deinit()
{
  AssetsUploadCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AssetsUploadCoordinator()
{
  result = qword_27ED86310;
  if (!qword_27ED86310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2437A92C0()
{
  sub_2437A9428();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2437A8EDC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2437A9428()
{
  if (!qword_27ED85890)
  {
    sub_2437AB92C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85538, qword_2437AD390);
    v0 = sub_2437ABC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED85890);
    }
  }
}

uint64_t sub_2437A94A4()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858A0, qword_2437AD3A8) - 8) + 64);
  v1[4] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_2437A9534, v0, 0);
}

uint64_t sub_2437A9534()
{
  v1 = *(v0[3] + 112);
  v0[5] = v1;
  v2 = (*v1 + 112) & 0xFFFFFFFFFFFFLL | 0x1877000000000000;
  v0[6] = *(*v1 + 112);
  v0[7] = v2;
  return OUTLINED_FUNCTION_0_3(sub_2437A9570, v1);
}

uint64_t sub_2437A9570()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  *(v0 + 64) = (*(v0 + 48))();

  return MEMORY[0x2822009F8](sub_2437A95E0, v3, 0);
}

uint64_t sub_2437A95E0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  sub_2437A96B4(v0[8], v1);

  v2 = sub_2437AB71C();
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v2 - 8) + 32))(v0[2], v0[4], v2);

    OUTLINED_FUNCTION_14();

    return v4();
  }

  return result;
}

uint64_t sub_2437A96B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2437AB71C();
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

uint64_t sub_2437A975C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3(sub_2437A9778, v1);
}

uint64_t sub_2437A9778()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = (*v1 + 120) & 0xFFFFFFFFFFFFLL | 0xB676000000000000;
  v0[5] = *(*v1 + 120);
  v0[6] = v2;
  return OUTLINED_FUNCTION_0_3(sub_2437A97B4, v1);
}

uint64_t sub_2437A97B4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  (*(v0 + 40))();
  OUTLINED_FUNCTION_14();

  return v4();
}

uint64_t sub_2437A9814()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C0, &unk_2437AD2F0);
  v1[6] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[7] = OUTLINED_FUNCTION_43();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856C8, &unk_2437ACE90) - 8) + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D8, qword_2437ACEA0);
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED856D0, qword_2437AD230);
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64);
  v1[14] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_2437A9998, v0, 0);
}

uint64_t sub_2437A9998()
{
  v1 = *(v0[5] + 112);
  v0[15] = v1;
  v2 = (*v1 + 128) & 0xFFFFFFFFFFFFLL | 0x5BC5000000000000;
  v0[16] = *(*v1 + 128);
  v0[17] = v2;
  return OUTLINED_FUNCTION_0_3(sub_2437A99D4, v1);
}

uint64_t sub_2437A99D4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 40);
  (*(v0 + 128))();

  return MEMORY[0x2822009F8](sub_2437A9A40, v4, 0);
}

uint64_t sub_2437A9A40()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[5];
  sub_2437ABC3C();
  v5 = sub_2437A9F14();
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_2437A9B04;
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];

  return MEMORY[0x2822005A8](v9, v4, v5, v10, v0 + 2);
}

uint64_t sub_2437A9B04()
{
  OUTLINED_FUNCTION_15();
  v3 = *(*v1 + 144);
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v2;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2437A9E5C;
  }

  else
  {
    v6 = sub_2437A9C0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2437A9C0C()
{
  v1 = v0[8];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[6]) == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    (*(v0[10] + 8))(v0[11], v0[9]);
    sub_24379A874();
    swift_allocError();
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
LABEL_5:
    v12 = v0[14];
    v13 = v0[11];
    v15 = v0[7];
    v14 = v0[8];

    OUTLINED_FUNCTION_14();
    goto LABEL_7;
  }

  sub_24379A8C8(v1, v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v0[3] = *v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85538, qword_2437AD390);
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v8, v10);
    (*(v7 + 8))(v6, v9);
    goto LABEL_5;
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[4];
  (*(v11 + 8))(v0[11], v0[9]);
  (*(v7 + 8))(v6, v9);
  v20 = sub_2437AB91C();
  (*(*(v20 - 8) + 32))(v19, v18, v20);

  OUTLINED_FUNCTION_14();
LABEL_7:

  return v16();
}

uint64_t sub_2437A9E5C()
{
  OUTLINED_FUNCTION_30();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];

  OUTLINED_FUNCTION_14();

  return v9();
}

unint64_t sub_2437A9F14()
{
  result = qword_27ED858A8;
  if (!qword_27ED858A8)
  {
    type metadata accessor for AssetUploadCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED858A8);
  }

  return result;
}

uint64_t AssetUploadCoordinator.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetUploadCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AssetUploadCoordinator.assetSkeleton.getter()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_5_3();
  v1 = *(v0 + 96);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AssetUploadCoordinator.signals.getter()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_5_3();
  v1 = *(v0 + 112);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of AssetUploadCoordinator.result()()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_5_3();
  v1 = *(v0 + 120);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_0(v4);

  return v7(v6);
}

uint64_t sub_2437AA35C(unint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  v3 = MEMORY[0x277D84F90];
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_43;
      }

      v8 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v8)
      {
        goto LABEL_35;
      }

      v47 = MEMORY[0x277D84F90];
      sub_2437AA9FC(0, v8 & ~(v8 >> 63), 0);
      v38 = v7;
      v39 = v5;
      v36 = v6;
      if (v2)
      {
        if (v2 == 2)
        {
          v11 = *(v5 + 16);
        }

        else
        {
          v11 = v5;
        }
      }

      else
      {
        v11 = 0;
      }

      if (v8 < 0)
      {
        goto LABEL_42;
      }

      v3 = v47;
      v37 = v5 >> 32;
      v34 = v5 >> 16;
      v35 = v5 >> 8;
      v32 = v5 >> 40;
      v33 = v5 >> 24;
      v30 = HIBYTE(v5);
      v31 = HIWORD(v5);
      v40 = v5;
      break;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    case 3uLL:
      goto LABEL_35;
    default:
      v8 = BYTE6(a2);
      goto LABEL_6;
  }

  do
  {
    if (v2 == 1)
    {
      if (v11 < v39 || v11 >= v37)
      {
        goto LABEL_38;
      }

      v14 = sub_2437AB44C();
      if (!v14)
      {
        goto LABEL_45;
      }

      v15 = v14;
      v16 = sub_2437AB45C();
      v17 = v11 - v16;
      if (__OFSUB__(v11, v16))
      {
        goto LABEL_40;
      }

LABEL_31:
      v12 = *(v15 + v17);
      goto LABEL_32;
    }

    if (v2)
    {
      if (v11 < *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v11 >= *(v5 + 24))
      {
        goto LABEL_39;
      }

      v18 = sub_2437AB44C();
      if (!v18)
      {
        goto LABEL_46;
      }

      v15 = v18;
      v19 = sub_2437AB45C();
      v17 = v11 - v19;
      if (__OFSUB__(v11, v19))
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (v11 >= v38)
    {
      goto LABEL_37;
    }

    LOBYTE(v41) = v5;
    BYTE1(v41) = v35;
    BYTE2(v41) = v34;
    BYTE3(v41) = v33;
    BYTE4(v41) = v36;
    BYTE5(v41) = v32;
    BYTE6(v41) = v31;
    HIBYTE(v41) = v30;
    v42 = a2;
    v43 = BYTE2(a2);
    v44 = BYTE3(a2);
    v45 = BYTE4(a2);
    v46 = BYTE5(a2);
    v12 = *(&v41 + v11);
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858B0, &qword_2437AD440);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2437ACF30;
    *(v20 + 56) = MEMORY[0x277D84B78];
    *(v20 + 64) = MEMORY[0x277D84BC0];
    *(v20 + 32) = v12;
    v21 = sub_2437ABAAC();
    v23 = v22;
    v47 = v3;
    v25 = *(v3 + 16);
    v24 = *(v3 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2437AA9FC((v24 > 1), v25 + 1, 1);
      v3 = v47;
    }

    *(v3 + 16) = v25 + 1;
    v26 = v3 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    ++v11;
    --v8;
    v5 = v40;
  }

  while (v8);
LABEL_35:
  v41 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858B8, &qword_2437AD448);
  sub_2437AAA1C();
  v27 = sub_2437ABA6C();

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void sub_2437AA6F4()
{
  v2 = v0;
  v25[11] = *MEMORY[0x277D85DE8];
  v3 = sub_2437AB52C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2437AAA80();
  v8 = *(v4 + 16);
  v8(v7, v2, v3);
  v9 = sub_24378D810(v7);
  if (!v1)
  {
    v10 = v9;
    v11 = [v9 fileDescriptor];
    v25[0] = 65542;
    v12 = ffsctl(v11, 0xC0084A44uLL, v25, 0);
    if (v12)
    {
      v13 = v12;
      v14 = *MEMORY[0x277CCA5B8];
      v15 = sub_2437ABA9C();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858C8, &qword_2437AD450);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2437ACF30;
      v19 = *MEMORY[0x277CCA760];
      *(inited + 32) = sub_2437ABA9C();
      *(inited + 40) = v20;
      *(inited + 72) = v3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
      v8(boxed_opaque_existential_1, v2, v3);
      v22 = sub_2437ABA4C();
      v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_2437AA94C(v15, v17, v13, v22);
      swift_willThrow();
    }

    [v10 closeFile];
  }

  v24 = *MEMORY[0x277D85DE8];
}

id sub_2437AA94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2437ABA8C();

  if (a4)
  {
    v8 = sub_2437ABA2C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

char *sub_2437AA9FC(char *a1, int64_t a2, char a3)
{
  result = sub_2437AAAD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2437AAA1C()
{
  result = qword_27ED858C0;
  if (!qword_27ED858C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED858B8, &qword_2437AD448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED858C0);
  }

  return result;
}

unint64_t sub_2437AAA80()
{
  result = qword_27ED85548;
  if (!qword_27ED85548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED85548);
  }

  return result;
}

char *sub_2437AAAD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED858D0, &qword_2437AD468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2437AABDC()
{
  qword_27ED863B8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_2437AAC18(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (_MergedGlobals_5 == -1)
        {
LABEL_5:
          v6 = qword_27ED863B8;

          return _os_activity_create(dso, description, v6, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        OUTLINED_FUNCTION_0_5();
        goto LABEL_5;
      }

LABEL_28:
      result = sub_2437ABDAC();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v8 = description + 1;
    goto LABEL_13;
  }

  v9 = (description & 0x3F) << 8;
  v10 = (description >> 6) + v9 + 33217;
  v11 = (v9 | (description >> 6) & 0x3F) << 8;
  v12 = (description >> 18) + ((v11 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v13 = (description >> 12) + v11 + 8487393;
  if (description >> 16)
  {
    v8 = v12;
  }

  else
  {
    v8 = v13;
  }

  if (description < 0x800)
  {
    v8 = v10;
  }

LABEL_13:
  *descriptiona = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v8) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (_MergedGlobals_5 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  return _os_activity_create(dso, descriptiona, qword_27ED863B8, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t sub_2437AAE08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED858E0, &unk_2437AD500);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_27ED864C8 = result;
  return result;
}

void static TestConfigurations.testConfigurations()(_BYTE *a1@<X8>)
{
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v2 = qword_27ED864C8;
  os_unfair_lock_lock((qword_27ED864C8 + 20));
  *a1 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 20));
}

void sub_2437AAED0(char a1)
{
  if (_MergedGlobals_6 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v2 = qword_27ED864C8;
  os_unfair_lock_lock((qword_27ED864C8 + 20));
  *(v2 + 16) = a1;

  os_unfair_lock_unlock((v2 + 20));
}

BOOL static TestConfigurations.isSystemInstalledBinary()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2437ABA3C();
  sub_2437AB000(0xD000000000000011, 0x80000002437ADC40, v2);
  v4 = v3;

  if (v4)
  {
  }

  return v4 == 0;
}

uint64_t sub_2437AB000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2437AB2D0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t TestConfigurations.hashValue.getter()
{
  v1 = *v0;
  sub_2437ABEAC();
  MEMORY[0x245D3F230](v1);
  return sub_2437ABECC();
}

unint64_t sub_2437AB0F0()
{
  result = qword_27ED858D8;
  if (!qword_27ED858D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED858D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TestConfigurations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TestConfigurations(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2437AB298);
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

unint64_t sub_2437AB2D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2437ABEAC();
  sub_2437ABADC();
  v6 = sub_2437ABECC();

  return sub_2437AB348(a1, a2, v6);
}

unint64_t sub_2437AB348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2437ABE3C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}