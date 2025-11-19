uint64_t CarrySettings.NetworkingClient.found(target:)()
{
  OUTLINED_FUNCTION_40();
  v1[14] = v2;
  v1[15] = v0;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[16] = *(v5 + 88);
  OUTLINED_FUNCTION_27_0();
  v1[17] = *(v6 + 80);
  OUTLINED_FUNCTION_59_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[18] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_45_0();
  v8 = type metadata accessor for CarrySettings.BufferItem();
  v1[19] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[20] = v9;
  v11 = *(v10 + 64);
  v1[21] = OUTLINED_FUNCTION_146();
  v12 = _s16NetworkingClientC15DeviceCacheItemVMa();
  v1[22] = v12;
  v13 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v13);
  v15 = *(v14 + 64);
  v1[23] = OUTLINED_FUNCTION_146();
  v16 = *(v12 - 8);
  v1[24] = v16;
  v17 = *(v16 + 64);
  v1[25] = OUTLINED_FUNCTION_146();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA88, &unk_2543ACB80);
  OUTLINED_FUNCTION_110(v18);
  v20 = *(v19 + 64);
  v1[26] = OUTLINED_FUNCTION_146();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFA80, &unk_2543A7B60);
  OUTLINED_FUNCTION_110(v21);
  v23 = *(v22 + 64);
  v1[27] = OUTLINED_FUNCTION_146();
  v24 = type metadata accessor for CarrySettings.DataModel(0);
  v1[28] = v24;
  OUTLINED_FUNCTION_110(v24);
  v26 = *(v25 + 64);
  v1[29] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_76();
  v27 = *(swift_getAssociatedConformanceWitness() + 8);
  v1[30] = v27;
  v1[31] = *(v27 + 8);
  OUTLINED_FUNCTION_45_0();
  v28 = type metadata accessor for CarrySettings.MessageableDevice();
  v1[32] = v28;
  OUTLINED_FUNCTION_8(v28);
  v1[33] = v29;
  v31 = *(v30 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v32 = *(AssociatedTypeWitness - 8);
  v1[36] = v32;
  v33 = *(v32 + 64);
  v1[37] = OUTLINED_FUNCTION_82_0();
  v1[38] = swift_task_alloc();
  v34 = sub_2543A1FB8();
  v1[39] = v34;
  OUTLINED_FUNCTION_8(v34);
  v1[40] = v35;
  v37 = *(v36 + 64);
  v1[41] = OUTLINED_FUNCTION_146();
  v38 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_25433460C()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  sub_2543332EC(v1);
  v0[42] = *(v3 + 16);
  v0[43] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = OUTLINED_FUNCTION_69_2();
  v62 = v8;
  v8(v7);
  v9 = v1;
  v10 = sub_2543A1F98();
  sub_2543A3008();
  OUTLINED_FUNCTION_72_0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[40];
  v14 = v0[41];
  v16 = v0[38];
  v15 = v0[39];
  if (v12)
  {
    v17 = v0[36];
    v18 = v0[37];
    v19 = v0[18];
    OUTLINED_FUNCTION_129();
    v63 = OUTLINED_FUNCTION_51_2();
    v20 = OUTLINED_FUNCTION_89_1(4.8149e-34);
    v62(v20);
    sub_2543A2888();
    v21 = OUTLINED_FUNCTION_34_3();
    v22(v21);
    sub_2542D5198();
    OUTLINED_FUNCTION_103_1();
    *(v14 + 4) = v16;
    OUTLINED_FUNCTION_33_2(&dword_2542B7000, v23, v24, "Found %s", v25, v26, v27, v28, v60, v61, v9);
    __swift_destroy_boxed_opaque_existential_0(v63);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_3_1();

    (*(v13 + 8))(v14, v15);
  }

  else
  {
    v29 = v0[36];
    v30 = v0[18];

    v31 = OUTLINED_FUNCTION_65_2();
    v32(v31);
    v33 = *(v13 + 8);
    v34 = OUTLINED_FUNCTION_65();
    v36(v34, v35);
  }

  v37 = v0[37];
  v38 = v0[35];
  v39 = v0[31];
  v41 = v0[28];
  v40 = v0[29];
  v43 = v0[26];
  v42 = v0[27];
  v44 = v0[18];
  v45 = v0[14];
  _s13DataModelCRDTVMa(0);
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  sub_254382290(v42);
  v50 = OUTLINED_FUNCTION_79_0();
  v62(v50);
  CarrySettings.MessageableDevice.init(model:target:)(v40, v37, v44, v38);
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v41);
  v54 = type metadata accessor for CarrySettings.SyncManager();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = swift_task_alloc();
  v0[44] = v57;
  *v57 = v0;
  v57[1] = sub_254334894;
  OUTLINED_FUNCTION_29_0(v0[26]);
  OUTLINED_FUNCTION_98_0();

  return CarrySettings.SyncManager.init(withModel:)();
}

uint64_t sub_254334894()
{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v9 + 360) = v2;

  v10 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_25433497C()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[45];
  sub_25434EF80(v0[35]);
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_254334A18;
  v3 = v0[45];
  v4 = v0[15];
  OUTLINED_FUNCTION_29_0(v0[14]);

  return sub_254337090();
}

uint64_t sub_254334A18()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v2 = v1;
  v4 = *(v3 + 368);
  v5 = *(v3 + 120);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v10 + 376) = v8;
  *(v10 + 384) = v9;

  v11 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_254334B14()
{
  v1 = v0[47];
  v2 = v0[48];
  v18 = v0[42];
  v19 = v0[43];
  v21 = v0[45];
  v22 = v0[30];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v16 = v0[23];
  v17 = v0[37];
  v6 = v0[17];
  v7 = v0[16];
  v20 = v0[15];
  v14 = v0[14];
  v15 = v0[18];
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  OUTLINED_FUNCTION_59_2();
  sub_25433C02C(v8, v9, v2, v10);
  v18(v17, v14, v15);
  (*(v3 + 16))(v16, v4, v5);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v5);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_45_0();
  sub_2543A27B8();

  sub_2543A27E8();
  swift_endAccess();
  v11 = swift_task_alloc();
  v0[49] = v11;
  *v11 = v0;
  v11[1] = sub_254334CDC;
  v12 = v0[15];

  return sub_254338FCC();
}

uint64_t sub_254334CDC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 392);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254334DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v15 = *(v14 + 152);
  v17 = *(v14 + 112);
  v16 = *(v14 + 120);
  v18 = qword_27F5E1148;
  v61 = *(v14 + 128);
  OUTLINED_FUNCTION_97();
  *(v14 + 104) = *(v16 + v18);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_52_0(v19, v20, v21, v22, v23, v24, v25, v26, v27);
  *(v28 + 32) = v17;
  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  sub_2543A2768();
  swift_getWitnessTable();
  sub_2543A2F78();

  if (*(v14 + 96) == 1)
  {
    v29 = *(v14 + 376);
    v30 = *(v14 + 384);
    v31 = *(v14 + 360);
    v32 = *(v14 + 280);
    v33 = *(v14 + 256);
    v34 = *(v14 + 264);
    v36 = *(v14 + 192);
    v35 = *(v14 + 200);
    v37 = *(v14 + 176);

    v38 = *(v36 + 8);
    v39 = OUTLINED_FUNCTION_65();
    v40(v39);
    v41 = *(v34 + 8);
    v42 = OUTLINED_FUNCTION_76();
    v43(v42);
    OUTLINED_FUNCTION_46_2();
    *&v61 = v44;

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, v61, *(&v61 + 1), a11, a12, a13, a14);
  }

  else
  {
    v54 = *(v14 + 360);
    v55 = *(v14 + 168);
    v56 = *(v14 + 88);
    OUTLINED_FUNCTION_64_0();
    sub_2543A2AF8();
    swift_endAccess();
    *(v14 + 400) = *v55;
    *(v14 + 408) = v55[1];
    OUTLINED_FUNCTION_128();

    return MEMORY[0x2822009F8](v57, v58, v59);
  }
}

uint64_t sub_25433501C()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[15];
  v4 = *(v0[45] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast);
  sub_2543A2528();
  v5 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_25433508C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v15 = v14[47];
  v16 = v14[48];
  v17 = v14[45];
  v18 = v14[32];
  v19 = v14[33];
  v21 = v14[24];
  v20 = v14[25];
  v22 = v14[22];
  v38 = v14[35];
  v39 = v14[21];
  v24 = v14[19];
  v23 = v14[20];

  v25 = *(v21 + 8);
  v26 = OUTLINED_FUNCTION_65();
  v27(v26);
  (*(v19 + 8))(v38, v18);
  (*(v23 + 8))(v39, v24);
  OUTLINED_FUNCTION_46_2();
  v40 = v28;

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_128();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v40, a12, a13, a14);
}

uint64_t sub_2543351B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2543351D8, 0, 0);
}

uint64_t sub_2543351D8()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2542E7588;
    OUTLINED_FUNCTION_29_0(v0[5]);

    return CarrySettings.NetworkingClient.lost(target:)();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v5();
  }
}

uint64_t CarrySettings.NetworkingClient.lost(target:)()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[4] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[5] = v6;
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_82_0();
  v1[7] = swift_task_alloc();
  v9 = sub_2543A1FB8();
  v1[8] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_146();
  v13 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2543355A8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[7];
  v5 = v1[6];
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_2543356E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[12] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_2543A1FB8();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = sub_2543A30C8();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254335884, 0, 0);
}

uint64_t sub_254335884()
{
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *v8;
    v10 = *(v8 + 1);
    swift_getAssociatedConformanceWitness();
    v11 = type metadata accessor for DataModelUpdate();
    *(v0 + 176) = v11;
    v12 = *(v11 + 36);
    *(v0 + 256) = v12;
    v13 = *(v5 + 16);
    *(v0 + 184) = v13;
    *(v0 + 192) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v3, &v8[v12], v4);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    v14 = swift_task_alloc();
    *(v0 + 200) = v14;
    *v14 = v0;
    v14[1] = sub_254335A8C;
    v15 = *(v0 + 160);
    OUTLINED_FUNCTION_46();

    return CarrySettings.NetworkingClient.handleDataModelUpdate(withData:from:)();
  }

  else
  {
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_38_1();
    v21 = v20 + *(type metadata accessor for DataModelUpdate() + 40);
    v22 = *(v21 + 8);
    OUTLINED_FUNCTION_0_7(*v21);
    v28 = v23;
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    *(v0 + 216) = v26;
    *v26 = v0;
    v27 = OUTLINED_FUNCTION_21_0(v26);

    return v28(v27);
  }
}

uint64_t sub_254335A8C()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[21];
  v7 = v4[20];
  v8 = v4[19];
  v9 = v4[18];
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  *(v12 + 208) = v0;

  v13 = *(v8 + 8);
  v14 = OUTLINED_FUNCTION_76();
  v15(v14);

  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_254335BFC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_38_1();
  v5 = v4 + *(type metadata accessor for DataModelUpdate() + 40);
  v6 = *(v5 + 8);
  OUTLINED_FUNCTION_0_7(*v5);
  v13 = v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_21_0(v10);

  return v13(v11);
}

uint64_t sub_254335CD4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 192);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  (*(v0 + 184))(*(v0 + 112), *(v0 + 64) + *(v0 + 256), v2);
  OUTLINED_FUNCTION_60_0();
  *(v0 + 232) = sub_2543A2888();
  *(v0 + 240) = v4;
  OUTLINED_FUNCTION_97();
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    v6 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_1_9();
    v16 = v9;
    v10 = *(v2 + 4);
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_76_0(v11);
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_20_0(v12);

    return v16(v14);
  }
}

uint64_t sub_254335E04()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 248);
  sub_2543332EC(*(v0 + 136));

  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254335E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v15 = v14[30];
  v16 = v14[17];
  sub_2543A2768();
  v17 = sub_2543A1F98();
  v18 = sub_2543A2FF8();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v14[30];
  if (v19)
  {
    v21 = v14[29];
    v23 = v14[16];
    v22 = v14[17];
    v24 = v14[15];
    v25 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_87();
    *v25 = 136315138;
    OUTLINED_FUNCTION_61_0();
    v26 = sub_2542D5198();

    *(v25 + 4) = v26;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v27, v18, "### Failed to handle data model update from %s");
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    v28 = *(v23 + 8);
  }

  else
  {
    v31 = v14[16];
    v22 = v14[17];
    v32 = v14[15];
    v33 = v14[30];

    v34 = *(v31 + 8);
  }

  v29 = OUTLINED_FUNCTION_46();
  v30(v29);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_1_9();
  v49 = v35;
  v36 = *(v22 + 4);
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_76_0(v37);
  *v38 = v39;
  OUTLINED_FUNCTION_20_0(v38);
  OUTLINED_FUNCTION_128();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, a11, a12, a13, a14);
}

uint64_t CarrySettings.NetworkingClient.handleDataModelUpdate(withData:from:)()
{
  OUTLINED_FUNCTION_31();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = *v0;
  v6 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[18] = *(v7 + 88);
  OUTLINED_FUNCTION_27_0();
  v1[19] = *(v8 + 80);
  OUTLINED_FUNCTION_59_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[20] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_45_0();
  v10 = type metadata accessor for CarrySettings.BufferItem();
  v1[21] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[22] = v11;
  v13 = *(v12 + 64);
  v1[23] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_4_7();
  v14 = _s16NetworkingClientC15DeviceCacheItemVMa();
  v1[24] = v14;
  OUTLINED_FUNCTION_3(v14);
  v1[25] = v15;
  v17 = *(v16 + 64);
  v1[26] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  v18 = sub_2543A30C8();
  v1[27] = v18;
  OUTLINED_FUNCTION_8(v18);
  v1[28] = v19;
  v21 = *(v20 + 64);
  v1[29] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_45_0();
  v22 = sub_2543A30C8();
  v1[30] = v22;
  OUTLINED_FUNCTION_8(v22);
  v1[31] = v23;
  v25 = *(v24 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v26 = *(AssociatedTypeWitness - 8);
  v1[35] = v26;
  v27 = *(v26 + 64);
  v1[36] = OUTLINED_FUNCTION_82_0();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_25433627C()
{
  v1 = v0[34];
  v2 = v0[20];
  v3 = *(v0[31] + 16);
  v3(v1, v0[16], v0[30]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[31] + 8))(v0[34], v0[30]);
    goto LABEL_5;
  }

  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[19];
  v8 = v0[17];
  v7 = v0[18];
  (*(v0[35] + 32))(v0[38], v0[34], v0[20]);
  swift_beginAccess();
  v9 = *(v8 + 112);
  OUTLINED_FUNCTION_61_0();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_2543A27D8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    v11 = v0[38];
    v12 = v0[35];
    v13 = v0[20];
    (*(v0[28] + 8))(v0[29], v0[27]);
    swift_endAccess();
    v14 = *(v12 + 8);
    v15 = OUTLINED_FUNCTION_60_0();
    v16(v15);
LABEL_5:
    v17 = v0[33];
    v18 = v0[20];
    v3(v17, v0[16], v0[30]);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      v20 = v0[37];
      v19 = v0[38];
      v70 = v0[36];
      v71 = v0[34];
      v21 = v0[32];
      v22 = v0[30];
      v72 = v0[26];
      v73 = v0[23];
      v23 = v0[16];
      (*(v0[31] + 8))(v0[33], v22);
      v3(v21, v23, v22);
      v24 = sub_2543A2888();
      v26 = v25;
      sub_2542D6354();
      swift_allocError();
      *v27 = v24;
      v27[1] = v26;
      swift_willThrow();

      OUTLINED_FUNCTION_27();
    }

    else
    {
      v28 = v0[21];
      v29 = v0[17];
      (*(v0[35] + 32))(v0[37], v0[33], v0[20]);
      v30 = qword_27F5E1148;
      OUTLINED_FUNCTION_97();
      v31 = *(v29 + v30);
      sub_2543A2768();
      v32 = sub_2543A2AC8();

      if (v32 == 20)
      {
        v34 = v0[22];
        v33 = v0[23];
        v35 = v0[21];
        OUTLINED_FUNCTION_64_0();
        OUTLINED_FUNCTION_58_0();
        sub_2543A2B38();
        swift_getWitnessTable();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_92();
        sub_2543A2FC8();
        swift_endAccess();
        v36 = *(v34 + 8);
        v37 = OUTLINED_FUNCTION_46();
        v38(v37);
      }

      v39 = v0[36];
      v40 = v0[23];
      v41 = v0[20];
      v43 = v0[14];
      v42 = v0[15];
      (*(v0[35] + 16))(v39, v0[37], v41);
      v44 = OUTLINED_FUNCTION_61_0();
      sub_25430FBF0(v44, v45, v39, v41, v46);
      OUTLINED_FUNCTION_64_0();
      v47 = OUTLINED_FUNCTION_61_0();
      sub_2542D61B4(v47, v48);
      OUTLINED_FUNCTION_58_0();
      sub_2543A2B38();
      sub_2543A2AE8();
      swift_endAccess();
      OUTLINED_FUNCTION_37_2();
      v49(v40);

      OUTLINED_FUNCTION_25();
    }

    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v53 = v0[28];
  v52 = v0[29];
  v55 = v0[26];
  v54 = v0[27];
  v56 = v0[24];
  v57 = v0[25];
  v58 = OUTLINED_FUNCTION_77_1();
  v59(v58);
  v60 = *(v53 + 8);
  v61 = OUTLINED_FUNCTION_60_0();
  v62(v61);
  swift_endAccess();
  v0[39] = *(v55 + *(v56 + 36));
  v63 = *(v57 + 8);

  v64 = OUTLINED_FUNCTION_76();
  v63(v64);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_98_0();

  return MEMORY[0x2822009F8](v65, v66, v67);
}

uint64_t sub_254336788()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = *(v0[39] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings11SyncManager_multicast);
  sub_2543A2528();
  v5 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_2543367F8()
{
  v2 = *(v1 + 312);

  OUTLINED_FUNCTION_37_2();
  v3(v0);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2543368C4(__int128 *a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  v4 = sub_2543A1FB8();
  *(v2 + 120) = v4;
  v5 = *(v4 - 8);
  *(v2 + 128) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v7 = *a1;
  *(v2 + 256) = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v2 + 144) = v7;
  *(v2 + 160) = v8;
  *(v2 + 176) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2543369A4, 0, 0);
}

