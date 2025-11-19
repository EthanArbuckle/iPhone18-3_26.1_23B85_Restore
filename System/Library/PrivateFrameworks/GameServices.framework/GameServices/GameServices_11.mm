uint64_t sub_1D85377C4()
{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_146();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_1D8537820()
{
  OUTLINED_FUNCTION_148();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = *(v2 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D85378D4, 0, 0);
}

uint64_t sub_1D85378D4()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1D85814D8();
  OUTLINED_FUNCTION_154();
  sub_1D85814A8();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D8537970()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v3[1] = sub_1D8442FA8;

  return sub_1D8537820();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8537A28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t sub_1D8537A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8537AAC(uint64_t a1, int a2)
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
    v2 = *(a1 + 16);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_226(v2);
}

unint64_t sub_1D8537B04()
{
  result = qword_1ECA3A600;
  if (!qword_1ECA3A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A600);
  }

  return result;
}

uint64_t sub_1D8537B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A608, &qword_1D85AAD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *static $DistributedProfileServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedProfileServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_5_5();
  sub_1D8541958(v5);
  OUTLINED_FUNCTION_0_10();
  sub_1D8541958(v6);
  OUTLINED_FUNCTION_368();
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

uint64_t $DistributedProfileServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_5_5();
  sub_1D8541958(v1);
  sub_1D8580F68();
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedProfileServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 128);

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedProfileServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8537DEC()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedProfileServiceProtocol();
  OUTLINED_FUNCTION_0_10();
  sub_1D8541958(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedProfileServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedProfileServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedProfileServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedProfileServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_5_5();
  sub_1D8541958(v3);
  OUTLINED_FUNCTION_0_10();
  sub_1D8541958(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v7;
  v1[15] = v8;
  v6 = v1[16];

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedProfileServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedProfileServiceProtocol();
    OUTLINED_FUNCTION_0_10();
    sub_1D8541958(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D853802C@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedProfileServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D85380B8()
{
  v1 = *v0;
  type metadata accessor for $DistributedProfileServiceProtocol();
  OUTLINED_FUNCTION_0_10();
  sub_1D8541958(v2);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D853811C()
{
  v2 = *v0;
  sub_1D8581B58();
  type metadata accessor for $DistributedProfileServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D8538198()
{
  OUTLINED_FUNCTION_174();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_50(dword_1D85A4958);
  v9 = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_191(v6);

  return v9(v2);
}

uint64_t sub_1D8538234(uint64_t a1)
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

  return MEMORY[0x1EEE6DFA0](sub_1D853835C, 0, 0);
}

uint64_t sub_1D853835C()
{
  OUTLINED_FUNCTION_177();
  v1 = v0[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(dword_1D85A4958);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_1D85386B8;
    v4 = v0[8];
    OUTLINED_FUNCTION_207_0(v0[7]);
    OUTLINED_FUNCTION_67_3();

    return v5();
  }

  v2 = v0[8];
  v0[15] = $DistributedProfileServiceProtocol.actorSystem.getter();
  GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
  type metadata accessor for $DistributedProfileServiceProtocol();
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)();
  v8 = v0[14];
  v0[5] = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_30();
  sub_1D85395B4(v9);
  OUTLINED_FUNCTION_32();
  sub_1D85395B4(v10);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A1A0, &qword_1D859F2E8);
  sub_1D8505630();
  sub_1D850578C();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v14)
  {
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];

    v18 = OUTLINED_FUNCTION_49_0();
    v19(v18);
    OUTLINED_FUNCTION_331();

    v20 = v0[14];
    v21 = v0[11];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_67_3();

    return v5();
  }

  v23 = v0[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v24 = swift_task_alloc();
  v0[17] = v24;
  OUTLINED_FUNCTION_0_10();
  sub_1D8541958(v25);
  OUTLINED_FUNCTION_168();
  *v24 = v26;
  v24[1] = sub_1D85387EC;
  v27 = v0[11];
  v28 = v0[8];
  OUTLINED_FUNCTION_9_0(v29);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D85386B8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v4 = v3[16];
  v5 = *v2;
  OUTLINED_FUNCTION_37();
  *v6 = v5;

  v7 = v3[14];
  v8 = v3[11];

  v10 = *(v5 + 8);
  if (!v1)
  {
    v9 = v0;
  }

  return v10(v9);
}

uint64_t sub_1D85387EC()
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

uint64_t sub_1D85388E4()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_166();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_151();
  v8(v7);
  OUTLINED_FUNCTION_331();

  v9 = v0[6];
  v10 = v0[14];
  v11 = v0[11];

  v12 = OUTLINED_FUNCTION_72();

  return v13(v12);
}

uint64_t sub_1D853899C()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_166();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_151();
  v8(v7);
  OUTLINED_FUNCTION_331();

  v9 = v0[18];
  v10 = v0[14];
  v11 = v0[11];

  OUTLINED_FUNCTION_146();

  return v12();
}

uint64_t DistributedProfileServiceProtocol<>.describeProfiles(players:)()
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
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

uint64_t sub_1D8538B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[10];
    v17 = *(v14[11] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    GameServicesActorSystem.makeInvocationEncoder()(v14 + 2);
    OUTLINED_FUNCTION_90();
    if (v16)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v47 = v14[19];
      v48 = v14[16];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
    }

    v35 = v14[19];
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_30();
    sub_1D85395B4(v36);
    OUTLINED_FUNCTION_32();
    sub_1D85395B4(v37);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A1A0, &qword_1D859F2E8);
    sub_1D8505630();
    sub_1D850578C();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      v43 = v14[18];
      v42 = v14[19];
      v44 = v14[17];

      v45 = OUTLINED_FUNCTION_49_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v57 = v14[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v58;
    *v58 = v59;
    v58[1] = sub_1D8538EFC;
    v60 = v14[16];
    v61 = v14[13];
    v62 = v14[10];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v18 = v14[12];
    v14[5] = v14[13];
    v19 = *(v18 + 16);
    v20 = *(v19 + 8);
    v64 = v19 + 8;
    OUTLINED_FUNCTION_130_1();
    v65 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v14[23] = v24;
    *v24 = v14;
    v24[1] = sub_1D85390AC;
    v25 = v14[10];
    OUTLINED_FUNCTION_207_0(v14[9]);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v64, v65, a12, a13, a14);
  }
}

uint64_t sub_1D8538EFC()
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

uint64_t sub_1D8538FF4()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_166();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_151();
  v8(v7);
  OUTLINED_FUNCTION_331();

  v9 = v0[8];
  v10 = v0[19];
  v11 = v0[16];

  v12 = OUTLINED_FUNCTION_72();

  return v13(v12);
}

uint64_t sub_1D85390AC()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_37();
  *v10 = v9;
  v5[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[19];
    v15 = v5[16];

    OUTLINED_FUNCTION_69_2();

    return v16(v3);
  }
}

uint64_t sub_1D85391EC()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_166();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_151();
  v8(v7);
  OUTLINED_FUNCTION_331();

  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];

  OUTLINED_FUNCTION_146();

  return v12();
}

uint64_t sub_1D85392A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D8539434;

  return DistributedProfileServiceProtocol<>.describeProfiles(players:)();
}

uint64_t sub_1D8539434()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *(v1 + 32);
  v5 = *(v1 + 24);
  v12 = *v0;
  **(v1 + 16) = v6;

  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_188();
  v9(v8);

  OUTLINED_FUNCTION_146();

  return v10();
}

unint64_t sub_1D85395B4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D848211C(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D8539644(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *v3;
  v5 = *a1;
  v6 = a1[1];
  v7 = *a3;
  v8 = a3[1];
  OUTLINED_FUNCTION_50(&unk_1D85A4950);
  v15 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_176(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_191(v11);
  v13 = OUTLINED_FUNCTION_166();

  return v15(v13);
}

uint64_t sub_1D8539708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_1D8581018();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v6[20] = v10;
  v11 = *(v10 - 8);
  v6[21] = v11;
  v12 = *(v11 + 64) + 15;
  v6[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A620, &unk_1D85A3890);
  v6[23] = v13;
  v14 = *(v13 - 8);
  v6[24] = v14;
  v15 = *(v14 + 64) + 15;
  v6[25] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v6[26] = v16;
  v17 = *(v16 - 8);
  v6[27] = v17;
  v18 = *(v17 + 64) + 15;
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8539908, 0, 0);
}

uint64_t sub_1D8539DD0()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v4 = v3[30];
  v5 = *v2;
  OUTLINED_FUNCTION_37();
  *v6 = v5;

  v7 = v3[28];
  v8 = v3[25];
  v9 = v3[22];
  v10 = v3[19];

  v12 = *(v5 + 8);
  if (!v1)
  {
    v11 = v0;
  }

  return v12(v11);
}

uint64_t sub_1D8539F44()
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

uint64_t DistributedProfileServiceProtocol<>.listInteractions(player:participants:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 160) = v6;
  *(v1 + 168) = v0;
  *(v1 + 144) = v7;
  *(v1 + 152) = v8;
  *(v1 + 136) = v9;
  v10 = sub_1D8581018();
  *(v1 + 176) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 184) = v11;
  v13 = *(v12 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 200) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 208) = v15;
  v17 = *(v16 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A620, &unk_1D85A3890);
  *(v1 + 224) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 232) = v19;
  v21 = *(v20 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v1 + 248) = v22;
  OUTLINED_FUNCTION_39(v22);
  *(v1 + 256) = v23;
  v25 = *(v24 + 64);
  v26 = OUTLINED_FUNCTION_332();
  v27 = *v5;
  v28 = v5[1];
  *(v1 + 264) = v26;
  *(v1 + 272) = v27;
  *(v1 + 280) = v28;
  *(v1 + 288) = *v3;
  OUTLINED_FUNCTION_149();

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

uint64_t sub_1D853A8F4()
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

uint64_t sub_1D853AAC0()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  *v6 = v5;
  v8 = *(v7 + 328);
  v9 = *v1;
  OUTLINED_FUNCTION_37();
  *v10 = v9;
  v5[42] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[33];
    v15 = v5[30];
    v16 = v5[27];
    v17 = v5[24];

    OUTLINED_FUNCTION_69_2();

    return v18(v3);
  }
}

uint64_t sub_1D853AC18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v5[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v5[6] = v11;
  v12 = *(v11 - 8);
  v5[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[8] = v14;
  sub_1D8580F88();
  v23 = *v14;
  v15 = a2[2];
  v5[9] = v15;
  v16 = *(v15 - 8);
  v5[10] = v16;
  v17 = *(v16 + 64) + 15;
  v5[11] = swift_task_alloc();
  sub_1D8580F88();
  v18 = *a4;
  v19 = *a5;
  v20 = a5[1];
  v21 = swift_task_alloc();
  v5[12] = v21;
  *v21 = v5;
  v21[1] = sub_1D853AF24;

  return DistributedProfileServiceProtocol<>.listInteractions(player:participants:after:)();
}

uint64_t sub_1D853AF24()
{
  OUTLINED_FUNCTION_153();
  v2 = v1[12];
  v21 = v1[11];
  v20 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v19 = v1[7];
  v5 = v1[6];
  v6 = v1[5];
  v7 = v1[4];
  v8 = v1[3];
  v9 = v1[2];
  v10 = *v0;
  OUTLINED_FUNCTION_42();
  *v11 = v10;
  *v13 = v12;

  (*(v7 + 8))(v6, v8);
  (*(v19 + 8))(v4, v5);
  v14 = *(v20 + 8);
  v15 = OUTLINED_FUNCTION_150();
  v16(v15);

  v17 = *(v10 + 8);

  return v17();
}

unint64_t sub_1D853B1C0()
{
  result = qword_1ECA3A630;
  if (!qword_1ECA3A630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A628, &unk_1D85A38A0);
    sub_1D853B244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A630);
  }

  return result;
}

unint64_t sub_1D853B244()
{
  result = qword_1ECA3A638;
  if (!qword_1ECA3A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A638);
  }

  return result;
}

unint64_t sub_1D853B298()
{
  result = qword_1ECA3A640;
  if (!qword_1ECA3A640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A628, &unk_1D85A38A0);
    sub_1D853B31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A640);
  }

  return result;
}

unint64_t sub_1D853B31C()
{
  result = qword_1ECA3A648;
  if (!qword_1ECA3A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A648);
  }

  return result;
}

unint64_t sub_1D853B370(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A650, &qword_1D85A38B0);
    sub_1D848211C(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D853B400()
{
  OUTLINED_FUNCTION_204();
  v1 = *v0;
  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_50(&unk_1D85A4948);
  v11 = v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_176(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_191(v7);
  v9 = OUTLINED_FUNCTION_166();

  return v11(v9);
}

uint64_t sub_1D853B4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A680, &qword_1D85A38D0);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D853B640, 0, 0);
}

uint64_t sub_1D853B640()
{
  OUTLINED_FUNCTION_177();
  v1 = v0[12];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[12];
    v0[22] = $DistributedProfileServiceProtocol.actorSystem.getter();
    GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
    type metadata accessor for $DistributedProfileServiceProtocol();
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)();
    v10 = v0[21];
    v11 = v0[10];
    v0[5] = v0[9];
    v0[6] = v11;

    v12 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v14);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v15);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v16, v17);
    v18 = v0[18];
    v0[7] = v0[11];
    OUTLINED_FUNCTION_229();
    v19 = OUTLINED_FUNCTION_69_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A688, &qword_1D85A38D8);
    sub_1D853CB64();
    sub_1D853CC3C();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v22)
    {
      v24 = v0[20];
      v23 = v0[21];
      v26 = v0[18];
      v25 = v0[19];
      v27 = v0[16];
      v28 = v0[17];

      v29 = *(v28 + 8);
      v30 = OUTLINED_FUNCTION_69_1();
      v31(v30);
      v32 = *(v24 + 8);
      v33 = OUTLINED_FUNCTION_150();
      v34(v33);
      OUTLINED_FUNCTION_331();

      v35 = v0[21];
      v36 = v0[18];
      v37 = v0[15];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_67_3();

      return v38();
    }

    else
    {
      v40 = v0[15];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v41 = swift_task_alloc();
      v0[24] = v41;
      OUTLINED_FUNCTION_0_10();
      sub_1D8541958(v42);
      OUTLINED_FUNCTION_168();
      *v41 = v43;
      v41[1] = sub_1D853BB58;
      v44 = v0[15];
      v45 = v0[12];
      OUTLINED_FUNCTION_9_0(v46);
      OUTLINED_FUNCTION_173();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85A4948);
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_1D853BA00;
    v4 = v0[11];
    v5 = v0[12];
    v6 = v0[10];
    OUTLINED_FUNCTION_207_0(v0[9]);
    OUTLINED_FUNCTION_67_3();

    return v7();
  }
}

