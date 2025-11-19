uint64_t sub_1D8490F5C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_330();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[15];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D8491004()
{
  OUTLINED_FUNCTION_148();
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[15];

  OUTLINED_FUNCTION_146();

  return v4();
}

uint64_t sub_1D849106C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D84911F8;

  return DistributedGameKitServiceProtocol<>.submitLeaderboardEntries(entries:)();
}

uint64_t sub_1D84911F8()
{
  OUTLINED_FUNCTION_536();
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
  OUTLINED_FUNCTION_535();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

unint64_t sub_1D849134C()
{
  result = qword_1ECA39718;
  if (!qword_1ECA39718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39710, &qword_1D8596140);
    sub_1D84A6058(&qword_1ECA39720, 255, type metadata accessor for LeaderboardEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39718);
  }

  return result;
}

unint64_t sub_1D8491404()
{
  result = qword_1ECA39728;
  if (!qword_1ECA39728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39710, &qword_1D8596140);
    sub_1D84A6058(&qword_1ECA39730, 255, type metadata accessor for LeaderboardEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39728);
  }

  return result;
}

uint64_t sub_1D84914BC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596968);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8491548(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D8491670, 0, 0);
}

uint64_t sub_1D8491670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596968);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  type metadata accessor for $DistributedGameKitServiceProtocol();
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
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_294_0();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v33, v34, v35);
  OUTLINED_FUNCTION_98();
  v13[2] = v36;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v37);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeLeaderboardSets(leaderboardSets:)()
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

uint64_t sub_1D84919DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 104);
  is_remote = swift_distributed_actor_is_remote();
  v18 = *(v15 + 104);
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
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_194_0();
    OUTLINED_FUNCTION_76_0();
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

    v47 = *(v15 + 128);
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_294_0();
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
    v19 = *(OUTLINED_FUNCTION_25_0() + 96);
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

uint64_t sub_1D8491C9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedGameKitServiceProtocol<>.describeLeaderboardSets(leaderboardSets:)();
}

unint64_t sub_1D8491E2C()
{
  result = qword_1ECA39748;
  if (!qword_1ECA39748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39740, &unk_1D8596160);
    sub_1D844A16C(&qword_1ECA39750, &qword_1ECA39758, &unk_1D859F290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39748);
  }

  return result;
}

unint64_t sub_1D8491EDC()
{
  result = qword_1ECA39760;
  if (!qword_1ECA39760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39740, &unk_1D8596160);
    sub_1D844A16C(&qword_1ECA39768, &qword_1ECA39758, &unk_1D859F290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39760);
  }

  return result;
}

unint64_t sub_1D8491F8C()
{
  result = qword_1ECA39778;
  if (!qword_1ECA39778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D8492010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39778);
  }

  return result;
}

unint64_t sub_1D8492010()
{
  result = qword_1ECA39780;
  if (!qword_1ECA39780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39788, &qword_1D859F2A0);
    sub_1D8492094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39780);
  }

  return result;
}

unint64_t sub_1D8492094()
{
  result = qword_1ECA39790;
  if (!qword_1ECA39790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39790);
  }

  return result;
}

unint64_t sub_1D84920E8()
{
  result = qword_1ECA39798;
  if (!qword_1ECA39798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39770, &unk_1D8596170);
    sub_1D849216C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39798);
  }

  return result;
}

unint64_t sub_1D849216C()
{
  result = qword_1ECA397A0;
  if (!qword_1ECA397A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39788, &qword_1D859F2A0);
    sub_1D84921F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397A0);
  }

  return result;
}

unint64_t sub_1D84921F0()
{
  result = qword_1ECA397A8;
  if (!qword_1ECA397A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397A8);
  }

  return result;
}

uint64_t sub_1D8492244()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596960);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84922D0(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D84923F8, 0, 0);
}

uint64_t sub_1D84923F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596960);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  type metadata accessor for $DistributedGameKitServiceProtocol();
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
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v31 = v13[11];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_343_0();
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v32);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v33, v34, v35);
  OUTLINED_FUNCTION_98();
  v13[2] = v36;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v37);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.listLeaderboardSets(games:)()
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

uint64_t sub_1D8492760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 104);
  is_remote = swift_distributed_actor_is_remote();
  v18 = *(v15 + 104);
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

    v47 = *(v15 + 128);
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_343_0();
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
    v19 = *(OUTLINED_FUNCTION_25_0() + 104);
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

uint64_t sub_1D8492A20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedGameKitServiceProtocol<>.listLeaderboardSets(games:)();
}

unint64_t sub_1D8492BB0()
{
  result = qword_1ECA397B8;
  if (!qword_1ECA397B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D844A16C(&qword_1ECA397C0, &qword_1ECA397C8, &qword_1D859F2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397B8);
  }

  return result;
}

unint64_t sub_1D8492C60()
{
  result = qword_1ECA397D0;
  if (!qword_1ECA397D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA397B0, &unk_1D8596190);
    sub_1D844A16C(&qword_1ECA397D8, &qword_1ECA397C8, &qword_1D859F2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397D0);
  }

  return result;
}

uint64_t sub_1D8492D10()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596958);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8492D9C(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D8492EC4, 0, 0);
}

uint64_t sub_1D8492EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596958);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  type metadata accessor for $DistributedGameKitServiceProtocol();
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
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v33, v34, v35);
  OUTLINED_FUNCTION_98();
  v13[2] = v36;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v37);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.listLeaderboards(leaderboardSets:)()
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

uint64_t sub_1D8493238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 104);
  is_remote = swift_distributed_actor_is_remote();
  v18 = *(v15 + 104);
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
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_194_0();
    OUTLINED_FUNCTION_76_0();
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

    v47 = *(v15 + 128);
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
    v19 = *(OUTLINED_FUNCTION_25_0() + 112);
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

uint64_t sub_1D8493500(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedGameKitServiceProtocol<>.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_1D8493690()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v0);
  OUTLINED_FUNCTION_24(&unk_1D8596950);
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_535();

  return v10(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D8493734(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 225) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1D8581018();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  *(v5 + 144) = v12;
  v13 = *(v12 - 8);
  *(v5 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v5 + 168) = v15;
  v16 = *(v15 - 8);
  *(v5 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8493934, 0, 0);
}

uint64_t sub_1D8493934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 88);
  if (swift_distributed_actor_is_remote())
  {
    v17 = *(v15 + 88);
    *(v15 + 192) = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();
      v51 = *(v15 + 112);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
    }

    v32 = *(v15 + 184);
    v33 = *(v15 + 72);
    *(v15 + 40) = *(v15 + 64);
    *(v15 + 48) = v33;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
    v36 = *(v15 + 160);
    OUTLINED_FUNCTION_314_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_31();
    v37 = *(v15 + 136);
    *(v15 + 224) = *(v15 + 225);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      v40 = *(v15 + 176);
      v41 = *(v15 + 160);
      a9 = *(v15 + 168);
      a10 = *(v15 + 184);
      v43 = *(v15 + 144);
      v42 = *(v15 + 152);
      v44 = *(v15 + 128);
      v45 = *(v15 + 136);
      v46 = *(v15 + 120);

      v47 = OUTLINED_FUNCTION_79();
      v48(v47);
      v49 = OUTLINED_FUNCTION_74_0();
      v50(v49);
      (*(v40 + 8))(a10, a9);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v60 = *(v15 + 112);
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_342_0();
    v61 = swift_task_alloc();
    *(v15 + 208) = v61;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v62, v63, v64);
    OUTLINED_FUNCTION_81();
    *v61 = v65;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v66, v67, v68, v69, v70, v71, v72);
  }

  else
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8596950);
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_321_0(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_403(v19);
    v21 = *(v15 + 225);
    OUTLINED_FUNCTION_207_0(v22);
    OUTLINED_FUNCTION_170();

    return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1D8493CC0()
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

uint64_t DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 120) = v6;
  *(v1 + 128) = v0;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 96) = v9;
  v10 = sub_1D8581018();
  OUTLINED_FUNCTION_29(v10);
  *(v1 + 144) = v11;
  v13 = *(v12 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 160) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 168) = v15;
  v17 = *(v16 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  *(v1 + 184) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 192) = v19;
  v21 = *(v20 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 208) = v22;
  OUTLINED_FUNCTION_39(v22);
  *(v1 + 216) = v23;
  v25 = *(v24 + 64);
  v26 = OUTLINED_FUNCTION_332();
  v27 = *v5;
  v28 = v5[1];
  *(v1 + 224) = v26;
  *(v1 + 232) = v27;
  *(v1 + 240) = v28;
  *(v1 + 290) = *v3;
  v29 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8494060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 128);
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_188_0();
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v15 + 248) = *(v15 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_111();
      v56 = *(v15 + 152);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170();

      return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
    }

    v37 = *(v15 + 240);
    v38 = *(v15 + 224);
    *(v15 + 56) = *(v15 + 232);
    *(v15 + 64) = v37;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    v41 = *(v15 + 200);
    *(v15 + 88) = *(v15 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_31();
    v42 = *(v15 + 176);
    *(v15 + 289) = *(v15 + 290);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v43);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v44)
    {
      v45 = *(v15 + 216);
      v46 = *(v15 + 200);
      a9 = *(v15 + 208);
      a10 = *(v15 + 224);
      v48 = *(v15 + 184);
      v47 = *(v15 + 192);
      v49 = *(v15 + 168);
      v50 = *(v15 + 176);
      v51 = *(v15 + 160);

      v52 = OUTLINED_FUNCTION_79();
      v53(v52);
      v54 = OUTLINED_FUNCTION_74_0();
      v55(v54);
      (*(v45 + 8))(a10, a9);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v65 = *(v15 + 152);
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_342_0();
    v66 = swift_task_alloc();
    *(v15 + 256) = v66;
    *v66 = v15;
    OUTLINED_FUNCTION_295_0(v66);
    OUTLINED_FUNCTION_53(v67);
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v68, v69, v70, v71, v72, v73, v74);
  }

  else
  {
    v17 = *(v15 + 290);
    v19 = *(v15 + 232);
    v18 = *(v15 + 240);
    v20 = *(v15 + 120);
    *(v15 + 72) = *(v15 + 128);
    *(v15 + 40) = v19;
    *(v15 + 48) = v18;
    *(v15 + 288) = v17;
    v21 = *(*(v20 + 16) + 120);
    OUTLINED_FUNCTION_131();
    v76 = v22 + *v22;
    v24 = *(v23 + 4);
    v25 = swift_task_alloc();
    *(v15 + 272) = v25;
    *v25 = v15;
    v25[1] = sub_1D8494568;
    v26 = *(v15 + 96);
    v27 = *(v15 + 104);
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_170();

    return v33(v28, v29, v30, v31, v32, v33, v34, v35, a9, v76, a11, a12, a13, a14);
  }
}

uint64_t sub_1D8494470()
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

uint64_t sub_1D8494568()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
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

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[28];
    v13 = v3[25];
    v14 = v3[22];
    v15 = v3[19];

    OUTLINED_FUNCTION_57();

    return v16();
  }
}

uint64_t sub_1D8494784()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 280);
  OUTLINED_FUNCTION_235();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D84947FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v20[1] = sub_1D84A7CA8;

  return DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(game:filters:scope:)();
}

uint64_t sub_1D8494B04()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8596948);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);
  v5 = OUTLINED_FUNCTION_166();

  return v7(v5);
}

uint64_t sub_1D8494BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D8581018();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8494D34, 0, 0);
}