uint64_t sub_2543369A4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    *(v0 + 40) = *(v0 + 256);
    *(v0 + 48) = v4;
    *(v0 + 56) = v3;
    sub_2543A2768();
    v5 = swift_task_alloc();
    *(v0 + 200) = v5;
    *v5 = v0;
    v5[1] = sub_254336AEC;

    return CarrySettings.NetworkingClient.handleInstallProfile(withData:context:)(v5);
  }

  else
  {
    OUTLINED_FUNCTION_0_7(*(v0 + 176));
    v12 = v7;
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_23_0(v10);
    v11 = *(v0 + 184);

    return v12(0);
  }
}

uint64_t sub_254336AEC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = v2[25];
  v6 = v2[24];
  v7 = *v1;
  *v4 = *v1;
  v3[26] = v0;

  v8 = v2[7];

  if (v0)
  {
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_0_7(v3[22]);
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v3[27] = v15;
    *v15 = v7;
    OUTLINED_FUNCTION_23_0(v15);
    v16 = v3[23];
    OUTLINED_FUNCTION_196();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_254336CA8()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 64) = *(v0 + 256);
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  *(v0 + 72) = *(v0 + 160);
  *(v0 + 80) = v1;
  sub_2543A2768();
  *(v0 + 232) = sub_2543A2888();
  *(v0 + 240) = v3;
  OUTLINED_FUNCTION_97();
  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (Strong)
  {
    v5 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {

    v8 = *(v0 + 176);
    v9 = *(v0 + 208);
    OUTLINED_FUNCTION_1_9();
    v17 = v10;
    v11 = *(v8 + 4);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_76_0(v12);
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_18_0(v13);

    return v17(v15);
  }
}

uint64_t sub_254336DE4()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 248);
  sub_2543332EC(*(v0 + 136));

  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254336E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v15 = *(v14 + 240);
  v16 = *(v14 + 136);
  sub_2543A2768();
  v17 = sub_2543A1F98();
  v18 = sub_2543A2FF8();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v14 + 240);
  if (v19)
  {
    v21 = *(v14 + 232);
    v23 = *(v14 + 128);
    v22 = *(v14 + 136);
    v24 = *(v14 + 120);
    v25 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_87();
    *v25 = 136315138;
    OUTLINED_FUNCTION_61_0();
    v26 = sub_2542D5198();

    *(v25 + 4) = v26;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v27, v18, "### Failed to handle data model update: %s");
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    v28 = *(v23 + 8);
  }

  else
  {
    v32 = *(v14 + 128);
    v31 = *(v14 + 136);
    v33 = *(v14 + 120);
    v34 = *(v14 + 240);

    v35 = *(v32 + 8);
  }

  v29 = OUTLINED_FUNCTION_46();
  v30(v29);
  v36 = *(v14 + 176);
  v37 = *(v14 + 208);
  OUTLINED_FUNCTION_1_9();
  v52 = v38;
  v39 = *(v36 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_76_0(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_18_0(v41);
  OUTLINED_FUNCTION_128();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, a11, a12, a13, a14);
}

uint64_t sub_254337004()
{
  OUTLINED_FUNCTION_31();
  sub_2542D6354();
  swift_allocError();
  *v0 = xmmword_2543ACB50;
  swift_willThrow();
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254337090()
{
  OUTLINED_FUNCTION_28();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = *v0;
  v5 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[7] = *(v6 + 88);
  OUTLINED_FUNCTION_27_0();
  v1[8] = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[9] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[10] = v9;
  v1[11] = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_146();
  v11 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_25433718C()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[5];
  v1 = v0[6];
  sub_25434E51C();
  v0[13] = v3;
  v4 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2543371EC()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 104);
  v7 = *(v3 + 16);
  v8 = *(v0 + 32);
  *(v0 + 112) = v7;
  *(v0 + 120) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30 = *(v0 + 56);
  v7(v1, v8, v4);
  *(v0 + 160) = *(v3 + 80);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_52_0(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  *(v18 + 32) = v6;
  *(v0 + 128) = *(v3 + 32);
  *(v0 + 136) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  OUTLINED_FUNCTION_43_1();
  v19();
  swift_retain_n();
  v20 = OUTLINED_FUNCTION_65();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_43_1();
  sub_25433DEA0(v22, v23, v24);
  *(v0 + 144) = sub_2543A2118();

  OUTLINED_FUNCTION_128();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_254337384()
{
  OUTLINED_FUNCTION_28();
  v2 = v0[5];
  v1 = v0[6];
  v0[19] = sub_25434E77C();
  v3 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2543373E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v50 = *(v14 + 152);
  v16 = *(v14 + 128);
  v15 = *(v14 + 136);
  v18 = *(v14 + 112);
  v17 = *(v14 + 120);
  v20 = *(v14 + 88);
  v19 = *(v14 + 96);
  v21 = *(v14 + 72);
  v22 = *(v14 + 48);
  v23 = *(v14 + 32);
  v24 = (*(v14 + 160) + 40) & ~*(v14 + 160);
  *(v14 + 24) = v50;
  v49 = *(v14 + 56);
  v18(v19, v23, v21);
  v25 = swift_allocObject();
  v34 = OUTLINED_FUNCTION_52_0(v25, v26, v27, v28, v29, v30, v31, v32, v33);
  *(v35 + 32) = v22;
  v16(v35 + v24, v19, v21, v34);

  v36 = OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  sub_25433DEA0(&qword_27F5DFBF0, &qword_27F5DFBE8, &qword_2543A7D60);
  sub_2543A2148();

  v38 = *(v14 + 8);
  v39 = *(v14 + 144);
  OUTLINED_FUNCTION_128();

  return v43(v40, v41, v42, v43, v44, v45, v46, v47, v49, *(&v49 + 1), v50, a12, a13, a14);
}

uint64_t sub_254337538(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *MEMORY[0x277D85000];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = *((v3 & v2) + 0x50);
  v10[5] = *((v3 & v2) + 0x58);
  v10[6] = v9;
  sub_2542CD000();
}

uint64_t sub_25433767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = sub_2543A1FB8();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25433773C, 0, 0);
}

uint64_t sub_25433773C()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    v6 = v0[9];
    OUTLINED_FUNCTION_50_0();

    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_2543377E4()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 80);
  sub_2543332EC(*(v0 + 72));

  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254337848()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 72);
  v2 = sub_2543A1F98();
  v3 = sub_2543A3008();
  if (OUTLINED_FUNCTION_108(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_99_0(&dword_2542B7000, v4, v5, "Updates completed");
    OUTLINED_FUNCTION_82();
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);

  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_46();
  v11(v10);
  v12 = *(v0 + 72);
  **(v0 + 40) = *(v0 + 80) == 0;

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_254337920(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v25 = a1;
  v26 = a3;
  v3 = *a2;
  v4 = *MEMORY[0x277D85000];
  v28 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  v27 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CarrySettings.DataModel(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  sub_2542ED4C0(v25, v13);
  (*(v6 + 16))(v9, v26, AssociatedTypeWitness);
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = (v12 + v20 + *(v6 + 80)) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v28;
  *(v22 + 4) = v27;
  *(v22 + 5) = v23;
  *(v22 + 6) = v19;
  sub_2542ED378(v13, &v22[v20]);
  (*(v6 + 32))(&v22[v21], v9, AssociatedTypeWitness);
  sub_2542CD000();
}

uint64_t sub_254337BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_254337C1C, 0, 0);
}

uint64_t sub_254337C1C()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_254337CF4;
    v4 = v0[8];
    v5 = OUTLINED_FUNCTION_29_0(v0[7]);

    return sub_254337E0C(v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_27();

    return v8();
  }
}

uint64_t sub_254337CF4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254337E0C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v3[12] = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v3[13] = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[14] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v3[15] = v7;
  v8 = *(v7 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v9 = type metadata accessor for CarrySettings.DataModel(0);
  v3[19] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v11 = sub_2543A1FB8();
  v3[22] = v11;
  v12 = *(v11 - 8);
  v3[23] = v12;
  v13 = *(v12 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254337FD0, v2, 0);
}

uint64_t sub_254337FD0()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  sub_2543332EC(v1);
  sub_2542ED4C0(v8, v2);
  v9 = v7;
  v10 = *(v5 + 16);
  v10(v3, v9, v4);
  v11 = v1;
  v12 = sub_2543A1F98();
  sub_2543A3008();
  OUTLINED_FUNCTION_72_0();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[21];
  v54 = v0[22];
  if (v14)
  {
    log = v12;
    v19 = v0[19];
    v18 = v0[20];
    v49 = v0[18];
    v50 = v11;
    v20 = v0[17];
    v53 = v10;
    v22 = v0[14];
    v21 = v0[15];
    v52 = v0[24];
    v23 = swift_slowAlloc();
    swift_slowAlloc();
    *v23 = 136315394;
    v24 = OUTLINED_FUNCTION_5_10();
    sub_2542ED4C0(v24, v25);
    sub_2543A2888();
    sub_2542ED524(v17);
    v26 = sub_2542D5198();

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v53(v20, v49, v22);
    sub_2543A2888();
    v27 = *(v21 + 8);
    v28 = v22;
    v10 = v53;
    v27(v49, v28);
    OUTLINED_FUNCTION_60_0();
    v29 = sub_2542D5198();

    *(v23 + 14) = v29;
    _os_log_impl(&dword_2542B7000, log, v50, "Received model %s for target %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    (*(v15 + 8))(v52, v54);
  }

  else
  {
    v30 = v0[18];
    v31 = v0[14];
    v32 = v0[15];

    v27 = *(v32 + 8);
    v33 = OUTLINED_FUNCTION_60_0();
    (v27)(v33);
    sub_2542ED524(v17);
    (*(v15 + 8))(v16, v54);
  }

  v34 = v0[13];
  v36 = v0[11];
  v35 = v0[12];
  v10(v0[16], v0[10], v0[14]);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_59_2();
  v37 = _s16NetworkingClientC15DeviceCacheItemVMa();
  OUTLINED_FUNCTION_51_1();
  v38 = *(swift_getAssociatedConformanceWitness() + 8);
  OUTLINED_FUNCTION_38_1();
  sub_2543A27B8();
  v39 = sub_2543A27C8();
  v41 = v40;
  if (!__swift_getEnumTagSinglePayload(v40, 1, v37))
  {
    sub_2542ED9E4(v0[9], v41);
  }

  v39(v0 + 2, 0);
  v43 = v0[15];
  v42 = v0[16];
  v44 = v0[14];
  swift_endAccess();
  v45 = OUTLINED_FUNCTION_60_0();
  (v27)(v45);
  v46 = swift_task_alloc();
  v0[25] = v46;
  *v46 = v0;
  v46[1] = sub_254338398;
  v47 = v0[11];

  return sub_254338FCC();
}

uint64_t sub_254338398()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[21];
  v5 = v1[20];
  v6 = v1[18];
  v7 = v1[17];
  v8 = v1[16];
  v9 = *v0;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  OUTLINED_FUNCTION_27();

  return v11();
}

uint64_t sub_254338530(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *MEMORY[0x277D85000];
  v26 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  v25 = *((v6 & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, a3, AssociatedTypeWitness);
  v20 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v26;
  *(v21 + 4) = v25;
  *(v21 + 5) = v22;
  *(v21 + 6) = v19;
  (*(v8 + 32))(&v21[v20], v11, AssociatedTypeWitness);
  v23 = &v21[(v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = v16;
  v23[1] = v17;
  sub_2542D61B4(v16, v17);
  sub_25434DFA4();
}

uint64_t sub_254338794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v19;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *(a8 - 8);
  v8[11] = v9;
  v10 = *(v9 + 64) + 15;
  v8[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[13] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v8[14] = v12;
  v13 = *(v12 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v14 = sub_2543A1FB8();
  v8[17] = v14;
  v15 = *(v14 - 8);
  v8[18] = v15;
  v16 = *(v15 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25433893C, 0, 0);
}

uint64_t sub_25433893C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[5];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    v6 = v0[19];
    v7 = v0[15];
    v8 = v0[16];
    v9 = v0[12];

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_254338A0C()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 160);
  sub_2543332EC(*(v0 + 152));
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254338A68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v25 = *(v24 + 152);
  v26 = *(*(v24 + 112) + 16);
  (v26)(*(v24 + 128), *(v24 + 48), *(v24 + 104));
  v27 = sub_2543A1F98();
  sub_2543A3008();
  OUTLINED_FUNCTION_72_0();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v24 + 144);
  v31 = *(v24 + 152);
  v32 = *(v24 + 128);
  v33 = *(v24 + 136);
  if (v29)
  {
    v46 = *(v24 + 136);
    v34 = *(v24 + 112);
    v35 = *(v24 + 120);
    loga = v27;
    v36 = *(v24 + 104);
    OUTLINED_FUNCTION_129();
    v47 = OUTLINED_FUNCTION_51_2();
    v37 = OUTLINED_FUNCTION_89_1(4.8149e-34);
    v26(v37);
    sub_2543A2888();
    (*(v34 + 8))(v32, v36);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_103_1();
    *(v31 + 4) = v32;
    _os_log_impl(&dword_2542B7000, loga, v25, "Broadcasting to %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_3_1();

    (*(v30 + 8))(v31, v46);
  }

  else
  {
    v38 = *(v24 + 104);
    v39 = *(v24 + 112);

    (*(v39 + 8))(v32, v38);
    (*(v30 + 8))(v31, v33);
  }

  *(v24 + 168) = *((*MEMORY[0x277D85000] & **(v24 + 160)) + 0x88);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_254338C34()
{
  OUTLINED_FUNCTION_31();
  v12 = v0[10];
  (*(v0[11] + 16))(v0[12], v0[20] + v0[21], v0[9]);
  v1 = *(v12 + 72);
  v11 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_254338D64;
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[6];
  v9 = OUTLINED_FUNCTION_29_0(v0[7]);

  return v11(v9);
}

uint64_t sub_254338D64()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[12];
  v7 = v4[11];
  v8 = v4[9];
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  *(v11 + 184) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_46();
  v14(v13);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_254338EB8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[20];

  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[12];

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_254338F40()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];

  OUTLINED_FUNCTION_27();
  v7 = v0[23];

  return v6();
}

uint64_t sub_254338FCC()
{
  OUTLINED_FUNCTION_28();
  v1[3] = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[4] = v4;
  v5 = sub_2543A1FB8();
  v1[5] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[6] = v6;
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_146();
  v9 = swift_task_alloc();
  v1[8] = v9;
  *v9 = v1;
  v9[1] = sub_2543390D8;

  return sub_2543393E4();
}

uint64_t sub_2543390D8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v2 = v1;
  v4 = *(v3 + 64);
  v5 = *(v3 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v9 + 72) = v8;

  v10 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2543391D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_94();
  v18 = v16[9];
  v19 = v16[3];
  sub_2543332EC(v16[7]);
  sub_2543A2768();
  v20 = sub_2543A1F98();
  v21 = sub_2543A3008();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v16[9];
  v24 = v16[6];
  v25 = v16[5];
  if (v22)
  {
    a12 = v16[7];
    v26 = v16[4];
    OUTLINED_FUNCTION_129();
    a10 = OUTLINED_FUNCTION_51_2();
    a13 = a10;
    *v17 = 136315138;
    v28 = *(v26 + 80);
    v27 = *(v26 + 88);
    swift_getAssociatedTypeWitness();
    a11 = v25;
    v29 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    OUTLINED_FUNCTION_58_0();
    v30 = type metadata accessor for CarrySettings.MessageableDevice();
    MEMORY[0x259C09530](v23, v30);

    OUTLINED_FUNCTION_46();
    v31 = sub_2542D5198();

    *(v17 + 4) = v31;
    _os_log_impl(&dword_2542B7000, v20, v21, "Publishing update %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_3_1();

    (*(v24 + 8))(a12, v25);
  }

  else
  {
    v32 = v16[9];

    v33 = *(v24 + 8);
    v34 = OUTLINED_FUNCTION_46();
    v36(v34, v35);
  }

  v37 = v16[7];
  v38 = *(v16[3] + qword_27F5F8890);
  v16[2] = v16[9];

  sub_2543A2048();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2543393E4()
{
  OUTLINED_FUNCTION_28();
  v1[7] = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[8] = v4;
  v5 = sub_2543A1FB8();
  v1[9] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_146();
  v9 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2543394BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v51 = v14[11];
  v16 = v14[7];
  v15 = v14[8];
  swift_beginAccess();
  v17 = *(v16 + 112);
  v19 = *(v15 + 80);
  v18 = *(v15 + 88);
  swift_getAssociatedTypeWitness();
  _s16NetworkingClientC15DeviceCacheItemVMa();
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v21 = sub_2543A2798();
  swift_endAccess();
  v14[5] = v21;
  v22 = swift_task_alloc();
  *v22 = v19;
  v22[1] = v18;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_58_0();
  v24 = sub_2543A2778();
  v25 = *(v20 + 8);
  OUTLINED_FUNCTION_58_0();
  v26 = type metadata accessor for CarrySettings.MessageableDevice();
  WitnessTable = swift_getWitnessTable();
  v29 = sub_254369100(sub_25433D320, KeyPath, v24, v26, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v28);

  v14[6] = v29;
  sub_2543A2B38();
  swift_getWitnessTable();
  v30 = sub_2543A2B48();
  sub_2543332EC(v51);
  sub_2543A2768();
  v31 = sub_2543A1F98();
  v32 = sub_2543A3008();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v14[11];
  v36 = v14[9];
  v35 = v14[10];
  if (v33)
  {
    v37 = OUTLINED_FUNCTION_129();
    v51 = v34;
    a10 = OUTLINED_FUNCTION_87();
    *v37 = 136315138;
    MEMORY[0x259C09530](v30, v26);

    v38 = sub_2542D5198();

    *(v37 + 4) = v38;
    OUTLINED_FUNCTION_65_0(&dword_2542B7000, v39, v32, "Current devices: %s");
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();
  }

  else
  {
  }

  (*(v35 + 8))(v34, v36);
  v40 = v14[11];

  v41 = v14[1];
  OUTLINED_FUNCTION_128();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, v51, a10, a11, a12, a13, a14);
}

uint64_t sub_2543397DC()
{
  OUTLINED_FUNCTION_31();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[7] = *(v5 + 80);
  OUTLINED_FUNCTION_27_0();
  v1[8] = *(v6 + 88);
  v7 = _s16NetworkingClientC15DeviceCacheItemVMa();
  v1[9] = v7;
  OUTLINED_FUNCTION_4_7();
  v8 = sub_2543A30C8();
  v1[10] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_146();
  v12 = *(v7 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_82_0();
  v1[18] = swift_task_alloc();
  v18 = sub_2543A1FB8();
  v1[19] = v18;
  OUTLINED_FUNCTION_8(v18);
  v1[20] = v19;
  v21 = *(v20 + 64);
  v1[21] = OUTLINED_FUNCTION_146();
  v22 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_254339C88()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[18];
  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[12];
  v8 = *v0;
  OUTLINED_FUNCTION_7();
  *v9 = v8;

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

void CarrySettings.NetworkingClient.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  CarrySettings.NetworkingClient.init()();
}

void CarrySettings.NetworkingClient.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

char *CarrySettings.NetworkingClient.deinit()
{
  v1 = *v0;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000];
  v4 = *(v0 + 14);

  sub_2542EDDC0(&v0[qword_27F5E1140], qword_27F5E1150, &qword_2543ACBC0);
  v5 = *&v0[qword_27F5F8890];

  v6 = *&v0[qword_27F5E1148];

  v7 = *v0;
  v8 = *v2;
  OUTLINED_FUNCTION_27_0();
  (*(*(*((v3 & v1) + 0x50) - 8) + 8))(&v0[*(v9 + 136)]);
  v10 = *v0;
  v11 = *v2;
  OUTLINED_FUNCTION_27_0();
  v13 = *&v0[*(v12 + 144) + 8];

  v14 = *v0;
  v15 = *v2;
  OUTLINED_FUNCTION_27_0();
  v17 = *&v0[*(v16 + 152)];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CarrySettings.NetworkingClient.__deallocating_deinit()
{
  CarrySettings.NetworkingClient.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t CarrySettings.NetworkingClient.installProfile(withData:withContext:on:)()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  *(v1 + 72) = v4;
  *(v1 + 80) = v0;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  v7 = *v0;
  v8 = *MEMORY[0x277D85000];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v9);
  v11 = *(v10 + 64) + 15;
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = *((v8 & v7) + 0x58);
  *(v1 + 112) = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 120) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  *(v1 + 128) = v13;
  *(v1 + 136) = *(v14 + 64);
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 176) = *v3;
  *(v1 + 160) = *(v3 + 8);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_25433A15C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_5_10();
  v3 = sub_2543A2A48();
  v70 = v3;
  OUTLINED_FUNCTION_5_10();
  if (v3 != sub_2543A2AC8())
  {
    v10 = *(v0 + 128);
    v59 = (v10 + 16);
    v58 = *(v0 + 136);
    v60 = v10;
    v61 = *(v0 + 168);
    do
    {
      v11 = *(v0 + 120);
      v12 = *(v0 + 72);
      OUTLINED_FUNCTION_5_10();
      v13 = sub_2543A2AA8();
      sub_2543A2A68();
      if (v13)
      {
        (*(v10 + 16))(*(v0 + 152), *(v0 + 72) + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v3, *(v0 + 120));
      }

      else
      {
        v53 = *(v0 + 120);
        v54 = *(v0 + 72);
        result = sub_2543A32B8();
        if (v58 != 8)
        {
          __break(1u);
          return result;
        }

        v55 = result;
        v56 = *(v0 + 152);
        v57 = *(v0 + 120);
        *(v0 + 48) = v55;
        (*v59)(v56, v0 + 48, v57);
        swift_unknownObjectRelease();
      }

      v14 = v10;
      v68 = *(v0 + 168);
      v66 = *(v0 + 160);
      v64 = *(v0 + 176);
      v15 = *(v0 + 144);
      v16 = *(v0 + 152);
      v17 = *(v0 + 120);
      v63 = *(v0 + 96);
      v69 = *(v0 + 88);
      v18 = *(v0 + 72);
      v19 = *(v0 + 80);
      v67 = *(v0 + 64);
      v65 = *(v0 + 56);
      v62 = *(v0 + 104);
      sub_2543A2B28();
      v20 = sub_2543A2BB8();
      OUTLINED_FUNCTION_73_0();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      OUTLINED_FUNCTION_67();
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = *(v14 + 32);
      v25(v15, v16, v17);
      v26 = (*(v14 + 80) + 80) & ~*(v14 + 80);
      v27 = swift_allocObject();
      v27[1].i64[0] = 0;
      v27[1].i64[1] = 0;
      v27[2] = vextq_s8(v62, v62, 8uLL);
      v27[3].i64[0] = v24;
      v27[3].i8[8] = v64;
      v27[4].i64[0] = v66;
      v27[4].i64[1] = v68;
      v25(&v27->i8[v26], v15, v17);
      v28 = (v27->i64 + ((v58 + 7 + v26) & 0xFFFFFFFFFFFFFFF8));
      *v28 = v65;
      v28[1] = v67;
      sub_2542EDD5C(v63, v69, &qword_27F5DF328, &qword_2543A68B0);
      LODWORD(v15) = __swift_getEnumTagSinglePayload(v69, 1, v20);
      swift_retain_n();
      sub_2543A2768();
      sub_2542D61B4(v65, v67);
      if (v15 == 1)
      {
        v29 = *(v0 + 88);
        OUTLINED_FUNCTION_43_1();
        sub_2542EDDC0(v30, v31, v32);
      }

      else
      {
        sub_2543A2BA8();
        OUTLINED_FUNCTION_19_0(v20);
        v34 = *(v33 + 8);
        v35 = OUTLINED_FUNCTION_79_0();
        v36(v35);
      }

      v38 = v27[1].i64[0];
      v37 = v27[1].i64[1];
      swift_unknownObjectRetain();

      v39 = *(v0 + 96);
      if (v38)
      {
        swift_getObjectType();
        v40 = sub_2543A2B58();
        v42 = v41;

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_43_1();
        sub_2542EDDC0(v43, v44, v45);
      }

      else
      {
        v46 = *(v0 + 96);
        OUTLINED_FUNCTION_43_1();
        sub_2542EDDC0(v47, v48, v49);

        v40 = 0;
        v42 = 0;
      }

      v50 = swift_allocObject();
      *(v50 + 16) = &unk_2543ACBE0;
      *(v50 + 24) = v27;
      if (v42 | v40)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v40;
        *(v0 + 40) = v42;
      }

      v10 = v60;
      v51 = *(v0 + 120);
      v52 = *(v0 + 72);
      swift_task_create();

      v3 = v70;
    }

    while (v70 != sub_2543A2AC8());
  }

  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_25433A5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v21;
  *(v8 + 176) = v22;
  *(v8 + 152) = v19;
  *(v8 + 160) = v20;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 336) = a5;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  v9 = *(v21 - 8);
  *(v8 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 200) = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  *(v8 + 208) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v14 = sub_2543A1FB8();
  *(v8 + 240) = v14;
  v15 = *(v14 - 8);
  *(v8 + 248) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25433A7B4, 0, 0);
}

