uint64_t sub_1D8502C0C()
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

    OUTLINED_FUNCTION_57();

    return v14();
  }
}

uint64_t sub_1D8502D34()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_330();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 168);
  OUTLINED_FUNCTION_370_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D8502DD8()
{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_370_0();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D8502E3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D84A7CAC;

  return DistributedGameServicesDebuggerProtocol<>.resetLeaderboards(_:)();
}

uint64_t sub_1D8502FC8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1040);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8503054(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D850317C, 0, 0);
}

uint64_t sub_1D850317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1040);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D8491E2C();
  sub_1D8491EDC();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
  sub_1D8491F8C();
  sub_1D84920E8();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.describeLeaderboardSets(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  OUTLINED_FUNCTION_29(v9);
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

uint64_t sub_1D85034FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
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
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8491E2C();
    sub_1D8491EDC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D8491F8C();
    sub_1D84920E8();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v15[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 120);
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

uint64_t sub_1D85037D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.describeLeaderboardSets(_:)();
}

uint64_t sub_1D8503960()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1038);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D85039EC(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D8503B14, 0, 0);
}

uint64_t sub_1D8503B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1038);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_100_1();
  sub_1D8581038();
  sub_1D847C154();
  sub_1D847C0A4();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
  sub_1D8492BB0();
  sub_1D8492C60();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  OUTLINED_FUNCTION_29(v9);
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

uint64_t sub_1D8503E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
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
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_100_1();
    sub_1D8581038();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D8492BB0();
    sub_1D8492C60();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v15[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 128);
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

uint64_t sub_1D8504168(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.listLeaderboardSets(games:)();
}

uint64_t sub_1D85042F8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1030);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8504384(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D85044AC, 0, 0);
}

uint64_t sub_1D85044AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1030);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
  OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  sub_1D8491E2C();
  sub_1D8491EDC();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
  sub_1D848FFF0();
  sub_1D84900A0();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  OUTLINED_FUNCTION_29(v9);
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

uint64_t sub_1D8504830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
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
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    sub_1D8491E2C();
    sub_1D8491EDC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v15[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 136);
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

uint64_t sub_1D8504B08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_1D8504C98()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1028);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8504D24(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8504E4C, 0, 0);
}

uint64_t sub_1D8504E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1028);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A1A0, &qword_1D859F2E8);
  sub_1D8505630();
  sub_1D850578C();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.describePlayerProfiles(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  OUTLINED_FUNCTION_29(v9);
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

uint64_t sub_1D85051CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A1A0, &qword_1D859F2E8);
    sub_1D8505630();
    sub_1D850578C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v15[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 144);
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

uint64_t sub_1D85054A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.describePlayerProfiles(_:)();
}

unint64_t sub_1D8505630()
{
  result = qword_1ECA3A1A8;
  if (!qword_1ECA3A1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A1A0, &qword_1D859F2E8);
    sub_1D85056B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A1A8);
  }

  return result;
}

unint64_t sub_1D85056B4()
{
  result = qword_1ECA3A1B0;
  if (!qword_1ECA3A1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A1B8, &qword_1D859F2F0);
    sub_1D8505738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A1B0);
  }

  return result;
}

unint64_t sub_1D8505738()
{
  result = qword_1ECA3A1C0;
  if (!qword_1ECA3A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A1C0);
  }

  return result;
}

unint64_t sub_1D850578C()
{
  result = qword_1ECA3A1C8;
  if (!qword_1ECA3A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A1A0, &qword_1D859F2E8);
    sub_1D8505810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A1C8);
  }

  return result;
}

unint64_t sub_1D8505810()
{
  result = qword_1ECA3A1D0;
  if (!qword_1ECA3A1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A1B8, &qword_1D859F2F0);
    sub_1D8505894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A1D0);
  }

  return result;
}

unint64_t sub_1D8505894()
{
  result = qword_1ECA3A1D8;
  if (!qword_1ECA3A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A1D8);
  }

  return result;
}

uint64_t sub_1D85058E8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1020);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8505974(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D8505A9C, 0, 0);
}

uint64_t sub_1D8505A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1020);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D847C154();
  sub_1D847C0A4();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A1E0, &qword_1D859F308);
  sub_1D8506280();
  sub_1D85063DC();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v28)
  {
    OUTLINED_FUNCTION_453();
    v29 = OUTLINED_FUNCTION_49_0();
    v30(v29);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v33);
  OUTLINED_FUNCTION_98();
  v13[2] = v34;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v35);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.describeGameLockups(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  OUTLINED_FUNCTION_29(v9);
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

uint64_t sub_1D8505E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
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
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A1E0, &qword_1D859F308);
    sub_1D8506280();
    sub_1D85063DC();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_452();
      v37 = OUTLINED_FUNCTION_49_0();
      v38(v37);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v47 = v15[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_90_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 152);
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

uint64_t sub_1D85060F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.describeGameLockups(_:)();
}

unint64_t sub_1D8506280()
{
  result = qword_1ECA3A1E8;
  if (!qword_1ECA3A1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A1E0, &qword_1D859F308);
    sub_1D8506304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A1E8);
  }

  return result;
}

unint64_t sub_1D8506304()
{
  result = qword_1ECA3A1F0;
  if (!qword_1ECA3A1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A1F8, &qword_1D859F310);
    sub_1D8506388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A1F0);
  }

  return result;
}

unint64_t sub_1D8506388()
{
  result = qword_1ECA3A200;
  if (!qword_1ECA3A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A200);
  }

  return result;
}

unint64_t sub_1D85063DC()
{
  result = qword_1ECA3A208;
  if (!qword_1ECA3A208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A1E0, &qword_1D859F308);
    sub_1D8506460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A208);
  }

  return result;
}

unint64_t sub_1D8506460()
{
  result = qword_1ECA3A210;
  if (!qword_1ECA3A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A1F8, &qword_1D859F310);
    sub_1D85064E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A210);
  }

  return result;
}

unint64_t sub_1D85064E4()
{
  result = qword_1ECA3A218;
  if (!qword_1ECA3A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A218);
  }

  return result;
}

uint64_t sub_1D8506538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  HIDWORD(a10) = v17;
  v45 = v18;
  v19 = *v16;
  v21 = *v20;
  v22 = v20[1];
  v24 = *v23;
  v25 = v23[1];
  OUTLINED_FUNCTION_24(&unk_1D85A1018);
  v28 = *v26;
  v27 = v26[1];
  v30 = *v29;
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_97(v31);
  *v32 = v33;
  v32[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_170();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, v45, a12, a13, a14, a15, a16);
}

uint64_t sub_1D8506614(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 160) = v31;
  *(v9 + 168) = v8;
  *(v9 + 144) = a8;
  *(v9 + 152) = v30;
  *(v9 + 128) = a5;
  *(v9 + 136) = a7;
  *(v9 + 99) = a6;
  *(v9 + 100) = a4;
  *(v9 + 112) = a2;
  *(v9 + 120) = a3;
  *(v9 + 104) = a1;
  v10 = sub_1D8581018();
  *(v9 + 176) = v10;
  v11 = *(v10 - 8);
  *(v9 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v9 + 200) = v13;
  v14 = *(v13 - 8);
  *(v9 + 208) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v9 + 224) = v16;
  v17 = *(v16 - 8);
  *(v9 + 232) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 240) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A220, &unk_1D85A7890);
  *(v9 + 248) = v19;
  v20 = *(v19 - 8);
  *(v9 + 256) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 264) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A228, &unk_1D859F330);
  *(v9 + 272) = v22;
  v23 = *(v22 - 8);
  *(v9 + 280) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 288) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A230, &unk_1D85A78A0);
  *(v9 + 296) = v25;
  v26 = *(v25 - 8);
  *(v9 + 304) = v26;
  v27 = *(v26 + 64) + 15;
  *(v9 + 312) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D85068FC, 0, 0);
}

uint64_t sub_1D85068FC()
{
  OUTLINED_FUNCTION_289_1();
  v2 = *(v1 + 168);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v4 = *(v1 + 99);
    OUTLINED_FUNCTION_50(&unk_1D85A1018);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v1 + 328) = v5;
    *v5 = v6;
    v5[1] = sub_1D8506F8C;
    v7 = *(v1 + 168);
    v8 = *(v1 + 144);
    v9 = *(v1 + 128);
    v10 = *(v1 + 136);
    v11 = *(v1 + 112);
    v12 = *(v1 + 120);
    v13 = *(v1 + 104);
    v14 = *(v1 + 100);
    v64 = *(v1 + 152);
    v65 = *(v1 + 160);
    OUTLINED_FUNCTION_284();

    __asm { BR              X8 }
  }

  v3 = *(v1 + 168);
  *(v1 + 320) = OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v0)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    OUTLINED_FUNCTION_319_1();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_284();

    return v45();
  }

  v17 = *(v1 + 312);
  v18 = *(v1 + 112);
  v19 = *(v1 + 120);
  *(v1 + 40) = v18;
  *(v1 + 48) = v19;
  sub_1D8508B60(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A238, &unk_1D859F340);
  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_252();
  sub_1D8508B74();
  sub_1D8508C4C();
  OUTLINED_FUNCTION_31();
  v20 = *(v1 + 288);
  *(v1 + 97) = *(v1 + 100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A260, &qword_1D85A78B0);
  OUTLINED_FUNCTION_108_3();
  sub_1D8581038();
  sub_1D8508D24();
  sub_1D8508DFC();
  OUTLINED_FUNCTION_31();
  v21 = *(v1 + 264);
  v22 = *(v1 + 99);
  *(v1 + 88) = *(v1 + 128);
  *(v1 + 96) = v22 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A288, &qword_1D859F350);
  OUTLINED_FUNCTION_312_1();
  OUTLINED_FUNCTION_250_1();
  sub_1D8581038();
  OUTLINED_FUNCTION_137_0(&unk_1ECA3A290);
  OUTLINED_FUNCTION_136_2(&unk_1ECA3A298);
  OUTLINED_FUNCTION_31();
  v23 = *(v1 + 240);
  v24 = *(v1 + 144);
  *(v1 + 56) = *(v1 + 136);
  *(v1 + 64) = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_252();
  sub_1D84751F0();
  sub_1D8475274();
  OUTLINED_FUNCTION_31();
  v25 = *(v1 + 216);
  v26 = *(v1 + 160);
  *(v1 + 72) = *(v1 + 152);
  *(v1 + 80) = v26;

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_361_1();
  sub_1D8581038();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_302_1(v27);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_302_1(v28);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_17_3();
  sub_1D848211C(v32);
  OUTLINED_FUNCTION_16_4();
  sub_1D848211C(v33);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {
    v35 = *(v1 + 304);
    v62 = *(v1 + 296);
    v63 = *(v1 + 312);
    v36 = *(v1 + 280);
    v60 = *(v1 + 272);
    v61 = *(v1 + 288);
    v37 = *(v1 + 256);
    v58 = *(v1 + 248);
    v59 = *(v1 + 264);
    v38 = *(v1 + 232);
    v56 = *(v1 + 224);
    v57 = *(v1 + 240);
    v39 = *(v1 + 208);
    v40 = *(v1 + 216);
    v41 = *(v1 + 200);

    v42 = *(v39 + 8);
    v43 = OUTLINED_FUNCTION_221();
    v44(v43);
    (*(v38 + 8))(v57, v56);
    (*(v37 + 8))(v59, v58);
    (*(v36 + 8))(v61, v60);
    (*(v35 + 8))(v63, v62);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  v48 = *(v1 + 192);
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v49 = swift_task_alloc();
  *(v1 + 336) = v49;
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v50);
  OUTLINED_FUNCTION_217();
  *v49 = v51;
  v49[1] = sub_1D8507124;
  v52 = *(v1 + 192);
  v53 = *(v1 + 168);
  v54 = *(v1 + 104);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_266_2();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8506F8C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_334();
  v2 = v0[41];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 312);
  v7 = v0[36];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[24];

  OUTLINED_FUNCTION_137();

  return v12();
}