uint64_t sub_1D8494D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[11];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[11];
    v13[21] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_273_0();
      v40 = v13[14];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    v29 = v13[20];
    v30 = v13[9];
    v13[5] = v13[8];
    v13[6] = v30;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    v33 = v13[17];
    OUTLINED_FUNCTION_314_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      OUTLINED_FUNCTION_521();
      v36 = OUTLINED_FUNCTION_52();
      v37(v36);
      v38 = OUTLINED_FUNCTION_51_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v49 = v13[14];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    v13[23] = v50;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v51, v52, v53);
    OUTLINED_FUNCTION_81();
    *v50 = v54;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596948);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_322_0(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_403(v17);
    OUTLINED_FUNCTION_207_0(v19);
    OUTLINED_FUNCTION_240();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8495030()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(game:filters:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_467(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_29(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v1[20] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[21] = v12;
  v14 = *(v13 + 64);
  v1[22] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[23] = v15;
  OUTLINED_FUNCTION_39(v15);
  v1[24] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_332();
  v20 = *v0;
  v21 = v0[1];
  v1[25] = v19;
  v1[26] = v20;
  v1[27] = v21;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8495278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v16 = v15[16];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_188_0();
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v15[28] = v15[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_457();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    v35 = v15[27];
    v36 = v15[25];
    v15[7] = v15[26];
    v15[8] = v35;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    v39 = v15[22];
    v15[11] = v15[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_520();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v54 = v15[19];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v55 = swift_task_alloc();
    v15[29] = v55;
    *v55 = v15;
    OUTLINED_FUNCTION_295_0(v55);
    OUTLINED_FUNCTION_53(v56);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v57, v58, v59, v60, v61, v62, v63);
  }

  else
  {
    v17 = v15[15];
    OUTLINED_FUNCTION_270_0(v15[16]);
    v18 = v15[26];
    v19 = *(OUTLINED_FUNCTION_38(v15[27]) + 128);
    OUTLINED_FUNCTION_54();
    v65 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v15[31] = v23;
    *v23 = v15;
    v23[1] = sub_1D845C110;
    v24 = v15[12];
    v25 = v15[13];
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_239();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v65, a12, a13, a14);
  }
}

uint64_t sub_1D84955DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v21 = a4;
  v11 = a2[1];
  v5[5] = v11;
  v12 = *(v11 - 8);
  v5[6] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[7] = v14;
  sub_1D8580F88();
  v15 = *v14;
  v16 = *v21;
  v17 = *a5;
  v18 = a5[1];
  v19 = swift_task_alloc();
  v5[8] = v19;
  *v19 = v5;
  v19[1] = sub_1D848228C;

  return DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_1D8495818()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_259_0(&unk_1D8596940);
  v8 = v0;
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_64(v4);

  return v8(v6, v2);
}

uint64_t sub_1D84958B8(uint64_t a1, char a2)
{
  *(v3 + 169) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_1D8581018();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v3 + 88) = v7;
  v8 = *(v7 - 8);
  *(v3 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  *(v3 + 112) = v10;
  v11 = *(v10 - 8);
  *(v3 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8495A4C, 0, 0);
}

uint64_t sub_1D8495A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = *(v13 + 56);
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v13 + 56);
    *(v13 + 136) = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v42 = *(v13 + 128);
      v43 = *(v13 + 104);
      v44 = *(v13 + 80);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }

    v28 = *(v13 + 128);
    OUTLINED_FUNCTION_340_0(*(v13 + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181();
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_31();
    v29 = *(v13 + 104);
    *(v13 + 168) = *(v13 + 169);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      v33 = *(v13 + 120);
      v32 = *(v13 + 128);
      v35 = *(v13 + 104);
      v34 = *(v13 + 112);
      v36 = *(v13 + 88);
      v37 = *(v13 + 96);

      v38 = OUTLINED_FUNCTION_52();
      v39(v38);
      v40 = OUTLINED_FUNCTION_51_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v53 = *(v13 + 80);
    sub_1D8581028();
    v54 = swift_task_alloc();
    *(v13 + 152) = v54;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v55, v56, v57);
    OUTLINED_FUNCTION_81();
    *v54 = v58;
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v59, v60, v61, v62, v63, v64, v65);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596940);
    v16 = swift_task_alloc();
    *(v13 + 144) = v16;
    *v16 = v13;
    v16[1] = sub_1D8451444;
    v17 = *(v13 + 56);
    v18 = *(v13 + 169);
    OUTLINED_FUNCTION_121_0(*(v13 + 48));
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(challengeDefinitions:scope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 88) = v4;
  *(v1 + 96) = v0;
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  *(v1 + 64) = v7;
  v8 = sub_1D8581018();
  *(v1 + 104) = v8;
  OUTLINED_FUNCTION_39(v8);
  *(v1 + 112) = v9;
  v11 = *(v10 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 128) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 136) = v13;
  v15 = *(v14 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  *(v1 + 152) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 160) = v17;
  v19 = *(v18 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  *(v1 + 218) = *v3;
  v20 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8495EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 96);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 96);
    v17 = *(v14 + 72);
    OUTLINED_FUNCTION_83_0(*(v14 + 80));
    *(v14 + 176) = *(v14 + 48);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
    }

    v37 = *(v14 + 168);
    OUTLINED_FUNCTION_341_0(*(v14 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181();
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_31();
    v38 = *(v14 + 144);
    *(v14 + 217) = *(v14 + 218);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {
      OUTLINED_FUNCTION_187();
      v41 = OUTLINED_FUNCTION_52();
      v42(v41);
      v43 = OUTLINED_FUNCTION_51_0();
      v44(v43);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v53 = *(v14 + 120);
    sub_1D8581028();
    v54 = swift_task_alloc();
    v55 = OUTLINED_FUNCTION_286(v54);
    *v55 = v56;
    OUTLINED_FUNCTION_200_0(v55);
    OUTLINED_FUNCTION_53(v57);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v58, v59, v60, v61, v62, v63, v64);
  }

  else
  {
    v18 = *(v14 + 218);
    v19 = *(v14 + 88);
    *(v14 + 40) = *(v14 + 96);
    *(v14 + 216) = v18;
    v20 = *(*(v19 + 16) + 136);
    OUTLINED_FUNCTION_54();
    v66 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_321_0(v24);
    *v25 = v26;
    v25[1] = sub_1D8451E80;
    v27 = *(v14 + 72);
    OUTLINED_FUNCTION_108_0(*(v14 + 64));
    OUTLINED_FUNCTION_239();

    return v32(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v66, a12, a13, a14);
  }
}

uint64_t sub_1D8496200(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v21 = a4;
  v20 = *v11;
  v12 = a2[1];
  v5[5] = v12;
  v13 = *(v12 - 8);
  v5[6] = v13;
  v14 = *(v13 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_1D8580F88();
  v15 = *v21;
  v16 = *a5;
  v17 = a5[1];
  v18 = swift_task_alloc();
  v5[8] = v18;
  *v18 = v5;
  v18[1] = sub_1D847472C;

  return DistributedGameKitServiceProtocol<>.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_1D8496440()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_24(&unk_1D8596938);
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_107(v7);

  return v10(v9);
}

uint64_t sub_1D84964E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
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

  return MEMORY[0x1EEE6DFA0](sub_1D84966EC, 0, 0);
}

uint64_t sub_1D8496AA4()
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

uint64_t DistributedGameKitServiceProtocol<>.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v11 = *(v10 + 64);
  v0[24] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[26] = v13;
  v15 = *(v14 + 64);
  v0[27] = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v0[28] = v16;
  OUTLINED_FUNCTION_39(v16);
  v0[29] = v17;
  v19 = *(v18 + 64);
  v0[30] = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v0[31] = v20;
  OUTLINED_FUNCTION_39(v20);
  v0[32] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v24);
  v25 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_344_0(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_198();
  v6 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D8497148(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v20[1] = sub_1D84A7CA8;

  return DistributedGameKitServiceProtocol<>.listChallengeDefinitions(game:filters:after:)();
}

uint64_t sub_1D8497464()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596930);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84974F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8497618, 0, 0);
}

uint64_t sub_1D8497618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596930);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_340_0(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_181();
  sub_1D84748E4();
  sub_1D8474994();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CE8, &qword_1D8590C88);
  sub_1D84755F8();
  sub_1D8475754();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_345_0();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v29)
  {
    OUTLINED_FUNCTION_453();
    v30 = OUTLINED_FUNCTION_49_0();
    v31(v30);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v32 = v13[11];
  sub_1D8581028();
  v33 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v33);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v34, v35, v36);
  OUTLINED_FUNCTION_98();
  v13[2] = v37;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
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

uint64_t sub_1D84979A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 104);
  is_remote = swift_distributed_actor_is_remote();
  v18 = *(v15 + 104);
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

    v35 = OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_341_0(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181();
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CE8, &qword_1D8590C88);
    sub_1D84755F8();
    sub_1D8475754();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_345_0();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_452();
      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v48 = *(v15 + 128);
    sub_1D8581028();
    v49 = swift_task_alloc();
    v50 = OUTLINED_FUNCTION_90_0(v49);
    *v50 = v51;
    OUTLINED_FUNCTION_294(v50);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_25_0() + 152);
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

uint64_t sub_1D8497C88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedGameKitServiceProtocol<>.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_1D8497E18()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8596928);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);
  v5 = OUTLINED_FUNCTION_166();

  return v7(v5);
}

uint64_t sub_1D8497EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D8581018();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8498048, 0, 0);
}

uint64_t sub_1D8498048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[11];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[11];
    v13[21] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_273_0();
      v40 = v13[14];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    v29 = v13[20];
    v30 = v13[9];
    v13[5] = v13[8];
    v13[6] = v30;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_2_2(&qword_1ECA389F8);
    OUTLINED_FUNCTION_2(&qword_1ECA389C0);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    v33 = v13[17];
    OUTLINED_FUNCTION_314_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EC0, &qword_1D8590D90);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1();
    sub_1D8477D80();
    sub_1D8477EDC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      OUTLINED_FUNCTION_521();
      v36 = OUTLINED_FUNCTION_52();
      v37(v36);
      v38 = OUTLINED_FUNCTION_51_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v49 = v13[14];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    v13[23] = v50;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v51, v52, v53);
    OUTLINED_FUNCTION_81();
    *v50 = v54;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596928);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_322_0(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_403(v17);
    OUTLINED_FUNCTION_207_0(v19);
    OUTLINED_FUNCTION_240();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8498350()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8498448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  v14 = v12[20];
  v13 = v12[21];
  v15 = v12[18];
  v16 = v12[19];
  OUTLINED_FUNCTION_246_0();
  v17 = OUTLINED_FUNCTION_67();
  v18(v17);
  v19 = OUTLINED_FUNCTION_69();
  v20(v19);
  v21 = OUTLINED_FUNCTION_68();
  v22(v21);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_273_0();
  v23 = v12[14];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_1D849850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  v14 = v12[20];
  v13 = v12[21];
  v15 = v12[18];
  v16 = v12[19];
  OUTLINED_FUNCTION_246_0();
  v17 = OUTLINED_FUNCTION_67();
  v18(v17);
  v19 = OUTLINED_FUNCTION_69();
  v20(v19);
  v21 = OUTLINED_FUNCTION_68();
  v22(v21);
  OUTLINED_FUNCTION_331();

  v23 = v12[24];
  v24 = v12[20];
  v25 = v12[17];
  v26 = v12[14];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshChallenges(player:filters:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_467(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_29(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v1[20] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[21] = v12;
  v14 = *(v13 + 64);
  v1[22] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[23] = v15;
  OUTLINED_FUNCTION_39(v15);
  v1[24] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_332();
  v20 = *v0;
  v21 = v0[1];
  v1[25] = v19;
  v1[26] = v20;
  v1[27] = v21;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8498728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v16 = v15[16];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_188_0();
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v15[28] = v15[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_457();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    v35 = v15[27];
    v36 = v15[25];
    v15[7] = v15[26];
    v15[8] = v35;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_2_2(&qword_1ECA389F8);
    OUTLINED_FUNCTION_2(&qword_1ECA389C0);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    v39 = v15[22];
    v15[11] = v15[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EC0, &qword_1D8590D90);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_51_1();
    sub_1D8477D80();
    sub_1D8477EDC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_520();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v54 = v15[19];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v55 = swift_task_alloc();
    v15[29] = v55;
    *v55 = v15;
    OUTLINED_FUNCTION_295_0(v55);
    OUTLINED_FUNCTION_53(v56);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v57, v58, v59, v60, v61, v62, v63);
  }

  else
  {
    v17 = v15[15];
    OUTLINED_FUNCTION_270_0(v15[16]);
    v18 = v15[26];
    v19 = *(OUTLINED_FUNCTION_38(v15[27]) + 160);
    OUTLINED_FUNCTION_54();
    v65 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v15[31] = v23;
    *v23 = v15;
    v23[1] = sub_1D8453054;
    v24 = v15[12];
    v25 = v15[13];
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_239();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v65, a12, a13, a14);
  }
}

uint64_t sub_1D8498A98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v21 = a4;
  v11 = a2[1];
  v5[5] = v11;
  v12 = *(v11 - 8);
  v5[6] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[7] = v14;
  sub_1D8580F88();
  v15 = *v14;
  v16 = *v21;
  v17 = *a5;
  v18 = a5[1];
  v19 = swift_task_alloc();
  v5[8] = v19;
  *v19 = v5;
  v19[1] = sub_1D848228C;

  return DistributedGameKitServiceProtocol<>.refreshChallenges(player:filters:)();
}

uint64_t sub_1D8498CD4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_24(&unk_1D8596920);
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_107(v7);

  return v10(v9);
}