uint64_t sub_1D853BA00()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v4 = v3[23];
  v5 = *v2;
  OUTLINED_FUNCTION_37();
  *v6 = v5;

  v7 = v3[21];
  v8 = v3[18];
  v9 = v3[15];

  v11 = *(v5 + 8);
  if (!v1)
  {
    v10 = v0;
  }

  return v11(v10);
}

uint64_t sub_1D853BB58()
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

uint64_t sub_1D853BC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
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

  v25 = v12[8];
  v26 = v12[21];
  v27 = v12[18];
  v28 = v12[15];

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1D853BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
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

  v25 = v12[25];
  v26 = v12[21];
  v27 = v12[18];
  v28 = v12[15];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t DistributedProfileServiceProtocol<>.listSuggestedNicknames(player:count:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[16] = v4;
  v1[17] = v0;
  v1[14] = v5;
  v1[15] = v6;
  v1[13] = v7;
  v8 = sub_1D8581018();
  v1[18] = v8;
  OUTLINED_FUNCTION_39(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A680, &qword_1D85A38D0);
  v1[21] = v12;
  OUTLINED_FUNCTION_39(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[24] = v16;
  OUTLINED_FUNCTION_39(v16);
  v1[25] = v17;
  v19 = *(v18 + 64);
  v20 = OUTLINED_FUNCTION_332();
  v21 = *v3;
  v22 = v3[1];
  v1[26] = v20;
  v1[27] = v21;
  v1[28] = v22;
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D853BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[17];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[17];
    v17 = v14[14];
    v18 = *(v14[15] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[29] = v14[10];
    GameServicesActorSystem.makeInvocationEncoder()(v14 + 2);
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v63 = v14[26];
      v64 = v14[23];
      v65 = v14[20];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
    }

    v38 = v14[28];
    v39 = v14[26];
    v14[7] = v14[27];
    v14[8] = v38;

    v40 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v43);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
    v46 = v14[23];
    v14[11] = v14[13];
    OUTLINED_FUNCTION_229();
    v47 = OUTLINED_FUNCTION_69_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A688, &qword_1D85A38D8);
    sub_1D853CB64();
    sub_1D853CC3C();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v50)
    {
      v52 = v14[25];
      v51 = v14[26];
      v54 = v14[23];
      v53 = v14[24];
      v55 = v14[21];
      v56 = v14[22];

      v57 = *(v56 + 8);
      v58 = OUTLINED_FUNCTION_69_1();
      v59(v58);
      v60 = *(v52 + 8);
      v61 = OUTLINED_FUNCTION_150();
      v62(v61);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v74 = v14[20];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[30] = v75;
    *v75 = v76;
    v75[1] = sub_1D853C36C;
    v77 = v14[20];
    v78 = v14[17];
    v79 = v14[14];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = v14[16];
    v14[9] = v14[17];
    v20 = v14[28];
    v14[5] = v14[27];
    v14[6] = v20;
    v21 = *(v19 + 16);
    v22 = *(v21 + 24);
    v81 = v21 + 24;
    OUTLINED_FUNCTION_130_1();
    v82 = v23 + *v23;
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    v14[32] = v26;
    *v26 = v14;
    v26[1] = sub_1D853C528;
    v27 = v14[13];
    v28 = v14[14];
    OUTLINED_FUNCTION_169();

    return v33(v29, v30, v31, v32, v33, v34, v35, v36, a9, v81, v82, a12, a13, a14);
  }
}

uint64_t sub_1D853C36C()
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

uint64_t sub_1D853C464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_425();
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

  v25 = *(v12 + 96);
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1D853C528()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  *v6 = v5;
  v8 = *(v7 + 256);
  v9 = *v1;
  OUTLINED_FUNCTION_37();
  *v10 = v9;
  v5[33] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[26];
    v15 = v5[23];
    v16 = v5[20];

    OUTLINED_FUNCTION_69_2();

    return v17(v3);
  }
}

uint64_t sub_1D853C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_425();
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

  v25 = *(v12 + 248);
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1D853C738(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v5[5] = swift_task_alloc();
  sub_1D8580F88();
  v21 = a4;
  v11 = a2[1];
  v5[6] = v11;
  v12 = *(v11 - 8);
  v5[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[8] = v14;
  sub_1D8580F88();
  v15 = *v14;
  v16 = *v21;
  v17 = *a5;
  v18 = a5[1];
  v19 = swift_task_alloc();
  v5[9] = v19;
  *v19 = v5;
  v19[1] = sub_1D853C978;

  return DistributedProfileServiceProtocol<>.listSuggestedNicknames(player:count:)();
}

uint64_t sub_1D853C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v14 = *(v13 + 72);
  v15 = *(v13 + 64);
  v16 = *(v13 + 56);
  v17 = *(v13 + 40);
  v18 = *(v13 + 32);
  v19 = *(v13 + 24);
  v20 = *(v13 + 48) - 8;
  v34 = *v12;
  **(v13 + 16) = v21;

  (*(v18 + 8))(v17, v19);
  v22 = *(v16 + 8);
  v23 = OUTLINED_FUNCTION_166();
  v24(v23);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

unint64_t sub_1D853CB64()
{
  result = qword_1ECA3A690;
  if (!qword_1ECA3A690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A688, &qword_1D85A38D8);
    sub_1D853CBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A690);
  }

  return result;
}

unint64_t sub_1D853CBE8()
{
  result = qword_1ECA3A698;
  if (!qword_1ECA3A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A698);
  }

  return result;
}

unint64_t sub_1D853CC3C()
{
  result = qword_1ECA3A6A0;
  if (!qword_1ECA3A6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A688, &qword_1D85A38D8);
    sub_1D853CCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A6A0);
  }

  return result;
}

unint64_t sub_1D853CCC0()
{
  result = qword_1ECA3A6A8;
  if (!qword_1ECA3A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A6A8);
  }

  return result;
}

uint64_t sub_1D853CD14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for $DistributedProfileServiceProtocol();
  OUTLINED_FUNCTION_0_10();
  sub_1D8541958(v4);
  v5 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v5);
}

uint64_t sub_1D853CD88()
{
  v1 = *v0;
  type metadata accessor for $DistributedProfileServiceProtocol();
  OUTLINED_FUNCTION_0_10();
  sub_1D8541958(v2);
  sub_1D843D180();
  OUTLINED_FUNCTION_368();
  return sub_1D8580FD8();
}

uint64_t sub_1D853CE08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedProfileServiceProtocol();
  OUTLINED_FUNCTION_0_10();
  sub_1D8541958(v3);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D853CEC4()
{
  OUTLINED_FUNCTION_99();
  sub_1D8541700();
  OUTLINED_FUNCTION_102();
  return sub_1D8581448();
}

uint64_t sub_1D853CF0C()
{
  OUTLINED_FUNCTION_99();
  sub_1D8541700();
  OUTLINED_FUNCTION_102();
  return sub_1D85813F8();
}

uint64_t sub_1D853CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v6 = OUTLINED_FUNCTION_188();
  sub_1D848211C(v6);
  sub_1D85813D8();
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

uint64_t sub_1D853D038(uint64_t a1)
{
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](a1);
  return sub_1D8581B98();
}

uint64_t sub_1D853D090(uint64_t a1, uint64_t a2)
{
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](a2);
  return sub_1D8581B98();
}

uint64_t sub_1D853D130@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1D853D160@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

GameServices::Profile::Subscriptions sub_1D853D23C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = Profile.Subscriptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D853D27C@<X0>(uint64_t *a1@<X8>)
{
  result = Profile.Subscriptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D853D2A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Profile.nickname.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_194();
}

uint64_t Profile.contactName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_194();
}

uint64_t Profile.artwork.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), 0x70uLL);
  memcpy(a1, (v1 + 88), 0x70uLL);
  return sub_1D853D3D0(__dst, v4);
}

uint64_t sub_1D853D3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39200, &qword_1D859A990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Profile.init(player:subscriptions:contact:nickname:contactName:image:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a1;
  v14 = a1[1];
  v16 = *a2;
  v17 = *a3;
  v19 = *a8;
  v18 = a8[1];
  if (v18)
  {
    v30 = *a8;
    v31 = v18;
    v27 = v16;
    v28 = v17;
    Ref<A>.artwork.getter(v29);
    v16 = v27;
    v17 = v28;
    v20 = v29[0];
    v21 = v29[1];
    v22 = v29[2];
    v23 = v29[3];
    v24 = v29[4];
    v25 = v29[5];
    v26 = v29[6];
  }

  else
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
  }

  *a9 = v15;
  *(a9 + 8) = v14;
  *(a9 + 16) = v16;
  *(a9 + 24) = v17;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = v19;
  *(a9 + 80) = v18;
  *(a9 + 88) = v20;
  *(a9 + 104) = v21;
  *(a9 + 120) = v22;
  *(a9 + 136) = v23;
  *(a9 + 152) = v24;
  *(a9 + 168) = v25;
  *(a9 + 184) = v26;
  *(a9 + 200) = 514;
}

void *Profile.init(player:subscriptions:contact:nickname:contactName:image:artwork:isChallengeable:supportsMultiplayerActivities:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, void *__src, __int16 a11)
{
  v12 = a1[1];
  v13 = *a2;
  *a9 = *a1;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  *(a9 + 24) = *a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = *a8;
  result = memcpy((a9 + 88), __src, 0x70uLL);
  *(a9 + 200) = a11;
  return result;
}