uint64_t sub_25433A7B4()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_56_1();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_196();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_25433A888()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 272);
  sub_2543332EC(*(v0 + 264));
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_25433A8E4()
{
  v1 = v0;
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v5 + 16);
  *(v0 + 280) = v8;
  *(v0 + 288) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6, v4);
  sub_2543A2768();
  v9 = sub_2543A1F98();
  v10 = sub_2543A3008();

  if (os_log_type_enabled(v9, v10))
  {
    log = v9;
    v35 = *(v0 + 248);
    v36 = *(v0 + 240);
    v37 = *(v0 + 264);
    v31 = *(v0 + 224);
    v32 = *(v0 + 232);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v30 = *(v0 + 136);
    v33 = v10;
    v13 = *(v0 + 128);
    v14 = *(v0 + 336);
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136315394;
    *(v0 + 88) = v14;
    *(v0 + 96) = v13;
    *(v0 + 104) = v30;
    sub_2543A2768();
    sub_2543A2888();
    v16 = sub_2542D5198();

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    v8(v31, v32, v12);
    sub_2543A2888();
    v17 = *(v11 + 8);
    v18 = OUTLINED_FUNCTION_79_0();
    v17(v18);
    v19 = sub_2542D5198();

    *(v15 + 14) = v19;
    _os_log_impl(&dword_2542B7000, log, v33, "Sending profile (%s) to %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_3_1();

    v20 = *(v35 + 8);
    v20(v37, v36);
  }

  else
  {
    v21 = *(v0 + 264);
    v22 = v1[30];
    v23 = v1[31];
    v24 = v1[29];
    v26 = v1[25];
    v25 = v1[26];

    v17 = *(v25 + 8);
    v27 = OUTLINED_FUNCTION_92();
    v17(v27);
    v20 = *(v23 + 8);
    v20(v21, v22);
  }

  v1[37] = v20;
  v1[38] = v17;
  v28 = v1[34];
  v1[39] = *((*MEMORY[0x277D85000] & *v28) + 0x88);

  return MEMORY[0x2822009F8](sub_25433ABB8, v28, 0);
}

uint64_t sub_25433ABB8()
{
  OUTLINED_FUNCTION_40();
  v15 = *(v0 + 176);
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 336);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 272) + *(v0 + 312), *(v0 + 168));
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v4 = *(v15 + 80);
  sub_2543A2768();
  v14 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 320) = v6;
  *v6 = v0;
  v6[1] = sub_25433AD20;
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  v12 = OUTLINED_FUNCTION_29_0(*(v0 + 152));

  return v14(v12);
}

uint64_t sub_25433AD20()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = v5[40];
  v7 = v5[24];
  v8 = v5[23];
  v9 = v5[21];
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  v3[41] = v0;

  sub_25433D30C(v3[5], v3[6], v3[7]);
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_76();
  v14(v13);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_25433AE80()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 272);

  OUTLINED_FUNCTION_56_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_25433AF20()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 272);
  sub_2543332EC(*(v0 + 256));
  v2 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_25433AF80()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = *(v0 + 136);
  (*(v0 + 280))(*(v0 + 216), *(v0 + 144), *(v0 + 200));
  sub_2543A2768();
  v5 = v1;
  v6 = sub_2543A1F98();
  v7 = sub_2543A2FF8();

  if (os_log_type_enabled(v6, v7))
  {
    v36 = *(v0 + 304);
    v37 = *(v0 + 328);
    v33 = *(v0 + 280);
    v34 = *(v0 + 288);
    v42 = *(v0 + 256);
    v43 = *(v0 + 296);
    v39 = *(v0 + 272);
    v40 = *(v0 + 248);
    v41 = *(v0 + 240);
    v38 = v7;
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 200);
    v35 = *(v0 + 208);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 336);
    v14 = OUTLINED_FUNCTION_87();
    swift_slowAlloc();
    *v14 = 136315650;
    *(v0 + 64) = v13;
    *(v0 + 72) = v12;
    *(v0 + 80) = v11;
    sub_2543A2768();
    sub_2543A2888();
    v15 = sub_2542D5198();

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    v33(v8, v9, v10);
    OUTLINED_FUNCTION_51_1();
    sub_2543A2888();
    v36(v9, v10);
    v16 = sub_2542D5198();

    *(v14 + 14) = v16;
    *(v14 + 22) = 2080;
    *(v0 + 112) = v37;
    v17 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2888();
    v18 = sub_2542D5198();

    *(v14 + 24) = v18;
    _os_log_impl(&dword_2542B7000, v6, v38, "### Error sending profile (%s) to %s: %s", v14, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    v19 = v41;
    v20 = v42;
  }

  else
  {
    v21 = *(v0 + 328);
    v22 = *(v0 + 304);
    v43 = *(v0 + 296);
    v23 = *(v0 + 272);
    v24 = v6;
    v25 = *(v0 + 248);
    v26 = *(v0 + 256);
    v27 = *(v0 + 240);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    v30 = *(v0 + 200);

    v22(v28, v30);
    v20 = OUTLINED_FUNCTION_92();
  }

  v43(v20, v19);
  OUTLINED_FUNCTION_56_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_130();

  __asm { BRAA            X1, X16 }
}

uint64_t CarrySettings.NetworkingClient.prewarm()()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v1[3] = *MEMORY[0x277D85000] & *v0;
  v4 = *((v3 & v2) + 0x50);
  v1[4] = v4;
  v5 = *(v4 - 8);
  v1[5] = v5;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_146();
  v7 = sub_2543A1FB8();
  v1[7] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_146();
  v11 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_25433B3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v15 = v14[2];
  sub_2543332EC(v14[9]);
  v16 = sub_2543A1F98();
  v17 = sub_2543A3008();
  if (OUTLINED_FUNCTION_108(v17))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_99_0(&dword_2542B7000, v18, v19, "Prewarm");
    OUTLINED_FUNCTION_82();
  }

  v21 = v14[8];
  v20 = v14[9];
  v23 = v14[6];
  v22 = v14[7];
  v24 = v14[4];
  v25 = v14[5];
  v27 = v14[2];
  v26 = v14[3];

  v28 = *(v21 + 8);
  v29 = OUTLINED_FUNCTION_46();
  v30(v29);
  (*(v25 + 16))(v23, &v27[*((*MEMORY[0x277D85000] & *v27) + 0x88)], v24);
  v43 = (*(v26 + 88) + 64);
  v44 = *v43 + **v43;
  v31 = (*v43)[1];
  v32 = swift_task_alloc();
  v14[10] = v32;
  *v32 = v14;
  v32[1] = sub_25433B5C8;
  v33 = v14[6];
  OUTLINED_FUNCTION_29_0(v14[4]);
  OUTLINED_FUNCTION_128();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, a12, a13, a14);
}

uint64_t sub_25433B5C8()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v6 = v5[10];
  v7 = v5[6];
  v8 = v5[5];
  v9 = v5[4];
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;
  v3[11] = v0;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_76();
  v14(v13);
  if (v0)
  {
    v15 = v3[2];
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_196();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }

  else
  {
    v20 = v3[9];
    v21 = v3[6];

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_196();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_25433B750()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[9];
  v2 = v0[6];

  OUTLINED_FUNCTION_27();
  v4 = v0[11];

  return v3();
}

uint64_t CarrySettings.NetworkingClient.updateModel(for:)()
{
  OUTLINED_FUNCTION_31();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_27_0();
  v1[7] = *(v5 + 80);
  OUTLINED_FUNCTION_27_0();
  v1[8] = *(v6 + 88);
  OUTLINED_FUNCTION_45_0();
  v7 = _s16NetworkingClientC15DeviceCacheItemVMa();
  v1[9] = v7;
  OUTLINED_FUNCTION_3(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_4_7();
  v11 = sub_2543A30C8();
  v1[12] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_146();
  v15 = sub_2543A1FB8();
  v1[15] = v15;
  OUTLINED_FUNCTION_8(v15);
  v1[16] = v16;
  v18 = *(v17 + 64);
  v1[17] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[18] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v1[19] = v20;
  v22 = *(v21 + 64);
  v1[20] = OUTLINED_FUNCTION_82_0();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v23 = type metadata accessor for CarrySettings.DataModel(0);
  v1[23] = v23;
  OUTLINED_FUNCTION_110(v23);
  v25 = *(v24 + 64);
  v1[24] = OUTLINED_FUNCTION_82_0();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_25433B9F0()
{
  v1 = v0[26];
  v2 = v0[22];
  v82 = v0[21];
  v85 = v0[25];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = OUTLINED_FUNCTION_51_1();
  sub_2542ED4C0(v10, v11);
  v12 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v13 = type metadata accessor for CarrySettings.MessageableDevice();
  v14 = *(v3 + 16);
  v14(v2, v9 + *(v13 + 36), v4);
  sub_2543332EC(v5);
  v14(v82, v2, v4);
  sub_2542ED4C0(v1, v85);
  v15 = sub_2543A1F98();
  v16 = sub_2543A3008();
  v17 = OUTLINED_FUNCTION_108(v16);
  v18 = v0[25];
  v81 = v14;
  if (v17)
  {
    v74 = v0[24];
    v75 = v0[23];
    v19 = v0[20];
    v20 = v0[21];
    v77 = v6;
    v21 = v0[18];
    v22 = v0[19];
    v79 = v0[16];
    v83 = v0[15];
    v86 = v0[17];
    v23 = swift_slowAlloc();
    swift_slowAlloc();
    *v23 = 136315394;
    v24 = OUTLINED_FUNCTION_76();
    (v14)(v24);
    OUTLINED_FUNCTION_5_10();
    sub_2543A2888();
    v25 = *(v22 + 8);
    v25(v20, v21);
    v26 = sub_2542D5198();

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    sub_2542ED4C0(v18, v74);
    sub_2543A2888();
    sub_2542ED524(v18);
    OUTLINED_FUNCTION_46();
    v27 = sub_2542D5198();

    *(v23 + 14) = v27;
    _os_log_impl(&dword_2542B7000, v15, v77, "Updating %s with %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_82();

    (*(v79 + 8))(v86, v83);
  }

  else
  {
    v28 = v0[21];
    v29 = v0[18];
    v30 = v0[19];
    v32 = v0[16];
    v31 = v0[17];
    v33 = v0[15];

    sub_2542ED524(v18);
    v34 = *(v30 + 8);
    v35 = OUTLINED_FUNCTION_46();
    v34(v35);
    v36 = *(v32 + 8);
    v37 = OUTLINED_FUNCTION_92();
    v38(v37);
    v25 = v34;
  }

  v0[27] = v25;
  v39 = v0[22];
  v40 = v0[18];
  v41 = v0[14];
  v42 = v0[9];
  v43 = v0[6];
  swift_beginAccess();
  v44 = *(v43 + 112);
  sub_2543A27D8();
  if (__swift_getEnumTagSinglePayload(v41, 1, v42))
  {
    v45 = v0[26];
    v78 = v0[25];
    v80 = v0[24];
    v76 = v25;
    v46 = v0[22];
    v48 = v0[19];
    v47 = v0[20];
    v49 = v0[18];
    v84 = v0[21];
    v87 = v0[17];
    v88 = v0[11];
    (*(v0[13] + 8))(v0[14], v0[12]);
    swift_endAccess();
    v81(v47, v46, v49);
    OUTLINED_FUNCTION_65();
    v50 = sub_2543A2888();
    v52 = v51;
    sub_2542D6354();
    swift_allocError();
    *v53 = v50;
    v53[1] = v52;
    swift_willThrow();
    v76(v46, v49);
    sub_2542ED524(v45);

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_130();

    __asm { BRAA            X1, X16 }
  }

  v57 = v0[13];
  v56 = v0[14];
  v59 = v0[11];
  v58 = v0[12];
  v60 = v0[9];
  v61 = v0[10];
  v62 = OUTLINED_FUNCTION_77_1();
  v63(v62);
  v64 = *(v57 + 8);
  v65 = OUTLINED_FUNCTION_60_0();
  v66(v65);
  swift_endAccess();
  v0[28] = *(v59 + *(v60 + 36));
  v67 = *(v61 + 8);

  v68 = OUTLINED_FUNCTION_76();
  v67(v68);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_130();

  return MEMORY[0x2822009F8](v69, v70, v71);
}

uint64_t sub_25433BEDC()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[28];
  v2 = v0[6];
  sub_25434EF80(v0[26]);
  v3 = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25433BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_46_0();
  v16 = v14[27];
  v15 = v14[28];
  v17 = v14[25];
  v18 = v14[26];
  v19 = v14[24];
  v21 = v14[21];
  v20 = v14[22];
  v23 = v14[19];
  v22 = v14[20];
  v24 = v14[18];
  v34 = v14[17];
  v35 = v14[14];
  v36 = v14[11];

  v16(v20, v24);
  sub_2542ED524(v18);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, a12, a13, a14);
}

int *sub_25433C02C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v8 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v9 = type metadata accessor for CarrySettings.MessageableDevice();
  OUTLINED_FUNCTION_19_0(v9);
  v11 = *(v10 + 32);
  v12 = OUTLINED_FUNCTION_61_0();
  v13(v12);
  result = _s16NetworkingClientC15DeviceCacheItemVMa();
  *(a4 + result[9]) = a1;
  *(a4 + result[10]) = a2;
  *(a4 + result[11]) = a3;
  return result;
}

