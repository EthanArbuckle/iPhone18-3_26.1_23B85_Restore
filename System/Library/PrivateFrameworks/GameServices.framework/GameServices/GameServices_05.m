uint64_t sub_1D84AD7AC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84AD8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_295();
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_69_1();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_166();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_151();
  v24(v23);
  OUTLINED_FUNCTION_331();

  v25 = *(v12 + 72);
  OUTLINED_FUNCTION_231_1();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1D84AD968()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[29] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[24];
    v13 = v3[21];
    v14 = v3[18];

    v15 = OUTLINED_FUNCTION_56_0();

    return v16(v15);
  }
}

uint64_t sub_1D84ADAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_295();
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_69_1();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_166();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_151();
  v24(v23);
  OUTLINED_FUNCTION_331();

  v25 = *(v12 + 216);
  OUTLINED_FUNCTION_231_1();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1D84ADB6C()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_231_1();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D84ADBDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v23 = a4;
  v22 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[8] = v15;
  sub_1D8580F88();
  v16 = *v15;
  v17 = *v23;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[9] = v20;
  *v20 = v5;
  v20[1] = sub_1D84ADE24;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboards(games:players:)();
}

uint64_t sub_1D84ADE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v13 = v12[9];
  v14 = v12[8];
  v15 = v12[7];
  v16 = v12[6];
  v17 = v12[5];
  v18 = v12[4];
  v19 = v12[3];
  v20 = v12[2];
  OUTLINED_FUNCTION_171_0();
  *v21 = v22;
  *v24 = v23;

  v25 = *(v18 + 8);
  v26 = OUTLINED_FUNCTION_367();
  v27(v26);
  v28 = *(v15 + 8);
  v29 = OUTLINED_FUNCTION_166();
  v30(v29);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_1D84AE008()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  v3 = *v1;
  OUTLINED_FUNCTION_24(&unk_1D8599998);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);

  return v8(v2, v0);
}

uint64_t sub_1D84AE0A8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1D8581018();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84AE23C, 0, 0);
}

uint64_t sub_1D84AE23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[10];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[10];
    v13[20] = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedLeaderboardServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();
      v36 = v13[13];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    v28 = v13[19];
    v13[5] = v13[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_84();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_31();
    v29 = v13[16];
    v13[6] = v13[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA399E8, &qword_1D85981C8);
    sub_1D84AEFCC();
    sub_1D84AF100();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      OUTLINED_FUNCTION_274_1();
      v32 = OUTLINED_FUNCTION_52();
      v33(v32);
      v34 = OUTLINED_FUNCTION_51_0();
      v35(v34);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v45 = v13[13];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v46 = swift_task_alloc();
    v13[22] = v46;
    OUTLINED_FUNCTION_0_3();
    sub_1D84A8E00(v47);
    OUTLINED_FUNCTION_98();
    *v46 = v48;
    v46[1] = sub_1D84AE574;
    v49 = v13[13];
    v50 = v13[10];
    OUTLINED_FUNCTION_9_0(v51);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8599998);
    v16 = swift_task_alloc();
    v13[21] = v16;
    *v16 = v13;
    v16[1] = sub_1D84BD858;
    v17 = v13[9];
    v18 = v13[10];
    OUTLINED_FUNCTION_207_0(v13[8]);
    OUTLINED_FUNCTION_197();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84AE574()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedLeaderboardServiceProtocol<>.previousOcurrences(leaderboards:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_272_0(v1, v2, v3, v4, v5);
  v0[16] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[17] = v7;
  v9 = *(v8 + 64);
  v0[18] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[19] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[20] = v11;
  v13 = *(v12 + 64);
  v0[21] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v0[22] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[23] = v15;
  v17 = *(v16 + 64);
  v0[24] = OUTLINED_FUNCTION_332();
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84AE7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[15];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[15];
  if (is_remote)
  {
    v18 = v14[12];
    OUTLINED_FUNCTION_83_0(v14[13]);
    v14[25] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v43 = v14[24];
      v44 = v14[21];
      v45 = v14[18];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    v35 = v14[24];
    v14[7] = v14[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_84();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_31();
    v36 = v14[21];
    v14[8] = v14[11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_51_1();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA399E8, &qword_1D85981C8);
    sub_1D84AEFCC();
    sub_1D84AF100();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_271_0();
      v39 = OUTLINED_FUNCTION_52();
      v40(v39);
      v41 = OUTLINED_FUNCTION_51_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v54 = v14[18];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[26] = v55;
    *v55 = v56;
    v55[1] = sub_1D84AEB4C;
    v57 = v14[18];
    v58 = v14[15];
    v59 = v14[12];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v14[14]) + 40);
    OUTLINED_FUNCTION_54();
    v61 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v14[28] = v23;
    *v23 = v14;
    v23[1] = sub_1D84AEC44;
    v24 = v14[11];
    v25 = v14[12];
    OUTLINED_FUNCTION_207_0(v14[10]);
    OUTLINED_FUNCTION_169();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v61, a12, a13, a14);
  }
}

uint64_t sub_1D84AEB4C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84AEC44()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[29] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[24];
    v13 = v3[21];
    v14 = v3[18];

    v15 = OUTLINED_FUNCTION_56_0();

    return v16(v15);
  }
}

uint64_t sub_1D84AED84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v23 = a4;
  v22 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[8] = v15;
  sub_1D8580F88();
  v16 = *v15;
  v17 = *v23;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[9] = v20;
  *v20 = v5;
  v20[1] = sub_1D84BD86C;

  return DistributedLeaderboardServiceProtocol<>.previousOcurrences(leaderboards:players:)();
}

unint64_t sub_1D84AEFCC()
{
  result = qword_1ECA399F0;
  if (!qword_1ECA399F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA399E8, &qword_1D85981C8);
    sub_1D84AF050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399F0);
  }

  return result;
}

unint64_t sub_1D84AF050()
{
  result = qword_1ECA399F8;
  if (!qword_1ECA399F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39A00, &qword_1D85981D0);
    sub_1D848211C(&qword_1ECA38DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399F8);
  }

  return result;
}

unint64_t sub_1D84AF100()
{
  result = qword_1ECA39A08;
  if (!qword_1ECA39A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA399E8, &qword_1D85981C8);
    sub_1D84AF184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39A08);
  }

  return result;
}

unint64_t sub_1D84AF184()
{
  result = qword_1ECA39A10;
  if (!qword_1ECA39A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39A00, &qword_1D85981D0);
    sub_1D848211C(&qword_1ECA38DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39A10);
  }

  return result;
}

uint64_t sub_1D84AF234()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599990);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84AF2C0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84AF3E8, 0, 0);
}

uint64_t sub_1D84AF3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[7];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8599990);
    v16 = swift_task_alloc();
    v13[15] = v16;
    *v16 = v13;
    v16[1] = sub_1D84BD870;
    v17 = v13[7];
    OUTLINED_FUNCTION_207_0(v13[6]);
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15 = v13[7];
  v13[14] = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = v13[13];
  v13[5] = v13[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
  OUTLINED_FUNCTION_279_0();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_128_0();
  sub_1D84AFFA0(v28);
  OUTLINED_FUNCTION_127_0();
  sub_1D84AFFA0(v29);
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v31)
  {
    v33 = v13[12];
    v32 = v13[13];
    v34 = v13[11];

    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v37 = v13[13];
    v38 = v13[10];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v39 = v13[10];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v40 = swift_task_alloc();
  v13[16] = v40;
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v41);
  *v40 = v13;
  v40[1] = sub_1D84AF6D8;
  v42 = v13[10];
  v43 = v13[7];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v44, v45, v46, v47, v48, v49, v50);
}

uint64_t sub_1D84AF6D8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedLeaderboardServiceProtocol<>.submit(entries:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v8 = *(v7 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v0[16] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[17] = v10;
  v12 = *(v11 + 64);
  v0[18] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84AF8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[12];
  is_remote = swift_distributed_actor_is_remote();
  v15 = v12[12];
  if (is_remote)
  {
    v16 = v12[9];
    OUTLINED_FUNCTION_83_0(v12[10]);
    v12[19] = v12[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v16)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      v42 = v12[18];
      v43 = v12[15];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v32 = v12[18];
    v12[7] = v12[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
    OUTLINED_FUNCTION_279_0();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_128_0();
    sub_1D84AFFA0(v33);
    OUTLINED_FUNCTION_127_0();
    sub_1D84AFFA0(v34);
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      v38 = v12[17];
      v37 = v12[18];
      v39 = v12[16];

      v40 = OUTLINED_FUNCTION_49_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v52 = v12[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    v12[20] = v53;
    *v53 = v12;
    OUTLINED_FUNCTION_200_0(v53);
    OUTLINED_FUNCTION_207_0(v54);
    OUTLINED_FUNCTION_267_1();
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_210(v12[11]) + 48);
    OUTLINED_FUNCTION_131();
    v63 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v12[22] = v21;
    *v21 = v12;
    v21[1] = sub_1D84AFCE8;
    v22 = v12[9];
    OUTLINED_FUNCTION_44(v12[8]);
    OUTLINED_FUNCTION_207();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, v63, a11, a12);
  }
}

uint64_t sub_1D84AFBF0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84AFCE8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[23] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[18];
    v13 = v3[15];

    OUTLINED_FUNCTION_146();

    return v14();
  }
}

uint64_t sub_1D84AFE14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[5] = v16;
  *v16 = v5;
  v16[1] = sub_1D84BD85C;

  return DistributedLeaderboardServiceProtocol<>.submit(entries:)();
}

unint64_t sub_1D84AFFA0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39710, &qword_1D8596140);
    OUTLINED_FUNCTION_126_0();
    sub_1D84A8E00(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84B0048()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599988);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84B00D4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84B01FC, 0, 0);
}

uint64_t sub_1D84B01FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[7];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8599988);
    v16 = swift_task_alloc();
    v13[15] = v16;
    *v16 = v13;
    v16[1] = sub_1D84B049C;
    v17 = v13[7];
    OUTLINED_FUNCTION_207_0(v13[6]);
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15 = v13[7];
  v13[14] = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = v13[13];
  v13[5] = v13[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84();
  sub_1D848A55C();
  sub_1D848A60C();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v28);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v29)
  {
    v31 = v13[12];
    v30 = v13[13];
    v32 = v13[11];

    v33 = OUTLINED_FUNCTION_49_0();
    v34(v33);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v35 = v13[13];
    v36 = v13[10];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v37 = v13[10];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v38 = swift_task_alloc();
  v13[16] = v38;
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v39);
  *v38 = v13;
  v38[1] = sub_1D84B05C4;
  v40 = v13[10];
  v41 = v13[7];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v42, v43, v44, v45, v46, v47, v48);
}

uint64_t sub_1D84B049C()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v5 = *(v1 + 104);
  v6 = *(v1 + 80);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1D84B05C4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84B06BC()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_331_0();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 104);
  v6 = *(v0 + 80);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t DistributedLeaderboardServiceProtocol<>.reset(leaderboards:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v8 = *(v7 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v0[16] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[17] = v10;
  v12 = *(v11 + 64);
  v0[18] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84B0858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[12];
  is_remote = swift_distributed_actor_is_remote();
  v15 = v12[12];
  if (is_remote)
  {
    v16 = v12[9];
    OUTLINED_FUNCTION_83_0(v12[10]);
    v12[19] = v12[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v16)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      v40 = v12[18];
      v41 = v12[15];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    v32 = v12[18];
    v12[7] = v12[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_84();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {
      v36 = v12[17];
      v35 = v12[18];
      v37 = v12[16];

      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v50 = v12[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v51 = swift_task_alloc();
    v12[20] = v51;
    *v51 = v12;
    OUTLINED_FUNCTION_200_0(v51);
    OUTLINED_FUNCTION_207_0(v52);
    OUTLINED_FUNCTION_267_1();
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v53, v54, v55, v56, v57, v58, v59);
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_210(v12[11]) + 56);
    OUTLINED_FUNCTION_131();
    v61 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v12[22] = v21;
    *v21 = v12;
    v21[1] = sub_1D84B0CD4;
    v22 = v12[9];
    OUTLINED_FUNCTION_44(v12[8]);
    OUTLINED_FUNCTION_207();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, v61, a11, a12);
  }
}

uint64_t sub_1D84B0B34()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84B0C2C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_330();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 144);
  v6 = *(v0 + 120);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D84B0CD4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[23] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[18];
    v13 = v3[15];

    OUTLINED_FUNCTION_146();

    return v14();
  }
}

uint64_t sub_1D84B0E00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[5] = v16;
  *v16 = v5;
  v16[1] = sub_1D84B0F8C;

  return DistributedLeaderboardServiceProtocol<>.reset(leaderboards:)();
}

uint64_t sub_1D84B0F8C()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = v0[2] - 8;
  OUTLINED_FUNCTION_171_0();
  v6 = v5;
  OUTLINED_FUNCTION_37();
  *v7 = v6;

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_188();
  v10(v9);

  OUTLINED_FUNCTION_146();

  return v11();
}