uint64_t static Profile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v44 = *(a1 + 40);
  v46 = *(a1 + 48);
  v49 = *(a1 + 64);
  v50 = *(a1 + 24);
  v39 = *(a1 + 72);
  v40 = *(a1 + 56);
  v41 = *(a1 + 80);
  memcpy(__dst, (a1 + 88), sizeof(__dst));
  v35 = *(a1 + 201);
  v36 = *(a1 + 200);
  v8 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v45 = *(a2 + 48);
  v47 = *(a2 + 56);
  v48 = *(a2 + 64);
  v38 = *(a2 + 72);
  v42 = *(a2 + 80);
  v43 = *(a2 + 40);
  memcpy(v60, (a2 + 88), 0x70uLL);
  v37 = *(a2 + 200);
  v13 = *(a2 + 201);
  v14 = sub_1D853CF50(v4, v5, v8, v9, &qword_1ECA389B8, &qword_1D8590B30);
  result = 0;
  if ((v14 & 1) == 0 || v6 != v11)
  {
    return result;
  }

  if (v7)
  {
    __src[0] = v50;
    __src[1] = v7;
    if (!v12)
    {
      goto LABEL_8;
    }

    v16 = v13;
    v54[0] = v10;
    v54[1] = v12;
    v17 = OUTLINED_FUNCTION_368();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_125_0();
    sub_1D848211C(v19);
    swift_bridgeObjectRetain_n();

    v20 = sub_1D8581208();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_8;
    }

    v16 = v13;
  }

  if (v46)
  {
    v22 = v48;
    v21 = v49;
    v23 = v47;
    if (!v45)
    {
      return 0;
    }

    v24 = v44 == v43 && v46 == v45;
    if (!v24 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v22 = v48;
    v21 = v49;
    v23 = v47;
    if (v45)
    {
      return 0;
    }
  }

  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v25 = v40 == v23 && v21 == v22;
    if (!v25 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (!v41)
  {
    if (!v42)
    {

      goto LABEL_38;
    }

LABEL_8:

    return 0;
  }

  __src[0] = v39;
  __src[1] = v41;
  if (!v42)
  {
    goto LABEL_8;
  }

  v54[0] = v38;
  v54[1] = v42;
  v26 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_231();
  sub_1D848211C(v28);
  swift_bridgeObjectRetain_n();

  v29 = sub_1D8581208();

  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v30 = __dst[0];
  v31 = __dst[1];
  memcpy(v58, &__dst[2], sizeof(v58));
  v33 = v60[0];
  v32 = v60[1];
  memcpy(v57, &v60[2], sizeof(v57));
  if (__dst[1])
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    OUTLINED_FUNCTION_142_3();
    memcpy(v54, __src, sizeof(v54));
    if (v32)
    {
      memcpy(&v53[2], &v60[2], 0x60uLL);
      v53[0] = v33;
      v53[1] = v32;
      sub_1D853D3D0(__dst, v52);
      sub_1D853D3D0(v60, v52);
      sub_1D853D3D0(__src, v52);
      sub_1D847B878();
      v34 = sub_1D8581208();
      memcpy(v51, v53, sizeof(v51));
      sub_1D847B824(v51);
      memcpy(v52, v54, sizeof(v52));
      sub_1D847B824(v52);
      v53[0] = v30;
      v53[1] = v31;
      memcpy(&v53[2], v58, 0x60uLL);
      sub_1D8436E18(v53, &qword_1ECA39200, &qword_1D859A990);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_47;
    }

    memcpy(v53, __src, sizeof(v53));
    sub_1D853D3D0(__dst, v52);
    sub_1D853D3D0(v60, v52);
    sub_1D853D3D0(__src, v52);
    sub_1D847B824(v53);
LABEL_45:
    __src[0] = v30;
    __src[1] = v31;
    memcpy(&__src[2], v58, 0x60uLL);
    __src[14] = v33;
    __src[15] = v32;
    memcpy(v56, v57, sizeof(v56));
    sub_1D8436E18(__src, &qword_1ECA39210, &qword_1D859A9A0);
    return 0;
  }

  if (v60[1])
  {
    sub_1D853D3D0(__dst, __src);
    sub_1D853D3D0(v60, __src);
    goto LABEL_45;
  }

  __src[0] = __dst[0];
  __src[1] = 0;
  OUTLINED_FUNCTION_142_3();
  sub_1D853D3D0(__dst, v54);
  sub_1D853D3D0(v60, v54);
  sub_1D8436E18(__src, &qword_1ECA39200, &qword_1D859A990);
LABEL_47:
  if (v36 == 2)
  {
    if (v37 == 2)
    {
      goto LABEL_52;
    }

    return 0;
  }

  result = 0;
  if (v37 != 2 && ((v37 ^ v36) & 1) == 0)
  {
LABEL_52:
    if (v35 == 2)
    {
      if (v16 == 2)
      {
        return 1;
      }
    }

    else if (v16 != 2 && ((v16 ^ v35) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D853DB6C(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_70() && v4 == 0xE600000000000000;
  if (v5 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == OUTLINED_FUNCTION_111_2() && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_105_3();
      v9 = v5 && a2 == 0xE700000000000000;
      if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == OUTLINED_FUNCTION_110_5() && a2 == 0xE800000000000000;
        if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = a1 == OUTLINED_FUNCTION_125_2() && a2 == v11;
          if (v12 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
            if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v14 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
              if (v14 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v16 = a1 == OUTLINED_FUNCTION_109_3() && a2 == v15;
                if (v16 || (OUTLINED_FUNCTION_7() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_184_0();
                  if (a1 == v18 && v17 == a2)
                  {

                    return 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_369();
                    if (a1)
                    {
                      return 8;
                    }

                    else
                    {
                      return 9;
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

uint64_t sub_1D853DD54()
{
  result = OUTLINED_FUNCTION_70();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_111_2();
      break;
    case 2:
      result = 0x746361746E6F63;
      break;
    case 3:
      result = OUTLINED_FUNCTION_110_5();
      break;
    case 4:
      result = OUTLINED_FUNCTION_125_2();
      break;
    case 5:
      result = 0x6567616D69;
      break;
    case 6:
      result = 0x6B726F77747261;
      break;
    case 7:
      result = OUTLINED_FUNCTION_109_3();
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D853DE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D853DB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D853DE90()
{
  sub_1D853E350();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D853DEC8()
{
  sub_1D853E350();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void Profile.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A6B8, &qword_1D85A38E0);
  OUTLINED_FUNCTION_1(v4);
  v41 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v39 = v0[3];
  v40 = v13;
  v14 = v0[4];
  v37 = v0[5];
  v38 = v14;
  v15 = v0[6];
  v35 = v0[7];
  v36 = v15;
  v16 = v0[8];
  v32 = v0[9];
  v33 = v0[10];
  v34 = v16;
  memcpy(v45, v0 + 11, 0x70uLL);
  v17 = *(v0 + 200);
  v31[0] = *(v0 + 201);
  v31[1] = v17;
  v18 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D853E350();

  sub_1D8581BB8();
  v44[0] = v11;
  v44[1] = v12;
  v43[0] = 0;
  v19 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_160_0();
  sub_1D848211C(v21);
  OUTLINED_FUNCTION_98_3();
  sub_1D8581A58();
  if (v1)
  {

    (*(v41 + 8))(v10, v4);
  }

  else
  {
    v22 = v38;
    v23 = v39;
    v24 = v41;

    v44[0] = v40;
    v43[0] = 1;
    sub_1D853E3A4();
    OUTLINED_FUNCTION_57_2();
    sub_1D8581A58();
    v44[0] = v23;
    v44[1] = v22;
    v43[0] = 2;

    v25 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v27);
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_62_2();
    sub_1D85819E8();

    LOBYTE(v44[0]) = 3;
    OUTLINED_FUNCTION_62_2();
    sub_1D8581998();
    LOBYTE(v44[0]) = 4;
    OUTLINED_FUNCTION_62_2();
    sub_1D8581998();
    v44[0] = v32;
    v44[1] = v33;
    v43[0] = 5;

    v28 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_62_2();
    sub_1D85819E8();

    OUTLINED_FUNCTION_530(v44);
    v43[119] = 6;
    sub_1D853D3D0(v45, v43);
    sub_1D847B920();
    OUTLINED_FUNCTION_57_2();
    sub_1D85819E8();
    memcpy(v43, v44, 0x70uLL);
    sub_1D8436E18(v43, &qword_1ECA39200, &qword_1D859A990);
    v42 = 7;
    OUTLINED_FUNCTION_57_2();
    sub_1D85819A8();
    v42 = 8;
    OUTLINED_FUNCTION_57_2();
    sub_1D85819A8();
    (*(v24 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D853E350()
{
  result = qword_1ECA50F80;
  if (!qword_1ECA50F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA50F80);
  }

  return result;
}

unint64_t sub_1D853E3A4()
{
  result = qword_1ECA3A6C0;
  if (!qword_1ECA3A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A6C0);
  }

  return result;
}

uint64_t Profile.hash(into:)()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v15 = *(v0 + 40);
  v16 = *(v0 + 56);
  v17 = *(v0 + 72);
  v6 = *(v0 + 80);
  v18 = *(v0 + 88);
  v19 = *(v0 + 64);
  v20 = *(v0 + 96);
  v21 = *(v0 + 200);
  v22 = *(v0 + 201);
  __dst[0] = *v0;
  __dst[1] = v1;
  v7 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_146_3(v9);
  OUTLINED_FUNCTION_96_2();
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](v3);
  if (v4)
  {
    __dst[0] = v2;
    __dst[1] = v4;
    OUTLINED_FUNCTION_414();

    v10 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_146_3(v12);
    OUTLINED_FUNCTION_96_2();
    sub_1D85811E8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (v5)
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_9:
    OUTLINED_FUNCTION_402();
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_402();
  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_6:
  OUTLINED_FUNCTION_414();
  sub_1D85812B8();
  if (v6)
  {
LABEL_7:
    __dst[0] = v17;
    __dst[1] = v6;
    OUTLINED_FUNCTION_414();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    OUTLINED_FUNCTION_5();
    sub_1D848211C(v13);
    OUTLINED_FUNCTION_96_2();
    sub_1D85811E8();

    goto LABEL_11;
  }

LABEL_10:
  OUTLINED_FUNCTION_402();
LABEL_11:
  if (v20)
  {
    memcpy(&__src[2], (v0 + 104), 0x60uLL);
    __src[0] = v18;
    __src[1] = v20;
    OUTLINED_FUNCTION_414();
    v24[0] = v18;
    v24[1] = v20;
    memcpy(v25, (v0 + 104), sizeof(v25));
    sub_1D847BC2C(v24, __dst);
    sub_1D847BC88();
    sub_1D85811E8();
    memcpy(__dst, __src, 0x70uLL);
    sub_1D847B824(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (v21 != 2)
  {
    OUTLINED_FUNCTION_414();
  }

  sub_1D8581B78();
  if (v22 != 2)
  {
    OUTLINED_FUNCTION_414();
  }

  return sub_1D8581B78();
}

uint64_t Profile.hashValue.getter()
{
  OUTLINED_FUNCTION_379();
  Profile.hash(into:)();
  return sub_1D8581B98();
}

void Profile.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A6D8, &qword_1D85A38E8);
  OUTLINED_FUNCTION_1(v32);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  v8 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D853E350();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v28 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v9);
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_51_6();
    sub_1D8581958();
    v27 = v35;
    sub_1D853ED40();
    OUTLINED_FUNCTION_51_6();
    sub_1D8581958();
    v26 = v34;
    v10 = v34;
    v11 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v13);
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_51_6();
    sub_1D85818E8();
    v14 = v34;
    v31 = v35;
    OUTLINED_FUNCTION_51_6();
    v25 = sub_1D8581898();
    v30 = v15;
    LOBYTE(v34) = 4;
    OUTLINED_FUNCTION_51_6();
    v24 = sub_1D8581898();
    v29 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    LOBYTE(v33[0]) = 5;
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v17);
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_51_6();
    sub_1D85818E8();
    v23 = v14;
    v18 = v34;
    v19 = v35;
    sub_1D847BCDC();
    OUTLINED_FUNCTION_51_6();
    sub_1D85818E8();
    memcpy(v47, v46, sizeof(v47));
    LOBYTE(v34) = 7;
    OUTLINED_FUNCTION_51_6();
    v48 = sub_1D85818A8();
    OUTLINED_FUNCTION_51_6();
    v20 = sub_1D85818A8();
    v21 = OUTLINED_FUNCTION_100_3();
    v22(v21);
    v33[0] = v26;
    v33[1] = v27;
    v33[2] = v10;
    v33[3] = v23;
    v33[4] = v31;
    v33[5] = v25;
    v33[6] = v30;
    v33[7] = v24;
    v33[8] = v29;
    v33[9] = v18;
    v33[10] = v19;
    OUTLINED_FUNCTION_530(&v33[11]);
    LOBYTE(v33[25]) = v48;
    BYTE1(v33[25]) = v20;
    memcpy(v28, v33, 0xCAuLL);
    sub_1D853ED94(v33, &v34);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v34 = v26;
    v35 = v27;
    v36 = v10;
    v37 = v23;
    v38 = v31;
    v39 = v25;
    v40 = v30;
    v41 = v24;
    v42 = v29;
    v43 = v18;
    v44 = v19;
    OUTLINED_FUNCTION_530(v45);
    v45[112] = v48;
    v45[113] = v20;
    sub_1D853EDCC(&v34);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D853ED04()
{
  sub_1D8581B58();
  Profile.hash(into:)();
  return sub_1D8581B98();
}

unint64_t sub_1D853ED40()
{
  result = qword_1ECA3A6E0;
  if (!qword_1ECA3A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A6E0);
  }

  return result;
}

uint64_t static ParticipantInteraction.Mode.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (a1[2])
  {
    if (*(a2 + 16))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_183();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_151();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_151();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_183();
    sub_1D84C55F4();
    v8 = OUTLINED_FUNCTION_151();
    v7 = sub_1D853CF50(v8, v9, v5, v4, v10, v11);
    OUTLINED_FUNCTION_151();
    sub_1D84C5620();
    OUTLINED_FUNCTION_183();
    sub_1D84C5620();
    OUTLINED_FUNCTION_183();
    sub_1D84C5620();
    OUTLINED_FUNCTION_151();
    sub_1D84C5620();
    return v7 & 1;
  }

  OUTLINED_FUNCTION_151();
  sub_1D84C55F4();
  OUTLINED_FUNCTION_183();
  sub_1D84C55F4();
  OUTLINED_FUNCTION_151();
  sub_1D84C5620();
  OUTLINED_FUNCTION_183();
  sub_1D84C5620();
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_1D853EF98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xE900000000000065;
  if (v4 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C7069746C756DLL && a2 == 0xEB00000000726579)
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

uint64_t sub_1D853F04C(char a1)
{
  if (a1)
  {
    return 0x616C7069746C756DLL;
  }

  else
  {
    return 0x676E656C6C616863;
  }
}

uint64_t sub_1D853F090(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D853F104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D853F090(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D853F130()
{
  sub_1D853F66C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D853F168()
{
  sub_1D853F66C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D853F1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D853EF98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D853F1D8()
{
  sub_1D853F5C4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D853F210()
{
  sub_1D853F5C4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D853F248()
{
  sub_1D853F618();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D853F280()
{
  sub_1D853F618();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ParticipantInteraction.Mode.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A6F0, &qword_1D85A38F0);
  v5 = OUTLINED_FUNCTION_1(v4);
  v39 = v6;
  v40 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_160();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A6F8, &qword_1D85A38F8);
  v11 = OUTLINED_FUNCTION_1(v10);
  v37 = v12;
  v38 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A700, &unk_1D85A3900);
  OUTLINED_FUNCTION_1(v43);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  v25 = v0[1];
  v41 = *v0;
  v42 = v25;
  v26 = *(v0 + 16);
  v27 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D853F5C4();
  sub_1D8581BB8();
  if (v26)
  {
    LOBYTE(v44) = 1;
    sub_1D853F618();
    OUTLINED_FUNCTION_519_0();
    v44 = v41;
    v45 = v42;
    v28 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v30);
    v31 = v40;
    sub_1D8581A58();
    (*(v39 + 8))(v1, v31);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_1D853F66C();
    OUTLINED_FUNCTION_519_0();
    v44 = v41;
    v45 = v42;
    v32 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v34);
    v35 = v38;
    sub_1D8581A58();
    (*(v37 + 8))(v17, v35);
  }

  (*(v19 + 8))(v24, v26);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D853F5C4()
{
  result = qword_1ECA50F88;
  if (!qword_1ECA50F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA50F88);
  }

  return result;
}

unint64_t sub_1D853F618()
{
  result = qword_1ECA50F90;
  if (!qword_1ECA50F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA50F90);
  }

  return result;
}

unint64_t sub_1D853F66C()
{
  result = qword_1ECA50F98;
  if (!qword_1ECA50F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA50F98);
  }

  return result;
}

uint64_t ParticipantInteraction.Mode.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  MEMORY[0x1DA7191F0]((v0[2] & 1) != 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
  OUTLINED_FUNCTION_5();
  sub_1D848211C(v3);
  OUTLINED_FUNCTION_161();
  return sub_1D85811E8();
}

uint64_t ParticipantInteraction.Mode.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1D8581B58();
  MEMORY[0x1DA7191F0]((v3 & 1) != 0);
  v4 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_231();
  sub_1D848211C(v6);
  sub_1D85811E8();
  return sub_1D8581B98();
}

void ParticipantInteraction.Mode.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v50 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A708, &qword_1D85A3910);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A710, &qword_1D85A3918);
  OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_160();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A718, &unk_1D85A3920);
  OUTLINED_FUNCTION_1(v13);
  v49 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_128();
  v18 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D853F5C4();
  sub_1D8581BA8();
  if (v0)
  {
    goto LABEL_8;
  }

  v53 = v3;
  v19 = sub_1D8581968();
  v23 = sub_1D84BACA0(v19, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v29 = sub_1D85817C8();
    swift_allocError();
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v31 = &type metadata for ParticipantInteraction.Mode;
    sub_1D8581888();
    sub_1D85817B8();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = OUTLINED_FUNCTION_166_1();
    v34(v33);
    v3 = v53;
LABEL_8:
    v35 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_284_0();
    return;
  }

  if (v21 < (v22 >> 1))
  {
    v24 = *(v20 + v21);
    sub_1D84BAE48(v21 + 1, v22 >> 1, v23, v20, v21, v22);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      if (v24)
      {
        LOBYTE(v51) = 1;
        sub_1D853F618();
        OUTLINED_FUNCTION_140_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
        OUTLINED_FUNCTION_3();
        sub_1D848211C(v36);
        sub_1D8581958();
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_127_3();
        v41(v40);
        (*(v49 + 8))(v1, v13);
        v42 = v51;
        v43 = v52;
        v44 = v50;
      }

      else
      {
        v44 = v50;
        LOBYTE(v51) = 0;
        sub_1D853F66C();
        OUTLINED_FUNCTION_140_0();
        v37 = OUTLINED_FUNCTION_151();
        __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
        OUTLINED_FUNCTION_3();
        sub_1D848211C(v39);
        sub_1D8581958();
        swift_unknownObjectRelease();
        v45 = OUTLINED_FUNCTION_131_1();
        v46(v45);
        v47 = OUTLINED_FUNCTION_166_1();
        v48(v47);
        v42 = v51;
        v43 = v52;
      }

      *v44 = v42;
      *(v44 + 8) = v43;
      *(v44 + 16) = v24;
      v35 = v53;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1D853FDA4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D8581B58();
  ParticipantInteraction.Mode.hash(into:)();
  return sub_1D8581B98();
}

uint64_t ParticipantInteraction.date.getter()
{
  OUTLINED_FUNCTION_393_0();
  v0 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_194();

  return v4(v3);
}

uint64_t ParticipantInteraction.mode.getter()
{
  OUTLINED_FUNCTION_393_0();
  v2 = v1 + *(type metadata accessor for ParticipantInteraction() + 20);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;

  return sub_1D84C55F4();
}

uint64_t ParticipantInteraction.player.getter()
{
  OUTLINED_FUNCTION_393_0();
  v2 = (v1 + *(type metadata accessor for ParticipantInteraction() + 24));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t ParticipantInteraction.contact.getter()
{
  OUTLINED_FUNCTION_393_0();
  v2 = (v1 + *(type metadata accessor for ParticipantInteraction() + 28));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

int *ParticipantInteraction.init(date:mode:player:contact:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v12);
  v14 = *(v13 + 32);
  v15 = OUTLINED_FUNCTION_151();
  v16(v15);
  result = type metadata accessor for ParticipantInteraction();
  v18 = a4 + result[5];
  *v18 = v5;
  *(v18 + 8) = v6;
  *(v18 + 16) = v7;
  v19 = (a4 + result[6]);
  *v19 = v8;
  v19[1] = v9;
  v20 = (a4 + result[7]);
  *v20 = v10;
  v20[1] = v11;
  return result;
}

BOOL static ParticipantInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ParticipantInteraction();
  v5 = v4[5];
  v6 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v25 = *(a1 + v5);
  v26 = v6;
  v27 = v7;
  v8 = (a2 + v5);
  v9 = v8[1];
  v10 = *(v8 + 16);
  v22 = *v8;
  v23 = v9;
  v24 = v10;
  OUTLINED_FUNCTION_368();
  sub_1D84C55F4();
  sub_1D84C55F4();
  v11 = static ParticipantInteraction.Mode.== infix(_:_:)(&v25, &v22);
  sub_1D84C5620();
  OUTLINED_FUNCTION_368();
  sub_1D84C5620();
  if ((v11 & 1) == 0 || (sub_1D853CF50(*(a1 + v4[6]), *(a1 + v4[6] + 8), *(a2 + v4[6]), *(a2 + v4[6] + 8), &qword_1ECA389B8, &qword_1D8590B30) & 1) == 0)
  {
    return 0;
  }

  v12 = v4[7];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (!v14)
  {
    if (!v16)
    {

      return 1;
    }

    v20 = v15[1];

    goto LABEL_11;
  }

  v17 = *v15;
  v25 = *v13;
  v26 = v14;
  if (!v16)
  {

LABEL_11:

    return 0;
  }

  v22 = v17;
  v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
  OUTLINED_FUNCTION_125_0();
  sub_1D848211C(v18);
  swift_bridgeObjectRetain_n();

  v19 = sub_1D8581208();

  return (v19 & 1) != 0;
}

uint64_t sub_1D85401D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701080941 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == OUTLINED_FUNCTION_70() && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_105_3();
        if (v3 && a2 == 0xE700000000000000)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_369();
          if (a1)
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

uint64_t sub_1D85402E4(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 1701080941;
      break;
    case 2:
      result = OUTLINED_FUNCTION_70();
      break;
    case 3:
      result = 0x746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8540364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D85401D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D854038C()
{
  sub_1D8541388();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D85403C4()
{
  sub_1D8541388();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ParticipantInteraction.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A720, &qword_1D85A3930);
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
  sub_1D8541388();
  sub_1D8581BB8();
  LOBYTE(v29) = 0;
  sub_1D8580EA8();
  OUTLINED_FUNCTION_9_5();
  sub_1D8541958(v17);
  OUTLINED_FUNCTION_232();
  sub_1D8581A58();
  if (!v1)
  {
    v18 = type metadata accessor for ParticipantInteraction();
    v19 = (v2 + v18[5]);
    v20 = v19[1];
    v21 = *(v19 + 16);
    v29 = *v19;
    v30 = v20;
    v31 = v21;
    sub_1D84C55F4();
    sub_1D85413DC();
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    sub_1D84C5620();
    v22 = (v2 + v18[6]);
    v23 = v22[1];
    v29 = *v22;
    v30 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_4();
    sub_1D848211C(v24);
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();

    v25 = (v2 + v18[7]);
    v26 = v25[1];
    v29 = *v25;
    v30 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
    OUTLINED_FUNCTION_4();
    sub_1D848211C(v27);
    OUTLINED_FUNCTION_97_1();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ParticipantInteraction.hash(into:)()
{
  sub_1D8580EA8();
  OUTLINED_FUNCTION_9_5();
  sub_1D8541958(v1);
  sub_1D85811E8();
  v2 = type metadata accessor for ParticipantInteraction();
  v3 = (v0 + v2[5]);
  v5 = *v3;
  v4 = v3[1];
  MEMORY[0x1DA7191F0]((v3[2] & 1) != 0);
  v6 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_146_3(v8);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  v9 = (v0 + v2[6]);
  v16 = *v9;
  v18 = v9[1];
  v10 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_146_3(v12);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  v13 = (v0 + v2[7]);
  if (!v13[1])
  {
    return OUTLINED_FUNCTION_402();
  }

  v17 = *v13;
  v19 = v13[1];
  OUTLINED_FUNCTION_414();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
  OUTLINED_FUNCTION_5();
  sub_1D848211C(v14);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
}

uint64_t ParticipantInteraction.hashValue.getter()
{
  OUTLINED_FUNCTION_379();
  ParticipantInteraction.hash(into:)();
  return sub_1D8581B98();
}

void ParticipantInteraction.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v51 = v4;
  v5 = sub_1D8580EA8();
  v6 = OUTLINED_FUNCTION_1(v5);
  v53 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A730, &qword_1D85A3938);
  OUTLINED_FUNCTION_1(v56);
  v52 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_160();
  v15 = type metadata accessor for ParticipantInteraction();
  v16 = OUTLINED_FUNCTION_4_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v3[3];
  v21 = v3[4];
  v23 = OUTLINED_FUNCTION_81_4();
  OUTLINED_FUNCTION_260(v23, v24);
  sub_1D8541388();
  v55 = v1;
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v50 = v15;
    v25 = v20;
    v26 = v53;
    LOBYTE(v57) = 0;
    OUTLINED_FUNCTION_9_5();
    sub_1D8541958(v27);
    sub_1D8581958();
    v28 = *(v26 + 32);
    v29 = OUTLINED_FUNCTION_69_1();
    v30(v29);
    sub_1D8541430();
    sub_1D8581958();
    v31 = v58;
    v32 = v50;
    v33 = &v25[*(v50 + 20)];
    *v33 = v57;
    v33[16] = v31;
    v49 = 0;
    v34 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    v54 = v25;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    v36 = v49;
    sub_1D848211C(v37);
    OUTLINED_FUNCTION_88_1();
    sub_1D8581958();
    if (v36)
    {
      v38 = OUTLINED_FUNCTION_108_5();
      v39(v38);
      v40 = v54;
      __swift_destroy_boxed_opaque_existential_1(v3);
      (*(v26 + 8))(v40, v5);
    }

    else
    {
      v41 = *(&v57 + 1);
      v42 = &v54[*(v32 + 24)];
      *v42 = v57;
      *(v42 + 1) = v41;
      v43 = OUTLINED_FUNCTION_167();
      __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_160_0();
      sub_1D848211C(v45);
      OUTLINED_FUNCTION_88_1();
      sub_1D85818E8();
      v46 = OUTLINED_FUNCTION_108_5();
      v47(v46);
      v48 = v54;
      *&v54[*(v32 + 28)] = v57;
      sub_1D8541484(v48, v51);
      __swift_destroy_boxed_opaque_existential_1(v3);
      sub_1D85414E8(v48);
    }
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8540CFC()
{
  sub_1D8581B58();
  ParticipantInteraction.hash(into:)();
  return sub_1D8581B98();
}

uint64_t SuggestedNickname.nickname.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t static SuggestedNickname.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_205_0();
  }

  else
  {
    return sub_1D8581AB8();
  }
}

uint64_t sub_1D8540D98()
{
  v1 = OUTLINED_FUNCTION_110_5();
  if (v3 == v1 && v2 == 0xE800000000000000)
  {

    v5 = 0;
  }

  else
  {
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    v5 = v0 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1D8540E18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8540D98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8540E44()
{
  sub_1D8541544();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8540E7C()
{
  sub_1D8541544();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SuggestedNickname.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A740, &qword_1D85A3940);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_128();
  v9 = *v0;
  v10 = v0[1];
  v11 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D8541544();
  sub_1D8581BB8();
  sub_1D8581A08();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_233();
  v14(v13);
  OUTLINED_FUNCTION_284_0();
}

uint64_t SuggestedNickname.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D85812B8();
}

uint64_t SuggestedNickname.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_379();
  OUTLINED_FUNCTION_231();
  sub_1D85812B8();
  return sub_1D8581B98();
}

void SuggestedNickname.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A748, &qword_1D85A3948);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_128();
  v11 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D8541544();
  sub_1D8581BA8();
  if (!v0)
  {
    v12 = sub_1D8581908();
    v14 = v13;
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_233();
    v17(v16);
    *v4 = v12;
    v4[1] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8541184()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D8581B58();
  OUTLINED_FUNCTION_231();
  sub_1D85812B8();
  return sub_1D8581B98();
}

uint64_t type metadata accessor for ParticipantInteraction()
{
  result = qword_1ECA51FB0;
  if (!qword_1ECA51FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8541388()
{
  result = qword_1ECA50FA0;
  if (!qword_1ECA50FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA50FA0);
  }

  return result;
}

unint64_t sub_1D85413DC()
{
  result = qword_1ECA3A728;
  if (!qword_1ECA3A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A728);
  }

  return result;
}

unint64_t sub_1D8541430()
{
  result = qword_1ECA3A738;
  if (!qword_1ECA3A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A738);
  }

  return result;
}

uint64_t sub_1D8541484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D85414E8(uint64_t a1)
{
  v2 = type metadata accessor for ParticipantInteraction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8541544()
{
  result = qword_1ECA50FA8[0];
  if (!qword_1ECA50FA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA50FA8);
  }

  return result;
}

unint64_t sub_1D8541644(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  result = sub_1D8541958(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8541700()
{
  result = qword_1ECA3A760;
  if (!qword_1ECA3A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A760);
  }

  return result;
}

unint64_t sub_1D8541758()
{
  result = qword_1ECA3A768;
  if (!qword_1ECA3A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A768);
  }

  return result;
}

unint64_t sub_1D85417B0()
{
  result = qword_1ECA3A770;
  if (!qword_1ECA3A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A770);
  }

  return result;
}

unint64_t sub_1D8541808()
{
  result = qword_1ECA3A778;
  if (!qword_1ECA3A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A778);
  }

  return result;
}

unint64_t sub_1D8541860()
{
  result = qword_1ECA3A780;
  if (!qword_1ECA3A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A780);
  }

  return result;
}

unint64_t sub_1D85418B8()
{
  result = qword_1ECA3A788;
  if (!qword_1ECA3A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A788);
  }

  return result;
}