uint64_t sub_25433C130()
{
  OUTLINED_FUNCTION_31();
  v7 = (v0 + *v0);
  v1 = v0[1];
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_70_1(v3);

  return v7(v5);
}

uint64_t sub_25433C214()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_25433C2F4()
{
  v3 = v0[4];
  v2 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3(AssociatedTypeWitness);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_100_0();
  v9 = v0[6];

  v10 = v0[9];

  v11 = OUTLINED_FUNCTION_67_2();
  v12(v11);
  sub_2542D7D40(*(v0 + v1), *(v0 + v1 + 8));

  return MEMORY[0x2821FE8E8](v0, v1 + 16, v6 | 7);
}

uint64_t sub_25433C3D0()
{
  OUTLINED_FUNCTION_94();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v6 = *(v0 + 24);
  v7 = *(v0 + 48);
  v27 = *(v0 + 64);
  v25 = *(v0 + 16);
  v26 = *(v0 + 72);
  v8 = (v0 + ((*(v5 + 64) + ((*(v4 + 80) + 80) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v8;
  v9 = v8[1];
  v11 = *(v0 + 56);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_71_1(v12);
  *v13 = v14;
  v13[1] = sub_2542DB160;
  OUTLINED_FUNCTION_48();

  return sub_25433A5EC(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_25433C524()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25433C55C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
}

void sub_25433C594(uint64_t a1)
{
  sub_25433C6E4();
  if (v3 <= 0x3F)
  {
    v7 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_25433C6E4()
{
  if (!qword_27F5E11D8[0])
  {
    sub_2543A1FB8();
    v0 = sub_2543A30C8();
    if (!v1)
    {
      atomic_store(v0, qword_27F5E11D8);
    }
  }
}

uint64_t sub_25433C73C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v3 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  result = type metadata accessor for CarrySettings.MessageableDevice();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for CarrySettings.SyncManager();
    if (v6 <= 0x3F)
    {
      result = sub_2543A2038();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25433C83C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v54 = *(v49 - 8);
  v3 = *(v54 + 84);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  v52 = *(v47 - 8);
  v48 = *(v52 + 84);
  if (v48 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(v52 + 84);
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v5 = *(v45 - 8);
  v46 = *(v5 + 84);
  if (v46 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  v7 = *(v43 - 8);
  v8 = *(v7 + 84);
  v44 = v8;
  if (v8 <= v6)
  {
    v8 = v6;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  v50 = v8;
  v9 = v8 - 1;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 84);
  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v52 + 80);
  v18 = *(v52 + 64);
  v19 = *(v5 + 80);
  v20 = *(v5 + 64);
  v21 = *(v7 + 80);
  v22 = *(v7 + 64);
  v23 = *(v13 + 80);
  if (!a2)
  {
    return 0;
  }

  v24 = AssociatedTypeWitness;
  v25 = *(v54 + 64) + v17;
  v26 = v22 + 7;
  v27 = ((v22 + 7 + ((v20 + v21 + ((v18 + v19 + (v25 & ~v17)) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + v23 + 8;
  v28 = (v27 & ~v23) + *(*(AssociatedTypeWitness - 8) + 64);
  v29 = a1;
  if (v16 < a2)
  {
    v30 = ((((((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v30 & 0xFFFFFFF8) != 0)
    {
      v31 = 2;
    }

    else
    {
      v31 = a2 - v16 + 1;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    switch(v33)
    {
      case 1:
        v34 = *(a1 + v30);
        if (!*(a1 + v30))
        {
          break;
        }

        goto LABEL_35;
      case 2:
        v34 = *(a1 + v30);
        if (*(a1 + v30))
        {
          goto LABEL_35;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x25433CCFCLL);
      case 4:
        v34 = *(a1 + v30);
        if (!v34)
        {
          break;
        }

LABEL_35:
        v36 = v34 - 1;
        if ((v30 & 0xFFFFFFF8) != 0)
        {
          v36 = 0;
          v37 = *a1;
        }

        else
        {
          v37 = 0;
        }

        return v16 + (v37 | v36) + 1;
      default:
        break;
    }
  }

  if (v15 >= 0x7FFFFFFF)
  {
    if (v9 < v14)
    {

      return __swift_getEnumTagSinglePayload((a1 + v27) & ~v23, v14, v24);
    }

    v39 = v3;
    if (v3 == v50)
    {
      v40 = v49;
    }

    else
    {
      v29 = (a1 + v25) & ~v17;
      v39 = v48;
      if (v48 == v50)
      {
        v40 = v47;
      }

      else
      {
        v29 = (v29 + v18 + v19) & ~v19;
        v39 = v46;
        if (v46 == v50)
        {
          v40 = v45;
        }

        else
        {
          v29 = (v29 + v20 + v21) & ~v21;
          v39 = v44;
          if (v44 != v50)
          {
            v42 = *((v26 + v29) & 0xFFFFFFFFFFFFFFF8);
            if (v42 >= 0xFFFFFFFF)
            {
              LODWORD(v42) = -1;
            }

            EnumTagSinglePayload = v42 + 1;
            goto LABEL_57;
          }

          v40 = v43;
        }
      }
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, v39, v40);
LABEL_57:
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  v38 = *((a1 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v38 >= 0xFFFFFFFF)
  {
    LODWORD(v38) = -1;
  }

  return (v38 + 1);
}

void sub_25433CD10(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v54 = *(v49 - 8);
  v4 = *(v54 + 84);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  v53 = *(v47 - 8);
  v50 = v4;
  v48 = *(v53 + 84);
  if (v48 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(v53 + 84);
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v6 = *(v45 - 8);
  v46 = *(v6 + 84);
  if (v46 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  v8 = *(v43 - 8);
  v9 = *(v8 + 84);
  v44 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  v51 = v9;
  v10 = v9 - 1;
  v12 = *(a4 + 16);
  v11 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 84);
  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v53 + 80);
  v19 = *(v54 + 64) + v18;
  v20 = *(v53 + 64);
  v21 = *(v6 + 80);
  v22 = *(v6 + 64);
  v23 = *(v8 + 80);
  v24 = *(v8 + 64) + 7;
  v25 = ((v24 + ((v22 + v23 + ((v20 + v21 + (v19 & ~v18)) & ~v21)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v26 = *(v14 + 80);
  v27 = v25 + v26;
  v28 = ((v25 + v26) & ~v26) + *(*(AssociatedTypeWitness - 8) + 64);
  v29 = ((((((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 >= a3)
  {
    v32 = 0;
  }

  else
  {
    if (((((((v28 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v30 = a3 - v17 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((((((v28 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v33 = a2 - v17;
    }

    else
    {
      v33 = 1;
    }

    if (((((((v28 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v34 = ~v17 + a2;
      bzero(a1, v29);
      *a1 = v34;
    }

    switch(v32)
    {
      case 1:
        a1[v29] = v33;
        return;
      case 2:
        *&a1[v29] = v33;
        return;
      case 3:
        goto LABEL_88;
      case 4:
        *&a1[v29] = v33;
        return;
      default:
        return;
    }
  }

  v35 = ~v26;
  switch(v32)
  {
    case 1:
      a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    case 2:
      *&a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    case 3:
LABEL_88:
      __break(1u);
      JUMPOUT(0x25433D2D4);
    case 4:
      *&a1[v29] = 0;
      goto LABEL_44;
    default:
LABEL_44:
      if (!a2)
      {
        return;
      }

LABEL_45:
      if (v16 < 0x7FFFFFFF)
      {
        v39 = (&a1[v28 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v40 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v40 = a2 - 1;
        }

        goto LABEL_66;
      }

      if (v16 < a2)
      {
        if (v28 <= 3)
        {
          v36 = ~(-1 << (8 * v28));
        }

        else
        {
          v36 = -1;
        }

        if (v28)
        {
          v37 = v36 & (~v16 + a2);
          if (v28 <= 3)
          {
            v38 = v28;
          }

          else
          {
            v38 = 4;
          }

          bzero(a1, v28);
          switch(v38)
          {
            case 2:
              *a1 = v37;
              break;
            case 3:
              *a1 = v37;
              a1[2] = BYTE2(v37);
              break;
            case 4:
              goto LABEL_78;
            default:
              *a1 = v37;
              break;
          }
        }

        return;
      }

      if (v10 >= v15)
      {
        if (v10 < a2)
        {
          if (((v24 + ((v22 + v23 + ((v20 + v21 + (v19 & ~v18)) & ~v21)) & ~v23)) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          v37 = a2 - v51;
LABEL_77:
          bzero(a1, v25);
LABEL_78:
          *a1 = v37;
          return;
        }

        v37 = a2 - v51;
        if (a2 >= v51)
        {
          if (((v24 + ((v22 + v23 + ((v20 + v21 + (v19 & ~v18)) & ~v21)) & ~v23)) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          goto LABEL_77;
        }

        v42 = a2 + 1;
        v15 = v50;
        if (v50 == v51)
        {
          v41 = a1;
          AssociatedTypeWitness = v49;
          goto LABEL_62;
        }

        v41 = &a1[v19] & ~v18;
        v15 = v48;
        if (v48 == v51)
        {
          AssociatedTypeWitness = v47;
          goto LABEL_62;
        }

        v41 = (v41 + v20 + v21) & ~v21;
        v15 = v46;
        if (v46 == v51)
        {
          AssociatedTypeWitness = v45;
          goto LABEL_62;
        }

        v41 = (v41 + v22 + v23) & ~v23;
        v15 = v44;
        if (v44 == v51)
        {
          AssociatedTypeWitness = v43;
          goto LABEL_62;
        }

        v39 = ((v24 + v41) & 0xFFFFFFFFFFFFFFF8);
        if ((v42 & 0x80000000) != 0)
        {
          v40 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v40 = a2;
        }

LABEL_66:
        *v39 = v40;
        return;
      }

      v41 = &a1[v27] & v35;
      v42 = a2;
LABEL_62:

      __swift_storeEnumTagSinglePayload(v41, v42, v15, AssociatedTypeWitness);
      return;
  }
}

uint64_t sub_25433D30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_25433D358()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_59_0();

  return sub_254337920(v6, v7, v8);
}

uint64_t objectdestroy_30Tm()
{
  v2 = v0[2];
  v1 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3(AssociatedTypeWitness);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = v0[4];

  v9 = OUTLINED_FUNCTION_67_2();
  v10(v9);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 40) & ~v5) + v7, v5 | 7);
}

uint64_t sub_25433D490()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_59_0();

  return sub_254338530(v6, v7, v8);
}

uint64_t sub_25433D504()
{
  v3 = v0[4];
  v2 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3(AssociatedTypeWitness);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_100_0();
  v9 = v0[6];

  v10 = OUTLINED_FUNCTION_67_2();
  v11(v10);
  sub_2542D7D40(*(v0 + v1), *(v0 + v1 + 8));

  return MEMORY[0x2821FE8E8](v0, v1 + 16, v6 | 7);
}

uint64_t sub_25433D5D8()
{
  v1 = v0[4];
  v2 = v0[5];
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8(AssociatedTypeWitness);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[6];
  v9 = (v0 + ((*(v5 + 64) + ((*(v4 + 80) + 56) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_71_1(v12);
  *v13 = v14;
  v13[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_77_0();

  return sub_254338794(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_25433D720()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_8(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_58_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3(AssociatedTypeWitness);
  v11 = v10;
  v12 = *(v10 + 80);
  v14 = *(v13 + 64);
  v15 = *(v0 + 2);
  swift_unknownObjectRelease();
  v16 = *(v0 + 6);

  v17 = &v0[v6];
  v18 = _s20CarryDeviceMergeableVMa(0);
  if (!__swift_getEnumTagSinglePayload(&v0[v6], 1, v18))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
    OUTLINED_FUNCTION_2_3(v19);
    (*(v20 + 8))(&v0[v6]);
    v34 = v8;
    v21 = v18[5];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    OUTLINED_FUNCTION_2_3(v22);
    (*(v23 + 8))(&v17[v21]);
    v24 = v18[6];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
    OUTLINED_FUNCTION_2_3(v25);
    (*(v26 + 8))(&v17[v24]);
    v27 = v18[7];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
    OUTLINED_FUNCTION_2_3(v28);
    v30 = &v17[v27];
    v8 = v34;
    (*(v29 + 8))(v30);
    v31 = *&v17[v18[8]];
  }

  v32 = (v6 + v8 + v12) & ~v12;
  (*(v11 + 8))(&v0[v32], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v32 + v14, v5 | v12 | 7);
}

uint64_t sub_25433D988()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = type metadata accessor for CarrySettings.DataModel(0);
  OUTLINED_FUNCTION_8(v3);
  v6 = ((*(v4 + 80) + 56) & ~*(v4 + 80)) + *(v5 + 64);
  OUTLINED_FUNCTION_45_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[6];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_71_1(v13);
  *v14 = v15;
  v14[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_77_0();

  return sub_254337BF8(v16, v17, v18, v19, v20, v21);
}

uint64_t sub_25433DAEC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_68_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_70_1(v2);
  OUTLINED_FUNCTION_43_1();

  return sub_25433767C(v4, v5, v6, v0);
}

uint64_t sub_25433DB90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E1150, &qword_2543ACBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25433DC00()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_81_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25433DC34()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2543341DC(v3, v4);
}

uint64_t sub_25433DCC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2543351B8(v3, v4);
}

uint64_t sub_25433DD4C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2543356E4(v3, v4, v5, v6);
}

uint64_t sub_25433DDD8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_3(v1);

  return sub_2543368C4(v3, v4);
}

uint64_t sub_25433DE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_254332FDC(v5, a2, a3);
}

uint64_t sub_25433DEA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_30_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25433DEE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  *(v6 + 16) = *a6;
  *(v6 + 32) = v12;
  *(v6 + 48) = *(a6 + 32);
  *(v6 + 64) = *(a6 + 48);
  v13 = swift_task_alloc();
  *(v6 + 72) = v13;
  *v13 = v6;
  v13[1] = sub_25433DFC8;

  return sub_2543330FC(a1, a2, a3, a4, a5, v6 + 16);
}

uint64_t sub_25433DFC8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_25433E0A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  sub_2542D7D40(v0[6], v0[7]);
  v3 = v0[10];

  v4 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_25433E100()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17(v5);
  *v6 = v7;
  v6[1] = sub_2542DB160;
  OUTLINED_FUNCTION_59_2();

  return v8();
}

void OUTLINED_FUNCTION_33_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

void OUTLINED_FUNCTION_37_2()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[20];
  v11 = *(v0[35] + 8);
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  result = v0[41];
  v2 = v0[37];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  v10 = v0[23];
  v11 = v0[21];
  return result;
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_56_1()
{
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return sub_2542D5198();
}

void OUTLINED_FUNCTION_99_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_100_0()
{
  v2 = *(v0 + 16);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_102_1()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_103_1()
{
}

uint64_t CarrySettings.DataModelUpdateRequest.data.getter()
{
  v1 = v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data;
  OUTLINED_FUNCTION_0_16();
  v2 = *v1;
  sub_2542D61B4(*v1, *(v1 + 8));
  return v2;
}

uint64_t CarrySettings.DataModelUpdateRequest.data.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2542D7D40(v6, v7);
}

uint64_t CarrySettings.DataModelUpdateRequest.additionalInfo.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_additionalInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return sub_2543A2768();
}

uint64_t CarrySettings.DataModelUpdateRequest.additionalInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_additionalInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CarrySettings.DataModelUpdateRequest.init(data:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_additionalInfo] = MEMORY[0x277D84F98];
  v6 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_25433E790(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_additionalInfo] = MEMORY[0x277D84F98];
  sub_25430DB88();
  v5 = sub_2543A3088();
  if (v5)
  {
    v6 = v5;
    v10 = 0;
    sub_2543A1EE8();
  }

  v7 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data];
  *v7 = 0;
  *(v7 + 1) = 0xC000000000000000;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_init, v10);

  return v8;
}

Swift::Void __swiftcall CarrySettings.DataModelUpdateRequest.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  sub_2542D61B4(v5, v4);
  v6 = sub_2543A1EC8();
  sub_2542D7D40(v5, v4);
  v7 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

uint64_t CarrySettings.DataModelUpdateRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v12);
  if (!v13)
  {
    sub_2542E1050(v12);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    return v9 & 1;
  }

  if (v11 == v1)
  {

    v9 = 1;
  }

  else
  {
    v3 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data];
    OUTLINED_FUNCTION_0_16();
    v4 = *v3;
    v5 = v3[1];
    v6 = &v11[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22DataModelUpdateRequest_data];
    OUTLINED_FUNCTION_0_16();
    v7 = *v6;
    v8 = v6[1];
    sub_2542D61B4(v4, v5);
    sub_2542D61B4(v7, v8);
    v9 = MEMORY[0x259C089B0](v4, v5, v7, v8);

    sub_2542D7D40(v7, v8);
    sub_2542D7D40(v4, v5);
  }

  return v9 & 1;
}

id CarrySettings.DataModelUpdateRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.DataModelUpdateRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25433ECA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461657263 && a2 == 0xE600000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7373696D736964 && a2 == 0xE700000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2543A3608();

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

uint64_t sub_25433EDF4(char a1)
{
  result = 0x657461657263;
  switch(a1)
  {
    case 1:
      result = 0x6574656C6564;
      break;
    case 2:
      result = 0x7373696D736964;
      break;
    case 3:
      result = 0x657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25433EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25433ECA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25433EEA4(uint64_t a1)
{
  v2 = sub_25433F4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433EEE0(uint64_t a1)
{
  v2 = sub_25433F4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25433EF1C(uint64_t a1)
{
  v2 = sub_25433F618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433EF58(uint64_t a1)
{
  v2 = sub_25433F618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25433EF94(uint64_t a1)
{
  v2 = sub_25433F5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433EFD0(uint64_t a1)
{
  v2 = sub_25433F5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25433F00C(uint64_t a1)
{
  v2 = sub_25433F570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433F048(uint64_t a1)
{
  v2 = sub_25433F570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25433F084(uint64_t a1)
{
  v2 = sub_25433F51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25433F0C0(uint64_t a1)
{
  v2 = sub_25433F51C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPTimerOperation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1270, &qword_2543ACDD0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_0();
  v54 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1278, &qword_2543ACDD8);
  v11 = OUTLINED_FUNCTION_3(v10);
  v52 = v12;
  v53 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0();
  v51 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1280, &qword_2543ACDE0);
  v18 = OUTLINED_FUNCTION_3(v17);
  v49 = v19;
  v50 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_0();
  v48 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1288, &qword_2543ACDE8);
  v25 = OUTLINED_FUNCTION_3(v24);
  v46 = v26;
  v47 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v29);
  v31 = &v46 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1290, &qword_2543ACDF0);
  OUTLINED_FUNCTION_3(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v37);
  v39 = &v46 - v38;
  v40 = *v1;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25433F4C8();
  sub_2543A3778();
  switch(v40)
  {
    case 1:
      v58 = 1;
      sub_25433F5C4();
      v42 = v48;
      OUTLINED_FUNCTION_7_0();
      v44 = v49;
      v43 = v50;
      goto LABEL_6;
    case 2:
      v59 = 2;
      sub_25433F570();
      v42 = v51;
      OUTLINED_FUNCTION_7_0();
      v44 = v52;
      v43 = v53;
      goto LABEL_6;
    case 3:
      v60 = 3;
      sub_25433F51C();
      v42 = v54;
      OUTLINED_FUNCTION_7_0();
      v44 = v55;
      v43 = v56;
LABEL_6:
      (*(v44 + 8))(v42, v43);
      break;
    default:
      v57 = 0;
      sub_25433F618();
      sub_2543A3508();
      (*(v46 + 8))(v31, v47);
      break;
  }

  return (*(v34 + 8))(v39, v32);
}

unint64_t sub_25433F4C8()
{
  result = qword_27F5E1298;
  if (!qword_27F5E1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1298);
  }

  return result;
}

unint64_t sub_25433F51C()
{
  result = qword_27F5E12A0;
  if (!qword_27F5E12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12A0);
  }

  return result;
}

unint64_t sub_25433F570()
{
  result = qword_27F5E12A8;
  if (!qword_27F5E12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12A8);
  }

  return result;
}

unint64_t sub_25433F5C4()
{
  result = qword_27F5E12B0;
  if (!qword_27F5E12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12B0);
  }

  return result;
}

unint64_t sub_25433F618()
{
  result = qword_27F5E12B8;
  if (!qword_27F5E12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12B8);
  }

  return result;
}

uint64_t HPTimerOperation.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

uint64_t HPTimerOperation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12C0, &qword_2543ACDF8);
  OUTLINED_FUNCTION_3(v82);
  v78 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_0();
  v81 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12C8, &qword_2543ACE00);
  v9 = OUTLINED_FUNCTION_3(v8);
  v75 = v10;
  v76 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v77 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12D0, &qword_2543ACE08);
  v16 = OUTLINED_FUNCTION_3(v15);
  v73 = v17;
  v74 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12D8, &qword_2543ACE10);
  OUTLINED_FUNCTION_3(v23);
  v72 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E12E0, &unk_2543ACE18);
  OUTLINED_FUNCTION_3(v30);
  v80 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v34);
  v36 = &v66 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25433F4C8();
  v38 = v83;
  sub_2543A3768();
  if (v38)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v69 = v23;
  v70 = v29;
  v71 = v22;
  v39 = v81;
  v40 = v82;
  v83 = a1;
  v41 = v36;
  v42 = sub_2543A34E8();
  sub_2542DF254(v42, 0);
  if (v44 == v45 >> 1)
  {
    goto LABEL_8;
  }

  v68 = 0;
  if (v44 >= (v45 >> 1))
  {
    __break(1u);
    JUMPOUT(0x25433FCE0);
  }

  v46 = *(v43 + v44);
  sub_2542DF244(v44 + 1);
  v48 = v47;
  v50 = v49;
  swift_unknownObjectRelease();
  if (v48 != v50 >> 1)
  {
LABEL_8:
    v56 = v80;
    v57 = sub_2543A32E8();
    swift_allocError();
    v59 = v58;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0) + 48);
    *v59 = &type metadata for HPTimerOperation;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v56 + 8))(v41, v30);
    a1 = v83;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v51 = v79;
  v52 = v80;
  v67 = v46;
  v53 = v46;
  v54 = v78;
  switch(v53)
  {
    case 1:
      v85 = 1;
      sub_25433F5C4();
      v62 = v71;
      OUTLINED_FUNCTION_8_0();
      swift_unknownObjectRelease();
      v64 = v73;
      v63 = v74;
      goto LABEL_18;
    case 2:
      v86 = 2;
      sub_25433F570();
      v62 = v77;
      OUTLINED_FUNCTION_8_0();
      swift_unknownObjectRelease();
      v64 = v75;
      v63 = v76;
LABEL_18:
      (*(v64 + 8))(v62, v63);
      goto LABEL_19;
    case 3:
      v87 = 3;
      sub_25433F51C();
      v65 = v68;
      sub_2543A3458();
      if (v65)
      {
        (*(v52 + 8))(v41, v30);
        swift_unknownObjectRelease();
        a1 = v83;
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      swift_unknownObjectRelease();
      (*(v54 + 8))(v39, v40);
LABEL_19:
      (*(v52 + 8))(v41, v30);
      *v51 = v67;
      result = __swift_destroy_boxed_opaque_existential_0(v83);
      break;
    default:
      v84 = 0;
      sub_25433F618();
      v55 = v70;
      OUTLINED_FUNCTION_8_0();
      swift_unknownObjectRelease();
      (*(v72 + 8))(v55, v69);
      goto LABEL_19;
  }

  return result;
}

unint64_t sub_25433FD30()
{
  result = qword_27F5E12E8;
  if (!qword_27F5E12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12E8);
  }

  return result;
}

_BYTE *sub_25433FD98(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25433FE64);
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

unint64_t sub_25433FEE0()
{
  result = qword_27F5E12F0;
  if (!qword_27F5E12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12F0);
  }

  return result;
}

unint64_t sub_25433FF38()
{
  result = qword_27F5E12F8;
  if (!qword_27F5E12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E12F8);
  }

  return result;
}

unint64_t sub_25433FF90()
{
  result = qword_27F5E1300;
  if (!qword_27F5E1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1300);
  }

  return result;
}

unint64_t sub_25433FFE8()
{
  result = qword_27F5E1308;
  if (!qword_27F5E1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1308);
  }

  return result;
}

unint64_t sub_254340040()
{
  result = qword_27F5E1310;
  if (!qword_27F5E1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1310);
  }

  return result;
}

unint64_t sub_254340098()
{
  result = qword_27F5E1318;
  if (!qword_27F5E1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1318);
  }

  return result;
}

unint64_t sub_2543400F0()
{
  result = qword_27F5E1320;
  if (!qword_27F5E1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1320);
  }

  return result;
}

unint64_t sub_254340148()
{
  result = qword_27F5E1328;
  if (!qword_27F5E1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1328);
  }

  return result;
}

unint64_t sub_2543401A0()
{
  result = qword_27F5E1330;
  if (!qword_27F5E1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1330);
  }

  return result;
}

unint64_t sub_2543401F8()
{
  result = qword_27F5E1338;
  if (!qword_27F5E1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1338);
  }

  return result;
}

unint64_t sub_254340250()
{
  result = qword_27F5E1340;
  if (!qword_27F5E1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1340);
  }

  return result;
}

uint64_t HPAlarm.mtAlarmData.getter()
{
  v1 = *v0;
  sub_2542D61B4(*v0, *(v0 + 8));
  return v1;
}

uint64_t HPAlarm.init(mtAlarmData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static HPAlarm.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  JUMPOUT(0x259C089B0);
}

uint64_t sub_2543402F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x446D72616C41746DLL && a2 == 0xEB00000000617461)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254340398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2543402F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543403C4(uint64_t a1)
{
  v2 = sub_254340594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254340400(uint64_t a1)
{
  v2 = sub_254340594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPAlarm.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1348, &qword_2543AD358);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2542D61B4(v11, v12);
  sub_254340594();
  sub_2543A3778();
  v15 = v11;
  v16 = v12;
  sub_25431A9E4();
  sub_2543A3578();
  sub_2542D7D40(v15, v16);
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_254340594()
{
  result = qword_27F5E1350;
  if (!qword_27F5E1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1350);
  }

  return result;
}

uint64_t HPAlarm.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2543A1F08();
}

uint64_t HPAlarm.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2543A36E8();
  sub_2543A1F08();
  return sub_2543A3728();
}

uint64_t HPAlarm.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1358, &qword_2543AD360);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254340594();
  sub_2543A3768();
  if (!v2)
  {
    sub_25431AA38();
    sub_2543A34D8();
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2543407DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2543A36E8();
  sub_2543A1F08();
  return sub_2543A3728();
}

unint64_t sub_254340828()
{
  result = qword_27F5E1360;
  if (!qword_27F5E1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1360);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HPAlarm.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x254340928);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254340964()
{
  result = qword_27F5E1368;
  if (!qword_27F5E1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1368);
  }

  return result;
}

unint64_t sub_2543409BC()
{
  result = qword_27F5E1370;
  if (!qword_27F5E1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1370);
  }

  return result;
}

unint64_t sub_254340A14()
{
  result = qword_27F5E1378;
  if (!qword_27F5E1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1378);
  }

  return result;
}

void static OpalTransport.coordinationServerTransport<A, B>(handshakeHandler:sessionToMember:requestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a2;
  v34 = a3;
  v31 = *(a7 - 8);
  v32 = a1;
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a10;
  v18[7] = a4;
  v18[8] = a5;
  sub_2542D6250(0, &qword_27F5E1380, 0x277D27480);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v20 = [ObjCClassFromMetadata predicateForType];
  v21 = [objc_opt_self() realmWithPredicate_];

  sub_2542D6250(0, &qword_27F5E1388, 0x277CFD080);
  v22 = v21;
  v23 = OUTLINED_FUNCTION_1_23();
  v27 = sub_254341784(v23, v24, v25, v26, v22);
  if (v27)
  {
    v28 = v27;
    v35 = a6;
    v36 = a7;
    v37 = a8;
    v38 = a9;
    v39 = a10;
    type metadata accessor for CoordinationTransportServer();
    v29 = [objc_opt_self() clusterWithConfiguration_];

    (*(v31 + 16))(v17, v32, a7);

    sub_25430519C();
  }

  else
  {
    sub_254341860();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_254340CF8(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_254340E04;

  return v9(v3 + 16, a1, a2);
}

uint64_t sub_254340E04()
{
  OUTLINED_FUNCTION_28();
  v2 = *(*v1 + 56);
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v5 + 64) = v0;

  if (v0)
  {
    v6 = sub_254341CC4;
  }

  else
  {
    v6 = sub_254341CB0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_254340F0C()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_254340F44()
{
  OUTLINED_FUNCTION_2_24();
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_254341CC0;
  OUTLINED_FUNCTION_3_18();

  return sub_254340CF8(v6, v7, v8);
}

id sub_254341018(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoordinationResponse();
  (*(v4 + 16))(v7, a1, a2);
  return sub_2542C6F64(v7);
}

void static OpalTransport.coordinationClientTransport<A>(introductionToMember:requestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a1;
  v14[6] = a2;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a3;
  v15[6] = a4;
  sub_2542D6250(0, &qword_27F5E1380, 0x277D27480);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v17 = [ObjCClassFromMetadata predicateForType];
  v18 = [objc_opt_self() realmWithPredicate_];

  sub_2542D6250(0, &qword_27F5E1388, 0x277CFD080);
  v19 = v18;
  v20 = OUTLINED_FUNCTION_1_23();
  v24 = sub_254341784(v20, v21, v22, v23, v19);
  if (v24)
  {
    v25 = v24;
    type metadata accessor for OpalHandshakeIntroduction();
    type metadata accessor for CoordinationTransportClient();
    v26 = [objc_opt_self() clusterWithConfiguration_];

    sub_2543434B4();
  }

  else
  {
    sub_254341860();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_254341334(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = [a1 member];
  v7 = [v6 IDSIdentifier];

  if (v7)
  {
    v8 = sub_2543A2878();
    v10 = v9;

    a3(v8, v10, a2);
  }

  else
  {
    v12 = [a1 member];
    sub_254341C58();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_25434144C(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_254341554;

  return v9(v3 + 16, a1, a2);
}

uint64_t sub_254341554()
{
  OUTLINED_FUNCTION_28();
  v2 = *(*v1 + 56);
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v5 + 64) = v0;

  if (v0)
  {
    v6 = sub_2543416E0;
  }

  else
  {
    v6 = sub_25434165C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25434165C()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = sub_254341018(v2, v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[1];

  return v4(v3);
}

uint64_t static OpalTransport.registerAllowedRequests(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    if (qword_27F5DF088 != -1)
    {
      swift_once();
    }

    v3 = (v2 + 40);
    do
    {
      result = sub_25436A2AC(*(v3 - 1), *(v3 - 1), *v3);
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id sub_254341784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_2543A2858();

  v9 = [swift_getObjCClassFromMetadata() configurationWithDomain:v8 requiredServices:a3 options:a4 realm:a5];

  return v9;
}

BOOL sub_254341814(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_254341860()
{
  result = qword_27F5E1390;
  if (!qword_27F5E1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1390);
  }

  return result;
}

uint64_t sub_2543418B4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2543418EC(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_254341334(a1, a2, *(v2 + 40));
}

uint64_t sub_254341910()
{
  OUTLINED_FUNCTION_2_24();
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2543419CC;
  OUTLINED_FUNCTION_3_18();

  return sub_25434144C(v4, v5, v6);
}

uint64_t sub_2543419CC()
{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

_BYTE *storeEnumTagSinglePayload for OpalTransport(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x254341B58);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254341B90(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  type metadata accessor for CoordinationTransportServer();
  return swift_getWitnessTable();
}

uint64_t sub_254341BE4(uint64_t *a1)
{
  v3 = *a1;
  type metadata accessor for OpalHandshakeIntroduction();
  v4 = *(a1 + 1);
  type metadata accessor for CoordinationTransportClient();
  return swift_getWitnessTable();
}

unint64_t sub_254341C58()
{
  result = qword_27F5E1398;
  if (!qword_27F5E1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1398);
  }

  return result;
}

void OUTLINED_FUNCTION_2_24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_254341D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  return MEMORY[0x2822009F8](sub_254341D38, 0, 0);
}

uint64_t sub_254341D38()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v10 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v10;
  *(v4 + 64) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A0, &qword_2543AD628);
  *v7 = v0;
  v7[1] = sub_254341E64;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002FLL, 0x80000002543B9550, sub_254342258, v4, v8);
}

uint64_t sub_254341E64()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_254341F9C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_254341F80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254341F9C()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

void sub_254342000(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v20 = a1;
  v21 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_2543A2858();
  v15 = sub_2543A2708();
  v16 = sub_2543A2858();
  if (a8)
  {
    a8 = sub_2543A2708();
  }

  (*(v10 + 16))(v13, v20, v9);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v13, v9);
  aBlock[4] = sub_254342390;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_254342424;
  aBlock[3] = &block_descriptor_4;
  v19 = _Block_copy(aBlock);

  [v21 sendRequestID:v14 request:v15 destinationID:v16 options:a8 responseHandler:v19];
  _Block_release(v19);
}

uint64_t sub_25434226C(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);
    return sub_2543A2B68();
  }

  else
  {
    sub_2543A2768();
    sub_2543A2768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);
    return sub_2543A2B78();
  }
}

uint64_t sub_2543422FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_254342390(int a1, int a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E13A8, &qword_2543AD630) - 8) + 80);

  return sub_25434226C(a1, a2, a3);
}

uint64_t sub_254342424(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_2543A2718();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_2543A2718();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OpalHandshakeIntroduction.__allocating_init(name:model:buildVersion:deviceColor:pairID:pairName:roomID:roomName:mediaRouteID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_9_9();
  v26 = objc_allocWithZone(v18);
  return OpalHandshakeIntroduction.init(name:model:buildVersion:deviceColor:pairID:pairName:roomID:roomName:mediaRouteID:)(v24, v23, v22, v21, v20, v19, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

id OpalHandshakeIntroduction.init(name:model:buildVersion:deviceColor:pairID:pairName:roomID:roomName:mediaRouteID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_9_9();
  ObjectType = swift_getObjectType();
  v26 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_name];
  *v26 = v24;
  *(v26 + 1) = v23;
  v27 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_model];
  *v27 = v22;
  *(v27 + 1) = v21;
  v28 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_buildVersion];
  *v28 = v20;
  *(v28 + 1) = v19;
  v29 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_deviceColor];
  *v29 = a7;
  *(v29 + 1) = a8;
  v30 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_pairID];
  *v30 = a9;
  *(v30 + 1) = a10;
  v31 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_pairName];
  *v31 = a11;
  *(v31 + 1) = a12;
  v32 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_roomID];
  *v32 = a13;
  *(v32 + 1) = a14;
  v33 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_roomName];
  *v33 = a15;
  *(v33 + 1) = a16;
  v34 = &v18[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_mediaRouteID];
  *v34 = a17;
  *(v34 + 1) = a18;
  v38.receiver = v18;
  v38.super_class = ObjectType;
  return objc_msgSendSuper2(&v38, sel_init);
}

id sub_2543428D4(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  sub_25430CAE0();
  if (!sub_2543A3088() || (OUTLINED_FUNCTION_3_19(), v2, (v6 = v22) == 0))
  {

LABEL_13:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = &v3[OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_name];
  *v7 = v21;
  *(v7 + 1) = v6;
  if (!sub_2543A3088() || (OUTLINED_FUNCTION_3_19(), v2, !v22))
  {

    v9 = *(v7 + 1);
LABEL_12:

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_15(v22);
  if (!sub_2543A3088())
  {

    v10 = *(v7 + 1);

    OUTLINED_FUNCTION_6_1(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_model);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_19();

  OUTLINED_FUNCTION_6_15(v22);
  if (sub_2543A3088())
  {
    OUTLINED_FUNCTION_3_19();

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v8);
  if (OUTLINED_FUNCTION_11_12())
  {
    OUTLINED_FUNCTION_3_19();

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v13);
  if (OUTLINED_FUNCTION_10_12())
  {
    OUTLINED_FUNCTION_3_19();

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v14);
  if (OUTLINED_FUNCTION_11_12())
  {
    OUTLINED_FUNCTION_3_19();

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v15);
  if (OUTLINED_FUNCTION_10_12())
  {
    OUTLINED_FUNCTION_3_19();

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v16);
  v17 = sub_2543A3088();
  if (v17)
  {
    v18 = v17;
    v21 = 0;
    v22 = 0;
    sub_2543A2868();

    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_8_13();
  }

  OUTLINED_FUNCTION_6_15(v19);
  v20.receiver = v3;
  v20.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v20, sel_init);

  return v11;
}

Swift::Void __swiftcall OpalHandshakeIntroduction.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_name);
  v4 = *(v1 + OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_name + 8);
  v5 = sub_2543A2858();
  v6 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_model);
  v8 = *(v1 + OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_model + 8);
  v9 = sub_2543A2858();
  v10 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v10);

  OUTLINED_FUNCTION_7_10(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_buildVersion);
  if (v12)
  {
    v13 = *v11;
    sub_2543A2858();
  }

  v14 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v14);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_deviceColor);
  if (v16)
  {
    v17 = *v15;
    sub_2543A2858();
  }

  v18 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v18);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_pairID);
  if (v20)
  {
    v21 = *v19;
    sub_2543A2858();
  }

  v22 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v22);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_pairName);
  if (v24)
  {
    v25 = *v23;
    sub_2543A2858();
  }

  v26 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v26);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_roomID);
  if (v28)
  {
    v29 = *v27;
    sub_2543A2858();
  }

  v30 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v30);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_roomName);
  if (v32)
  {
    v33 = *v31;
    sub_2543A2858();
  }

  v34 = sub_2543A2858();
  OUTLINED_FUNCTION_1_6(v34);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_10(OBJC_IVAR____TtC15HomePodSettings25OpalHandshakeIntroduction_mediaRouteID);
  if (v36)
  {
    v37 = *v35;
    v38 = sub_2543A2858();
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v38 forKey:v39];
  swift_unknownObjectRelease();
}