uint64_t sub_1D84B10E8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599980);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84B1174(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84B129C, 0, 0);
}

uint64_t sub_1D84B129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8599980);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_110_1();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_84();
  sub_1D8491E2C();
  sub_1D8491EDC();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
  sub_1D8491F8C();
  sub_1D84920E8();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  v13[3] = sub_1D8484458;
  v35 = v13[11];
  v36 = v13[8];
  OUTLINED_FUNCTION_9_0(v37);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.describe(leaderboardSets:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v0[17] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84B161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    OUTLINED_FUNCTION_83_0(v14[11]);
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_194_0();
    OUTLINED_FUNCTION_84();
    sub_1D8491E2C();
    sub_1D8491EDC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D8491F8C();
    sub_1D84920E8();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v14[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v48;
    *v48 = v49;
    v48[1] = sub_1D84848FC;
    OUTLINED_FUNCTION_215_0();
    v50 = v14[10];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v14[12]) + 64);
    OUTLINED_FUNCTION_54();
    v52 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_286(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_17(v24);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84B18F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84BD878;

  return DistributedLeaderboardServiceProtocol<>.describe(leaderboardSets:)();
}

uint64_t sub_1D84B1A88()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599978);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84B1B14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84B1C3C, 0, 0);
}

uint64_t sub_1D84B1C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8599978);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_110_1();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_229();
  sub_1D847C154();
  sub_1D847C0A4();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
  sub_1D8492BB0();
  sub_1D8492C60();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  v13[3] = sub_1D84A1480;
  v35 = v13[11];
  v36 = v13[8];
  OUTLINED_FUNCTION_9_0(v37);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v0[17] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84B1FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    OUTLINED_FUNCTION_83_0(v14[11]);
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D8492BB0();
    sub_1D8492C60();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v14[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v48;
    *v48 = v49;
    v48[1] = sub_1D84A1A80;
    OUTLINED_FUNCTION_215_0();
    v50 = v14[10];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v14[12]) + 72);
    OUTLINED_FUNCTION_54();
    v52 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_286(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_17(v24);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84B2290(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84B2420;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboardSets(games:)();
}

uint64_t sub_1D84B2420()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_171_0();
  *v6 = v7;
  *v9 = v8;

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_188();
  v12(v11);

  OUTLINED_FUNCTION_146();

  return v13();
}

uint64_t sub_1D84B259C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8599970);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84B2628(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84B2750, 0, 0);
}

uint64_t sub_1D84B2750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8599970);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_110_1();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_84();
  sub_1D8491E2C();
  sub_1D8491EDC();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
  sub_1D848FFF0();
  sub_1D84900A0();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  v13[3] = sub_1D8484458;
  v35 = v13[11];
  v36 = v13[8];
  OUTLINED_FUNCTION_9_0(v37);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  v0[17] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D84B2AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    OUTLINED_FUNCTION_83_0(v14[11]);
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_194_0();
    OUTLINED_FUNCTION_84();
    sub_1D8491E2C();
    sub_1D8491EDC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v14[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v48;
    *v48 = v49;
    v48[1] = sub_1D84848FC;
    OUTLINED_FUNCTION_215_0();
    v50 = v14[10];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v14[12]) + 80);
    OUTLINED_FUNCTION_54();
    v52 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_286(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_17(v24);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84B2DAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84BD878;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_1D84B2F3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v4);
  v5 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v5);
}

uint64_t sub_1D84B2FB0()
{
  v1 = *v0;
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v2);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D84B3034@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v3);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t LeaderboardPlayerScope.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C61626F6C67;
  }

  else
  {
    result = 0x73646E65697266;
  }

  *v0;
  return result;
}

uint64_t sub_1D84B3110@<X0>(uint64_t *a1@<X8>)
{
  result = LeaderboardPlayerScope.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84B3138()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD7E8();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84B3180()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD7E8();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D84B31C4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E69727275636572;
  }

  else
  {
    v3 = 0x63697373616C63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000067;
  }

  if (a2)
  {
    v5 = 0x6E69727275636572;
  }

  else
  {
    v5 = 0x63697373616C63;
  }

  if (a2)
  {
    v6 = 0xE900000000000067;
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
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84B3268(unsigned __int8 a1, char a2)
{
  v2 = 0x68343274736170;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6B65655774736170;
    }

    else
    {
      v4 = 0x656D69546C6C61;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x68343274736170;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6B65655774736170;
    }

    else
    {
      v2 = 0x656D69546C6C61;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84B3364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v6 = OUTLINED_FUNCTION_188();
  sub_1D848211C(v6);
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84B343C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C61626F6C67;
  }

  else
  {
    v3 = 0x73646E65697266;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6C61626F6C67;
  }

  else
  {
    v5 = 0x73646E65697266;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84B350C()
{
  sub_1D85812B8();
}

uint64_t sub_1D84B3574()
{
  sub_1D85812B8();
}

uint64_t sub_1D84B35E4()
{
  sub_1D85812B8();
}

uint64_t sub_1D84B3678()
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D84B36FC()
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D84B379C()
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

void *LeaderboardScore.init(player:value:context:leaderboard:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = result[1];
  v6 = *a4;
  v7 = a4[1];
  *a5 = *result;
  a5[1] = v5;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = v6;
  a5[5] = v7;
  return result;
}

uint64_t static LeaderboardScore.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = sub_1D84B3364(*a1, a1[1], *a2, a2[1], &qword_1ECA389B8, &qword_1D8590B30);
  v11 = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    v13 = OUTLINED_FUNCTION_194();
    v11 = sub_1D84B3364(v13, v14, v8, v9, v15, v16);
  }

  return v11 & 1;
}

uint64_t sub_1D84B3904()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == OUTLINED_FUNCTION_70() && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_439(1970037110);
    v5 = v3 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_219_1();
      v6 = v3 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == OUTLINED_FUNCTION_299() && v0 == v7)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_369();
        if (v1)
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

uint64_t sub_1D84B39F4()
{
  result = OUTLINED_FUNCTION_70();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_232_1(1970037110);
      break;
    case 2:
      result = 0x747865746E6F63;
      break;
    case 3:
      result = OUTLINED_FUNCTION_299();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84B3A88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84B3904();
  *a1 = result;
  return result;
}

uint64_t sub_1D84B3AB0()
{
  sub_1D84B3D14();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B3AE8()
{
  sub_1D84B3D14();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardScore.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A18, &qword_1D8598230);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_110();
  v10 = *v0;
  v11 = v0[1];
  OUTLINED_FUNCTION_252_1();
  v12 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84B3D14();

  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v13);
  OUTLINED_FUNCTION_27_1();
  sub_1D8581A58();
  OUTLINED_FUNCTION_228_0();
  if (!v10)
  {
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_232();
    sub_1D8581A38();
    if (!v1)
    {
      OUTLINED_FUNCTION_340();
      OUTLINED_FUNCTION_232();
      sub_1D8581A48();
      OUTLINED_FUNCTION_191_1();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A90, &qword_1D8590AB0);
      OUTLINED_FUNCTION_1_1();
      sub_1D848211C(v14);
      OUTLINED_FUNCTION_27_1();
      OUTLINED_FUNCTION_232();
      sub_1D8581A58();
      OUTLINED_FUNCTION_228_0();
    }
  }

  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_291();
  v17(v16);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D84B3D14()
{
  result = qword_1ECA43DB0;
  if (!qword_1ECA43DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DB0);
  }

  return result;
}

uint64_t LeaderboardScore.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v9 = *v0;
  v10 = v0[1];
  v5 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_122_0();
  sub_1D848211C(v7);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](v1);
  MEMORY[0x1DA7191F0](v2);
  OUTLINED_FUNCTION_284_1();
  sub_1D848211C(&unk_1ECA38A98);
  OUTLINED_FUNCTION_161();
  return sub_1D85811E8();
}

uint64_t LeaderboardScore.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D8581B58();
  v7 = OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v9 = sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_412(v9, v10, v11, v12, v13, v14, v15, v16, v28, v1, v2, v30);
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](v3);
  MEMORY[0x1DA7191F0](v4);
  v17 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  v19 = sub_1D848211C(&unk_1ECA38A98);
  OUTLINED_FUNCTION_412(v19, v20, v21, v22, v23, v24, v25, v26, v29, v5, v6, v31);
  sub_1D85811E8();
  return sub_1D8581B98();
}

void LeaderboardScore.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A20, &qword_1D8598238);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_160();
  v11 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84B3D14();
  OUTLINED_FUNCTION_237_0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v14);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_185_0();
    v20 = sub_1D8581938();
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_185_0();
    v15 = sub_1D8581948();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A90, &qword_1D8590AB0);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v16);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    v17 = *(v7 + 8);
    v18 = OUTLINED_FUNCTION_199_0();
    v19(v18);
    *v4 = v21;
    v4[1] = v22;
    v4[2] = v20;
    v4[3] = v15;
    v4[4] = v21;
    v4[5] = v22;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84B4200()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[4];
  v6 = v0[5];
  sub_1D8581B58();
  LeaderboardScore.hash(into:)();
  return sub_1D8581B98();
}

GameServices::LeaderboardTimeScope_optional __swiftcall LeaderboardTimeScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8581868();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LeaderboardTimeScope.rawValue.getter()
{
  v1 = 0x6B65655774736170;
  if (*v0 != 1)
  {
    v1 = 0x656D69546C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68343274736170;
  }
}

uint64_t sub_1D84B431C@<X0>(uint64_t *a1@<X8>)
{
  result = LeaderboardTimeScope.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84B4344()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD794();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84B438C()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD794();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D84B43F4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D8581868();

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

uint64_t LeaderboardType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E69727275636572;
  }

  else
  {
    result = 0x63697373616C63;
  }

  *v0;
  return result;
}

uint64_t sub_1D84B44A0@<X0>(uint64_t *a1@<X8>)
{
  result = LeaderboardType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84B44C8()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD740();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84B4510()
{
  OUTLINED_FUNCTION_99();
  sub_1D84BD740();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t static LeaderboardVisibility.fromVisibility(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = 0;
  if (a2)
  {
    v4 = result == 0x524F465F45444948 && a2 == 0xEC0000004C4C415FLL;
    if (v4 || (result = sub_1D8581AB8(), (result & 1) != 0))
    {
      v5 = 1;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_1D84B45EC()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x41726F46776F6873 && v2 == 0xEA00000000006C6CLL;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x41726F4665646968 && v0 == 0xEA00000000006C6CLL)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D84B46A0(char a1)
{
  if (a1)
  {
    return 0x41726F4665646968;
  }

  else
  {
    return 0x41726F46776F6873;
  }
}

uint64_t sub_1D84B46F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84B45EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D84B4718()
{
  sub_1D84B4AC4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B4750()
{
  sub_1D84B4AC4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84B4788()
{
  sub_1D84B4B18();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B47C0()
{
  sub_1D84B4B18();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84B47F8()
{
  sub_1D84B4B6C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B4830()
{
  sub_1D84B4B6C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardVisibility.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A28, &qword_1D8598240);
  v4 = OUTLINED_FUNCTION_1(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  v32 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A30, &qword_1D8598248);
  v11 = OUTLINED_FUNCTION_1(v10);
  v31[0] = v12;
  v31[1] = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_250_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A38, &qword_1D8598250);
  OUTLINED_FUNCTION_1(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v31 - v22;
  v24 = *v0;
  v25 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84B4AC4();
  sub_1D8581BB8();
  v26 = (v18 + 8);
  if (v24)
  {
    OUTLINED_FUNCTION_338();
    sub_1D84B4B18();
    v27 = v32;
    sub_1D8581988();
    (*(v33 + 8))(v27, v34);
  }

  else
  {
    sub_1D84B4B6C();
    sub_1D8581988();
    v28 = OUTLINED_FUNCTION_362();
    v30(v28, v29);
  }

  (*v26)(v23, v16);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D84B4AC4()
{
  result = qword_1ECA43DB8;
  if (!qword_1ECA43DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DB8);
  }

  return result;
}

unint64_t sub_1D84B4B18()
{
  result = qword_1ECA43DC0;
  if (!qword_1ECA43DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DC0);
  }

  return result;
}

unint64_t sub_1D84B4B6C()
{
  result = qword_1ECA43DC8;
  if (!qword_1ECA43DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DC8);
  }

  return result;
}

uint64_t LeaderboardVisibility.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_379();
  v2 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

void LeaderboardVisibility.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v53 = v0;
  v3 = v2;
  v50 = v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A40, &qword_1D8598258);
  OUTLINED_FUNCTION_1(v52);
  v49 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A48, &qword_1D8598260);
  OUTLINED_FUNCTION_1(v11);
  v48 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_160();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A50, &unk_1D8598268);
  OUTLINED_FUNCTION_1(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84B4AC4();
  v24 = v53;
  sub_1D8581BA8();
  if (v24)
  {
    goto LABEL_10;
  }

  v46 = v11;
  v47 = v1;
  v53 = v3;
  v25 = v52;
  v26 = sub_1D8581968();
  v27 = sub_1D84BACA0(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = v27;
LABEL_9:
    v40 = sub_1D85817C8();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v42 = &type metadata for LeaderboardVisibility;
    sub_1D8581888();
    sub_1D85817B8();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    v3 = v53;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_480();
    OUTLINED_FUNCTION_284_0();
    return;
  }

  v45[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_1D84BAE48(v29 + 1, v30 >> 1, v27, v28, v29, v30);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        OUTLINED_FUNCTION_338();
        sub_1D84B4B18();
        v37 = v10;
        OUTLINED_FUNCTION_240_0();
        v38 = v50;
        v39 = v51;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v37, v25);
      }

      else
      {
        sub_1D84B4B6C();
        v44 = v47;
        OUTLINED_FUNCTION_240_0();
        v38 = v50;
        v39 = v51;
        swift_unknownObjectRelease();
        (*(v48 + 8))(v44, v46);
      }

      (*(v39 + 8))(v22, v34);
      *v38 = v31;
      __swift_destroy_boxed_opaque_existential_1(v53);
      goto LABEL_11;
    }

    v52 = v32;
    goto LABEL_9;
  }

  __break(1u);
}