unint64_t sub_1D8541958(uint64_t a1)
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

unint64_t sub_1D85419A0()
{
  result = qword_1ECA3A798;
  if (!qword_1ECA3A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A798);
  }

  return result;
}

uint64_t dispatch thunk of ProfileServiceProtocol.describeProfiles(players:)()
{
  OUTLINED_FUNCTION_204();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 8);
  OUTLINED_FUNCTION_130_1();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_176(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_191(v11);

  return v14(v5, v3, v1);
}

uint64_t dispatch thunk of ProfileServiceProtocol.listInteractions(player:participants:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  OUTLINED_FUNCTION_130_1();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_176(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_191(v15);

  return v18(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ProfileServiceProtocol.listSuggestedNicknames(player:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  OUTLINED_FUNCTION_130_1();
  v13 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_191(v9);
  v11 = OUTLINED_FUNCTION_233();

  return v13(v11);
}

uint64_t sub_1D8541DB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 202))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8541DF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 202) = 1;
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

    *(result + 202) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Profile.Subscriptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_226(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_192();
  }
}

uint64_t storeEnumTagSinglePayload for Profile.Subscriptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_1D8541EF8()
{
  sub_1D8580EA8();
  if (v0 <= 0x3F)
  {
    sub_1D8541FF4(319, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940, type metadata accessor for Ref);
    if (v1 <= 0x3F)
    {
      sub_1D8541FF4(319, &qword_1ECA3A7A0, &qword_1ECA3A368, &qword_1D85A22C0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8541FF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1D8542074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_277_0(result, 1);
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

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_321(result, a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParticipantInteraction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ParticipantInteraction.Mode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s12GameServices17SuggestedNicknameV10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Profile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for Profile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_262(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8542470()
{
  result = qword_1ECA520C0[0];
  if (!qword_1ECA520C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA520C0);
  }

  return result;
}

unint64_t sub_1D85424C8()
{
  result = qword_1ECA522D0[0];
  if (!qword_1ECA522D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA522D0);
  }

  return result;
}

unint64_t sub_1D8542520()
{
  result = qword_1ECA524E0[0];
  if (!qword_1ECA524E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA524E0);
  }

  return result;
}

unint64_t sub_1D8542578()
{
  result = qword_1ECA526F0[0];
  if (!qword_1ECA526F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA526F0);
  }

  return result;
}

unint64_t sub_1D85425D0()
{
  result = qword_1ECA52900[0];
  if (!qword_1ECA52900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA52900);
  }

  return result;
}

unint64_t sub_1D8542628()
{
  result = qword_1ECA52B10[0];
  if (!qword_1ECA52B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA52B10);
  }

  return result;
}

unint64_t sub_1D8542680()
{
  result = qword_1ECA52C20;
  if (!qword_1ECA52C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA52C20);
  }

  return result;
}

unint64_t sub_1D85426D8()
{
  result = qword_1ECA52C28[0];
  if (!qword_1ECA52C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA52C28);
  }

  return result;
}

unint64_t sub_1D8542730()
{
  result = qword_1ECA52CB0;
  if (!qword_1ECA52CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA52CB0);
  }

  return result;
}

unint64_t sub_1D8542788()
{
  result = qword_1ECA52CB8[0];
  if (!qword_1ECA52CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA52CB8);
  }

  return result;
}

unint64_t sub_1D85427E0()
{
  result = qword_1ECA52D40;
  if (!qword_1ECA52D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA52D40);
  }

  return result;
}

unint64_t sub_1D8542838()
{
  result = qword_1ECA52D48[0];
  if (!qword_1ECA52D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA52D48);
  }

  return result;
}

unint64_t sub_1D8542890()
{
  result = qword_1ECA52DD0;
  if (!qword_1ECA52DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA52DD0);
  }

  return result;
}

unint64_t sub_1D85428E8()
{
  result = qword_1ECA52DD8[0];
  if (!qword_1ECA52DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA52DD8);
  }

  return result;
}

unint64_t sub_1D8542940()
{
  result = qword_1ECA52E60;
  if (!qword_1ECA52E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA52E60);
  }

  return result;
}

unint64_t sub_1D8542998()
{
  result = qword_1ECA52E68[0];
  if (!qword_1ECA52E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA52E68);
  }

  return result;
}

