uint64_t sub_1D533A284()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  sub_1D560C358();
  sub_1D560C338();
  OUTLINED_FUNCTION_202_5();
  v0[31] = v5;
  v0[32] = v6;
  v8 = *(v3 + 8);
  v7 = v3 + 8;
  v9 = OUTLINED_FUNCTION_159();
  v10(v9);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v11 = v0[27];
  v12 = v0[18];
  v13 = sub_1D560C758();
  v0[33] = OUTLINED_FUNCTION_375(v13, qword_1EC87C110);
  OUTLINED_FUNCTION_8_101();
  v14 = OUTLINED_FUNCTION_71();
  sub_1D5341D10(v14, v15);

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_309_0();

  v17 = os_log_type_enabled(v16, v7);
  v18 = v0[27];
  if (v17)
  {
    v19 = v0[19];
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_142_10();
    *v1 = 136446722;
    v20 = OUTLINED_FUNCTION_93();
    v23 = sub_1D4E6835C(v20, v21, v22);
    OUTLINED_FUNCTION_42_39(v23);
    MusicPin.description.getter();
    OUTLINED_FUNCTION_178_2();
    OUTLINED_FUNCTION_3_144();
    sub_1D5341038(v18, v24);
    v25 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v25, v26, v27);
    OUTLINED_FUNCTION_183();

    *(v1 + 14) = v18;
    *(v1 + 22) = 2050;
    *(v1 + 24) = v19;
    _os_log_impl(&dword_1D4E3F000, v16, v7, "[%{public}s] Moving pin %{public}s to position %{public}ld.", v1, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_3_144();
    sub_1D5341038(v18, v28);
  }

  v29 = v0[20];
  sub_1D4E5A1CC();
  v0[34] = sub_1D5329168();

  v0[35] = sub_1D56153C8();
  v0[36] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DFA0](v30, v31, v32);
}

uint64_t sub_1D533A4A0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[25];
  v5 = v0[18];
  v4 = v0[19];

  v6 = OUTLINED_FUNCTION_93();
  sub_1D520186C(v6);

  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D533A524()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  (*(v6 + 104))(v4, *MEMORY[0x1E6976988], v5);
  v9 = *(v6 + 16);
  v10 = OUTLINED_FUNCTION_15_2();
  v11(v10);
  OUTLINED_FUNCTION_8_101();
  sub_1D5341D10(v8, v3);
  OUTLINED_FUNCTION_140_3();
  sub_1D4ECBE48();
  v13 = v12;
  v0[37] = v12;
  (*(v6 + 8))(v4, v5);
  v0[38] = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest) initWithEntityToMove:v13 position:v7];

  v14 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    v16 = v0[31];
    v15 = v0[32];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v17 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    *(v5 + 4) = sub_1D4E6835C(v17, v15, v18);
    OUTLINED_FUNCTION_96_14();
    _os_log_impl(v19, v20, v21, v22, v5, 0xCu);
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_146_7();
  v23 = v0[20];
  v24 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v24);
  v0[39] = v25;
  v26 = v25;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  v0[2] = v27;
  v28 = OUTLINED_FUNCTION_99_14();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v29);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  v0[13] = v30;
  v0[14] = v28;
  OUTLINED_FUNCTION_150_11(v31, sel_performPinStateChangeRequest_completionHandler_);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DEC8](v32);
}

uint64_t sub_1D533A730()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533A82C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);

  v4 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v7);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v8, v9, "[%{public}s] Completed move pin change request. Discarding transient state.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 160);
  sub_1D4E5A1CC();
  *(v0 + 328) = sub_1D5329168();

  *(v0 + 336) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_14_47();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D533A934()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[25];

  OUTLINED_FUNCTION_45_1();
  sub_1D5201D1C();

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[32];
  v15 = v12[33];

  v16 = sub_1D560C738();
  sub_1D56156E8();

  v17 = OUTLINED_FUNCTION_152_0();
  v18 = v12[37];
  v19 = v12[38];
  v20 = v12[32];
  if (v17)
  {
    v21 = v12[31];
    v22 = v12[25];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v23 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    v25 = sub_1D4E6835C(v23, v20, v24);

    *(v13 + 4) = v25;
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v26, v27, "[%{public}s] Discarded transient state for move pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    v22 = v12[25];
    v28 = v12[32];
  }

  sub_1D5341038(v22, type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord);
  v29 = v12[30];
  v30 = v12[26];
  v31 = v12[27];
  v33 = v12[24];
  v32 = v12[25];
  v34 = v12[23];

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1D533AC5C()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[25];

  OUTLINED_FUNCTION_371();

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v17 = v14[32];
  v16 = v14[33];

  v18 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v19 = OUTLINED_FUNCTION_165_0();
  v20 = v14[32];
  if (v19)
  {
    v21 = v14[31];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v22);
    OUTLINED_FUNCTION_283_0();
    *(v15 + 4) = v21;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v23, v24, "[%{public}s] Discarded transient state for move change request.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  v25 = v14[40];
  v27 = v14[37];
  v26 = v14[38];
  v28 = v14[30];
  v30 = v14[26];
  v29 = v14[27];
  v32 = v14[24];
  v31 = v14[25];
  v33 = v14[23];
  swift_willThrow();

  OUTLINED_FUNCTION_4_108();
  sub_1D5341038(v31, v34);

  OUTLINED_FUNCTION_55();
  v35 = v14[40];
  OUTLINED_FUNCTION_89();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t MusicLibrary.updatePin(_:defaultAction:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 144) = v4;
  *(v1 + 152) = v0;
  v5 = sub_1D56131C8();
  *(v1 + 160) = v5;
  OUTLINED_FUNCTION_69(v5);
  *(v1 + 168) = v6;
  v8 = *(v7 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_167();
  *(v1 + 184) = swift_task_alloc();
  v9 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_259_0(v12);
  v13 = type metadata accessor for MusicPin();
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_167();
  *(v1 + 208) = swift_task_alloc();
  v16 = sub_1D560C368();
  *(v1 + 216) = v16;
  OUTLINED_FUNCTION_69(v16);
  *(v1 + 224) = v17;
  v19 = *(v18 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_127();
  *(v1 + 354) = *v3;
  v20 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D533AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_72_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v24 = *(v20 + 224);
  v23 = *(v20 + 232);
  v25 = *(v20 + 216);
  sub_1D560C358();
  sub_1D560C338();
  OUTLINED_FUNCTION_202_5();
  *(v20 + 240) = v26;
  *(v20 + 248) = v27;
  v28 = *(v24 + 8);
  v29 = OUTLINED_FUNCTION_159();
  v30(v29);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v31 = *(v20 + 208);
  v32 = *(v20 + 144);
  v33 = sub_1D560C758();
  *(v20 + 256) = OUTLINED_FUNCTION_375(v33, qword_1EC87C110);
  OUTLINED_FUNCTION_8_101();
  v34 = OUTLINED_FUNCTION_71();
  sub_1D5341D10(v34, v35);

  v36 = sub_1D560C738();
  v37 = sub_1D56156E8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v20 + 354);
    v39 = *(v20 + 208);
    v40 = OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_355_0();
    OUTLINED_FUNCTION_279_0();
    *v40 = 136446722;
    v41 = OUTLINED_FUNCTION_93();
    *(v40 + 4) = sub_1D4E6835C(v41, v42, v43);
    *(v40 + 12) = 2082;
    MusicPin.description.getter();
    OUTLINED_FUNCTION_178_2();
    OUTLINED_FUNCTION_3_144();
    sub_1D5341038(v39, v44);
    v45 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v45, v46, v47);
    OUTLINED_FUNCTION_183();

    *(v40 + 14) = v39;
    *(v40 + 22) = 2082;
    *(v20 + 353) = v38;
    v48 = sub_1D5614DB8();
    v50 = sub_1D4E6835C(v48, v49, &a9);

    *(v40 + 24) = v50;
    _os_log_impl(&dword_1D4E3F000, v36, v37, "[%{public}s] Updating pin %{public}s to have action %{public}s.", v40, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v51 = *(v20 + 208);

    OUTLINED_FUNCTION_3_144();
    sub_1D5341038(v51, v52);
  }

  v53 = *(v20 + 354);
  v54 = *(v20 + 152);
  sub_1D4E5A1CC();
  *(v20 + 264) = sub_1D5329168();

  *(v20 + 352) = v53;
  *(v20 + 272) = sub_1D56153C8();
  *(v20 + 280) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v55, v56, v57);
}

uint64_t sub_1D533B1AC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[24];
  v4 = v0[18];

  sub_1D5201AC0(v4, v0 + 44);

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D533B234()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 354);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  (*(v4 + 104))(*(v0 + 184), *MEMORY[0x1E6976988], *(v0 + 160));
  v6 = *(v4 + 16);
  v7 = OUTLINED_FUNCTION_98();
  v8(v7);
  OUTLINED_FUNCTION_8_101();
  v9 = OUTLINED_FUNCTION_131();
  sub_1D5341D10(v9, v10);
  OUTLINED_FUNCTION_222();
  sub_1D4ECBE48();
  v12 = v11;
  *(v0 + 288) = v11;
  v13 = *(v4 + 8);
  v14 = OUTLINED_FUNCTION_81_0();
  v15(v14);
  v16 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest);
  v18 = *(v0 + 248);
  v17 = *(v0 + 256);
  v19 = [v16 initWithEntityToUpdate:v12 defaultAction:qword_1D5653F90[v1]];
  *(v0 + 296) = v19;

  v19;
  v20 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_88_14();
  if (OUTLINED_FUNCTION_152_0())
  {
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v23 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    *(v1 + 4) = sub_1D4E6835C(v23, v21, v24);
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v25, v26, "[%{public}s] Performing update pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_146_7();
  v27 = *(v0 + 152);
  v28 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v28);
  *(v0 + 304) = v29;
  v30 = v29;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  *(v0 + 16) = v31;
  v32 = OUTLINED_FUNCTION_99_14();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v33);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  *(v0 + 104) = v34;
  *(v0 + 112) = v32;
  OUTLINED_FUNCTION_150_11(v35, sel_performPinStateChangeRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v36);
}

uint64_t sub_1D533B440()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533B53C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 296);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);

  v5 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v8);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v9, v10, "[%{public}s] Completed update pin change request. Discarding transient state.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  v11 = *(v0 + 272);
  v12 = *(v0 + 152);
  sub_1D4E5A1CC();
  *(v0 + 320) = sub_1D5329168();

  *(v0 + 328) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_14_47();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D533B648()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[24];

  OUTLINED_FUNCTION_45_1();
  sub_1D5201D1C();

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[31];
  v15 = v12[32];

  v16 = sub_1D560C738();
  sub_1D56156E8();

  v17 = OUTLINED_FUNCTION_152_0();
  v18 = v12[36];
  v19 = v12[37];
  v20 = v12[31];
  if (v17)
  {
    v21 = v12[30];
    v22 = v12[24];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v23 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    v25 = sub_1D4E6835C(v23, v20, v24);

    *(v13 + 4) = v25;
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v26, v27, "[%{public}s] Discarded transient state for update pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    v22 = v12[24];
    v28 = v12[31];
  }

  sub_1D5341038(v22, type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord);
  v29 = v12[29];
  v30 = v12[25];
  v31 = v12[26];
  v33 = v12[23];
  v32 = v12[24];
  v34 = v12[22];

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1D533B978()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[24];

  OUTLINED_FUNCTION_371();

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v17 = v14[31];
  v16 = v14[32];

  v18 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v19 = OUTLINED_FUNCTION_165_0();
  v20 = v14[31];
  if (v19)
  {
    v21 = v14[30];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v22);
    OUTLINED_FUNCTION_283_0();
    *(v15 + 4) = v21;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v23, v24, "[%{public}s] Discarded transient state for update change request.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  v25 = v14[39];
  v27 = v14[36];
  v26 = v14[37];
  v28 = v14[29];
  v30 = v14[25];
  v29 = v14[26];
  v32 = v14[23];
  v31 = v14[24];
  v33 = v14[22];
  swift_willThrow();

  OUTLINED_FUNCTION_4_108();
  sub_1D5341038(v31, v34);

  OUTLINED_FUNCTION_55();
  v35 = v14[39];
  OUTLINED_FUNCTION_89();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t MusicLibrary.new_dislike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_31(v1, v2, v3);
  v0[57] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v8 = OUTLINED_FUNCTION_360(v7);
  v9 = OUTLINED_FUNCTION_296_0(v8);
  v10 = OUTLINED_FUNCTION_367_0(v9);
  v0[61] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[62] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_127();
  v15 = OUTLINED_FUNCTION_359_0(v14);
  v0[64] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[65] = v16;
  v18 = *(v17 + 64);
  v0[66] = OUTLINED_FUNCTION_127();
  v19 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D533BFFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
    v5 = *(v1 + 544);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D533C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_44_32();
  v22 = OUTLINED_FUNCTION_140_3();
  v21(v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v24 = OUTLINED_FUNCTION_165_0();
  v25 = *(v19 + 592);
  if (v24)
  {
    OUTLINED_FUNCTION_16_80();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_331_0();
    *v18 = 136446466;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    v29 = OUTLINED_FUNCTION_5_108();
    v30(v29);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v31 = OUTLINED_FUNCTION_9_96();
    v32(v31);
    v33 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v33, v34, v35);
    OUTLINED_FUNCTION_125_7();
    *(v18 + 14) = v20;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Completed dislike operation for item %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_105_14();

    v38 = OUTLINED_FUNCTION_70();
    v25(v38);
  }

  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_5();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D533C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[76];
  v14 = v12[75];
  v15 = v12[70];
  v16 = v12[69];
  v17 = v12[66];
  v18 = v12[63];
  v20 = v12[59];
  v19 = v12[60];
  v21 = v12[58];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v12 + 18);
  OUTLINED_FUNCTION_292_2(v12 + 38);

  OUTLINED_FUNCTION_55();
  v22 = v12[76];
  OUTLINED_FUNCTION_73_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t MusicLibrary.new_undoDislike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_31(v1, v2, v3);
  v0[57] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v8 = OUTLINED_FUNCTION_360(v7);
  v9 = OUTLINED_FUNCTION_296_0(v8);
  v10 = OUTLINED_FUNCTION_367_0(v9);
  v0[61] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[62] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_127();
  v15 = OUTLINED_FUNCTION_359_0(v14);
  v0[64] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[65] = v16;
  v18 = *(v17 + 64);
  v0[66] = OUTLINED_FUNCTION_127();
  v19 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D533C810()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
    v5 = *(v1 + 544);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D533C910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_44_32();
  v22 = OUTLINED_FUNCTION_140_3();
  v21(v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v24 = OUTLINED_FUNCTION_165_0();
  v25 = *(v19 + 592);
  if (v24)
  {
    OUTLINED_FUNCTION_16_80();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_331_0();
    *v18 = 136446466;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    v29 = OUTLINED_FUNCTION_5_108();
    v30(v29);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v31 = OUTLINED_FUNCTION_9_96();
    v32(v31);
    v33 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v33, v34, v35);
    OUTLINED_FUNCTION_125_7();
    *(v18 + 14) = v20;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Completed undodislike operation for item %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_105_14();

    v38 = OUTLINED_FUNCTION_70();
    v25(v38);
  }

  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_5();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t MusicLibrary.duplicateCount<A, B>(for:action:)()
{
  OUTLINED_FUNCTION_60();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v0[2] = v7;
  v0[3] = v8;
  v9 = *(v5 - 8);
  v0[10] = v9;
  v10 = *(v9 + 64);
  v0[11] = OUTLINED_FUNCTION_127();
  v11 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D533CB34()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v2[1] = *(v0 + 32);
  v2[2] = v3;
  v2[3] = v4;
  LOBYTE(v1) = sub_1D56150A8();

  if (v1)
  {
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_117_11();
    return sub_1D5615E08();
  }

  else
  {
    v6 = *(v0 + 88);
    v20 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);
    v10 = OUTLINED_FUNCTION_48_22(*(v0 + 80));
    v11(v10);
    OUTLINED_FUNCTION_4_32();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_62_5();
    sub_1D5615318();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
    OUTLINED_FUNCTION_68_4();
    v12 = sub_1D5615D38();
    *(v0 + 96) = v12;

    v13 = *(v20 + 8);
    v19 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    *v15 = v0;
    v15[1] = sub_1D533CD80;
    v16 = *(v0 + 64);
    v17 = *(v0 + 40);
    v18 = *(v0 + 24);

    return v19(v12, v17, v16);
  }
}