void *GameWithPlayer.init(_:_:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

uint64_t static GameWithPlayer.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (sub_1D84B3364(*a1, a1[1], *a2, a2[1], &qword_1ECA38B38, &qword_1D85981B0))
  {
    v6 = OUTLINED_FUNCTION_194();
    v10 = sub_1D84B3364(v6, v7, v4, v5, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D84B5164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == OUTLINED_FUNCTION_70() && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D84B5200(char a1)
{
  if (a1)
  {
    return 0x726579616C70;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_1D84B5234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84B5164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84B525C()
{
  sub_1D84BAEC4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B5294()
{
  sub_1D84BAEC4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameWithPlayer.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A58, &qword_1D8598278);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_110();
  v9 = *v0;
  v10 = v0[1];
  v21 = v0[2];
  v22 = v0[3];
  v11 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84BAEC4();

  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  v12 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v14);
  OUTLINED_FUNCTION_27_1();
  sub_1D8581A58();
  OUTLINED_FUNCTION_228_0();
  if (!v9)
  {
    OUTLINED_FUNCTION_338();

    v15 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v17);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_228_0();
  }

  v18 = *(v5 + 8);
  v19 = OUTLINED_FUNCTION_291();
  v20(v19);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameWithPlayer.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];
  OUTLINED_FUNCTION_284_1();
  sub_1D848211C(&unk_1ECA38B58);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  OUTLINED_FUNCTION_284_1();
  sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_161();
  return sub_1D85811E8();
}

uint64_t GameWithPlayer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D8581B58();
  v5 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = sub_1D848211C(&unk_1ECA38B58);
  OUTLINED_FUNCTION_412(v7, v8, v9, v10, v11, v12, v13, v14, v26, v1, v2, v28);
  sub_1D85811E8();
  v15 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v17 = sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_412(v17, v18, v19, v20, v21, v22, v23, v24, v27, v3, v4, v29);
  sub_1D85811E8();
  return sub_1D8581B98();
}

void GameWithPlayer.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A60, &qword_1D8598280);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_160();
  v11 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84BAEC4();
  OUTLINED_FUNCTION_237_0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v14);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v15);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_185_0();
    sub_1D8581958();
    v16 = *(v7 + 8);
    v17 = OUTLINED_FUNCTION_199_0();
    v18(v17);
    *v4 = v19;
    v4[1] = v20;
    v4[2] = v19;
    v4[3] = v20;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84B5880()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1D8581B58();
  GameWithPlayer.hash(into:)();
  return sub_1D8581B98();
}

uint64_t RecurringLeaderboardProperties.startDate.getter()
{
  OUTLINED_FUNCTION_393_0();
  v0 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_194();

  return v4(v3);
}

uint64_t RecurringLeaderboardProperties.startDate.setter()
{
  OUTLINED_FUNCTION_85_1();
  v0 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_151();

  return v4(v3);
}

uint64_t RecurringLeaderboardProperties.nextStartDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for RecurringLeaderboardProperties(v0) + 20);
  return OUTLINED_FUNCTION_106();
}

uint64_t RecurringLeaderboardProperties.duration.setter(double a1)
{
  result = type metadata accessor for RecurringLeaderboardProperties(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t RecurringLeaderboardProperties.duration.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for RecurringLeaderboardProperties(v0) + 24);
  return OUTLINED_FUNCTION_106();
}

uint64_t RecurringLeaderboardProperties.init(startDate:nextStartDate:duration:)(double a1)
{
  OUTLINED_FUNCTION_263_0();
  v5 = v4;
  v6 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v6);
  v8 = *(v7 + 32);
  v8(v5, v2, v6);
  v9 = type metadata accessor for RecurringLeaderboardProperties(0);
  result = (v8)(v5 + *(v9 + 20), v1, v6);
  *(v5 + *(v9 + 24)) = a1;
  return result;
}

BOOL static RecurringLeaderboardProperties.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  if (_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v3 = type metadata accessor for RecurringLeaderboardProperties(0), (OUTLINED_FUNCTION_278_1(v3)))
  {
    return *(v1 + *(v2 + 24)) == *(v0 + *(v2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D84B5BA8()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x7461447472617473 && v2 == 0xE900000000000065;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x726174537478656ELL && v0 == 0xED00006574614474;
    if (v5 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x6E6F697461727564 && v0 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_369();
      if (v1)
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

uint64_t sub_1D84B5C98(char a1)
{
  if (!a1)
  {
    return 0x7461447472617473;
  }

  if (a1 == 1)
  {
    return 0x726174537478656ELL;
  }

  return 0x6E6F697461727564;
}

uint64_t sub_1D84B5D08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84B5BA8();
  *a1 = result;
  return result;
}

uint64_t sub_1D84B5D30()
{
  sub_1D84BAF38();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B5D68()
{
  sub_1D84BAF38();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void RecurringLeaderboardProperties.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A68, &qword_1D8598288);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v13, v14);
  sub_1D84BAF38();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_1();
  sub_1D84A8E00(v15);
  OUTLINED_FUNCTION_217_1();
  sub_1D8581A58();
  if (!v1)
  {
    v16 = type metadata accessor for RecurringLeaderboardProperties(0);
    v17 = *(v16 + 20);
    OUTLINED_FUNCTION_217_1();
    sub_1D8581A58();
    v18 = *(v2 + *(v16 + 24));
    sub_1D8581A28();
  }

  v19 = *(v7 + 8);
  v20 = OUTLINED_FUNCTION_291();
  v21(v20);
  OUTLINED_FUNCTION_284_0();
}

uint64_t RecurringLeaderboardProperties.hash(into:)()
{
  v1 = v0;
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_1();
  sub_1D84A8E00(v2);
  OUTLINED_FUNCTION_206_1();
  sub_1D85811E8();
  v3 = type metadata accessor for RecurringLeaderboardProperties(0);
  v4 = v0 + *(v3 + 20);
  OUTLINED_FUNCTION_206_1();
  sub_1D85811E8();
  v5 = *(v1 + *(v3 + 24));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x1DA719210](*&v5);
}

uint64_t RecurringLeaderboardProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = sub_1D8580EA8();
  v4 = OUTLINED_FUNCTION_1(v43);
  v41 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v8);
  v42 = (&v37 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A70, &qword_1D8598290);
  v11 = OUTLINED_FUNCTION_1(v10);
  v44 = v12;
  v45 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_250_0();
  v16 = type metadata accessor for RecurringLeaderboardProperties(0);
  v17 = OUTLINED_FUNCTION_4_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  v22 = v21 - v20;
  v23 = a1[4];
  OUTLINED_FUNCTION_260(a1, a1[3]);
  sub_1D84BAF38();
  sub_1D8581BA8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v22;
  v39 = a1;
  v37 = v16;
  v48 = 0;
  OUTLINED_FUNCTION_4_1();
  sub_1D84A8E00(v24);
  OUTLINED_FUNCTION_238_1();
  v25 = *(v41 + 32);
  OUTLINED_FUNCTION_164();
  v42 = v26;
  v26();
  v47 = 1;
  OUTLINED_FUNCTION_238_1();
  v28 = v37;
  v27 = v38;
  v29 = *(v37 + 20);
  OUTLINED_FUNCTION_164();
  v42();
  v46 = 2;
  sub_1D8581928();
  v30 = v27;
  v31 = v39;
  v33 = v32;
  v34 = OUTLINED_FUNCTION_362();
  v35(v34, v45);
  *(v30 + *(v28 + 24)) = v33;
  sub_1D84BB2DC();
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1D84BB334();
}

uint64_t LeaderboardDescription.baseLeaderboardId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardDescription.baseLeaderboardId.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardDescription.groupId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardDescription.groupId.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1D84B6518()
{
  v1 = OUTLINED_FUNCTION_393_0();
  v2 = type metadata accessor for RecurringLeaderboardProperties(v1);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
}

uint64_t LeaderboardDescription.recurringProperties.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = v1 + *(type metadata accessor for LeaderboardDescription(v2) + 24);

  return sub_1D84BAF8C(v3, v0);
}

uint64_t LeaderboardDescription.recurringProperties.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = v1 + *(type metadata accessor for LeaderboardDescription(v2) + 24);

  return sub_1D84BAFFC(v0, v3);
}

uint64_t LeaderboardDescription.recurringProperties.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardDescription(v0) + 24);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.title.getter()
{
  v0 = type metadata accessor for LeaderboardDescription(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 28));
  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardDescription.title.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = type metadata accessor for LeaderboardDescription(0);
  result = OUTLINED_FUNCTION_235_1(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardDescription.title.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardDescription(v0) + 28);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.type.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for LeaderboardDescription(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t LeaderboardDescription.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for LeaderboardDescription(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t LeaderboardDescription.type.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardDescription(v0) + 32);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.supportsChallenge.setter(char a1)
{
  result = type metadata accessor for LeaderboardDescription(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t LeaderboardDescription.supportsChallenge.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardDescription(v0) + 36);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.image.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for LeaderboardDescription(v0);
  OUTLINED_FUNCTION_202_1(*(v1 + 40));
}

uint64_t LeaderboardDescription.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for LeaderboardDescription(0);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 40));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t LeaderboardDescription.image.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardDescription(v0) + 40);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.activityIdentifier.getter()
{
  v0 = type metadata accessor for LeaderboardDescription(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 44));
  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardDescription.activityIdentifier.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = type metadata accessor for LeaderboardDescription(0);
  result = OUTLINED_FUNCTION_235_1(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardDescription.activityIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardDescription(v0) + 44);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.activityProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for LeaderboardDescription(0) + 48));
}

uint64_t LeaderboardDescription.activityProperties.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for LeaderboardDescription(v2) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t LeaderboardDescription.activityProperties.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardDescription(v0) + 48);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardDescription.releaseState.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for LeaderboardDescription(v2);
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t sub_1D84B6A48()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for LeaderboardDescription(v2);
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t LeaderboardDescription.effectiveVisibility.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for LeaderboardDescription(v2);
  *v0 = *(v1 + *(result + 56)) & 1;
  return result;
}

uint64_t LeaderboardDescription.description.getter()
{
  v0 = type metadata accessor for LeaderboardDescription(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 60));
  return OUTLINED_FUNCTION_194();
}