uint64_t sub_1D8498D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v7[23] = v14;
  v15 = *(v14 - 8);
  v7[24] = v15;
  v16 = *(v15 + 64) + 15;
  v7[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v7[26] = v17;
  v18 = *(v17 - 8);
  v7[27] = v18;
  v19 = *(v18 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8498F80, 0, 0);
}

uint64_t DistributedGameKitServiceProtocol<>.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v11 = *(v10 + 64);
  v0[24] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[26] = v13;
  v15 = *(v14 + 64);
  v0[27] = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v0[28] = v16;
  OUTLINED_FUNCTION_39(v16);
  v0[29] = v17;
  v19 = *(v18 + 64);
  v0[30] = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[31] = v20;
  OUTLINED_FUNCTION_39(v20);
  v0[32] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v24);
  v25 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_344_0(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_198();
  v6 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D84998EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v20[1] = sub_1D84A7CA8;

  return DistributedGameKitServiceProtocol<>.listChallenges(player:filters:after:)();
}

uint64_t sub_1D8499C08()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8596918);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D8499C94(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8499DBC, 0, 0);
}

uint64_t sub_1D8499DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8596918);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_34_0();
  sub_1D8475A40();
  sub_1D8475AF0();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D48, &unk_1D8596270);
  sub_1D8475BA0();
  sub_1D8475CFC();
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
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v33, v34, v35);
  OUTLINED_FUNCTION_98();
  v13[2] = v36;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v37);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeChallenges(challenges:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
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

uint64_t sub_1D849A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 104);
  is_remote = swift_distributed_actor_is_remote();
  v18 = *(v15 + 104);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D48, &unk_1D8596270);
    sub_1D8475BA0();
    sub_1D8475CFC();
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

    v47 = *(v15 + 128);
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
    v19 = *(OUTLINED_FUNCTION_25_0() + 176);
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

uint64_t sub_1D849A3F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedGameKitServiceProtocol<>.describeChallenges(challenges:)();
}

uint64_t sub_1D849A584()
{
  OUTLINED_FUNCTION_475();
  v15 = v1;
  OUTLINED_FUNCTION_204();
  v2 = *v0;
  v4 = *v3;
  v5 = v3[1];
  OUTLINED_FUNCTION_259_0(&unk_1D8596910);
  v14 = v6;
  v8 = *v7;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_176(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_64(v10);

  return v14(v12, v5, v8);
}

uint64_t sub_1D849A62C(uint64_t a1, uint64_t a2, char a3)
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

  return MEMORY[0x1EEE6DFA0](sub_1D849A7C4, 0, 0);
}

uint64_t sub_1D849A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = *(v13 + 72);
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v13 + 72);
    *(v13 + 152) = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_231_0();
      v41 = *(v13 + 96);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    v30 = *(v13 + 144);
    v31 = *(v13 + 64);
    *(v13 + 40) = *(v13 + 56);
    *(v13 + 48) = v31;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    v34 = *(v13 + 120);
    *(v13 + 184) = *(v13 + 185);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_238_0();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v50 = *(v13 + 96);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v51 = swift_task_alloc();
    *(v13 + 168) = v51;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v52, v53, v54);
    OUTLINED_FUNCTION_81();
    *v51 = v55;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596910);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_275_0(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_197_0(v17);
    v19 = *(v13 + 185);
    OUTLINED_FUNCTION_207_0(v20);
    OUTLINED_FUNCTION_240();

    return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t sub_1D849AABC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = v0[20];
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

uint64_t sub_1D849ABF0()
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

uint64_t sub_1D849ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_231_0();
  v19 = *(v12 + 96);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D849ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[22];
  v20 = v12[18];
  v21 = v12[15];
  v22 = v12[12];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshGameActivity(game:scope:)()
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
  v24 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D849AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 112);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 112);
    v17 = *(v14 + 88);
    v18 = *(*(v14 + 96) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 208) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
    }

    v37 = *(v14 + 200);
    v38 = *(v14 + 184);
    *(v14 + 56) = *(v14 + 192);
    *(v14 + 64) = v37;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    v41 = *(v14 + 160);
    *(v14 + 249) = *(v14 + 250);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      OUTLINED_FUNCTION_527();
      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v56 = *(v14 + 136);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v57 = swift_task_alloc();
    *(v14 + 216) = v57;
    *v57 = v14;
    OUTLINED_FUNCTION_145_0(v57);
    OUTLINED_FUNCTION_53(v58);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v59, v60, v61, v62, v63, v64, v65);
  }

  else
  {
    v20 = *(v14 + 192);
    v19 = *(v14 + 200);
    v21 = *(v14 + 104);
    *(v14 + 72) = *(v14 + 112);
    *(v14 + 40) = v20;
    LOBYTE(v20) = *(v14 + 250);
    *(v14 + 48) = v19;
    *(v14 + 248) = v20;
    v22 = *(*(v21 + 16) + 184);
    OUTLINED_FUNCTION_54();
    v67 = v23 + *v23;
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    *(v14 + 232) = v26;
    *v26 = v14;
    v26[1] = sub_1D849B50C;
    v27 = *(v14 + 88);
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_239();

    return v32(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v67, a12, a13, a14);
  }
}

uint64_t sub_1D849B35C()
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

uint64_t sub_1D849B454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_323();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D849B50C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_300_0();

    OUTLINED_FUNCTION_57();

    return v12();
  }
}

uint64_t sub_1D849B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 224);
  OUTLINED_FUNCTION_158_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D849B6F0()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 240);
  OUTLINED_FUNCTION_158_0();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D849B764(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v17[1] = sub_1D848228C;

  return DistributedGameKitServiceProtocol<>.refreshGameActivity(game:scope:)();
}

uint64_t sub_1D849B99C()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_24(&unk_1D8596908);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_64(v6);

  return v10(v8, v4);
}

uint64_t sub_1D849BA38(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x1EEE6DFA0](sub_1D849BB64, 0, 0);
}

uint64_t sub_1D849BB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[9];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[9];
    v13[16] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      v38 = v13[15];
      v39 = v13[12];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }

    v27 = v13[15];
    v28 = v13[8];
    v13[5] = v13[7];
    v13[6] = v28;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v32)
    {
      v34 = v13[14];
      v33 = v13[15];
      v35 = v13[13];

      v36 = OUTLINED_FUNCTION_49_0();
      v37(v36);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v48 = v13[12];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v49 = swift_task_alloc();
    v13[18] = v49;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v50, v51, v52);
    OUTLINED_FUNCTION_81();
    *v49 = v53;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v54, v55, v56, v57, v58, v59, v60);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8596908);
    v16 = swift_task_alloc();
    v13[17] = v16;
    *v16 = v13;
    OUTLINED_FUNCTION_197_0(v16);
    OUTLINED_FUNCTION_121_0(v17);
    OUTLINED_FUNCTION_240();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D849BE00()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = *(v0 + 136);
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 120);
  v7 = *(v0 + 96);

  OUTLINED_FUNCTION_137();

  return v8();
}

uint64_t sub_1D849BF18()
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

uint64_t sub_1D849C010()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_332_0();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 120);
  v6 = *(v0 + 96);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D849C0B4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_332_0();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[12];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t DistributedGameKitServiceProtocol<>.refreshGameActivity(game:)()
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
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D849C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = v14[14];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[14];
    v17 = v14[11];
    v18 = *(v14[12] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[23] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_273_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[22];
    v37 = v14[20];
    v14[7] = v14[21];
    v14[8] = v36;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_288_0();
      v42 = OUTLINED_FUNCTION_49_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v52 = v14[17];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    v14[24] = v53;
    *v53 = v14;
    OUTLINED_FUNCTION_145_0(v53);
    OUTLINED_FUNCTION_53(v54);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    v19 = v14[13];
    OUTLINED_FUNCTION_270_0(v14[14]);
    v20 = v14[21];
    v21 = *(OUTLINED_FUNCTION_38(v14[22]) + 192);
    OUTLINED_FUNCTION_54();
    v63 = v22 + *v22;
    v24 = *(v23 + 4);
    v25 = swift_task_alloc();
    v14[26] = v25;
    *v25 = v14;
    v25[1] = sub_1D849C6F4;
    v26 = v14[11];
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_239();

    return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v63, a12, a13, a14);
  }
}

uint64_t sub_1D849C55C()
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

uint64_t sub_1D849C654()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_335();
  v0 = OUTLINED_FUNCTION_77();
  v1(v0);
  v2 = OUTLINED_FUNCTION_80();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_273_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D849C6F4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
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
    v12 = v3[20];
    v13 = v3[17];

    OUTLINED_FUNCTION_57();

    return v14();
  }
}

uint64_t sub_1D849C81C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_335();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[25];
  v6 = v0[20];
  v7 = v0[17];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D849C8C4()
{
  OUTLINED_FUNCTION_148();
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[17];

  OUTLINED_FUNCTION_146();

  return v4();
}

uint64_t sub_1D849C92C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedGameKitServiceProtocol<>.refreshGameActivity(game:)();
}

uint64_t sub_1D849CAB4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_24(&unk_1D8596900);
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_97(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_107(v7);

  return v10(v9);
}

uint64_t sub_1D849CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x1EEE6DFA0](sub_1D849CD60, 0, 0);
}

uint64_t sub_1D849D118()
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

uint64_t DistributedGameKitServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v11 = *(v10 + 64);
  v0[24] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[26] = v13;
  v15 = *(v14 + 64);
  v0[27] = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  v0[28] = v16;
  OUTLINED_FUNCTION_39(v16);
  v0[29] = v17;
  v19 = *(v18 + 64);
  v0[30] = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v0[31] = v20;
  OUTLINED_FUNCTION_39(v20);
  v0[32] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v24);
  v25 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_344_0(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_198();
  v6 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D849D88C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v20[1] = sub_1D849DBA8;

  return DistributedGameKitServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_1D849DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  v18 = v17[11];
  v19 = v17[10];
  v43 = v17[9];
  OUTLINED_FUNCTION_193();
  v21 = *(v20 + 64);
  v23 = *(v22 + 56);
  v42 = *(v22 + 48);
  OUTLINED_FUNCTION_193();
  v25 = *(v24 + 40);
  v27 = v26[4];
  v28 = v26[3];
  v29 = v26[2];
  OUTLINED_FUNCTION_171_0();
  v31 = v30;
  OUTLINED_FUNCTION_37();
  *v32 = v31;

  (*(v28 + 8))(v27, v29);
  (*(v42 + 8))(v23, v25);
  (*(v43 + 8))(v19, v21);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_428();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v21 - 8, v43, v16, a14, a15, a16);
}

unint64_t sub_1D849DDF4()
{
  result = qword_1ECA397F0;
  if (!qword_1ECA397F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA397E8, &unk_1D859A110);
    sub_1D849DE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397F0);
  }

  return result;
}

unint64_t sub_1D849DE78()
{
  result = qword_1ECA397F8;
  if (!qword_1ECA397F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39800, &qword_1D85962C0);
    sub_1D849DEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA397F8);
  }

  return result;
}

unint64_t sub_1D849DEFC()
{
  result = qword_1ECA39808;
  if (!qword_1ECA39808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39808);
  }

  return result;
}

unint64_t sub_1D849DF50()
{
  result = qword_1ECA39810;
  if (!qword_1ECA39810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA397E8, &unk_1D859A110);
    sub_1D849DFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39810);
  }

  return result;
}

unint64_t sub_1D849DFD4()
{
  result = qword_1ECA39818;
  if (!qword_1ECA39818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39800, &qword_1D85962C0);
    sub_1D849E058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39818);
  }

  return result;
}

unint64_t sub_1D849E058()
{
  result = qword_1ECA39820;
  if (!qword_1ECA39820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39820);
  }

  return result;
}

uint64_t sub_1D849E0AC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85968F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D849E138(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D849E260, 0, 0);
}

uint64_t sub_1D849E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85968F8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_340_0(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_219_0(23);
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
  OUTLINED_FUNCTION_345_0();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v29)
  {
    OUTLINED_FUNCTION_453();
    v30 = OUTLINED_FUNCTION_49_0();
    v31(v30);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_258_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v32 = v13[11];
  sub_1D8581028();
  v33 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v33);
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v34, v35, v36);
  OUTLINED_FUNCTION_98();
  v13[2] = v37;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameKitServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)()
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

uint64_t sub_1D849E600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 104);
  is_remote = swift_distributed_actor_is_remote();
  v18 = *(v15 + 104);
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

    v35 = OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_341_0(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_219_0(23);
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
    OUTLINED_FUNCTION_345_0();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_452();
      v38 = OUTLINED_FUNCTION_49_0();
      v39(v38);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v48 = *(v15 + 128);
    sub_1D8581028();
    v49 = swift_task_alloc();
    v50 = OUTLINED_FUNCTION_90_0(v49);
    *v50 = v51;
    OUTLINED_FUNCTION_294(v50);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_25_0() + 208);
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