unint64_t sub_1D85429F0()
{
  result = qword_1ECA52EF0;
  if (!qword_1ECA52EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA52EF0);
  }

  return result;
}

unint64_t sub_1D8542A48()
{
  result = qword_1ECA52EF8[0];
  if (!qword_1ECA52EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA52EF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_88_1()
{
  result = v0;
  v4 = *(v1 - 128);
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_100_3()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_108_5()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 120);
  return result;
}

uint64_t sub_1D8542C5C(uint64_t result)
{
  v8 = 0;
  v9 = 0xE000000000000000;
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      if (v2 == v1)
      {
        return v8;
      }

      if (__OFADD__(v2++, 1))
      {
        break;
      }

      do
      {
        v7 = 0;
        MEMORY[0x1DA719830](&v7, 8);
      }

      while (((20 * v7) & 0xFFFFFFFFFFFFFFF0) == 0);
      v4 = &unk_1F5396060 + 16 * ((v7 * 0x14uLL) >> 64);
      v5 = *(v4 + 4);
      v6 = *(v4 + 5);

      MEMORY[0x1DA718980](v5, v6);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8542D30(uint64_t a1)
{
  while (1)
  {
    v2 = sub_1D8542C5C(a1);
    v4 = v3;
    v5 = sub_1D8542C5C(a1);
    v7 = v6;
    v20 = v2;
    v21 = v4;
    MEMORY[0x1DA718990](45, 0xE100000000000000);
    MEMORY[0x1DA718990](v5, v7);

    v9 = v20;
    v8 = v21;
    v10 = static PartyCodeGenerator.isValidCode(_:)(v20, v21);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v20 = 45;
    v21 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v10);
    v19[2] = &v20;

    v11 = OUTLINED_FUNCTION_1_6();
    v20 = sub_1D84E6E0C(v11, v12, v13, v19, v9, v8, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A7A8, &qword_1D85A4B98);
    OUTLINED_FUNCTION_0_11();
    sub_1D844A16C(&qword_1ECA3A7B0, &qword_1ECA3A7A8, &qword_1D85A4B98);
    sub_1D854360C();
    sub_1D85813B8();

    v15 = sub_1D85433B8();
    v17 = v16;

    if ((v17 & 1) != 0 || v15 > 1)
    {
      break;
    }
  }

  return v9;
}

uint64_t static PartyCodeGenerator.convertedInteger(from:)(uint64_t a1, unint64_t a2)
{
  v4 = static PartyCodeGenerator.isValidCode(_:)(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v15[0] = 45;
  v15[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v4);
  v14[2] = v15;

  v5 = OUTLINED_FUNCTION_1_6();
  v15[0] = sub_1D84E6E0C(v5, v6, v7, v14, a1, a2, v8);
  v9 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_0_11();
  sub_1D844A16C(v11, &qword_1ECA3A7A8, &qword_1D85A4B98);
  sub_1D854360C();
  sub_1D85813B8();

  OUTLINED_FUNCTION_253();
  v12 = sub_1D85433B8();

  return v12;
}

uint64_t static PartyCodeGenerator.isValidCode(_:)(uint64_t a1, unint64_t a2)
{
  v4 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  sub_1D844A16C(&qword_1ECA3A7C0, &qword_1ECA39CF0, &qword_1D85A4BA0);
  v6 = sub_1D85811F8();
  v8 = v7;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1D8581768();
  MEMORY[0x1DA718990](0xD000000000000020, 0x80000001D8588150);
  MEMORY[0x1DA718990](v6, v8);
  MEMORY[0x1DA718990](0x2D297D362C327B5DLL, 0xEC0000005B3A3F28);
  MEMORY[0x1DA718990](v6, v8);

  MEMORY[0x1DA718990](0x29297D362C327B5DLL, 0xE900000000000024);
  v9 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v10 = OUTLINED_FUNCTION_253();
  v12 = sub_1D8543530(v10, v11, 0);
  v14 = v12;
  if (!v12)
  {
    return 0;
  }

  v38 = a1;
  v39 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A7C8, &qword_1D85A4BA8);
  sub_1D844A16C(&qword_1ECA3A7D0, &qword_1ECA3A7C8, &qword_1D85A4BA8);
  sub_1D8534D90();
  v15 = sub_1D85816E8();
  v17 = v16;
  v18 = sub_1D8581218();
  v19 = [v14 firstMatchInString:v18 options:0 range:{v15, v17, 15}];

  if (!v19)
  {

    return 0;
  }

  v38 = 45;
  v39 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v20);
  v37[2] = &v38;

  v21 = OUTLINED_FUNCTION_1_6();
  v25 = sub_1D84E6E0C(v21, v22, v23, v37, a1, a2, v24);
  v26 = v25;
  if (v25[2] != 2)
  {

    return 0;
  }

  v27 = v25[4];
  v28 = v25[5];
  v29 = v25[6];
  v30 = v25[7];

  v31 = sub_1D8581708();

  if (v26[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v32 = v26[8];
    v33 = v26[9];
    v34 = v26[10];
    v35 = v26[11];

    v36 = sub_1D8581708();

    return v31 == v36;
  }

  return result;
}

uint64_t sub_1D85433B8()
{
  if (sub_1D85812C8() > 12)
  {
    return 0;
  }

  else
  {

    v0 = 0;
    while (1)
    {
      v1 = sub_1D8581318();
      if (!v2)
      {
        goto LABEL_9;
      }

      v3 = sub_1D85434A4(v1, v2, &unk_1F53961C0);
      v5 = v4;

      if (v5)
      {

        return 0;
      }

      v7 = 20 * v0;
      if ((v0 * 20) >> 64 != (20 * v0) >> 63)
      {
        break;
      }

      v0 = v7 + v3;
      if (__OFADD__(v7, v3))
      {
        __break(1u);
LABEL_9:

        return v0;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D85434A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1D8581AB8() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

id sub_1D8543530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D8581218();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1D8580D38();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t sub_1D854360C()
{
  result = qword_1ECA3A7B8;
  if (!qword_1ECA3A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A7B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PartyCodeGenerator(_BYTE *result, int a2, int a3)
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

uint64_t $DistributedAssetServiceProtocol.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  a1[1] = v2;
}

void *static $DistributedAssetServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedAssetServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_1_7();
  sub_1D8545B58(v5);
  OUTLINED_FUNCTION_0_12();
  sub_1D8545B58(v6);
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

uint64_t $DistributedAssetServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_1_7();
  sub_1D8545B58(v1);
  sub_1D8580F68();
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedAssetServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 128);

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedAssetServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D854392C()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedAssetServiceProtocol();
  OUTLINED_FUNCTION_0_12();
  sub_1D8545B58(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedAssetServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedAssetServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedAssetServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedAssetServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_1_7();
  sub_1D8545B58(v3);
  OUTLINED_FUNCTION_0_12();
  sub_1D8545B58(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v7;
  v1[15] = v8;
  v6 = v1[16];

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedAssetServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedAssetServiceProtocol();
    OUTLINED_FUNCTION_0_12();
    sub_1D8545B58(v1);
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D8543B70@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedAssetServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8543BFC()
{
  v1 = *v0;
  type metadata accessor for $DistributedAssetServiceProtocol();
  OUTLINED_FUNCTION_0_12();
  sub_1D8545B58(v2);
  return sub_1D8580FC8();
}

uint64_t sub_1D8543C64()
{
  v2 = *v0;
  sub_1D8581B58();
  type metadata accessor for $DistributedAssetServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D8543CE0(uint64_t a1, double a2, double a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D84C2588;

  return sub_1D8543DAC(a1, a2, a3);
}

uint64_t sub_1D8543DAC(uint64_t a1, double a2, double a3)
{
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a1;
  v5 = sub_1D8581018();
  *(v4 + 104) = v5;
  v6 = *(v5 - 8);
  *(v4 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A7E8, &unk_1D85A4C00);
  *(v4 + 128) = v8;
  v9 = *(v8 - 8);
  *(v4 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A150, &qword_1D859F178);
  *(v4 + 152) = v11;
  v12 = *(v11 - 8);
  *(v4 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8543F44, 0, 0);
}

uint64_t sub_1D8543F44()
{
  OUTLINED_FUNCTION_177();
  v1 = *(v0 + 96);
  if (swift_distributed_actor_is_remote())
  {
    v2 = *(v0 + 96);
    *(v0 + 176) = $DistributedAssetServiceProtocol.actorSystem.getter();
    GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
    type metadata accessor for $DistributedAssetServiceProtocol();
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)();
    v9 = *(v0 + 168);
    *(v0 + 56) = *(v0 + 72);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A158, &unk_1D859F180);
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_30();
    sub_1D8545650(v10);
    OUTLINED_FUNCTION_32();
    sub_1D8545650(v11);
    OUTLINED_FUNCTION_31();
    v12 = *(v0 + 144);
    *(v0 + 40) = *(v0 + 80);
    type metadata accessor for CGSize();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_4_5();
    sub_1D8545B58(v13);
    OUTLINED_FUNCTION_7_6(&unk_1ECA3A7F8);
    OUTLINED_FUNCTION_31();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A170, &unk_1D859F190);
    sub_1D84FC0C0();
    sub_1D84FC21C();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v15)
    {
      v17 = *(v0 + 160);
      v16 = *(v0 + 168);
      v19 = *(v0 + 144);
      v18 = *(v0 + 152);
      v20 = *(v0 + 128);
      v21 = *(v0 + 136);

      v22 = *(v21 + 8);
      v23 = OUTLINED_FUNCTION_69_1();
      v24(v23);
      v25 = *(v17 + 8);
      v26 = OUTLINED_FUNCTION_150();
      v27(v26);
      OUTLINED_FUNCTION_331();

      v28 = *(v0 + 168);
      v29 = *(v0 + 144);
      v30 = *(v0 + 120);

      OUTLINED_FUNCTION_146();

      return v31();
    }

    else
    {
      v32 = *(v0 + 120);
      OUTLINED_FUNCTION_31_4();
      v33 = swift_task_alloc();
      *(v0 + 192) = v33;
      OUTLINED_FUNCTION_0_12();
      sub_1D8545B58(v34);
      *v33 = v0;
      v33[1] = sub_1D85444F0;
      v35 = *(v0 + 120);
      v36 = *(v0 + 96);
      OUTLINED_FUNCTION_173();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_1D854438C;
    v4 = *(v0 + 96);
    v5.n128_u64[0] = *(v0 + 80);
    v6.n128_u64[0] = *(v0 + 88);
    v7 = *(v0 + 72);

    return sub_1D8543DAC(v7, v5, v6);
  }
}

uint64_t sub_1D854438C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  OUTLINED_FUNCTION_37();
  *v7 = v6;

  v8 = v4[21];
  v9 = v4[18];
  v10 = v4[15];

  v12 = *(v6 + 8);
  if (!v1)
  {
    v11 = a1;
  }

  return v12(v11);
}

uint64_t sub_1D85444F0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = *(v2 + 192);
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D85445F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_69_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_69();
  v18(v17);
  v19 = OUTLINED_FUNCTION_68();
  v20(v19);
  OUTLINED_FUNCTION_331();

  v21 = v12[8];
  v22 = v12[21];
  v23 = v12[18];
  v24 = v12[15];

  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_173();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1D85446C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_69_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_69();
  v18(v17);
  v19 = OUTLINED_FUNCTION_68();
  v20(v19);
  OUTLINED_FUNCTION_331();

  v21 = v12[25];
  v22 = v12[21];
  v23 = v12[18];
  v24 = v12[15];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t DistributedAssetServiceProtocol<>.getImageData(images:size:)()
{
  OUTLINED_FUNCTION_148();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v1[11] = v7;
  v8 = sub_1D8581018();
  v1[18] = v8;
  OUTLINED_FUNCTION_39(v8);
  v1[19] = v9;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A7E8, &unk_1D85A4C00);
  v1[21] = v12;
  OUTLINED_FUNCTION_39(v12);
  v1[22] = v13;
  v15 = *(v14 + 64) + 15;
  v1[23] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A150, &qword_1D859F178);
  v1[24] = v16;
  OUTLINED_FUNCTION_39(v16);
  v1[25] = v17;
  v19 = *(v18 + 64) + 15;
  v1[26] = swift_task_alloc();
  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  v3 = sub_1D8580FA8();

  return MEMORY[0x1EEE6DFA0](sub_1D85459D8, v3, v2);
}

uint64_t sub_1D8544904()
{
  v1 = *(v0 + 136);
  if (swift_distributed_actor_is_remote())
  {
    v2 = *(v0 + 112);
    v3 = *(*(v0 + 120) + 8);
    sub_1D8580F98();
    *(v0 + 216) = *(v0 + 64);
    GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
    GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)();
    v14 = *(v0 + 208);
    *(v0 + 72) = *(v0 + 88);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A158, &unk_1D859F180);
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_30();
    sub_1D8545650(v15);
    OUTLINED_FUNCTION_32();
    sub_1D8545650(v16);
    OUTLINED_FUNCTION_31();
    v17 = *(v0 + 184);
    *(v0 + 40) = *(v0 + 96);
    type metadata accessor for CGSize();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_4_5();
    sub_1D8545B58(v18);
    OUTLINED_FUNCTION_7_6(&unk_1ECA3A7F8);
    OUTLINED_FUNCTION_31();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A170, &unk_1D859F190);
    sub_1D84FC0C0();
    sub_1D84FC21C();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v20)
    {
      v22 = *(v0 + 200);
      v21 = *(v0 + 208);
      v24 = *(v0 + 184);
      v23 = *(v0 + 192);
      v25 = *(v0 + 168);
      v26 = *(v0 + 176);

      v27 = *(v26 + 8);
      v28 = OUTLINED_FUNCTION_69_1();
      v29(v28);
      v30 = *(v22 + 8);
      v31 = OUTLINED_FUNCTION_150();
      v32(v31);
      OUTLINED_FUNCTION_331();

      v33 = *(v0 + 208);
      v34 = *(v0 + 184);
      v35 = *(v0 + 160);

      OUTLINED_FUNCTION_146();

      return v36();
    }

    else
    {
      v37 = *(v0 + 160);
      OUTLINED_FUNCTION_31_4();
      v38 = swift_task_alloc();
      *(v0 + 224) = v38;
      *v38 = v0;
      v38[1] = sub_1D8544DBC;
      v39 = *(v0 + 160);
      v40 = *(v0 + 136);
      v41 = *(v0 + 112);

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v4 = *(v0 + 128);
    *(v0 + 56) = *(v0 + 136);
    v5 = *(v4 + 16);
    v6 = *(v5 + 8);
    v42 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_1D8544F80;
    v9 = *(v0 + 112);
    v10.n128_u64[0] = *(v0 + 96);
    v11.n128_u64[0] = *(v0 + 104);
    v12 = *(v0 + 88);

    return v42(v12, v9, v5, v10, v11);
  }
}