uint64_t sub_1D533CD80()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  v5[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v15 = v5[11];
    v14 = v5[12];

    OUTLINED_FUNCTION_50();

    return v16(v3);
  }
}

uint64_t sub_1D533CEBC()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[11];
  v1 = v0[12];

  OUTLINED_FUNCTION_55();
  v4 = v0[14];

  return v3();
}

uint64_t sub_1D533CF20(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v9[-1] - v4, a1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4540, &unk_1D5653F50);
  v6 = swift_dynamicCast();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return v6;
}

uint64_t MusicLibrary.duplicateCount<A, B>(for:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a5;
  v8[7] = a8;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D533D060()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[6];
  v14 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC38, &unk_1D562E488);
  OUTLINED_FUNCTION_311_0();
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = xmmword_1D561C050;
  *(v4 + 56) = v2;
  *(v4 + 64) = v1;
  __swift_allocate_boxed_opaque_existential_0((v4 + 32));
  OUTLINED_FUNCTION_24_0(v2);
  (*(v5 + 16))();
  v6 = *(v14 + 8);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1D533D1F4;
  v9 = v0[7];
  v10 = v0[5];
  v11 = v0[3];

  return v13(v4, v10, v9);
}

uint64_t sub_1D533D1F4()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 64);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_1D533D330()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t MusicLibrary.setTrackPopularity<A>(for:correspondingCatalogTracks:)()
{
  OUTLINED_FUNCTION_80();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v5 = sub_1D5613AF8();
  v0[22] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[23] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_259_0(v9);
  v10 = sub_1D56131C8();
  v0[25] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[26] = v11;
  v13 = *(v12 + 64) + 15;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  v17 = sub_1D5613D28();
  v0[30] = v17;
  OUTLINED_FUNCTION_69(v17);
  v0[31] = v18;
  v20 = *(v19 + 64);
  v0[32] = OUTLINED_FUNCTION_127();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  v0[33] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_1_0();
  v0[34] = v24;
  v26 = *(v25 + 64);
  v0[35] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[36] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_69(AssociatedTypeWitness);
  v0[37] = v28;
  v30 = *(v29 + 64);
  v0[38] = OUTLINED_FUNCTION_127();
  v31 = sub_1D560D838();
  v0[39] = v31;
  OUTLINED_FUNCTION_69(v31);
  v0[40] = v32;
  v34 = *(v33 + 64);
  v0[41] = OUTLINED_FUNCTION_167();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  v0[44] = OUTLINED_FUNCTION_127();
  v38 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v38, v39, v40);
}

uint64_t sub_1D533D678()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[22];
  v6 = v0[18];
  sub_1D560EC98();
  sub_1D560D5C8();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_81_0();
  v7(v8);
  sub_1D560D4C8();
  v9 = OUTLINED_FUNCTION_75_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v1);
  v11 = v0[44];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v0[44], &unk_1EC7EBF20, &unk_1D561F530);
    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
LABEL_87:
    OUTLINED_FUNCTION_212_5();
    v114 = v0[24];

    OUTLINED_FUNCTION_55();

    return v108();
  }

  v110 = v7;
  v111 = v0[38];
  v13 = v0[34];
  v14 = v0[35];
  v15 = v0[31];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[19];
  sub_1D560D4B8();
  OUTLINED_FUNCTION_24_0(v1);
  v20 = *(v19 + 8);
  v21 = OUTLINED_FUNCTION_159();
  v22(v21);

  v113 = [objc_allocWithZone(MusicKit_SoftLinking_MPMediaLibraryAlbumAppData) init];
  v0[45] = v113;
  (*(v13 + 16))(v14, v18, v17);
  OUTLINED_FUNCTION_45_3();
  sub_1D5614F98();
  v112 = (v15 + 32);
  v23 = (v15 + 8);
  while (1)
  {
    v24 = v0[38];
    v25 = v0[36];
    v26 = v0[33];
    v27 = v0[30];
    v29 = v0[20];
    v28 = v0[21];
    swift_getAssociatedConformanceWitness();
    sub_1D5615938();
    OUTLINED_FUNCTION_57(v26, 1, v27);
    if (v30)
    {
      v81 = v0[27];
      v82 = v0[28];
      v84 = v0[25];
      v83 = v0[26];
      v85 = v0[23];
      v86 = v0[24];
      v87 = v0[22];
      v88 = v0[18];
      (*(v0[37] + 8))(v0[38], v0[36]);
      v89 = *MEMORY[0x1E6976988];
      v90 = OUTLINED_FUNCTION_239_2(v83);
      v91(v90);
      (*(v83 + 16))(v81, v82, v84);
      v92 = *(v85 + 16);
      v93 = OUTLINED_FUNCTION_164_4();
      v94(v93);
      sub_1D4ECB9E8();
      v96 = v95;
      v0[46] = v95;
      v97 = *(v83 + 8);
      v98 = OUTLINED_FUNCTION_201();
      v99(v98);
      v100 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest) init];
      v0[47] = v100;
      v0[2] = v0;
      v0[3] = sub_1D533DEF4;
      v101 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
      v0[10] = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
      v0[12] = sub_1D5341F94;
      v0[13] = &block_descriptor_151;
      v0[14] = v101;
      [v100 performWithAlbum:v96 appData:? completionHandler:?];
      v53 = (v0 + 2);

      return MEMORY[0x1EEE6DEC8](v53);
    }

    (*v112)(v0[32], v0[33], v0[30]);
    v31 = sub_1D5613C68();
    if (v32)
    {
      goto LABEL_86;
    }

    v33 = *&v31;
    v34 = v0[42];
    v35 = v0[39];
    v36 = v0[32];
    v38 = v0[29];
    v37 = v0[30];
    sub_1D560EC98();
    sub_1D560D7A8();
    v39 = OUTLINED_FUNCTION_258();
    v110(v39);
    v40 = sub_1D560F148();
    OUTLINED_FUNCTION_57(v38, 1, v40);
    if (v30)
    {
      v41 = v0[41];
      v42 = v0[39];
      v43 = v0[32];
      v44 = v0[30];
      sub_1D4E7661C(v0[29], &unk_1EC7F1970, &qword_1D561F4A0);
      sub_1D560EC98();
      v49 = sub_1D560D628();
      v51 = v45;
      v53 = (v110)(v41, v42);
      if (!v51)
      {
        v46 = v0[32];
        v53 = _s16MusicKitInternal0A18SuggestedPivotSeedV2id0aB00A6ItemIDVvg_0();
        v49 = v53;
        v51 = v47;
      }
    }

    else
    {
      v48 = v0[29];
      v49 = sub_1D560F138();
      v51 = v50;
      OUTLINED_FUNCTION_24_0(v40);
      v53 = (*(v52 + 8))(v48, v40);
    }

    v54 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) != 0)
    {
      v55 = HIBYTE(v51) & 0xF;
    }

    else
    {
      v55 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55)
    {

LABEL_86:
      v102 = v0[37];
      v103 = v0[38];
      v104 = v0[36];
      v105 = v0[32];
      v106 = v0[30];
      sub_1D51E8560();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v107 = 2;
      swift_willThrow();

      (*v23)(v105, v106);
      (*(v102 + 8))(v103, v104);
      goto LABEL_87;
    }

    if ((v51 & 0x1000000000000000) == 0)
    {
      break;
    }

    v59 = sub_1D533F9CC(v49, v51, 10);
    v74 = v80;
LABEL_78:

    if (v74)
    {
      goto LABEL_86;
    }

    v75 = v0[32];
    v76 = v0[30];
    [v113 setSongPopularity:v59 forAdamID:v33];
    v77 = *v23;
    v78 = OUTLINED_FUNCTION_74_0();
    v79(v78);
  }

  if ((v51 & 0x2000000000000000) == 0)
  {
    if ((v49 & 0x1000000000000000) != 0)
    {
      v56 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v56 = sub_1D5615C58();
    }

    v53 = OUTLINED_FUNCTION_329_0(v56);
    if (v30)
    {
      if (v57 < 1)
      {
        goto LABEL_93;
      }

      if (v57 == 1)
      {
        goto LABEL_76;
      }

      v59 = 0;
      if (v53)
      {
        while (1)
        {
          OUTLINED_FUNCTION_116_13();
          if (!v30 & v60)
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_26_60();
          if (!v30)
          {
            goto LABEL_76;
          }

          v59 = (v67 + v66);
          if (__OFADD__(v67, v66))
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_40_0();
          if (v30)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v58 == 45)
    {
      if (v57 < 1)
      {
        goto LABEL_92;
      }

      if (v57 == 1)
      {
        goto LABEL_76;
      }

      v59 = 0;
      if (v53)
      {
        while (1)
        {
          OUTLINED_FUNCTION_116_13();
          if (!v30 & v60)
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_26_60();
          if (!v30)
          {
            goto LABEL_76;
          }

          v59 = (v62 - v61);
          if (__OFSUB__(v62, v61))
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_40_0();
          if (v30)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else
    {
      if (!v57)
      {
LABEL_76:
        v59 = 0;
        v63 = 1;
        goto LABEL_77;
      }

      v59 = 0;
      if (v53)
      {
        do
        {
          v70 = *v53 - 48;
          if (v70 > 9)
          {
            goto LABEL_76;
          }

          v71 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            goto LABEL_76;
          }

          v59 = (v71 + v70);
          if (__OFADD__(v71, v70))
          {
            goto LABEL_76;
          }

          v53 = OUTLINED_FUNCTION_324_0(v53);
        }

        while (!v30);
      }
    }

    v63 = 0;
LABEL_77:
    v74 = v63;
    goto LABEL_78;
  }

  if (v49 != 43)
  {
    if (v49 == 45)
    {
      if (!v54)
      {
        goto LABEL_91;
      }

      if (v54 != 1)
      {
        while (1)
        {
          OUTLINED_FUNCTION_116_13();
          if (!v30 & v60)
          {
            break;
          }

          OUTLINED_FUNCTION_26_60();
          if (!v30)
          {
            break;
          }

          v59 = (v65 - v64);
          if (__OFSUB__(v65, v64))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v30)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v54)
    {
      while (1)
      {
        OUTLINED_FUNCTION_116_13();
        if (!v30 & v60)
        {
          break;
        }

        OUTLINED_FUNCTION_26_60();
        if (!v30)
        {
          break;
        }

        v59 = (v73 + v72);
        if (__OFADD__(v73, v72))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
        if (v30)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

  if (v54)
  {
    if (v54 != 1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_116_13();
        if (!v30 & v60)
        {
          break;
        }

        OUTLINED_FUNCTION_26_60();
        if (!v30)
        {
          break;
        }

        v59 = (v69 + v68);
        if (__OFADD__(v69, v68))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
        if (v30)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v53);
}

uint64_t sub_1D533DEF4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v17 = *(v16 + 368);
  v18 = *(v16 + 376);
  v19 = *(v16 + 352);
  v21 = *(v16 + 336);
  v20 = *(v16 + 344);
  v22 = *(v16 + 328);
  v23 = *(v16 + 304);
  v24 = *(v16 + 280);
  v25 = *(v16 + 264);
  v35 = *(v16 + 256);
  v36 = *(v16 + 232);
  v37 = *(v16 + 224);
  v38 = *(v16 + 216);
  v39 = *(v16 + 192);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_63_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_1D533E0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v17 = v16[47];
  v18 = v16[48];
  v20 = v16[45];
  v19 = v16[46];
  swift_willThrow();

  v21 = v16[48];
  OUTLINED_FUNCTION_212_5();
  v33 = v22;
  v34 = v16[24];
  v35 = v23;

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, a13, a14, a15, a16);
}

uint64_t MusicLibrary.setUserRating<A>(_:for:)()
{
  OUTLINED_FUNCTION_60();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[18] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v1[23] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560D838();
  v1[24] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[25] = v10;
  v12 = *(v11 + 64);
  v1[26] = OUTLINED_FUNCTION_127();
  v13 = sub_1D560D4C8();
  v1[27] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[28] = v14;
  v16 = *(v15 + 64);
  v1[29] = OUTLINED_FUNCTION_127();
  v17 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1D533E2F0()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *(v0 + 22);
  v2 = sub_1D560EFB8();
  *(v0 + 30) = v2;
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_199_3(v19, 4);
    swift_willThrow();
    goto LABEL_8;
  }

  v5 = v4;
  v7 = *(v0 + 26);
  v6 = *(v0 + 27);
  v8 = *(v0 + 24);
  v9 = *(v0 + 25);
  v10 = *(v0 + 23);
  v11 = *(v0 + 20);
  v12 = *(v0 + 21);
  v13 = *(v0 + 19);
  sub_1D560EC98();
  sub_1D560D5C8();
  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_201();
  v16(v15);
  OUTLINED_FUNCTION_57(v10, 1, v6);
  if (!v17)
  {
    OUTLINED_FUNCTION_146_7();
    v25 = v0[18];
    (*(*(v0 + 28) + 32))(*(v0 + 29), *(v0 + 23), *(v0 + 27));
    sub_1D560D4B8();
    v26 = sub_1D5614D38();
    *(v0 + 31) = v26;

    OUTLINED_FUNCTION_114_6();
    *(v0 + 2) = v27;
    v28 = OUTLINED_FUNCTION_99_14();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_35_7(v29);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    *(v0 + 12) = sub_1D5341F94;
    *(v0 + 13) = &block_descriptor_155;
    *(v0 + 14) = v28;
    [v5 setUserRating:v26 forItemWithPersistentID:v3 completionHandler:v25];

    return MEMORY[0x1EEE6DEC8](v6);
  }

  sub_1D4E7661C(*(v0 + 23), &unk_1EC7EBF20, &unk_1D561F530);
  sub_1D51E8560();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_199_3(v18, 2);
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_8:
  v20 = *(v0 + 29);
  v21 = *(v0 + 26);
  v22 = *(v0 + 23);

  OUTLINED_FUNCTION_55();

  return v23();
}

uint64_t sub_1D533E584()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533E680()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[23];
  swift_unknownObjectRelease();
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_159();
  v10(v9);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1D533E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = v10[31];
  v11 = v10[32];
  v13 = v10[29];
  v14 = v10[30];
  v15 = v10[27];
  v16 = v10[28];
  swift_willThrow();
  swift_unknownObjectRelease();
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_81_0();
  v19(v18);

  v20 = v10[32];
  v21 = v10[29];
  v22 = v10[26];
  v23 = v10[23];

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_1D533E7D8()
{
  OUTLINED_FUNCTION_60();
  v0 = [objc_opt_self() standardUserDefaults];
  [v0 setPrefersSpatialDownloads_];

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t MusicLibrary.deleteIntentDonations()()
{
  OUTLINED_FUNCTION_60();
  v1 = OUTLINED_FUNCTION_338(dword_1D563C170);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return v3();
}

uint64_t sub_1D533E8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D533E910, 0, 0);
}

uint64_t sub_1D533E910()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 32);
  v2 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  OUTLINED_FUNCTION_71();
  *(v0 + 40) = sub_1D5615D38();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 48) = v3;
  *v3 = v4;
  v3[1] = sub_1D533E9D0;
  v5 = *(v0 + 16);

  return sub_1D542C85C();
}

uint64_t sub_1D533E9D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D533EAE4(SEL *a1)
{
  v2 = *(sub_1D4E5A1CC() + 48);

  [*(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController) *a1];
}

uint64_t MusicLibrary.connectionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560F038();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v17 - v11);
  sub_1D560F008();
  result = (*(v5 + 88))(v12, v2);
  v14 = result;
  v15 = *MEMORY[0x1E6975550];
  if (result == *MEMORY[0x1E6975550])
  {
    result = (*(v5 + 96))(v12, v2);
    v16 = *v12;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E6975558])
  {
    v16 = 0;
LABEL_5:
    *a1 = v16;
    *(a1 + 4) = v14 != v15;
    return result;
  }

  if (result == *MEMORY[0x1E6975568])
  {
    v16 = 1;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E6975560])
  {
    v16 = 2;
    goto LABEL_5;
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000046);
  sub_1D560F008();
  sub_1D5615D48();
  (*(v5 + 8))(v10, v2);
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  OUTLINED_FUNCTION_6_3();
  v17[0] = 1064;
  result = OUTLINED_FUNCTION_71_21();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.connect()()
{
  OUTLINED_FUNCTION_60();
  v1 = OUTLINED_FUNCTION_338(MEMORY[0x1E6975590]);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return v3();
}