id OpalHandshakeIntroduction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OpalHandshakeIntroduction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return sub_2543A2868();
}

void OUTLINED_FUNCTION_6_15(uint64_t a1@<X8>)
{
  v4 = (v3 + v2);
  *v4 = v1;
  v4[1] = a1;
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_2543A3088();
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_2543A3088();
}

_BYTE *storeEnumTagSinglePayload for ClientError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2543432C8);
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

unint64_t sub_254343304()
{
  result = qword_27F5E13F8[0];
  if (!qword_27F5E13F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E13F8);
  }

  return result;
}

id sub_2543433F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 member];
  *a2 = result;
  return result;
}

id sub_254343434()
{
  v1 = *(v0 + 24);
  [v1 lock];
  OUTLINED_FUNCTION_64_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5E1480, &qword_2543ADA38);
  sub_2543A27A8();
  swift_endAccess();
  return [v1 unlock];
}

uint64_t sub_2543434B4()
{
  v0 = swift_allocObject();
  sub_25434353C();
  return v0;
}

void sub_25434353C()
{
  OUTLINED_FUNCTION_88();
  v38 = v1;
  v39 = v2;
  v36 = v3;
  v37 = v4;
  v34 = v6;
  v35 = v5;
  v33 = v7;
  v8 = *v0;
  v31 = sub_2543A3068();
  v9 = OUTLINED_FUNCTION_3(v31);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v16 = v15 - v14;
  v17 = sub_2543A3058();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  v19 = sub_2543A2168();
  v20 = OUTLINED_FUNCTION_110(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  swift_defaultActor_initialize();
  v32 = *(v8 + 96);
  v40 = *(v8 + 80);
  v41 = v32;
  v42 = *(v8 + 104);
  type metadata accessor for CoordinationTransportClient();
  swift_getWitnessTable();
  type metadata accessor for ObservationManager();
  v0[15] = sub_25431D0D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF270, &qword_2543A6850);
  swift_allocObject();
  v0[16] = sub_2542D4F6C();
  sub_2542D6250(0, &qword_27F5DF2B0, 0x277D85C78);
  sub_2543A2158();
  *&v40 = MEMORY[0x277D84F90];
  sub_254308E3C(&qword_27F5DF2B8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2C0, &qword_2543A6870);
  sub_2543094F8();
  sub_2543A3188();
  (*(v11 + 104))(v16, *MEMORY[0x277D85260], v31);
  v0[17] = sub_2543A3078();
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_58_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_57_0();
  sub_2543A2A88();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v23, v24);
  v0[24] = sub_2543A2748();
  OUTLINED_FUNCTION_57_0();
  sub_2543A2A88();
  v0[25] = sub_2543A2748();
  v25 = OUTLINED_FUNCTION_58_0();
  sub_2542D6250(v25, v26, 0x277CFD0D8);
  v27 = *(v32 + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v28, &qword_27F5DF368, 0x277CFD0D8);
  v0[26] = sub_25437D744();
  v0[27] = v29;
  v0[28] = v30;
  v0[29] = 0;
  *&v42 = sub_2542D6250(0, &qword_27F5E04B8, 0x277CFD078);
  *&v40 = v33;
  objc_allocWithZone(MEMORY[0x277CFD0D0]);
  sub_2543A2768();
  v0[14] = sub_254346FD4(v35, v34, &v40);
  v0[18] = v36;
  v0[19] = v37;
  v0[20] = v38;
  v0[21] = v39;
  v0[22] = v35;
  v0[23] = v34;
  OUTLINED_FUNCTION_86();
}