uint64_t sub_1D8507124()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listGames(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_373_1();
  *(v19 + 200) = a18;
  *(v19 + 208) = v18;
  *(v19 + 184) = v21;
  *(v19 + 192) = a17;
  *(v19 + 149) = v22;
  *(v19 + 168) = v23;
  *(v19 + 176) = v24;
  v25 = sub_1D8581018();
  *(v19 + 216) = v25;
  OUTLINED_FUNCTION_39(v25);
  *(v19 + 224) = v26;
  v28 = *(v27 + 64);
  *(v19 + 232) = OUTLINED_FUNCTION_332();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v19 + 240) = v29;
  OUTLINED_FUNCTION_39(v29);
  *(v19 + 248) = v30;
  v32 = *(v31 + 64);
  *(v19 + 256) = OUTLINED_FUNCTION_332();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v19 + 264) = v33;
  OUTLINED_FUNCTION_39(v33);
  *(v19 + 272) = v34;
  v36 = *(v35 + 64);
  *(v19 + 280) = OUTLINED_FUNCTION_332();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A220, &unk_1D85A7890);
  *(v19 + 288) = v37;
  OUTLINED_FUNCTION_39(v37);
  *(v19 + 296) = v38;
  v40 = *(v39 + 64);
  *(v19 + 304) = OUTLINED_FUNCTION_332();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A228, &unk_1D859F330);
  *(v19 + 312) = v41;
  OUTLINED_FUNCTION_39(v41);
  *(v19 + 320) = v42;
  v44 = *(v43 + 64);
  *(v19 + 328) = OUTLINED_FUNCTION_332();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A230, &unk_1D85A78A0);
  *(v19 + 336) = v45;
  OUTLINED_FUNCTION_39(v45);
  *(v19 + 344) = v46;
  v48 = *(v47 + 64);
  *(v19 + 352) = OUTLINED_FUNCTION_332();
  *(v19 + 360) = OUTLINED_FUNCTION_371_0();
  *(v19 + 376) = v49;
  v50 = v20[1];
  *(v19 + 392) = *v20;
  *(v19 + 400) = v50;
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_535();
  return OUTLINED_FUNCTION_523(v51, v52, v53);
}

uint64_t sub_1D85076AC()
{
  OUTLINED_FUNCTION_289_1();
  v1 = *(v0 + 208);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v5 = *(v0 + 376);
    *(v0 + 40) = *(v0 + 360);
    v7 = *(v0 + 392);
    v6 = *(v0 + 400);
    v8 = *(v0 + 150);
    v9 = *(v0 + 200);
    *(v0 + 152) = *(v0 + 208);
    *(v0 + 145) = v8;
    *(v0 + 56) = v5;
    v10 = *(v0 + 149);
    *(v0 + 72) = v7;
    *(v0 + 80) = v6;
    v81 = (*(v9 + 16) + 160);
    v83 = *v81 + **v81;
    v11 = (*v81)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 432) = v12;
    *v12 = v13;
    v12[1] = sub_1D8507FDC;
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_284();

    __asm { BRAA            X8, X16 }
  }

  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(*(v0 + 192) + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 408) = *(v0 + 160);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    v57 = *(v0 + 352);
    v58 = *(v0 + 328);
    v59 = *(v0 + 304);
    v60 = *(v0 + 280);
    v61 = *(v0 + 256);
    v62 = *(v0 + 232);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_284();

    return v63();
  }

  v19 = *(v0 + 360);
  v20 = *(v0 + 368);
  v21 = *(v0 + 352);
  *(v0 + 88) = v19;
  *(v0 + 96) = v20;
  sub_1D8508B60(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A238, &unk_1D859F340);
  OUTLINED_FUNCTION_313_0();
  OUTLINED_FUNCTION_261_0();
  sub_1D8581038();
  sub_1D8508B74();
  sub_1D8508C4C();
  OUTLINED_FUNCTION_31();
  v22 = *(v0 + 328);
  *(v0 + 147) = *(v0 + 150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A260, &qword_1D85A78B0);
  OUTLINED_FUNCTION_108_3();
  sub_1D8581038();
  sub_1D8508D24();
  sub_1D8508DFC();
  OUTLINED_FUNCTION_31();
  v23 = *(v0 + 304);
  v24 = *(v0 + 149);
  *(v0 + 136) = *(v0 + 176);
  *(v0 + 144) = v24 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A288, &qword_1D859F350);
  OUTLINED_FUNCTION_312_1();
  OUTLINED_FUNCTION_250_1();
  sub_1D8581038();
  OUTLINED_FUNCTION_137_0(&unk_1ECA3A290);
  OUTLINED_FUNCTION_136_2(&unk_1ECA3A298);
  OUTLINED_FUNCTION_31();
  v25 = *(v0 + 384);
  v26 = *(v0 + 280);
  *(v0 + 104) = *(v0 + 376);
  *(v0 + 112) = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_214();
  sub_1D84751F0();
  sub_1D8475274();
  OUTLINED_FUNCTION_31();
  v27 = *(v0 + 400);
  v28 = *(v0 + 256);
  *(v0 + 120) = *(v0 + 392);
  *(v0 + 128) = v27;

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_117();
  sub_1D8581038();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_302_1(v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_302_1(v30);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_17_3();
  sub_1D848211C(v34);
  OUTLINED_FUNCTION_16_4();
  sub_1D848211C(v35);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v36)
  {
    v37 = *(v0 + 344);
    v82 = *(v0 + 336);
    v84 = *(v0 + 352);
    v38 = *(v0 + 320);
    v79 = *(v0 + 312);
    v80 = *(v0 + 328);
    v39 = *(v0 + 296);
    v77 = *(v0 + 288);
    v78 = *(v0 + 304);
    v40 = *(v0 + 272);
    v75 = *(v0 + 264);
    v76 = *(v0 + 280);
    v41 = *(v0 + 248);
    v42 = *(v0 + 256);
    v43 = *(v0 + 240);

    v44 = *(v41 + 8);
    v45 = OUTLINED_FUNCTION_221();
    v47 = v46(v45);
    v55 = OUTLINED_FUNCTION_224(v47, v48, v49, v50, v51, v52, v53, v54, v74, v75, v76);
    v56(v55);
    (*(v39 + 8))(v78, v77);
    (*(v38 + 8))(v80, v79);
    (*(v37 + 8))(v84, v82);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  v66 = *(v0 + 232);
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 416) = v67;
  *v67 = v68;
  v67[1] = sub_1D8507DC4;
  v69 = *(v0 + 232);
  v70 = *(v0 + 208);
  v71 = *(v0 + 184);
  v72 = *(v0 + 168);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_266_2();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8507DC4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8507FDC()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[55] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_535();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[44];
    v14 = v3[41];
    v15 = v3[38];
    v16 = v3[35];
    v17 = v3[32];
    v18 = v3[29];

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_535();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1D850824C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 440);
  OUTLINED_FUNCTION_318_1();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D85082D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *a2;
  v18[2] = *a2;
  v22 = *(v21 - 8);
  v18[3] = v22;
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  v18[4] = v24;
  sub_1D8580F88();
  v50 = a3;
  v25 = a2[1];
  v18[5] = v25;
  v26 = *(v25 - 8);
  v18[6] = v26;
  v27 = *(v26 + 64) + 15;
  v28 = swift_task_alloc();
  v18[7] = v28;
  sub_1D8580F88();
  v49 = v28;
  v29 = a2[2];
  v18[8] = v29;
  v30 = *(v29 - 8);
  v18[9] = v30;
  v31 = *(v30 + 64) + 15;
  v32 = swift_task_alloc();
  v18[10] = v32;
  sub_1D8580F88();
  v48 = v24;
  v47 = *v32;
  v46 = *(v32 + 8);
  v33 = a2[3];
  v18[11] = v33;
  v34 = *(v33 - 8);
  v18[12] = v34;
  v35 = *(v34 + 64) + 15;
  v36 = swift_task_alloc();
  v18[13] = v36;
  sub_1D8580F88();
  v37 = a2[4];
  v18[14] = v37;
  v38 = *(v37 - 8);
  v18[15] = v38;
  v39 = *(v38 + 64) + 15;
  v40 = swift_task_alloc();
  v18[16] = v40;
  sub_1D8580F88();
  v41 = *a4;
  v42 = *a5;
  v43 = a5[1];
  v44 = swift_task_alloc();
  v18[17] = v44;
  *v44 = v18;
  v44[1] = sub_1D85087FC;

  return DistributedGameServicesDebuggerProtocol<>.listGames(by:sortBy:upTo:after:belongingTo:)(v50, v48, v49, v47, v46, v36, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D85087FC()
{
  OUTLINED_FUNCTION_153();
  v1 = *(v0 + 136);
  v33 = *(v0 + 128);
  OUTLINED_FUNCTION_193();
  v32 = *(v2 + 120);
  OUTLINED_FUNCTION_193();
  v29 = *(v3 + 112);
  OUTLINED_FUNCTION_193();
  v31 = *(v4 + 104);
  OUTLINED_FUNCTION_193();
  v30 = *(v5 + 96);
  OUTLINED_FUNCTION_193();
  v26 = *(v6 + 88);
  OUTLINED_FUNCTION_193();
  v28 = *(v7 + 80);
  OUTLINED_FUNCTION_193();
  v27 = *(v8 + 72);
  OUTLINED_FUNCTION_193();
  v10 = *(v9 + 64);
  v25 = *(v11 + 56);
  OUTLINED_FUNCTION_193();
  v24 = *(v12 + 48);
  OUTLINED_FUNCTION_193();
  v14 = *(v13 + 40);
  v16 = v15[4];
  v17 = v15[3];
  v18 = v15[2];
  OUTLINED_FUNCTION_171_0();
  v20 = v19;
  OUTLINED_FUNCTION_37();
  *v21 = v20;

  (*(v17 + 8))(v16, v18);
  (*(v24 + 8))(v25, v14);
  (*(v27 + 8))(v28, v10);
  (*(v30 + 8))(v31, v26);
  (*(v32 + 8))(v33, v29);

  v22 = *(v20 + 8);

  return v22();
}

uint64_t sub_1D8508B60(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1D8508B74()
{
  result = qword_1ECA3A240;
  if (!qword_1ECA3A240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A238, &unk_1D859F340);
    sub_1D8508BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A240);
  }

  return result;
}

unint64_t sub_1D8508BF8()
{
  result = qword_1ECA3A248;
  if (!qword_1ECA3A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A248);
  }

  return result;
}

unint64_t sub_1D8508C4C()
{
  result = qword_1ECA3A250;
  if (!qword_1ECA3A250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A238, &unk_1D859F340);
    sub_1D8508CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A250);
  }

  return result;
}

unint64_t sub_1D8508CD0()
{
  result = qword_1ECA3A258;
  if (!qword_1ECA3A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A258);
  }

  return result;
}

unint64_t sub_1D8508D24()
{
  result = qword_1ECA3A268;
  if (!qword_1ECA3A268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A260, &qword_1D85A78B0);
    sub_1D8508DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A268);
  }

  return result;
}

unint64_t sub_1D8508DA8()
{
  result = qword_1ECA3A270;
  if (!qword_1ECA3A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A270);
  }

  return result;
}

unint64_t sub_1D8508DFC()
{
  result = qword_1ECA3A278;
  if (!qword_1ECA3A278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A260, &qword_1D85A78B0);
    sub_1D8508E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A278);
  }

  return result;
}

unint64_t sub_1D8508E80()
{
  result = qword_1ECA3A280;
  if (!qword_1ECA3A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A280);
  }

  return result;
}

unint64_t sub_1D8508ED4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A288, &qword_1D859F350);
    result = OUTLINED_FUNCTION_524();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D8508F2C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85A1010);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_3(v1);

  return v5(v3);
}

uint64_t sub_1D8508FC0(uint64_t a1, uint64_t a2)
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2B8, &qword_1D859F370);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D85090EC, 0, 0);
}

uint64_t sub_1D85090EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  v12 = v11[9];
  if (swift_distributed_actor_is_remote())
  {
    v13 = v11[9];
    v11[16] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v10)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_349_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239_1();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
    }

    v26 = v11[15];
    v27 = v11[8];
    v11[5] = v11[7];
    v11[6] = v27;

    OUTLINED_FUNCTION_94_1();
    v28 = OUTLINED_FUNCTION_55_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      v33 = v11[14];
      v32 = v11[15];
      v34 = v11[13];

      v35 = OUTLINED_FUNCTION_49_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v45 = v11[12];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_408_1();
    v46 = swift_task_alloc();
    v11[18] = v46;
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v47);
    OUTLINED_FUNCTION_81();
    *v46 = v48;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_239_1();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v49, v50, v51, v52, v53, v54, v55);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1010);
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_207_3(v14);
    *v15 = v16;
    OUTLINED_FUNCTION_52_1(v15);
    OUTLINED_FUNCTION_239_1();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }
}