uint64_t sub_1D8544DBC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = *(v2 + 224);
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D8544EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_25_4();
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_69_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_69();
  v18(v17);
  v19 = OUTLINED_FUNCTION_68();
  v20(v19);
  OUTLINED_FUNCTION_331();

  v21 = *(v12 + 80);
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_173();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D8544F80(uint64_t a1)
{
  OUTLINED_FUNCTION_153();
  v5 = v4;
  v6 = v4[30];
  v7 = *v2;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v5[31] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v5[26];
    v13 = v5[23];
    v14 = v5[20];

    OUTLINED_FUNCTION_69_2();

    return v15(a1);
  }
}

uint64_t sub_1D85450D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_25_4();
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_69_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_69();
  v18(v17);
  v19 = OUTLINED_FUNCTION_68();
  v20(v19);
  OUTLINED_FUNCTION_331();

  v21 = *(v12 + 232);
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D8545194()
{
  v1 = *(v0 + 248);
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D8545208(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v24 = a4;
  v23 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[8] = v15;
  sub_1D8580F88();
  v16 = *v15;
  v17 = v15[1];
  v18 = *v24;
  v19 = *a5;
  v20 = a5[1];
  v21 = swift_task_alloc();
  v5[9] = v21;
  *v21 = v5;
  v21[1] = sub_1D8545460;

  return DistributedAssetServiceProtocol<>.getImageData(images:size:)();
}

uint64_t sub_1D8545460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v14 = *(v13 + 72);
  v15 = *(v13 + 64);
  v16 = *(v13 + 56);
  v17 = *(v13 + 48);
  v18 = *(v13 + 40);
  v19 = *(v13 + 32);
  v20 = *(v13 + 24);
  v31 = *v12;
  **(v13 + 16) = v21;

  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

unint64_t sub_1D8545650(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A158, &unk_1D859F180);
    sub_1D85456D0(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D85456D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA389C8, &qword_1D8590820);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1ECA3A810)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECA3A810);
    }
  }
}

unint64_t sub_1D854576C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A188, &qword_1D85A4C10);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D85457E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for $DistributedAssetServiceProtocol();
  OUTLINED_FUNCTION_0_12();
  sub_1D8545B58(v4);

  return MEMORY[0x1EEE6CC98](v2);
}

uint64_t sub_1D8545858()
{
  v1 = *v0;
  type metadata accessor for $DistributedAssetServiceProtocol();
  OUTLINED_FUNCTION_0_12();
  sub_1D8545B58(v2);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D85458DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedAssetServiceProtocol();
  OUTLINED_FUNCTION_0_12();
  sub_1D8545B58(v3);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D8545AA0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12();
  result = sub_1D8545B58(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8545B58(uint64_t a1)
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

uint64_t dispatch thunk of AssetServiceProtocol.getImageData(images:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a3 + 8);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D84C4238;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;

  return v17(a1, a2, a3, v14, v15);
}

uint64_t sub_1D8545D2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_1D8581028();
}

uint64_t AchievementServiceProtocol.listAchievements(game:after:)(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a1;
  *(v6 + 40) = a4;
  v7 = a2[1];
  *(v6 + 64) = *a2;
  *(v6 + 72) = v7;
  *(v6 + 80) = *a3;
  v8 = OUTLINED_FUNCTION_64_0();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D8545E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v11 = v9[10];
  v10 = v9[11];
  v13 = v9[8];
  v12 = v9[9];
  v31 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392D0, &qword_1D8591010);
  v14 = swift_allocObject();
  v9[12] = v14;
  *(v14 + 16) = xmmword_1D8590A70;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  v9[2] = v11;
  v9[3] = v10;
  v15 = *(v31 + 16);

  v30 = v15 + *v15;
  v16 = v15[1];
  v17 = swift_task_alloc();
  v9[13] = v17;
  *v17 = v9;
  v17[1] = sub_1D8545FAC;
  v18 = v9[6];
  v19 = v9[7];
  v20 = v9[5];
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_471();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1D8545FAC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;
  v3[15] = v0;

  v8 = v3[12];

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1D85460BC()
{
  OUTLINED_FUNCTION_177();
  v16 = v0;
  v1 = v0[14];
  if (v1[2])
  {
    v2 = v0[4];
    v3 = v1[4];
    v4 = v1[5];
    v5 = v1[6];
    v6 = v1[7];
    v7 = v1[8];

    *v2 = v3;
    v2[1] = v4;
    v2[2] = v5;
    v2[3] = v6;
    v2[4] = v7;
    OUTLINED_FUNCTION_57();
  }

  else
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[14];

    v15[0] = v9;
    v15[1] = v8;
    sub_1D8448448();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39470, &unk_1D8592720);
    static GameServicesError.invalidReference<A>(ref:)(v15, v12);
    swift_willThrow();
    OUTLINED_FUNCTION_146();
  }

  OUTLINED_FUNCTION_207();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D85461CC()
{
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_146();
  return v2();
}

void *static $DistributedAchievementServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedAchievementServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_8_3();
  sub_1D855139C(v5, 255, v6);
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v7, v8, v9);
  v10 = sub_1D8580F48();
  v11 = v10;
  if (!v2 && !v10)
  {
    v11 = swift_distributedActor_remote_initialize();
    v12 = a1[1];
    v11[14] = *a1;
    v11[15] = v12;
    v11[16] = a2;
  }

  return v11;
}

uint64_t $DistributedAchievementServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_8_3();
  sub_1D855139C(v1, 255, v2);
  sub_1D8580F68();
  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedAchievementServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 128);

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedAchievementServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D854640C()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v0, v1, v2);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedAchievementServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedAchievementServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedAchievementServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedAchievementServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_8_3();
  sub_1D855139C(v3, 255, v4);
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v5, v6, v7);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v10;
  v1[15] = v11;
  v9 = v1[16];

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedAchievementServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedAchievementServiceProtocol();
    OUTLINED_FUNCTION_0_13();
    sub_1D855139C(v1, v2, v3);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D854664C@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedAchievementServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D85466D8()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v0, v1, v2);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D8546738()
{
  v2 = *v0;
  sub_1D8581B58();
  type metadata accessor for $DistributedAchievementServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D85467B4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(dword_1D85A5850);
  v6 = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6(v0);
}

uint64_t sub_1D854684C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8546974, 0, 0);
}

uint64_t sub_1D8546974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(dword_1D85A5850);
    a9 = v16;
    v17 = swift_task_alloc();
    v13[16] = v17;
    *v17 = v13;
    v17[1] = sub_1D84C2B28;
    v18 = v13[8];
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v15 = v13[8];
  v13[15] = $DistributedAchievementServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v28 = v13[14];
  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_84();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
  sub_1D8484E10();
  sub_1D8484F6C();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v30)
  {
    v32 = v13[13];
    v31 = v13[14];
    v33 = v13[12];

    v34 = OUTLINED_FUNCTION_49_0();
    v35(v34);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v36 = v13[14];
    v37 = v13[11];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v38 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v39 = swift_task_alloc();
  v13[17] = v39;
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v40, v41, v42);
  OUTLINED_FUNCTION_98();
  *v39 = v43;
  v39[1] = sub_1D84A1480;
  v44 = v13[11];
  v45 = v13[8];
  OUTLINED_FUNCTION_9_0(v46);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedAchievementServiceProtocol<>.describe(achievements:)()
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v1[17] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[18] = v11;
  v13 = *(v12 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  v14 = OUTLINED_FUNCTION_64_0();

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

uint64_t sub_1D8546D48()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v1 = v0[13];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[13];
  if ((is_remote & 1) == 0)
  {
    v6 = *(OUTLINED_FUNCTION_210(v0[12]) + 8);
    OUTLINED_FUNCTION_54();
    v36 = v7 + *v7;
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_286(v10);
    *v11 = v12;
    v11[1] = sub_1D8547208;
    v13 = v0[10];
    OUTLINED_FUNCTION_207_0(v0[9]);
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X3, X16 }
  }

  v4 = v0[10];
  v5 = *(v0[11] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v0[20] = v0[6];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v4)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_12;
  }

  v16 = v0[19];
  OUTLINED_FUNCTION_244_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_84();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
  sub_1D8484E10();
  sub_1D8484F6C();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v18)
  {
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[17];

    v22 = OUTLINED_FUNCTION_49_0();
    v23(v22);
    OUTLINED_FUNCTION_331();

LABEL_12:
    v24 = v0[19];
    v25 = v0[16];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X1, X16 }
  }

  v28 = v0[16];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  v0[21] = v29;
  *v29 = v30;
  v29[1] = sub_1D8547068;
  v31 = v0[16];
  v32 = v0[13];
  v33 = v0[10];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8547068()
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

uint64_t sub_1D8547160()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[8];
  v6 = v0[19];
  v7 = v0[16];

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D8547208()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[19];
    v13 = v3[16];

    v14 = OUTLINED_FUNCTION_56_0();

    return v15(v14);
  }
}

uint64_t sub_1D8547340(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedAchievementServiceProtocol<>.describe(achievements:)();
}

uint64_t sub_1D85474D0()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_50(&unk_1D85A5848);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_50_1(v4);

  return v7(v6);
}

uint64_t sub_1D854756C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8547700, 0, 0);
}

uint64_t sub_1D8547700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_4();
    type metadata accessor for $DistributedAchievementServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
    }

    v28 = v13[21];
    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_174_2();
    sub_1D847C154();
    sub_1D847C0A4();
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_141_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D8486070();
    sub_1D8486120();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v30)
    {
      OUTLINED_FUNCTION_187();
      v31 = OUTLINED_FUNCTION_52();
      v32(v31);
      v33 = OUTLINED_FUNCTION_51_0();
      v34(v33);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v43 = v13[15];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_179_1();
    v44 = swift_task_alloc();
    v13[24] = v44;
    OUTLINED_FUNCTION_0_13();
    sub_1D855139C(v45, v46, v47);
    OUTLINED_FUNCTION_98();
    *v44 = v48;
    v44[1] = sub_1D85479F4;
    v49 = v13[15];
    v50 = v13[12];
    OUTLINED_FUNCTION_9_0(v51);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85A5848);
    v53 = v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_41(v17);
    OUTLINED_FUNCTION_197();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, v53, a10, a11, a12);
  }
}

uint64_t sub_1D85479F4()
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

uint64_t DistributedAchievementServiceProtocol<>.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  *(v1 + 144) = v7;
  OUTLINED_FUNCTION_39(v7);
  *(v1 + 152) = v8;
  v10 = *(v9 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 168) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 176) = v12;
  v14 = *(v13 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  *(v1 + 192) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 200) = v16;
  v18 = *(v17 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  *(v1 + 216) = *v0;
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8547C40()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v1 = v0[17];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v5 = *(OUTLINED_FUNCTION_89_2() + 16);
    OUTLINED_FUNCTION_54();
    v28 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[32] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_38_2(v9);
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X4, X16 }
  }

  v2 = v0[17];
  v3 = v0[14];
  v4 = *(v0[15] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_137_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_174_2();
  sub_1D847C154();
  sub_1D847C0A4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_135_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_195();
  sub_1D8581038();
  sub_1D84751F0();
  sub_1D8475274();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
  sub_1D8486070();
  sub_1D8486120();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v13)
  {
    OUTLINED_FUNCTION_213();
    v14 = OUTLINED_FUNCTION_52();
    v15(v14);
    v16 = OUTLINED_FUNCTION_51_0();
    v17(v16);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_311();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X1, X16 }
  }

  v20 = v0[20];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_179_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  v0[30] = v21;
  *v21 = v22;
  v21[1] = sub_1D845B2D4;
  v23 = v0[20];
  v24 = v0[17];
  v25 = v0[14];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8547F9C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_306();

    v12 = OUTLINED_FUNCTION_56_0();

    return v13(v12);
  }
}

uint64_t sub_1D85480D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v21 = a4;
  v20 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_1D8580F88();
  v15 = *v21;
  v16 = *a5;
  v17 = a5[1];
  v18 = swift_task_alloc();
  v5[9] = v18;
  *v18 = v5;
  v18[1] = sub_1D8552218;

  return DistributedAchievementServiceProtocol<>.listAchievements(games:after:)();
}

uint64_t sub_1D8548318()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_50(&unk_1D85A5840);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_50_1(v4);

  return v7(v6);
}

uint64_t sub_1D85483B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8548548, 0, 0);
}

uint64_t sub_1D8548548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_4();
    type metadata accessor for $DistributedAchievementServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
    }

    v28 = v13[21];
    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_84();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_141_2();
    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_117();
    sub_1D8581038();
    OUTLINED_FUNCTION_2_0();
    sub_1D844A16C(v31, v32, &qword_1D8590B30);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D844A16C(v33, v34, v35);
    OUTLINED_FUNCTION_129_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D8486FDC();
    sub_1D8487094();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_187();
      v38 = OUTLINED_FUNCTION_52();
      v39(v38);
      v40 = OUTLINED_FUNCTION_51_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v50 = v13[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v51 = swift_task_alloc();
    v13[24] = v51;
    OUTLINED_FUNCTION_0_13();
    sub_1D855139C(v52, v53, v54);
    OUTLINED_FUNCTION_98();
    *v51 = v55;
    v51[1] = sub_1D85489D8;
    v56 = v13[15];
    v57 = v13[12];
    OUTLINED_FUNCTION_9_0(v58);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85A5840);
    v60 = v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_41(v17);
    OUTLINED_FUNCTION_197();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, v60, a10, a11, a12);
  }
}

uint64_t sub_1D8548878()
{
  OUTLINED_FUNCTION_204();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;

  v8 = v4[21];
  v9 = v4[18];
  v10 = v4[15];

  v12 = *(v6 + 8);
  if (!v0)
  {
    v11 = v3;
  }

  return v12(v11);
}

uint64_t sub_1D85489D8()
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