uint64_t sub_2543439B4()
{
  *(v1 + 216) = v0;
  *(v1 + 224) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_2543439F8, v0);
}

uint64_t sub_2543439F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v46 = v10 + 16;
  v13 = *(v10 + 216);
  v12 = *(v10 + 224);
  *(v10 + 184) = v13;
  v14 = v12[10];
  v15 = v12[11];
  v43 = v12[13];
  v44 = v12[12];
  v16 = v12[14];
  *(v10 + 144) = v14;
  *(v10 + 152) = v15;
  *(v10 + 160) = v44;
  *(v10 + 168) = v43;
  *(v10 + 176) = v16;
  v17 = type metadata accessor for CoordinationTransportClient();
  *(v10 + 232) = v17;
  extended = sub_2542DF684() & 1;
  *(v10 + 264) = extended;
  v18._countAndFlagsBits = 0x6574617669746361;
  v18._object = 0xEA00000000002928;
  Logging.ulog(_:extended:)(v18, extended);
  v19 = v13[20];
  v20 = v13[21];
  WitnessTable = swift_getWitnessTable();
  sub_25436BAB8(v19, v20, v17, WitnessTable);
  OUTLINED_FUNCTION_19_4();
  type metadata accessor for MessageSessionProducerObserver();
  OUTLINED_FUNCTION_67();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v14;
  v23[3] = v15;
  v23[4] = v44;
  v23[5] = v43;
  v23[6] = v16;
  v23[7] = v22;
  OUTLINED_FUNCTION_67();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v14;
  v25[3] = v15;
  v25[4] = v44;
  v25[5] = v43;
  v25[6] = v16;
  v25[7] = v24;
  v26 = sub_254366BB0(&unk_2543ADA48, v23, &unk_2543ADA58, v25);
  v11[30] = v26;
  v27 = v13[14];
  v28 = v13[22];
  v29 = v13[23];
  v30 = sub_2543A2858();
  [v27 addSessionProducerWithSubTopic:v30 delegate:v26 dispatchQueue:v13[17]];

  v31 = v13[29];
  v13[29] = v26;
  v32 = v26;

  v11[24] = v13;
  v33._object = 0x80000002543B9720;
  v33._countAndFlagsBits = 0xD000000000000020;
  Logging.ulog(_:extended:)(v33, extended);
  v11[2] = v11;
  v11[3] = sub_254343D24;
  v34 = swift_continuation_init();
  v11[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
  v11[10] = MEMORY[0x277D85DD0];
  v11[11] = 1107296256;
  v11[12] = sub_2542C9210;
  v11[13] = &block_descriptor_5;
  v11[14] = v34;
  [v27 activateWithCompletion_];

  return MEMORY[0x282200938](v46, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t sub_254343D24()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  v3 = v2[6];
  v2[31] = v3;
  v4 = v2[27];
  if (v3)
  {
    v5 = sub_254344098;
  }

  else
  {
    v5 = sub_254343E3C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_254343E3C()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  *(v0 + 200) = v3;
  v4._object = 0x80000002543B8750;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logging.ulog(_:extended:)(v4, v1);
  v5 = *(v3 + 120);
  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = sub_254343F08;
  v7 = *(v0 + 216);

  return sub_25431D598(v7);
}

uint64_t sub_254343F08()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 256);
  v3 = *(v1 + 216);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_254344008, v3, 0);
}

uint64_t sub_254344008()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  *(v0 + 208) = *(v0 + 216);
  v4._object = 0x80000002543B8770;
  v4._countAndFlagsBits = 0xD000000000000027;
  Logging.ulog(_:extended:)(v4, v1);

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_254344098()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  swift_willThrow();

  OUTLINED_FUNCTION_27();
  v4 = *(v0 + 248);

  return v3();
}

uint64_t sub_254344104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_254344128, 0, 0);
}

uint64_t sub_254344128()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_2543441C4()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  sub_254345B0C();

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_254344228(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_254344248, 0, 0);
}

uint64_t sub_254344248()
{
  OUTLINED_FUNCTION_28();
  v1 = v0[6];
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2542E7588;
    v4 = v0[5];

    return sub_2543460E8();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_254344320()
{
  *(v1 + 104) = v0;
  *(v1 + 112) = *v0;
  return OUTLINED_FUNCTION_17_6(sub_254344364, v0);
}

void sub_254344364()
{
  v2 = v0[13];
  v1 = v0[14];
  v0[7] = v2;
  v3 = v1[10];
  v5 = v1[12];
  v4 = v1[13];
  v30 = v1[11];
  v31 = v1[14];
  v0[2] = v3;
  v6 = v3;
  v0[3] = v30;
  v0[4] = v5;
  v7 = v5;
  v29 = v5;
  v0[5] = v4;
  v0[6] = v31;
  v8 = v4;
  v32 = v4;
  OUTLINED_FUNCTION_58_0();
  type metadata accessor for CoordinationTransportClient();
  v9 = sub_2542DF684();
  v10._object = 0xEC00000029286574;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0x6176697463616564;
  Logging.ulog(_:extended:)(v10, v11);
  OUTLINED_FUNCTION_97();
  v0[7] = v2[24];
  v12 = swift_task_alloc();
  v12[2] = v6;
  v12[3] = v30;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v31;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v13, v14);
  OUTLINED_FUNCTION_58_0();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  OUTLINED_FUNCTION_97();
  v0[10] = v2[25];
  v15 = swift_task_alloc();
  v15[2] = v6;
  v15[3] = v30;
  v15[4] = v29;
  v15[5] = v32;
  v15[6] = v31;
  sub_2543A2768();
  sub_2543A29E8();

  v16 = v2[16];
  sub_254343434();
  v17 = v2[29];
  v2[29] = 0;

  OUTLINED_FUNCTION_97();
  v18 = v2[26];
  v19 = v2[27];
  v20 = v2[28];
  sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  v21 = *(v29 + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v22, &qword_27F5DF368, 0x277CFD0D8);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  v23 = sub_25437DC0C();

  v24 = sub_254372808(v23);
  for (i = 0; v24 != i; ++i)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x259C09DA0](i, v23);
    }

    else
    {
      if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v26 = *(v23 + 8 * i + 32);
    }

    v27 = v26;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v26 stopWithNotice_];
  }

  OUTLINED_FUNCTION_27();

  v28();
}

void sub_254344714()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *v0;
  OUTLINED_FUNCTION_97();
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v1[10];
  sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  v6 = v1[13];
  v7 = *(v1[12] + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v8, &qword_27F5DF368, 0x277CFD0D8);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  sub_25437D87C();

  OUTLINED_FUNCTION_38_0();
}

void sub_254344998()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *v0;
  OUTLINED_FUNCTION_97();
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v1[10];
  v6 = OUTLINED_FUNCTION_19_4();
  sub_2542D6250(v6, v7, v8);
  v9 = v1[13];
  v10 = *(v1[12] + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v11, &qword_27F5DF368, 0x277CFD0D8);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  sub_25437DB58();

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_254344AC8(uint64_t a1, uint64_t *a2)
{
  v24 = a1;
  v22 = *a2;
  v3 = v22;
  v21 = *(v22 + 80);
  v4 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v23 = &v20 - v7;
  v8 = sub_2543A1F88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  sub_2543A1F78();
  v20 = *(v9 + 16);
  v20(v12, v14, v8);
  v15 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = *(v3 + 88);
  *(v16 + 32) = *(v22 + 96);
  *(v16 + 48) = *(v3 + 112);
  *(v16 + 56) = a2;
  (*(v9 + 32))(v16 + v15, v12, v8);

  v17 = v24;
  sub_2543A2BE8();
  v20(v12, v14, v8);
  v18 = v23;
  (*(*(v4 - 8) + 16))(v23, v17, v4);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  swift_beginAccess();
  sub_254308E3C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_254344E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_254344E4C, 0, 0);
}

uint64_t sub_254344E4C()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_254344EF4()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_254344F60();

  return MEMORY[0x2822009F8](sub_2543095A8, 0, 0);
}

void sub_254344F60()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_4();
  v2 = *(v1 + 80);
  sub_2543A2C28();
  v3 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = OUTLINED_FUNCTION_31_2(v7, v17);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_16();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_9_5();
  sub_254308E3C(v12, v0);
  v13 = sub_2543A35A8();
  MEMORY[0x259C093D0](v13);

  OUTLINED_FUNCTION_24_4();
  v14 = sub_2542DF684();
  OUTLINED_FUNCTION_23_2(v14);

  v15 = OUTLINED_FUNCTION_28_1();
  v16(v15);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_12_6(&qword_27F5DF518);
  OUTLINED_FUNCTION_57_0();
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
}

uint64_t sub_254345184()
{
  v1 = *(*v0 + 80);
  v2 = sub_2543A2BF8();
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  nullsub_1(v1);
  sub_2542FEED4(v7);
  return sub_2543A2C38();
}

uint64_t sub_254345240(uint64_t a1, uint64_t *a2)
{
  v24 = a1;
  v22 = *a2;
  v3 = v22;
  v21 = *(v22 + 80);
  v4 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v23 = &v20 - v7;
  v8 = sub_2543A1F88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  sub_2543A1F78();
  v20 = *(v9 + 16);
  v20(v12, v14, v8);
  v15 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = *(v3 + 88);
  *(v16 + 32) = *(v22 + 96);
  *(v16 + 48) = *(v3 + 112);
  *(v16 + 56) = a2;
  (*(v9 + 32))(v16 + v15, v12, v8);

  v17 = v24;
  sub_2543A2BE8();
  v20(v12, v14, v8);
  v18 = v23;
  (*(*(v4 - 8) + 16))(v23, v17, v4);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  swift_beginAccess();
  sub_254308E3C(&qword_27F5DF518, MEMORY[0x277CC95F0]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v9 + 8))(v14, v8);
}

void sub_25434559C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v21[0] = *v3;
  v2 = v21[0];
  v21[1] = v4;
  v5 = sub_2543A1F88();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v17 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  OUTLINED_FUNCTION_67();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v5);
  v19 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v2[10];
  *(v20 + 40) = v2[11];
  *(v20 + 48) = *(v21[0] + 96);
  *(v20 + 64) = v2[14];
  *(v20 + 72) = v18;
  (*(v8 + 32))(v20 + v19, v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_2542CD000();

  OUTLINED_FUNCTION_86();
}

uint64_t sub_2543457C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2543457EC, 0, 0);
}

uint64_t sub_2543457EC()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_27();

    return v6();
  }
}

uint64_t sub_254345894()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_254345900();

  return MEMORY[0x2822009F8](sub_254307944, 0, 0);
}

void sub_254345900()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_4();
  v2 = *(v1 + 80);
  sub_2543A2C28();
  v3 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = OUTLINED_FUNCTION_31_2(v7, v17);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6_16();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_9_5();
  sub_254308E3C(v12, v0);
  v13 = sub_2543A35A8();
  MEMORY[0x259C093D0](v13);

  OUTLINED_FUNCTION_24_4();
  v14 = sub_2542DF684();
  OUTLINED_FUNCTION_23_2(v14);

  v15 = OUTLINED_FUNCTION_28_1();
  v16(v15);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_12_6(&qword_27F5DF518);
  OUTLINED_FUNCTION_57_0();
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  OUTLINED_FUNCTION_86();
}