void LeaderboardDescription.init(baseLeaderboardId:groupId:recurringProperties:title:type:supportsChallenge:image:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, char a10, uint64_t *a11)
{
  v33 = *a8;
  v37 = a11[1];
  v38 = *a11;
  OUTLINED_FUNCTION_30_1();
  v18 = (a9 + v17);
  v19 = (a9 + v12[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = v12[12];
  v21 = (a9 + v12[11]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v22 = sub_1D84BAFFC(a5, a9 + v11);
  *v18 = a6;
  v18[1] = a7;
  OUTLINED_FUNCTION_79_0(v22, v23, v24, v25, v26, v27, v28, v29, a4, v32, v33, a5, v35, a10);
  v30 = v19[1];

  *v19 = v38;
  v19[1] = v37;
  *v21 = 0;
  v21[1] = 0;
  *(a9 + v20) = 0;
  OUTLINED_FUNCTION_51_2();
}

void LeaderboardDescription.init(baseLeaderboardId:groupId:recurringProperties:title:type:supportsChallenge:image:activityIdentifier:activityProperties:releaseState:visibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35, uint64_t a36, uint64_t a37, unsigned __int8 *a38, unsigned __int8 *a39)
{
  OUTLINED_FUNCTION_513();
  v67 = v42;
  v68 = v43;
  v64 = v44;
  v59 = v45;
  v60 = v46;
  OUTLINED_FUNCTION_62_0();
  v63 = v47;
  v49 = *v48;
  v61 = a34[1];
  v62 = *a34;
  v65 = *a38;
  v66 = *a39;
  v50 = type metadata accessor for LeaderboardDescription(0);
  v51 = v50[6];
  v52 = type metadata accessor for RecurringLeaderboardProperties(0);
  __swift_storeEnumTagSinglePayload(v39 + v51, 1, 1, v52);
  v53 = (v39 + v50[7]);
  v54 = (v39 + v50[10]);
  *v54 = 0;
  v54[1] = 0;
  v55 = v50[12];
  v56 = (v39 + v50[11]);
  *v39 = v41;
  v39[1] = v40;
  v39[2] = v59;
  v39[3] = v60;
  sub_1D84BAFFC(v64, v39 + v51);
  *v53 = v67;
  v53[1] = v68;
  *(v39 + v50[8]) = v49;
  *(v39 + v50[9]) = v63;
  v57 = v54[1];

  *v54 = v62;
  v54[1] = v61;
  *v56 = a35;
  v56[1] = a19;
  *(v39 + v55) = a20;
  OUTLINED_FUNCTION_226_0(v50[13]);
  *v58 = 0;
  v58[1] = 0;
  OUTLINED_FUNCTION_514();
}

void LeaderboardDescription.init(baseLeaderboardId:groupId:recurringProperties:title:type:supportsChallenge:image:activityIdentifier:activityProperties:releaseState:visibility:description:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, char a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, unsigned __int8 *a16, uint64_t a17, uint64_t a18)
{
  v26 = *a8;
  v33 = a11[1];
  v34 = *a11;
  v36 = *a15;
  v37 = *a16;
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_104_1();
  v28 = (a9 + v27);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  sub_1D84BAFFC(a5, a9 + v18);
  *v19 = a6;
  v19[1] = a7;
  *(a9 + v21[8]) = v26;
  *(a9 + v21[9]) = a10;
  v29 = v22[1];

  *v22 = v34;
  v22[1] = v33;
  *v28 = a12;
  v28[1] = a13;
  *(a9 + v20) = a14;
  OUTLINED_FUNCTION_226_0(v21[13]);
  *v30 = a17;
  v30[1] = a18;
}

BOOL static LeaderboardDescription.== infix(_:_:)()
{
  OUTLINED_FUNCTION_129_0();
  v3 = type metadata accessor for RecurringLeaderboardProperties(0);
  v4 = OUTLINED_FUNCTION_4_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v9 = v8 - v7;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298) - 8) + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_160();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A80, &unk_1D85982A0);
  OUTLINED_FUNCTION_4_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v79 - v16;
  v18 = *v1 == *v0 && v1[1] == v0[1];
  if (!v18 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  v19 = v1[3];
  v20 = v0[3];
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = v1[2] == v0[2] && v19 == v20;
    if (!v21 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = type metadata accessor for LeaderboardDescription(0);
  v23 = v22[6];
  v24 = *(v12 + 48);
  sub_1D84BAF8C(v1 + v23, v17);
  sub_1D84BAF8C(v0 + v23, &v17[v24]);
  OUTLINED_FUNCTION_282_0(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_282_0(&v17[v24]);
    if (v18)
    {
      sub_1D8436E18(v17, &qword_1ECA39A78, &qword_1D8598298);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  v32 = OUTLINED_FUNCTION_167();
  sub_1D84BAF8C(v32, v33);
  OUTLINED_FUNCTION_282_0(&v17[v24]);
  if (v34)
  {
    OUTLINED_FUNCTION_123_1();
    sub_1D84BB334();
LABEL_31:
    v35 = &qword_1ECA39A80;
    v36 = &unk_1D85982A0;
LABEL_37:
    sub_1D8436E18(v17, v35, v36);
    return 0;
  }

  sub_1D84BB06C(&v17[v24], v9);
  OUTLINED_FUNCTION_199_0();
  v37 = _s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0();
  if ((v37 & 1) == 0 || (v38 = *(v3 + 20), (_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0))
  {
    sub_1D84BB334();
    sub_1D84BB334();
    v35 = &qword_1ECA39A78;
    v36 = &qword_1D8598298;
    goto LABEL_37;
  }

  v39 = *(v3 + 24);
  v40 = *(v2 + v39);
  v41 = *(v9 + v39);
  sub_1D84BB334();
  sub_1D84BB334();
  sub_1D8436E18(v17, &qword_1ECA39A78, &qword_1D8598298);
  if (v40 != v41)
  {
    return 0;
  }

LABEL_20:
  v25 = v22[7];
  OUTLINED_FUNCTION_154_0();
  if (v28)
  {
    if (!v26)
    {
      return 0;
    }

    OUTLINED_FUNCTION_207_1(v27);
    v31 = v18 && v29 == v30;
    if (!v31 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  if ((sub_1D84B31C4(*(v1 + v22[8]), *(v0 + v22[8])) & 1) == 0 || *(v1 + v22[9]) != *(v0 + v22[9]))
  {
    return 0;
  }

  v43 = v22[10];
  v44 = (v1 + v43);
  v45 = *(v1 + v43 + 8);
  v46 = (v0 + v43);
  v47 = v46[1];
  if (!v45)
  {
    if (!v47)
    {

      goto LABEL_51;
    }

    v53 = v46[1];

LABEL_49:

    return 0;
  }

  v48 = *v46;
  v80 = *v44;
  v81 = v45;
  if (!v47)
  {

    goto LABEL_49;
  }

  v79[0] = v48;
  v79[1] = v47;
  v49 = OUTLINED_FUNCTION_69_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
  OUTLINED_FUNCTION_125_0();
  sub_1D848211C(v51);
  swift_bridgeObjectRetain_n();

  v52 = sub_1D8581208();

  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v54 = v22[11];
  OUTLINED_FUNCTION_154_0();
  if (v57)
  {
    if (!v55)
    {
      return 0;
    }

    OUTLINED_FUNCTION_207_1(v56);
    v60 = v18 && v58 == v59;
    if (!v60 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  v61 = v22[12];
  v62 = *(v1 + v61);
  v63 = *(v0 + v61);
  if (v62)
  {
    if (!v63)
    {
      return 0;
    }

    v64 = *(v0 + v61);

    v65 = sub_1D84BAB00(v62, v63);

    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  v66 = v22[13];
  v67 = *(v1 + v66);
  v68 = *(v0 + v66);
  if (v67 == 3)
  {
    if (v68 != 3)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v80) = v67;
    if (v68 == 3)
    {
      return 0;
    }

    LOBYTE(v79[0]) = v68;
    sub_1D847B7D0();
    if ((sub_1D8581208() & 1) == 0)
    {
      return 0;
    }
  }

  v69 = v22[14];
  v70 = *(v1 + v69);
  v71 = *(v0 + v69);
  if (v70 == 2)
  {
    if (v71 != 2)
    {
      return 0;
    }
  }

  else if (v71 == 2 || ((v71 ^ v70) & 1) != 0)
  {
    return 0;
  }

  v72 = v22[15];
  OUTLINED_FUNCTION_154_0();
  if (!v75)
  {
    return !v73;
  }

  if (!v73)
  {
    return 0;
  }

  OUTLINED_FUNCTION_207_1(v74);
  v78 = v18 && v76 == v77;
  return v78 || (sub_1D8581AB8() & 1) != 0;
}

uint64_t sub_1D84B7474(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001D85858D0 == a2;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_222_1();
    v6 = v3 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001D85858F0 == a2;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_439(1819568500);
        v8 = v3 && a2 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001D8585910 == a2;
            if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_439(1734438249);
              v11 = v3 && a2 == 0xE500000000000000;
              if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001D8585930 == a2;
                if (v12 || (OUTLINED_FUNCTION_7() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x80000001D8585950 == a2;
                  if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v15 = a1 == OUTLINED_FUNCTION_223() && a2 == v14;
                    if (v15 || (OUTLINED_FUNCTION_7() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v16 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                      if (v16 || (OUTLINED_FUNCTION_7() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == OUTLINED_FUNCTION_473() && a2 == v17)
                      {

                        return 11;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_7();
                        OUTLINED_FUNCTION_369();
                        if (a1)
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

unint64_t sub_1D84B774C(char a1)
{
  result = 0x644970756F7267;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = OUTLINED_FUNCTION_232_1(1819568500);
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = OUTLINED_FUNCTION_232_1(1734438249);
      break;
    case 7:
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = OUTLINED_FUNCTION_223();
      break;
    case 10:
      result = 0x696C696269736976;
      break;
    case 11:
      result = OUTLINED_FUNCTION_473();
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D84B7888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84B7474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84B78B8()
{
  sub_1D84BB0D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B78F0()
{
  sub_1D84BB0D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardDescription.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A90, &unk_1D85982B0);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  v15 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v15, v16);
  sub_1D84BB0D0();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  v17 = *v2;
  v18 = v2[1];
  LOBYTE(v28) = 0;
  OUTLINED_FUNCTION_58_0();
  sub_1D8581A08();
  if (!v1)
  {
    v19 = v2[2];
    v20 = v2[3];
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_58_0();
    sub_1D8581998();
    v21 = type metadata accessor for LeaderboardDescription(0);
    v22 = v21[6];
    OUTLINED_FUNCTION_340();
    type metadata accessor for RecurringLeaderboardProperties(0);
    OUTLINED_FUNCTION_36_1();
    sub_1D84A8E00(v23);
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    OUTLINED_FUNCTION_256_1(v21[7]);
    LOBYTE(v28) = 3;
    OUTLINED_FUNCTION_58_0();
    sub_1D8581998();
    LOBYTE(v28) = *(v2 + v21[8]);
    OUTLINED_FUNCTION_255_1();
    sub_1D84BB124();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    v24 = *(v2 + v21[9]);
    OUTLINED_FUNCTION_203_1(5);
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A18();
    OUTLINED_FUNCTION_205_1(v21[10]);

    v25 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v27);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();

    OUTLINED_FUNCTION_256_1(v21[11]);
    LOBYTE(v28) = 7;
    OUTLINED_FUNCTION_58_0();
    sub_1D8581998();
    v28 = *(v2 + v21[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    sub_1D84BB220(&unk_1ECA39AB0);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    LOBYTE(v28) = *(v2 + v21[13]);
    sub_1D8466A84();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    LOBYTE(v28) = *(v2 + v21[14]);
    sub_1D84BB178();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    OUTLINED_FUNCTION_256_1(v21[15]);
    LOBYTE(v28) = 11;
    OUTLINED_FUNCTION_58_0();
    sub_1D8581998();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t LeaderboardDescription.hash(into:)()
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_85_1();
  v5 = type metadata accessor for RecurringLeaderboardProperties(v4);
  v6 = OUTLINED_FUNCTION_4_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298) - 8) + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_160();
  v14 = *v1;
  v15 = v1[1];
  sub_1D85812B8();
  if (v1[3])
  {
    v16 = v1[2];
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v17 = type metadata accessor for LeaderboardDescription(0);
  sub_1D84BAF8C(v1 + v17[6], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    sub_1D84BB06C(v2, v11);
    OUTLINED_FUNCTION_414();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_4_1();
    sub_1D84A8E00(v18);
    OUTLINED_FUNCTION_164();
    sub_1D85811E8();
    v19 = v11 + *(v5 + 20);
    OUTLINED_FUNCTION_164();
    sub_1D85811E8();
    v20 = *(v11 + *(v5 + 24));
    if (v20 == 0.0)
    {
      v20 = 0.0;
    }

    MEMORY[0x1DA719210](*&v20);
    OUTLINED_FUNCTION_123_1();
    sub_1D84BB334();
  }

  v21 = (v3 + v17[7]);
  if (v21[1])
  {
    v22 = *v21;
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_367();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  *(v3 + v17[8]);
  *(v3 + v17[8]);
  sub_1D85812B8();

  v23 = *(v3 + v17[9]);
  sub_1D8581B78();
  v24 = (v3 + v17[10]);
  if (v24[1])
  {
    v35 = *v24;
    v36 = v24[1];
    OUTLINED_FUNCTION_414();

    v25 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_6();
    sub_1D848211C(v27);
    OUTLINED_FUNCTION_367();
    sub_1D85811E8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v28 = (v3 + v17[11]);
  if (v28[1])
  {
    v29 = *v28;
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_367();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v30 = *(v3 + v17[12]);
  if (v30)
  {
    OUTLINED_FUNCTION_414();
    sub_1D84BACE8(v0, v30);
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (*(v3 + v17[13]) == 3)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_414();
    sub_1D846779C();
    sub_1D85811E8();
  }

  v31 = *(v3 + v17[14]);
  if (v31 == 2)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_414();
    MEMORY[0x1DA7191F0](v31 & 1);
  }

  v32 = (v3 + v17[15]);
  if (!v32[1])
  {
    return OUTLINED_FUNCTION_402();
  }

  v33 = *v32;
  OUTLINED_FUNCTION_414();
  return sub_1D85812B8();
}

void LeaderboardDescription.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298) - 8) + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_250_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AC0, &qword_1D85982C0);
  OUTLINED_FUNCTION_1(v44);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_110();
  v12 = type metadata accessor for LeaderboardDescription(0);
  v13 = OUTLINED_FUNCTION_4_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v18 = (v17 - v16);
  v20 = *(v19 + 24);
  v21 = type metadata accessor for RecurringLeaderboardProperties(0);
  v48 = v20;
  __swift_storeEnumTagSinglePayload(v18 + v20, 1, 1, v21);
  v22 = (v18 + v12[10]);
  *v22 = 0;
  v22[1] = 0;
  v46 = v22;
  v47 = v18;
  v24 = v4[3];
  v23 = v4[4];
  v45 = v4;
  v25 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v25, v26);
  sub_1D84BB0D0();
  OUTLINED_FUNCTION_359();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);

    sub_1D8436E18(v47 + v48, &qword_1ECA39A78, &qword_1D8598298);

    v28 = v46[1];
  }

  else
  {
    v27 = v8;
    LOBYTE(v49) = 0;
    *v47 = sub_1D8581908();
    v47[1] = v29;
    OUTLINED_FUNCTION_83_1(1);
    v47[2] = sub_1D8581898();
    v47[3] = v30;
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_36_1();
    sub_1D84A8E00(v31);
    sub_1D85818E8();
    sub_1D84BAFFC(v2, v47 + v48);
    OUTLINED_FUNCTION_83_1(3);
    v32 = sub_1D8581898();
    v33 = (v47 + v12[7]);
    *v33 = v32;
    v33[1] = v34;
    OUTLINED_FUNCTION_255_1();
    sub_1D84BB1CC();
    OUTLINED_FUNCTION_214_1();
    sub_1D8581958();
    *(v47 + v12[8]) = 0;
    OUTLINED_FUNCTION_83_1(5);
    *(v47 + v12[9]) = sub_1D8581918() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_127();
    sub_1D85818E8();
    v36 = v46[1];

    *v46 = v49;
    v46[1] = v50;
    OUTLINED_FUNCTION_83_1(7);
    v37 = sub_1D8581898();
    v38 = (v47 + v12[11]);
    *v38 = v37;
    v38[1] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    sub_1D84BB220(&unk_1ECA39AD8);
    OUTLINED_FUNCTION_127();
    sub_1D85818E8();
    *(v47 + v12[12]) = v49;
    sub_1D847387C();
    OUTLINED_FUNCTION_214_1();
    sub_1D85818E8();
    *(v47 + v12[13]) = 0;
    sub_1D84BB288();
    sub_1D85818E8();
    *(v47 + v12[14]) = 0;
    v40 = sub_1D8581898();
    v42 = v41;
    (*(v27 + 8))(v1, v44);
    v43 = (v47 + v12[15]);
    *v43 = v40;
    v43[1] = v42;
    sub_1D84BB2DC();
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_291();
    sub_1D84BB334();
  }

  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t LeaderboardEntry.context.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t LeaderboardEntry.context.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1D84B8748()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v4 = *(v3(v2) + 20);
  v5 = sub_1D8580EA8();
  v6 = OUTLINED_FUNCTION_4_0(v5);
  v8 = *(v7 + 16);

  return v8(v0, v1 + v4, v6);
}

uint64_t sub_1D84B87D8()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v4 = *(v3(v2) + 20);
  v5 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t LeaderboardEntry.dateEarned.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardEntry(v0) + 20);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.formattedScore.getter()
{
  v0 = type metadata accessor for LeaderboardEntry(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 24));
  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardEntry.formattedScore.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = type metadata accessor for LeaderboardEntry(0);
  result = OUTLINED_FUNCTION_235_1(*(v3 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardEntry.formattedScore.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardEntry(v0) + 24);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.leaderboard.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for LeaderboardEntry(v0);
  OUTLINED_FUNCTION_202_1(*(v1 + 28));
}

uint64_t LeaderboardEntry.leaderboard.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for LeaderboardEntry(0);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 28));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t LeaderboardEntry.leaderboard.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardEntry(v0) + 28);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.player.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for LeaderboardEntry(v0);
  OUTLINED_FUNCTION_202_1(*(v1 + 32));
}

uint64_t LeaderboardEntry.player.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for LeaderboardEntry(0);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 32));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t LeaderboardEntry.player.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardEntry(v0) + 32);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.rank.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  result = type metadata accessor for LeaderboardEntry(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t LeaderboardEntry.rank.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardEntry(v0) + 36);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.score.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  result = type metadata accessor for LeaderboardEntry(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t LeaderboardEntry.score.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for LeaderboardEntry(v0) + 40);
  return OUTLINED_FUNCTION_106();
}

uint64_t LeaderboardEntry.init(context:dateEarned:formattedScore:leaderboard:player:rank:score:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = *a6;
  v15 = a6[1];
  v17 = *a7;
  v16 = a7[1];
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  v18 = type metadata accessor for LeaderboardEntry(0);
  v19 = v18[5];
  v20 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v20);
  result = (*(v21 + 32))(a9 + v19, a3);
  v23 = (a9 + v18[6]);
  *v23 = a4;
  v23[1] = a5;
  v24 = (a9 + v18[7]);
  *v24 = v14;
  v24[1] = v15;
  v25 = (a9 + v18[8]);
  *v25 = v17;
  v25[1] = v16;
  *(a9 + v18[9]) = a8;
  *(a9 + v18[10]) = a10;
  return result;
}

BOOL static LeaderboardEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  v5 = *(v3 + 8);
  if (*(v4 + 8))
  {
    if (!*(v3 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*v1 != *v0)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for LeaderboardEntry(0);
  if (OUTLINED_FUNCTION_278_1(v6))
  {
    v7 = OUTLINED_FUNCTION_140_1(v2[6]);
    v11 = v7 == v10 && v8 == v9;
    if (v11 || (sub_1D8581AB8() & 1) != 0)
    {
      v12 = OUTLINED_FUNCTION_140_1(v2[7]);
      if (sub_1D84B3364(v12, v13, v14, v15, &qword_1ECA38A90, &qword_1D8590AB0))
      {
        v16 = OUTLINED_FUNCTION_140_1(v2[8]);
        if ((sub_1D84B3364(v16, v17, v18, v19, &qword_1ECA389B8, &qword_1D8590B30) & 1) != 0 && *(v1 + v2[9]) == *(v0 + v2[9]))
        {
          return *(v1 + v2[10]) == *(v0 + v2[10]);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D84B8DB8()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_219_1();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6E72614565746164 && v0 == 0xEA00000000006465;
    if (v5 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_229_1() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_299() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = v1 == OUTLINED_FUNCTION_70() && v0 == 0xE600000000000000;
          if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = v1 == 1802396018 && v0 == 0xE400000000000000;
            if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_439(1919902579);
              if (v3 && v0 == 0xE500000000000000)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_369();
                if (v1)
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
}

uint64_t sub_1D84B8F50(char a1)
{
  result = 0x747865746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6E72614565746164;
      break;
    case 2:
      result = OUTLINED_FUNCTION_229_1();
      break;
    case 3:
      result = OUTLINED_FUNCTION_299();
      break;
    case 4:
      result = OUTLINED_FUNCTION_70();
      break;
    case 5:
      result = 1802396018;
      break;
    case 6:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84B902C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84B8DB8();
  *a1 = result;
  return result;
}

uint64_t sub_1D84B9054()
{
  sub_1D84BB388();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84B908C()
{
  sub_1D84BB388();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardEntry.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AE8, &qword_1D85982C8);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v13, v14);
  sub_1D84BB388();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_217_1();
  sub_1D8581BB8();
  v15 = *v2;
  v16 = *(v2 + 8);
  OUTLINED_FUNCTION_232();
  sub_1D85819C8();
  if (!v1)
  {
    v17 = type metadata accessor for LeaderboardEntry(0);
    v18 = v17[5];
    OUTLINED_FUNCTION_290();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_4_1();
    sub_1D84A8E00(v19);
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_256_1(v17[6]);
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_232();
    sub_1D8581A08();
    OUTLINED_FUNCTION_205_1(v17[7]);
    OUTLINED_FUNCTION_191_1();

    v20 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v22);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_228_0();
    OUTLINED_FUNCTION_205_1(v17[8]);
    OUTLINED_FUNCTION_255_1();

    v23 = OUTLINED_FUNCTION_509();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v25);
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    OUTLINED_FUNCTION_228_0();
    v26 = *(v2 + v17[9]);
    OUTLINED_FUNCTION_203_1(5);
    OUTLINED_FUNCTION_232();
    sub_1D8581A48();
    v27 = *(v2 + v17[10]);
    OUTLINED_FUNCTION_203_1(6);
    OUTLINED_FUNCTION_232();
    sub_1D8581A38();
  }

  v28 = *(v7 + 8);
  v29 = OUTLINED_FUNCTION_291();
  v30(v29);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t LeaderboardEntry.hash(into:)()
{
  v1 = v0;
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    v2 = *v0;
    OUTLINED_FUNCTION_414();
    MEMORY[0x1DA7191F0](v2);
  }

  v3 = type metadata accessor for LeaderboardEntry(0);
  v4 = v3[5];
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_1();
  sub_1D84A8E00(v5);
  sub_1D85811E8();
  v6 = (v1 + v3[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1D85812B8();
  v9 = (v1 + v3[7]);
  v17 = *v9;
  v19 = v9[1];
  v10 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_122_0();
  sub_1D848211C(v12);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  v13 = (v1 + v3[8]);
  v18 = *v13;
  v20 = v13[1];
  v14 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](*(v1 + v3[9]));
  return MEMORY[0x1DA7191F0](*(v1 + v3[10]));
}

uint64_t sub_1D84B94E4(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_379();
  a1(v3);
  return sub_1D8581B98();
}

void LeaderboardEntry.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v42 = sub_1D8580EA8();
  v3 = OUTLINED_FUNCTION_1(v42);
  v40 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v9 = v8 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AF0, &qword_1D85982D0);
  OUTLINED_FUNCTION_1(v41);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for LeaderboardEntry(0);
  v14 = OUTLINED_FUNCTION_4_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v19 = v18 - v17;
  v20 = v2[3];
  v21 = v2[4];
  v43 = v2;
  v22 = OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_260(v22, v23);
  sub_1D84BB388();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v44) = 0;
    OUTLINED_FUNCTION_175_1();
    *v19 = sub_1D85818C8();
    *(v19 + 8) = v24 & 1;
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_4_1();
    sub_1D84A8E00(v25);
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    (*(v40 + 32))(v19 + v13[5], v9, v42);
    OUTLINED_FUNCTION_105_0(2);
    v26 = sub_1D8581908();
    v27 = (v19 + v13[6]);
    *v27 = v26;
    v27[1] = v28;
    v29 = OUTLINED_FUNCTION_189();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    v32 = (v19 + v13[7]);
    *v32 = v44;
    v32[1] = v45;
    v33 = OUTLINED_FUNCTION_189();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_175_1();
    sub_1D8581958();
    v36 = (v19 + v13[8]);
    *v36 = v44;
    v36[1] = v45;
    OUTLINED_FUNCTION_105_0(5);
    *(v19 + v13[9]) = sub_1D8581948();
    OUTLINED_FUNCTION_105_0(6);
    v37 = sub_1D8581938();
    v38 = OUTLINED_FUNCTION_78_0();
    v39(v38);
    *(v19 + v13[10]) = v37;
    sub_1D84BB2DC();
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_1D84BB334();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84B9A6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8581B58();
  a4(v6);
  return sub_1D8581B98();
}

uint64_t LeaderboardSetDescription.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardSetDescription.id.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LeaderboardSetDescription.groupId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardSetDescription.groupId.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t LeaderboardSetDescription.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_194();
}

uint64_t LeaderboardSetDescription.title.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t LeaderboardSetDescription.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t LeaderboardSetDescription.init(id:groupId:title:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v9 = *a7;
  v10 = a7[1];
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;

  a8[6] = v9;
  a8[7] = v10;
  return result;
}

BOOL static LeaderboardSetDescription.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[7];
  v18 = a2[6];
  v19 = a1[6];
  if (!v11 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v13 = v2 == v8 && v4 == v7;
    if (!v13 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3 != v9 || v5 != v10)
  {
    OUTLINED_FUNCTION_206_1();
    if ((sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
      OUTLINED_FUNCTION_125_0();
      sub_1D848211C(v15);
      swift_bridgeObjectRetain_n();

      v16 = sub_1D8581208();

      return (v16 & 1) != 0;
    }

LABEL_25:

    return 0;
  }

  if (v12)
  {
    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_1D84B9E90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (v4 = a1, (OUTLINED_FUNCTION_7() & 1) != 0))
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_222_1();
    v6 = v3 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_439(1819568500);
      v7 = v3 && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_439(1734438249);
        if (v3 && a2 == 0xE500000000000000)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_369();
          if (v4)
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
}

unint64_t sub_1D84B9F90(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x644970756F7267;
      break;
    case 2:
      result = OUTLINED_FUNCTION_232_1(1819568500);
      break;
    case 3:
      result = 0x6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84BA004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84B9E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84BA02C()
{
  sub_1D84BB3DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84BA064()
{
  sub_1D84BB3DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void LeaderboardSetDescription.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AF8, &qword_1D85982D8);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  v12 = *v0;
  v11 = v0[1];
  OUTLINED_FUNCTION_252_1();
  v15 = v0[7];
  v16 = v0[6];
  v13 = v4[4];
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84BB3DC();
  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  sub_1D8581A08();
  if (!v1)
  {
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_232();
    sub_1D8581A08();
    OUTLINED_FUNCTION_191_1();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v14);
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
    OUTLINED_FUNCTION_228_0();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_220_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t LeaderboardSetDescription.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  sub_1D85812B8();
  if (v4)
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_367();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  sub_1D85812B8();
  if (!v7)
  {
    return OUTLINED_FUNCTION_402();
  }

  OUTLINED_FUNCTION_414();

  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v9);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
}

uint64_t LeaderboardSetDescription.hashValue.getter()
{
  OUTLINED_FUNCTION_379();
  LeaderboardSetDescription.hash(into:)();
  return sub_1D8581B98();
}

void LeaderboardSetDescription.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39B00, &qword_1D85982E0);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_250_0();
  v9 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84BB3DC();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_151_0();
    v10 = sub_1D8581908();
    v12 = v11;
    OUTLINED_FUNCTION_151_0();
    v22 = sub_1D8581898();
    v24 = v13;
    LOBYTE(v29[0]) = 2;
    OUTLINED_FUNCTION_151_0();
    v21 = sub_1D8581908();
    v23 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v15);
    sub_1D85818E8();
    v16 = OUTLINED_FUNCTION_103_0();
    v17(v16);
    v18 = v31;

    *&v25 = v10;
    *(&v25 + 1) = v12;
    *&v26 = v22;
    *(&v26 + 1) = v24;
    *&v27 = v21;
    *(&v27 + 1) = v23;
    v28 = v31;
    v19 = v26;
    *v4 = v25;
    v4[1] = v19;
    v20 = v28;
    v4[2] = v27;
    v4[3] = v20;
    sub_1D84BB430(&v25, v29);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v29[0] = v10;
    v29[1] = v12;
    v29[2] = v22;
    v29[3] = v24;
    v29[4] = v21;
    v29[5] = v23;
    v30 = v18;
    sub_1D84BB468(v29);
  }

  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84BA694()
{
  sub_1D8581B58();
  LeaderboardSetDescription.hash(into:)();
  return sub_1D8581B98();
}