uint64_t sub_1D849E8F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedGameKitServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

unint64_t sub_1D849EA88()
{
  result = qword_1ECA39850;
  if (!qword_1ECA39850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39848, &qword_1D85962E8);
    sub_1D844A16C(&qword_1ECA39858, &qword_1ECA39860, &qword_1D85962F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39850);
  }

  return result;
}

unint64_t sub_1D849EB38()
{
  result = qword_1ECA39868;
  if (!qword_1ECA39868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39848, &qword_1D85962E8);
    sub_1D844A16C(&qword_1ECA39870, &qword_1ECA39860, &qword_1D85962F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39868);
  }

  return result;
}

unint64_t sub_1D849EBE8()
{
  result = qword_1ECA39880;
  if (!qword_1ECA39880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39880);
  }

  return result;
}

unint64_t sub_1D849EC6C()
{
  result = qword_1ECA39888;
  if (!qword_1ECA39888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39890, &qword_1D8596300);
    sub_1D84A6058(&qword_1ECA39898, 255, type metadata accessor for GameActivityDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39888);
  }

  return result;
}

unint64_t sub_1D849ED24()
{
  result = qword_1ECA398A0;
  if (!qword_1ECA398A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398A0);
  }

  return result;
}

unint64_t sub_1D849EDA8()
{
  result = qword_1ECA398A8;
  if (!qword_1ECA398A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39890, &qword_1D8596300);
    sub_1D84A6058(&qword_1ECA398B0, 255, type metadata accessor for GameActivityDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398A8);
  }

  return result;
}

uint64_t sub_1D849EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v13 = *v12;
  v15 = *v14;
  v16 = v14[1];
  OUTLINED_FUNCTION_31_0(&unk_1D85968F0);
  v18 = *v17;
  v19 = v17[1];
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_97(v20);
  *v21 = v22;
  v21[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_207();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D849EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[17] = a7;
  v8[18] = v7;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = sub_1D8581018();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v8[22] = v12;
  v13 = *(v12 - 8);
  v8[23] = v13;
  v14 = *(v13 + 64) + 15;
  v8[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398B8, &qword_1D8596318);
  v8[25] = v15;
  v16 = *(v15 - 8);
  v8[26] = v16;
  v17 = *(v16 + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v8[29] = v18;
  v19 = *(v18 - 8);
  v8[30] = v19;
  v20 = *(v19 + 64) + 15;
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D849F138, 0, 0);
}

uint64_t sub_1D849F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[18];
  if (swift_distributed_actor_is_remote())
  {
    v17 = v15[18];
    v15[32] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v58 = v15[31];
      v59 = v15[27];
      v60 = v15[28];
      v61 = v15[24];
      v62 = v15[21];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
    }

    v39 = v15[31];
    v40 = v15[13];
    v15[5] = v15[12];
    v15[6] = v40;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v41, v42);
    v43 = v15[28];
    v15[9] = v15[14];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398C0, &qword_1D8596320);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_290_0();
    sub_1D84A0D94();
    sub_1D84A0EF0();
    OUTLINED_FUNCTION_150_0();
    v44 = v15[27];
    v15[10] = v15[15];

    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_150_0();
    v45 = v15[24];
    v46 = v15[17];
    v15[7] = v15[16];
    v15[8] = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_252();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    OUTLINED_FUNCTION_269_0();
    OUTLINED_FUNCTION_16_0(&qword_1ECA39908);
    OUTLINED_FUNCTION_15_0(&qword_1ECA39910);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      v49 = v15[30];
      a10 = v15[29];
      a11 = v15[31];
      a9 = v15[28];
      v50 = v15[26];
      v51 = v15[27];
      v53 = v15[24];
      v52 = v15[25];
      v55 = v15[22];
      v54 = v15[23];

      (*(v54 + 8))(v53, v55);
      v56 = *(v50 + 8);
      v57 = OUTLINED_FUNCTION_258();
      v56(v57);
      (v56)(a9, v52);
      (*(v49 + 8))(a11, a10);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v71 = v15[21];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v72 = swift_task_alloc();
    v15[34] = v72;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v73, v74, v75);
    OUTLINED_FUNCTION_217();
    *v72 = v76;
    v72[1] = sub_1D849F7A0;
    v77 = v15[21];
    v78 = v15[18];
    v79 = v15[11];
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85968F0);
    v81 = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v15[33] = v19;
    *v19 = v20;
    v19[1] = sub_1D849F634;
    v21 = v15[17];
    v22 = v15[18];
    v23 = v15[15];
    v24 = v15[16];
    v25 = v15[13];
    v26 = v15[14];
    v27 = v15[11];
    v28 = v15[12];
    OUTLINED_FUNCTION_169();

    return v36(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, v81, a12, a13, a14);
  }
}

uint64_t sub_1D849F634()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v2 = v0[33];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 248);
  v7 = v0[28];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_511();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1D849F7A0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameKitServiceProtocol<>.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 176) = v6;
  *(v1 + 184) = v0;
  *(v1 + 160) = v7;
  *(v1 + 168) = v8;
  *(v1 + 144) = v9;
  *(v1 + 152) = v10;
  *(v1 + 136) = v11;
  v12 = sub_1D8581018();
  *(v1 + 192) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 200) = v13;
  v15 = *(v14 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 216) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 224) = v17;
  v19 = *(v18 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398B8, &qword_1D8596318);
  *(v1 + 240) = v20;
  OUTLINED_FUNCTION_39(v20);
  *(v1 + 248) = v21;
  v23 = *(v22 + 64) + 15;
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 272) = v24;
  OUTLINED_FUNCTION_39(v24);
  *(v1 + 280) = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_332();
  v29 = *v5;
  v30 = v5[1];
  *(v1 + 288) = v28;
  *(v1 + 296) = v29;
  *(v1 + 304) = v30;
  *(v1 + 312) = *v3;
  v31 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D849FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 184);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 184);
    v17 = *(v14 + 160);
    v18 = *(*(v14 + 168) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 328) = *(v14 + 112);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v61 = *(v14 + 288);
      v62 = *(v14 + 256);
      v63 = *(v14 + 264);
      v64 = *(v14 + 232);
      v65 = *(v14 + 208);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
    }

    v42 = *(v14 + 304);
    v43 = *(v14 + 288);
    *(v14 + 72) = *(v14 + 296);
    *(v14 + 80) = v42;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_2(&qword_1ECA38BB0);
    OUTLINED_FUNCTION_2(&qword_1ECA38B40);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
    v46 = *(v14 + 264);
    *(v14 + 120) = *(v14 + 144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398C0, &qword_1D8596320);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_290_0();
    sub_1D84A0D94();
    sub_1D84A0EF0();
    OUTLINED_FUNCTION_150_0();
    v47 = *(v14 + 256);
    *(v14 + 128) = *(v14 + 152);

    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_150_0();
    v48 = *(v14 + 320);
    v49 = *(v14 + 232);
    *(v14 + 88) = *(v14 + 312);
    *(v14 + 96) = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v50);
    OUTLINED_FUNCTION_269_0();
    OUTLINED_FUNCTION_16_0(&qword_1ECA39908);
    OUTLINED_FUNCTION_15_0(&qword_1ECA39910);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v51)
    {
      v52 = *(v14 + 280);
      a10 = *(v14 + 272);
      a11 = *(v14 + 288);
      a9 = *(v14 + 264);
      v53 = *(v14 + 248);
      v54 = *(v14 + 256);
      v56 = *(v14 + 232);
      v55 = *(v14 + 240);
      v58 = *(v14 + 216);
      v57 = *(v14 + 224);

      (*(v57 + 8))(v56, v58);
      v59 = *(v53 + 8);
      v60 = OUTLINED_FUNCTION_258();
      v59(v60);
      (v59)(a9, v55);
      (*(v52 + 8))(a11, a10);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v74 = *(v14 + 208);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 336) = v75;
    *v75 = v76;
    v75[1] = sub_1D84A01E8;
    v77 = *(v14 + 208);
    v78 = *(v14 + 184);
    v79 = *(v14 + 160);
    v80 = *(v14 + 136);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v20 = *(v14 + 296);
    v19 = *(v14 + 304);
    v21 = *(v14 + 176);
    *(v14 + 104) = *(v14 + 184);
    *(v14 + 40) = v20;
    *(v14 + 48) = v19;
    *(v14 + 56) = *(v14 + 312);
    v22 = *(*(v21 + 16) + 216);
    OUTLINED_FUNCTION_54();
    v82 = v23 + *v23;
    v25 = *(v24 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 352) = v26;
    *v26 = v27;
    v26[1] = sub_1D84A03D4;
    v28 = *(v14 + 152);
    v29 = *(v14 + 160);
    v30 = *(v14 + 136);
    v31 = *(v14 + 144);
    OUTLINED_FUNCTION_169();

    return v39(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, v82, a12, a13, a14);
  }
}

uint64_t sub_1D84A01E8()
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

uint64_t sub_1D84A03D4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[45] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[36];
    v14 = v3[32];
    v13 = v3[33];
    v15 = v3[29];
    v16 = v3[26];

    OUTLINED_FUNCTION_57();

    return v17();
  }
}

uint64_t sub_1D84A0610()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 360);
  OUTLINED_FUNCTION_327_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D84A0690(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a2;
  v5[2] = *a2;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v29 = a4;
  v10 = a2[1];
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[7] = v13;
  sub_1D8580F88();
  v14 = *v13;
  v15 = a2[2];
  v5[8] = v15;
  v16 = *(v15 - 8);
  v5[9] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v5[10] = v18;
  v28 = v18;
  sub_1D8580F88();
  v27 = *v28;
  v19 = a2[3];
  v5[11] = v19;
  v20 = *(v19 - 8);
  v5[12] = v20;
  v21 = *(v20 + 64) + 15;
  v5[13] = swift_task_alloc();
  sub_1D8580F88();
  v22 = *v29;
  v23 = *a5;
  v24 = a5[1];
  v25 = swift_task_alloc();
  v5[14] = v25;
  *v25 = v5;
  v25[1] = sub_1D84A0AB0;

  return DistributedGameKitServiceProtocol<>.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_1D84A0AB0()
{
  OUTLINED_FUNCTION_153();
  v1 = *(v0 + 112);
  v27 = *(v0 + 104);
  OUTLINED_FUNCTION_193();
  v26 = *(v2 + 96);
  OUTLINED_FUNCTION_193();
  v4 = *(v3 + 88);
  v25 = *(v5 + 80);
  OUTLINED_FUNCTION_193();
  v24 = *(v6 + 72);
  OUTLINED_FUNCTION_193();
  v8 = *(v7 + 64);
  v23 = *(v9 + 56);
  OUTLINED_FUNCTION_193();
  v22 = *(v10 + 48);
  OUTLINED_FUNCTION_193();
  v12 = *(v11 + 40);
  v14 = v13[4];
  v15 = v13[3];
  v16 = v13[2];
  OUTLINED_FUNCTION_171_0();
  v18 = v17;
  OUTLINED_FUNCTION_37();
  *v19 = v18;

  (*(v15 + 8))(v14, v16);
  (*(v22 + 8))(v23, v12);
  (*(v24 + 8))(v25, v8);
  (*(v26 + 8))(v27, v4);

  OUTLINED_FUNCTION_317_0();

  return v20();
}

unint64_t sub_1D84A0D94()
{
  result = qword_1ECA398C8;
  if (!qword_1ECA398C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA398C0, &qword_1D8596320);
    sub_1D84A0E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398C8);
  }

  return result;
}

unint64_t sub_1D84A0E18()
{
  result = qword_1ECA398D0;
  if (!qword_1ECA398D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA398D8, &qword_1D8596328);
    sub_1D84A0E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398D0);
  }

  return result;
}

unint64_t sub_1D84A0E9C()
{
  result = qword_1ECA398E0;
  if (!qword_1ECA398E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398E0);
  }

  return result;
}

unint64_t sub_1D84A0EF0()
{
  result = qword_1ECA398E8;
  if (!qword_1ECA398E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA398C0, &qword_1D8596320);
    sub_1D84A0F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398E8);
  }

  return result;
}

unint64_t sub_1D84A0F74()
{
  result = qword_1ECA398F0;
  if (!qword_1ECA398F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA398D8, &qword_1D8596328);
    sub_1D84A0FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398F0);
  }

  return result;
}

unint64_t sub_1D84A0FF8()
{
  result = qword_1ECA398F8;
  if (!qword_1ECA398F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA398F8);
  }

  return result;
}

uint64_t sub_1D84A104C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85968E8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84A10D8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39918, &qword_1D8596348);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84A1200, 0, 0);
}