uint64_t static MusicLibrary.ConnectionStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      v6 = *a1;
      return v2 == v3;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v5 = LODWORD(v3) == 0;
  }

  else
  {
    if (LODWORD(v2) != 1)
    {
      if (LODWORD(v3) > 1)
      {
        v9 = *(a2 + 4);
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        return OUTLINED_FUNCTION_53_0();
      }

      return 0;
    }

    v5 = LODWORD(v3) == 1;
  }

  if (v5)
  {
    v8 = *(a2 + 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  return 0;
}

uint64_t MusicLibrary.ConnectionStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1DA6EC0D0](v2);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
    return sub_1D5616308();
  }
}

uint64_t MusicLibrary.ConnectionStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  OUTLINED_FUNCTION_164();
  if (v2 == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA6EC0D0](v3);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D5616308();
  }

  return sub_1D5616328();
}

uint64_t sub_1D533EF98()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_1D56162D8();
  MusicLibrary.ConnectionStatus.hash(into:)();
  return sub_1D5616328();
}

uint64_t _s8MusicKit0A7LibraryC0aB8InternalE18DownloadConstraintO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t static MusicLibrary.AddToPlaylistError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_53_0();
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t MusicLibrary.AddToPlaylistError.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1DA6EC0D0](0);
  }

  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t MusicLibrary.AddToPlaylistError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_164();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D533F188()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D56162D8();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D533F214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static MusicLibrary.== infix(_:_:)() & 1;
}

uint64_t MusicLibrary.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  _s8MusicKit0A7LibraryC0aB8InternalE4hash4intoys6HasherVz_tF_0();
  return sub_1D5616328();
}

uint64_t sub_1D533F2BC()
{
  sub_1D56162D8();
  v1 = *v0;
  MusicLibrary.hash(into:)(v3);
  return sub_1D5616328();
}

uint64_t sub_1D533F2FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = MusicLibrary.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D533F328()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return v0;
}

uint64_t sub_1D533F370()
{
  sub_1D533F328();
  OUTLINED_FUNCTION_311_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D533F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4E413BC(&qword_1EC7F4530, a2, _s15InternalStorageCMa);

  return MEMORY[0x1EEDCEDD8](a1, a3, a2, a4, v8);
}

uint64_t sub_1D533F434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4E413BC(&qword_1EC7F4538, a2, _s15InternalStorageCMa);

  return MEMORY[0x1EEDCEDD0](a1, a2, a3, v6);
}

id sub_1D533F4D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D5614D38();
    OUTLINED_FUNCTION_75_1();
  }

  else
  {
    v2 = 0;
  }

  v4 = [v3 initWithSuiteName_];

  return v4;
}

uint64_t sub_1D533F530(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_24_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D533F590()
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  OUTLINED_FUNCTION_1_0();
  v8 = *(v7 + 64);
  v9 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v10 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v10);
  v12 = (v9 + v8 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_348_0();

  return sub_1D532DADC(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D533F6C8()
{
  OUTLINED_FUNCTION_100();
  v2 = v0[2];
  v3 = v0[3];
  v25 = v0[5];
  v26 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  OUTLINED_FUNCTION_4_32();
  v6 = sub_1D56158D8();
  OUTLINED_FUNCTION_69(v6);
  v9 = (((*(v7 + 80) + 64) & ~*(v7 + 80)) + *(v8 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v10 = *(*(v3 - 8) + 64);
  v11 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v11);
  v13 = (v9 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_89();

  return sub_1D532F048(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1D533F874()
{
  OUTLINED_FUNCTION_75_0();
  v2 = v0[2];
  v23 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  OUTLINED_FUNCTION_1_0();
  v9 = *(v8 + 64);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v11);
  v13 = (v10 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_73_0();

  return sub_1D53307C4(v15, v16, v17, v18, v19, v20);
}

unsigned __int8 *sub_1D533F9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_1D5614F78();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_98();
    v6 = sub_1D53404B0();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      OUTLINED_FUNCTION_98();
      v8 = sub_1D5615C58();
    }

    result = OUTLINED_FUNCTION_329_0(v8);
    if (v11)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_265_1();
          if (v26 ^ v27 | v25)
          {
            v30 = 65;
          }

          if (!(v26 ^ v27 | v25))
          {
            v31 = 58;
          }

          if (v28)
          {
            v18 = 0;
            v32 = (v28 + 1);
            do
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v31)
              {
                if (v33 < 0x41 || v33 >= v30)
                {
                  OUTLINED_FUNCTION_266_1();
                  if (!v23 || v33 >= v35)
                  {
                    goto LABEL_143;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v18 * a3;
              if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
              {
                goto LABEL_142;
              }

              v18 = v36 + (v33 + v34);
              if (__OFADD__(v36, (v33 + v34)))
              {
                goto LABEL_142;
              }

              ++v32;
              --v29;
            }

            while (v29);
LABEL_52:
            v6 = v18;
            goto LABEL_143;
          }

          goto LABEL_73;
        }

LABEL_142:
        v6 = 0;
        goto LABEL_143;
      }

      goto LABEL_147;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (result)
        {
          v40 = 0;
          do
          {
            v41 = *result;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                v6 = 0;
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_143;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            if ((v40 * a3) >> 64 != (v40 * a3) >> 63 || __OFADD__(v40 * a3, (v41 + v42)))
            {
              goto LABEL_142;
            }

            result = OUTLINED_FUNCTION_324_0(result);
          }

          while (!v11);
          v6 = v40;
          goto LABEL_143;
        }

        goto LABEL_73;
      }

      goto LABEL_142;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_265_1();
        if (v12 ^ v13 | v11)
        {
          v16 = 65;
        }

        if (!(v12 ^ v13 | v11))
        {
          v17 = 58;
        }

        if (v14)
        {
          v18 = 0;
          v19 = (v14 + 1);
          while (1)
          {
            v20 = *v19;
            if (v20 < 0x30 || v20 >= v17)
            {
              if (v20 < 0x41 || v20 >= v16)
              {
                OUTLINED_FUNCTION_266_1();
                if (!v23 || v20 >= v22)
                {
                  goto LABEL_143;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v18 * a3;
            if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
            {
              goto LABEL_142;
            }

            v18 = v24 - (v20 + v21);
            if (__OFSUB__(v24, (v20 + v21)))
            {
              goto LABEL_142;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_73:
        v6 = 0;
LABEL_143:

        return v6;
      }

      goto LABEL_142;
    }

    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_78_22();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_266_1();
              if (!v23 || v76 >= v78)
              {
                goto LABEL_143;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_142;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_142;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_142;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_78_22();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_266_1();
              if (!v23 || v54 >= v56)
              {
                goto LABEL_143;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_142;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_142;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_142;
    }

    goto LABEL_146;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_78_22();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_266_1();
            if (!v23 || v65 >= v67)
            {
              goto LABEL_143;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_142;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_142;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_141:
      v6 = v50;
      goto LABEL_143;
    }

    goto LABEL_142;
  }

LABEL_148:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1D533FED4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_1D5614F78();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D53404B0();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D5615C58();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D53404B0()
{
  v0 = sub_1D534051C();
  v4 = sub_1D5340550(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D5340550(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D5614E18();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1D5615918();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1D4E6EFA4(v9, 0);
  v12 = sub_1D53406B0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1D5614E18();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1D5615C58();
LABEL_4:

  return sub_1D5614E18();
}

unint64_t sub_1D53406B0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1D53408C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D5614EF8();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D5615C58();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1D53408C0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1D5614ED8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D53408C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1D5614F08();
    OUTLINED_FUNCTION_257_1(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1DA6EACD0](15, a1 >> 16);
    OUTLINED_FUNCTION_257_1(v3);
    return v4 | 8;
  }
}

void sub_1D534095C()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D56131C8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = OUTLINED_FUNCTION_35_50();
  v9 = v3(v8);
  v20[3] = v9;
  v20[4] = v1;
  __swift_allocate_boxed_opaque_existential_0(v20);
  OUTLINED_FUNCTION_24_0(v9);
  (*(v10 + 16))();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33_47();
    OUTLINED_FUNCTION_122_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v17, &qword_1EC7EC520, &unk_1D5621050);
  }

  OUTLINED_FUNCTION_357_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_42();
    v11 = *MEMORY[0x1E6976988];
    v12 = OUTLINED_FUNCTION_87_16();
    v13(v12);
    OUTLINED_FUNCTION_162_7();
    v14 = OUTLINED_FUNCTION_89_17();
    v16 = v15(v14);
    OUTLINED_FUNCTION_368_0(v16, sel_setModelObject_);

    __swift_destroy_boxed_opaque_existential_1(&v19);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v17, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_48_35();
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_161_7();
    OUTLINED_FUNCTION_46_32();
    OUTLINED_FUNCTION_100_11();
    OUTLINED_FUNCTION_353_0();
    __break(1u);
  }
}

uint64_t sub_1D5340BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D56131C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = type metadata accessor for Playlist.Folder();
  v23[4] = sub_1D4E413BC(&unk_1EDD52B98, 255, type metadata accessor for Playlist.Folder);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  sub_1D5341D10(a1, boxed_opaque_existential_0);
  sub_1D4E62938(v23, v22);
  sub_1D4E62938(v23, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v15, v19);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_1D560D078();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_1D4E48324(v18, v22);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v17 = 0;
    v16 = 0u;
    v15 = 0u;
    sub_1D4E7661C(&v15, &qword_1EC7EC520, &unk_1D5621050);
  }

  sub_1D4E62938(v22, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v15, v19);
    v10 = *(a2 + 48);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v5 + 104))(v8, *MEMORY[0x1E6976988], v4);
    v13 = sub_1D5159364(v8, v11, v12);
    (*(v5 + 8))(v8, v4);
    [v10 setModelObject_];

    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v17 = 0;
    v16 = 0u;
    v15 = 0u;
    sub_1D4E7661C(&v15, &unk_1EC7ED400, &qword_1D5620CF0);
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x206D657469206E41, 0xE800000000000000);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000071, 0x80000001D568B9C0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5340FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPin();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5341038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_24_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5341094(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_1D533CF20(a1) & 1;
}

unint64_t sub_1D53410C0()
{
  result = qword_1EC7F44F0;
  if (!qword_1EC7F44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F44F0);
  }

  return result;
}

unint64_t sub_1D534115C()
{
  result = qword_1EC7F4508;
  if (!qword_1EC7F4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4508);
  }

  return result;
}

unint64_t sub_1D53411F8()
{
  result = qword_1EC7F4520;
  if (!qword_1EC7F4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4520);
  }

  return result;
}