uint64_t sub_1D8509350()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8509448()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_332_0();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_349_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.enableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2B8, &qword_1D859F370);
  v0[18] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[19] = v11;
  v13 = *(v12 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D85095D8()
{
  OUTLINED_FUNCTION_177();
  v1 = v0[14];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[14];
  if ((is_remote & 1) == 0)
  {
    v6 = *(OUTLINED_FUNCTION_256_3(v0[13]) + 168);
    OUTLINED_FUNCTION_54();
    v42 = v7 + *v7;
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    v0[24] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_77_1(v10);
    OUTLINED_FUNCTION_330_2();

    __asm { BRAA            X4, X16 }
  }

  v4 = v0[11];
  v5 = *(v0[12] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v0[21] = v0[8];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v4)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_11;
  }

  v13 = v0[20];
  v14 = v0[10];
  v0[5] = v0[9];
  v0[6] = v14;

  OUTLINED_FUNCTION_94_1();
  v15 = OUTLINED_FUNCTION_55_1();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v17);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v18)
  {
    v20 = v0[19];
    v19 = v0[20];
    v21 = v0[18];

    v22 = OUTLINED_FUNCTION_49_0();
    v23(v22);
    OUTLINED_FUNCTION_331();

LABEL_11:
    v24 = v0[20];
    v25 = v0[17];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_330_2();

    __asm { BRAA            X1, X16 }
  }

  v28 = v0[17];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_408_1();
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_322_0(v29);
  *v30 = v31;
  OUTLINED_FUNCTION_145_0(v30);
  OUTLINED_FUNCTION_53(v32);
  OUTLINED_FUNCTION_330_2();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v33, v34, v35, v36, v37, v38, v39);
}

uint64_t sub_1D850989C()
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

uint64_t sub_1D8509994()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_395_1();
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

uint64_t sub_1D8509A38()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[25] = v0;

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

uint64_t sub_1D8509B60()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_395_1();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[17];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D8509C08()
{
  OUTLINED_FUNCTION_148();
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[17];

  OUTLINED_FUNCTION_146();

  return v4();
}

uint64_t sub_1D8509C70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v13 = v11[1];
  v14 = *a4;
  v16 = *a5;
  v15 = a5[1];
  v17 = swift_task_alloc();
  v5[5] = v17;
  *v17 = v5;
  v17[1] = sub_1D84911F8;

  return DistributedGameServicesDebuggerProtocol<>.enableGameDebugging(bundleID:)();
}

uint64_t sub_1D8509E00()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85A1008);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_3(v1);

  return v5(v3);
}

uint64_t sub_1D8509E94(uint64_t a1, uint64_t a2)
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2B8, &qword_1D859F370);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8509FC0, 0, 0);
}

uint64_t sub_1D8509FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  v12 = v11[9];
  if (swift_distributed_actor_is_remote())
  {
    v13 = v11[9];
    v11[16] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v10)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_349_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239_1();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
    }

    v26 = v11[15];
    v27 = v11[8];
    v11[5] = v11[7];
    v11[6] = v27;

    OUTLINED_FUNCTION_94_1();
    v28 = OUTLINED_FUNCTION_55_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      v33 = v11[14];
      v32 = v11[15];
      v34 = v11[13];

      v35 = OUTLINED_FUNCTION_49_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v45 = v11[12];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v46 = swift_task_alloc();
    v11[18] = v46;
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v47);
    OUTLINED_FUNCTION_81();
    *v46 = v48;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_239_1();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v49, v50, v51, v52, v53, v54, v55);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1008);
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_207_3(v14);
    *v15 = v16;
    OUTLINED_FUNCTION_52_1(v15);
    OUTLINED_FUNCTION_239_1();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }
}

uint64_t sub_1D850A22C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.disableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2B8, &qword_1D859F370);
  v0[18] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[19] = v11;
  v13 = *(v12 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D850A418()
{
  OUTLINED_FUNCTION_177();
  v1 = v0[14];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[14];
  if ((is_remote & 1) == 0)
  {
    v6 = *(OUTLINED_FUNCTION_256_3(v0[13]) + 176);
    OUTLINED_FUNCTION_54();
    v42 = v7 + *v7;
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    v0[24] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_77_1(v10);
    OUTLINED_FUNCTION_330_2();

    __asm { BRAA            X4, X16 }
  }

  v4 = v0[11];
  v5 = *(v0[12] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v0[21] = v0[8];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v4)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_11;
  }

  v13 = v0[20];
  v14 = v0[10];
  v0[5] = v0[9];
  v0[6] = v14;

  OUTLINED_FUNCTION_94_1();
  v15 = OUTLINED_FUNCTION_55_1();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v17);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v18)
  {
    v20 = v0[19];
    v19 = v0[20];
    v21 = v0[18];

    v22 = OUTLINED_FUNCTION_49_0();
    v23(v22);
    OUTLINED_FUNCTION_331();

LABEL_11:
    v24 = v0[20];
    v25 = v0[17];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_330_2();

    __asm { BRAA            X1, X16 }
  }

  v28 = v0[17];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_322_0(v29);
  *v30 = v31;
  OUTLINED_FUNCTION_145_0(v30);
  OUTLINED_FUNCTION_53(v32);
  OUTLINED_FUNCTION_330_2();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v33, v34, v35, v36, v37, v38, v39);
}

uint64_t sub_1D850A6E4()
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

uint64_t sub_1D850A7DC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[25] = v0;

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

uint64_t sub_1D850A904(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v13 = v11[1];
  v14 = *a4;
  v16 = *a5;
  v15 = a5[1];
  v17 = swift_task_alloc();
  v5[5] = v17;
  *v17 = v5;
  v17[1] = sub_1D84A7CAC;

  return DistributedGameServicesDebuggerProtocol<>.disableGameDebugging(bundleID:)();
}

uint64_t sub_1D850AA94()
{
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_24(&unk_1D85A1000);
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_97(v8);
  *v9 = v10;
  v9[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_377_1();

  return v12();
}

uint64_t sub_1D850AB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x1EEE6DFA0](sub_1D850AD64, 0, 0);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listGameActivityDefinitions(game:filters:after:)()
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
  v30 = OUTLINED_FUNCTION_64_0();

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

uint64_t sub_1D850B884()
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

uint64_t sub_1D850BA58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v20[1] = sub_1D850BD74;

  return DistributedGameServicesDebuggerProtocol<>.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_1D850BD74()
{
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  v1 = v0[11];
  v2 = v0[10];
  v19 = v0[9];
  OUTLINED_FUNCTION_193();
  v4 = *(v3 + 64);
  v6 = *(v5 + 56);
  v18 = *(v5 + 48);
  OUTLINED_FUNCTION_193();
  v8 = *(v7 + 40);
  v10 = v9[4];
  v11 = v9[3];
  v12 = v9[2];
  OUTLINED_FUNCTION_171_0();
  v14 = v13;
  OUTLINED_FUNCTION_37();
  *v15 = v14;

  (*(v11 + 8))(v10, v12);
  (*(v18 + 8))(v6, v8);
  (*(v19 + 8))(v2, v4);

  OUTLINED_FUNCTION_146();

  return v16();
}

uint64_t sub_1D850BFD8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A0FF8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D850C064(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D850C18C, 0, 0);
}

uint64_t sub_1D850C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A0FF8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = v13[14];
  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
  OUTLINED_FUNCTION_44_2();
  sub_1D8581038();
  sub_1D849EA88();
  sub_1D849EB38();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
  sub_1D849EBE8();
  sub_1D849ED24();
  OUTLINED_FUNCTION_16();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v29)
  {
    OUTLINED_FUNCTION_453();
    v30 = OUTLINED_FUNCTION_49_0();
    v31(v30);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v32 = v13[11];
  sub_1D8581028();
  v33 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v33);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v34);
  OUTLINED_FUNCTION_98();
  v13[2] = v35;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D850C45C()
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

uint64_t sub_1D850C554()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366_1();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = OUTLINED_FUNCTION_77();
  v5(v4);
  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[6];
  OUTLINED_FUNCTION_304_0();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D850C604()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366_1();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = OUTLINED_FUNCTION_77();
  v5(v4);
  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[18];
  OUTLINED_FUNCTION_304_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.describeGameActivityDefinitions(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  OUTLINED_FUNCTION_29(v9);
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

uint64_t sub_1D850C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
    }

    v35 = v15[19];
    v15[7] = v15[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_36_3();
    sub_1D8581038();
    sub_1D849EA88();
    sub_1D849EB38();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
    OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_452();
      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v48 = v15[16];
    sub_1D8581028();
    v49 = swift_task_alloc();
    v50 = OUTLINED_FUNCTION_90_0(v49);
    *v50 = v51;
    OUTLINED_FUNCTION_294(v50);
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v15[12]) + 192);
    OUTLINED_FUNCTION_54();
    v53 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_286(v23);
    *v24 = v25;
    OUTLINED_FUNCTION_17(v24);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v53, a12, a13, a14);
  }
}

uint64_t sub_1D850CAC8()
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

uint64_t sub_1D850CBC0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_380_0();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  v4 = OUTLINED_FUNCTION_77();
  v5(v4);
  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[8];
  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D850CC70()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_236_2();

    v12 = OUTLINED_FUNCTION_56_0();

    return v13(v12);
  }
}

uint64_t sub_1D850CDA0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_380_0();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  v4 = OUTLINED_FUNCTION_77();
  v5(v4);
  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[22];
  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D850CE50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D84A1FE0;

  return DistributedGameServicesDebuggerProtocol<>.describeGameActivityDefinitions(_:)();
}

uint64_t sub_1D850CFE0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A0FF0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D850D06C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1D8581018();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for GameActivityInstance(0);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D850D1C4, 0, 0);
}

uint64_t sub_1D850D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[6];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D85A0FF0);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_201_0(v16);
    *v17 = v18;
    v17[1] = sub_1D850D464;
    v19 = v13[6];
    OUTLINED_FUNCTION_207_0(v13[5]);
    OUTLINED_FUNCTION_207();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v15 = v13[6];
  v13[15] = OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v29 = v13[14];
  v30 = v13[10];
  sub_1D84A3A34(v13[5], v13[11]);
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_186_2();
  sub_1D8581038();
  OUTLINED_FUNCTION_107_2();
  OUTLINED_FUNCTION_283_1(v31);
  OUTLINED_FUNCTION_120_0(&qword_1ECA39988);
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v33)
  {
    OUTLINED_FUNCTION_453();
    v34 = OUTLINED_FUNCTION_49_0();
    v35(v34);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();
    v36 = v13[9];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v37 = v13[9];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_408_1();
  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v38);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v39);
  OUTLINED_FUNCTION_81();
  v13[2] = v40;
  v13[3] = sub_1D850D598;
  v41 = v13[9];
  v42 = v13[6];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v43, v44, v45, v46, v47, v48, v49);
}

uint64_t sub_1D850D464()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = v0[16];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 112);
  v7 = v0[11];
  v8 = v0[9];

  OUTLINED_FUNCTION_137();

  return v9();
}

uint64_t sub_1D850D598()
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

uint64_t sub_1D850D690()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366_1();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = OUTLINED_FUNCTION_77();
  v5(v4);
  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_191_2();
  v8 = v0[9];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D850D748()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366_1();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = OUTLINED_FUNCTION_77();
  v5(v4);
  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[18];
  OUTLINED_FUNCTION_304_0();
  v9 = v0[9];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.invokeActivity(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_393_1(v1, v2, v3, v4);
  OUTLINED_FUNCTION_38_0(v5);
  v0[13] = v6;
  v8 = *(v7 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v9 = type metadata accessor for GameActivityInstance(0);
  v0[15] = v9;
  v10 = *(*(v9 - 8) + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  OUTLINED_FUNCTION_29(v11);
  v0[18] = v12;
  v14 = *(v13 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v15 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D850D918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[11];
  is_remote = swift_distributed_actor_is_remote();
  v15 = v12[11];
  if (is_remote)
  {
    v16 = v12[8];
    OUTLINED_FUNCTION_83_0(v12[9]);
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v16)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_168_0();
      v41 = v12[14];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    v34 = v12[19];
    v35 = v12[15];
    sub_1D84A3A34(v12[7], v12[16]);
    OUTLINED_FUNCTION_241_1();
    OUTLINED_FUNCTION_186_2();
    sub_1D8581038();
    OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_283_1(v36);
    OUTLINED_FUNCTION_120_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_452();
      v39 = OUTLINED_FUNCTION_49_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v50 = v12[14];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_408_1();
    v51 = swift_task_alloc();
    v52 = OUTLINED_FUNCTION_213_1(v51);
    *v52 = v53;
    v52[1] = sub_1D850DBFC;
    v54 = v12[14];
    v55 = v12[8];
    OUTLINED_FUNCTION_53(v12[11]);
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_210(v12[10]) + 200);
    OUTLINED_FUNCTION_131();
    v64 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_286(v21);
    *v22 = v23;
    v22[1] = sub_1D850DDAC;
    v24 = v12[8];
    OUTLINED_FUNCTION_44(v12[7]);
    OUTLINED_FUNCTION_207();

    return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v64, a11, a12);
  }
}

uint64_t sub_1D850DBFC()
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

uint64_t sub_1D850DCF4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_380_0();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = OUTLINED_FUNCTION_77();
  v5(v4);
  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_168_0();
  v8 = v0[14];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D850DDAC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_236_2();
    v12 = *(v3 + 112);

    OUTLINED_FUNCTION_57();

    return v13();
  }
}