uint64_t sub_1D84A1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85968E8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_27_0(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_69_0();
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39920, &qword_1D8596350);
  OUTLINED_FUNCTION_280_0();
  OUTLINED_FUNCTION_34_0();
  sub_1D84A214C();
  sub_1D84A21FC();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39950, &qword_1D8596360);
  sub_1D84A22AC();
  sub_1D84A23E8();
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
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v33, v34, v35);
  OUTLINED_FUNCTION_98();
  v13[2] = v36;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v37);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84A1480()
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

uint64_t sub_1D84A1578()
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

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D84A1620()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[11];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t DistributedGameKitServiceProtocol<>.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39918, &qword_1D8596348);
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

uint64_t sub_1D84A17B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 104);
  is_remote = swift_distributed_actor_is_remote();
  v18 = *(v15 + 104);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39920, &qword_1D8596350);
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_34_0();
    sub_1D84A214C();
    sub_1D84A21FC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39950, &qword_1D8596360);
    sub_1D84A22AC();
    sub_1D84A23E8();
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

    v47 = *(v15 + 128);
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
    v19 = *(OUTLINED_FUNCTION_25_0() + 224);
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

uint64_t sub_1D84A1A80()
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

uint64_t sub_1D84A1B78()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 64);
  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D84A1C1C()
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
    OUTLINED_FUNCTION_255();

    v12 = OUTLINED_FUNCTION_56_0();

    return v13(v12);
  }
}

uint64_t sub_1D84A1D48()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 176);
  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D84A1DEC()
{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_243_0();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D84A1E50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedGameKitServiceProtocol<>.describeGameActivities(activities:)();
}

uint64_t sub_1D84A1FE0()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_171_0();
  *v6 = v7;
  OUTLINED_FUNCTION_476(v8, v9);
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_188();
  v12(v11);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t sub_1D84A214C()
{
  result = qword_1ECA39928;
  if (!qword_1ECA39928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39920, &qword_1D8596350);
    sub_1D844A16C(&qword_1ECA39930, &qword_1ECA39938, &qword_1D8596358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39928);
  }

  return result;
}

unint64_t sub_1D84A21FC()
{
  result = qword_1ECA39940;
  if (!qword_1ECA39940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39920, &qword_1D8596350);
    sub_1D844A16C(&qword_1ECA39948, &qword_1ECA39938, &qword_1D8596358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39940);
  }

  return result;
}

unint64_t sub_1D84A22AC()
{
  result = qword_1ECA39958;
  if (!qword_1ECA39958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39950, &qword_1D8596360);
    sub_1D84A2330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39958);
  }

  return result;
}

unint64_t sub_1D84A2330()
{
  result = qword_1ECA39960;
  if (!qword_1ECA39960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39968, &qword_1D8596368);
    sub_1D84A6058(&qword_1ECA39970, 255, type metadata accessor for GameActivityInstance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39960);
  }

  return result;
}

unint64_t sub_1D84A23E8()
{
  result = qword_1ECA39978;
  if (!qword_1ECA39978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39950, &qword_1D8596360);
    sub_1D84A246C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39978);
  }

  return result;
}

unint64_t sub_1D84A246C()
{
  result = qword_1ECA39980;
  if (!qword_1ECA39980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39968, &qword_1D8596368);
    sub_1D84A6058(&qword_1ECA39988, 255, type metadata accessor for GameActivityInstance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39980);
  }

  return result;
}

uint64_t sub_1D84A2524()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_259_0(&unk_1D85968E0);
  v8 = v0;
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_64(v4);

  return v8(v6, v2);
}

uint64_t sub_1D84A25C4(uint64_t a1, char a2)
{
  *(v3 + 177) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = sub_1D8581018();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39990, &qword_1D8596380);
  *(v3 + 80) = v7;
  v8 = *(v7 - 8);
  *(v3 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v10 = type metadata accessor for GameActivityInstance(0);
  *(v3 + 104) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  *(v3 + 120) = v12;
  v13 = *(v12 - 8);
  *(v3 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84A2788, 0, 0);
}

uint64_t sub_1D84A2788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = *(v13 + 48);
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v13 + 48);
    *(v13 + 144) = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v44 = *(v13 + 136);
      v45 = *(v13 + 112);
      v46 = *(v13 + 96);
      v47 = *(v13 + 72);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    v28 = *(v13 + 136);
    v29 = *(v13 + 104);
    sub_1D84A3A34(*(v13 + 40), *(v13 + 112));
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_233_0(v30);
    OUTLINED_FUNCTION_61_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31();
    v31 = *(v13 + 96);
    *(v13 + 176) = *(v13 + 177);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_51_1();
    sub_1D84A3A98();
    sub_1D84A3AEC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {
      v35 = *(v13 + 128);
      v34 = *(v13 + 136);
      v36 = *(v13 + 120);
      v38 = *(v13 + 88);
      v37 = *(v13 + 96);
      v39 = *(v13 + 80);

      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v56 = *(v13 + 72);
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_343_0();
    v57 = swift_task_alloc();
    *(v13 + 160) = v57;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v58, v59, v60);
    OUTLINED_FUNCTION_81();
    *v57 = v61;
    v57[1] = sub_1D84A2BFC;
    v62 = *(v13 + 72);
    v63 = *(v13 + 48);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v64, v65, v66, v67, v68, v69, v70);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85968E0);
    v16 = swift_task_alloc();
    *(v13 + 152) = v16;
    *v16 = v13;
    v16[1] = sub_1D84A2AAC;
    v17 = *(v13 + 48);
    v18 = *(v13 + 177);
    OUTLINED_FUNCTION_121_0(*(v13 + 40));
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84A2AAC()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v2 = v0[19];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 136);
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[9];

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_535();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D84A2BFC()
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

uint64_t sub_1D84A2CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_306_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[17];
  v20 = v12[14];
  v21 = v12[12];
  v22 = v12[9];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D84A2DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_306_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[21];
  v20 = v12[17];
  v21 = v12[14];
  v22 = v12[12];
  v23 = v12[9];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 56) = v7;
  v8 = sub_1D8581018();
  *(v1 + 96) = v8;
  OUTLINED_FUNCTION_39(v8);
  *(v1 + 104) = v9;
  v11 = *(v10 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39990, &qword_1D8596380);
  *(v1 + 120) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 128) = v13;
  v15 = *(v14 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v16 = type metadata accessor for GameActivityInstance(0);
  *(v1 + 144) = v16;
  v17 = *(*(v16 - 8) + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  *(v1 + 160) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 168) = v19;
  v21 = *(v20 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  *(v1 + 226) = *v3;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84A3020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 88);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 88);
    v17 = *(v14 + 64);
    OUTLINED_FUNCTION_83_0(*(v14 + 72));
    *(v14 + 184) = *(v14 + 48);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v51 = *(v14 + 176);
      v52 = *(v14 + 152);
      v53 = *(v14 + 136);
      v54 = *(v14 + 112);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
    }

    v35 = *(v14 + 176);
    v36 = *(v14 + 144);
    sub_1D84A3A34(*(v14 + 56), *(v14 + 152));
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_233_0(v37);
    OUTLINED_FUNCTION_61_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31();
    v38 = *(v14 + 136);
    *(v14 + 225) = *(v14 + 226);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_51_1();
    sub_1D84A3A98();
    sub_1D84A3AEC();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {
      v42 = *(v14 + 168);
      v41 = *(v14 + 176);
      v43 = *(v14 + 160);
      v45 = *(v14 + 128);
      v44 = *(v14 + 136);
      v46 = *(v14 + 120);

      v47 = OUTLINED_FUNCTION_52();
      v48(v47);
      v49 = OUTLINED_FUNCTION_51_0();
      v50(v49);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v63 = *(v14 + 112);
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_343_0();
    v64 = swift_task_alloc();
    *(v14 + 192) = v64;
    *v64 = v14;
    v64[1] = sub_1D84A33A4;
    v65 = *(v14 + 112);
    v66 = *(v14 + 64);
    OUTLINED_FUNCTION_53(*(v14 + 88));
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v67, v68, v69, v70, v71, v72, v73);
  }

  else
  {
    v18 = *(v14 + 226);
    v19 = *(v14 + 80);
    *(v14 + 40) = *(v14 + 88);
    *(v14 + 224) = v18;
    v20 = *(*(v19 + 16) + 232);
    OUTLINED_FUNCTION_54();
    v75 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    *(v14 + 208) = v24;
    *v24 = v14;
    v24[1] = sub_1D84A3570;
    v25 = *(v14 + 64);
    OUTLINED_FUNCTION_108_0(*(v14 + 56));
    OUTLINED_FUNCTION_239();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v75, a12, a13, a14);
  }
}

uint64_t sub_1D84A33A4()
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

uint64_t sub_1D84A349C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  v14 = v12[22];
  v13 = v12[23];
  v15 = v12[20];
  v16 = v12[21];
  OUTLINED_FUNCTION_246_0();
  v17 = OUTLINED_FUNCTION_67();
  v18(v17);
  v19 = OUTLINED_FUNCTION_69();
  v20(v19);
  v21 = OUTLINED_FUNCTION_68();
  v22(v21);
  OUTLINED_FUNCTION_331();

  v23 = v12[22];
  v24 = v12[19];
  v25 = v12[17];
  v26 = v12[14];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1D84A3570()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
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
    v12 = v3[22];
    v13 = v3[19];
    v14 = v3[17];
    v15 = v3[14];

    OUTLINED_FUNCTION_57();

    return v16();
  }
}

uint64_t sub_1D84A36BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  v14 = v12[22];
  v13 = v12[23];
  v15 = v12[20];
  v16 = v12[21];
  OUTLINED_FUNCTION_246_0();
  v17 = OUTLINED_FUNCTION_67();
  v18(v17);
  v19 = OUTLINED_FUNCTION_69();
  v20(v19);
  v21 = OUTLINED_FUNCTION_68();
  v22(v21);
  OUTLINED_FUNCTION_331();

  v23 = v12[25];
  OUTLINED_FUNCTION_338_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_1D84A3784()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_338_0();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D84A37FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v17[1] = sub_1D847472C;

  return DistributedGameKitServiceProtocol<>.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_1D84A3A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameActivityInstance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D84A3A98()
{
  result = qword_1ECA399A0;
  if (!qword_1ECA399A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399A0);
  }

  return result;
}

unint64_t sub_1D84A3AEC()
{
  result = qword_1ECA399A8;
  if (!qword_1ECA399A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399A8);
  }

  return result;
}

uint64_t sub_1D84A3B40()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85968D8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_104_0(v1);

  return v4(v3);
}

uint64_t sub_1D84A3BD0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1D8581018();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = type metadata accessor for GameActivityInstance(0);
  v3[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84A3D94, 0, 0);
}

uint64_t sub_1D84A3D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[8];
    v13[20] = OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameKitServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();
      v44 = v13[14];
      v45 = v13[11];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
    }

    v28 = v13[19];
    v29 = v13[15];
    sub_1D84A3A34(v13[6], v13[16]);
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_233_0(v30);
    OUTLINED_FUNCTION_61_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31();
    v31 = OUTLINED_FUNCTION_253_0();
    OUTLINED_FUNCTION_340_0(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_219_0(16);
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v32);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {
      v35 = v13[18];
      v34 = v13[19];
      v36 = v13[17];
      v38 = v13[13];
      v37 = v13[14];
      v39 = v13[12];

      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v54 = v13[11];
    sub_1D8581028();
    v55 = swift_task_alloc();
    v13[22] = v55;
    OUTLINED_FUNCTION_0_2();
    sub_1D84A6058(v56, v57, v58);
    OUTLINED_FUNCTION_81();
    *v55 = v59;
    v55[1] = sub_1D84A4228;
    v60 = v13[11];
    v61 = v13[8];
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v62, v63, v64, v65, v66, v67, v68);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85968D8);
    v16 = swift_task_alloc();
    v13[21] = v16;
    *v16 = v13;
    v16[1] = sub_1D84A40D8;
    v17 = v13[7];
    v18 = v13[8];
    OUTLINED_FUNCTION_121_0(v13[6]);
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84A40D8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v2 = v0[21];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 152);
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[11];

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_535();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D84A4228()
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