unint64_t sub_1D5341250()
{
  result = qword_1EC7F4528;
  if (!qword_1EC7F4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4528);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s16ConnectionStatusOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16ConnectionStatusOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1D5341350(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D534136C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

_BYTE *_s18DownloadConstraintOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s28AddToPlaylistDuplicatePolicyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s18AddToPlaylistErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D5341578(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5341594(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void sub_1D5341608()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  v1 = sub_1D56131C8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_35_50();
  v15[3] = type metadata accessor for TVSeason();
  v15[4] = sub_1D4E413BC(&unk_1EDD546A0, 255, type metadata accessor for TVSeason);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  sub_1D5341D10(v0, boxed_opaque_existential_0);
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33_47();
    OUTLINED_FUNCTION_122_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v12, &qword_1EC7EC520, &unk_1D5621050);
  }

  OUTLINED_FUNCTION_357_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_42();
    v6 = *MEMORY[0x1E6976988];
    v7 = OUTLINED_FUNCTION_87_16();
    v8(v7);
    OUTLINED_FUNCTION_162_7();
    v9 = OUTLINED_FUNCTION_89_17();
    v11 = v10(v9);
    OUTLINED_FUNCTION_368_0(v11, sel_setModelObject_);

    __swift_destroy_boxed_opaque_existential_1(&v14);
    __swift_destroy_boxed_opaque_existential_1(&v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v12, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_48_35();
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_161_7();
    OUTLINED_FUNCTION_46_32();
    OUTLINED_FUNCTION_100_11();
    OUTLINED_FUNCTION_353_0();
    __break(1u);
  }
}

void sub_1D5341860()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  v1 = sub_1D56131C8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_35_50();
  v15[3] = type metadata accessor for TVEpisode();
  v15[4] = sub_1D4E413BC(&qword_1EDD54508, 255, type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  sub_1D5341D10(v0, boxed_opaque_existential_0);
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33_47();
    OUTLINED_FUNCTION_122_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v12, &qword_1EC7EC520, &unk_1D5621050);
  }

  OUTLINED_FUNCTION_357_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_42();
    v6 = *MEMORY[0x1E6976988];
    v7 = OUTLINED_FUNCTION_87_16();
    v8(v7);
    OUTLINED_FUNCTION_162_7();
    v9 = OUTLINED_FUNCTION_89_17();
    v11 = v10(v9);
    OUTLINED_FUNCTION_368_0(v11, sel_setModelObject_);

    __swift_destroy_boxed_opaque_existential_1(&v14);
    __swift_destroy_boxed_opaque_existential_1(&v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v12, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_48_35();
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_161_7();
    OUTLINED_FUNCTION_46_32();
    OUTLINED_FUNCTION_100_11();
    OUTLINED_FUNCTION_353_0();
    __break(1u);
  }
}

void sub_1D5341AB8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  v1 = sub_1D56131C8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_35_50();
  v15[3] = type metadata accessor for MusicMovie();
  v15[4] = sub_1D4E413BC(&qword_1EDD59308, 255, type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  sub_1D5341D10(v0, boxed_opaque_existential_0);
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_365_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_33_47();
    OUTLINED_FUNCTION_122_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v12, &qword_1EC7EC520, &unk_1D5621050);
  }

  OUTLINED_FUNCTION_357_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_21_64();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_39_42();
    v6 = *MEMORY[0x1E6976988];
    v7 = OUTLINED_FUNCTION_87_16();
    v8(v7);
    OUTLINED_FUNCTION_162_7();
    v9 = OUTLINED_FUNCTION_89_17();
    v11 = v10(v9);
    OUTLINED_FUNCTION_368_0(v11, sel_setModelObject_);

    __swift_destroy_boxed_opaque_existential_1(&v14);
    __swift_destroy_boxed_opaque_existential_1(&v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_10_92();
    sub_1D4E7661C(v12, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_159_8();
    OUTLINED_FUNCTION_48_35();
    OUTLINED_FUNCTION_229_3();
    OUTLINED_FUNCTION_161_7();
    OUTLINED_FUNCTION_46_32();
    OUTLINED_FUNCTION_100_11();
    OUTLINED_FUNCTION_353_0();
    __break(1u);
  }
}

uint64_t sub_1D5341D10(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_24_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D5341D6C()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v1[2] = v0[2];
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = type metadata accessor for MusicLibraryImportChangeRequest();
  OUTLINED_FUNCTION_22(v7);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1D52EF4B4;
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_73_0();

  return sub_1D533E8EC(v11, v12, v13);
}

void *OUTLINED_FUNCTION_28_52()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  sub_1D4E48324((v0 + 384), v0 + 304);
  v4 = *(v0 + 336);
  return __swift_project_boxed_opaque_existential_1((v0 + 304), *(v0 + 328));
}

uint64_t OUTLINED_FUNCTION_33_47()
{
  sub_1D4E48324((v0 - 288), v0 - 200);
  v1 = *(v0 - 168);
  __swift_project_boxed_opaque_existential_1((v0 - 200), *(v0 - 176));

  return sub_1D560D078();
}

uint64_t OUTLINED_FUNCTION_42_39(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_65_27(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log, uint64_t a13, int a14, os_log_type_t a15)
{

  _os_log_impl(a1, log, a15, a4, v15, 0x16u);
}

uint64_t OUTLINED_FUNCTION_66_23()
{
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[54];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_30()
{
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[53];

  return sub_1D560C358();
}

uint64_t OUTLINED_FUNCTION_68_24()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_71_21()
{

  return sub_1D5615E08();
}

void OUTLINED_FUNCTION_105_14()
{
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[54];
}

uint64_t OUTLINED_FUNCTION_106_11(uint64_t a1)
{
  *(a1 + 8) = sub_1D53333FC;
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[4];
  return v1[9];
}

void OUTLINED_FUNCTION_120_10()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_122_8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 - 160));
  sub_1D4E48324((v0 - 240), v0 - 160);

  return __swift_destroy_boxed_opaque_existential_1((v0 - 200));
}

uint64_t OUTLINED_FUNCTION_124_9()
{
  __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_136_10(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_138_10(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_140_11()
{
  v2[28] = sub_1D5341F94;
  v2[29] = v0;
  v2[30] = v1;
}

uint64_t OUTLINED_FUNCTION_141_4(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_142_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_145_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v10[2];
  v13 = v10[3];
  v9[18] = v10[4];
  v9[19] = v8;
  v9[16] = v12;
  v9[17] = v13;
  v9[14] = a7;
  v9[15] = a8;
  v9[12] = a5;
  v9[13] = a6;
  v9[10] = a3;
  v9[11] = a4;
  v9[8] = a1;
  v9[9] = a2;

  return sub_1D56158D8();
}

id OUTLINED_FUNCTION_150_11(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_154_8()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_156_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_158_8()
{
  v2 = v0[60];
  v3 = v0[57];
  v5 = v0[53];
  v4 = v0[54];

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_159_8()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0xE000000000000000;

  return sub_1D5615B68();
}

uint64_t OUTLINED_FUNCTION_160_7(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_1D4E6835C(v12, v11, &a10);
}

void OUTLINED_FUNCTION_161_7()
{

  JUMPOUT(0x1DA6EAC70);
}

id OUTLINED_FUNCTION_162_7()
{

  return sub_1D5159364(v1, v0, v2);
}

void OUTLINED_FUNCTION_167_5()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[18];
  v11 = v0[22];
  v12 = v0[19];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[23];
  v10 = v0[11];
}

double OUTLINED_FUNCTION_168_6()
{
  *(v0 + 416) = 0;
  result = 0.0;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_169_3()
{
  sub_1D4E48324((v0 + 224), v0 + 144);

  return sub_1D4E62938(v0 + 144, v0 + 344);
}

uint64_t OUTLINED_FUNCTION_170_5()
{
  v2 = *(v1 - 96);
  v3 = *(v1 - 88);
  return v0;
}

uint64_t OUTLINED_FUNCTION_171_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_184_3()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));

  return sub_1D5616458();
}

uint64_t OUTLINED_FUNCTION_188_5()
{
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[29];
  v13 = v0[26];
  v14 = v0[27];
  v7 = v0[24];
  v11 = v0[34];
  v12 = v0[25];
  v8 = v0[22];
  v9 = v0[23];

  return sub_1D560C358();
}

uint64_t OUTLINED_FUNCTION_189_5()
{
  v8 = v0[33];
  v9 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[24];
  v5 = v0[22];
  v10 = v0[21];
  v6 = v0[11];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_190_6()
{
  v8 = v0[30];
  v9 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[17];
  v5 = v0[15];
  v10 = v0[14];
  v6 = v0[9];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_194_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = result;
  v6[9] = a2;
  v7 = *(a2 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_195_4()
{
  result = v0[68];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[59];
  v8 = v0[54];
  v7 = v0[55];
  v9 = v0[53];
  v10 = v0[48];
  v11 = v0[49];
  return result;
}

uint64_t OUTLINED_FUNCTION_207_3()
{
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v12 = v0[15];
  v10 = v0[10];

  return sub_1D56151C8();
}

void OUTLINED_FUNCTION_211_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v10[2];
  v11 = v10[3];
  v14 = v10[4];
  v13 = v10[5];
  v9[42] = v10[6];
  v9[43] = v8;
  v9[40] = v14;
  v9[41] = v13;
  v9[38] = v12;
  v9[39] = v11;
  v9[36] = a7;
  v9[37] = a8;
}

uint64_t OUTLINED_FUNCTION_212_5()
{
  v2 = v0[43];
  result = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[38];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[28];
  v10 = v0[29];
  v11 = v0[27];
  return result;
}

void *OUTLINED_FUNCTION_215_1()
{
  v2 = v1[78];
  v3 = v1[77];
  v4 = v1[76];
  v5 = v1[75];
  v6 = v1[74];
  v7 = v1[73];
  sub_1D4E48324(v0, (v1 + 54));
  v8 = v1[58];
  return __swift_project_boxed_opaque_existential_1(v1 + 54, v1[57]);
}

BOOL OUTLINED_FUNCTION_221_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_223_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_224_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[9];
  v3 = v2[10];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[3];
  v10 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_226_4()
{
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[55];
  v8 = v0[51];
  v10 = v0[46];
  v9 = v0[47];
  v11 = v0[43];
}

uint64_t OUTLINED_FUNCTION_227_3()
{
}

uint64_t OUTLINED_FUNCTION_228_3(uint64_t a1)
{
  *(v1 + 16) = a1;

  return sub_1D5613D28();
}

uint64_t OUTLINED_FUNCTION_231_2()
{
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v10 = v0[12];

  return sub_1D56151C8();
}

uint64_t OUTLINED_FUNCTION_233_2(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return v2;
}

uint64_t OUTLINED_FUNCTION_235_1(uint64_t a1)
{
  v3[2] = v2;
  v3[24] = a1;
  v3[3] = v1;
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;

  return type metadata accessor for MusicLibraryImportChangeRequest();
}

id OUTLINED_FUNCTION_236_0(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return [v15 a2];
}

uint64_t OUTLINED_FUNCTION_238_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_244_1(uint64_t a1)
{
  v3[31] = a1;
  v3[18] = v5;
  v3[19] = v4;
  v3[20] = v2;
  v3[21] = v1;

  return type metadata accessor for MusicLibraryKeepLocalChangeRequest();
}

uint64_t OUTLINED_FUNCTION_245_2()
{
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[56];
  v7 = v0[51];
  v6 = v0[52];
  v9 = v0[47];
  v8 = v0[48];
  v10 = v0[46];
}

uint64_t OUTLINED_FUNCTION_246_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_248_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[22];
  v4 = v2[18];
  v5 = v2[19];
  v6 = v2[12];
  v7 = v2[13];
  v8 = v2[10];
  return result;
}

uint64_t OUTLINED_FUNCTION_252_1()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v0[14] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_253_0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[4];
  result = v0[5];
  v6 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_256_1()
{
  *(v0 + 240) = *(v1 + 16);
  *(v0 + 248) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_260_1()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  result = v0[22];
  v6 = v0[11];
  v7 = v0[8];
  return result;
}

void OUTLINED_FUNCTION_268_2()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
}

void *OUTLINED_FUNCTION_270_1()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  sub_1D4E48324((v0 + 184), v0 + 144);
  v5 = *(v0 + 176);
  return __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
}

uint64_t OUTLINED_FUNCTION_275_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a6;
  v9[7] = a7;
  v9[4] = a3;
  v9[5] = a5;
  v9[2] = result;
  v9[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_283_0()
{
}

uint64_t OUTLINED_FUNCTION_286_2()
{
  v1 = v0[61];
  v3 = v0[57];
  v2 = v0[58];
  v5 = v0[54];
  v4 = v0[55];
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
}

void OUTLINED_FUNCTION_288_1()
{

  JUMPOUT(0x1DA6EAC70);
}

id OUTLINED_FUNCTION_289_0(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return v2;
}

uint64_t OUTLINED_FUNCTION_290_0()
{
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];

  return sub_1D560DB68();
}

uint64_t OUTLINED_FUNCTION_291_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[72] = v3;
  v4[71] = a3;
  v4[70] = a2;
  v4[69] = a1;

  return sub_1D560D3F8();
}