uint64_t sub_1D84BAB00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1D8436A4C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1D8581AB8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84BACA0(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D84BACE8(const void *a1, uint64_t a2)
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

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(a2 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a2 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, a1, sizeof(__dst));

    sub_1D85812B8();

    sub_1D85812B8();

    result = sub_1D8581B98();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1DA7191F0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84BAE48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1D84BAEC4()
{
  result = qword_1ECA43DD0;
  if (!qword_1ECA43DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DD0);
  }

  return result;
}

unint64_t sub_1D84BAF38()
{
  result = qword_1ECA43DD8;
  if (!qword_1ECA43DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DD8);
  }

  return result;
}

uint64_t sub_1D84BAF8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D84BAFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D84BB06C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecurringLeaderboardProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D84BB0D0()
{
  result = qword_1ECA43DE0;
  if (!qword_1ECA43DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DE0);
  }

  return result;
}

unint64_t sub_1D84BB124()
{
  result = qword_1ECA39AA0;
  if (!qword_1ECA39AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39AA0);
  }

  return result;
}

unint64_t sub_1D84BB178()
{
  result = qword_1ECA39AB8;
  if (!qword_1ECA39AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39AB8);
  }

  return result;
}

unint64_t sub_1D84BB1CC()
{
  result = qword_1ECA39AD0;
  if (!qword_1ECA39AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39AD0);
  }

  return result;
}