uint64_t sub_1D8548AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[8];
  v20 = v12[21];
  v21 = v12[18];
  v22 = v12[15];

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D8548B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[25];
  v20 = v12[21];
  v21 = v12[18];
  v22 = v12[15];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t DistributedAchievementServiceProtocol<>.getProgress(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  v1[18] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[21] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[22] = v12;
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v1[24] = v15;
  OUTLINED_FUNCTION_39(v15);
  v1[25] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_332();
  v20 = *v0;
  v21 = v0[1];
  v1[26] = v19;
  v1[27] = v20;
  v1[28] = v21;
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

uint64_t sub_1D8548DAC()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v1 = v0[17];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v5 = v0[16];
    v0[9] = v0[17];
    v6 = v0[28];
    v0[5] = v0[27];
    v0[6] = v6;
    v7 = *(*(v5 + 16) + 24);
    OUTLINED_FUNCTION_54();
    v37 = v8 + *v8;
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    v0[32] = v11;
    *v11 = v0;
    OUTLINED_FUNCTION_38_2(v11);
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X4, X16 }
  }

  v2 = v0[17];
  v3 = v0[14];
  v4 = *(v0[15] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_137_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_84();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_135_2();
  v14 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_195();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D844A16C(v16, v17, &qword_1D8590B30);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_160_0();
  sub_1D844A16C(v18, v19, v20);
  OUTLINED_FUNCTION_129_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
  sub_1D8486FDC();
  sub_1D8487094();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v22)
  {
    OUTLINED_FUNCTION_213();
    v23 = OUTLINED_FUNCTION_52();
    v24(v23);
    v25 = OUTLINED_FUNCTION_51_0();
    v26(v25);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_311();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X1, X16 }
  }

  v29 = v0[20];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  v0[30] = v30;
  *v30 = v31;
  v30[1] = sub_1D845CFE0;
  v32 = v0[20];
  v33 = v0[17];
  v34 = v0[14];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8549150()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_306();

    v12 = OUTLINED_FUNCTION_56_0();

    return v13(v12);
  }
}

uint64_t sub_1D8549288(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v21 = a4;
  v20 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_1D8580F88();
  v15 = *v21;
  v16 = *a5;
  v17 = a5[1];
  v18 = swift_task_alloc();
  v5[9] = v18;
  *v18 = v5;
  v18[1] = sub_1D85494CC;

  return DistributedAchievementServiceProtocol<>.getProgress(achievements:belongingTo:)();
}

uint64_t sub_1D85494CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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

  (*(v18 + 8))(v17, v19);
  v25 = *(v15 + 8);
  v26 = OUTLINED_FUNCTION_166();
  v27(v26);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t type metadata accessor for AchievementProgress()
{
  result = qword_1EE0E09B0;
  if (!qword_1EE0E09B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8549700()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_50(&unk_1D85A5838);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_50_1(v4);

  return v7(v6);
}

uint64_t sub_1D854979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8549930, 0, 0);
}

uint64_t sub_1D8549930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_4();
    type metadata accessor for $DistributedAchievementServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
    }

    v28 = v13[21];
    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_72_2();
    OUTLINED_FUNCTION_195();
    sub_1D8581038();
    sub_1D8484CB0();
    sub_1D8484D60();
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_141_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A828, &qword_1D85A4FE8);
    sub_1D854A328();
    sub_1D854A3D8();
    OUTLINED_FUNCTION_10();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v30)
    {
      OUTLINED_FUNCTION_187();
      v31 = OUTLINED_FUNCTION_52();
      v32(v31);
      v33 = OUTLINED_FUNCTION_51_0();
      v34(v33);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v43 = v13[15];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_179_1();
    v44 = swift_task_alloc();
    v13[24] = v44;
    OUTLINED_FUNCTION_0_13();
    sub_1D855139C(v45, v46, v47);
    OUTLINED_FUNCTION_98();
    *v44 = v48;
    v44[1] = sub_1D85479F4;
    v49 = v13[15];
    v50 = v13[12];
    OUTLINED_FUNCTION_9_0(v51);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85A5838);
    v53 = v15;
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_286(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_41(v17);
    OUTLINED_FUNCTION_197();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, v53, a10, a11, a12);
  }
}

uint64_t DistributedAchievementServiceProtocol<>.listFriends(having:after:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  *(v1 + 144) = v7;
  OUTLINED_FUNCTION_39(v7);
  *(v1 + 152) = v8;
  v10 = *(v9 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 168) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 176) = v12;
  v14 = *(v13 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  *(v1 + 192) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 200) = v16;
  v18 = *(v17 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  *(v1 + 216) = *v0;
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8549D80()
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v1 = v0[17];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v5 = *(OUTLINED_FUNCTION_89_2() + 32);
    OUTLINED_FUNCTION_54();
    v28 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[32] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_38_2(v9);
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X4, X16 }
  }

  v2 = v0[17];
  v3 = v0[14];
  v4 = *(v0[15] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_137_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_72_2();
  sub_1D8581038();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_135_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_195();
  sub_1D8581038();
  sub_1D84751F0();
  sub_1D8475274();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A828, &qword_1D85A4FE8);
  sub_1D854A328();
  sub_1D854A3D8();
  OUTLINED_FUNCTION_10();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v13)
  {
    OUTLINED_FUNCTION_213();
    v14 = OUTLINED_FUNCTION_52();
    v15(v14);
    v16 = OUTLINED_FUNCTION_51_0();
    v17(v16);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_311();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X1, X16 }
  }

  v20 = v0[20];
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_179_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  v0[30] = v21;
  *v21 = v22;
  v21[1] = sub_1D845B2D4;
  v23 = v0[20];
  v24 = v0[17];
  v25 = v0[14];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D854A0E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v21 = a4;
  v20 = *v11;
  v12 = a2[1];
  v5[6] = v12;
  v13 = *(v12 - 8);
  v5[7] = v13;
  v14 = *(v13 + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_1D8580F88();
  v15 = *v21;
  v16 = *a5;
  v17 = a5[1];
  v18 = swift_task_alloc();
  v5[9] = v18;
  *v18 = v5;
  v18[1] = sub_1D8552218;

  return DistributedAchievementServiceProtocol<>.listFriends(having:after:)();
}

unint64_t sub_1D854A328()
{
  result = qword_1ECA3A830;
  if (!qword_1ECA3A830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A828, &qword_1D85A4FE8);
    sub_1D844A16C(&qword_1ECA3A838, &qword_1ECA3A840, &qword_1D85A4FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A830);
  }

  return result;
}

unint64_t sub_1D854A3D8()
{
  result = qword_1ECA3A848;
  if (!qword_1ECA3A848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A828, &qword_1D85A4FE8);
    sub_1D844A16C(&qword_1ECA3A850, &qword_1ECA3A840, &qword_1D85A4FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A848);
  }

  return result;
}

uint64_t sub_1D854A488()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  v3 = *v1;
  OUTLINED_FUNCTION_50(&unk_1D85A5830);
  v9 = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_191(v6);

  return v9(v2, v0);
}

uint64_t sub_1D854A52C(uint64_t a1, uint64_t a2)
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D854A6C0, 0, 0);
}

uint64_t sub_1D854A6C0()
{
  OUTLINED_FUNCTION_177();
  v2 = v1[9];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&unk_1D85A5830);
    v4 = swift_task_alloc();
    v1[20] = v4;
    *v4 = v1;
    v4[1] = sub_1D84BE920;
    v5 = v1[8];
    v6 = v1[9];
    OUTLINED_FUNCTION_207_0(v1[7]);
    OUTLINED_FUNCTION_240();

    __asm { BR              X2 }
  }

  v3 = v1[9];
  v1[19] = $DistributedAchievementServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v0)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v9 = v1[18];
  v1[5] = v1[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_84();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  v10 = v1[15];
  v1[6] = v1[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_105_4();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v11);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v12)
  {
    OUTLINED_FUNCTION_238_0();
    v13 = OUTLINED_FUNCTION_52();
    v14(v13);
    v15 = OUTLINED_FUNCTION_51_0();
    v16(v15);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_231_0();
    v17 = v1[12];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_240();

    __asm { BRAA            X1, X16 }
  }

  v20 = v1[12];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v21 = swift_task_alloc();
  v1[21] = v21;
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v22, v23, v24);
  OUTLINED_FUNCTION_81();
  *v21 = v25;
  v21[1] = sub_1D849ABF0;
  v26 = v1[12];
  v27 = v1[9];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_240();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v28, v29, v30, v31, v32, v33, v34);
}

uint64_t DistributedAchievementServiceProtocol<>.resetProgress(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[18] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[19] = v11;
  v13 = *(v12 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[21] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[22] = v15;
  v17 = *(v16 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D854AB28()
{
  OUTLINED_FUNCTION_185();
  v1 = v0[14];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[14];
  if ((is_remote & 1) == 0)
  {
    v6 = *(OUTLINED_FUNCTION_210(v0[13]) + 40);
    OUTLINED_FUNCTION_54();
    v37 = v7 + *v7;
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    v0[27] = v10;
    *v10 = v0;
    v10[1] = sub_1D84FA2DC;
    v11 = v0[10];
    v12 = v0[11];
    OUTLINED_FUNCTION_207_0(v0[9]);
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v4 = v0[11];
  v5 = *(v0[12] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v0[24] = v0[6];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v4)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v15 = v0[23];
  OUTLINED_FUNCTION_244_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_84();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  v16 = v0[20];
  v0[8] = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_105_4();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v17);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v18)
  {
    OUTLINED_FUNCTION_527();
    v19 = OUTLINED_FUNCTION_52();
    v20(v19);
    v21 = OUTLINED_FUNCTION_51_0();
    v22(v21);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_342_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  v25 = v0[17];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v26 = swift_task_alloc();
  v0[25] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_145_0(v26);
  OUTLINED_FUNCTION_53(v27);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1D854AE8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v23 = a4;
  v22 = *v11;
  v12 = a2[1];
  v5[5] = v12;
  v13 = *(v12 - 8);
  v5[6] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[7] = v15;
  sub_1D8580F88();
  v16 = *v15;
  v17 = *v23;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[8] = v20;
  *v20 = v5;
  v20[1] = sub_1D84BF8AC;

  return DistributedAchievementServiceProtocol<>.resetProgress(achievements:belongingTo:)();
}

uint64_t sub_1D854B0D0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  v3 = *v1;
  OUTLINED_FUNCTION_50(&unk_1D85A5828);
  v9 = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_191(v6);

  return v9(v2, v0);
}

uint64_t sub_1D854B174(uint64_t a1, uint64_t a2)
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D854B308, 0, 0);
}

uint64_t sub_1D854B308()
{
  OUTLINED_FUNCTION_177();
  v2 = v1[9];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&unk_1D85A5828);
    v4 = swift_task_alloc();
    v1[20] = v4;
    *v4 = v1;
    v4[1] = sub_1D8552210;
    v5 = v1[8];
    v6 = v1[9];
    OUTLINED_FUNCTION_207_0(v1[7]);
    OUTLINED_FUNCTION_240();

    __asm { BR              X2 }
  }

  v3 = v1[9];
  v1[19] = $DistributedAchievementServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v0)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v9 = v1[18];
  v1[5] = v1[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_84();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  v10 = v1[15];
  v1[6] = v1[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_105_4();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v11);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v12)
  {
    OUTLINED_FUNCTION_238_0();
    v13 = OUTLINED_FUNCTION_52();
    v14(v13);
    v15 = OUTLINED_FUNCTION_51_0();
    v16(v15);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_231_0();
    v17 = v1[12];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_240();

    __asm { BRAA            X1, X16 }
  }

  v20 = v1[12];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v21 = swift_task_alloc();
  v1[21] = v21;
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v22, v23, v24);
  OUTLINED_FUNCTION_81();
  *v21 = v25;
  v21[1] = sub_1D8487658;
  v26 = v1[12];
  v27 = v1[9];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_240();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v28, v29, v30, v31, v32, v33, v34);
}

uint64_t DistributedAchievementServiceProtocol<>.reveal(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v9 = *(v8 + 64);
  v0[17] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[18] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[19] = v11;
  v13 = *(v12 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[21] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[22] = v15;
  v17 = *(v16 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D854B770()
{
  OUTLINED_FUNCTION_185();
  v1 = v0[14];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[14];
  if ((is_remote & 1) == 0)
  {
    v6 = *(OUTLINED_FUNCTION_210(v0[13]) + 48);
    OUTLINED_FUNCTION_54();
    v37 = v7 + *v7;
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    v0[27] = v10;
    *v10 = v0;
    v10[1] = sub_1D84F924C;
    v11 = v0[10];
    v12 = v0[11];
    OUTLINED_FUNCTION_207_0(v0[9]);
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v4 = v0[11];
  v5 = *(v0[12] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v0[24] = v0[6];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v4)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v15 = v0[23];
  OUTLINED_FUNCTION_244_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_84();
  sub_1D8484CB0();
  sub_1D8484D60();
  OUTLINED_FUNCTION_31();
  v16 = v0[20];
  v0[8] = v0[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_105_4();
  sub_1D84769B4();
  sub_1D8476AE8();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v17);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v18)
  {
    OUTLINED_FUNCTION_527();
    v19 = OUTLINED_FUNCTION_52();
    v20(v19);
    v21 = OUTLINED_FUNCTION_51_0();
    v22(v21);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_342_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  v25 = v0[17];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v26 = swift_task_alloc();
  v0[25] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_145_0(v26);
  OUTLINED_FUNCTION_53(v27);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1D854BAD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[4] = v11;
  sub_1D8580F88();
  v23 = a4;
  v22 = *v11;
  v12 = a2[1];
  v5[5] = v12;
  v13 = *(v12 - 8);
  v5[6] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v5[7] = v15;
  sub_1D8580F88();
  v16 = *v15;
  v17 = *v23;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[8] = v20;
  *v20 = v5;
  v20[1] = sub_1D84F0BE8;

  return DistributedAchievementServiceProtocol<>.reveal(achievements:belongingTo:)();
}

uint64_t sub_1D854BD18()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D85A5820);
  v6 = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6(v0);
}

uint64_t sub_1D854BDB0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D854BED8, 0, 0);
}

uint64_t sub_1D854BED8()
{
  OUTLINED_FUNCTION_177();
  v2 = v1[7];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&unk_1D85A5820);
    v4 = swift_task_alloc();
    v1[15] = v4;
    *v4 = v1;
    v4[1] = sub_1D854C180;
    v5 = v1[7];
    OUTLINED_FUNCTION_207_0(v1[6]);
    OUTLINED_FUNCTION_207();

    __asm { BR              X1 }
  }

  v3 = v1[7];
  v1[14] = $DistributedAchievementServiceProtocol.actorSystem.getter();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v0)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_11;
  }

  v8 = v1[13];
  v1[5] = v1[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
  OUTLINED_FUNCTION_278_0();
  OUTLINED_FUNCTION_171_2();
  sub_1D8486FDC();
  sub_1D8487094();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v9);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v10)
  {
    v12 = v1[12];
    v11 = v1[13];
    v13 = v1[11];

    v14 = OUTLINED_FUNCTION_49_0();
    v15(v14);
    OUTLINED_FUNCTION_331();

LABEL_11:
    v16 = v1[13];
    v17 = v1[10];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    __asm { BRAA            X1, X16 }
  }

  v20 = v1[10];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v21 = swift_task_alloc();
  v1[16] = v21;
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v22, v23, v24);
  OUTLINED_FUNCTION_81();
  *v21 = v25;
  v21[1] = sub_1D84906A8;
  v26 = v1[10];
  v27 = v1[7];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1D854C180()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v5 = *(v1 + 104);
  v6 = *(v1 + 80);

  OUTLINED_FUNCTION_137();

  return v7();
}