uint64_t OUTLINED_FUNCTION_292_2(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OUTLINED_FUNCTION_293_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_294_1()
{
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
}

uint64_t OUTLINED_FUNCTION_296_0(uint64_t a1)
{
  *(v1 + 472) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_297_1(uint64_t a1)
{
  *(v1 + 184) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_298_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_300_1()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  result = v0[15];
  v6 = v0[8];
  v7 = v0[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_305()
{
  result = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  v4 = *(v0[8] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_312_0(uint64_t result)
{
  *(v1 + 160) = result;
  v3 = *(v2 - 8);
  return result;
}

double OUTLINED_FUNCTION_315_0()
{
  *(v0 + 216) = 0;
  result = 0.0;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  return result;
}

void OUTLINED_FUNCTION_323()
{
  v3[3] = v0;
  v3[4] = v1;
  v3[2] = v2;
}

uint64_t OUTLINED_FUNCTION_335_0(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_339()
{
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = v0[38];
  v6 = v0[35];
}

uint64_t OUTLINED_FUNCTION_340_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_341_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v8 = a1;

  return sub_1D4E6835C(a3, v7, va);
}

uint64_t OUTLINED_FUNCTION_342_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_343_0()
{
  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[22];

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_345_0()
{
  v2 = v0[23];
  v3 = v0[11];
  v4 = v0[8];

  return sub_1D560C758();
}

void OUTLINED_FUNCTION_346_0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_347_0()
{
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_349_0(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;

  return sub_1D56131C8();
}

uint64_t OUTLINED_FUNCTION_350_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *v8 = a1;

  return sub_1D4E6835C(a8, v9, va);
}

uint64_t OUTLINED_FUNCTION_351_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *v7 = a1;

  return sub_1D4E6835C(a5, v6, va);
}

uint64_t OUTLINED_FUNCTION_353_0()
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_354_0()
{

  return sub_1D5614DB8();
}

uint64_t OUTLINED_FUNCTION_355_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_356_0()
{
  *(v0 + 592) = v1;
  v3 = *(v0 + 448);

  return sub_1D4E5A1CC();
}

uint64_t OUTLINED_FUNCTION_357_0()
{

  return sub_1D4E62938(v0 - 160, v0 - 240);
}

void OUTLINED_FUNCTION_358_0()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_359_0(uint64_t a1)
{
  *(v1 + 504) = a1;

  return sub_1D560C368();
}

uint64_t OUTLINED_FUNCTION_360(uint64_t a1)
{
  *(v1 + 464) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_361_0()
{

  return sub_1D56160F8();
}

uint64_t OUTLINED_FUNCTION_363_0()
{
}

BOOL OUTLINED_FUNCTION_364_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_365_0()
{

  return sub_1D4E62938(v0 - 120, v0 - 240);
}

uint64_t OUTLINED_FUNCTION_366()
{

  return sub_1D4E62938(v0 - 120, v0 - 160);
}

uint64_t OUTLINED_FUNCTION_367_0(uint64_t a1)
{
  *(v1 + 480) = a1;

  return sub_1D56131C8();
}

id OUTLINED_FUNCTION_368_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_369_0(uint64_t a1, uint64_t a2)
{

  return sub_1D5159364(a1, a2, v2);
}

void OUTLINED_FUNCTION_370(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_371()
{

  sub_1D5201D1C();
}

id OUTLINED_FUNCTION_372(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_373()
{
}

uint64_t OUTLINED_FUNCTION_378()
{
  sub_1D4E48324(v0, v1 + 272);

  return sub_1D4E62938(v1 + 272, v1 + 472);
}

void sub_1D534329C(char *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 6;
  v4 = v2 & 1;
  if (v2 >> 6 == 1)
  {
    v5 = v2 & 0x3F | 0x40;
  }

  else
  {
    v5 = 0x80;
  }

  if (!v3)
  {
    v5 = v4;
  }

  *a1 = v5;
}

uint64_t static Presto_MusicLibrary.AddStatus.UnaddableReason.allCases.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEE0, &qword_1D561DCB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D5627E00;
  *(inited + 32) = 50462976;
  *(inited + 36) = 1284;
  *(inited + 38) = 6;
  sub_1D4F02B60();
  v2 = v1;
  *(v1 + 16) = 8;
  *(v1 + 39) = 7;
  if (*(v1 + 24) <= 0x11uLL)
  {
    sub_1D4F02B60();
    v2 = v5;
  }

  *(v2 + 16) = 9;
  *(v2 + 40) = 8;
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t Presto_MusicLibrary.AddStatus.UnaddableReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D5343448@<X0>(uint64_t *a1@<X8>)
{
  result = static Presto_MusicLibrary.AddStatus.UnaddableReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D534347C()
{
  v2 = *v0;
  sub_1D56162D8();
  Presto_MusicLibrary.AddStatus.UnaddableReason.hash(into:)();
  return sub_1D5616328();
}

uint64_t Presto_MusicLibrary.AddStatus.AddableCaveat.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t static Presto_MusicLibrary.AddStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (v2 >> 6 != 1)
  {
    if (v3 == 128)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xC0) != 0x40)
  {
    goto LABEL_9;
  }

  v4 = ((v3 ^ v2) & 0x3F) == 0;
  return v4 & 1;
}

uint64_t Presto_MusicLibrary.AddStatus.hash(into:)()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    MEMORY[0x1DA6EC0D0](1);
    if (v1)
    {
      return sub_1D56162F8();
    }

    sub_1D56162F8();
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
LABEL_7:
    v2 = 0;
    return MEMORY[0x1DA6EC0D0](v2);
  }

  MEMORY[0x1DA6EC0D0](2);
  v2 = v1 & 0x3F;
  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t Presto_MusicLibrary.AddStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      MEMORY[0x1DA6EC0D0](2);
      v2 = v1 & 0x3F;
LABEL_8:
      MEMORY[0x1DA6EC0D0](v2);
      return sub_1D5616328();
    }

LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  MEMORY[0x1DA6EC0D0](1);
  if ((v1 & 1) == 0)
  {
    sub_1D56162F8();
    goto LABEL_7;
  }

  sub_1D56162F8();
  return sub_1D5616328();
}

uint64_t sub_1D53436FC()
{
  v1 = *v0;
  sub_1D56162D8();
  if (!(v1 >> 6))
  {
    MEMORY[0x1DA6EC0D0](1);
    if (v1)
    {
      sub_1D56162F8();
      return sub_1D5616328();
    }

    sub_1D56162F8();
LABEL_7:
    MEMORY[0x1DA6EC0D0](0);
    return sub_1D5616328();
  }

  if (v1 >> 6 != 1)
  {
    goto LABEL_7;
  }

  MEMORY[0x1DA6EC0D0](2);
  Presto_MusicLibrary.AddStatus.UnaddableReason.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D53437D0()
{
  result = qword_1EC7F4570;
  if (!qword_1EC7F4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4570);
  }

  return result;
}

unint64_t sub_1D5343858()
{
  result = qword_1EC7F4588;
  if (!qword_1EC7F4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4588);
  }

  return result;
}

unint64_t sub_1D53438B0()
{
  result = qword_1EC7F4590;
  if (!qword_1EC7F4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4590);
  }

  return result;
}

_BYTE *_s9AddStatusOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD)
  {
    v6 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
          *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9AddStatusO15UnaddableReasonOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9AddStatusO13AddableCaveatOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D5343B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657469726F766166 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7661466F646E75 && a2 == 0xEC00000065746972)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D5343C4C(char a1)
{
  if (a1)
  {
    return 0x6F7661466F646E75;
  }

  else
  {
    return 0x657469726F766166;
  }
}

uint64_t sub_1D5343CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5343B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5343CD4(uint64_t a1)
{
  v2 = sub_1D53440A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5343D10(uint64_t a1)
{
  v2 = sub_1D53440A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5343D4C(uint64_t a1)
{
  v2 = sub_1D5344150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5343D88(uint64_t a1)
{
  v2 = sub_1D5344150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5343DC4(uint64_t a1)
{
  v2 = sub_1D53440FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5343E00(uint64_t a1)
{
  v2 = sub_1D53440FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Request.Action.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4598, &qword_1D56541E0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v32 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45A0, &qword_1D56541E8);
  v11 = OUTLINED_FUNCTION_4(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45A8, &qword_1D56541F0);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D53440A8();
  sub_1D56163D8();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1D53440FC();
    v29 = v32;
    sub_1D5616018();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1D5344150();
    sub_1D5616018();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D53440A8()
{
  result = qword_1EC7F45B0;
  if (!qword_1EC7F45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F45B0);
  }

  return result;
}

unint64_t sub_1D53440FC()
{
  result = qword_1EC7F45B8;
  if (!qword_1EC7F45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F45B8);
  }

  return result;
}

unint64_t sub_1D5344150()
{
  result = qword_1EC7F45C0;
  if (!qword_1EC7F45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F45C0);
  }

  return result;
}

uint64_t MusicDaemon.Request.Action.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicDaemon.Request.Action.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v56 = v0;
  v3 = v2;
  v53 = v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45C8, &qword_1D56541F8);
  OUTLINED_FUNCTION_4(v55);
  v52 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45D0, &qword_1D5654200);
  OUTLINED_FUNCTION_4(v11);
  v51 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45D8, &unk_1D5654208);
  OUTLINED_FUNCTION_4(v18);
  v54 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9();
  v23 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D53440A8();
  v24 = v56;
  sub_1D5616398();
  if (v24)
  {
    goto LABEL_10;
  }

  v49 = v11;
  v50 = v17;
  v56 = v3;
  v25 = v55;
  v26 = sub_1D5615FE8();
  v27 = sub_1D4FE35F0(v26, 0);
  if (v29 == v30 >> 1)
  {
    v55 = v27;
LABEL_9:
    v43 = sub_1D5615C18();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v45 = &type metadata for MusicDaemon.Request.Action;
    sub_1D5615F28();
    OUTLINED_FUNCTION_48_2();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v1, v18);
    v3 = v56;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  v48[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_1D4FE35EC(v29 + 1, v30 >> 1, v27, v28, v29, v30);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        sub_1D53440FC();
        v37 = v10;
        OUTLINED_FUNCTION_3_0();
        v38 = v53;
        v39 = v54;
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_203_0();
        v41 = v37;
        v42 = v25;
      }

      else
      {
        sub_1D5344150();
        v47 = v50;
        OUTLINED_FUNCTION_3_0();
        v38 = v53;
        v39 = v54;
        swift_unknownObjectRelease();
        v40 = *(v51 + 8);
        v41 = v47;
        v42 = v49;
      }

      v40(v41, v42);
      (*(v39 + 8))(v1, v34);
      *v38 = v31;
      __swift_destroy_boxed_opaque_existential_1(v56);
      goto LABEL_11;
    }

    v55 = v32;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t _s16MusicKitInternal0A6DaemonV7RequestO7ContextV4item7account10observerIDAgC4ItemV_AA7AccountV10Foundation4UUIDVtAC5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = sub_1D53701B8();
  if (v5)
  {
    sub_1D4E58768(v9, v10, v11);
    if (qword_1EDD544D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D560C758();
    __swift_project_value_buffer(v14, qword_1EDD76B38);
    v15 = sub_1D560C738();
    v16 = sub_1D56156C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D4E3F000, v15, v16, "MusicDaemon.Request.Context failed to retrieve accountID.", v17, 2u);
      MEMORY[0x1DA6ED200](v17, -1, -1);
    }

    *a4 = xmmword_1D56541D0;
    *(a4 + 16) = 2;
    sub_1D53476CC();
    swift_willThrowTypedImpl();

    v18 = sub_1D560C368();
    OUTLINED_FUNCTION_14(v18);
    (*(v19 + 8))(a3);
    OUTLINED_FUNCTION_15_78();
    return sub_1D5347834(a1, v20);
  }

  else
  {
    v22 = v12;
    v23 = v13;
    sub_1D4E58768(v9, v10, v11);
    sub_1D560C358();
    v24 = *(OUTLINED_FUNCTION_45_38() + 20);
    OUTLINED_FUNCTION_7_109();
    sub_1D5347914(a1, a5 + v25);
    v26 = (a5 + *(v11 + 24));
    *v26 = v22;
    v26[1] = v23;
    v27 = *(v11 + 28);
    v28 = sub_1D560C368();
    OUTLINED_FUNCTION_14(v28);
    return (*(v29 + 32))(a5 + v27, a3);
  }
}

uint64_t MusicDaemon.Request.Context.init(id:item:accountID:observerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1D560C368();
  OUTLINED_FUNCTION_14(v12);
  v20 = *(v13 + 32);
  v20(a6, a1, v12);
  v14 = type metadata accessor for MusicDaemon.Request.Context(0);
  v15 = v14[5];
  OUTLINED_FUNCTION_7_109();
  sub_1D5347914(a2, a6 + v16);
  v17 = (a6 + v14[6]);
  *v17 = a3;
  v17[1] = a4;
  v18 = a6 + v14[7];

  return (v20)(v18, a5, v12);
}

uint64_t MusicDaemon.Request.Context.id.getter()
{
  v0 = sub_1D560C368();
  OUTLINED_FUNCTION_14(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_71();

  return v4(v3);
}

uint64_t MusicDaemon.Request.Context.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDaemon.Request.Context(0) + 20);
  OUTLINED_FUNCTION_7_109();
  return sub_1D53477DC(v1 + v4, a1);
}

uint64_t MusicDaemon.Request.Context.accountID.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicDaemon.Request.Context(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicDaemon.Request.Context.observerID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDaemon.Request.Context(0) + 28);
  v4 = sub_1D560C368();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t static MusicDaemon.Request.Context.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560C348() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MusicDaemon.Request.Context(0);
  if ((static MusicDaemon.Item.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_17_73(v4[6]);
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v8 = v4[7];

  return sub_1D560C348();
}

uint64_t sub_1D5344BA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1835365481 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726576726573626FLL && a2 == 0xEA00000000004449)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

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