uint64_t sub_1D850DEDC()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_380_0();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = OUTLINED_FUNCTION_77();
  v5(v4);
  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[22];
  OUTLINED_FUNCTION_243_0();
  v9 = v0[14];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D850DF98()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_243_0();
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D850E010(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v14[1] = sub_1D84911F8;

  return DistributedGameServicesDebuggerProtocol<>.invokeActivity(_:)();
}

uint64_t sub_1D850E198()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A0FE8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_97(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_314_2(v1);

  return v5(v3);
}

uint64_t sub_1D850E228(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1D8581018();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D850E2E8, 0, 0);
}

uint64_t sub_1D850E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[6];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A0FE8);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[11] = v29;
    *v29 = v30;
    v29[1] = sub_1D850E54C;
    v31 = v13[5];
    v32 = v13[6];
    OUTLINED_FUNCTION_197();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v15 = v13[6];
  v13[10] = OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16);
  type metadata accessor for DefaultGameActivityEnvironment(0);
  OUTLINED_FUNCTION_106_2();
  OUTLINED_FUNCTION_283_1(v17);
  OUTLINED_FUNCTION_119_1(&unk_1ECA39FA8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v18)
  {
LABEL_4:
    OUTLINED_FUNCTION_342();

    v19 = v13[9];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v33 = v13[9];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v34 = swift_task_alloc();
  v13[12] = v34;
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v35);
  OUTLINED_FUNCTION_217();
  *v34 = v36;
  OUTLINED_FUNCTION_378_1();
  v38 = v13[5];
  v37 = v13[6];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D850E54C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = *(v0 + 88);
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 72);

  OUTLINED_FUNCTION_137();

  return v7();
}

uint64_t sub_1D850E648()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D850E740()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_409_1();
  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 72);

  OUTLINED_FUNCTION_57();

  return v4();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.getDefaultGameActivityEnvironment()()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_393_1(v1, v2, v3, v4);
  OUTLINED_FUNCTION_38_0(v5);
  *(v0 + 104) = v6;
  v8 = *(v7 + 64);
  *(v0 + 112) = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D850E860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[11];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[11];
  if (is_remote)
  {
    v18 = v14[8];
    OUTLINED_FUNCTION_83_0(v14[9]);
    v14[15] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v19);
    type metadata accessor for DefaultGameActivityEnvironment(0);
    OUTLINED_FUNCTION_106_2();
    OUTLINED_FUNCTION_283_1(v20);
    OUTLINED_FUNCTION_119_1(&unk_1ECA39FA8);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v21)
    {
LABEL_6:
      OUTLINED_FUNCTION_342();

      v22 = v14[14];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v48 = v14[14];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[16] = v49;
      *v49 = v50;
      v49[1] = sub_1D850EB08;
      OUTLINED_FUNCTION_367_0();
      v51 = v14[7];
      v52 = v14[8];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v32 = *(OUTLINED_FUNCTION_210(v14[10]) + 208);
    OUTLINED_FUNCTION_54();
    v54 = v33 + *v33;
    v35 = *(v34 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[18] = v36;
    *v36 = v37;
    v36[1] = sub_1D850EC88;
    v38 = v14[7];
    v39 = v14[8];
    OUTLINED_FUNCTION_169();

    return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, v54, a12, a13, a14);
  }
}

uint64_t sub_1D850EB08()
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

uint64_t sub_1D850EC00()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_407_0();
  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 112);

  OUTLINED_FUNCTION_57();

  return v4();
}

uint64_t sub_1D850EC88()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 112);

    OUTLINED_FUNCTION_146();

    return v13();
  }
}

uint64_t sub_1D850EDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a4;
  v7 = *a5;
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1D8442FA8;

  return DistributedGameServicesDebuggerProtocol<>.getDefaultGameActivityEnvironment()();
}

uint64_t sub_1D850EE68()
{
  OUTLINED_FUNCTION_148();
  v1 = *v0;
  OUTLINED_FUNCTION_24(&unk_1D85A0FE0);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6();
}

uint64_t sub_1D850EEF4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_298_1();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_506();
  }

  return v7(v6);
}

uint64_t sub_1D850EFE8()
{
  v1[7] = v0;
  v2 = sub_1D8581018();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D850F0A8, 0, 0);
}

uint64_t sub_1D850F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[7];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[7];
    v13[11] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91();
    if (v12 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16), OUTLINED_FUNCTION_56(), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v17))
    {
      OUTLINED_FUNCTION_342();

      v18 = v13[10];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v38 = v13[10];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v39 = swift_task_alloc();
      v13[13] = v39;
      OUTLINED_FUNCTION_0_6();
      sub_1D8526788(v40);
      OUTLINED_FUNCTION_98();
      *v39 = v41;
      v39[1] = sub_1D850F3F0;
      v42 = v13[10];
      v43 = v13[7];
      OUTLINED_FUNCTION_9_0(v44);
      OUTLINED_FUNCTION_118_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A0FE0);
    v28 = swift_task_alloc();
    v13[12] = v28;
    *v28 = v13;
    v28[1] = sub_1D850F2D8;
    v29 = v13[7];
    OUTLINED_FUNCTION_197();

    return v30(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }
}

uint64_t sub_1D850F2D8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95_2();
  v3 = *(v2 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_214_3();
  v7 = *(v6 + 80);

  v8 = *(v4 + 8);
  if (!v0)
  {
    OUTLINED_FUNCTION_506();
  }

  OUTLINED_FUNCTION_535();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D850F3F0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D850F4E8()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  OUTLINED_FUNCTION_331();

  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[10];

  OUTLINED_FUNCTION_298_1();
  v10 = OUTLINED_FUNCTION_151();

  return v11(v10);
}

uint64_t sub_1D850F584()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  OUTLINED_FUNCTION_331();

  v7 = v0[14];
  v8 = v0[10];

  OUTLINED_FUNCTION_146();

  return v9();
}

uint64_t DistributedGameServicesDebuggerProtocol<>.getServiceVersion()()
{
  OUTLINED_FUNCTION_148();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v5 = sub_1D8581018();
  v1[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[14] = v6;
  v8 = *(v7 + 64);
  v1[15] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D850F6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[12];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[12];
  if (is_remote)
  {
    v18 = v14[9];
    v19 = *(v14[10] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[16] = v14[8];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v20), OUTLINED_FUNCTION_56(), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v21))
    {
      OUTLINED_FUNCTION_342();

      v22 = v14[15];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v45 = v14[15];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[17] = v46;
      *v46 = v47;
      v46[1] = sub_1D850F944;
      v48 = v14[15];
      v49 = v14[12];
      v50 = v14[9];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v32 = *(OUTLINED_FUNCTION_256_3(v14[11]) + 216);
    OUTLINED_FUNCTION_54();
    v52 = v33 + *v33;
    v35 = *(v34 + 4);
    v36 = swift_task_alloc();
    v14[19] = v36;
    *v36 = v14;
    v36[1] = sub_1D850FAD8;
    OUTLINED_FUNCTION_332_2(v14[9]);
    OUTLINED_FUNCTION_169();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D850F944()
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

uint64_t sub_1D850FA3C()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  OUTLINED_FUNCTION_331();

  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[15];

  OUTLINED_FUNCTION_298_1();
  v10 = OUTLINED_FUNCTION_151();

  return v11(v10);
}

uint64_t sub_1D850FAD8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_535();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = *(v3 + 120);

    v14 = *(v7 + 8);
    OUTLINED_FUNCTION_482();
    OUTLINED_FUNCTION_535();

    return v18(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1D850FC18()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  OUTLINED_FUNCTION_331();

  v7 = v0[18];
  v8 = v0[15];

  OUTLINED_FUNCTION_146();

  return v9();
}

uint64_t sub_1D850FCAC()
{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D850FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *(v5 + 16) = a3;
  v6 = *a4;
  v7 = *a5;
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D850FDBC;

  return DistributedGameServicesDebuggerProtocol<>.getServiceVersion()();
}

uint64_t sub_1D850FDBC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v8 = *v0;
  *v3 = v4;
  v3[1] = v5;

  OUTLINED_FUNCTION_146();

  return v6();
}

uint64_t GameLockup.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t GameLockup.shortName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_194();
}

uint64_t GameLockup.artwork.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0x70uLL);
  memcpy(a1, (v1 + 48), 0x70uLL);
  return sub_1D8511308(__dst, v4, &qword_1ECA39200, &qword_1D859A990);
}

uint64_t GameLockup.rawResponse.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_194();
}

void *GameLockup.init(name:shortName:ref:artwork:rawResponse:)@<X0>(void *__src@<X5>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t *a6@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v12 = *a6;
  v13 = a6[1];
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = v12;
  a9[5] = v13;
  result = memcpy(a9 + 6, __src, 0x70uLL);
  a9[20] = a7;
  a9[21] = a8;
  return result;
}