uint64_t DistributedAchievementServiceProtocol<>.submit(progress:)()
{
  OUTLINED_FUNCTION_148();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_1D8581018();
  v1[13] = v6;
  OUTLINED_FUNCTION_39(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v1[16] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[17] = v11;
  v13 = *(v12 + 64);
  v1[18] = OUTLINED_FUNCTION_332();
  v14 = OUTLINED_FUNCTION_64_0();

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

uint64_t sub_1D854C3A4()
{
  OUTLINED_FUNCTION_177();
  v1 = v0[12];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[12];
  if ((is_remote & 1) == 0)
  {
    v6 = *(OUTLINED_FUNCTION_210(v0[11]) + 56);
    OUTLINED_FUNCTION_130_1();
    v34 = v7 + *v7;
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    v0[22] = v10;
    *v10 = v0;
    v10[1] = sub_1D8490E34;
    v11 = v0[9];
    OUTLINED_FUNCTION_207_0(v0[8]);
    OUTLINED_FUNCTION_207();

    __asm { BRAA            X3, X16 }
  }

  v4 = v0[9];
  v5 = *(v0[10] + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  v0[19] = v0[6];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v4)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_11;
  }

  v14 = v0[18];
  v0[7] = v0[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
  OUTLINED_FUNCTION_278_0();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_171_2();
  sub_1D8486FDC();
  sub_1D8487094();
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v16)
  {
    OUTLINED_FUNCTION_229_0();
    v17 = OUTLINED_FUNCTION_49_0();
    v18(v17);
    OUTLINED_FUNCTION_331();

LABEL_11:
    OUTLINED_FUNCTION_231_0();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    __asm { BRAA            X1, X16 }
  }

  v21 = v0[15];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v22 = swift_task_alloc();
  v0[20] = v22;
  *v22 = v0;
  v22[1] = sub_1D8490C9C;
  v23 = v0[15];
  v24 = v0[9];
  OUTLINED_FUNCTION_53(v0[12]);
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1D854C694(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedAchievementServiceProtocol<>.submit(progress:)();
}

uint64_t sub_1D854C820()
{
  OUTLINED_FUNCTION_148();
  v1 = *v0;
  OUTLINED_FUNCTION_50(&unk_1D85A5818);
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);

  return v7();
}

uint64_t sub_1D854C8B0()
{
  v1[5] = v0;
  v2 = sub_1D8581018();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D854C970, 0, 0);
}

uint64_t sub_1D854C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v12 = v11[5];
  if (swift_distributed_actor_is_remote())
  {
    v13 = v11[5];
    v11[9] = $DistributedAchievementServiceProtocol.actorSystem.getter();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedAchievementServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v10 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v14), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v15))
    {
      OUTLINED_FUNCTION_342();

      v16 = v11[8];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_471();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
    }

    else
    {
      v37 = v11[8];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v38 = swift_task_alloc();
      v11[11] = v38;
      OUTLINED_FUNCTION_0_13();
      sub_1D855139C(v39, v40, v41);
      OUTLINED_FUNCTION_81();
      *v38 = v42;
      v38[1] = sub_1D854CC88;
      v43 = v11[8];
      v44 = v11[5];
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_471();

      return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v45, v46, v47, v48, v49, v50, v51);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D85A5818);
    v53 = v26;
    v27 = swift_task_alloc();
    v11[10] = v27;
    *v27 = v11;
    v27[1] = sub_1D854CB84;
    v28 = v11[5];
    OUTLINED_FUNCTION_471();

    return v29(v29, v30, v31, v32, v33, v34, v35, v36, a9, v53);
  }
}

uint64_t sub_1D854CB84()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  v5 = *(v1 + 64);

  OUTLINED_FUNCTION_137();

  return v6();
}

uint64_t sub_1D854CC88()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D854CD80()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_151();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[8];

  OUTLINED_FUNCTION_57();

  return v9();
}

uint64_t sub_1D854CE14()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_151();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[12];
  v9 = v0[8];

  OUTLINED_FUNCTION_146();

  return v10();
}

uint64_t DistributedAchievementServiceProtocol<>.clearCache()()
{
  OUTLINED_FUNCTION_148();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_1D8581018();
  v1[11] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_332();
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

uint64_t sub_1D854CF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  v11 = v10[10];
  is_remote = swift_distributed_actor_is_remote();
  v13 = v10[10];
  if (is_remote)
  {
    v14 = v10[7];
    v15 = *(v10[8] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v10[14] = v10[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v14 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v17))
    {
      OUTLINED_FUNCTION_342();

      v18 = v10[13];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_471();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
    }

    else
    {
      v43 = v10[13];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v44 = swift_task_alloc();
      v10[15] = v44;
      *v44 = v10;
      v44[1] = sub_1D854D1C8;
      v45 = v10[13];
      v46 = v10[7];
      OUTLINED_FUNCTION_53(v10[10]);
      OUTLINED_FUNCTION_471();

      return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v47, v48, v49, v50, v51, v52, v53);
    }
  }

  else
  {
    v28 = OUTLINED_FUNCTION_210(v10[9]);
    v29 = *(v28 + 64);
    v55 = v28 + 64;
    OUTLINED_FUNCTION_130_1();
    v56 = v30 + *v30;
    v32 = *(v31 + 4);
    v33 = swift_task_alloc();
    v10[17] = v33;
    *v33 = v10;
    v33[1] = sub_1D854D354;
    v34 = v10[7];
    OUTLINED_FUNCTION_471();

    return v37(v35, v36, v37, v38, v39, v40, v41, v42, v55, v56);
  }
}

uint64_t sub_1D854D1C8()
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

uint64_t sub_1D854D2C0()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_151();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[13];

  OUTLINED_FUNCTION_57();

  return v9();
}

uint64_t sub_1D854D354()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 104);

    OUTLINED_FUNCTION_146();

    return v13();
  }
}

uint64_t sub_1D854D470()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_151();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[16];
  v9 = v0[13];

  OUTLINED_FUNCTION_146();

  return v10();
}

uint64_t sub_1D854D508()
{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D854D564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a4;
  v7 = *a5;
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1D8442F30;

  return DistributedAchievementServiceProtocol<>.clearCache()();
}

uint64_t sub_1D854D614(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v7);
}

uint64_t sub_1D854D688()
{
  v1 = *v0;
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v2, v3, v4);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D854D70C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedAchievementServiceProtocol();
  OUTLINED_FUNCTION_0_13();
  sub_1D855139C(v3, v4, v5);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AchievementDescription.game.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t AchievementDescription.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_194();
}

uint64_t AchievementDescription.id.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AchievementDescription.groupId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_194();
}

uint64_t AchievementDescription.groupId.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AchievementDescription.title.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_194();
}

uint64_t AchievementDescription.title.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AchievementDescription.unachievedDescription.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_194();
}

uint64_t AchievementDescription.unachievedDescription.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t AchievementDescription.achievedDescription.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_194();
}

uint64_t AchievementDescription.achievedDescription.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t AchievementDescription.maximumPoints.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t AchievementDescription.maximumPoints.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t AchievementDescription.rarityPercent.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t AchievementDescription.rarityPercent.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t AchievementDescription.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  return result;
}

uint64_t AchievementDescription.activityIdentifier.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_194();
}

uint64_t AchievementDescription.activityIdentifier.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t AchievementDescription.activityProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t AchievementDescription.init(game:id:groupId:title:unachievedDescription:achievedDescription:maximumPoints:isHidden:isReplayable:rarityPercent:image:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, char a16, uint64_t a17, char a18, uint64_t *a19)
{
  v22 = *a1;
  v23 = a1[1];
  v25 = *a19;
  v24 = a19[1];

  *a9 = v22;
  *(a9 + 8) = v23;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14 & 1;
  *(a9 + 105) = a15;
  *(a9 + 106) = a16;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 128) = v25;
  *(a9 + 136) = v24;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = 3;
  return result;
}

__n128 AchievementDescription.init(game:id:groupId:title:unachievedDescription:achievedDescription:maximumPoints:isHidden:isReplayable:rarityPercent:image:activityIdentifier:activityProperties:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t *a18, __n128 a19, uint64_t a20)
{
  v24 = *a1;
  v25 = a1[1];
  v27 = *a18;
  v26 = a18[1];

  *a9 = v24;
  *(a9 + 8) = v25;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  *(a9 + 105) = a14;
  *(a9 + 106) = a15;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17 & 1;
  *(a9 + 128) = v27;
  *(a9 + 136) = v26;
  result = a19;
  *(a9 + 144) = a19;
  *(a9 + 160) = a20;
  *(a9 + 168) = 3;
  return result;
}

__n128 AchievementDescription.init(game:id:groupId:title:unachievedDescription:achievedDescription:maximumPoints:isHidden:isReplayable:rarityPercent:image:activityIdentifier:activityProperties:releaseState:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t *a18, __n128 a19, uint64_t a20, char *a21)
{
  v23 = *a1;
  v22 = a1[1];
  v24 = *a18;
  v25 = a18[1];
  v26 = *a21;
  *a9 = v23;
  *(a9 + 8) = v22;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  *(a9 + 105) = a14;
  *(a9 + 106) = a15;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17 & 1;

  *(a9 + 128) = v24;
  *(a9 + 136) = v25;
  result = a19;
  *(a9 + 144) = a19;
  *(a9 + 160) = a20;
  *(a9 + 168) = v26;
  return result;
}

BOOL static AchievementDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v60 = *(a1 + 56);
  v61 = *(a1 + 48);
  v58 = *(a1 + 72);
  v59 = *(a1 + 64);
  v54 = *(a1 + 88);
  v55 = *(a1 + 80);
  v44 = *(a1 + 96);
  v51 = *(a1 + 104);
  v49 = *(a1 + 105);
  v47 = *(a1 + 106);
  v6 = *(a1 + 112);
  v45 = *(a1 + 120);
  v39 = *(a1 + 128);
  v40 = *(a1 + 136);
  v33 = *(a1 + 144);
  v37 = *(a1 + 152);
  v35 = *(a1 + 160);
  v30 = *(a1 + 168);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 112);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v57 = *(a2 + 64);
  v56 = *(a2 + 72);
  v52 = *(a2 + 88);
  v53 = *(a2 + 80);
  v50 = *(a2 + 104);
  v48 = *(a2 + 105);
  v46 = *(a2 + 106);
  v43 = *(a2 + 120);
  v38 = *(a2 + 128);
  v41 = *(a2 + 136);
  v42 = *(a2 + 96);
  v32 = *(a2 + 144);
  v36 = *(a2 + 152);
  v34 = *(a2 + 160);
  v31 = *(a2 + 168);
  if ((sub_1D854E3DC(*a1, *(a1 + 8), *a2, *(a2 + 8), &qword_1ECA38B38, &qword_1D85981B0) & 1) == 0)
  {
    return 0;
  }

  v14 = v2 == v7 && v3 == v8;
  if (!v14 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = v4 == v10 && v5 == v9;
    if (!v15 && (sub_1D8581AB8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v16 = v61 == v12 && v60 == v13;
  if (!v16 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  v17 = v59 == v57 && v58 == v56;
  if (!v17 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  v18 = v55 == v53 && v54 == v52;
  if (!v18 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  if (v51)
  {
    result = 0;
    if (!v50)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    v20 = v50;
    if (v44 != v42)
    {
      v20 = 1;
    }

    if (v20)
    {
      return result;
    }
  }

  if (((v49 ^ v48) & 1) == 0 && ((v47 ^ v46) & 1) == 0)
  {
    if (v45)
    {
      if (!v43)
      {
        return 0;
      }
    }

    else
    {
      v21 = v43;
      if (v6 != v11)
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    if (v40)
    {
      if (v41)
      {
        v22 = OUTLINED_FUNCTION_194();
        __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
        OUTLINED_FUNCTION_231();
        sub_1D844A16C(v24, v25, v26);
        swift_bridgeObjectRetain_n();

        v27 = sub_1D8581208();

        if ((v27 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_54;
      }
    }

    else if (!v41)
    {

LABEL_54:
      if (v37)
      {
        if (!v36)
        {
          return 0;
        }

        v28 = v33 == v32 && v37 == v36;
        if (!v28 && (sub_1D8581AB8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v36)
      {
        return 0;
      }

      if (v35)
      {
        if (!v34)
        {
          return 0;
        }

        v29 = sub_1D84BAB00(v35, v34);

        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v34)
      {
        return 0;
      }

      if (v30 != 3)
      {
        if (v31 == 3)
        {
          return 0;
        }

        sub_1D847B7D0();
        return (sub_1D8581208() & 1) != 0;
      }

      return v31 == 3;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D854E3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v7 = OUTLINED_FUNCTION_188();
  sub_1D844A16C(v7, v8, a6);
  sub_1D85813D8();
  sub_1D85813D8();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D8581AB8();
  }

  return v10 & 1;
}

uint64_t sub_1D854E4BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x644970756F7267 && a2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001D8588800 == a2;
          if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001D8588820 == a2;
            if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == OUTLINED_FUNCTION_125_3() && a2 == v11;
              if (v12 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = a1 == 0x6E65646469487369 && a2 == 0xE800000000000000;
                if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = a1 == OUTLINED_FUNCTION_149_1() && a2 == v14;
                  if (v15 || (OUTLINED_FUNCTION_7() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v17 = a1 == OUTLINED_FUNCTION_124_0() && a2 == v16;
                    if (v17 || (OUTLINED_FUNCTION_7() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v18 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
                      if (v18 || (OUTLINED_FUNCTION_7() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v19 = a1 == 0xD000000000000012 && 0x80000001D8585930 == a2;
                        if (v19 || (OUTLINED_FUNCTION_7() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v20 = a1 == 0xD000000000000012 && 0x80000001D8585950 == a2;
                          if (v20 || (OUTLINED_FUNCTION_7() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == OUTLINED_FUNCTION_223() && a2 == v21)
                          {

                            return 13;
                          }

                          else
                          {
                            v23 = OUTLINED_FUNCTION_7();

                            if (v23)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_1D854E7E4(char a1)
{
  result = 1701667175;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x644970756F7267;
      break;
    case 3:
      v3 = 1819568500;
      goto LABEL_15;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = OUTLINED_FUNCTION_125_3();
      break;
    case 7:
      result = 0x6E65646469487369;
      break;
    case 8:
      result = OUTLINED_FUNCTION_149_1();
      break;
    case 9:
      result = OUTLINED_FUNCTION_124_0();
      break;
    case 10:
      v3 = 1734438249;
LABEL_15:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = OUTLINED_FUNCTION_223();
      break;
    default:
      return result;
  }

  return result;
}