uint64_t sub_1D5344D00(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1835365481;
      break;
    case 2:
      result = 0x49746E756F636361;
      break;
    case 3:
      result = 0x726576726573626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5344D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5344BA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5344DC0(uint64_t a1)
{
  v2 = sub_1D5347740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5344DFC(uint64_t a1)
{
  v2 = sub_1D5347740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Request.Context.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45E8, &qword_1D5654218);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D5347740();
  sub_1D56163D8();
  sub_1D560C368();
  OUTLINED_FUNCTION_1_142();
  sub_1D5347794(v14, v15);
  OUTLINED_FUNCTION_37_37();
  if (!v1)
  {
    v25 = type metadata accessor for MusicDaemon.Request.Context(0);
    v16 = *(v25 + 20);
    OUTLINED_FUNCTION_7_3();
    type metadata accessor for MusicDaemon.Item();
    OUTLINED_FUNCTION_16_81();
    sub_1D5347794(v17, v18);
    sub_1D56160C8();
    v19 = v25;
    v20 = (v2 + *(v25 + 24));
    v21 = *v20;
    v22 = v20[1];
    sub_1D5616088();
    v23 = *(v19 + 28);
    OUTLINED_FUNCTION_37_37();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_26();
}

uint64_t MusicDaemon.Request.Context.hash(into:)()
{
  v1 = v0;
  sub_1D560C368();
  OUTLINED_FUNCTION_1_142();
  sub_1D5347794(v2, v3);
  OUTLINED_FUNCTION_46_33();
  v4 = type metadata accessor for MusicDaemon.Request.Context(0);
  v5 = v0 + v4[5];
  MusicDaemon.Item.hash(into:)();
  v6 = (v1 + v4[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1D5614E28();
  v9 = v1 + v4[7];
  return OUTLINED_FUNCTION_46_33();
}

uint64_t MusicDaemon.Request.Context.hashValue.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_164();
  sub_1D560C368();
  OUTLINED_FUNCTION_1_142();
  sub_1D5347794(v2, v3);
  sub_1D5614CB8();
  v4 = type metadata accessor for MusicDaemon.Request.Context(0);
  v5 = v0 + v4[5];
  MusicDaemon.Item.hash(into:)();
  v6 = (v1 + v4[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1D5614E28();
  v9 = v1 + v4[7];
  sub_1D5614CB8();
  return sub_1D5616328();
}

void MusicDaemon.Request.Context.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v64 = v1;
  v4 = v3;
  v56 = v5;
  v57 = type metadata accessor for MusicDaemon.Item();
  v6 = OUTLINED_FUNCTION_14(v57);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v59 = v10 - v9;
  v11 = sub_1D560C368();
  v12 = OUTLINED_FUNCTION_4(v11);
  v58 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v16);
  v61 = v54 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45F0, &qword_1D5654220);
  OUTLINED_FUNCTION_4(v63);
  v60 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v54 - v22;
  v24 = OUTLINED_FUNCTION_45_38();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D5347740();
  v62 = v23;
  v32 = v64;
  sub_1D5616398();
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v33 = v59;
    v55 = v2;
    v64 = v0;
    v34 = v30;
    OUTLINED_FUNCTION_1_142();
    v37 = sub_1D5347794(v35, v36);
    sub_1D5615FD8();
    v54[1] = v37;
    v38 = *(v58 + 32);
    v39 = v34;
    v40 = v61;
    v61 = v11;
    v38(v34, v40);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_16_81();
    sub_1D5347794(v41, v42);
    sub_1D5615FD8();
    v57 = v38;
    v43 = v64;
    v44 = *(v64 + 20);
    OUTLINED_FUNCTION_7_109();
    sub_1D5347914(v33, v34 + v45);
    v46 = sub_1D5615F98();
    v47 = v4;
    v48 = (v39 + *(v43 + 24));
    *v48 = v46;
    v48[1] = v49;
    v50 = v55;
    v52 = v61;
    v51 = v62;
    sub_1D5615FD8();
    OUTLINED_FUNCTION_203_0();
    v53(v62, v63);
    v57(v39 + *(v43 + 28), v50, v52);
    OUTLINED_FUNCTION_0_184();
    sub_1D53477DC(v39, v56);
    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_1D5347834(v39, v51);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5345684(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1D56162D8();
  sub_1D560C368();
  sub_1D5347794(&qword_1EDD5F560, MEMORY[0x1E69695A8]);
  sub_1D5614CB8();
  v5 = v2 + a2[5];
  MusicDaemon.Item.hash(into:)();
  v6 = (v4 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1D5614E28();
  v9 = v4 + a2[7];
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t static MusicDaemon.Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v71 = type metadata accessor for MusicDaemon.Request.Context(0);
  v4 = OUTLINED_FUNCTION_14(v71);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v70 = v7 - v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v69 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - v15;
  v17 = type metadata accessor for MusicDaemon.Request(0);
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v23 = v21 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v69 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v69 - v28;
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45F8, &qword_1D5654228) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9();
  v33 = (v2 + *(v32 + 56));
  sub_1D53477DC(a1, v2);
  sub_1D53477DC(v72, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_4_109();
      sub_1D53477DC(v2, v27);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_2_141();
        v35 = v69;
        sub_1D5347914(v33, v69);
        if (sub_1D560C348() & 1) != 0 && (static MusicDaemon.Item.== infix(_:_:)(&v27[v71[5]], v35 + v71[5]))
        {
          OUTLINED_FUNCTION_17_73(v71[6]);
          v38 = v38 && v36 == v37;
          if (v38 || (sub_1D5616168() & 1) != 0)
          {
            v39 = v71[7];
            if (sub_1D560C348())
            {
              OUTLINED_FUNCTION_0_184();
              sub_1D5347834(v35, v40);
              v41 = v27;
LABEL_34:
              sub_1D5347834(v41, type metadata accessor for MusicDaemon.Request);
              OUTLINED_FUNCTION_6_106();
              v54 = v2;
              goto LABEL_35;
            }
          }
        }

        OUTLINED_FUNCTION_0_184();
        sub_1D5347834(v35, v63);
        v64 = v27;
LABEL_40:
        sub_1D5347834(v64, type metadata accessor for MusicDaemon.Request);
        OUTLINED_FUNCTION_6_106();
        v67 = v2;
LABEL_42:
        sub_1D5347834(v67, v66);
        return 0;
      }

      v23 = v27;
    }

    else
    {
      OUTLINED_FUNCTION_4_109();
      sub_1D53477DC(v2, v23);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_2_141();
        v55 = v70;
        sub_1D5347914(v33, v70);
        if (sub_1D560C348() & 1) != 0 && (static MusicDaemon.Item.== infix(_:_:)(v23 + v71[5], v55 + v71[5]))
        {
          OUTLINED_FUNCTION_17_73(v71[6]);
          v58 = v38 && v56 == v57;
          if (v58 || (sub_1D5616168() & 1) != 0)
          {
            v59 = v71[7];
            if (sub_1D560C348())
            {
              OUTLINED_FUNCTION_0_184();
              sub_1D5347834(v55, v60);
              v41 = v23;
              goto LABEL_34;
            }
          }
        }

        OUTLINED_FUNCTION_0_184();
        sub_1D5347834(v55, v65);
        v64 = v23;
        goto LABEL_40;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_109();
    sub_1D53477DC(v2, v29);
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230) + 48);
    v23 = &v29[v42];
    if (!swift_getEnumCaseMultiPayload())
    {
      v43 = v2;
      v44 = *v29;
      v45 = *v33;
      OUTLINED_FUNCTION_0_184();
      sub_1D5347914(v23, v16);
      sub_1D5347914(&v33[v42], v14);
      if (v44 == v45 && (sub_1D560C348() & 1) != 0 && (static MusicDaemon.Item.== infix(_:_:)(&v16[v71[5]], &v14[v71[5]]) & 1) != 0)
      {
        v46 = v71[6];
        v47 = *&v16[v46];
        v48 = *&v16[v46 + 8];
        v49 = &v14[v46];
        v50 = v47 == *v49 && v48 == *(v49 + 1);
        if (v50 || (sub_1D5616168() & 1) != 0)
        {
          v51 = v71[7];
          if (sub_1D560C348())
          {
            OUTLINED_FUNCTION_0_184();
            sub_1D5347834(v14, v52);
            sub_1D5347834(v16, type metadata accessor for MusicDaemon.Request);
            OUTLINED_FUNCTION_6_106();
            v54 = v43;
LABEL_35:
            sub_1D5347834(v54, v53);
            return 1;
          }
        }
      }

      OUTLINED_FUNCTION_0_184();
      sub_1D5347834(v14, v68);
      sub_1D5347834(v16, type metadata accessor for MusicDaemon.Request);
      OUTLINED_FUNCTION_6_106();
      v67 = v43;
      goto LABEL_42;
    }
  }

  OUTLINED_FUNCTION_8_102();
  sub_1D5347834(v23, v62);
  sub_1D53478AC(v2);
  return 0;
}

uint64_t sub_1D5345C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F66726570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73624F6E69676562 && a2 == 0xEE00676E69767265;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726573624F646E65 && a2 == 0xEC000000676E6976)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

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

uint64_t sub_1D5345DAC(char a1)
{
  if (!a1)
  {
    return 0x6D726F66726570;
  }

  if (a1 == 1)
  {
    return 0x73624F6E69676562;
  }

  return 0x726573624F646E65;
}

uint64_t sub_1D5345E18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D5345E90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D5345F54(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1D5345F8C(uint64_t a1)
{
  v2 = sub_1D5347A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5345FC8(uint64_t a1)
{
  v2 = sub_1D5347A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5346004(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D5346058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5345C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5346080(uint64_t a1)
{
  v2 = sub_1D534796C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53460BC(uint64_t a1)
{
  v2 = sub_1D534796C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53460F8(uint64_t a1)
{
  v2 = sub_1D53479C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5346134(uint64_t a1)
{
  v2 = sub_1D53479C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5346170(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D53461C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5345E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D53461EC(uint64_t a1)
{
  v2 = sub_1D5347A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5346228(uint64_t a1)
{
  v2 = sub_1D5347A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicDaemon.Request.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v78 = v0;
  v79 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4608, &qword_1D5654238);
  v6 = OUTLINED_FUNCTION_4(v5);
  v75 = v7;
  v76 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v74 = v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4610, &qword_1D5654240);
  OUTLINED_FUNCTION_4(v72);
  v70 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4618, &qword_1D5654248);
  OUTLINED_FUNCTION_4(v73);
  v68 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v71 = v20;
  v77 = type metadata accessor for MusicDaemon.Request.Context(0);
  v21 = OUTLINED_FUNCTION_14(v77);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59_0();
  v26 = v24 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v68 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v69 = &v68 - v31;
  v32 = type metadata accessor for MusicDaemon.Request(0);
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v38 = (v37 - v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4620, &qword_1D5654250);
  v40 = OUTLINED_FUNCTION_4(v39);
  v80 = v41;
  v81 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v68 - v45;
  v47 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D534796C();
  sub_1D56163D8();
  OUTLINED_FUNCTION_4_109();
  sub_1D53477DC(v78, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5347914(v38, v30);
      OUTLINED_FUNCTION_7_3();
      sub_1D5347A14();
      OUTLINED_FUNCTION_23_60();
      OUTLINED_FUNCTION_3_145();
      sub_1D5347794(v49, v50);
      v51 = v72;
      sub_1D56160C8();
      (*(v70 + 8))(v2, v51);
      v52 = v30;
      v53 = type metadata accessor for MusicDaemon.Request.Context;
    }

    else
    {
      sub_1D5347914(v38, v26);
      sub_1D53479C0();
      v64 = v74;
      OUTLINED_FUNCTION_23_60();
      OUTLINED_FUNCTION_3_145();
      sub_1D5347794(v65, v66);
      v67 = v76;
      sub_1D56160C8();
      (*(v75 + 8))(v64, v67);
      OUTLINED_FUNCTION_8_102();
      v52 = v26;
    }
  }

  else
  {
    v54 = v68;
    v55 = *v38;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230) + 48);
    OUTLINED_FUNCTION_2_141();
    v58 = v69;
    sub_1D5347914(&v38[v57], v69);
    sub_1D5347A68();
    v59 = v71;
    OUTLINED_FUNCTION_23_60();
    sub_1D5347ABC();
    v60 = v73;
    v61 = v79;
    sub_1D56160C8();
    if (!v61)
    {
      OUTLINED_FUNCTION_3_145();
      sub_1D5347794(v62, v63);
      sub_1D56160C8();
    }

    (*(v54 + 8))(v59, v60);
    OUTLINED_FUNCTION_8_102();
    v52 = v58;
  }

  sub_1D5347834(v52, v53);
  (*(v80 + 8))(v46, v47);
  OUTLINED_FUNCTION_26();
}

uint64_t MusicDaemon.Request.hash(into:)()
{
  v2 = type metadata accessor for MusicDaemon.Request.Context(0);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  v13 = type metadata accessor for MusicDaemon.Request(0);
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  OUTLINED_FUNCTION_4_109();
  sub_1D53477DC(v0, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_141();
      sub_1D5347914(v19, v1);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D560C368();
      OUTLINED_FUNCTION_1_142();
      sub_1D5347794(v21, v22);
      OUTLINED_FUNCTION_46_33();
      v23 = v1 + v2[5];
      v24 = sub_1D560D838();
      OUTLINED_FUNCTION_11_93();
      sub_1D5347794(v25, v26);
      OUTLINED_FUNCTION_21_65();
      v27 = type metadata accessor for MusicDaemon.Item();
      OUTLINED_FUNCTION_19_67(v27);
      v28 = *(v24 + 24);
      v29 = sub_1D56106B8();
      OUTLINED_FUNCTION_10_93();
      sub_1D5347794(v30, v31);
      OUTLINED_FUNCTION_22_63();
      OUTLINED_FUNCTION_28_53();
      if (v32)
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v29);
      }

      OUTLINED_FUNCTION_27_56();
      if (!v32)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_26_61();
      if (!v32)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      v58 = (v1 + v2[6]);
      v59 = *v58;
      v60 = v58[1];
      sub_1D5614E28();
      v61 = v1 + v2[7];
      OUTLINED_FUNCTION_46_33();
      v12 = v1;
    }

    else
    {
      OUTLINED_FUNCTION_2_141();
      sub_1D5347914(v19, v8);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D560C368();
      OUTLINED_FUNCTION_1_142();
      sub_1D5347794(v47, v48);
      sub_1D5614CB8();
      v49 = v8 + v2[5];
      v50 = sub_1D560D838();
      OUTLINED_FUNCTION_11_93();
      sub_1D5347794(v51, v52);
      OUTLINED_FUNCTION_21_65();
      v53 = type metadata accessor for MusicDaemon.Item();
      OUTLINED_FUNCTION_19_67(v53);
      v54 = *(v50 + 24);
      v55 = sub_1D56106B8();
      OUTLINED_FUNCTION_10_93();
      sub_1D5347794(v56, v57);
      OUTLINED_FUNCTION_22_63();
      OUTLINED_FUNCTION_28_53();
      if (v32)
      {
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](v55);
      }

      OUTLINED_FUNCTION_27_56();
      if (!v32)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_26_61();
      if (!v32)
      {
        OUTLINED_FUNCTION_27();
      }

      sub_1D56162F8();
      v66 = (v8 + v2[6]);
      v67 = *v66;
      v68 = v66[1];
      sub_1D5614E28();
      v69 = v8 + v2[7];
      sub_1D5614CB8();
      v12 = v8;
    }
  }

  else
  {
    v33 = *v19;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230) + 48);
    OUTLINED_FUNCTION_2_141();
    sub_1D5347914(&v19[v35], v12);
    MEMORY[0x1DA6EC0D0](0);
    MEMORY[0x1DA6EC0D0](v33);
    sub_1D560C368();
    OUTLINED_FUNCTION_1_142();
    sub_1D5347794(v36, v37);
    sub_1D5614CB8();
    v38 = v12 + v2[5];
    v39 = sub_1D560D838();
    OUTLINED_FUNCTION_11_93();
    sub_1D5347794(v40, v41);
    OUTLINED_FUNCTION_21_65();
    v42 = type metadata accessor for MusicDaemon.Item();
    OUTLINED_FUNCTION_19_67(v42);
    v43 = *(v39 + 24);
    v44 = sub_1D56106B8();
    OUTLINED_FUNCTION_10_93();
    sub_1D5347794(v45, v46);
    OUTLINED_FUNCTION_22_63();
    OUTLINED_FUNCTION_28_53();
    if (v32)
    {
      sub_1D56162F8();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      MEMORY[0x1DA6EC0D0](v44);
    }

    OUTLINED_FUNCTION_27_56();
    if (!v32)
    {
      OUTLINED_FUNCTION_27();
    }

    sub_1D56162F8();
    OUTLINED_FUNCTION_26_61();
    if (!v32)
    {
      OUTLINED_FUNCTION_27();
    }

    sub_1D56162F8();
    v62 = &v12[v2[6]];
    v63 = *v62;
    v64 = *(v62 + 1);
    sub_1D5614E28();
    v65 = &v12[v2[7]];
    sub_1D5614CB8();
  }

  OUTLINED_FUNCTION_8_102();
  return sub_1D5347834(v12, v70);
}

uint64_t MusicDaemon.Request.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  MusicDaemon.Request.hash(into:)();
  return sub_1D5616328();
}