unint64_t sub_1D84BB220(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D84BB288()
{
  result = qword_1ECA39AE0;
  if (!qword_1ECA39AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39AE0);
  }

  return result;
}

uint64_t sub_1D84BB2DC()
{
  OUTLINED_FUNCTION_263_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_194();
  v6(v5);
  return v0;
}

uint64_t sub_1D84BB334()
{
  v1 = OUTLINED_FUNCTION_85_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1D84BB388()
{
  result = qword_1ECA43DE8;
  if (!qword_1ECA43DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA43DE8);
  }

  return result;
}

unint64_t sub_1D84BB3DC()
{
  result = qword_1ECA43DF0[0];
  if (!qword_1ECA43DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA43DF0);
  }

  return result;
}

unint64_t sub_1D84BB544(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3();
  result = sub_1D84A8E00(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D84BB600()
{
  result = qword_1ECA39B18;
  if (!qword_1ECA39B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B18);
  }

  return result;
}

unint64_t sub_1D84BB658()
{
  result = qword_1ECA39B20;
  if (!qword_1ECA39B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B20);
  }

  return result;
}

unint64_t sub_1D84BB6B0()
{
  result = qword_1ECA39B28;
  if (!qword_1ECA39B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B28);
  }

  return result;
}

unint64_t sub_1D84BB708()
{
  result = qword_1ECA39B30;
  if (!qword_1ECA39B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B30);
  }

  return result;
}

unint64_t sub_1D84BB760()
{
  result = qword_1ECA39B38;
  if (!qword_1ECA39B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B38);
  }

  return result;
}

unint64_t sub_1D84BB7B8()
{
  result = qword_1ECA39B40;
  if (!qword_1ECA39B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B40);
  }

  return result;
}

unint64_t sub_1D84BB8C4()
{
  result = qword_1ECA39B60;
  if (!qword_1ECA39B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39B60);
  }

  return result;
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.describe(leaderboards:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_131();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_12_0(v8);
  OUTLINED_FUNCTION_309_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v0 + 16);
  OUTLINED_FUNCTION_131();
  v22 = (v15 + *v15);
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_191(v19);

  return v22(v13, v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboardEntries(leaderboards:players:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_54();
  v30 = v14 + *v14;
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_176(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_191(v18);
  OUTLINED_FUNCTION_207();

  return v26(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v30, a12);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_54();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_82_0(v6);

  return v10(v8);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.previousOcurrences(leaderboards:players:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_54();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_82_0(v6);

  return v10(v8);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.submit(entries:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 48);
  OUTLINED_FUNCTION_131();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_12_0(v8);
  OUTLINED_FUNCTION_309_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.reset(leaderboards:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 56);
  OUTLINED_FUNCTION_131();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_12_0(v8);
  OUTLINED_FUNCTION_309_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.describe(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 64);
  OUTLINED_FUNCTION_131();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_12_0(v8);
  OUTLINED_FUNCTION_309_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 72);
  OUTLINED_FUNCTION_131();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_12_0(v8);
  OUTLINED_FUNCTION_309_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of LeaderboardServiceProtocol.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 80);
  OUTLINED_FUNCTION_131();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_12_0(v8);
  OUTLINED_FUNCTION_309_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D84BC394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D84BC3D0(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D84BC45C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D84BC498(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D84BC508()
{
  result = sub_1D8580EA8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_413();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D84BC5A4()
{
  sub_1D84BC888(319, &qword_1EE0E0060);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D84BC708();
    if (v4 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_136_0(v3, &qword_1ECA39B70, &qword_1ECA389C8, &qword_1D8590820);
    if (v5 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_136_0(v3, &qword_1ECA39B78, &qword_1ECA39AA8, &qword_1D859A9B0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D84BC888(319, &qword_1ECA39B80);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D84BC888(319, &qword_1ECA39B88);
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      OUTLINED_FUNCTION_413();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1D84BC708()
{
  if (!qword_1ECA39B68)
  {
    type metadata accessor for RecurringLeaderboardProperties(255);
    v0 = sub_1D85816F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA39B68);
    }
  }
}

void sub_1D84BC788()
{
  sub_1D84BC888(319, &qword_1ECA39B90);
  if (v0 <= 0x3F)
  {
    v1 = sub_1D8580EA8();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_135_0(v1, &qword_1ECA39B98, &qword_1ECA39BA0, &unk_1D8599048);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_135_0(v3, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_413();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D84BC888(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D85816F8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D84BC8D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D84BC94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 64))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D84BC988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

      return OUTLINED_FUNCTION_321(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LeaderboardEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LeaderboardDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 12);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for LeaderboardDescription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12GameServices20LeaderboardTimeScopeOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12GameServices14GameWithPlayerV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D84BCDDC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D84BCEAC()
{
  result = qword_1ECA458B0[0];
  if (!qword_1ECA458B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA458B0);
  }

  return result;
}

unint64_t sub_1D84BCF04()
{
  result = qword_1ECA45CC0[0];
  if (!qword_1ECA45CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA45CC0);
  }

  return result;
}

unint64_t sub_1D84BCF5C()
{
  result = qword_1ECA45ED0[0];
  if (!qword_1ECA45ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA45ED0);
  }

  return result;
}

unint64_t sub_1D84BCFB4()
{
  result = qword_1ECA460E0[0];
  if (!qword_1ECA460E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA460E0);
  }

  return result;
}

unint64_t sub_1D84BD00C()
{
  result = qword_1ECA462F0[0];
  if (!qword_1ECA462F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA462F0);
  }

  return result;
}

unint64_t sub_1D84BD064()
{
  result = qword_1ECA46500[0];
  if (!qword_1ECA46500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46500);
  }

  return result;
}

unint64_t sub_1D84BD0BC()
{
  result = qword_1ECA46710[0];
  if (!qword_1ECA46710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46710);
  }

  return result;
}

unint64_t sub_1D84BD114()
{
  result = qword_1ECA46820;
  if (!qword_1ECA46820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46820);
  }

  return result;
}

unint64_t sub_1D84BD16C()
{
  result = qword_1ECA46828[0];
  if (!qword_1ECA46828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46828);
  }

  return result;
}

unint64_t sub_1D84BD1C4()
{
  result = qword_1ECA468B0;
  if (!qword_1ECA468B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA468B0);
  }

  return result;
}

unint64_t sub_1D84BD21C()
{
  result = qword_1ECA468B8[0];
  if (!qword_1ECA468B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA468B8);
  }

  return result;
}

unint64_t sub_1D84BD274()
{
  result = qword_1ECA46940;
  if (!qword_1ECA46940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46940);
  }

  return result;
}

unint64_t sub_1D84BD2CC()
{
  result = qword_1ECA46948[0];
  if (!qword_1ECA46948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46948);
  }

  return result;
}

unint64_t sub_1D84BD324()
{
  result = qword_1ECA469D0;
  if (!qword_1ECA469D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA469D0);
  }

  return result;
}

unint64_t sub_1D84BD37C()
{
  result = qword_1ECA469D8[0];
  if (!qword_1ECA469D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA469D8);
  }

  return result;
}

unint64_t sub_1D84BD3D4()
{
  result = qword_1ECA46A60;
  if (!qword_1ECA46A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46A60);
  }

  return result;
}

unint64_t sub_1D84BD42C()
{
  result = qword_1ECA46A68[0];
  if (!qword_1ECA46A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46A68);
  }

  return result;
}

unint64_t sub_1D84BD484()
{
  result = qword_1ECA46AF0;
  if (!qword_1ECA46AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46AF0);
  }

  return result;
}

unint64_t sub_1D84BD4DC()
{
  result = qword_1ECA46AF8[0];
  if (!qword_1ECA46AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46AF8);
  }

  return result;
}

unint64_t sub_1D84BD534()
{
  result = qword_1ECA46B80;
  if (!qword_1ECA46B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46B80);
  }

  return result;
}

unint64_t sub_1D84BD58C()
{
  result = qword_1ECA46B88[0];
  if (!qword_1ECA46B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46B88);
  }

  return result;
}

unint64_t sub_1D84BD5E4()
{
  result = qword_1ECA46C10;
  if (!qword_1ECA46C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46C10);
  }

  return result;
}

unint64_t sub_1D84BD63C()
{
  result = qword_1ECA46C18[0];
  if (!qword_1ECA46C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46C18);
  }

  return result;
}

unint64_t sub_1D84BD694()
{
  result = qword_1ECA46CA0;
  if (!qword_1ECA46CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA46CA0);
  }

  return result;
}

unint64_t sub_1D84BD6EC()
{
  result = qword_1ECA46CA8[0];
  if (!qword_1ECA46CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA46CA8);
  }

  return result;
}