uint64_t static GameLockup.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v101 = a1[5];
  v106 = a1[4];
  memcpy(__dst, a1 + 6, sizeof(__dst));
  v76 = a1[20];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v96 = a2[4];
  v86 = a1[21];
  v91 = a2[5];
  memcpy(v118, a2 + 6, 0x70uLL);
  v71 = a2[20];
  v81 = a2[21];
  if (v4 != v8 || v5 != v9)
  {
    OUTLINED_FUNCTION_258();
    if ((sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v6 == v11 && v7 == v10;
    if (!v13 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if ((sub_1D8510440() & 1) == 0)
  {
    return 0;
  }

  v14 = __dst[0];
  v15 = __dst[1];
  v17 = v118[0];
  v16 = v118[1];
  if (__dst[1])
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    OUTLINED_FUNCTION_405_0();
    memcpy(v114, __src, sizeof(v114));
    if (v16)
    {
      memcpy(&v113[2], a2 + 8, 0x60uLL);
      v113[0] = v17;
      v113[1] = v16;
      OUTLINED_FUNCTION_352_0(__dst, v18, v19, v20, v21, v22, v23, v24, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v112[0]);
      OUTLINED_FUNCTION_352_0(v118, v25, v26, v27, v28, v29, v30, v31, v67, v72, v77, v82, v87, v92, v97, v102, v107, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v112[0]);
      OUTLINED_FUNCTION_352_0(__src, v32, v33, v34, v35, v36, v37, v38, v68, v73, v78, v83, v88, v93, v98, v103, v108, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v112[0]);
      sub_1D847B878();
      v39 = sub_1D8581208();
      memcpy(v111, v113, sizeof(v111));
      sub_1D847B824(v111);
      memcpy(v112, v114, sizeof(v112));
      sub_1D847B824(v112);
      v113[0] = v14;
      v113[1] = v15;
      memcpy(&v113[2], a1 + 8, 0x60uLL);
      OUTLINED_FUNCTION_164();
      sub_1D84F589C(v40, v41, v42);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_27;
    }

    memcpy(v113, __src, sizeof(v113));
    OUTLINED_FUNCTION_351_1(__dst, v43, v44, v45, v46, v47, v48, v49, v66, v71, v76, v81, v86, v91, v96, v101, v106, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v112[0]);
    OUTLINED_FUNCTION_351_1(v118, v50, v51, v52, v53, v54, v55, v56, v69, v74, v79, v84, v89, v94, v99, v104, v109, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v112[0]);
    OUTLINED_FUNCTION_351_1(__src, v57, v58, v59, v60, v61, v62, v63, v70, v75, v80, v85, v90, v95, v100, v105, v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v112[0]);
    sub_1D847B824(v113);
LABEL_23:
    __src[0] = v14;
    __src[1] = v15;
    memcpy(&__src[2], a1 + 8, 0x60uLL);
    __src[14] = v17;
    __src[15] = v16;
    memcpy(v116, a2 + 8, sizeof(v116));
    sub_1D84F589C(__src, &qword_1ECA39210, &qword_1D859A9A0);
    return 0;
  }

  if (v118[1])
  {
    sub_1D8511308(__dst, __src, &qword_1ECA39200, &qword_1D859A990);
    sub_1D8511308(v118, __src, &qword_1ECA39200, &qword_1D859A990);
    goto LABEL_23;
  }

  __src[0] = __dst[0];
  __src[1] = 0;
  OUTLINED_FUNCTION_405_0();
  sub_1D8511308(__dst, v114, &qword_1ECA39200, &qword_1D859A990);
  sub_1D8511308(v118, v114, &qword_1ECA39200, &qword_1D859A990);
  sub_1D84F589C(__src, &qword_1ECA39200, &qword_1D859A990);
LABEL_27:
  if (v86)
  {
    if (v81)
    {
      v65 = v76 == v71 && v86 == v81;
      if (v65 || (sub_1D8581AB8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v81)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D8510440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
  sub_1D848211C(&unk_1ECA394D0);
  sub_1D85813D8();
  sub_1D85813D8();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1D8581AB8();
  }

  return v1 & 1;
}

uint64_t sub_1D851052C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6710642 && a2 == 0xE300000000000000;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == OUTLINED_FUNCTION_356_1() && a2 == v9)
        {

          return 4;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_7();

          if (v11)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1D8510684(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6D614E74726F6873;
      break;
    case 2:
      result = 6710642;
      break;
    case 3:
      result = 0x6B726F77747261;
      break;
    case 4:
      result = OUTLINED_FUNCTION_356_1();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D851071C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D851052C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8510750(uint64_t a1)
{
  v2 = sub_1D8510AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D851078C(uint64_t a1)
{
  v2 = sub_1D8510AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GameLockup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2C0, &qword_1D859F3F0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = *v1;
  v25 = v1[2];
  v26 = v1[1];
  v23 = v1[4];
  v24 = v1[3];
  v22 = v1[5];
  memcpy(__dst, v1 + 6, 0x70uLL);
  v20 = v1[21];
  v21 = v1[20];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8510AC4();
  sub_1D8581BB8();
  LOBYTE(v28[0]) = 0;
  v11 = v30;
  sub_1D8581A08();
  if (v11)
  {
    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_238();
    return v14(v13);
  }

  else
  {
    sub_1D8581998();
    v28[0] = v23;
    v28[1] = v22;
    v27[0] = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
    OUTLINED_FUNCTION_4();
    sub_1D848211C(v16);
    sub_1D8581A58();

    OUTLINED_FUNCTION_530(v28);
    v27[119] = 3;
    sub_1D8511308(__dst, v27, &qword_1ECA39200, &qword_1D859A990);
    sub_1D847B920();
    sub_1D85819E8();
    memcpy(v27, v28, 0x70uLL);
    sub_1D84F589C(v27, &qword_1ECA39200, &qword_1D859A990);
    sub_1D8581998();
    v17 = *(v6 + 8);
    v18 = OUTLINED_FUNCTION_238();
    return v19(v18);
  }
}

unint64_t sub_1D8510AC4()
{
  result = qword_1ECA4DE40[0];
  if (!qword_1ECA4DE40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4DE40);
  }

  return result;
}

uint64_t GameLockup.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[21];
  v11 = v0[20];
  sub_1D85812B8();
  sub_1D8581B78();
  if (v4)
  {
    sub_1D85812B8();
  }

  __dst[0] = v6;
  __dst[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
  OUTLINED_FUNCTION_358_1(&unk_1ECA38B58);
  sub_1D85811E8();
  if (v8)
  {
    memcpy(&__src[2], v0 + 8, 0x60uLL);
    __src[0] = v7;
    __src[1] = v8;
    sub_1D8581B78();
    v13[0] = v7;
    v13[1] = v8;
    memcpy(v14, v0 + 8, sizeof(v14));
    sub_1D847BC2C(v13, __dst);
    sub_1D847BC88();
    sub_1D85811E8();
    memcpy(__dst, __src, 0x70uLL);
    sub_1D847B824(__dst);
    if (v9)
    {
LABEL_5:
      sub_1D8581B78();
      return sub_1D85812B8();
    }
  }

  else
  {
    sub_1D8581B78();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  return sub_1D8581B78();
}

uint64_t GameLockup.hashValue.getter()
{
  sub_1D8581B58();
  GameLockup.hash(into:)();
  return sub_1D8581B98();
}

uint64_t GameLockup.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2C8, &qword_1D859F3F8);
  v5 = OUTLINED_FUNCTION_1(v25);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8510AC4();
  sub_1D8581BA8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_376_1();
  v22 = sub_1D8581908();
  v24 = v9;
  LOBYTE(v27) = 1;
  OUTLINED_FUNCTION_376_1();
  v10 = sub_1D8581898();
  v23 = v11;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
  LOBYTE(v26[0]) = 2;
  OUTLINED_FUNCTION_3();
  sub_1D848211C(v12);
  sub_1D8581958();
  v13 = v27;
  v14 = v28;
  __dst[135] = 3;
  sub_1D847BCDC();
  OUTLINED_FUNCTION_376_1();
  sub_1D85818E8();
  memcpy(__dst, v34, 0x70uLL);
  __dst[134] = 4;
  OUTLINED_FUNCTION_376_1();
  v15 = sub_1D8581898();
  v16 = OUTLINED_FUNCTION_227_1();
  v18 = v17;
  v19(v16, v25);
  v26[0] = v22;
  v26[1] = v24;
  v26[2] = v21;
  v26[3] = v23;
  v26[4] = v13;
  v26[5] = v14;
  OUTLINED_FUNCTION_530(&v26[6]);
  v26[20] = v15;
  v26[21] = v18;
  memcpy(a2, v26, 0xB0uLL);
  sub_1D8511160(v26, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v22;
  v28 = v24;
  v29 = v21;
  v30 = v23;
  v31 = v13;
  v32 = v14;
  OUTLINED_FUNCTION_530(v33);
  v33[14] = v15;
  v33[15] = v18;
  return sub_1D8511198(&v27);
}

uint64_t sub_1D8511124()
{
  sub_1D8581B58();
  GameLockup.hash(into:)();
  return sub_1D8581B98();
}

uint64_t sub_1D85111C8()
{
  v0 = sub_1D857D550();
  v2 = *v0;
  v1 = v0[1];
  qword_1EE0E1208 = v2;
  unk_1EE0E1210 = v1;
}

uint64_t *sub_1D8511200()
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_251_0();
  }

  return &qword_1EE0E1208;
}

uint64_t static GameDebuggerServiceWorkaround.actorID.getter@<X0>(void *a1@<X8>)
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_251_0();
  }

  v2 = unk_1EE0E1210;
  *a1 = qword_1EE0E1208;
  a1[1] = v2;
}

double sub_1D85112A0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D8511308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_194();
  v7(v6);
  return a2;
}

uint64_t sub_1D851136C(uint64_t a1)
{
  swift_beginAccess();
  sub_1D85113BC(a1, v1 + 136);
  return swift_endAccess();
}

uint64_t sub_1D85113BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2D0, &qword_1D859F400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GameDebuggerServiceWorkaround.__allocating_init(actorSystem:delegate:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_506();
  GameDebuggerServiceWorkaround.init(actorSystem:delegate:)(v1, v2);
  return v0;
}

uint64_t GameDebuggerServiceWorkaround.init(actorSystem:delegate:)(uint64_t a1, uint64_t *a2)
{
  swift_defaultActor_initialize();
  *(v2 + 168) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 128) = a1;
  type metadata accessor for GameDebuggerServiceWorkaround();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_21_3();
  sub_1D8526788(v5);
  OUTLINED_FUNCTION_1_3();
  sub_1D8526788(v6);

  OUTLINED_FUNCTION_382_1();
  sub_1D8580F58();
  v7 = v9[1];
  *(v2 + 112) = v9[0];
  *(v2 + 120) = v7;
  sub_1D84EB9C4(a2, v9);
  swift_beginAccess();
  sub_1D85113BC(v9, v2 + 136);
  swift_endAccess();
  v9[0] = *(v2 + 128);

  OUTLINED_FUNCTION_382_1();
  sub_1D8580F38();

  __swift_destroy_boxed_opaque_existential_1(a2);

  return v2;
}

uint64_t GameDebuggerServiceWorkaround.describeAchievements(_:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D8511750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
    sub_1D8484E10();
    sub_1D8484F6C();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
LABEL_6:
      v17 = OUTLINED_FUNCTION_116_0();
      v18(v17);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_170_1();

    return sub_1D8511C38(v31);
  }
}

uint64_t sub_1D85119A0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8511A98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1D84A7CD8;

  return GameDebuggerServiceWorkaround.describeAchievements(_:)();
}

uint64_t sub_1D8511C38(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D8511C50()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 8);
    OUTLINED_FUNCTION_54();
    v13 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();

    return v12(&unk_1F5394770);
  }
}

uint64_t sub_1D8511DDC()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v5 = v3[14];
  *v4 = *v2;
  v3[15] = v0;

  OUTLINED_FUNCTION_214_3();
  v7 = *(v6 + 104);
  if (!v0)
  {
    v3[16] = v1;
  }

  OUTLINED_FUNCTION_184_2();
  OUTLINED_FUNCTION_535();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t GameDebuggerServiceWorkaround.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 88) = v4;
  *(v1 + 96) = v0;
  v5 = sub_1D8581018();
  *(v1 + 104) = v5;
  OUTLINED_FUNCTION_39(v5);
  *(v1 + 112) = v6;
  v8 = *(v7 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 128) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 136) = v10;
  v12 = *(v11 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  *(v1 + 152) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 160) = v14;
  v16 = *(v15 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  *(v1 + 176) = *v3;
  v17 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1D8512054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v13 = *(v12 + 96);
  if (swift_distributed_actor_is_remote())
  {
    v14 = *(v12 + 168);
    v15 = *(v12 + 88);
    OUTLINED_FUNCTION_169_2(*(v12 + 96));
    *(v12 + 72) = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_285_0();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_37_0();
    if (v14)
    {
      (*(*(v12 + 160) + 8))(*(v12 + 168), *(v12 + 152));
LABEL_12:
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
    }

    v22 = *(v12 + 184);
    v23 = *(v12 + 144);
    *(v12 + 56) = *(v12 + 176);
    *(v12 + 64) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_254_1();
    sub_1D8581038();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D8486070();
    sub_1D8486120();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v25)
    {
      v26 = OUTLINED_FUNCTION_372_0();
      v27(v26);
      v28 = OUTLINED_FUNCTION_121_2();
      v29(v28);
      goto LABEL_12;
    }

    v38 = *(v12 + 120);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v39 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v39);
    type metadata accessor for GameDebuggerServiceWorkaround();
    OUTLINED_FUNCTION_1_3();
    sub_1D8526788(v40);
    OUTLINED_FUNCTION_98();
    *(v12 + 16) = v41;
    OUTLINED_FUNCTION_258_2();
    OUTLINED_FUNCTION_2_4(v42);
    OUTLINED_FUNCTION_143_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    *(v12 + 40) = *(v12 + 176);
    v16 = swift_task_alloc();
    *(v12 + 208) = v16;
    *v16 = v12;
    v16[1] = sub_1D8512514;
    v17 = *(v12 + 96);
    OUTLINED_FUNCTION_81_2(*(v12 + 88));
    OUTLINED_FUNCTION_170_1();

    return sub_1D8512A30(v18, v19);
  }
}

uint64_t sub_1D851235C()
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

uint64_t sub_1D8512454()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = OUTLINED_FUNCTION_246_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_77();
  v10(v9);
  v11 = OUTLINED_FUNCTION_80();
  v12(v11);
  OUTLINED_FUNCTION_331();

  v13 = v0[10];
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1D8512514()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
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
    v12 = v3[21];
    v13 = v3[18];
    v14 = v3[15];

    v15 = OUTLINED_FUNCTION_56_0();

    return v16(v15);
  }
}

uint64_t sub_1D8512654()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = OUTLINED_FUNCTION_246_2();
  v8(v7);
  v9 = OUTLINED_FUNCTION_77();
  v10(v9);
  v11 = OUTLINED_FUNCTION_80();
  v12(v11);
  OUTLINED_FUNCTION_331();

  v13 = v0[25];
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1D8512714()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D8512784(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v14 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v13 = swift_task_alloc();
  v3[9] = v13;
  *v13 = v3;
  v13[1] = sub_1D852A37C;

  return GameDebuggerServiceWorkaround.listAchievements(games:after:)();
}