void sub_254345B0C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v49 = v4;
  v6 = *v0;
  v7 = *v0;
  v8 = *(*v0 + 80);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v51 = v0;
  OUTLINED_FUNCTION_6_16();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000027, 0x80000002543B96C0);
  MEMORY[0x259C093D0](0x6E6F697373657320, 0xE90000000000003DLL);
  v13 = [v5 description];
  v14 = sub_2543A2878();
  v16 = v15;

  MEMORY[0x259C093D0](v14, v16);

  MEMORY[0x259C093D0](0x75646F72746E6920, 0xEE003D6E6F697463);
  v55 = v3;
  v17 = *(v6 + 88);
  WitnessTable = swift_getWitnessTable();
  sub_2543A35D8();
  v18 = v6;
  countAndFlagsBits = v52._countAndFlagsBits;
  object = v52._object;
  v21 = *(v7 + 96);
  v22 = *(v18 + 112);
  v46 = v8;
  v52._countAndFlagsBits = v8;
  v52._object = v17;
  v50 = v21;
  v53 = v21;
  v44 = v22;
  v54 = v22;
  type metadata accessor for CoordinationTransportClient();
  LOBYTE(v14) = sub_2542DF684();
  v23._countAndFlagsBits = countAndFlagsBits;
  v23._object = object;
  Logging.ulog(_:extended:)(v23, v14 & 1);

  v24 = v1[18];
  v25 = v1[19];
  v26 = v12;
  v27 = v49;
  v48 = v3;
  v24(v49, v3);
  v51 = v1;
  OUTLINED_FUNCTION_6_16();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000029, 0x80000002543B96F0);
  v28 = v46;
  sub_2543A35C8();
  Logging.ulog(_:extended:)(v52, v14 & 1);

  v55 = v27;
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_35_3();
  v32 = sub_2542D6250(v29, v30, v31);
  v33 = *(v50 + 8);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_35_3();
  v37 = sub_2543094B4(v34, v35, v36);
  v52._countAndFlagsBits = v28;
  v52._object = v32;
  *&v53 = *(&v50 + 1);
  *(&v53 + 1) = v33;
  v54 = v37;
  v38 = type metadata accessor for MemberConnectionCache();
  sub_25437DCA0(&v55, v26, v38);
  swift_endAccess();
  v39 = OUTLINED_FUNCTION_97();
  v51 = v1[24];
  MEMORY[0x28223BE20](v39);
  *&v40 = v28;
  *(&v40 + 1) = v17;
  v41 = v50;
  *(&v44 - 3) = v40;
  *(&v44 - 2) = v41;
  *(&v44 - 2) = v44;
  *(&v44 - 1) = v26;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v42, v43);
  OUTLINED_FUNCTION_35_3();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  (*(v45 + 8))(v26, v28);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_2543460E8()
{
  OUTLINED_FUNCTION_28();
  v1[22] = v2;
  v1[23] = v0;
  OUTLINED_FUNCTION_15_4();
  v1[24] = v3;
  v5 = *(v4 + 80);
  v1[25] = v5;
  v6 = sub_2543A30C8();
  v1[26] = v6;
  v7 = *(v6 - 8);
  v1[27] = v7;
  v8 = *(v7 + 64) + 15;
  v1[28] = swift_task_alloc();
  v9 = *(v5 - 8);
  v1[29] = v9;
  v10 = *(v9 + 64) + 15;
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254346234, v0, 0);
}

uint64_t sub_254346234()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v46 = v0[28];
  v0[18] = v0[23];
  OUTLINED_FUNCTION_32_0();
  v47._countAndFlagsBits = v5;
  v47._object = v4;
  v6 = [v3 description];
  v7 = sub_2543A2878();
  v9 = v8;

  MEMORY[0x259C093D0](v7, v9);

  v10 = v2[11];
  v11 = v2[12];
  v13 = v2[13];
  v12 = v2[14];
  v0[2] = v1;
  v45 = v10;
  v0[3] = v10;
  v0[4] = v11;
  v0[5] = v13;
  v0[6] = v12;
  v43 = v12;
  v14 = type metadata accessor for CoordinationTransportClient();
  v15 = sub_2542DF684() & 1;
  Logging.ulog(_:extended:)(v47, v15);

  v0[19] = v3;
  OUTLINED_FUNCTION_64_0();
  v16 = sub_2542D6250(255, &qword_27F5DF368, 0x277CFD0D8);
  v44 = v11;
  v17 = *(v11 + 8);
  OUTLINED_FUNCTION_0_17();
  v19 = sub_2543094B4(v18, &qword_27F5DF368, 0x277CFD0D8);
  v0[7] = v1;
  v0[8] = v16;
  v0[9] = v13;
  v0[10] = v17;
  v0[11] = v19;
  v20 = type metadata accessor for MemberConnectionCache();
  sub_25437E024((v0 + 19), v20, v46);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v46, 1, v1) == 1)
  {
    v22 = v0[22];
    v21 = v0[23];
    (*(v0[27] + 8))(v0[28], v0[26]);
    v0[20] = v21;
    sub_2543A3298();

    OUTLINED_FUNCTION_32_0();
    v48 = v23;
    v24 = [v22 member];
    v25 = [v24 description];
    v26 = sub_2543A2878();
    v28 = v27;

    MEMORY[0x259C093D0](v26, v28);

    MEMORY[0x259C093D0](0x2074276E6143202ELL, 0xEE0065766F6D6572);
    v29 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(90, 0xD000000000000021, v48, v29 & 1, v14, &off_286649950);

    v30 = v0[30];
    v31 = v0[28];

    OUTLINED_FUNCTION_27();

    return v32();
  }

  else
  {
    v34 = v0[30];
    v35 = v0[25];
    v36 = v0[23];
    (*(v0[29] + 32))(v34, v0[28], v35);
    OUTLINED_FUNCTION_97();
    v0[21] = *(v36 + 200);
    v37 = swift_task_alloc();
    v37[2] = v35;
    v37[3] = v45;
    v37[4] = v44;
    v37[5] = v13;
    v37[6] = v43;
    v37[7] = v34;
    sub_2543A1F88();
    sub_2543A2C28();
    OUTLINED_FUNCTION_1_13();
    sub_254308E3C(v38, v39);
    OUTLINED_FUNCTION_58_0();
    sub_2543A27B8();
    sub_2543A2768();
    OUTLINED_FUNCTION_3_8();
    swift_getWitnessTable();
    sub_2543A29E8();

    v0[31] = *(v36 + 120);
    v40 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v40, v41, v42);
  }
}

uint64_t sub_2543466BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_9();
  v9 = v8 - v7;
  v10 = sub_2543A2BD8();
  OUTLINED_FUNCTION_3(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_19_4();
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v5 + 16))(v9, a2, a3);
  sub_2543A2C08();
  return (*(v12 + 8))(v17, v10);
}

uint64_t sub_254346860()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 152);

  v4 = *(v0 + 168);

  v5 = *(v0 + 184);

  v6 = *(v0 + 192);

  v7 = *(v0 + 200);

  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 224);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2543468FC()
{
  sub_254346860();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25434694C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_2543439B4();
}

uint64_t sub_2543469D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254344320();
}

uint64_t sub_254346A6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_2543439B4();
}

uint64_t sub_254346AF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254344320();
}

uint64_t sub_254346B84(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254346BC0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254346BFC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254346C5C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_254346CF4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  return sub_2543466BC(a1, v1[7], v1[2]);
}

uint64_t sub_254346D44()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_254346D7C()
{
  v0 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_36_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_5(v4);

  return sub_2543457C4(v6, v7, v8, v9, v10);
}

void sub_254346E7C()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 56);
  sub_25434559C();
}

uint64_t sub_254346EF8()
{
  v0 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_36_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_5(v4);

  return sub_254344E24(v6, v7, v8, v9, v10);
}

id sub_254346FD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2543A2858();

  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v6 = [v3 initWithTopic:v5 cluster:sub_2543A35F8()];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a3);
  return v6;
}

uint64_t sub_254347060()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_254347098()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_39(v7);
  *v8 = v9;
  v8[1] = sub_2542DB160;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_33_3();

  return sub_254344104(v10, v11, v12);
}

uint64_t sub_25434715C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_39(v7);
  *v8 = v9;
  v8[1] = sub_2542DB160;
  OUTLINED_FUNCTION_33_3();

  return sub_254344228(v10, v11);
}

uint64_t OUTLINED_FUNCTION_24_4()
{
  v4 = *(v2 - 128);
  v3 = *(v2 - 120);
  *(v2 - 128) = v1;
  *(v2 - 120) = *(v0 + 88);
  *(v2 - 104) = *(v0 + 104);
  return type metadata accessor for CoordinationTransportClient();
}

uint64_t OUTLINED_FUNCTION_26_3()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

void sub_254347304()
{
  v2 = v0;
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1540, &unk_2543ADF80);
  sub_254348EBC(&qword_27F5E1558, sub_254348F34);
  sub_2543A3018();
  if (v1)
  {
  }

  else
  {
    [v3 finishEncoding];
    v4 = [v3 encodedData];
    v5 = sub_2543A1EF8();
    v7 = v6;

    v8 = sub_2543A1EC8();
    sub_2542D7D40(v5, v7);
    v9 = sub_2543A2858();
    [v2 encodeObject:v8 forKey:v9];
  }
}

uint64_t sub_254347490()
{
  v1 = sub_25430DA38();
  result = 0;
  if (v0 >> 60 != 15)
  {
    v3 = v0;
    v4 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2542D61B4(v1, v3);
    v5 = sub_25430DAA8(v1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1540, &unk_2543ADF80);
    sub_254348EBC(&qword_27F5E1548, sub_254348E68);
    sub_2543A3028();

    sub_2542E5880(v1, v3);
    return v6;
  }

  return result;
}

id TransportDeviceIdentity.__allocating_init(identifiers:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15HomePodSettings23TransportDeviceIdentity_identitySections] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TransportDeviceIdentity.init(identifiers:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15HomePodSettings23TransportDeviceIdentity_identitySections] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TransportDeviceIdentity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TransportDeviceIdentity.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_254347490();
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC15HomePodSettings23TransportDeviceIdentity_identitySections] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for TransportDeviceIdentity();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for TransportDeviceIdentity();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id TransportDeviceIdentity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransportDeviceIdentity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransportDeviceIdentity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static TransportIdentitySection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v9 = sub_2543A3608();
        OUTLINED_FUNCTION_2_12();
        OUTLINED_FUNCTION_2_25();
        OUTLINED_FUNCTION_2_25();
        sub_254347AF8();
        OUTLINED_FUNCTION_2_12();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_2_25();
      OUTLINED_FUNCTION_2_25();
      sub_254347AF8();
      sub_254347AF8();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_2_25();
    OUTLINED_FUNCTION_2_25();
    sub_254347AF8();
    OUTLINED_FUNCTION_2_12();
    sub_254347AF8();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v10 = 1;
    OUTLINED_FUNCTION_1_25();
    sub_254347AF0();
    OUTLINED_FUNCTION_1_25();
    sub_254347AF0();
    OUTLINED_FUNCTION_1_25();
    sub_254347AF8();
    OUTLINED_FUNCTION_1_25();
    sub_254347AF8();
    return v10;
  }

  v8 = *a1;
  v9 = sub_2543A3608();
  OUTLINED_FUNCTION_2_12();
  sub_254347AF0();
  OUTLINED_FUNCTION_1_25();
  sub_254347AF0();
  OUTLINED_FUNCTION_1_25();
  sub_254347AF8();
  OUTLINED_FUNCTION_2_12();
LABEL_16:
  sub_254347AF8();
  return v9 & 1;
}

uint64_t sub_254347B00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7562345 && a2 == 0xE300000000000000;
  if (v3 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F70706172 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

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

uint64_t sub_254347BC8(char a1)
{
  if (a1)
  {
    return 0x74726F70706172;
  }

  else
  {
    return 7562345;
  }
}

uint64_t sub_254347C14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254347C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254347B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254347CC4(uint64_t a1)
{
  v2 = sub_254348120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254347D00(uint64_t a1)
{
  v2 = sub_254348120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254347D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254347C14(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254347D6C(uint64_t a1)
{
  v2 = sub_2543481C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254347DA8(uint64_t a1)
{
  v2 = sub_2543481C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254347DE4(uint64_t a1)
{
  v2 = sub_254348174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254347E20(uint64_t a1)
{
  v2 = sub_254348174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransportIdentitySection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E1498, &qword_2543ADA60);
  v4 = OUTLINED_FUNCTION_3(v3);
  v36 = v5;
  v37 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  v35 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14A0, &qword_2543ADA68);
  v11 = OUTLINED_FUNCTION_3(v10);
  v33 = v12;
  v34 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14A8, &qword_2543ADA70);
  OUTLINED_FUNCTION_3(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - v24;
  v26 = *v1;
  v38 = v1[1];
  v39 = v26;
  v27 = *(v1 + 16);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254348120();
  sub_2543A3778();
  if (v27)
  {
    v41 = 1;
    sub_254348174();
    v29 = v35;
    sub_2543A3508();
    v30 = v37;
    sub_2543A3548();
    (*(v36 + 8))(v29, v30);
  }

  else
  {
    v40 = 0;
    sub_2543481C8();
    sub_2543A3508();
    v31 = v34;
    sub_2543A3548();
    (*(v33 + 8))(v17, v31);
  }

  return (*(v20 + 8))(v25, v18);
}

unint64_t sub_254348120()
{
  result = qword_27F5E14B0;
  if (!qword_27F5E14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14B0);
  }

  return result;
}

unint64_t sub_254348174()
{
  result = qword_27F5E14B8;
  if (!qword_27F5E14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14B8);
  }

  return result;
}

unint64_t sub_2543481C8()
{
  result = qword_27F5E14C0;
  if (!qword_27F5E14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14C0);
  }

  return result;
}

uint64_t TransportIdentitySection.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x259C0A1D0](*(v0 + 16));

  return sub_2543A28C8();
}

uint64_t TransportIdentitySection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v3);
  sub_2543A28C8();
  return sub_2543A3728();
}

void TransportIdentitySection.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14C8, &qword_2543ADA78);
  v58 = OUTLINED_FUNCTION_3(v3);
  v59 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14D0, &qword_2543ADA80);
  OUTLINED_FUNCTION_3(v8);
  v57 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v14 = v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14D8, &unk_2543ADA88);
  OUTLINED_FUNCTION_3(v15);
  v60 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v19);
  v21 = v55 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254348120();
  v23 = v62;
  sub_2543A3768();
  if (v23)
  {
    goto LABEL_9;
  }

  v55[2] = v8;
  v56 = v14;
  v62 = a1;
  v24 = v61;
  v25 = sub_2543A34E8();
  sub_2542DE280(v25, 0);
  if (v27 == v28 >> 1)
  {
    goto LABEL_7;
  }

  v55[1] = 0;
  if (v27 >= (v28 >> 1))
  {
    __break(1u);
    return;
  }

  v29 = *(v26 + v27);
  v30 = sub_2542DF244(v27 + 1);
  v32 = v31;
  v34 = v33;
  swift_unknownObjectRelease();
  if (v32 != v34 >> 1)
  {
LABEL_7:
    v40 = sub_2543A32E8();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0) + 48);
    *v42 = &type metadata for TransportIdentitySection;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_5_15();
    v45(v44, v15);
    a1 = v62;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v35 = v15;
  v36 = v29;
  if (v29)
  {
    LODWORD(v57) = v29;
    v64 = 1;
    sub_254348174();
    OUTLINED_FUNCTION_8_14();
    v37 = v24;
    v56 = v30;
    v38 = sub_2543A34A8();
    v39 = v60;
    v47 = v38;
    v49 = v48;
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_7_11();
    v51(v50);
    v36 = v57;
  }

  else
  {
    v63 = 0;
    sub_2543481C8();
    OUTLINED_FUNCTION_8_14();
    v37 = v24;
    v46 = sub_2543A34A8();
    v49 = v52;
    v59 = v46;
    swift_unknownObjectRelease();
    v53 = OUTLINED_FUNCTION_6_17();
    v54(v53);
    v47 = v59;
    v39 = v60;
  }

  (*(v39 + 8))(v21, v35);
  *v37 = v47;
  *(v37 + 8) = v49;
  *(v37 + 16) = v36;
  __swift_destroy_boxed_opaque_existential_0(v62);
}

uint64_t sub_2543487E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v3);
  sub_2543A28C8();
  return sub_2543A3728();
}

unint64_t sub_254348880()
{
  result = qword_27F5E14E8;
  if (!qword_27F5E14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransportIdentitySection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254348A30);
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

_BYTE *sub_254348A7C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x254348B18);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254348B54()
{
  result = qword_27F5E14F8;
  if (!qword_27F5E14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E14F8);
  }

  return result;
}

unint64_t sub_254348BAC()
{
  result = qword_27F5E1500;
  if (!qword_27F5E1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1500);
  }

  return result;
}

unint64_t sub_254348C04()
{
  result = qword_27F5E1508;
  if (!qword_27F5E1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1508);
  }

  return result;
}

unint64_t sub_254348C5C()
{
  result = qword_27F5E1510;
  if (!qword_27F5E1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1510);
  }

  return result;
}

unint64_t sub_254348CB4()
{
  result = qword_27F5E1518;
  if (!qword_27F5E1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1518);
  }

  return result;
}

unint64_t sub_254348D0C()
{
  result = qword_27F5E1520;
  if (!qword_27F5E1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1520);
  }

  return result;
}

unint64_t sub_254348D64()
{
  result = qword_27F5E1528;
  if (!qword_27F5E1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1528);
  }

  return result;
}

unint64_t sub_254348DBC()
{
  result = qword_27F5E1530;
  if (!qword_27F5E1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1530);
  }

  return result;
}

unint64_t sub_254348E14()
{
  result = qword_27F5E1538;
  if (!qword_27F5E1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1538);
  }

  return result;
}

unint64_t sub_254348E68()
{
  result = qword_27F5E1550;
  if (!qword_27F5E1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1550);
  }

  return result;
}

uint64_t sub_254348EBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E1540, &unk_2543ADF80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254348F34()
{
  result = qword_27F5E1560;
  if (!qword_27F5E1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E1560);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_14()
{
  v2 = *(v0 - 152);

  return sub_2543A3458();
}

uint64_t CarrySettings.InstallProfileResponse.success.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
  OUTLINED_FUNCTION_97();
  return *(v0 + v1);
}

uint64_t CarrySettings.InstallProfileResponse.success.setter(char a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
  result = OUTLINED_FUNCTION_2_5();
  *(v1 + v3) = a1;
  return result;
}

void *CarrySettings.InstallProfileResponse.error.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  OUTLINED_FUNCTION_97();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CarrySettings.InstallProfileResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  OUTLINED_FUNCTION_2_5();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CarrySettings.InstallProfileResponse.init(result:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error] = 0;
  if (v4 == 1)
  {
    v4 = 0;
    v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success] = 1;
  }

  else
  {
    v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success] = 0;
  }

  swift_beginAccess();
  *&v1[v5] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CarrySettings.InstallProfileResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CarrySettings.InstallProfileResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  *&v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error] = 0;
  v6 = sub_2543A2858();
  v7 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success] = v7;
  sub_2542F464C();
  v8 = sub_2543A3088();
  swift_beginAccess();
  v9 = *&v2[v5];
  *&v2[v5] = v8;

  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