uint64_t sub_1D84A4320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_297_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_168_0();
  v19 = *(v12 + 112);
  v20 = *(v12 + 88);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1D84A43E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_297_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[23];
  OUTLINED_FUNCTION_243_0();
  v20 = v12[14];
  v21 = v12[11];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t DistributedGameKitServiceProtocol<>.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_148();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = sub_1D8581018();
  v1[14] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[15] = v8;
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  OUTLINED_FUNCTION_29(v11);
  v1[18] = v12;
  v14 = *(v13 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  v15 = type metadata accessor for GameActivityInstance(0);
  v1[20] = v15;
  v16 = *(*(v15 - 8) + 64);
  v1[21] = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v1[22] = v17;
  OUTLINED_FUNCTION_39(v17);
  v1[23] = v18;
  v20 = *(v19 + 64);
  v1[24] = OUTLINED_FUNCTION_332();
  v21 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84A4634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v16 = v15[13];
  is_remote = swift_distributed_actor_is_remote();
  v18 = v15[13];
  if (is_remote)
  {
    OUTLINED_FUNCTION_73();
    v15[25] = v15[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v51 = v15[24];
      v52 = v15[21];
      v53 = v15[19];
      v54 = v15[16];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
    }

    v35 = v15[24];
    v36 = v15[20];
    sub_1D84A3A34(v15[8], v15[21]);
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_233_0(v37);
    OUTLINED_FUNCTION_61_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_31();
    v38 = OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_341_0(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_219_0(16);
    sub_1D8581038();
    sub_1D84769B4();
    sub_1D8476AE8();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {
      v42 = v15[23];
      v41 = v15[24];
      v43 = v15[22];
      v45 = v15[18];
      v44 = v15[19];
      v46 = v15[17];

      v47 = OUTLINED_FUNCTION_52();
      v48(v47);
      v49 = OUTLINED_FUNCTION_51_0();
      v50(v49);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v63 = v15[16];
    sub_1D8581028();
    v64 = swift_task_alloc();
    v15[26] = v64;
    *v64 = v15;
    v64[1] = sub_1D84A49D0;
    v65 = v15[16];
    v66 = v15[10];
    OUTLINED_FUNCTION_53(v15[13]);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v67, v68, v69, v70, v71, v72, v73);
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_25_0() + 240);
    OUTLINED_FUNCTION_54();
    v75 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v15[28] = v23;
    *v23 = v15;
    v23[1] = sub_1D84A4B94;
    v24 = v15[9];
    v25 = v15[10];
    OUTLINED_FUNCTION_65_1(v15[8]);
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_239();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v75, a12, a13, a14);
  }
}

uint64_t sub_1D84A49D0()
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

uint64_t sub_1D84A4AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_296_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[24];
  v20 = v12[21];
  v21 = v12[19];
  v22 = v12[16];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D84A4B94()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
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
    v14 = v3[19];
    v15 = v3[16];

    OUTLINED_FUNCTION_57();

    return v16();
  }
}

uint64_t sub_1D84A4CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_296_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[27];
  OUTLINED_FUNCTION_274_0();
  v20 = v12[19];
  v21 = v12[16];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D84A4DAC()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[29];
  OUTLINED_FUNCTION_274_0();
  v2 = v0[19];
  v3 = v0[16];

  OUTLINED_FUNCTION_146();

  return v4();
}

uint64_t sub_1D84A4E30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v21 = a4;
  v11 = a2[1];
  v5[5] = v11;
  v12 = *(v11 - 8);
  v5[6] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[7] = v14;
  sub_1D8580F88();
  v15 = *v14;
  v16 = *v21;
  v17 = *a5;
  v18 = a5[1];
  v19 = swift_task_alloc();
  v5[8] = v19;
  *v19 = v5;
  v19[1] = sub_1D847472C;

  return DistributedGameKitServiceProtocol<>.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_1D84A506C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v7);
}

uint64_t sub_1D84A50E0()
{
  v1 = *v0;
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v2, v3, v4);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D84A5164@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedGameKitServiceProtocol();
  OUTLINED_FUNCTION_0_2();
  sub_1D84A6058(v3, v4, v5);
  sub_1D843EE3C();
  OUTLINED_FUNCTION_221();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D84A5FA0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  result = sub_1D84A6058(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D84A6058(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeAchievements(achievements:)()
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

uint64_t dispatch thunk of GameKitServiceProtocol.listAchievements(games:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 16);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.getAchievementsProgresses(achievements:player:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 24);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.resetAchievementsProgress(achievements:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 32);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.revealAchievements(achievements:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.submitAchievementsProgress(progress:)()
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

uint64_t dispatch thunk of GameKitServiceProtocol.describeLeaderboards(leaderboards:)()
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

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboardEntries(leaderboards:range:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v19 = *(OUTLINED_FUNCTION_220_1(v12, v13, v14, v15, v16, v17, v18) + 64);
  OUTLINED_FUNCTION_131();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_176(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_191(v24);
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_240();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboardEntries(leaderboards:players:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v18 = *(OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17) + 72);
  OUTLINED_FUNCTION_54();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_176(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_191(v23);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_207();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboards(games:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 80);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.submitLeaderboardEntries(entries:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 88);
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

uint64_t dispatch thunk of GameKitServiceProtocol.describeLeaderboardSets(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 96);
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

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 104);
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

uint64_t dispatch thunk of GameKitServiceProtocol.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 112);
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

uint64_t dispatch thunk of GameKitServiceProtocol.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 120);
  OUTLINED_FUNCTION_131();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_191(v15);

  return v18(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of GameKitServiceProtocol.refreshChallengeDefinitions(game:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 128);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.refreshChallengeDefinitions(challengeDefinitions:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 136);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listChallengeDefinitions(game:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v18 = *(OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17) + 144);
  OUTLINED_FUNCTION_54();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_97(v22);
  *v23 = v24;
  v23[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_207();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 152);
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

uint64_t dispatch thunk of GameKitServiceProtocol.refreshChallenges(player:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 160);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listChallenges(player:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v18 = *(OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17) + 168);
  OUTLINED_FUNCTION_54();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_97(v22);
  *v23 = v24;
  v23[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_207();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeChallenges(challenges:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 176);
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

uint64_t dispatch thunk of GameKitServiceProtocol.refreshGameActivity(game:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 184);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 192);
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

uint64_t dispatch thunk of GameKitServiceProtocol.listGameActivityDefinitions(game:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v18 = *(OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17) + 200);
  OUTLINED_FUNCTION_54();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_97(v22);
  *v23 = v24;
  v23[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_207();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of GameKitServiceProtocol.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 208);
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

uint64_t dispatch thunk of GameKitServiceProtocol.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 224);
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

uint64_t dispatch thunk of GameKitServiceProtocol.createOrUpdateGameActivity(activity:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 232);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of GameKitServiceProtocol.shareGameActivity(activity:receivingPlayers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v14 = *(OUTLINED_FUNCTION_28(v10, v11, v12, v13) + 240);
  OUTLINED_FUNCTION_54();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_13(v19);
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t OUTLINED_FUNCTION_15_0(unint64_t *a1)
{

  return sub_1D844A16C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_16_0(unint64_t *a1)
{

  return sub_1D844A16C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  v2 = *(v1 + 96);
  *(v1 + 40) = v0;
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_61_0(unint64_t *a1)
{

  return sub_1D84A6058(a1, 255, v1);
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_102_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_158_0()
{
  result = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  return result;
}

uint64_t OUTLINED_FUNCTION_174_0()
{
  v2 = v0[19];
  v0[7] = v0[9];
}

uint64_t OUTLINED_FUNCTION_192_0(unint64_t *a1)
{

  return sub_1D848CA5C(a1);
}

uint64_t OUTLINED_FUNCTION_193_0(unint64_t *a1)
{

  return sub_1D848CA5C(a1);
}

uint64_t OUTLINED_FUNCTION_197_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[8];
  v4 = v2[9];
  v5 = v2[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_200_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[15];
  v4 = v2[12];
  v5 = v2[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_210_0()
{
  v2 = v0[41];
  v3 = v0[35];
  v4 = v0[34];
  v14 = v0[36];
  v5 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[24];
}

uint64_t OUTLINED_FUNCTION_229_0()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
}

uint64_t OUTLINED_FUNCTION_231_0()
{
  result = *(v0 + 144);
  v2 = *(v0 + 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_233_0(unint64_t *a1)
{

  return sub_1D84A6058(a1, 255, v1);
}

uint64_t OUTLINED_FUNCTION_238_0()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
}

uint64_t OUTLINED_FUNCTION_243_0()
{
  result = *(v0 + 152);
  v2 = *(v0 + 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_244_0()
{
  *(v0 + 56) = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_246_0()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
}

uint64_t OUTLINED_FUNCTION_247_0()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
}

uint64_t OUTLINED_FUNCTION_256_0()
{
  *(v1 + 8) = v0;
  v3 = *(v2 + 80);
  return *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_258_0()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_259_0@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_267_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_269_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_288_0()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
}

uint64_t OUTLINED_FUNCTION_290_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_294_0()
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_296_0()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v11 = v0[15];
}

uint64_t OUTLINED_FUNCTION_297_0()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
}

uint64_t OUTLINED_FUNCTION_298_0()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
}

uint64_t OUTLINED_FUNCTION_300_0()
{
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
}

uint64_t OUTLINED_FUNCTION_306_0()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
}

uint64_t OUTLINED_FUNCTION_307_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[13] = a1;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_317_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_327_0()
{
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];
  v6 = v0[26];
}

uint64_t OUTLINED_FUNCTION_336_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_338_0()
{
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
}

uint64_t OUTLINED_FUNCTION_340_0(uint64_t a1)
{
  *(v1 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_342_0()
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_343_0()
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_344_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8);

  return sub_1D8580FA8();
}

uint64_t OUTLINED_FUNCTION_345_0()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
}

uint64_t static GameServiceChangeEventType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_1D84A8658(*a2, 0);
      sub_1D84A8658(v2, 0);
      v5 = sub_1D84A8680(v2, v4, &qword_1ECA38A78, &unk_1D85A22B0, &qword_1ECA399C8);
      sub_1D84A866C(v2, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v3 != 1)
  {
    if (v5 == 2 && v4 == 0)
    {
      sub_1D84A866C(*a1, 2u);
      sub_1D84A866C(0, 2u);
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

    goto LABEL_12;
  }

  if (v5 != 1)
  {
LABEL_12:
    sub_1D84A8658(*a2, *(a2 + 8));
    sub_1D84A8658(v2, v3);
    sub_1D84A866C(v2, v3);
    sub_1D84A866C(v4, v5);
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  sub_1D84A8658(*a2, 1u);
  sub_1D84A8658(v2, 1u);
  LOBYTE(v5) = sub_1D84A8680(v2, v4, &qword_1ECA38B48, &qword_1D8590B40, &qword_1ECA399D0);
  sub_1D84A866C(v2, 1u);
  v6 = v4;
  v7 = 1;
LABEL_7:
  sub_1D84A866C(v6, v7);
  return v5 & 1;
}

uint64_t sub_1D84A8658(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D84A866C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D84A8680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      sub_1D844A16C(a5, a3, a4);
      v11 = (a1 + 40);
      v12 = (a2 + 40);
      do
      {
        v13 = *v11;
        v18 = *(v11 - 1);
        v16 = *(v12 - 1);
        v17 = *v12;

        v14 = sub_1D8581208();

        if ((v14 & 1) == 0)
        {
          break;
        }

        v11 += 2;
        v12 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t GameServiceChangeEventType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    MEMORY[0x1DA7191F0](0);
    v4 = &qword_1ECA38A78;
    v5 = &unk_1D85A22B0;
    v6 = &unk_1ECA38AA0;
    return sub_1D84A89BC(a1, v3, v4, v5, v6);
  }

  if (*(v1 + 8) == 1)
  {
    MEMORY[0x1DA7191F0](1);
    v4 = &qword_1ECA38B48;
    v5 = &qword_1D8590B40;
    v6 = &unk_1ECA38B60;
    return sub_1D84A89BC(a1, v3, v4, v5, v6);
  }

  return MEMORY[0x1DA7191F0](2);
}

uint64_t GameServiceChangeEventType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D8581B58();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1DA7191F0](2);
      return sub_1D8581B98();
    }

    MEMORY[0x1DA7191F0](1);
    v3 = &qword_1ECA38B48;
    v4 = &qword_1D8590B40;
    v5 = &unk_1ECA38B60;
  }

  else
  {
    MEMORY[0x1DA7191F0](0);
    v3 = &qword_1ECA38A78;
    v4 = &unk_1D85A22B0;
    v5 = &unk_1ECA38AA0;
  }

  sub_1D84A89BC(v7, v1, v3, v4, v5);
  return sub_1D8581B98();
}

uint64_t sub_1D84A890C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D8581B58();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1DA7191F0](2);
      return sub_1D8581B98();
    }

    MEMORY[0x1DA7191F0](1);
    v3 = &qword_1ECA38B48;
    v4 = &qword_1D8590B40;
    v5 = &unk_1ECA38B60;
  }

  else
  {
    MEMORY[0x1DA7191F0](0);
    v3 = &qword_1ECA38A78;
    v4 = &unk_1D85A22B0;
    v5 = &unk_1ECA38AA0;
  }

  sub_1D84A89BC(v7, v1, v3, v4, v5);
  return sub_1D8581B98();
}