uint64_t sub_1D8512A30(uint64_t a1, _OWORD *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  *(v3 + 128) = *a2;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D8512A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  v11 = v10[15];
  OUTLINED_FUNCTION_163_1();
  (*(v12 + 112))();
  if (v10[5])
  {
    v14 = v10[16];
    v13 = v10[17];
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C((v10 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_18_1();
    v15 = *(OUTLINED_FUNCTION_369_1() + 16);
    OUTLINED_FUNCTION_131();
    v39 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_306_1(v19);
    *v20 = v21;
    v20[1] = sub_1D8512BF0;
    OUTLINED_FUNCTION_207_0(v10[14]);
    OUTLINED_FUNCTION_383_1();
    OUTLINED_FUNCTION_239_1();

    return v26(v22, v23, v24, v25, v26, v27, v28, v29, a9, v39);
  }

  else
  {
    sub_1D84F589C((v10 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_239_1();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }
}

uint64_t sub_1D8512BF0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v4 = v3;
  OUTLINED_FUNCTION_62();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_37();
  *v9 = v8;
  v4[19] = v0;

  v10 = v4[15];
  if (!v0)
  {
    v4[20] = v1;
  }

  OUTLINED_FUNCTION_184_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D8512CFC()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_69_2();

  return v2();
}

uint64_t sub_1D8512D5C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_93_0();
  v2 = *(v0 + 152);

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.getAchievementsProgresses(_:player:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v5 = sub_1D8581018();
  v1[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[14] = v6;
  v8 = *(v7 + 64);
  v1[15] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[16] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[17] = v10;
  v12 = *(v11 + 64);
  v1[18] = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v1[19] = v13;
  OUTLINED_FUNCTION_39(v13);
  v1[20] = v14;
  v16 = *(v15 + 64);
  v17 = OUTLINED_FUNCTION_332();
  v18 = *v3;
  v19 = v3[1];
  v1[21] = v17;
  v1[22] = v18;
  v1[23] = v19;
  v20 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D8512F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[12];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[21];
    v15 = v12[11];
    OUTLINED_FUNCTION_169_2(v12[12]);
    v12[9] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_37_0();
    if (v14)
    {
      (*(v12[20] + 8))(v12[21], v12[19]);
LABEL_12:
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
    }

    v23 = v12[23];
    v24 = v12[18];
    v12[7] = v12[22];
    v12[8] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_252();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_358_1(v25);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_358_1(v26);
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D8486FDC();
    sub_1D8487094();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_372_0();
      v32(v31);
      v33 = OUTLINED_FUNCTION_121_2();
      v34(v33);
      goto LABEL_12;
    }

    v43 = v12[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v44 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v44);
    type metadata accessor for GameDebuggerServiceWorkaround();
    OUTLINED_FUNCTION_1_3();
    sub_1D8526788(v45);
    OUTLINED_FUNCTION_98();
    v12[2] = v46;
    OUTLINED_FUNCTION_258_2();
    OUTLINED_FUNCTION_2_4(v47);
    OUTLINED_FUNCTION_143_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v16 = v12[23];
    v12[5] = v12[22];
    v12[6] = v16;
    v17 = swift_task_alloc();
    v12[26] = v17;
    *v17 = v12;
    v17[1] = sub_1D8513340;
    v18 = v12[12];
    OUTLINED_FUNCTION_81_2(v12[11]);
    OUTLINED_FUNCTION_170_1();

    return sub_1D851372C(v19, v20);
  }
}

uint64_t sub_1D8513248()
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

uint64_t sub_1D8513340()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
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
    v12 = v3[21];
    v13 = v3[18];
    v14 = v3[15];

    v15 = OUTLINED_FUNCTION_56_0();

    return v16(v15);
  }
}

uint64_t sub_1D8513480(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v14 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v13 = swift_task_alloc();
  v3[9] = v13;
  *v13 = v3;
  v13[1] = sub_1D852A37C;

  return GameDebuggerServiceWorkaround.getAchievementsProgresses(_:player:)();
}

uint64_t sub_1D851372C(uint64_t a1, void *a2)
{
  v3[14] = a1;
  v3[15] = v2;
  v4 = a2[1];
  v3[16] = *a2;
  v3[17] = v4;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D8513748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  v11 = v10[15];
  OUTLINED_FUNCTION_163_1();
  (*(v12 + 112))();
  if (v10[5])
  {
    v14 = v10[16];
    v13 = v10[17];
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C((v10 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_18_1();
    v15 = *(OUTLINED_FUNCTION_369_1() + 24);
    OUTLINED_FUNCTION_131();
    v39 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_306_1(v19);
    *v20 = v21;
    v20[1] = sub_1D85138EC;
    OUTLINED_FUNCTION_207_0(v10[14]);
    OUTLINED_FUNCTION_383_1();
    OUTLINED_FUNCTION_239_1();

    return v26(v22, v23, v24, v25, v26, v27, v28, v29, a9, v39);
  }

  else
  {
    sub_1D84F589C((v10 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_239_1();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }
}

uint64_t sub_1D85138EC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v4 = v3;
  OUTLINED_FUNCTION_62();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_37();
  *v9 = v8;
  v4[19] = v0;

  v10 = v4[15];
  if (!v0)
  {
    v4[20] = v1;
  }

  OUTLINED_FUNCTION_184_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t GameDebuggerServiceWorkaround.resetAchievementsProgress(_:players:)()
{
  OUTLINED_FUNCTION_148();
  v3 = OUTLINED_FUNCTION_300_2(v1, v2);
  v0[10] = v3;
  OUTLINED_FUNCTION_39(v3);
  v0[11] = v4;
  v6 = *(v5 + 64);
  v0[12] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[13] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[14] = v8;
  v10 = *(v9 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[16] = v11;
  OUTLINED_FUNCTION_39(v11);
  v0[17] = v12;
  v14 = *(v13 + 64);
  v0[18] = OUTLINED_FUNCTION_332();
  v15 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D8513B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  v11 = v10[9];
  if (swift_distributed_actor_is_remote())
  {
    v12 = v10[18];
    v13 = v10[7];
    OUTLINED_FUNCTION_169_2(v10[9]);
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      (*(v10[17] + 8))(v10[18], v10[16]);
LABEL_11:
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_231_0();
      v28 = v10[12];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239_1();

      return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
    }

    v21 = v10[15];
    OUTLINED_FUNCTION_414_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v22);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_368_1();
      v25(v24);
      v26 = OUTLINED_FUNCTION_121_2();
      v27(v26);
      goto LABEL_11;
    }

    v37 = v10[12];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v38 = swift_task_alloc();
    v10[19] = v38;
    type metadata accessor for GameDebuggerServiceWorkaround();
    OUTLINED_FUNCTION_1_3();
    sub_1D8526788(v39);
    OUTLINED_FUNCTION_81();
    *v38 = v40;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_239_1();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v41, v42, v43, v44, v45, v46, v47);
  }

  else
  {
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_213_1(v14);
    *v15 = v16;
    OUTLINED_FUNCTION_52_1(v15);
    OUTLINED_FUNCTION_239_1();

    return sub_1D85141A0(v17, v18);
  }
}

uint64_t sub_1D8513DFC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8513EF4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v15 = *v7;
  v9 = a2[1];
  v2[5] = v9;
  v10 = *(v9 - 8);
  v2[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v2[7] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v13 = *v12;
  v14 = swift_task_alloc();
  v2[8] = v14;
  *v14 = v2;
  v14[1] = sub_1D852A3A4;

  return GameDebuggerServiceWorkaround.resetAchievementsProgress(_:players:)();
}

uint64_t sub_1D85141A0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D85141B8()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_163_1();
  (*(v2 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v3 = *(OUTLINED_FUNCTION_14_3() + 32);
    OUTLINED_FUNCTION_54();
    v14 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_264_2(v7);
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_65_2(v8);

    return v11(v10);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_57();

    return v13();
  }
}

uint64_t sub_1D851433C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *(v1 + 120);
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_341();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_184_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t GameDebuggerServiceWorkaround.revealAchievements(_:players:)()
{
  OUTLINED_FUNCTION_148();
  v3 = OUTLINED_FUNCTION_300_2(v1, v2);
  v0[10] = v3;
  OUTLINED_FUNCTION_39(v3);
  v0[11] = v4;
  v6 = *(v5 + 64);
  v0[12] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[13] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[14] = v8;
  v10 = *(v9 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[16] = v11;
  OUTLINED_FUNCTION_39(v11);
  v0[17] = v12;
  v14 = *(v13 + 64);
  v0[18] = OUTLINED_FUNCTION_332();
  v15 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D851459C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  v11 = v10[9];
  if (swift_distributed_actor_is_remote())
  {
    v12 = v10[18];
    v13 = v10[7];
    OUTLINED_FUNCTION_169_2(v10[9]);
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      (*(v10[17] + 8))(v10[18], v10[16]);
LABEL_11:
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_231_0();
      v28 = v10[12];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239_1();

      return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
    }

    v21 = v10[15];
    OUTLINED_FUNCTION_414_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v22);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_368_1();
      v25(v24);
      v26 = OUTLINED_FUNCTION_121_2();
      v27(v26);
      goto LABEL_11;
    }

    v37 = v10[12];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v38 = swift_task_alloc();
    v10[19] = v38;
    type metadata accessor for GameDebuggerServiceWorkaround();
    OUTLINED_FUNCTION_1_3();
    sub_1D8526788(v39);
    OUTLINED_FUNCTION_81();
    *v38 = v40;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_239_1();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v41, v42, v43, v44, v45, v46, v47);
  }

  else
  {
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_213_1(v14);
    *v15 = v16;
    OUTLINED_FUNCTION_52_1(v15);
    OUTLINED_FUNCTION_239_1();

    return sub_1D8514EA0(v17, v18);
  }
}

uint64_t sub_1D8514854()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D851494C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v1 = OUTLINED_FUNCTION_301_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_77();
  v4(v3);
  v5 = OUTLINED_FUNCTION_80();
  v6(v5);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_231_0();
  v7 = *(v0 + 96);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D8514A04()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = v0[21];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 144);
  v7 = v0[15];
  v8 = v0[12];

  OUTLINED_FUNCTION_137();

  return v9();
}

uint64_t sub_1D8514B38()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v1 = OUTLINED_FUNCTION_301_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_77();
  v4(v3);
  v5 = OUTLINED_FUNCTION_80();
  v6(v5);
  OUTLINED_FUNCTION_331();

  v7 = *(v0 + 160);
  OUTLINED_FUNCTION_370_0();
  v8 = *(v0 + 96);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D8514BF4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v15 = *v7;
  v9 = a2[1];
  v2[5] = v9;
  v10 = *(v9 - 8);
  v2[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v2[7] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v13 = *v12;
  v14 = swift_task_alloc();
  v2[8] = v14;
  *v14 = v2;
  v14[1] = sub_1D852A3A4;

  return GameDebuggerServiceWorkaround.revealAchievements(_:players:)();
}

uint64_t sub_1D8514EA0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D8514EB8()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_163_1();
  (*(v2 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v3 = *(OUTLINED_FUNCTION_14_3() + 40);
    OUTLINED_FUNCTION_54();
    v14 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_264_2(v7);
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_65_2(v8);

    return v11(v10);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_57();

    return v13();
  }
}

uint64_t GameDebuggerServiceWorkaround.submitAchievementsProgress(_:)()
{
  OUTLINED_FUNCTION_148();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_1D8581018();
  v1[8] = v3;
  OUTLINED_FUNCTION_39(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v1[11] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_332();
  v11 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D8515138()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[13];
    v3 = v0[6];
    OUTLINED_FUNCTION_169_2(v0[7]);
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_83_3();
    OUTLINED_FUNCTION_285_0();
    sub_1D8486FDC();
    sub_1D8487094();
    OUTLINED_FUNCTION_37_0();
    if (v2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v4), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v5))
    {
      v6 = OUTLINED_FUNCTION_204_0();
      v7(v6);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_324_1();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_535();

      return v9(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      v22 = v0[10];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v23 = swift_task_alloc();
      v0[14] = v23;
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v24);
      OUTLINED_FUNCTION_81();
      *v23 = v25;
      OUTLINED_FUNCTION_256_0();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_535();

      return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_201_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_113_1(v18);
    OUTLINED_FUNCTION_535();

    return sub_1D8515600(v20);
  }
}

uint64_t sub_1D851536C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8515464(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v8 = *v6;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_1D84A7CAC;

  return GameDebuggerServiceWorkaround.submitAchievementsProgress(_:)();
}

uint64_t sub_1D8515600(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D8515618()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 48);
    OUTLINED_FUNCTION_54();
    v13 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_57();

    return v12();
  }
}

uint64_t sub_1D8515798()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_341();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_184_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t GameDebuggerServiceWorkaround.getImageData(_:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A150, &qword_1D859F178);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D851599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A158, &unk_1D859F180);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D84FBF60();
    sub_1D84FC010();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A170, &unk_1D859F190);
    sub_1D84FC0C0();
    sub_1D84FC21C();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
LABEL_6:
      v17 = OUTLINED_FUNCTION_116_0();
      v18(v17);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_170_1();

    return sub_1D8515D8C(v31);
  }
}

uint64_t sub_1D8515BEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1D84A7CD8;

  return GameDebuggerServiceWorkaround.getImageData(_:)();
}

uint64_t sub_1D8515D8C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D8515DA4()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 56);
    OUTLINED_FUNCTION_54();
    v14 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t GameDebuggerServiceWorkaround.listLocalPlayers()()
{
  OUTLINED_FUNCTION_148();
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  OUTLINED_FUNCTION_39(v2);
  v1[8] = v3;
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_332();
  v6 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D8515FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[6];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_169_2(v12[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v15)
    {
      OUTLINED_FUNCTION_331();

      v16 = v12[9];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
    }

    else
    {
      v29 = v12[9];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v30 = swift_task_alloc();
      v12[10] = v30;
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v31);
      OUTLINED_FUNCTION_98();
      *v30 = v32;
      OUTLINED_FUNCTION_378_1();
      v33 = v12[6];
      OUTLINED_FUNCTION_2_4(v34);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v26 = swift_task_alloc();
    v12[12] = v26;
    *v26 = v12;
    v26[1] = sub_1D8516368;
    v27 = v12[6];
    OUTLINED_FUNCTION_170_1();

    return sub_1D851658C(v28);
  }
}