unint64_t sub_1D84BD740()
{
  result = qword_1ECA39BA8;
  if (!qword_1ECA39BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39BA8);
  }

  return result;
}

unint64_t sub_1D84BD794()
{
  result = qword_1ECA39BB0;
  if (!qword_1ECA39BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39BB0);
  }

  return result;
}

unint64_t sub_1D84BD7E8()
{
  result = qword_1ECA39BB8;
  if (!qword_1ECA39BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39BB8);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_21_0(uint64_t a1)
{

  return sub_1D84A8E00(a1);
}

uint64_t OUTLINED_FUNCTION_30_1()
{
  v1 = type metadata accessor for LeaderboardDescription(0);
  v2 = *(v1 + 24);
  v3 = type metadata accessor for RecurringLeaderboardProperties(0);
  result = __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v5 = *(v1 + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_110_1()
{
  v1 = v0[8];
  v0[15] = $DistributedLeaderboardServiceProtocol.actorSystem.getter();

  return GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
}

unint64_t OUTLINED_FUNCTION_138_0(uint64_t a1)
{

  return sub_1D84AB4D0(a1);
}

unint64_t OUTLINED_FUNCTION_139_0(uint64_t a1)
{

  return sub_1D84AB4D0(a1);
}

uint64_t OUTLINED_FUNCTION_140_1@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_205_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = v3[1];
  *(v2 - 96) = *v3;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_207_1@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_208_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *v13 = v17;
  v13[1] = v16;
  v13[2] = v15;
  v13[3] = a11;

  return sub_1D84BAFFC(a13, v13 + v14);
}

unint64_t OUTLINED_FUNCTION_212_1(uint64_t a1)
{

  return sub_1D84A8E00(a1);
}

void OUTLINED_FUNCTION_226_0(uint64_t a1@<X8>)
{
  *(v3 + a1) = v2;
  *(v3 + *(v4 + 56)) = v1;
  v5 = v3 + *(v4 + 60);
}

uint64_t OUTLINED_FUNCTION_228_0()
{
  v2 = *(v0 - 88);
}

uint64_t OUTLINED_FUNCTION_231_1()
{
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
}

uint64_t OUTLINED_FUNCTION_235_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_237_0()
{

  return sub_1D8581BA8();
}

uint64_t OUTLINED_FUNCTION_238_1()
{

  return sub_1D8581958();
}

void OUTLINED_FUNCTION_252_1()
{
  v2 = v0[2];
  *(v1 - 120) = v0[3];
  *(v1 - 112) = v2;
  v3 = v0[4];
  *(v1 - 136) = v0[5];
  *(v1 - 128) = v3;
}

uint64_t OUTLINED_FUNCTION_256_1@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_271_0()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
}

uint64_t OUTLINED_FUNCTION_272_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_275_1@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_278_1(uint64_t a1)
{
  v2 = *(a1 + 20);

  return _s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0();
}

uint64_t OUTLINED_FUNCTION_284_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

void *static $DistributedActivitiesMessageExtensionServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_3();
  sub_1D84C3D90(v5);
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v6);
  v7 = sub_1D8580F48();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = a1[1];
    v8[14] = *a1;
    v8[15] = v9;
    v8[16] = a2;
  }

  return v8;
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_3();
  sub_1D84C3D90(v1);
  sub_1D8580F68();
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 128);

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedActivitiesMessageExtensionServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D84BDFC4()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedActivitiesMessageExtensionServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedActivitiesMessageExtensionServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_3_3();
  sub_1D84C3D90(v3);
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v7;
  v1[15] = v8;
  v6 = v1[16];

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedActivitiesMessageExtensionServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
    OUTLINED_FUNCTION_0_4();
    sub_1D84C3D90(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D84BE204@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D84BE290()
{
  v1 = *v0;
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v2);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D84BE2F4()
{
  v2 = *v0;
  sub_1D8581B58();
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D84BE370()
{
  OUTLINED_FUNCTION_204();
  v1 = *v0;
  v3 = *v2;
  v4 = v2[1];
  v6 = *v5;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_176(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_191(v8);
  v10 = OUTLINED_FUNCTION_188();

  return (sub_1D84BE424)(v10);
}

uint64_t sub_1D84BE424(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 185) = a3;
  *(v4 + 56) = a1;
  v5 = sub_1D8581018();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v4 + 104) = v8;
  v9 = *(v8 - 8);
  *(v4 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v4 + 128) = v11;
  v12 = *(v11 - 8);
  *(v4 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84BE5BC, 0, 0);
}

uint64_t sub_1D84BE5BC()
{
  OUTLINED_FUNCTION_177();
  v1 = *(v0 + 72);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&dword_1D859A440);
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_1D84BE920;
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 185);
    OUTLINED_FUNCTION_207_0(*(v0 + 56));
    OUTLINED_FUNCTION_240();

    __asm { BR              X3 }
  }

  v2 = *(v0 + 72);
  *(v0 + 152) = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)();
  v9 = *(v0 + 144);
  v10 = *(v0 + 64);
  *(v0 + 40) = *(v0 + 56);
  *(v0 + 48) = v10;

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
  OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v11, v12);
  v13 = *(v0 + 120);
  *(v0 + 184) = *(v0 + 185);
  OUTLINED_FUNCTION_229();
  sub_1D8474444();
  sub_1D8474498();
  v14 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_65(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v16)
  {
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);

    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_69_1();
    v25(v24);
    v26 = *(v18 + 8);
    v27 = OUTLINED_FUNCTION_150();
    v28(v27);
    OUTLINED_FUNCTION_331();

    v29 = *(v0 + 144);
    v30 = *(v0 + 120);
    v31 = *(v0 + 96);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_240();

    __asm { BRAA            X1, X16 }
  }

  v34 = *(v0 + 96);
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v35 = swift_task_alloc();
  *(v0 + 168) = v35;
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v36);
  *v35 = v0;
  v35[1] = sub_1D84BEA5C;
  v37 = *(v0 + 96);
  v38 = *(v0 + 72);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_240();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v39, v40, v41, v42, v43, v44, v45);
}

uint64_t sub_1D84BE920()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v5 = v1[18];
  v6 = v1[15];
  v7 = v1[12];

  OUTLINED_FUNCTION_137();

  return v8();
}

uint64_t sub_1D84BEA5C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84BEB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_69_1();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_166();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_151();
  v24(v23);
  OUTLINED_FUNCTION_331();

  v25 = v12[18];
  v26 = v12[15];
  v27 = v12[12];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1D84BEC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_69_1();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_166();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_151();
  v24(v23);
  OUTLINED_FUNCTION_331();

  v25 = v12[22];
  v26 = v12[18];
  v27 = v12[15];
  v28 = v12[12];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t DistributedActivitiesMessageExtensionServiceProtocol<>.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 104) = v6;
  *(v1 + 112) = v0;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  v9 = sub_1D8581018();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 128) = v10;
  v12 = *(v11 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 144) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 152) = v14;
  v16 = *(v15 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 168) = v17;
  OUTLINED_FUNCTION_39(v17);
  *(v1 + 176) = v18;
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_332();
  v22 = *v5;
  v23 = v5[1];
  *(v1 + 184) = v21;
  *(v1 + 192) = v22;
  *(v1 + 200) = v23;
  *(v1 + 250) = *v3;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84BEE6C()
{
  OUTLINED_FUNCTION_185();
  v1 = *(v0 + 112);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 104);
    *(v0 + 72) = *(v0 + 112);
    *(v0 + 40) = v6;
    LOBYTE(v6) = *(v0 + 250);
    *(v0 + 48) = v5;
    *(v0 + 248) = v6;
    v8 = *(*(v7 + 16) + 8);
    OUTLINED_FUNCTION_54();
    v53 = v9 + *v9;
    v11 = *(v10 + 4);
    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    *v12 = v0;
    v12[1] = sub_1D84BF3F0;
    v13 = *(v0 + 88);
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(*(v0 + 96) + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 208) = *(v0 + 80);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 184);
  *(v0 + 56) = *(v0 + 192);
  *(v0 + 64) = v16;

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
  OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v18, v19);
  v20 = *(v0 + 160);
  *(v0 + 249) = *(v0 + 250);
  OUTLINED_FUNCTION_229();
  sub_1D8474444();
  sub_1D8474498();
  v21 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_65(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v22);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v23)
  {
    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v28 = *(v0 + 144);
    v29 = *(v0 + 152);

    v30 = *(v29 + 8);
    v31 = OUTLINED_FUNCTION_69_1();
    v32(v31);
    v33 = *(v25 + 8);
    v34 = OUTLINED_FUNCTION_150();
    v35(v34);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v36 = *(v0 + 184);
    v37 = *(v0 + 160);
    v38 = *(v0 + 136);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  v41 = *(v0 + 136);
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v42 = swift_task_alloc();
  *(v0 + 216) = v42;
  *v42 = v0;
  OUTLINED_FUNCTION_145_0(v42);
  OUTLINED_FUNCTION_53(v43);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v44, v45, v46, v47, v48, v49, v50);
}

uint64_t sub_1D84BF22C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84BF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_69_1();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_166();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_151();
  v24(v23);
  OUTLINED_FUNCTION_331();

  v25 = v12[23];
  v26 = v12[20];
  v27 = v12[17];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1D84BF3F0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[30] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[23];
    v13 = v3[20];
    v14 = v3[17];

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D84BF528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_69_1();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_166();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_151();
  v24(v23);
  OUTLINED_FUNCTION_331();

  v25 = v12[28];
  v26 = v12[23];
  v27 = v12[20];
  v28 = v12[17];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1D84BF5F8()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t sub_1D84BF674(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v19 = a4;
  v11 = a2[1];
  v5[5] = v11;
  v12 = *(v11 - 8);
  v5[6] = v12;
  v13 = *(v12 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_1D8580F88();
  v14 = *v19;
  v15 = *a5;
  v16 = a5[1];
  v17 = swift_task_alloc();
  v5[8] = v17;
  *v17 = v5;
  v17[1] = sub_1D84BF8AC;

  return DistributedActivitiesMessageExtensionServiceProtocol<>.refreshGameActivity(game:scope:)();
}

uint64_t sub_1D84BF8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v13 = v12[8];
  v14 = v12[7];
  v15 = v12[6];
  v16 = v12[4];
  v17 = v12[3];
  v18 = v12[2];
  v19 = v12[5] - 8;
  OUTLINED_FUNCTION_171_0();
  v21 = v20;
  OUTLINED_FUNCTION_37();
  *v22 = v21;

  (*(v17 + 8))(v16, v18);
  v23 = *(v15 + 8);
  v24 = OUTLINED_FUNCTION_188();
  v25(v24);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1D84BFA74()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_24(&unk_1D859A438);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_191(v6);
  v8 = OUTLINED_FUNCTION_188();

  return v10(v8);
}

uint64_t sub_1D84BFB10(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84BFC3C, 0, 0);
}

uint64_t sub_1D84BFC3C()
{
  OUTLINED_FUNCTION_177();
  v1 = v0[9];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D859A438);
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1D84BFF10;
    v4 = v0[8];
    v5 = v0[9];
    OUTLINED_FUNCTION_207_0(v0[7]);
    OUTLINED_FUNCTION_240();

    __asm { BR              X2 }
  }

  v2 = v0[9];
  v0[16] = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)();
  v8 = v0[15];
  v9 = v0[8];
  v0[5] = v0[7];
  v0[6] = v9;

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
  OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v12);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v13)
  {
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];

    v17 = OUTLINED_FUNCTION_49_0();
    v18(v17);
    OUTLINED_FUNCTION_331();

    v19 = v0[15];
    v20 = v0[12];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_240();

    __asm { BRAA            X1, X16 }
  }

  v23 = v0[12];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v24 = swift_task_alloc();
  v0[18] = v24;
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v25);
  *v24 = v0;
  v24[1] = sub_1D849BF18;
  v26 = v0[12];
  v27 = v0[9];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_240();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1D84BFF10()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v5 = *(v1 + 120);
  v6 = *(v1 + 96);

  OUTLINED_FUNCTION_137();

  return v7();
}

uint64_t DistributedActivitiesMessageExtensionServiceProtocol<>.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v5;
  v1[12] = v6;
  v7 = sub_1D8581018();
  v1[15] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[16] = v8;
  v10 = *(v9 + 64);
  v1[17] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[18] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[19] = v12;
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_332();
  v16 = *v3;
  v17 = v3[1];
  v1[20] = v15;
  v1[21] = v16;
  v1[22] = v17;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84C0140()
{
  OUTLINED_FUNCTION_185();
  v1 = v0[14];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v5 = v0[13];
    v0[9] = v0[14];
    v6 = v0[22];
    v0[5] = v0[21];
    v0[6] = v6;
    v7 = *(*(v5 + 16) + 16);
    OUTLINED_FUNCTION_54();
    v42 = v8 + *v8;
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_1D84C0604;
    v12 = v0[11];
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X3, X16 }
  }

  v2 = v0[14];
  v3 = v0[11];
  v4 = *(v0[12] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v0[23] = v0[10];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_11;
  }

  v15 = v0[22];
  v16 = v0[20];
  v0[7] = v0[21];
  v0[8] = v15;

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
  OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v19);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v20)
  {
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[18];

    v24 = OUTLINED_FUNCTION_49_0();
    v25(v24);
    OUTLINED_FUNCTION_331();

LABEL_11:
    v26 = v0[20];
    v27 = v0[17];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  v30 = v0[17];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v31 = swift_task_alloc();
  v0[24] = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_145_0(v31);
  OUTLINED_FUNCTION_53(v32);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v33, v34, v35, v36, v37, v38, v39);
}