uint64_t sub_1D84A89BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v9);
  if (v9)
  {
    v11 = (a2 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      sub_1D844A16C(a5, a3, a4);
      sub_1D85811E8();

      v11 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t sub_1D84A8A90()
{
  result = qword_1ECA399C0;
  if (!qword_1ECA399C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA399C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameServices0A22ServiceChangeEventTypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D84A8B00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D84A8B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D84A8B84(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void *static $DistributedLeaderboardServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_14_0();
  sub_1D84A8E00(v5);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v6);
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

unint64_t sub_1D84A8E00(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t $DistributedLeaderboardServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_14_0();
  sub_1D84A8E00(v1);
  sub_1D8580F68();
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedLeaderboardServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 128);

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedLeaderboardServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D84A8F24()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedLeaderboardServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedLeaderboardServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedLeaderboardServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_14_0();
  sub_1D84A8E00(v3);
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v7;
  v1[15] = v8;
  v6 = v1[16];

  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedLeaderboardServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedLeaderboardServiceProtocol();
    OUTLINED_FUNCTION_0_3();
    sub_1D84A8E00(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D84A9160@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D84A91EC()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v0);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D84A924C()
{
  v2 = *v0;
  sub_1D8581B58();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D84A92C8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(dword_1D85999B8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84A9354(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84A947C, 0, 0);
}

uint64_t sub_1D84A947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(dword_1D85999B8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84();
  sub_1D848A55C();
  sub_1D848A60C();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
  sub_1D848A6BC();
  sub_1D848A7F8();
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

uint64_t DistributedLeaderboardServiceProtocol<>.describe(leaderboards:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
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

uint64_t sub_1D84A97F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_84();
    sub_1D848A55C();
    sub_1D848A60C();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39600, &unk_1D85960A0);
    sub_1D848A6BC();
    sub_1D848A7F8();
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
    v19 = *(OUTLINED_FUNCTION_210(v14[12]) + 8);
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

uint64_t sub_1D84A9AD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedLeaderboardServiceProtocol<>.describe(leaderboards:)();
}

unint64_t sub_1D84A9C80(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39618, &qword_1D859F1C0);
    OUTLINED_FUNCTION_121_1();
    sub_1D84A8E00(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84A9D08()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v1 = *v0;
  OUTLINED_FUNCTION_31_0(&unk_1D85999B0);
  v3 = *v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_82_0(v5);

  return v9(v7);
}

uint64_t sub_1D84A9DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 96) = a4;
  *(v6 + 104) = v5;
  *(v6 + 289) = a5;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  *(v6 + 72) = a1;
  v7 = sub_1D8581018();
  *(v6 + 112) = v7;
  v8 = *(v7 - 8);
  *(v6 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v6 + 136) = v10;
  v11 = *(v10 - 8);
  *(v6 + 144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v13 = sub_1D8580EF8();
  *(v6 + 160) = v13;
  v14 = *(v13 - 8);
  *(v6 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v6 + 184) = v16;
  v17 = *(v16 - 8);
  *(v6 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v6 + 208) = v19;
  v20 = *(v19 - 8);
  *(v6 + 216) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v6 + 232) = v22;
  v23 = *(v22 - 8);
  *(v6 + 240) = v23;
  v24 = *(v23 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84AA07C, 0, 0);
}

uint64_t sub_1D84AA07C()
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  v2 = *(v1 + 104);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v4 = OUTLINED_FUNCTION_275_1(&unk_1D85999B0);
    *(v1 + 264) = v4;
    *v4 = v1;
    v4[1] = sub_1D848B1E4;
    v5 = *(v1 + 96);
    v6 = *(v1 + 104);
    v7 = *(v1 + 80);
    v8 = *(v1 + 88);
    v9 = *(v1 + 289);
    OUTLINED_FUNCTION_207_0(*(v1 + 72));
    OUTLINED_FUNCTION_177_0();

    __asm { BR              X5 }
  }

  v3 = *(v1 + 104);
  *(v1 + 256) = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v0)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v12 = *(v1 + 248);
  *(v1 + 56) = *(v1 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84();
  sub_1D848A55C();
  sub_1D848A60C();
  OUTLINED_FUNCTION_31();
  v13 = *(v1 + 224);
  *(v1 + 40) = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39658, &unk_1D859F1F0);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_139_0(&unk_1ECA39660);
  OUTLINED_FUNCTION_138_0(&unk_1ECA39668);
  OUTLINED_FUNCTION_31();
  v14 = *(v1 + 200);
  v15 = *(v1 + 176);
  v16 = *(v1 + 160);
  v17 = *(v1 + 96);
  v18 = OUTLINED_FUNCTION_191_0(*(v1 + 168));
  v19(v18);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_212_1(v20);
  OUTLINED_FUNCTION_21_0(&unk_1ECA39678);
  OUTLINED_FUNCTION_31();
  v21 = *(v1 + 152);
  *(v1 + 288) = *(v1 + 289);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_102_0();
  sub_1D848CAC8();
  sub_1D848CBA0();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
  sub_1D848CC78();
  sub_1D848CD28();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v23)
  {
    v24 = *(v1 + 240);
    v86 = *(v1 + 232);
    v87 = *(v1 + 248);
    v25 = *(v1 + 216);
    v82 = *(v1 + 208);
    v84 = *(v1 + 224);
    v26 = *(v1 + 192);
    v79 = *(v1 + 200);
    v27 = *(v1 + 184);
    v28 = *(v1 + 144);
    v29 = *(v1 + 152);
    v30 = *(v1 + 136);

    v31 = *(v28 + 8);
    v32 = OUTLINED_FUNCTION_169_0();
    v34 = v33(v32);
    v42 = OUTLINED_FUNCTION_189_0(v34, v35, v36, v37, v38, v39, v40, v41, v79);
    v44 = v43(v42);
    v52 = OUTLINED_FUNCTION_320_0(v44, v45, v46, v47, v48, v49, v50, v51, v80, v82, v84);
    v54 = v53(v52);
    v62 = OUTLINED_FUNCTION_319_0(v54, v55, v56, v57, v58, v59, v60, v61, v81, v83, v85, v86, v87);
    v63(v62);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v64 = *(v1 + 248);
    v65 = *(v1 + 224);
    v66 = *(v1 + 200);
    v67 = *(v1 + 176);
    v68 = *(v1 + 152);
    v69 = *(v1 + 128);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X1, X16 }
  }

  v72 = *(v1 + 128);
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v73 = swift_task_alloc();
  *(v1 + 272) = v73;
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v74);
  OUTLINED_FUNCTION_98();
  *v73 = v75;
  v73[1] = sub_1D848B38C;
  OUTLINED_FUNCTION_215_0();
  OUTLINED_FUNCTION_9_0(v76);
  OUTLINED_FUNCTION_169_1();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 136) = v4;
  *(v1 + 144) = v0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 88) = v9;
  *(v1 + 96) = v10;
  v11 = sub_1D8581018();
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 160) = v12;
  v14 = *(v13 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 176) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 184) = v16;
  v18 = *(v17 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v19 = sub_1D8580EF8();
  *(v1 + 200) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v1 + 208) = v20;
  v22 = *(v21 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 224) = v23;
  OUTLINED_FUNCTION_39(v23);
  *(v1 + 232) = v24;
  v26 = *(v25 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39650, &unk_1D85960D0);
  *(v1 + 248) = v27;
  OUTLINED_FUNCTION_39(v27);
  *(v1 + 256) = v28;
  v30 = *(v29 + 64);
  *(v1 + 264) = OUTLINED_FUNCTION_332();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 272) = v31;
  OUTLINED_FUNCTION_39(v31);
  *(v1 + 280) = v32;
  v34 = *(v33 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_332();
  *(v1 + 338) = *v3;
  v35 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84AA800()
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  v1 = *(v0 + 144);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v5 = *(v0 + 338);
    v6 = *(v0 + 136);
    *(v0 + 56) = *(v0 + 144);
    *(v0 + 336) = v5;
    v90 = (*(v6 + 16) + 16);
    v92 = *v90 + **v90;
    v7 = (*v90)[1];
    v8 = swift_task_alloc();
    *(v0 + 320) = v8;
    *v8 = v0;
    v8[1] = sub_1D848C05C;
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    OUTLINED_FUNCTION_207_0(*(v0 + 88));
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X7, X16 }
  }

  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(*(v0 + 128) + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 296) = *(v0 + 64);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v15 = *(v0 + 288);
  *(v0 + 72) = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84();
  sub_1D848A55C();
  sub_1D848A60C();
  OUTLINED_FUNCTION_31();
  v16 = *(v0 + 264);
  *(v0 + 40) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39658, &unk_1D859F1F0);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_139_0(&unk_1ECA39660);
  OUTLINED_FUNCTION_138_0(&unk_1ECA39668);
  OUTLINED_FUNCTION_31();
  v17 = *(v0 + 240);
  v18 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = *(v0 + 112);
  v21 = OUTLINED_FUNCTION_191_0(*(v0 + 208));
  v22(v21);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_212_1(v23);
  OUTLINED_FUNCTION_21_0(&unk_1ECA39678);
  OUTLINED_FUNCTION_31();
  v24 = *(v0 + 192);
  *(v0 + 337) = *(v0 + 338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_102_0();
  sub_1D848CAC8();
  sub_1D848CBA0();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
  sub_1D848CC78();
  sub_1D848CD28();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v26)
  {
    v27 = *(v0 + 280);
    v91 = *(v0 + 272);
    v93 = *(v0 + 288);
    v28 = *(v0 + 256);
    v86 = *(v0 + 248);
    v88 = *(v0 + 264);
    v29 = *(v0 + 232);
    v83 = *(v0 + 240);
    v30 = *(v0 + 224);
    v31 = *(v0 + 184);
    v32 = *(v0 + 192);
    v33 = *(v0 + 176);

    v34 = *(v31 + 8);
    v35 = OUTLINED_FUNCTION_169_0();
    v37 = v36(v35);
    v45 = OUTLINED_FUNCTION_189_0(v37, v38, v39, v40, v41, v42, v43, v44, v83);
    v47 = v46(v45);
    v55 = OUTLINED_FUNCTION_320_0(v47, v48, v49, v50, v51, v52, v53, v54, v84, v86, v88);
    v57 = v56(v55);
    v65 = OUTLINED_FUNCTION_319_0(v57, v58, v59, v60, v61, v62, v63, v64, v85, v87, v89, v91, v93);
    v66(v65);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v67 = *(v0 + 288);
    v68 = *(v0 + 264);
    v69 = *(v0 + 240);
    v70 = *(v0 + 216);
    v71 = *(v0 + 192);
    v72 = *(v0 + 168);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X1, X16 }
  }

  v75 = *(v0 + 168);
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 304) = v76;
  *v76 = v77;
  v76[1] = sub_1D848BE74;
  v78 = *(v0 + 168);
  v79 = *(v0 + 144);
  v80 = *(v0 + 120);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_169_1();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84AAD98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v6 = *a2;
  v5[3] = *a2;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[5] = v9;
  sub_1D8580F88();
  v27 = *v9;
  v10 = a2[1];
  v5[6] = v10;
  v11 = *(v10 - 8);
  v5[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[8] = v13;
  sub_1D8580F88();
  v14 = v13[1];
  v26 = *v13;
  v15 = a2[2];
  v5[9] = v15;
  v16 = *(v15 - 8);
  v5[10] = v16;
  v17 = *(v16 + 64) + 15;
  v5[11] = swift_task_alloc();
  sub_1D8580F88();
  v18 = a2[3];
  v5[12] = v18;
  v19 = *(v18 - 8);
  v5[13] = v19;
  v20 = *(v19 + 64) + 15;
  v5[14] = swift_task_alloc();
  sub_1D8580F88();
  v21 = *a4;
  v22 = *a5;
  v23 = a5[1];
  v24 = swift_task_alloc();
  v5[15] = v24;
  *v24 = v5;
  v24[1] = sub_1D84AB1D0;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_1D84AB1D0()
{
  OUTLINED_FUNCTION_153();
  v1 = *(v0 + 120);
  v30 = *(v0 + 112);
  OUTLINED_FUNCTION_193();
  v29 = *(v2 + 104);
  OUTLINED_FUNCTION_193();
  v26 = *(v3 + 96);
  OUTLINED_FUNCTION_193();
  v28 = *(v4 + 88);
  OUTLINED_FUNCTION_193();
  v27 = *(v5 + 80);
  OUTLINED_FUNCTION_193();
  v7 = *(v6 + 72);
  v25 = *(v8 + 64);
  OUTLINED_FUNCTION_193();
  v24 = *(v9 + 56);
  OUTLINED_FUNCTION_193();
  v11 = *(v10 + 48);
  v13 = v12[5];
  v14 = v12[4];
  v15 = v12[3];
  v16 = v12[2];
  OUTLINED_FUNCTION_171_0();
  v18 = v17;
  OUTLINED_FUNCTION_42();
  *v19 = v18;
  *v21 = v20;

  (*(v14 + 8))(v13, v15);
  (*(v24 + 8))(v25, v11);
  (*(v27 + 8))(v28, v7);
  (*(v29 + 8))(v30, v26);

  v22 = *(v18 + 8);

  return v22();
}

unint64_t sub_1D84AB4D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39658, &unk_1D859F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84AB538()
{
  OUTLINED_FUNCTION_204();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  OUTLINED_FUNCTION_24(&unk_1D85999A8);
  v9 = *v8;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_176(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_191(v11);

  return v14(v6, v4, v2, v9);
}

uint64_t sub_1D84AB5F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 273) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1D8581018();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v12 = sub_1D8580EF8();
  *(v5 + 144) = v12;
  v13 = *(v12 - 8);
  *(v5 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v5 + 168) = v15;
  v16 = *(v15 - 8);
  *(v5 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v5 + 192) = v18;
  v19 = *(v18 - 8);
  *(v5 + 200) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v5 + 216) = v21;
  v22 = *(v21 - 8);
  *(v5 + 224) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84AB8B8, 0, 0);
}