uint64_t sub_1D85161F0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D85162E8()
{
  OUTLINED_FUNCTION_148();
  v1 = OUTLINED_FUNCTION_177_1();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 40);
  v4 = *(v0 + 72);

  v5 = OUTLINED_FUNCTION_72();

  return v6(v5);
}

uint64_t sub_1D8516368()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v3 = *(v2 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_510();
  v7 = *(v6 + 72);

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    v8 = OUTLINED_FUNCTION_482();
  }

  return v9(v8);
}

uint64_t sub_1D8516474()
{
  OUTLINED_FUNCTION_148();
  v1 = OUTLINED_FUNCTION_177_1();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 88);
  v4 = *(v0 + 72);

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t sub_1D85164F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1D852A308;

  return GameDebuggerServiceWorkaround.listLocalPlayers()();
}

uint64_t sub_1D85165A4()
{
  OUTLINED_FUNCTION_204();
  v2 = v1[12];
  OUTLINED_FUNCTION_163_1();
  (*(v3 + 112))();
  if (v1[5])
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C((v1 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    v4 = *(OUTLINED_FUNCTION_14_3() + 64);
    OUTLINED_FUNCTION_54();
    v13 = (v5 + *v5);
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    v1[13] = v8;
    *v8 = v1;
    v9 = OUTLINED_FUNCTION_64(v8);

    return v13(v9, v0);
  }

  else
  {
    sub_1D84F589C((v1 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    v12 = MEMORY[0x1E69E7CC0];

    return v11(v12);
  }
}

uint64_t sub_1D8516740()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v5 = v3[13];
  *v4 = *v2;
  v3[14] = v0;

  OUTLINED_FUNCTION_214_3();
  v7 = *(v6 + 96);
  if (!v0)
  {
    v3[15] = v1;
  }

  OUTLINED_FUNCTION_184_2();
  OUTLINED_FUNCTION_535();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D8516858()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_69_2();

  return v2();
}

uint64_t sub_1D85168B8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_93_0();
  v2 = *(v0 + 112);

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.describeLeaderboards(_:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D85169FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
    sub_1D848A6BC();
    sub_1D848A7F8();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
LABEL_6:
      v17 = OUTLINED_FUNCTION_116_0();
      v18(v17);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_170_1();

    return sub_1D8516DEC(v31);
  }
}

uint64_t sub_1D8516C4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1D84A7CD8;

  return GameDebuggerServiceWorkaround.describeLeaderboards(_:)();
}

uint64_t sub_1D8516DEC(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D8516E04()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 72);
    OUTLINED_FUNCTION_54();
    v14 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t GameDebuggerServiceWorkaround.listLeaderboardEntries(_:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v2 = v1;
  v7 = OUTLINED_FUNCTION_371(v3, v4, v5, v6);
  *(v0 + 112) = v7;
  OUTLINED_FUNCTION_39(v7);
  *(v0 + 120) = v8;
  v10 = *(v9 + 64);
  *(v0 + 128) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  OUTLINED_FUNCTION_29(v11);
  *(v0 + 144) = v12;
  v14 = *(v13 + 64);
  *(v0 + 152) = OUTLINED_FUNCTION_332();
  v15 = sub_1D8580EF8();
  *(v0 + 160) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v0 + 168) = v16;
  v18 = *(v17 + 64);
  *(v0 + 176) = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v0 + 184) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v0 + 192) = v20;
  v22 = *(v21 + 64);
  *(v0 + 200) = OUTLINED_FUNCTION_332();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v0 + 208) = v23;
  OUTLINED_FUNCTION_39(v23);
  *(v0 + 216) = v24;
  v26 = *(v25 + 64);
  *(v0 + 224) = OUTLINED_FUNCTION_332();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v0 + 232) = v27;
  OUTLINED_FUNCTION_39(v27);
  *(v0 + 240) = v28;
  v30 = *(v29 + 64);
  *(v0 + 248) = OUTLINED_FUNCTION_332();
  *(v0 + 290) = *v2;
  v31 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1D85171E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v13 = *(v12 + 104);
  if (swift_distributed_actor_is_remote())
  {
    v14 = *(v12 + 248);
    v15 = *(v12 + 72);
    OUTLINED_FUNCTION_169_2(*(v12 + 104));
    *(v12 + 56) = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_37_0();
    if (v14)
    {
      (*(*(v12 + 240) + 8))(*(v12 + 248), *(v12 + 232));
LABEL_9:
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_317_1();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }

    v25 = *(v12 + 224);
    *(v12 + 40) = *(v12 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39658, &unk_1D859F1F0);
    OUTLINED_FUNCTION_100_1();
    sub_1D8581038();
    OUTLINED_FUNCTION_134_0(&unk_1ECA39660);
    OUTLINED_FUNCTION_133_0(&unk_1ECA39668);
    OUTLINED_FUNCTION_75_0();
    v26 = *(v12 + 200);
    (*(*(v12 + 168) + 16))(*(v12 + 176), *(v12 + 96), *(v12 + 160));
    OUTLINED_FUNCTION_111_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_283_1(v27);
    OUTLINED_FUNCTION_27_3(&unk_1ECA39678);
    OUTLINED_FUNCTION_75_0();
    v28 = *(v12 + 152);
    *(v12 + 289) = *(v12 + 290);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_73_0();
    sub_1D8581038();
    sub_1D848CAC8();
    sub_1D848CBA0();
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
    sub_1D848CC78();
    sub_1D848CD28();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v30)
    {
      v31 = *(v12 + 240);
      a9 = *(v12 + 248);
      v33 = *(v12 + 224);
      v32 = *(v12 + 232);
      v34 = *(v12 + 208);
      v35 = *(v12 + 216);
      v36 = *(v12 + 192);
      v37 = *(v12 + 200);
      v38 = *(v12 + 184);
      (*(*(v12 + 144) + 8))(*(v12 + 152), *(v12 + 136));
      v39 = *(v36 + 8);
      v40 = OUTLINED_FUNCTION_258();
      v41(v40);
      v42 = *(v35 + 8);
      v43 = OUTLINED_FUNCTION_221();
      v44(v43);
      (*(v31 + 8))(a9, v32);
      goto LABEL_9;
    }

    v53 = *(v12 + 128);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v54 = swift_task_alloc();
    *(v12 + 256) = v54;
    type metadata accessor for GameDebuggerServiceWorkaround();
    OUTLINED_FUNCTION_1_3();
    sub_1D8526788(v55);
    OUTLINED_FUNCTION_98();
    *v54 = v56;
    v54[1] = sub_1D85176CC;
    v57 = *(v12 + 128);
    v58 = *(v12 + 104);
    OUTLINED_FUNCTION_2_4(v59);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    *(v12 + 288) = *(v12 + 290);
    v16 = swift_task_alloc();
    *(v12 + 272) = v16;
    *v16 = v12;
    OUTLINED_FUNCTION_385_1(v16);
    OUTLINED_FUNCTION_207_0(v17);
    OUTLINED_FUNCTION_197();

    return sub_1D8518088(v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1D85176CC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D85178B0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[35] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[31];
    v14 = v3[28];
    v15 = v3[25];
    v16 = v3[22];
    v17 = v3[19];
    v18 = v3[16];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_511();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1D8517B00()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 280);
  OUTLINED_FUNCTION_263();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D8517B88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v23 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v22 = *v13;
  v21 = v13[1];
  v14 = a2[2];
  v3[9] = v14;
  v15 = *(v14 - 8);
  v3[10] = v15;
  v16 = *(v15 + 64) + 15;
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v17 = a2[3];
  v3[12] = v17;
  v18 = *(v17 - 8);
  v3[13] = v18;
  v19 = *(v18 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v20 = swift_task_alloc();
  v3[15] = v20;
  *v20 = v3;
  v20[1] = sub_1D852A2FC;

  return GameDebuggerServiceWorkaround.listLeaderboardEntries(_:range:locale:timeScope:)();
}

uint64_t sub_1D8518088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 120) = a4;
  *(v6 + 128) = v5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 96) = a1;
  *(v6 + 161) = *a5;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D85180AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v12 = *(v11 + 128);
  OUTLINED_FUNCTION_163_1();
  (*(v13 + 112))();
  if (*(v11 + 40))
  {
    v14 = *(v11 + 161);
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v11 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_18_1();
    *(v11 + 160) = v14;
    v15 = *(v10 + 80);
    OUTLINED_FUNCTION_54();
    v43 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_207_3(v19);
    *v20 = v21;
    v20[1] = sub_1D8518268;
    v22 = *(v11 + 112);
    v23 = *(v11 + 120);
    v24 = *(v11 + 104);
    OUTLINED_FUNCTION_207_0(*(v11 + 96));
    OUTLINED_FUNCTION_471();

    return v32(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    sub_1D84F589C(v11 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_471();

    return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }
}

uint64_t sub_1D8518268()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v4 = v3;
  OUTLINED_FUNCTION_62();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *v2;
  OUTLINED_FUNCTION_37();
  *v9 = v8;
  v4[18] = v0;

  v10 = v4[16];
  if (!v0)
  {
    v4[19] = v1;
  }

  OUTLINED_FUNCTION_184_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D8518374()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_69_2();

  return v2();
}

uint64_t sub_1D85183D4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_93_0();
  v2 = *(v0 + 144);

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.listLeaderboardEntries(_:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = sub_1D8581018();
  OUTLINED_FUNCTION_38_0(v7);
  *(v1 + 104) = v8;
  v10 = *(v9 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 120) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 128) = v12;
  v14 = *(v13 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v15 = sub_1D8580EF8();
  *(v1 + 144) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 152) = v16;
  v18 = *(v17 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 168) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v1 + 176) = v20;
  v22 = *(v21 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_332();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v1 + 192) = v23;
  OUTLINED_FUNCTION_39(v23);
  *(v1 + 200) = v24;
  v26 = *(v25 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 216) = v27;
  OUTLINED_FUNCTION_39(v27);
  *(v1 + 224) = v28;
  v30 = *(v29 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_332();
  *(v1 + 274) = *v3;
  v31 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1D8518684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v13 = *(v12 + 88);
  if (swift_distributed_actor_is_remote())
  {
    v14 = *(v12 + 232);
    v15 = *(v12 + 64);
    OUTLINED_FUNCTION_169_2(*(v12 + 88));
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_37_0();
    if (v14)
    {
      (*(*(v12 + 224) + 8))(*(v12 + 232), *(v12 + 216));
LABEL_9:
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_320_1();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
    }

    v26 = *(v12 + 208);
    OUTLINED_FUNCTION_411_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_75_0();
    v27 = *(v12 + 184);
    (*(*(v12 + 152) + 16))(*(v12 + 160), *(v12 + 80), *(v12 + 144));
    OUTLINED_FUNCTION_111_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_283_1(v28);
    OUTLINED_FUNCTION_27_3(&unk_1ECA39678);
    OUTLINED_FUNCTION_75_0();
    v29 = *(v12 + 136);
    *(v12 + 273) = *(v12 + 274);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_73_0();
    sub_1D8581038();
    sub_1D848CAC8();
    sub_1D848CBA0();
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
    sub_1D848CC78();
    sub_1D848CD28();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      v32 = *(v12 + 224);
      a9 = *(v12 + 232);
      v34 = *(v12 + 208);
      v33 = *(v12 + 216);
      v35 = *(v12 + 192);
      v36 = *(v12 + 200);
      v37 = *(v12 + 176);
      v38 = *(v12 + 184);
      v39 = *(v12 + 168);
      (*(*(v12 + 128) + 8))(*(v12 + 136), *(v12 + 120));
      v40 = *(v37 + 8);
      v41 = OUTLINED_FUNCTION_258();
      v42(v41);
      v43 = *(v36 + 8);
      v44 = OUTLINED_FUNCTION_221();
      v45(v44);
      (*(v32 + 8))(a9, v33);
      goto LABEL_9;
    }

    v54 = *(v12 + 112);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v55 = swift_task_alloc();
    *(v12 + 240) = v55;
    type metadata accessor for GameDebuggerServiceWorkaround();
    OUTLINED_FUNCTION_1_3();
    sub_1D8526788(v56);
    OUTLINED_FUNCTION_98();
    *v55 = v57;
    v55[1] = sub_1D8518B38;
    OUTLINED_FUNCTION_367_0();
    OUTLINED_FUNCTION_2_4(v58);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    *(v12 + 272) = *(v12 + 274);
    v16 = swift_task_alloc();
    *(v12 + 256) = v16;
    *v16 = v12;
    v16[1] = sub_1D8518D1C;
    v17 = *(v12 + 80);
    v18 = *(v12 + 88);
    v19 = *(v12 + 72);
    OUTLINED_FUNCTION_207_0(*(v12 + 64));
    OUTLINED_FUNCTION_197();

    return sub_1D85194F4(v20, v21, v22, v23);
  }
}