void MusicDaemon.Request.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v106 = v0;
  v3 = v2;
  v93 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4638, &qword_1D5654258);
  v6 = OUTLINED_FUNCTION_4(v5);
  v96 = v7;
  v97 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v100 = v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4640, &qword_1D5654260);
  OUTLINED_FUNCTION_4(v95);
  v101 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v98 = v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4648, &qword_1D5654268);
  OUTLINED_FUNCTION_4(v103);
  v94 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v99 = v21;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4650, &qword_1D5654270);
  OUTLINED_FUNCTION_4(v104);
  v102 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v89 - v26;
  v28 = type metadata accessor for MusicDaemon.Request(0);
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_13();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v89 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v89 - v40;
  v42 = v3[3];
  v43 = v3[4];
  v105 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v42);
  sub_1D534796C();
  v44 = v106;
  sub_1D5616398();
  if (v44)
  {
    goto LABEL_10;
  }

  v89 = v1;
  v90 = v34;
  v91 = v39;
  v92 = v28;
  v45 = v104;
  v106 = v41;
  v46 = v27;
  v47 = sub_1D5615FE8();
  v51 = sub_1D4FE35F0(v47, 0);
  if (v49 == v50 >> 1)
  {
LABEL_9:
    v59 = sub_1D5615C18();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v61 = v92;
    sub_1D5615F28();
    OUTLINED_FUNCTION_48_2();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_203_0();
    v63(v46, v45);
LABEL_10:
    v64 = v105;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v49 < (v50 >> 1))
  {
    v52 = *(v48 + v49);
    sub_1D4FE35EC(v49 + 1, v50 >> 1, v51, v48, v49, v50);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    v57 = v101;
    if (v54 == v56 >> 1)
    {
      if (v52)
      {
        if (v52 == 1)
        {
          OUTLINED_FUNCTION_7_3();
          sub_1D5347A14();
          v58 = v98;
          OUTLINED_FUNCTION_43_33();
          OUTLINED_FUNCTION_45_38();
          OUTLINED_FUNCTION_3_145();
          sub_1D5347794(v66, v67);
          v68 = v89;
          v69 = v95;
          sub_1D5615FD8();
          swift_unknownObjectRelease();
          (*(v57 + 8))(v58, v69);
          OUTLINED_FUNCTION_203_0();
          v74 = OUTLINED_FUNCTION_39_43();
          v75(v74);
          swift_storeEnumTagMultiPayload();
          v76 = v68;
        }

        else
        {
          sub_1D53479C0();
          OUTLINED_FUNCTION_43_33();
          type metadata accessor for MusicDaemon.Request.Context(0);
          OUTLINED_FUNCTION_3_145();
          sub_1D5347794(v71, v72);
          v76 = v90;
          sub_1D5615FD8();
          v73 = v102;
          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_42_40();
          v81(v80);
          v82 = *(v73 + 8);
          v83 = OUTLINED_FUNCTION_39_43();
          v84(v83);
          swift_storeEnumTagMultiPayload();
        }

        v88 = v105;
        v65 = v106;
      }

      else
      {
        sub_1D5347A68();
        sub_1D5615F18();
        v65 = v106;
        sub_1D5347B10();
        v76 = v91;
        sub_1D5615FD8();
        v70 = v102;
        v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4600, &qword_1D5654230) + 48);
        OUTLINED_FUNCTION_45_38();
        OUTLINED_FUNCTION_3_145();
        sub_1D5347794(v77, v78);
        sub_1D5615FD8();
        v79 = v104;
        swift_unknownObjectRelease();
        v86 = OUTLINED_FUNCTION_20_71();
        v87(v86);
        (*(v70 + 8))(v27, v79);
        swift_storeEnumTagMultiPayload();
        v88 = v105;
      }

      v85 = v93;
      sub_1D5347914(v76, v65);
      sub_1D5347914(v65, v85);
      v64 = v88;
      goto LABEL_11;
    }

    v46 = v27;
    v45 = v104;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D5347690()
{
  sub_1D56162D8();
  MusicDaemon.Request.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D53476CC()
{
  result = qword_1EC7F45E0;
  if (!qword_1EC7F45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F45E0);
  }

  return result;
}

unint64_t sub_1D5347740()
{
  result = qword_1EDD5EA60;
  if (!qword_1EDD5EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA60);
  }

  return result;
}

uint64_t sub_1D5347794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D53477DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D5347834(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D53478AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F45F8, &qword_1D5654228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5347914(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

unint64_t sub_1D534796C()
{
  result = qword_1EDD5EAC0[0];
  if (!qword_1EDD5EAC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5EAC0);
  }

  return result;
}

unint64_t sub_1D53479C0()
{
  result = qword_1EDD5EA98;
  if (!qword_1EDD5EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA98);
  }

  return result;
}

unint64_t sub_1D5347A14()
{
  result = qword_1EDD5EA80;
  if (!qword_1EDD5EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA80);
  }

  return result;
}

unint64_t sub_1D5347A68()
{
  result = qword_1EC7F4628;
  if (!qword_1EC7F4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4628);
  }

  return result;
}

unint64_t sub_1D5347ABC()
{
  result = qword_1EC7F4630;
  if (!qword_1EC7F4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4630);
  }

  return result;
}

unint64_t sub_1D5347B10()
{
  result = qword_1EC7F4658;
  if (!qword_1EC7F4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4658);
  }

  return result;
}

unint64_t sub_1D5347B68()
{
  result = qword_1EC7F4660;
  if (!qword_1EC7F4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4660);
  }

  return result;
}

void sub_1D5347C4C()
{
  sub_1D5347CC0();
  if (v0 <= 0x3F)
  {
    sub_1D5347D2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5347CC0()
{
  if (!qword_1EDD5EA68)
  {
    type metadata accessor for MusicDaemon.Request.Context(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD5EA68);
    }
  }
}

void sub_1D5347D2C()
{
  if (!qword_1EDD5EA48)
  {
    v0 = type metadata accessor for MusicDaemon.Request.Context(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5EA48);
    }
  }
}

uint64_t sub_1D5347DAC()
{
  v0 = sub_1D560C368();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for MusicDaemon.Item();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

_BYTE *_s7RequestO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D5347F50(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_3_3(a1);
}

_BYTE *sub_1D5347F9C(_BYTE *result, int a2, int a3)
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

_BYTE *_s7RequestO7ContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5348124(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5348224()
{
  result = qword_1EC7F4678;
  if (!qword_1EC7F4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4678);
  }

  return result;
}

unint64_t sub_1D534827C()
{
  result = qword_1EC7F4680;
  if (!qword_1EC7F4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4680);
  }

  return result;
}

unint64_t sub_1D53482D4()
{
  result = qword_1EC7F4688;
  if (!qword_1EC7F4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4688);
  }

  return result;
}

unint64_t sub_1D534832C()
{
  result = qword_1EC7F4690;
  if (!qword_1EC7F4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4690);
  }

  return result;
}

unint64_t sub_1D5348384()
{
  result = qword_1EC7F4698;
  if (!qword_1EC7F4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4698);
  }

  return result;
}

unint64_t sub_1D53483DC()
{
  result = qword_1EC7F46A0;
  if (!qword_1EC7F46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46A0);
  }

  return result;
}

unint64_t sub_1D5348434()
{
  result = qword_1EDD5EAA0;
  if (!qword_1EDD5EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EAA0);
  }

  return result;
}

unint64_t sub_1D534848C()
{
  result = qword_1EDD5EAA8;
  if (!qword_1EDD5EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EAA8);
  }

  return result;
}

unint64_t sub_1D53484E4()
{
  result = qword_1EDD5EA70;
  if (!qword_1EDD5EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA70);
  }

  return result;
}

unint64_t sub_1D534853C()
{
  result = qword_1EDD5EA78;
  if (!qword_1EDD5EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA78);
  }

  return result;
}

unint64_t sub_1D5348594()
{
  result = qword_1EDD5EA88;
  if (!qword_1EDD5EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA88);
  }

  return result;
}

unint64_t sub_1D53485EC()
{
  result = qword_1EDD5EA90;
  if (!qword_1EDD5EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA90);
  }

  return result;
}

unint64_t sub_1D5348644()
{
  result = qword_1EDD5EAB0;
  if (!qword_1EDD5EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EAB0);
  }

  return result;
}

unint64_t sub_1D534869C()
{
  result = qword_1EDD5EAB8;
  if (!qword_1EDD5EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EAB8);
  }

  return result;
}

unint64_t sub_1D53486F4()
{
  result = qword_1EDD5EA50;
  if (!qword_1EDD5EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA50);
  }

  return result;
}

unint64_t sub_1D534874C()
{
  result = qword_1EDD5EA58;
  if (!qword_1EDD5EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EA58);
  }

  return result;
}

unint64_t sub_1D53487A4()
{
  result = qword_1EC7F46A8;
  if (!qword_1EC7F46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46A8);
  }

  return result;
}

unint64_t sub_1D53487FC()
{
  result = qword_1EC7F46B0;
  if (!qword_1EC7F46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46B0);
  }

  return result;
}

unint64_t sub_1D5348854()
{
  result = qword_1EC7F46B8;
  if (!qword_1EC7F46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46B8);
  }

  return result;
}

unint64_t sub_1D53488AC()
{
  result = qword_1EC7F46C0;
  if (!qword_1EC7F46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46C0);
  }

  return result;
}

unint64_t sub_1D5348904()
{
  result = qword_1EC7F46C8;
  if (!qword_1EC7F46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46C8);
  }

  return result;
}