uint64_t sub_1D84AB8B8()
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  v2 = *(v1 + 88);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v4 = OUTLINED_FUNCTION_275_1(&unk_1D85999A8);
    *(v1 + 248) = v4;
    *v4 = v1;
    v4[1] = sub_1D848D650;
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = *(v1 + 72);
    v8 = *(v1 + 273);
    OUTLINED_FUNCTION_207_0(*(v1 + 64));
    OUTLINED_FUNCTION_177_0();

    __asm { BR              X4 }
  }

  v3 = *(v1 + 88);
  *(v1 + 240) = $DistributedLeaderboardServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedLeaderboardServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v0)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v11 = *(v1 + 232);
  *(v1 + 40) = *(v1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84();
  sub_1D848A55C();
  sub_1D848A60C();
  OUTLINED_FUNCTION_31();
  v12 = *(v1 + 208);
  *(v1 + 48) = *(v1 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_51_1();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  v13 = *(v1 + 184);
  v14 = *(v1 + 160);
  v15 = *(v1 + 144);
  v16 = *(v1 + 80);
  v17 = OUTLINED_FUNCTION_191_0(*(v1 + 152));
  v18(v17);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_212_1(v19);
  OUTLINED_FUNCTION_21_0(&unk_1ECA39678);
  OUTLINED_FUNCTION_31();
  v20 = *(v1 + 136);
  *(v1 + 272) = *(v1 + 273);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_102_0();
  sub_1D848CAC8();
  sub_1D848CBA0();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
  sub_1D848CC78();
  sub_1D848CD28();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v22)
  {
    v23 = *(v1 + 224);
    v87 = *(v1 + 216);
    v88 = *(v1 + 232);
    v24 = *(v1 + 200);
    v83 = *(v1 + 192);
    v85 = *(v1 + 208);
    v25 = *(v1 + 176);
    v80 = *(v1 + 184);
    v26 = *(v1 + 168);
    v27 = *(v1 + 128);
    v28 = *(v1 + 136);
    v29 = *(v1 + 120);

    v30 = *(v27 + 8);
    v31 = OUTLINED_FUNCTION_169_0();
    v33 = v32(v31);
    v41 = OUTLINED_FUNCTION_189_0(v33, v34, v35, v36, v37, v38, v39, v40, v80);
    v43 = v42(v41);
    v51 = OUTLINED_FUNCTION_320_0(v43, v44, v45, v46, v47, v48, v49, v50, v81, v83, v85);
    v53 = v52(v51);
    v61 = OUTLINED_FUNCTION_319_0(v53, v54, v55, v56, v57, v58, v59, v60, v82, v84, v86, v87, v88);
    v62(v61);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v63 = *(v1 + 232);
    v64 = *(v1 + 208);
    v65 = *(v1 + 184);
    v66 = *(v1 + 160);
    v67 = *(v1 + 136);
    v68 = *(v1 + 112);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X1, X16 }
  }

  v71 = *(v1 + 112);
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v72 = swift_task_alloc();
  *(v1 + 256) = v72;
  OUTLINED_FUNCTION_0_3();
  sub_1D84A8E00(v73);
  OUTLINED_FUNCTION_98();
  *v72 = v74;
  v72[1] = sub_1D848D7F8;
  v75 = *(v1 + 112);
  v76 = *(v1 + 88);
  OUTLINED_FUNCTION_9_0(v77);
  OUTLINED_FUNCTION_169_1();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 120) = v4;
  *(v1 + 128) = v0;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 80) = v9;
  v10 = sub_1D8581018();
  *(v1 + 136) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 144) = v11;
  v13 = *(v12 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39640, &unk_1D85960C0);
  *(v1 + 160) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 168) = v15;
  v17 = *(v16 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v18 = sub_1D8580EF8();
  *(v1 + 184) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 192) = v19;
  v21 = *(v20 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39648, &unk_1D859F1E0);
  *(v1 + 208) = v22;
  OUTLINED_FUNCTION_39(v22);
  *(v1 + 216) = v23;
  v25 = *(v24 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_332();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  *(v1 + 232) = v26;
  OUTLINED_FUNCTION_39(v26);
  *(v1 + 240) = v27;
  v29 = *(v28 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_332();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E0, &unk_1D8598150);
  *(v1 + 256) = v30;
  OUTLINED_FUNCTION_39(v30);
  *(v1 + 264) = v31;
  v33 = *(v32 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_332();
  *(v1 + 322) = *v3;
  v34 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84AC014()
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  v1 = *(v0 + 128);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v4 = *(v0 + 322);
    v5 = *(v0 + 120);
    *(v0 + 40) = *(v0 + 128);
    *(v0 + 320) = v4;
    v88 = (*(v5 + 16) + 24);
    v90 = *v88 + **v88;
    v6 = (*v88)[1];
    v7 = swift_task_alloc();
    *(v0 + 304) = v7;
    *v7 = v0;
    v7[1] = sub_1D848E478;
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    OUTLINED_FUNCTION_207_0(*(v0 + 80));
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X6, X16 }
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  OUTLINED_FUNCTION_83_0(*(v0 + 112));
  *(v0 + 280) = *(v0 + 48);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v13 = *(v0 + 272);
  *(v0 + 56) = *(v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395E8, &unk_1D8596090);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_84();
  sub_1D848A55C();
  sub_1D848A60C();
  OUTLINED_FUNCTION_31();
  v14 = *(v0 + 248);
  *(v0 + 64) = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_51_1();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  v15 = *(v0 + 224);
  v16 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v0 + 96);
  v19 = OUTLINED_FUNCTION_191_0(*(v0 + 192));
  v20(v19);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_212_1(v21);
  OUTLINED_FUNCTION_21_0(&unk_1ECA39678);
  OUTLINED_FUNCTION_31();
  v22 = *(v0 + 176);
  *(v0 + 321) = *(v0 + 322);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39680, &unk_1D85960E0);
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_102_0();
  sub_1D848CAC8();
  sub_1D848CBA0();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396A8, &unk_1D859F200);
  sub_1D848CC78();
  sub_1D848CD28();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v24)
  {
    v25 = *(v0 + 264);
    v89 = *(v0 + 256);
    v91 = *(v0 + 272);
    v26 = *(v0 + 240);
    v84 = *(v0 + 232);
    v86 = *(v0 + 248);
    v27 = *(v0 + 216);
    v81 = *(v0 + 224);
    v28 = *(v0 + 208);
    v29 = *(v0 + 168);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);

    v32 = *(v29 + 8);
    v33 = OUTLINED_FUNCTION_169_0();
    v35 = v34(v33);
    v43 = OUTLINED_FUNCTION_189_0(v35, v36, v37, v38, v39, v40, v41, v42, v81);
    v45 = v44(v43);
    v53 = OUTLINED_FUNCTION_320_0(v45, v46, v47, v48, v49, v50, v51, v52, v82, v84, v86);
    v55 = v54(v53);
    v63 = OUTLINED_FUNCTION_319_0(v55, v56, v57, v58, v59, v60, v61, v62, v83, v85, v87, v89, v91);
    v64(v63);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v65 = *(v0 + 272);
    v66 = *(v0 + 248);
    v67 = *(v0 + 224);
    v68 = *(v0 + 200);
    v69 = *(v0 + 176);
    v70 = *(v0 + 152);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_177_0();

    __asm { BRAA            X1, X16 }
  }

  v73 = *(v0 + 152);
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 288) = v74;
  *v74 = v75;
  v74[1] = sub_1D848E290;
  v76 = *(v0 + 152);
  v77 = *(v0 + 128);
  v78 = *(v0 + 104);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_169_1();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84AC574(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v29 = a4;
  v12 = *v11;
  v13 = a2[1];
  v5[6] = v13;
  v14 = *(v13 - 8);
  v5[7] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v5[8] = v16;
  sub_1D8580F88();
  v28 = *v16;
  v17 = a2[2];
  v5[9] = v17;
  v18 = *(v17 - 8);
  v5[10] = v18;
  v19 = *(v18 + 64) + 15;
  v5[11] = swift_task_alloc();
  sub_1D8580F88();
  v20 = a2[3];
  v5[12] = v20;
  v21 = *(v20 - 8);
  v5[13] = v21;
  v22 = *(v21 + 64) + 15;
  v5[14] = swift_task_alloc();
  sub_1D8580F88();
  v23 = *v29;
  v24 = *a5;
  v25 = a5[1];
  v26 = swift_task_alloc();
  v5[15] = v26;
  *v26 = v5;
  v26[1] = sub_1D84BD83C;

  return DistributedLeaderboardServiceProtocol<>.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_1D84AC984()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  v3 = *v1;
  OUTLINED_FUNCTION_24(&unk_1D85999A0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);

  return v8(v2, v0);
}

uint64_t sub_1D84ACA24(uint64_t a1, uint64_t a2)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84ACBB8, 0, 0);
}

uint64_t sub_1D84ACBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229();
    sub_1D847C154();
    sub_1D847C0A4();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
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
    v46[1] = sub_1D84AD03C;
    v49 = v13[13];
    v50 = v13[10];
    OUTLINED_FUNCTION_9_0(v51);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85999A0);
    v16 = swift_task_alloc();
    v13[21] = v16;
    *v16 = v13;
    v16[1] = sub_1D84ACEF0;
    v17 = v13[9];
    v18 = v13[10];
    OUTLINED_FUNCTION_207_0(v13[8]);
    OUTLINED_FUNCTION_197();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84ACEF0()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v3 = v2[21];
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
    v10 = OUTLINED_FUNCTION_482();
  }

  return v11(v10);
}

uint64_t sub_1D84AD03C()
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

uint64_t sub_1D84AD134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_298_0();
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

  v25 = *(v12 + 56);
  OUTLINED_FUNCTION_243_0();
  v26 = *(v12 + 104);

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1D84AD200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_298_0();
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

  v25 = *(v12 + 184);
  OUTLINED_FUNCTION_243_0();
  v26 = *(v12 + 104);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t DistributedLeaderboardServiceProtocol<>.listLeaderboards(games:players:)()
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
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

uint64_t sub_1D84AD418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_229();
    sub_1D847C154();
    sub_1D847C0A4();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA396D8, &unk_1D859F230);
    sub_1D848FFF0();
    sub_1D84900A0();
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
    v55[1] = sub_1D84AD7AC;
    v57 = v14[18];
    v58 = v14[15];
    v59 = v14[12];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(OUTLINED_FUNCTION_210(v14[14]) + 32);
    OUTLINED_FUNCTION_54();
    v61 = v20 + *v20;
    v22 = *(v21 + 4);
    v23 = swift_task_alloc();
    v14[28] = v23;
    *v23 = v14;
    v23[1] = sub_1D84AD968;
    v24 = v14[11];
    v25 = v14[12];
    OUTLINED_FUNCTION_207_0(v14[10]);
    OUTLINED_FUNCTION_169();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v61, a12, a13, a14);
  }
}