Swift::Void __swiftcall CarrySettings.InstallProfileResponse.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
  OUTLINED_FUNCTION_97();
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  OUTLINED_FUNCTION_97();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_2543A2858();
    [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  }
}

uint64_t CarrySettings.InstallProfileResponse.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v16);
  if (!v17)
  {
    sub_2542E1050(v16);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v15;
    if (v15 == v1)
    {
    }

    else
    {
      v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
      OUTLINED_FUNCTION_97();
      LODWORD(v4) = v1[v4];
      v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
      OUTLINED_FUNCTION_97();
      if (v4 != v15[v5])
      {
LABEL_5:

        return 0;
      }

      v7 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
      OUTLINED_FUNCTION_97();
      v8 = *&v1[v7];
      v9 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
      OUTLINED_FUNCTION_97();
      v10 = *&v15[v9];
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        sub_2542F464C();
        v11 = v10;
        v12 = v8;
        v13 = sub_2543A30B8();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v10;

        if (v10)
        {
          v3 = v14;
          goto LABEL_5;
        }
      }
    }

    return 1;
  }

  return 0;
}

id CarrySettings.InstallProfileResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.InstallProfileResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CarrySettings.InstallProfileResponse.description.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_error;
  OUTLINED_FUNCTION_97();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = [v3 localizedDescription];
    v5 = sub_2543A2878();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000018, 0x80000002543B9850);
  sub_2543A3358();
  MEMORY[0x259C093D0](0x736563637573203ALL, 0xEA00000000003D73);
  v8 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings22InstallProfileResponse_success;
  OUTLINED_FUNCTION_97();
  if (*(v1 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x259C093D0](v9, v10);

  MEMORY[0x259C093D0](0x3D727265202CLL, 0xE600000000000000);
  MEMORY[0x259C093D0](v5, v7);

  MEMORY[0x259C093D0](62, 0xE100000000000000);
  return 0;
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O22InstallProfileResponseC6ResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254349A4C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

id sub_254349B40()
{
  OUTLINED_FUNCTION_3_4();
  ObjectType = swift_getObjectType();
  v7 = *v1;
  OUTLINED_FUNCTION_8_15();
  v11 = *((v10 & v9) + 0x50);
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v1[*(v8 + 112)], v5, v11);
  v13 = *v1;
  OUTLINED_FUNCTION_8_15();
  v15 = &v1[*(v14 + 96)];
  *v15 = v4;
  *(v15 + 1) = v3;
  v16 = *v1;
  OUTLINED_FUNCTION_8_15();
  v18 = &v1[*(v17 + 104)];
  *v18 = v2;
  *(v18 + 1) = v0;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v12 + 8))(v5, v11);
  return v19;
}

uint64_t sub_254349C78(void *a1, void *a2)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v13 = v4;
  v5 = [a1 description];
  sub_2543A2878();

  OUTLINED_FUNCTION_13_8();

  MEMORY[0x259C093D0](0x656D75736E6F6320, 0xEA00000000003D72);
  v6 = [a2 description];
  v7 = sub_2543A2878();
  v9 = v8;

  MEMORY[0x259C093D0](v7, v9);

  v10 = sub_2542DF684() & 1;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = v13;
  Logging.ulog(_:extended:)(v11, v10);
}

void sub_254349DBC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_254349C78(v6, v7);
}

uint64_t sub_254349E38(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x259C093D0](0x6C656E6E61686320, 0xE90000000000003DLL);
  v2 = [a1 description];
  sub_2543A2878();

  OUTLINED_FUNCTION_13_8();

  v3 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v3, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  v4 = sub_2542DF684();
  OUTLINED_FUNCTION_6_18(v4);
}

void sub_254349F60(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_2543A2878();
  v8 = a3;
  v10 = a5;
  v9 = a1;
  sub_254349E38(v8);
}

uint64_t sub_254349FF4()
{
  OUTLINED_FUNCTION_28();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[12] = swift_getObjectType();
  v1[13] = *MEMORY[0x277D85000] & *v0;

  return MEMORY[0x2822009F8](sub_25434A09C, 0, 0);
}

uint64_t sub_25434A09C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 32) = v3;
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v27 = v6;
  v7 = [v5 description];
  v8 = sub_2543A2878();
  v10 = v9;

  MEMORY[0x259C093D0](v8, v10);

  v11 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v11, 0xE800000000000000);
  v12 = [v4 description];
  v13 = sub_2543A2878();
  v15 = v14;

  MEMORY[0x259C093D0](v13, v15);

  v16 = sub_2542DF684() & 1;
  *(v0 + 25) = v16;
  v17._countAndFlagsBits = 0xD00000000000003BLL;
  v17._object = v27;
  Logging.ulog(_:extended:)(v17, v16);

  v18 = *((*MEMORY[0x277D85000] & *v3) + 0x70);
  v19 = *(v2 + 88);
  *(v0 + 112) = v19;
  v20 = *(v19 + 24);
  v21 = *(v2 + 80);
  *(v0 + 120) = v21;
  v26 = (v20 + *v20);
  v22 = v20[1];
  v23 = swift_task_alloc();
  *(v0 + 128) = v23;
  *v23 = v0;
  v23[1] = sub_25434A324;
  v24 = *(v0 + 80);

  return v26(v0 + 16, v24, v21, v19);
}

uint64_t sub_25434A324()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_25434A410, 0, 0);
}

uint64_t sub_25434A410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    sub_25434B7E8(*(v0 + 16));
    *(v0 + 40) = v4;
    v5 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(60, 0xD000000000000015, 0x80000002543B9A00, v5 & 1, v3, &off_286649E88);
    v1 = 0;
  }

  else
  {
    v6 = *(v0 + 96);
    *(v0 + 48) = *(v0 + 88);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 25);
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000001FLL, 0x80000002543B9A20);
    *(v0 + 56) = v1;
    swift_getAssociatedTypeWitness();
    swift_getWitnessTable();
    sub_2543A35D8();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    Logging.ulog(_:extended:)(v10, v9);
  }

  v11 = *(v0 + 8);

  return v11(v2 ^ 1u, v1);
}

uint64_t sub_25434A5D8(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock)
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

  return sub_254366AA8(&unk_2543AE0A8, v11);
}

uint64_t sub_25434A67C(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_25434A76C;

  return sub_254349FF4();
}

uint64_t sub_25434A76C(char a1, void *a2)
{
  OUTLINED_FUNCTION_41();
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = v5[4];
  v10 = v5[3];
  v11 = v5[2];
  v12 = *v2;
  OUTLINED_FUNCTION_7();
  *v13 = v12;

  (v7)[2](v7, a1 & 1, a2);
  _Block_release(v7);

  v14 = *(v12 + 8);

  return v14();
}

uint64_t sub_25434A90C(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_16_6();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v20 = v8;
  v9 = [a1 description];
  sub_2543A2878();

  v10 = OUTLINED_FUNCTION_9_10();
  MEMORY[0x259C093D0](v10);

  OUTLINED_FUNCTION_10_13();
  v11 = [a2 description];
  sub_2543A2878();

  v12 = OUTLINED_FUNCTION_9_10();
  MEMORY[0x259C093D0](v12);

  v13 = sub_2542DF684() & 1;
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = v20;
  Logging.ulog(_:extended:)(v14, v13);

  v15 = sub_2543A2BB8();
  OUTLINED_FUNCTION_20_4(v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v3;
  v16[5] = a2;
  v17 = v3;
  v18 = a2;
  OUTLINED_FUNCTION_14_7();
}

uint64_t sub_25434AAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25434AAF8, 0, 0);
}

uint64_t sub_25434AAF8()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 16);
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  OUTLINED_FUNCTION_0_29(v1);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_11_13(v5);

  return v7(v6);
}

void sub_25434ABCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_25434A90C(v6, v7);
}

uint64_t sub_25434AC48(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_16_6();
  sub_2543A3298();

  OUTLINED_FUNCTION_32_0();
  v12 = [a1 description];
  v13 = sub_2543A2878();
  v15 = v14;

  MEMORY[0x259C093D0](v13, v15);

  OUTLINED_FUNCTION_10_13();
  v16 = [a2 description];
  v17 = sub_2543A2878();
  v19 = v18;

  MEMORY[0x259C093D0](v17, v19);

  v20 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v20, 0xE700000000000000);
  v21 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF340, &qword_2543A68E8);
  v22 = sub_2543A2888();
  MEMORY[0x259C093D0](v22);

  sub_2542DF684();
  v23._countAndFlagsBits = OUTLINED_FUNCTION_9_10();
  Logging.ulog(_:extended:)(v23, v24);

  v25 = sub_2543A2BB8();
  OUTLINED_FUNCTION_20_4(v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v6;
  v26[5] = a2;
  v27 = v6;
  v28 = a2;
  OUTLINED_FUNCTION_14_7();
}

uint64_t sub_25434AE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25434AE90, 0, 0);
}

uint64_t sub_25434AE90()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 16);
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  OUTLINED_FUNCTION_0_29(v1);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_11_13(v5);

  return v7(v6);
}

uint64_t sub_25434AF64()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void sub_25434B048(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v19 = a7;
  sub_25434AC48(v12, v13, v17, v18, a7);
}

uint64_t sub_25434B100(void *a1, void *a2)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_1_26();
  sub_2543A3298();
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x259C093D0](0x656375646F727020, 0xEA00000000003D72);
  v4 = [a1 description];
  v5 = sub_2543A2878();
  v7 = v6;

  MEMORY[0x259C093D0](v5, v7);

  v8 = OUTLINED_FUNCTION_19_5();
  MEMORY[0x259C093D0](v8, 0xE800000000000000);
  v9 = [a2 description];
  sub_2543A2878();

  OUTLINED_FUNCTION_13_8();

  v10 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v10, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A3358();
  v11 = sub_2542DF684();
  OUTLINED_FUNCTION_6_18(v11);
}

void sub_25434B284(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = a1;
  sub_25434B100(v8, v9);
}

uint64_t sub_25434B354(uint64_t *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x60) + 8);

  OUTLINED_FUNCTION_18_5();
  v6 = *(a1 + *(v5 + 104) + 8);

  OUTLINED_FUNCTION_18_5();
  v8 = *(*(*((v3 & v2) + 0x50) - 8) + 8);
  v9 = a1 + *(v7 + 112);

  return v8(v9);
}

uint64_t sub_25434B440()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25434B7FC;
  OUTLINED_FUNCTION_2_26();

  return sub_25434AE70(v7, v8, v9, v10, v11);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25434B53C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25434B7FC;
  OUTLINED_FUNCTION_2_26();

  return sub_25434AAD8(v7, v8, v9, v10, v11);
}

uint64_t sub_25434B5F0()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25434B648()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25434B704;
  OUTLINED_FUNCTION_2_26();

  return v8();
}

uint64_t sub_25434B704()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void OUTLINED_FUNCTION_0_29(uint64_t a1@<X8>)
{
  v2 = (a1 + v1);
  v3 = v2[1];
  v4 = *v2 + **v2;
}

void OUTLINED_FUNCTION_6_18(char a1)
{

  Logging.ulog(_:_:extended:)(90, v2, v3, a1 & 1, v1, v4);
}

void OUTLINED_FUNCTION_10_13()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_12_12()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_13_8()
{

  JUMPOUT(0x259C093D0);
}

void OUTLINED_FUNCTION_14_7()
{

  sub_2542CCD54();
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t sub_25434B9B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646570706F7473 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

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

uint64_t sub_25434BA84(char a1)
{
  if (a1)
  {
    return 0x646570706F7473;
  }

  else
  {
    return 0x64657461647075;
  }
}

uint64_t sub_25434BAB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x566C616974696E69 && a2 == 0xEC00000065756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_25434BB50(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_2542F4000(*a1, *a2);
}

uint64_t sub_25434BB68(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2542F70E4(*v1);
}

uint64_t sub_25434BB7C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_2542F70BC(a1, *v2);
}

uint64_t sub_25434BB90(uint64_t a1, void *a2)
{
  sub_2543A36E8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_2542F70BC(v8, *v2);
  return sub_2543A3728();
}

uint64_t sub_25434BBDC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_25434BA84(*v1);
}

uint64_t sub_25434BBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_25434B9B4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_25434BC24(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return OUTLINED_FUNCTION_12_0();
}

uint64_t sub_25434BC50@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_2542F70B4();
  *a2 = result;
  return result;
}

uint64_t sub_25434BC84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25434BCD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_25434BD2C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_25434BD3C@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_2542DC370();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25434BD8C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = OUTLINED_FUNCTION_0_1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25434BDC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25434BE18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_25434BE6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_25434BE78(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_2542E135C();
}

uint64_t sub_25434BE9C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_2542E1334();
}

uint64_t sub_25434BEC4(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_25434BB30();
}

uint64_t sub_25434BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_25434BAB4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_25434BF0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25434BF60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void ObservationLifeCycleResponse.ObservationResult.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v66 = v0;
  v67 = v1;
  v3 = v2;
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[4];
  v8 = v4;
  v63 = v4;
  OUTLINED_FUNCTION_8_16();
  v9 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult.StoppedCodingKeys();
  OUTLINED_FUNCTION_2_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v60 = v10;
  v61 = v9;
  v11 = sub_2543A3588();
  v12 = OUTLINED_FUNCTION_3(v11);
  v58 = v13;
  v59 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_0();
  v54 = v17;
  OUTLINED_FUNCTION_8_16();
  v18 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult.UpdatedCodingKeys();
  OUTLINED_FUNCTION_4_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v53 = v18;
  v51[1] = v19;
  v20 = sub_2543A3588();
  v21 = OUTLINED_FUNCTION_3(v20);
  v56 = v22;
  v57 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_0();
  v52 = v26;
  v55 = *(v6 - 8);
  v27 = *(v55 + 64);
  v29 = MEMORY[0x28223BE20](v28);
  v51[0] = v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v8 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v34 = v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_16();
  v62 = v7;
  type metadata accessor for ObservationLifeCycleResponse.ObservationResult.CodingKeys();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  v35 = sub_2543A3588();
  v36 = OUTLINED_FUNCTION_3(v35);
  v64 = v37;
  v65 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v40);
  v42 = v51 - v41;
  v43 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_2543A3778();
  (*(v31 + 16))(v34, v66, v63);
  if (__swift_getEnumTagSinglePayload(v34, 1, v6) == 1)
  {
    v44 = v54;
    v45 = v65;
    sub_2543A3508();
    (*(v58 + 8))(v44, v59);
    (*(v64 + 8))(v42, v45);
  }

  else
  {
    v46 = v55;
    v47 = v51[0];
    (*(v55 + 32))(v51[0], v34, v6);
    v48 = v52;
    v49 = v65;
    sub_2543A3508();
    v50 = v57;
    sub_2543A3578();
    (*(v56 + 8))(v48, v50);
    (*(v46 + 8))(v47, v6);
    (*(v64 + 8))(v42, v49);
  }

  OUTLINED_FUNCTION_15_3();
}

void ObservationLifeCycleResponse.ObservationResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v103 = v30;
  v31 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult.StoppedCodingKeys();
  OUTLINED_FUNCTION_2_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v101 = v32;
  v102 = v31;
  v95 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v95);
  v94 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_0();
  v100 = v37;
  OUTLINED_FUNCTION_9_11();
  v38 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult.UpdatedCodingKeys();
  OUTLINED_FUNCTION_4_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v97 = v39;
  v98 = v38;
  v93 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v93);
  v92 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_0();
  v99 = v44;
  OUTLINED_FUNCTION_9_11();
  type metadata accessor for ObservationLifeCycleResponse.ObservationResult.CodingKeys();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  v106 = sub_2543A34F8();
  OUTLINED_FUNCTION_3(v106);
  v108 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13_9();
  v107 = v27;
  v96 = v25;
  v49 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  v50 = OUTLINED_FUNCTION_3(v49);
  v104 = v51;
  v105 = v50;
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v50);
  v56 = &v88 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v88 - v57;
  v59 = v29[4];
  __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  sub_2543A3768();
  v60 = v29;
  if (!v20)
  {
    v89 = v56;
    v90 = v58;
    v62 = v105;
    v61 = v106;
    v63 = v107;
    v113 = v60;
    v91 = v21;
    *&v109 = sub_2543A34E8();
    sub_2543A2B38();
    swift_getWitnessTable();
    *&v111 = sub_2543A3178();
    *(&v111 + 1) = v64;
    *&v112 = v65;
    *(&v112 + 1) = v66;
    sub_2543A3168();
    swift_getWitnessTable();
    sub_2543A2F68();
    v67 = v109;
    if (v109 == 2 || (v88 = v111, v109 = v111, v110 = v112, (sub_2543A2F88() & 1) == 0))
    {
      v75 = sub_2543A32E8();
      swift_allocError();
      v77 = v76;
      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0) + 48);
      *v77 = v62;
      v79 = v91;
      sub_2543A3468();
      sub_2543A32D8();
      (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D84160], v75);
      swift_willThrow();
      (*(v108 + 8))(v79, v61);
      swift_unknownObjectRelease();
    }

    else if (v67)
    {
      LOBYTE(v109) = 1;
      v68 = v100;
      OUTLINED_FUNCTION_14_8();
      v69 = v63;
      v70 = v103;
      v71 = v104;
      (*(v94 + 8))(v68, v95);
      v72 = OUTLINED_FUNCTION_7_12();
      v73(v72);
      OUTLINED_FUNCTION_6_19();
      swift_unknownObjectRelease();
      v74 = v90;
      __swift_storeEnumTagSinglePayload(v90, 1, 1, v69);
      (*(v71 + 32))(v70, v74, v62);
    }

    else
    {
      LOBYTE(v109) = 0;
      OUTLINED_FUNCTION_14_8();
      v80 = v104;
      sub_2543A34D8();
      v81 = OUTLINED_FUNCTION_12_13(&a14);
      v82(v81);
      v83 = OUTLINED_FUNCTION_7_12();
      v84(v83);
      OUTLINED_FUNCTION_6_19();
      swift_unknownObjectRelease();
      v85 = v89;
      __swift_storeEnumTagSinglePayload(v89, 0, 1, v63);
      v86 = *(v80 + 32);
      v87 = v90;
      v86(v90, v85, v62);
      v86(v103, v87, v62);
    }

    v60 = v113;
  }

  __swift_destroy_boxed_opaque_existential_0(v60);
  OUTLINED_FUNCTION_15_3();
}

uint64_t ObservationLifeCycleResponse.result.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = type metadata accessor for ObservationLifeCycleResponse.ObservationResult();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2, v7);
}

uint64_t sub_25434CB70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}