uint64_t sub_1D8518B38()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8518D1C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[33] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[29];
    v14 = v3[26];
    v15 = v3[23];
    v16 = v3[20];
    v17 = v3[17];
    v18 = v3[14];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_511();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1D8518F6C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 264);
  OUTLINED_FUNCTION_264_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D8518FF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v21 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v22 = swift_task_alloc();
  v3[8] = v22;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v20 = *v22;
  v13 = a2[2];
  v3[9] = v13;
  v14 = *(v13 - 8);
  v3[10] = v14;
  v15 = *(v14 + 64) + 15;
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v16 = a2[3];
  v3[12] = v16;
  v17 = *(v16 - 8);
  v3[13] = v17;
  v18 = *(v17 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v19 = swift_task_alloc();
  v3[15] = v19;
  *v19 = v3;
  v19[1] = sub_1D852A2FC;

  return GameDebuggerServiceWorkaround.listLeaderboardEntries(_:players:locale:timeScope:)();
}

uint64_t sub_1D85194F4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  *(v5 + 153) = *a4;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D8519514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v12 = *(v11 + 120);
  OUTLINED_FUNCTION_163_1();
  (*(v13 + 112))();
  if (*(v11 + 40))
  {
    v14 = *(v11 + 153);
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v11 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_18_1();
    *(v11 + 152) = v14;
    v15 = *(v10 + 88);
    OUTLINED_FUNCTION_54();
    v42 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_201_0(v19);
    *v20 = v21;
    v20[1] = sub_1D85196D0;
    v22 = *(v11 + 104);
    v23 = *(v11 + 112);
    OUTLINED_FUNCTION_207_0(*(v11 + 96));
    OUTLINED_FUNCTION_471();

    return v30(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  else
  {
    sub_1D84F589C(v11 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_471();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
  }
}

uint64_t sub_1D85196D0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v4 = v3;
  OUTLINED_FUNCTION_62();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  OUTLINED_FUNCTION_37();
  *v9 = v8;
  v4[17] = v0;

  v10 = v4[15];
  if (!v0)
  {
    v4[18] = v1;
  }

  OUTLINED_FUNCTION_184_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D85197DC()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_69_2();

  return v2();
}

uint64_t sub_1D851983C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_93_0();
  v2 = *(v0 + 136);

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_148();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_1D8581018();
  v1[11] = v4;
  OUTLINED_FUNCTION_39(v4);
  v1[12] = v5;
  v7 = *(v6 + 64);
  v1[13] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v1[14] = v8;
  OUTLINED_FUNCTION_39(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  OUTLINED_FUNCTION_29(v12);
  v1[18] = v13;
  v15 = *(v14 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  v16 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D85199E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[10];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[19];
    v15 = v12[8];
    OUTLINED_FUNCTION_169_2(v12[10]);
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_285_0();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_37_0();
    if (v14)
    {
      (*(v12[18] + 8))(v12[19], v12[17]);
LABEL_12:
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_168_0();
      v33 = v12[13];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
    }

    v25 = v12[16];
    OUTLINED_FUNCTION_411_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v27)
    {
      v29 = v12[18];
      v28 = v12[19];
      v30 = v12[17];
      (*(v12[15] + 8))(v12[16], v12[14]);
      v31 = OUTLINED_FUNCTION_121_2();
      v32(v31);
      goto LABEL_12;
    }

    v42 = v12[13];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v43 = swift_task_alloc();
    v12[20] = v43;
    type metadata accessor for GameDebuggerServiceWorkaround();
    OUTLINED_FUNCTION_1_3();
    sub_1D8526788(v44);
    OUTLINED_FUNCTION_98();
    *v43 = v45;
    v43[1] = sub_1D8519CEC;
    v46 = v12[13];
    v47 = v12[10];
    OUTLINED_FUNCTION_2_4(v48);
    OUTLINED_FUNCTION_143_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_322_0(v16);
    *v17 = v18;
    v17[1] = sub_1D8519EAC;
    v19 = v12[9];
    v20 = v12[10];
    OUTLINED_FUNCTION_207_0(v12[8]);
    OUTLINED_FUNCTION_170_1();

    return sub_1D851A368(v21, v22);
  }
}

uint64_t sub_1D8519CEC()
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

uint64_t sub_1D8519DE4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = OUTLINED_FUNCTION_204_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_77();
  v10(v9);
  v11 = OUTLINED_FUNCTION_80();
  v12(v11);
  OUTLINED_FUNCTION_331();

  v13 = v0[7];
  OUTLINED_FUNCTION_243_0();
  v14 = v0[13];

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1D8519EAC()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v3 = v2[22];
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_510();
  v7 = *(v6 + 152);
  v8 = v2[16];
  v9 = v2[13];

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    OUTLINED_FUNCTION_482();
  }

  OUTLINED_FUNCTION_535();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D8519FF0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = OUTLINED_FUNCTION_204_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_77();
  v10(v9);
  v11 = OUTLINED_FUNCTION_80();
  v12(v11);
  OUTLINED_FUNCTION_331();

  v13 = v0[21];
  OUTLINED_FUNCTION_243_0();
  v14 = v0[13];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1D851A0B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v16 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v14 = *v13;
  v15 = swift_task_alloc();
  v3[9] = v15;
  *v15 = v3;
  v15[1] = sub_1D852A37C;

  return GameDebuggerServiceWorkaround.listLeaderboards(games:players:)();
}

uint64_t sub_1D851A368(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D851A380()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_163_1();
  (*(v2 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v3 = *(OUTLINED_FUNCTION_14_3() + 96);
    OUTLINED_FUNCTION_54();
    v15 = v4 + *v4;
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_264_2(v7);
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_65_2(v8);

    return v11(v10);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    v14 = MEMORY[0x1E69E7CC0];

    return v13(v14);
  }
}

uint64_t sub_1D851A510()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v5 = v3[15];
  *v4 = *v2;
  v3[16] = v0;

  OUTLINED_FUNCTION_214_3();
  v7 = *(v6 + 112);
  if (!v0)
  {
    v3[17] = v1;
  }

  OUTLINED_FUNCTION_184_2();
  OUTLINED_FUNCTION_535();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D851A628()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_69_2();

  return v2();
}

uint64_t sub_1D851A688()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_93_0();
  v2 = *(v0 + 128);

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.submitLeaderboardEntries(_:)()
{
  OUTLINED_FUNCTION_148();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_1D8581018();
  v1[8] = v3;
  OUTLINED_FUNCTION_39(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39708, &unk_1D859F250);
  v1[11] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_332();
  v11 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D851A7D8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[13];
    v3 = v0[6];
    OUTLINED_FUNCTION_169_2(v0[7]);
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39710, &qword_1D8596140);
    OUTLINED_FUNCTION_257_1();
    OUTLINED_FUNCTION_83_3();
    OUTLINED_FUNCTION_285_0();
    sub_1D849134C();
    sub_1D8491404();
    OUTLINED_FUNCTION_37_0();
    if (v2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v4), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v5))
    {
      v6 = OUTLINED_FUNCTION_204_0();
      v7(v6);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_324_1();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_535();

      return v9(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      v22 = v0[10];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v23 = swift_task_alloc();
      v0[14] = v23;
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v24);
      OUTLINED_FUNCTION_81();
      *v23 = v25;
      OUTLINED_FUNCTION_256_0();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_535();

      return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_201_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_113_1(v18);
    OUTLINED_FUNCTION_535();

    return sub_1D851ABA8(v20);
  }
}

uint64_t sub_1D851AA0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v8 = *v6;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_1D84A7CAC;

  return GameDebuggerServiceWorkaround.submitLeaderboardEntries(_:)();
}

uint64_t sub_1D851ABA8(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D851ABC0()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 104);
    OUTLINED_FUNCTION_54();
    v13 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_57();

    return v12();
  }
}

uint64_t GameDebuggerServiceWorkaround.resetLeaderboards(_:)()
{
  OUTLINED_FUNCTION_148();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_1D8581018();
  v1[8] = v3;
  OUTLINED_FUNCTION_39(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v1[11] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_332();
  v11 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D851AE3C()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[13];
    v3 = v0[6];
    OUTLINED_FUNCTION_169_2(v0[7]);
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_37_0();
    if (v2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v4), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v5))
    {
      v6 = OUTLINED_FUNCTION_204_0();
      v7(v6);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_324_1();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_535();

      return v9(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      v22 = v0[10];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v23 = swift_task_alloc();
      v0[14] = v23;
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v24);
      OUTLINED_FUNCTION_81();
      *v23 = v25;
      OUTLINED_FUNCTION_256_0();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_535();

      return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_201_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_113_1(v18);
    OUTLINED_FUNCTION_535();

    return sub_1D851B554(v20);
  }
}

uint64_t sub_1D851B06C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D851B164()
{
  OUTLINED_FUNCTION_174();
  v0 = OUTLINED_FUNCTION_364_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_74();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_324_1();

  OUTLINED_FUNCTION_57();

  return v4();
}

uint64_t sub_1D851B1FC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = *(v0 + 128);
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 104);
  v7 = *(v0 + 80);

  OUTLINED_FUNCTION_137();

  return v8();
}

uint64_t sub_1D851B314()
{
  OUTLINED_FUNCTION_174();
  v1 = OUTLINED_FUNCTION_364_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_74();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[10];

  OUTLINED_FUNCTION_146();

  return v8();
}

uint64_t sub_1D851B3B8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v8 = *v6;
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_1D84A7CAC;

  return GameDebuggerServiceWorkaround.resetLeaderboards(_:)();
}

uint64_t sub_1D851B554(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D851B56C()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 112);
    OUTLINED_FUNCTION_54();
    v13 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_57();

    return v12();
  }
}

uint64_t GameDebuggerServiceWorkaround.describeLeaderboardSets(_:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D851B7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D8491E2C();
    sub_1D8491EDC();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D8491F8C();
    sub_1D84920E8();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
LABEL_6:
      v17 = OUTLINED_FUNCTION_116_0();
      v18(v17);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_170_1();

    return sub_1D851BBCC(v31);
  }
}

uint64_t sub_1D851BA2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1D84A7CD8;

  return GameDebuggerServiceWorkaround.describeLeaderboardSets(_:)();
}

uint64_t sub_1D851BBCC(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D851BBE4()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 120);
    OUTLINED_FUNCTION_54();
    v14 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t GameDebuggerServiceWorkaround.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D851BE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_100_1();
    OUTLINED_FUNCTION_285_0();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D8492BB0();
    sub_1D8492C60();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
LABEL_6:
      v17 = OUTLINED_FUNCTION_116_0();
      v18(v17);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_170_1();

    return sub_1D851C254(v31);
  }
}

uint64_t sub_1D851C0B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1D84A7CD8;

  return GameDebuggerServiceWorkaround.listLeaderboardSets(games:)();
}

uint64_t sub_1D851C254(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D851C26C()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 128);
    OUTLINED_FUNCTION_54();
    v14 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t GameDebuggerServiceWorkaround.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39738, &unk_1D859F280);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D851C4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39740, &unk_1D8596160);
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_198();
    OUTLINED_FUNCTION_285_0();
    sub_1D8491E2C();
    sub_1D8491EDC();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
LABEL_6:
      v17 = OUTLINED_FUNCTION_116_0();
      v18(v17);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_170_1();

    return sub_1D851C8DC(v31);
  }
}

uint64_t sub_1D851C73C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1D84A7CD8;

  return GameDebuggerServiceWorkaround.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_1D851C8DC(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D851C8F4()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 136);
    OUTLINED_FUNCTION_54();
    v14 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t GameDebuggerServiceWorkaround.describePlayerProfiles(_:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D851CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A1A0, &qword_1D859F2E8);
    sub_1D8505630();
    sub_1D850578C();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
LABEL_6:
      v17 = OUTLINED_FUNCTION_116_0();
      v18(v17);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_170_1();

    return sub_1D851CF60(v31);
  }
}

uint64_t sub_1D851CDC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_1D84A7CD8;

  return GameDebuggerServiceWorkaround.describePlayerProfiles(_:)();
}

uint64_t sub_1D851CF60(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D851CF78()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 144);
    OUTLINED_FUNCTION_54();
    v14 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_212_3(v6);
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_9_2(v7);

    return v10(v9);
  }

  else
  {
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_69_2();
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t GameDebuggerServiceWorkaround.describeGameLockups(_:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D851D1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_285_0();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A1E0, &qword_1D859F308);
    sub_1D8506280();
    sub_1D85063DC();
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
LABEL_6:
      v17 = OUTLINED_FUNCTION_116_0();
      v18(v17);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_170_1();

    return sub_1D851D5E4(v31);
  }
}