unint64_t sub_1D534895C()
{
  result = qword_1EC7F46D0;
  if (!qword_1EC7F46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_60()
{
  v2 = *(v0 - 88);

  return sub_1D5616018();
}

uint64_t OUTLINED_FUNCTION_37_37()
{

  return sub_1D56160C8();
}

uint64_t OUTLINED_FUNCTION_46_33()
{

  return sub_1D5614CB8();
}

void static AssetFlavors.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C0A8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v146 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v133 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v134 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v137 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v139 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_135();
  v140 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  v142 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v133 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v136 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  v135 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  v138 = v39;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_135();
  v141 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_40_4();
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v133 - v46;
  v143 = v45;
  v48 = *(v45 + 48);
  v145 = v6;
  sub_1D50D019C(v6, &v133 - v46);
  v144 = v4;
  sub_1D50D019C(v4, v47 + v48);
  OUTLINED_FUNCTION_43_0(v47);
  if (v49)
  {
    OUTLINED_FUNCTION_43_0(v47 + v48);
    if (v49)
    {
      sub_1D4E6C9CC(v47, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_11;
    }

LABEL_9:
    v51 = v47;
LABEL_60:
    sub_1D4E6C9CC(v51, &qword_1EC7E9FB0, &qword_1D562C590);
    goto LABEL_61;
  }

  sub_1D50D019C(v47, v32);
  OUTLINED_FUNCTION_43_0(v47 + v48);
  if (v49)
  {
    OUTLINED_FUNCTION_26_62();
    v50(v32, v7);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_21_66();
  v52 = OUTLINED_FUNCTION_25_5();
  v53(v52);
  OUTLINED_FUNCTION_0_185();
  sub_1D534B500(v54, v55);
  v0 = OUTLINED_FUNCTION_19_68();
  v56 = v14;
  v57 = *(v1 + 8);
  v58 = OUTLINED_FUNCTION_122_1();
  v57(v58);
  (v57)(v32, v7);
  v14 = v56;
  sub_1D4E6C9CC(v47, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_11:
  v59 = type metadata accessor for AssetFlavors();
  v60 = *(v59 + 20);
  v61 = v143;
  v62 = OUTLINED_FUNCTION_13_9();
  sub_1D50D019C(v62, v2);
  v63 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v63, v2 + v47);
  OUTLINED_FUNCTION_43_0(v2);
  if (v49)
  {
    OUTLINED_FUNCTION_43_0(v2 + v47);
    if (v49)
    {
      sub_1D4E6C9CC(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1D50D019C(v2, v142);
  OUTLINED_FUNCTION_43_0(v2 + v47);
  if (v64)
  {
    OUTLINED_FUNCTION_26_62();
    v65 = OUTLINED_FUNCTION_122_1();
    v66(v65);
LABEL_19:
    v51 = v2;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v67 = OUTLINED_FUNCTION_25_5();
  v68(v67);
  OUTLINED_FUNCTION_0_185();
  sub_1D534B500(v69, v70);
  v47 = OUTLINED_FUNCTION_19_68();
  v0 = v1;
  v71 = OUTLINED_FUNCTION_35_51();
  (v59)(v71);
  v72 = OUTLINED_FUNCTION_122_1();
  (v59)(v72);
  v59 = v61;
  v61 = v1;
  sub_1D4E6C9CC(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_21:
  v73 = *(v59 + 24);
  v74 = OUTLINED_FUNCTION_13_9();
  v75 = v141;
  sub_1D50D019C(v74, v141);
  v76 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v76, v75 + v47);
  OUTLINED_FUNCTION_43_0(v75);
  if (v49)
  {
    OUTLINED_FUNCTION_43_0(v75 + v47);
    if (v49)
    {
      sub_1D4E6C9CC(v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v77 = v140;
  sub_1D50D019C(v75, v140);
  OUTLINED_FUNCTION_43_0(v75 + v47);
  if (v78)
  {
    OUTLINED_FUNCTION_26_62();
    v79(v77, v7);
LABEL_29:
    v51 = v75;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v80 = OUTLINED_FUNCTION_25_5();
  v81(v80);
  OUTLINED_FUNCTION_0_185();
  sub_1D534B500(v82, v83);
  v0 = OUTLINED_FUNCTION_19_68();
  v47 = v75;
  v84 = OUTLINED_FUNCTION_35_51();
  (v59)(v84);
  (v59)(v77, v7);
  v59 = v61;
  sub_1D4E6C9CC(v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_31:
  v85 = *(v59 + 28);
  v86 = OUTLINED_FUNCTION_13_9();
  sub_1D50D019C(v86, v1);
  v87 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v87, v1 + v47);
  OUTLINED_FUNCTION_43_0(v1);
  if (v49)
  {
    OUTLINED_FUNCTION_43_0(v1 + v47);
    if (v49)
    {
      sub_1D4E6C9CC(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v88 = v139;
  sub_1D50D019C(v1, v139);
  OUTLINED_FUNCTION_43_0(v1 + v47);
  if (v89)
  {
    OUTLINED_FUNCTION_26_62();
    v90(v88, v7);
LABEL_39:
    v51 = v1;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_34_0();
  v91 = OUTLINED_FUNCTION_25_5();
  v92(v91);
  OUTLINED_FUNCTION_0_185();
  sub_1D534B500(v93, v94);
  v47 = OUTLINED_FUNCTION_19_68();
  v95 = OUTLINED_FUNCTION_33_2();
  v7(v95);
  (v7)(v88, v0);
  v7 = v0;
  sub_1D4E6C9CC(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_41:
  v142 = v59;
  v96 = *(v59 + 32);
  v97 = OUTLINED_FUNCTION_13_9();
  v98 = v138;
  sub_1D50D019C(v97, v138);
  v99 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v99, v98 + v47);
  OUTLINED_FUNCTION_43_0(v98);
  if (v49)
  {
    OUTLINED_FUNCTION_43_0(v98 + v47);
    if (!v49)
    {
      goto LABEL_59;
    }

    sub_1D4E6C9CC(v98, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v100 = v137;
    sub_1D50D019C(v98, v137);
    OUTLINED_FUNCTION_43_0(v98 + v47);
    if (v101)
    {
      OUTLINED_FUNCTION_26_62();
      v103 = v100;
LABEL_58:
      v102(v103, v7);
LABEL_59:
      v51 = v98;
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_21_66();
    v104 = OUTLINED_FUNCTION_25_5();
    v105(v104);
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v106, v107);
    v47 = OUTLINED_FUNCTION_19_68();
    v108 = OUTLINED_FUNCTION_33_2();
    v7(v108);
    (v7)(v100, v0);
    v7 = v0;
    sub_1D4E6C9CC(v98, &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v47 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v109 = *(v142 + 36);
  v110 = OUTLINED_FUNCTION_13_9();
  v98 = v135;
  sub_1D50D019C(v110, v135);
  v111 = OUTLINED_FUNCTION_27_57();
  sub_1D50D019C(v111, v98 + v47);
  OUTLINED_FUNCTION_43_0(v98);
  if (v49)
  {
    OUTLINED_FUNCTION_43_0(v98 + v47);
    if (v49)
    {
      sub_1D4E6C9CC(v98, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_63:
      v119 = *(v142 + 40);
      v120 = OUTLINED_FUNCTION_13_9();
      v121 = v136;
      sub_1D50D019C(v120, v136);
      v122 = OUTLINED_FUNCTION_27_57();
      sub_1D50D019C(v122, v121 + v47);
      OUTLINED_FUNCTION_43_0(v121);
      if (v49)
      {
        OUTLINED_FUNCTION_43_0(v136 + v47);
        if (v49)
        {
          sub_1D4E6C9CC(v136, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_61;
        }
      }

      else
      {
        v123 = v136;
        sub_1D50D019C(v136, v133);
        OUTLINED_FUNCTION_43_0(v123 + v47);
        if (!v124)
        {
          OUTLINED_FUNCTION_21_66();
          v126 = v136;
          v127 = OUTLINED_FUNCTION_25_5();
          v128(v127);
          OUTLINED_FUNCTION_0_185();
          sub_1D534B500(v129, v130);
          OUTLINED_FUNCTION_19_68();
          v131 = *(v1 + 8);
          v131(v14, v7);
          v132 = OUTLINED_FUNCTION_122_1();
          (v131)(v132);
          sub_1D4E6C9CC(v126, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_26_62();
        v125(v133, v7);
      }

      v51 = v136;
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v112 = v134;
  sub_1D50D019C(v98, v134);
  OUTLINED_FUNCTION_43_0(v98 + v47);
  if (v113)
  {
    OUTLINED_FUNCTION_26_62();
    v103 = v112;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_21_66();
  v114 = OUTLINED_FUNCTION_25_5();
  v115(v114);
  OUTLINED_FUNCTION_0_185();
  sub_1D534B500(v116, v117);
  v47 = OUTLINED_FUNCTION_19_68();
  v118 = OUTLINED_FUNCTION_33_2();
  v7(v118);
  (v7)(v112, v0);
  v7 = v0;
  sub_1D4E6C9CC(v98, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v47)
  {
    goto LABEL_63;
  }

LABEL_61:
  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for AssetFlavors()
{
  result = qword_1EDD57DC8;
  if (!qword_1EDD57DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void AssetFlavors.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v70 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  v69 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v68 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_31_44();
  sub_1D50D019C(v0, v0);
  OUTLINED_FUNCTION_5_1(v0);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_7_12();
    v28(v27);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v29, v30);
    OUTLINED_FUNCTION_68_0();
    v31 = OUTLINED_FUNCTION_3_146();
    v32(v31);
  }

  v33 = type metadata accessor for AssetFlavors();
  sub_1D50D019C(v0 + v33[5], v2);
  OUTLINED_FUNCTION_5_1(v2);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v34 = OUTLINED_FUNCTION_8_4();
    v35(v34, v2, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v36, v37);
    OUTLINED_FUNCTION_68_0();
    v38 = OUTLINED_FUNCTION_3_146();
    v39(v38);
  }

  sub_1D50D019C(v0 + v33[6], v1);
  OUTLINED_FUNCTION_5_1(v1);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v40 = OUTLINED_FUNCTION_8_4();
    v41(v40, v1, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v42, v43);
    OUTLINED_FUNCTION_68_0();
    v44 = OUTLINED_FUNCTION_3_146();
    v45(v44);
  }

  sub_1D50D019C(v0 + v33[7], v3);
  OUTLINED_FUNCTION_5_1(v3);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v46 = OUTLINED_FUNCTION_8_4();
    v47(v46, v3, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v48, v49);
    OUTLINED_FUNCTION_68_0();
    v50 = OUTLINED_FUNCTION_3_146();
    v51(v50);
  }

  sub_1D50D019C(v0 + v33[8], v68);
  OUTLINED_FUNCTION_5_1(v68);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v52 = OUTLINED_FUNCTION_7_12();
    v53(v52);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v54, v55);
    OUTLINED_FUNCTION_68_0();
    v56 = OUTLINED_FUNCTION_3_146();
    v57(v56);
  }

  sub_1D50D019C(v0 + v33[9], v69);
  OUTLINED_FUNCTION_5_1(v69);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v58 = OUTLINED_FUNCTION_7_12();
    v59(v58);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v60, v61);
    OUTLINED_FUNCTION_68_0();
    v62 = OUTLINED_FUNCTION_3_146();
    v63(v62);
  }

  sub_1D50D019C(v0 + v33[10], v70);
  OUTLINED_FUNCTION_5_1(v70);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v64 = OUTLINED_FUNCTION_7_12();
    v65(v64);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v66, v67);
    OUTLINED_FUNCTION_68_0();
    (*(v7 + 8))(v12, v4);
  }

  OUTLINED_FUNCTION_46();
}

void AssetFlavors.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v78 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  v77 = v19;
  OUTLINED_FUNCTION_23();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v76 - v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_64_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_40_4();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v76 - v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31_44();
  sub_1D56162D8();
  v29 = OUTLINED_FUNCTION_116();
  sub_1D50D019C(v29, v30);
  OUTLINED_FUNCTION_1(v0);
  if (v31)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v32 = OUTLINED_FUNCTION_9_97();
    v33(v32, v0, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v34, v35);
    OUTLINED_FUNCTION_11_94();
    v36 = OUTLINED_FUNCTION_6_0();
    v37(v36);
  }

  v38 = type metadata accessor for AssetFlavors();
  sub_1D50D019C(v0 + v38[5], v28);
  OUTLINED_FUNCTION_1(v28);
  if (v31)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v39 = OUTLINED_FUNCTION_9_97();
    v40(v39, v28, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v41, v42);
    OUTLINED_FUNCTION_11_94();
    v43 = OUTLINED_FUNCTION_6_0();
    v44(v43);
  }

  sub_1D50D019C(v0 + v38[6], v2);
  OUTLINED_FUNCTION_1(v2);
  if (v31)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v45 = OUTLINED_FUNCTION_9_97();
    v46(v45, v2, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v47, v48);
    OUTLINED_FUNCTION_11_94();
    v49 = OUTLINED_FUNCTION_6_0();
    v50(v49);
  }

  sub_1D50D019C(v0 + v38[7], v1);
  OUTLINED_FUNCTION_1(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v51 = OUTLINED_FUNCTION_9_97();
    v52(v51, v1, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v53, v54);
    OUTLINED_FUNCTION_11_94();
    v55 = OUTLINED_FUNCTION_6_0();
    v56(v55);
  }

  sub_1D50D019C(v0 + v38[8], v23);
  OUTLINED_FUNCTION_1(v23);
  if (v31)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_9_97();
    v58(v57, v23, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v59, v60);
    OUTLINED_FUNCTION_11_94();
    v61 = OUTLINED_FUNCTION_6_0();
    v62(v61);
  }

  v63 = v0 + v38[9];
  v64 = v77;
  sub_1D50D019C(v63, v77);
  OUTLINED_FUNCTION_1(v64);
  if (v31)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v65 = OUTLINED_FUNCTION_9_97();
    v66(v65, v64, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v67, v68);
    OUTLINED_FUNCTION_11_94();
    v69 = OUTLINED_FUNCTION_6_0();
    v70(v69);
  }

  v71 = v78;
  sub_1D50D019C(v3 + v38[10], v78);
  OUTLINED_FUNCTION_1(v71);
  if (v31)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v72 = OUTLINED_FUNCTION_9_97();
    v73(v72, v71, v4);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v74, v75);
    OUTLINED_FUNCTION_11_94();
    (*(v7 + 8))(v12, v4);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5349F4C(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = sub_1D560C0A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v34 = &v33 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v33 = &v33 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v33 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v33 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v33 - v27;
  sub_1D56162D8();
  sub_1D50D019C(v2, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v28, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  sub_1D50D019C(v2 + a2[5], v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v26, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  sub_1D50D019C(v2 + a2[6], v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v23, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  sub_1D50D019C(v2 + a2[7], v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v20, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  v29 = v33;
  sub_1D50D019C(v4 + a2[8], v33);
  if (__swift_getEnumTagSinglePayload(v29, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v29, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  v30 = v34;
  sub_1D50D019C(v4 + a2[9], v34);
  if (__swift_getEnumTagSinglePayload(v30, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v30, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  v31 = v35;
  sub_1D50D019C(v4 + a2[10], v35);
  if (__swift_getEnumTagSinglePayload(v31, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v9, v31, v5);
    sub_1D56162F8();
    sub_1D534B500(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v9, v5);
  }

  return sub_1D5616328();
}

uint64_t AssetFlavors.highDefinitionVideoURL(quality:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for AssetFlavors();
  v6 = 24;
  if (v4)
  {
    v6 = 28;
  }

  v7 = v2 + *(v5 + v6);

  return sub_1D50D019C(v7, a2);
}

uint64_t AssetFlavors.standardDefinitionVideoURL(variant:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = v2 + *(type metadata accessor for AssetFlavors() + qword_1D5654FE0[v4]);

  return sub_1D50D019C(v5, a2);
}

uint64_t AssetFlavors.audioURL(variant:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 += *(type metadata accessor for AssetFlavors() + 20);
  }

  return sub_1D50D019C(v2, a2);
}

uint64_t AssetFlavors.StandardDefinitionVariant.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t AssetFlavors.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1D4E628D4(a1, v14);
  type metadata accessor for CloudAssetFlavors();
  sub_1D534B500(&qword_1EDD56B40, type metadata accessor for CloudAssetFlavors);
  OUTLINED_FUNCTION_18_74();
  sub_1D534B500(v9, type metadata accessor for CloudAssetFlavors);
  sub_1D5610768();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D536AC28();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = *(v6 + 8);
  v12 = OUTLINED_FUNCTION_122_1();
  return v13(v12);
}

uint64_t AssetFlavors.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D536AE60();
  sub_1D534B500(&qword_1EDD56B40, type metadata accessor for CloudAssetFlavors);
  OUTLINED_FUNCTION_18_74();
  sub_1D534B500(v6, type metadata accessor for CloudAssetFlavors);
  sub_1D5610778();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_122_1();
  return v9(v8);
}

void AssetFlavors.description.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20[-v11];
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_64_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-v15];
  v17 = OUTLINED_FUNCTION_23_61();
  sub_1D50D019C(v0 + v17[6], v16);
  v18 = sub_1D560C0A8();
  OUTLINED_FUNCTION_28_54(v16);
  sub_1D4E6C9CC(v16, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70]();
  }

  sub_1D50D019C(v0 + v17[7], v2);
  OUTLINED_FUNCTION_28_54(v2);
  sub_1D4E6C9CC(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70](0x100000000000001ELL);
  }

  sub_1D50D019C(v0 + v17[8], v1);
  OUTLINED_FUNCTION_28_54(v1);
  sub_1D4E6C9CC(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70]();
  }

  sub_1D50D019C(v0 + v17[9], v12);
  OUTLINED_FUNCTION_28_54(v12);
  sub_1D4E6C9CC(v12, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70](0x100000000000001ELL);
  }

  sub_1D50D019C(v0 + v17[10], v9);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v18);
  sub_1D4E6C9CC(v9, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_38_38();
    MEMORY[0x1DA6EAC70]();
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  OUTLINED_FUNCTION_46();
}

void AssetFlavors.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v73 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_135();
  v72 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31_44();
  v13 = sub_1D560C0A8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v71 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v70 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v69 = v23;
  OUTLINED_FUNCTION_23();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = OUTLINED_FUNCTION_23_61();
  v29 = v0;
  sub_1D50D019C(v0 + v28[6], v0);
  OUTLINED_FUNCTION_1(v0);
  if (v30)
  {
    sub_1D4E6C9CC(v0, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v31 = OUTLINED_FUNCTION_116();
    v32(v31);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD00000000000001ELL;
    v75 = v33;
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v34, v35);
    v36 = OUTLINED_FUNCTION_30_50();
    MEMORY[0x1DA6EAC70](v36);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v74, v75);

    v37 = OUTLINED_FUNCTION_20_72();
    v38(v37);
  }

  sub_1D50D019C(v0 + v28[7], v1);
  OUTLINED_FUNCTION_1(v1);
  if (v30)
  {
    sub_1D4E6C9CC(v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v39(v27, v1, v13);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD00000000000001ELL;
    v75 = v40;
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v41, v42);
    v43 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v43);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v74, v75);

    (*(v16 + 8))(v27, v13);
  }

  sub_1D50D019C(v0 + v28[8], v2);
  OUTLINED_FUNCTION_1(v2);
  if (v30)
  {
    sub_1D4E6C9CC(v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v44(v69, v2, v13);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD000000000000022;
    v75 = v45;
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v46, v47);
    v48 = OUTLINED_FUNCTION_30_50();
    MEMORY[0x1DA6EAC70](v48);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_38_5();

    v49 = OUTLINED_FUNCTION_20_72();
    v50(v49);
  }

  v51 = v72;
  sub_1D50D019C(v29 + v28[9], v72);
  OUTLINED_FUNCTION_1(v51);
  if (v30)
  {
    sub_1D4E6C9CC(v51, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v52 = OUTLINED_FUNCTION_116();
    v53(v52);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD00000000000001ELL;
    v75 = v54;
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v55, v56);
    v57 = OUTLINED_FUNCTION_30_50();
    MEMORY[0x1DA6EAC70](v57);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_38_5();

    v58 = OUTLINED_FUNCTION_20_72();
    v59(v58);
  }

  v60 = v73;
  sub_1D50D019C(v29 + v28[10], v73);
  OUTLINED_FUNCTION_1(v60);
  if (v30)
  {
    sub_1D4E6C9CC(v60, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v61 = v71;
    v62 = OUTLINED_FUNCTION_116();
    v63(v62);
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v74 = 0xD00000000000002BLL;
    v75 = v64;
    OUTLINED_FUNCTION_0_185();
    sub_1D534B500(v65, v66);
    v67 = OUTLINED_FUNCTION_30_50();
    MEMORY[0x1DA6EAC70](v67);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_38_5();

    (*(v16 + 8))(v61, v13);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D534B500(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D534B54C()
{
  result = qword_1EC7F46E0;
  if (!qword_1EC7F46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46E0);
  }

  return result;
}

unint64_t sub_1D534B5A4()
{
  result = qword_1EC7F46E8;
  if (!qword_1EC7F46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46E8);
  }

  return result;
}

unint64_t sub_1D534B5FC()
{
  result = qword_1EC7F46F0;
  if (!qword_1EC7F46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F46F0);
  }

  return result;
}

void sub_1D534B680()
{
  sub_1D500A1D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for AssetFlavors.StandardDefinitionVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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