uint64_t sub_1D84C0468()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84C0560()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_335();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 160);
  v6 = *(v0 + 136);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D84C0604()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[27] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[20];
    v13 = v3[17];

    OUTLINED_FUNCTION_57();

    return v14();
  }
}

uint64_t sub_1D84C0730(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = sub_1D84B0F8C;

  return DistributedActivitiesMessageExtensionServiceProtocol<>.refreshGameActivity(game:)();
}

uint64_t sub_1D84C08B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *a2;
  v8 = a2[1];
  OUTLINED_FUNCTION_24(&dword_1D859A430);
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_176(v12);
  *v13 = v14;
  v13[1] = sub_1D8442FA8;

  return v16(a1, v7, v8, a3, v10, v11);
}

uint64_t sub_1D84C0990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v10 = *(v9 + 64) + 15;
  v7[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v11;
  v12 = *(v11 - 8);
  v7[21] = v12;
  v13 = *(v12 + 64) + 15;
  v7[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  v7[23] = v14;
  v15 = *(v14 - 8);
  v7[24] = v15;
  v16 = *(v15 + 64) + 15;
  v7[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v7[26] = v17;
  v18 = *(v17 - 8);
  v7[27] = v18;
  v19 = *(v18 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84C0B94, 0, 0);
}

uint64_t sub_1D84C0B94()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v1 = v0[16];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[16];
    v0[29] = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)();
    v15 = v0[28];
    v16 = v0[12];
    v0[5] = v0[11];
    v0[6] = v16;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v17, v18);
    v19 = v0[25];
    v0[9] = v0[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E8, &unk_1D859A110);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1();
    sub_1D849DDF4();
    sub_1D849DF50();
    v20 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v20);
    v21 = v0[22];
    v22 = v0[15];
    v0[7] = v0[14];
    v0[8] = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214();
    sub_1D84751F0();
    sub_1D8475274();
    v23 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39828, &qword_1D85962C8);
    OUTLINED_FUNCTION_25_1();
    sub_1D848211C(v25);
    OUTLINED_FUNCTION_25_1();
    sub_1D848211C(v26);
    OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v27)
    {
      v28 = v0[27];
      v29 = v0[25];
      v62 = v0[26];
      v63 = v0[28];
      v31 = v0[23];
      v30 = v0[24];
      v32 = v0[21];
      v33 = v0[22];
      v34 = v0[20];

      (*(v32 + 8))(v33, v34);
      v35 = *(v30 + 8);
      v36 = OUTLINED_FUNCTION_69_1();
      v38 = v37(v36);
      v46 = OUTLINED_FUNCTION_224(v38, v39, v40, v41, v42, v43, v44, v45, v61, v62, v63);
      v47(v46);
      OUTLINED_FUNCTION_331();

      v48 = v0[28];
      v49 = v0[25];
      v50 = v0[22];
      v51 = v0[19];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44_0();

      return v52();
    }

    else
    {
      v54 = v0[19];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v55 = swift_task_alloc();
      v0[31] = v55;
      OUTLINED_FUNCTION_0_4();
      sub_1D84C3D90(v56);
      *v55 = v0;
      v55[1] = sub_1D84C11B4;
      v57 = v0[19];
      v58 = v0[16];
      v59 = v0[10];
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_170();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[30] = v3;
    *v3 = v4;
    v3[1] = sub_1D84C1054;
    v5 = v0[15];
    v6 = v0[16];
    v7 = v0[13];
    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[10];
    OUTLINED_FUNCTION_44_0();

    return v12();
  }
}

uint64_t sub_1D84C1054()
{
  OUTLINED_FUNCTION_204();
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v5 = v1[28];
  v6 = v1[25];
  v7 = v1[22];
  v8 = v1[19];

  OUTLINED_FUNCTION_137();

  return v9();
}

uint64_t sub_1D84C11B4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedActivitiesMessageExtensionServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 160) = v6;
  *(v1 + 168) = v0;
  *(v1 + 144) = v7;
  *(v1 + 152) = v8;
  *(v1 + 128) = v9;
  *(v1 + 136) = v10;
  v11 = sub_1D8581018();
  *(v1 + 176) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 184) = v12;
  v14 = *(v13 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 200) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 208) = v16;
  v18 = *(v17 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  *(v1 + 224) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v1 + 232) = v20;
  v22 = *(v21 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 248) = v23;
  OUTLINED_FUNCTION_39(v23);
  *(v1 + 256) = v24;
  v26 = *(v25 + 64);
  v27 = OUTLINED_FUNCTION_332();
  v28 = *v5;
  v29 = v5[1];
  *(v1 + 264) = v27;
  *(v1 + 272) = v28;
  *(v1 + 280) = v29;
  *(v1 + 288) = *v3;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v30, v31, v32);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84C1648()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v1 = *(v0 + 168);
  if (swift_distributed_actor_is_remote())
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 144);
    v4 = *(*(v0 + 152) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v0 + 304) = *(v0 + 112);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v3)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v53 = *(v0 + 264);
      v54 = *(v0 + 240);
      v55 = *(v0 + 216);
      v56 = *(v0 + 192);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44_0();

      return v57();
    }

    v20 = *(v0 + 280);
    v21 = *(v0 + 264);
    *(v0 + 72) = *(v0 + 272);
    *(v0 + 80) = v20;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_1_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2_3(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v22, v23);
    v24 = *(v0 + 240);
    *(v0 + 120) = *(v0 + 136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E8, &unk_1D859A110);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1();
    sub_1D849DDF4();
    sub_1D849DF50();
    v25 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v25);
    v26 = *(v0 + 296);
    v27 = *(v0 + 216);
    *(v0 + 88) = *(v0 + 288);
    *(v0 + 96) = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214();
    sub_1D84751F0();
    sub_1D8475274();
    v28 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39828, &qword_1D85962C8);
    OUTLINED_FUNCTION_25_1();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_25_1();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v32)
    {
      v33 = *(v0 + 256);
      v34 = *(v0 + 240);
      v68 = *(v0 + 248);
      v70 = *(v0 + 264);
      v36 = *(v0 + 224);
      v35 = *(v0 + 232);
      v37 = *(v0 + 208);
      v38 = *(v0 + 216);
      v39 = *(v0 + 200);

      (*(v37 + 8))(v38, v39);
      v40 = *(v35 + 8);
      v41 = OUTLINED_FUNCTION_69_1();
      v43 = v42(v41);
      v51 = OUTLINED_FUNCTION_224(v43, v44, v45, v46, v47, v48, v49, v50, v67, v68, v70);
      v52(v51);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v59 = *(v0 + 192);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 312) = v60;
    *v60 = v61;
    v60[1] = sub_1D84C1B5C;
    v62 = *(v0 + 192);
    v63 = *(v0 + 168);
    v64 = *(v0 + 144);
    v65 = *(v0 + 128);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v6 = *(v0 + 272);
    v5 = *(v0 + 280);
    v7 = *(v0 + 160);
    *(v0 + 104) = *(v0 + 168);
    *(v0 + 40) = v6;
    *(v0 + 48) = v5;
    *(v0 + 56) = *(v0 + 288);
    v8 = *(*(v7 + 16) + 24);
    OUTLINED_FUNCTION_54();
    v69 = v9 + *v9;
    v11 = *(v10 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 328) = v12;
    *v12 = v13;
    v12[1] = sub_1D84C1D34;
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);
    OUTLINED_FUNCTION_44_0();

    return v17();
  }
}

uint64_t sub_1D84C1B5C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84C1D34()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[42] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[33];
    v13 = v3[30];
    v14 = v3[27];
    v15 = v3[24];

    OUTLINED_FUNCTION_57();

    return v16();
  }
}

uint64_t sub_1D84C1F58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a2;
  v5[2] = *a2;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[7] = v13;
  sub_1D8580F88();
  v22 = *v13;
  v14 = a2[2];
  v5[8] = v14;
  v15 = *(v14 - 8);
  v5[9] = v15;
  v16 = *(v15 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_1D8580F88();
  v17 = *a4;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[11] = v20;
  *v20 = v5;
  v20[1] = sub_1D84C2274;

  return DistributedActivitiesMessageExtensionServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_1D84C2274()
{
  OUTLINED_FUNCTION_153();
  v1 = v0[11];
  v2 = v0[10];
  v15 = v0[9];
  v3 = v0[8];
  v4 = v0[7];
  v14 = v0[6];
  v5 = v0[5];
  v6 = v0[4];
  v7 = v0[3];
  v8 = v0[2];
  OUTLINED_FUNCTION_171_0();
  v10 = v9;
  OUTLINED_FUNCTION_37();
  *v11 = v10;

  (*(v7 + 8))(v6, v8);
  (*(v14 + 8))(v4, v5);
  (*(v15 + 8))(v2, v3);

  OUTLINED_FUNCTION_146();

  return v12();
}

uint64_t sub_1D84C24E4()
{
  OUTLINED_FUNCTION_174();
  v2 = v1;
  v3 = *v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);

  return (sub_1D84C2674)(v2);
}

uint64_t sub_1D84C2588()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;

  OUTLINED_FUNCTION_69_2();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1D84C2674(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84C279C, 0, 0);
}

uint64_t sub_1D84C279C()
{
  OUTLINED_FUNCTION_177();
  v1 = v0[8];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[8];
    v0[15] = $DistributedActivitiesMessageExtensionServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)();
    v7 = v0[14];
    v0[5] = v0[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_30();
    sub_1D84C37F0(v8);
    OUTLINED_FUNCTION_32();
    sub_1D84C37F0(v9);
    v10 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
    OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v12)
    {
      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[12];

      v16 = OUTLINED_FUNCTION_49_0();
      v17(v16);
      OUTLINED_FUNCTION_331();

      v18 = v0[14];
      v19 = v0[11];

      OUTLINED_FUNCTION_48();

      return v20();
    }

    else
    {
      v21 = v0[11];
      sub_1D8581028();
      v22 = swift_task_alloc();
      v0[17] = v22;
      OUTLINED_FUNCTION_0_4();
      sub_1D84C3D90(v23);
      OUTLINED_FUNCTION_168();
      *v22 = v24;
      v22[1] = sub_1D84C2C64;
      v25 = v0[11];
      v26 = v0[8];
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_173();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_1D859A428);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_1D84C2B28;
    v4 = v0[8];
    v5 = OUTLINED_FUNCTION_207_0(v0[7]);

    return v28(v5);
  }
}

uint64_t sub_1D84C2B28()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;

  v8 = *(v4 + 112);
  v9 = *(v4 + 88);

  v11 = *(v6 + 8);
  if (!v0)
  {
    v10 = v3;
  }

  return v11(v10);
}

uint64_t sub_1D84C2C64()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84C2D5C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[6];
  v6 = v0[14];
  v7 = v0[11];

  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_511();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t DistributedActivitiesMessageExtensionServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[9] = v5;
  v6 = sub_1D8581018();
  v1[14] = v6;
  OUTLINED_FUNCTION_39(v6);
  v1[15] = v7;
  v9 = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v1[17] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[18] = v11;
  v13 = *(v12 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84C2F14()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v1 = v0[13];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[10];
    v3 = *(v0[11] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v0[20] = v0[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v2)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v25 = v0[19];
      v26 = v0[16];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44_0();

      return v27();
    }

    v14 = v0[19];
    v0[7] = v0[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_30();
    sub_1D84C37F0(v15);
    OUTLINED_FUNCTION_32();
    sub_1D84C37F0(v16);
    v17 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
    OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v19)
    {
      v21 = v0[18];
      v20 = v0[19];
      v22 = v0[17];

      v23 = OUTLINED_FUNCTION_49_0();
      v24(v23);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v29 = v0[16];
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[21] = v30;
    *v30 = v31;
    v30[1] = sub_1D84C32CC;
    v32 = v0[16];
    v33 = v0[13];
    v34 = v0[10];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v4 = v0[12];
    v0[5] = v0[13];
    v5 = *(*(v4 + 16) + 32);
    OUTLINED_FUNCTION_54();
    v36 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_1D84C3474;
    v10 = v0[10];
    OUTLINED_FUNCTION_207_0(v0[9]);
    OUTLINED_FUNCTION_44_0();

    return v11();
  }
}