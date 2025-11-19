uint64_t sub_1D8462318()
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

uint64_t sub_1D8462410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_422();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_111();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84624C8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[37] = v0;

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

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D84625FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_422();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 280);
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D84626B8()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 296);
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D846272C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8594ED0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);

  return v5(v0);
}

uint64_t sub_1D84627C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39018, &qword_1D8590E78);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84628E8, 0, 0);
}

uint64_t sub_1D84628E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8594ED0);
    v16 = swift_task_alloc();
    v13[16] = v16;
    *v16 = v13;
    v16[1] = sub_1D8482210;
    v17 = v13[8];
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15 = v13[8];
  v13[15] = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = v13[14];
  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39020, &qword_1D8590E80);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D847A008();
  sub_1D847A0B8();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39050, &qword_1D8590E90);
  sub_1D847A168();
  sub_1D847A2A4();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v31)
  {
    OUTLINED_FUNCTION_453();
    v32 = OUTLINED_FUNCTION_49_0();
    v33(v32);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v34 = v13[14];
    v35 = v13[11];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v36 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v37 = swift_task_alloc();
  v13[17] = v37;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v38);
  OUTLINED_FUNCTION_98();
  *v37 = v39;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v40);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedChallengeServiceProtocol<>.describeInvites(invites:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39018, &qword_1D8590E78);
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
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8462CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    v19 = *(v14[11] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v43 = v14[19];
      v44 = v14[16];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[19];
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39020, &qword_1D8590E80);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847A008();
    sub_1D847A0B8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39050, &qword_1D8590E90);
    sub_1D847A168();
    sub_1D847A2A4();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {
      OUTLINED_FUNCTION_452();
      v41 = OUTLINED_FUNCTION_49_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v53 = v14[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v54;
    *v54 = v55;
    OUTLINED_FUNCTION_294(v54);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v20 = *(OUTLINED_FUNCTION_210(v14[12]) + 144);
    OUTLINED_FUNCTION_54();
    v57 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_286(v24);
    *v25 = v26;
    v25[1] = sub_1D84561D0;
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_410();
    OUTLINED_FUNCTION_169();

    return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v57, a12, a13, a14);
  }
}

uint64_t sub_1D8462FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  v11 = *v10;
  v12 = v10[1];
  OUTLINED_FUNCTION_24(&unk_1D8594EC8);
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_97(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_107(v17);
  OUTLINED_FUNCTION_470();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1D846304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39080, &qword_1D8590EB0);
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

  return MEMORY[0x1EEE6DFA0](sub_1D8463250, 0, 0);
}

uint64_t DistributedChallengeServiceProtocol<>.listInvites(player:filters:after:)()
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
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39080, &qword_1D8590EB0);
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
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8463BD8()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8594EC0);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_0(v3);

  return v6(v5);
}

uint64_t sub_1D8463C68(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39018, &qword_1D8590E78);
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

  return MEMORY[0x1EEE6DFA0](sub_1D8463DFC, 0, 0);
}

uint64_t sub_1D8463DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v29);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39020, &qword_1D8590E80);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847A008();
    sub_1D847A0B8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA390E0, &qword_1D8590EE0);
    sub_1D847ABF4();
    sub_1D847ACCC();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_187();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v49 = v13[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v50);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v51);
    OUTLINED_FUNCTION_98();
    v13[2] = v52;
    v13[3] = sub_1D845ACE8;
    v53 = v13[15];
    v54 = v13[12];
    OUTLINED_FUNCTION_9_0(v55);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EC0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedChallengeServiceProtocol<>.listInviteStates(player:invites:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v9 = *(v8 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39018, &qword_1D8590E78);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v13 = *(v12 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[25] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v18);
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

uint64_t sub_1D846426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[17];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v33 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39020, &qword_1D8590E80);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847A008();
    sub_1D847A0B8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA390E0, &qword_1D8590EE0);
    sub_1D847ABF4();
    sub_1D847ACCC();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v42)
    {
      OUTLINED_FUNCTION_213();
      v43 = OUTLINED_FUNCTION_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_51_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v55 = v15[20];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    v57 = OUTLINED_FUNCTION_109(v56);
    *v57 = v58;
    v57[1] = sub_1D845B2D4;
    v59 = v15[20];
    v60 = v15[17];
    v61 = v15[14];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_17_0() + 160);
    OUTLINED_FUNCTION_54();
    v63 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_356(v21);
    *v22 = v23;
    OUTLINED_FUNCTION_65_0(v22);
    OUTLINED_FUNCTION_169();

    return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v63, a12, a13, a14);
  }
}

uint64_t sub_1D84645D8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = *v0;
  v3 = *v2;
  v4 = v2[1];
  v6 = *v5;
  v7 = v5[1];
  OUTLINED_FUNCTION_24(&unk_1D8594EB8);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_191(v9);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_489();
  OUTLINED_FUNCTION_535();

  return v15(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1D846467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1D8581018();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39108, &qword_1D8590EF8);
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8464814, 0, 0);
}

uint64_t sub_1D8464814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[13];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[13];
    v13[23] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v58 = v13[22];
      v59 = v13[19];
      v60 = v13[16];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12);
    }

    v30 = v13[22];
    v31 = v13[10];
    v13[5] = v13[9];
    v13[6] = v31;

    v32 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    v38 = v13[19];
    v39 = v13[12];
    v13[7] = v13[11];
    v13[8] = v39;

    v40 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v43);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v46);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v47)
    {
      v49 = v13[21];
      v48 = v13[22];
      v51 = v13[19];
      v50 = v13[20];
      v52 = v13[17];
      v53 = v13[18];

      v54 = OUTLINED_FUNCTION_52();
      v55(v54);
      v56 = OUTLINED_FUNCTION_51_0();
      v57(v56);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v69 = v13[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v70 = swift_task_alloc();
    v13[25] = v70;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v71);
    OUTLINED_FUNCTION_217();
    *v70 = v72;
    v70[1] = sub_1D8464CBC;
    v73 = v13[16];
    v74 = v13[13];
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v75, v76, v77, v78, v79, v80, v81);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EB8);
    v16 = swift_task_alloc();
    v13[24] = v16;
    *v16 = v13;
    v16[1] = sub_1D8464B88;
    v17 = v13[12];
    v18 = v13[13];
    v19 = v13[10];
    v20 = v13[11];
    OUTLINED_FUNCTION_207_0(v13[9]);
    OUTLINED_FUNCTION_240();

    return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8464B88()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = v0[24];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 176);
  v7 = v0[19];
  v8 = v0[16];

  OUTLINED_FUNCTION_137();

  return v9();
}

uint64_t sub_1D8464CBC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8464DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_451();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[22];
  v20 = v12[19];
  v21 = v12[16];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D8464E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_451();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[26];
  v20 = v12[22];
  v21 = v12[19];
  v22 = v12[16];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.accept(player:invite:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  v1[17] = v6;
  v1[18] = v0;
  v1[15] = v7;
  v1[16] = v8;
  v9 = sub_1D8581018();
  v1[19] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[20] = v10;
  v12 = *(v11 + 64);
  v1[21] = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39108, &qword_1D8590EF8);
  v1[22] = v13;
  OUTLINED_FUNCTION_39(v13);
  v1[23] = v14;
  v16 = *(v15 + 64);
  v1[24] = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[25] = v17;
  OUTLINED_FUNCTION_39(v17);
  v1[26] = v18;
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_332();
  v22 = *v5;
  v23 = v5[1];
  v1[27] = v21;
  v1[28] = v22;
  v24 = *v3;
  v25 = v3[1];
  v1[29] = v23;
  v1[30] = v24;
  v1[31] = v25;
  v26 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84650B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = v14[9].n128_u64[0];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[9].n128_u64[0];
    v17 = v14[7].n128_u64[1];
    v18 = *(v14[8].n128_u64[0] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[16].n128_u64[0] = v14[7].n128_u64[0];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v64 = v14[13].n128_u64[1];
      v65 = v14[12].n128_u64[0];
      v66 = v14[10].n128_u64[1];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[14].n128_u64[1];
    v37 = v14[13].n128_u64[1];
    v14[4].n128_u64[1] = v14[14].n128_u64[0];
    v14[5].n128_u64[0] = v36;

    v38 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v40);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
    v44 = v14[15].n128_u64[1];
    v45 = v14[12].n128_u64[0];
    v14[5].n128_u64[1] = v14[15].n128_u64[0];
    v14[6].n128_u64[0] = v44;

    v46 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v48);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v49);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v52);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v53)
    {
      v55 = v14[13].n128_u64[0];
      v54 = v14[13].n128_u64[1];
      v57 = v14[12].n128_u64[0];
      v56 = v14[12].n128_u64[1];
      v58 = v14[11].n128_u64[0];
      v59 = v14[11].n128_u64[1];

      v60 = OUTLINED_FUNCTION_52();
      v61(v60);
      v62 = OUTLINED_FUNCTION_51_0();
      v63(v62);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v75 = v14[10].n128_u64[1];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v76 = swift_task_alloc();
    v14[16].n128_u64[1] = v76;
    *v76 = v14;
    v76[1] = sub_1D846548C;
    v77 = v14[10].n128_u64[1];
    v78 = v14[7].n128_u64[1];
    OUTLINED_FUNCTION_53(v14[9].n128_i64[0]);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v79, v80, v81, v82, v83, v84, v85);
  }

  else
  {
    v19 = v14[8].n128_u64[1];
    OUTLINED_FUNCTION_300(v14[9].n128_i64[0], v14[14]);
    v20 = v14[15].n128_u64[0];
    v21 = *(OUTLINED_FUNCTION_243(v14[15].n128_i64[1]) + 168);
    OUTLINED_FUNCTION_54();
    v87 = v22 + *v22;
    v24 = *(v23 + 4);
    v25 = swift_task_alloc();
    v14[17].n128_u64[1] = v25;
    *v25 = v14;
    v25[1] = sub_1D8465644;
    v26 = v14[7].n128_u64[1];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_239();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v87, a12, a13, a14);
  }
}

uint64_t sub_1D846548C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8465584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_421();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[27];
  v20 = v12[24];
  v21 = v12[21];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D8465644()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[36] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[27];
    v13 = v3[24];
    v14 = v3[21];

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D8465778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_421();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[34];
  v20 = v12[27];
  v21 = v12[24];
  v22 = v12[21];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D846583C()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t sub_1D84658B8()
{
  OUTLINED_FUNCTION_148();
  v1 = *v0;
  OUTLINED_FUNCTION_24(&unk_1D8594EB0);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6();
}

uint64_t sub_1D8465944()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1D8465A34()
{
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8465AF4, 0, 0);
}

uint64_t sub_1D8465AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[6];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[6];
    v13[10] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39110, &qword_1D8590F10);
    sub_1D847B188();
    sub_1D847B20C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v17)
    {
LABEL_6:
      OUTLINED_FUNCTION_342();

      v18 = v13[9];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v38 = v13[9];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v39 = swift_task_alloc();
      v13[12] = v39;
      OUTLINED_FUNCTION_5_2();
      sub_1D8473E40(v40);
      OUTLINED_FUNCTION_98();
      *v39 = v41;
      v39[1] = sub_1D8465E44;
      v42 = v13[9];
      v43 = v13[6];
      OUTLINED_FUNCTION_9_0(v44);
      OUTLINED_FUNCTION_173();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EB0);
    v28 = swift_task_alloc();
    v13[11] = v28;
    *v28 = v13;
    v28[1] = sub_1D8465D38;
    v29 = v13[6];
    OUTLINED_FUNCTION_197();

    return v30(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8465D38()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v3 = *(v2 + 88);
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

uint64_t sub_1D8465E44()
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

uint64_t sub_1D8465F3C()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_151();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[5];
  v9 = v0[9];

  v10 = OUTLINED_FUNCTION_72();

  return v11(v10);
}

uint64_t sub_1D8465FD4()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_151();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[13];
  v9 = v0[9];

  OUTLINED_FUNCTION_146();

  return v10();
}

uint64_t DistributedChallengeServiceProtocol<>.listAllStoredChallengeDefinitions()()
{
  OUTLINED_FUNCTION_148();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1D8581018();
  v1[12] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_332();
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

uint64_t sub_1D8466114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[11];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[11];
  if (is_remote)
  {
    v18 = v14[8];
    v19 = *(v14[9] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[15] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39110, &qword_1D8590F10);
    sub_1D847B188();
    sub_1D847B20C();
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
      v46 = v14[14];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[16] = v47;
      *v47 = v48;
      v47[1] = sub_1D84663B8;
      v49 = v14[14];
      v50 = v14[11];
      v51 = v14[8];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v32 = *(OUTLINED_FUNCTION_210(v14[10]) + 176);
    OUTLINED_FUNCTION_54();
    v53 = v33 + *v33;
    v35 = *(v34 + 4);
    v36 = swift_task_alloc();
    v14[18] = v36;
    *v36 = v14;
    v36[1] = sub_1D8466548;
    v37 = v14[8];
    OUTLINED_FUNCTION_169();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, v53, a12, a13, a14);
  }
}

uint64_t sub_1D84663B8()
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

uint64_t sub_1D84664B0()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_151();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[7];
  v9 = v0[14];

  v10 = OUTLINED_FUNCTION_72();

  return v11(v10);
}

uint64_t sub_1D8466548()
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
  *(v4 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v4 + 112);

    v14 = *(v8 + 8);

    return v14(v1);
  }
}

uint64_t sub_1D8466680()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_151();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[17];
  v9 = v0[14];

  OUTLINED_FUNCTION_146();

  return v10();
}

uint64_t sub_1D8466718()
{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D8466774(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v4);
  v5 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v5);
}

uint64_t sub_1D84667E8()
{
  v1 = *v0;
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v2);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D846686C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v3);
  sub_1D843EE3C();
  OUTLINED_FUNCTION_221();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static ChallengeDefinition.Trackable.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (a1[1])
  {
    if (v2)
    {
      v3 = *a1;
      v4 = *a2;
      v5 = a2[1];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_506();
      OUTLINED_FUNCTION_436();
      v12 = sub_1D844A4B0(v6, v7, v8, v9, v10, v11);
      swift_bridgeObjectRelease_n();
LABEL_7:
      swift_bridgeObjectRelease_n();
      return v12 & 1;
    }
  }

  else if (!v2)
  {
    v12 = 1;
    goto LABEL_7;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1D84669A4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

uint64_t sub_1D84669C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

unint64_t sub_1D84669DC()
{
  result = qword_1ECA3B370;
  if (!qword_1ECA3B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B370);
  }

  return result;
}

unint64_t sub_1D8466A30()
{
  result = qword_1ECA3B378;
  if (!qword_1ECA3B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B378);
  }

  return result;
}

unint64_t sub_1D8466A84()
{
  result = qword_1ECA38A68;
  if (!qword_1ECA38A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38A68);
  }

  return result;
}

unint64_t sub_1D8466AD8()
{
  result = qword_1ECA3B380;
  if (!qword_1ECA3B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B380);
  }

  return result;
}

unint64_t sub_1D8466B2C()
{
  result = qword_1ECA38A70;
  if (!qword_1ECA38A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38A70);
  }

  return result;
}

unint64_t sub_1D8466B80()
{
  result = qword_1ECA3B388;
  if (!qword_1ECA3B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B388);
  }

  return result;
}

unint64_t sub_1D8466BD4()
{
  result = qword_1ECA3B390;
  if (!qword_1ECA3B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B390);
  }

  return result;
}

uint64_t sub_1D8466C28()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_408();
  v3 = v1 == OUTLINED_FUNCTION_299() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 1701736302 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D8466CB8(char a1)
{
  if (a1)
  {
    return 1701736302;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_1D8466CF0()
{
  OUTLINED_FUNCTION_484();
  if (v2 == v3 && v1 == 0xE300000000000000)
  {

    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v5 = v0 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1D8466D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8466C28();
  *a1 = result;
  return result;
}

uint64_t sub_1D8466D7C()
{
  sub_1D847B290();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8466DB4()
{
  sub_1D847B290();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8466DEC()
{
  sub_1D847B338();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8466E24()
{
  sub_1D847B338();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8466E5C()
{
  sub_1D847B2E4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8466E94()
{
  sub_1D847B2E4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.Trackable.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39128, &qword_1D8590F18);
  v5 = OUTLINED_FUNCTION_1(v4);
  v32 = v6;
  v33 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_196();
  v31 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39130, &qword_1D8590F20);
  v35 = OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_129();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39138, &qword_1D8590F28);
  OUTLINED_FUNCTION_1(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_128();
  v21 = v0[1];
  v34 = *v0;
  v22 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847B290();
  OUTLINED_FUNCTION_390();
  sub_1D8581BB8();
  if (v21)
  {
    sub_1D847B338();
    OUTLINED_FUNCTION_222();
    sub_1D8581988();
    v23 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v25);
    OUTLINED_FUNCTION_277();
    sub_1D8581A58();
    OUTLINED_FUNCTION_267();
    v26(v1, v35);
    v27 = *(v17 + 8);
  }

  else
  {
    OUTLINED_FUNCTION_290();
    sub_1D847B2E4();
    OUTLINED_FUNCTION_222();
    sub_1D8581988();
    (*(v32 + 8))(v31, v33);
    v30 = *(v17 + 8);
  }

  v28 = OUTLINED_FUNCTION_228();
  v29(v28);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

void ChallengeDefinition.Trackable.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    OUTLINED_FUNCTION_429();
    v2 = OUTLINED_FUNCTION_253();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_6();
    sub_1D848211C(v4);
    OUTLINED_FUNCTION_161();
    sub_1D85811E8();
  }

  else
  {
    OUTLINED_FUNCTION_447();
  }
}

uint64_t ChallengeDefinition.Trackable.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D8581B58();
  if (v1)
  {
    MEMORY[0x1DA7191F0](0);
    v3 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_231();
    v6 = sub_1D848211C(v5);
    OUTLINED_FUNCTION_412(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2, v1, v16);
    sub_1D85811E8();
  }

  else
  {
    MEMORY[0x1DA7191F0](1);
  }

  return sub_1D8581B98();
}

void ChallengeDefinition.Trackable.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v60 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39140, &qword_1D8590F30);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_199();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39148, &qword_1D8590F38);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_200();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39150, &qword_1D8590F40);
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_128();
  v17 = v2[3];
  v16 = v2[4];
  v18 = OUTLINED_FUNCTION_508();
  OUTLINED_FUNCTION_260(v18, v19);
  sub_1D847B290();
  OUTLINED_FUNCTION_390();
  v20 = v2;
  sub_1D8581BA8();
  if (!v0)
  {
    v21 = sub_1D8581968();
    sub_1D8440880(v21, 0);
    v23 = v22;
    v25 = v12;
    if (v26 != v24 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v31 == v32)
      {
        __break(1u);
        return;
      }

      v59 = *(v30 + v28);
      sub_1D84408DC(v28 + 1, v27, v23, v30, v28, v29);
      OUTLINED_FUNCTION_503();
      v34 = v33;
      swift_unknownObjectRelease();
      if (v2 == (v34 >> 1))
      {
        if (v59)
        {
          OUTLINED_FUNCTION_290();
          sub_1D847B2E4();
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          swift_unknownObjectRelease();
          v35 = OUTLINED_FUNCTION_276();
          v36(v35);
          v37 = OUTLINED_FUNCTION_212_0();
          v38(v37, v12);
          v39 = 0;
          v40 = 0;
        }

        else
        {
          LOBYTE(v61) = 0;
          sub_1D847B338();
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v52 = OUTLINED_FUNCTION_189();
          __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
          OUTLINED_FUNCTION_2_0();
          sub_1D848211C(v54);
          OUTLINED_FUNCTION_259();
          sub_1D8581958();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_265();
          v55 = OUTLINED_FUNCTION_496();
          v56(v55);
          v57 = OUTLINED_FUNCTION_218();
          v58(v57, v12);
          v39 = v61;
          v40 = v62;
        }

        *v60 = v39;
        v60[1] = v40;
        goto LABEL_10;
      }

      v25 = v12;
    }

    v41 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v43 = &type metadata for ChallengeDefinition.Trackable;
    sub_1D8581888();
    OUTLINED_FUNCTION_178();
    v45 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v41);
    v47 = *(v46 + 104);
    v48 = OUTLINED_FUNCTION_498();
    v49(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_212_0();
    v51(v50, v25);
    v20 = v2;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D846779C()
{
  result = qword_1ECA38A88;
  if (!qword_1ECA38A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38A88);
  }

  return result;
}

uint64_t sub_1D84677F0()
{
  v2 = *v0;
  sub_1D8581B58();
  ChallengeDefinition.Trackable.hash(into:)();
  return sub_1D8581B98();
}

GameServices::ChallengeDefinition::DurationComponent::TimeUnit_optional __swiftcall ChallengeDefinition.DurationComponent.TimeUnit.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ChallengeDefinition.DurationComponent.TimeUnit.rawValue.getter()
{
  result = 0x646E6F636573;
  switch(*v0)
  {
    case 1:
      result = 0x6574756E696DLL;
      break;
    case 2:
      result = 1920298856;
      break;
    case 3:
      result = 7954788;
      break;
    case 4:
      result = 1801807223;
      break;
    case 5:
      result = 0x68746E6F6DLL;
      break;
    case 6:
      result = 1918985593;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8467960(uint64_t a1, void (*a2)(char *))
{
  v3 = OUTLINED_FUNCTION_379();
  v11 = OUTLINED_FUNCTION_483(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  a2(v11);
  return sub_1D8581B98();
}

uint64_t sub_1D84679AC()
{
  sub_1D85812B8();
}

uint64_t sub_1D8467A68()
{
  sub_1D85812B8();
}

uint64_t sub_1D8467BB0()
{
  sub_1D85812B8();
}

uint64_t sub_1D8467CB0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_1D8581B58();
  v12 = OUTLINED_FUNCTION_483(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  a3(v12);
  return sub_1D8581B98();
}

uint64_t sub_1D8467D04@<X0>(uint64_t *a1@<X8>)
{
  result = ChallengeDefinition.DurationComponent.TimeUnit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8467D2C()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482074();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D8467D74()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482074();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t static ChallengeDefinition.DurationComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D844A924(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1D8467E08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953066613 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_439(1970037110);
    if (v3 && a2 == 0xE500000000000000)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_369();
      OUTLINED_FUNCTION_364();
      if (v3)
      {
        return v6 + 1;
      }

      else
      {
        return v6;
      }
    }
  }
}

uint64_t sub_1D8467EA4(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1953066613;
  }
}

uint64_t sub_1D8467ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8467E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8467F00()
{
  sub_1D847B38C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8467F38()
{
  sub_1D847B38C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.DurationComponent.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39158, &qword_1D8590F48);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_110();
  v10 = *v0;
  v18 = *(v0 + 1);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_260(v13, v14);
  sub_1D847B38C();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_365();
  sub_1D8581BB8();
  sub_1D847B3E0();
  OUTLINED_FUNCTION_232();
  sub_1D8581A58();
  if (!v1)
  {
    OUTLINED_FUNCTION_232();
    sub_1D8581A38();
  }

  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_291();
  v17(v16);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.DurationComponent.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_1D8467BB0();
  return MEMORY[0x1DA7191F0](v1);
}

uint64_t ChallengeDefinition.DurationComponent.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  v3 = OUTLINED_FUNCTION_379();
  OUTLINED_FUNCTION_483(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  sub_1D8467BB0();
  v11 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v11);
  return sub_1D8581B98();
}

void ChallengeDefinition.DurationComponent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_285();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39168, &qword_1D8590F50);
  OUTLINED_FUNCTION_1(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_160();
  v25 = v16[3];
  v26 = v16[4];
  v27 = OUTLINED_FUNCTION_445();
  OUTLINED_FUNCTION_260(v27, v28);
  sub_1D847B38C();
  OUTLINED_FUNCTION_365();
  sub_1D8581BA8();
  if (!v13)
  {
    sub_1D847B434();
    OUTLINED_FUNCTION_272();
    sub_1D8581958();
    v29 = sub_1D8581938();
    (*(v21 + 8))(v14, v19);
    *v18 = a13;
    *(v18 + 8) = v29;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84682FC()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  v3 = sub_1D8581B58();
  OUTLINED_FUNCTION_483(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  sub_1D8467BB0();
  v11 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v11);
  return sub_1D8581B98();
}

uint64_t static ChallengeDefinition.AttemptLimit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_205_0();
    }

    return OUTLINED_FUNCTION_192();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_192();
  }

  return *a1 == *a2;
}

uint64_t sub_1D8468378()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x646574696D696CLL && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6574696D696C6E75 && v0 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D846841C(char a1)
{
  if (a1)
  {
    return 0x6574696D696C6E75;
  }

  else
  {
    return 0x646574696D696CLL;
  }
}

uint64_t sub_1D8468458(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84684C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8468378();
  *a1 = result;
  return result;
}

uint64_t sub_1D84684EC()
{
  sub_1D847B488();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8468524()
{
  sub_1D847B488();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8468598()
{
  sub_1D847B530();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84685D0()
{
  sub_1D847B530();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8468608()
{
  sub_1D847B4DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8468640()
{
  sub_1D847B4DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.AttemptLimit.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39178, &qword_1D8590F58);
  v5 = OUTLINED_FUNCTION_1(v4);
  v27 = v6;
  v28 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_493(v10);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39180, &qword_1D8590F60);
  OUTLINED_FUNCTION_1(v26);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_250_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39188, &qword_1D8590F68);
  OUTLINED_FUNCTION_1(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_129();
  v24 = *v0;
  v20 = *(v0 + 8);
  v21 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847B488();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  if (v20)
  {
    OUTLINED_FUNCTION_338();
    sub_1D847B4DC();
    OUTLINED_FUNCTION_274();
    sub_1D8581988();
    (*(v27 + 8))(v25, v28);
  }

  else
  {
    sub_1D847B530();
    OUTLINED_FUNCTION_274();
    sub_1D8581988();
    sub_1D8581A38();
    v22 = OUTLINED_FUNCTION_362();
    v23(v22, v26);
  }

  (*(v16 + 8))(v1, v14);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.AttemptLimit.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1DA7191F0](0);
  }

  return MEMORY[0x1DA7191F0](v1);
}

uint64_t ChallengeDefinition.AttemptLimit.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_379();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_529();
  }

  v3 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v3);
  return sub_1D8581B98();
}

void ChallengeDefinition.AttemptLimit.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v54 = v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39190, &qword_1D8590F70);
  OUTLINED_FUNCTION_1(v53);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_129();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39198, &qword_1D8590F78);
  OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_160();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391A0, &qword_1D8590F80);
  OUTLINED_FUNCTION_1(v13);
  v55 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_128();
  v18 = v4[3];
  v19 = v4[4];
  v20 = OUTLINED_FUNCTION_496();
  OUTLINED_FUNCTION_260(v20, v21);
  sub_1D847B488();
  OUTLINED_FUNCTION_390();
  sub_1D8581BA8();
  if (!v0)
  {
    OUTLINED_FUNCTION_499();
    v22 = sub_1D8581968();
    sub_1D8440880(v22, 0);
    if (v24 != v23 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v29 == v30)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_517(v25, v26, v27, v28);
      OUTLINED_FUNCTION_503();
      v32 = v31;
      swift_unknownObjectRelease();
      if (!(v32 >> 1))
      {
        if (v4)
        {
          OUTLINED_FUNCTION_338();
          sub_1D847B4DC();
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v33 = v54;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_267();
          v45(v2, v53);
          v46 = OUTLINED_FUNCTION_212_0();
          v47(v46, v13);
          v48 = 0;
        }

        else
        {
          sub_1D847B530();
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v33 = v54;
          v48 = sub_1D8581938();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_265();
          v49(v1, v9);
          v50 = *(v55 + 8);
          v51 = OUTLINED_FUNCTION_228();
          v52(v51);
        }

        *v33 = v48;
        *(v33 + 8) = v4;
        __swift_destroy_boxed_opaque_existential_1(v4);
        goto LABEL_10;
      }
    }

    v34 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v36 = &type metadata for ChallengeDefinition.AttemptLimit;
    OUTLINED_FUNCTION_499();
    sub_1D8581888();
    OUTLINED_FUNCTION_178();
    v38 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v34);
    v40 = *(v39 + 104);
    v41 = OUTLINED_FUNCTION_498();
    v42(v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_212_0();
    v44(v43, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_10:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8468E6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D8581B58();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_529();
  }

  v3 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v3);
  return sub_1D8581B98();
}

uint64_t ChallengeDefinition.Version.minimumVersion.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_194();
}

GameServices::ChallengeDefinition::Version __swiftcall ChallengeDefinition.Version.init(platforms:minimumVersion:)(GameServices::GameDescription::CompatiblePlatforms platforms, Swift::String minimumVersion)
{
  *v2 = *platforms.rawValue;
  *(v2 + 8) = minimumVersion;
  result.minimumVersion = minimumVersion;
  result.platforms = platforms;
  return result;
}

uint64_t static ChallengeDefinition.Version.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (!sub_1D844AAA4())
  {
    return 0;
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  OUTLINED_FUNCTION_194();

  return sub_1D8581AB8();
}

uint64_t sub_1D8468F94()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x6D726F6674616C70 && v2 == 0xE900000000000073;
  if (v3 || (OUTLINED_FUNCTION_143() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x566D756D696E696DLL && v0 == 0xEE006E6F69737265)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D8469040(char a1)
{
  if (a1)
  {
    return 0x566D756D696E696DLL;
  }

  else
  {
    return 0x6D726F6674616C70;
  }
}

uint64_t sub_1D8469090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8468F94();
  *a1 = result;
  return result;
}

uint64_t sub_1D84690B8()
{
  sub_1D847B584();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84690F0()
{
  sub_1D847B584();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.Version.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391A8, &qword_1D8590F88);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_110();
  v10 = *v0;
  v15 = v0[2];
  v16 = v0[1];
  v11 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847B584();
  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  sub_1D847B5D8();
  OUTLINED_FUNCTION_232();
  sub_1D8581A58();
  if (!v1)
  {
    OUTLINED_FUNCTION_232();
    sub_1D8581A08();
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_291();
  v14(v13);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.Version.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = *v0;
  sub_1D847B62C();
  OUTLINED_FUNCTION_298();
  sub_1D85811E8();
  OUTLINED_FUNCTION_188();
  return sub_1D85812B8();
}

uint64_t ChallengeDefinition.Version.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_379();
  sub_1D847B62C();
  sub_1D85811E8();
  OUTLINED_FUNCTION_397();
  sub_1D85812B8();
  return sub_1D8581B98();
}

void ChallengeDefinition.Version.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_285();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391C0, &qword_1D8590F90);
  OUTLINED_FUNCTION_1(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_128();
  v21 = v12[3];
  v22 = v12[4];
  v23 = OUTLINED_FUNCTION_445();
  OUTLINED_FUNCTION_260(v23, v24);
  sub_1D847B584();
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_365();
  sub_1D8581BA8();
  if (!v10)
  {
    sub_1D847B680();
    OUTLINED_FUNCTION_222();
    sub_1D8581958();
    v25 = sub_1D8581908();
    v27 = v26;
    v28 = *(v17 + 8);
    v29 = OUTLINED_FUNCTION_233();
    v30(v29);
    *v14 = a10;
    v14[1] = v25;
    v14[2] = v27;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84694FC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D8581B58();
  sub_1D847B62C();
  sub_1D85811E8();
  OUTLINED_FUNCTION_397();
  sub_1D85812B8();
  return sub_1D8581B98();
}

uint64_t sub_1D8469584(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001D8583870 == a2;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8583890 == a2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v7 + 1;
    }

    else
    {
      return v7;
    }
  }
}

unint64_t sub_1D8469634(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D8469678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8469584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84696A0()
{
  sub_1D847B6D4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84696D8()
{
  sub_1D847B6D4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8469710()
{
  sub_1D847B77C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8469748()
{
  sub_1D847B77C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8469780()
{
  sub_1D847B728();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84697B8()
{
  sub_1D847B728();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.ValidationError.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391D0, &qword_1D8590F98);
  v5 = OUTLINED_FUNCTION_1(v4);
  v28 = v6;
  v29 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_196();
  v27 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391D8, &qword_1D8590FA0);
  OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_250_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391E0, &qword_1D8590FA8);
  OUTLINED_FUNCTION_1(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_129();
  v21 = *v0;
  v22 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847B6D4();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  v23 = (v17 + 8);
  if (v21)
  {
    OUTLINED_FUNCTION_338();
    sub_1D847B728();
    OUTLINED_FUNCTION_272();
    sub_1D8581988();
    (*(v28 + 8))(v27, v29);
  }

  else
  {
    sub_1D847B77C();
    OUTLINED_FUNCTION_272();
    sub_1D8581988();
    v24 = OUTLINED_FUNCTION_362();
    v26(v24, v25);
  }

  (*v23)(v1, v15);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.ValidationError.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_379();
  v2 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

void ChallengeDefinition.ValidationError.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v50 = v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391E8, &qword_1D8590FB0);
  OUTLINED_FUNCTION_1(v51);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_251();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391F0, &qword_1D8590FB8);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_160();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA391F8, &unk_1D8590FC0);
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_128();
  v17 = v3[3];
  v16 = v3[4];
  v18 = OUTLINED_FUNCTION_497();
  OUTLINED_FUNCTION_260(v18, v19);
  sub_1D847B6D4();
  OUTLINED_FUNCTION_390();
  sub_1D8581BA8();
  if (!v1)
  {
    OUTLINED_FUNCTION_499();
    v20 = sub_1D8581968();
    sub_1D8440880(v20, 0);
    if (v22 != v21 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v27 == v28)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_517(v23, v24, v25, v26);
      OUTLINED_FUNCTION_503();
      v30 = v29;
      swift_unknownObjectRelease();
      if (!(v30 >> 1))
      {
        if (v3)
        {
          OUTLINED_FUNCTION_338();
          sub_1D847B728();
          v31 = v0;
          v32 = v12;
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v33 = v50;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_265();
          v35 = v31;
          v36 = v51;
        }

        else
        {
          sub_1D847B77C();
          v32 = v12;
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v33 = v50;
          swift_unknownObjectRelease();
          v35 = OUTLINED_FUNCTION_275();
          v36 = v8;
        }

        v34(v35, v36);
        v48 = OUTLINED_FUNCTION_218();
        v49(v48, v32);
        *v33 = v3;
        __swift_destroy_boxed_opaque_existential_1(v3);
        goto LABEL_10;
      }
    }

    v37 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v39 = &type metadata for ChallengeDefinition.ValidationError;
    OUTLINED_FUNCTION_499();
    sub_1D8581888();
    OUTLINED_FUNCTION_178();
    v41 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v37);
    v43 = *(v42 + 104);
    v44 = OUTLINED_FUNCTION_498();
    v45(v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_212_0();
    v47(v46, v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeDefinition.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t ChallengeDefinition.groupId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_194();
}

uint64_t ChallengeDefinition.groupId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ChallengeDefinition.title.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_194();
}

uint64_t ChallengeDefinition.description.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_194();
}

uint64_t ChallengeDefinition.artwork.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), sizeof(__dst));
  memcpy(a1, (v1 + 80), 0x70uLL);
  return sub_1D847C204();
}

uint64_t ChallengeDefinition.image.getter@<X0>(void *a1@<X8>)
{
  result = *(v1 + 88);
  if (result)
  {
    v4 = *(v1 + 80);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

__n128 ChallengeDefinition.init(id:groupId:ref:title:description:image:tracking:durations:attemptLimits:isArchived:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = *a5;
  v20 = a5[1];
  v21 = a11[1];
  v31 = a12[1];
  v32 = *a12;
  if (v21)
  {
    v40 = *a11;
    v41 = v21;
    Ref<A>.artwork.getter(v37);

    v29 = v37[1];
    v30 = v37[0];
    v27 = v37[3];
    v28 = v37[2];
    v25 = v37[5];
    v26 = v37[4];
    v22 = v38;
    v21 = v39;
  }

  else
  {
    v22 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
  }

  v23 = sub_1D846B304(a14, &unk_1F5390418);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v19;
  *(a9 + 40) = v20;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 80) = v30;
  *(a9 + 96) = v29;
  *(a9 + 112) = v28;
  *(a9 + 128) = v27;
  result = v26;
  *(a9 + 144) = v26;
  *(a9 + 160) = v25;
  *(a9 + 176) = v22;
  *(a9 + 184) = v21;
  *(a9 + 192) = v32;
  *(a9 + 200) = v31;
  *(a9 + 208) = a13;
  *(a9 + 216) = (v23 & 1) == 0;
  *(a9 + 217) = a15 & 1;
  *(a9 + 224) = 0;
  *(a9 + 232) = 3;
  *(a9 + 240) = MEMORY[0x1E69E7CC0];
  *(a9 + 248) = a14;
  return result;
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:attemptLimits:isArchived:versions:releaseState:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, void *__src, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, uint64_t *a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char *a40)
{
  OUTLINED_FUNCTION_516();
  v58 = v44;
  v56 = v45;
  v57 = v46;
  v54 = v47;
  OUTLINED_FUNCTION_486();
  v50 = *v48;
  v49 = v48[1];
  v51 = *a35;
  v53 = a35[1];
  v55 = *a40;
  v52 = (sub_1D846B304(a37, &unk_1F5390448) & 1) == 0;
  *v43 = v42;
  *(v43 + 8) = v41;
  *(v43 + 16) = v40;
  *(v43 + 24) = v54;
  *(v43 + 32) = v50;
  *(v43 + 40) = v49;
  *(v43 + 48) = v56;
  *(v43 + 56) = v57;
  *(v43 + 64) = v58;
  *(v43 + 72) = a33;
  memcpy((v43 + 80), a34, 0x70uLL);
  *(v43 + 192) = v51;
  *(v43 + 200) = v53;
  *(v43 + 208) = a36;
  *(v43 + 216) = v52;
  *(v43 + 217) = a38;
  *(v43 + 224) = a39;
  *(v43 + 232) = v55;
  *(v43 + 240) = MEMORY[0x1E69E7CC0];
  *(v43 + 248) = a37;
  OUTLINED_FUNCTION_515();
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:attemptLimits:isArchived:versions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, uint64_t *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37)
{
  OUTLINED_FUNCTION_516();
  v53 = v41;
  v54 = v42;
  v52 = v43;
  v45 = v44;
  OUTLINED_FUNCTION_486();
  v47 = *v46;
  v48 = v46[1];
  v50 = a33[1];
  v51 = *a33;
  v49 = (sub_1D846B304(a35, &unk_1F5390478) & 1) == 0;
  *v40 = v39;
  *(v40 + 8) = v38;
  *(v40 + 16) = v37;
  *(v40 + 24) = v45;
  *(v40 + 32) = v47;
  *(v40 + 40) = v48;
  *(v40 + 48) = v52;
  *(v40 + 56) = v53;
  *(v40 + 64) = v54;
  *(v40 + 72) = a31;
  memcpy((v40 + 80), a32, 0x70uLL);
  *(v40 + 192) = v51;
  *(v40 + 200) = v50;
  *(v40 + 208) = a34;
  *(v40 + 216) = v49;
  *(v40 + 217) = a36;
  *(v40 + 224) = a37;
  *(v40 + 232) = 3;
  *(v40 + 240) = MEMORY[0x1E69E7CC0];
  *(v40 + 248) = a35;
  OUTLINED_FUNCTION_515();
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:attemptLimits:isRepeatable:isArchived:versions:releaseState:validationErrors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, __int128 *a35, uint64_t a36, uint64_t a37, char a38, char a39, uint64_t a40, char *a41, uint64_t a42)
{
  OUTLINED_FUNCTION_513();
  v46 = v45;
  v47 = a37;
  v63 = *a35;
  v64 = *a41;
  v61 = v49;
  v62 = v50;
  v59 = v51;
  v60 = v52;
  v57 = v48[1];
  v58 = *v48;
  if (a38 != 2)
  {
    v53 = v42;
    v54 = v43;
    v55 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39208, &unk_1D8590FD0);
    v47 = OUTLINED_FUNCTION_532();
    v56 = a38 & 1;
    OUTLINED_FUNCTION_308(v47, xmmword_1D8590A70)[2].n128_u8[8] = a38 & 1;
    goto LABEL_5;
  }

  if (a37)
  {
    v53 = v42;
    v54 = v43;
    v55 = v44;
    v56 = (sub_1D846B304(a37, &unk_1F53904A8) & 1) == 0;
LABEL_5:
    *v46 = v53;
    *(v46 + 8) = v54;
    *(v46 + 16) = v55;
    *(v46 + 24) = v59;
    *(v46 + 32) = v58;
    *(v46 + 40) = v57;
    *(v46 + 48) = v60;
    *(v46 + 56) = v61;
    *(v46 + 64) = v62;
    *(v46 + 72) = a33;
    memcpy((v46 + 80), a34, 0x70uLL);
    *(v46 + 192) = v63;
    *(v46 + 208) = a36;
    *(v46 + 216) = v56;
    *(v46 + 217) = a39 & 1;
    *(v46 + 224) = a40;
    *(v46 + 232) = v64;
    *(v46 + 240) = a42;
    *(v46 + 248) = v47;
    OUTLINED_FUNCTION_514();
    return;
  }

  sub_1D8581838();
  __break(1u);
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:isRepeatable:isArchived:versions:releaseState:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, void *__src, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, uint64_t *a35, uint64_t a36, unsigned __int8 a37, char a38, uint64_t a39, char *a40)
{
  OUTLINED_FUNCTION_516();
  v62 = v40;
  v60 = v41;
  v61 = v42;
  v58 = v43;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = *v52;
  v54 = v52[1];
  v55 = *a35;
  v57 = a35[1];
  v59 = *a40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39208, &unk_1D8590FD0);
  v56 = OUTLINED_FUNCTION_532();
  OUTLINED_FUNCTION_308(v56, xmmword_1D8590A70)[2].n128_u8[8] = a37;
  *v51 = v49;
  *(v51 + 8) = v47;
  *(v51 + 16) = v45;
  *(v51 + 24) = v58;
  *(v51 + 32) = v53;
  *(v51 + 40) = v54;
  *(v51 + 48) = v60;
  *(v51 + 56) = v61;
  *(v51 + 64) = v62;
  *(v51 + 72) = a33;
  memcpy((v51 + 80), a34, 0x70uLL);
  *(v51 + 192) = v55;
  *(v51 + 200) = v57;
  *(v51 + 208) = a36;
  *(v51 + 216) = a37;
  *(v51 + 217) = a38;
  *(v51 + 224) = a39;
  *(v51 + 232) = v59;
  *(v51 + 240) = MEMORY[0x1E69E7CC0];
  *(v51 + 248) = v56;
  OUTLINED_FUNCTION_515();
}

void ChallengeDefinition.init(id:groupId:ref:title:description:artwork:tracking:durations:isRepeatable:isArchived:versions:releaseState:validationErrors:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *__src, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, uint64_t *a37, uint64_t a38, unsigned __int8 a39, char a40, uint64_t a41, char *a42, uint64_t a43)
{
  OUTLINED_FUNCTION_513();
  v65 = v43;
  v63 = v44;
  v64 = v45;
  v60 = v46;
  v61 = v47;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = *v54;
  v56 = v54[1];
  v57 = *a37;
  v58 = a37[1];
  v62 = *a42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39208, &unk_1D8590FD0);
  v59 = OUTLINED_FUNCTION_532();
  OUTLINED_FUNCTION_308(v59, xmmword_1D8590A70)[2].n128_u8[8] = a39;
  *v53 = v51;
  *(v53 + 8) = v49;
  *(v53 + 16) = v60;
  *(v53 + 24) = v61;
  *(v53 + 32) = v55;
  *(v53 + 40) = v56;
  *(v53 + 48) = v63;
  *(v53 + 56) = v64;
  *(v53 + 64) = v65;
  *(v53 + 72) = a35;
  memcpy((v53 + 80), a36, 0x70uLL);
  *(v53 + 192) = v57;
  *(v53 + 200) = v58;
  *(v53 + 208) = a38;
  *(v53 + 216) = a39;
  *(v53 + 217) = a40;
  *(v53 + 224) = a41;
  *(v53 + 232) = v62;
  *(v53 + 240) = a43;
  *(v53 + 248) = v59;
  OUTLINED_FUNCTION_514();
}

void static ChallengeDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v59 = v2[5];
  v60 = v2[4];
  v55 = v2[7];
  v56 = v2[6];
  v50 = v2[8];
  v52 = v2[9];
  memcpy(__dst, v2 + 10, sizeof(__dst));
  v46 = v3[24];
  v48 = v3[25];
  v44 = v3[26];
  v42 = *(v3 + 216);
  v40 = *(v3 + 217);
  v38 = v3[28];
  v36 = *(v3 + 232);
  v34 = v3[30];
  v32 = v3[31];
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v57 = v1[5];
  v58 = v1[4];
  v53 = v1[7];
  v54 = v1[6];
  v49 = v1[8];
  v51 = v1[9];
  memcpy(v68, v1 + 10, sizeof(v68));
  v45 = v1[24];
  v47 = v1[25];
  v43 = v1[26];
  v41 = *(v1 + 216);
  v39 = *(v1 + 217);
  v37 = v1[28];
  v35 = *(v1 + 232);
  v12 = v4 == v8 && v5 == v9;
  v33 = v1[30];
  v31 = v1[31];
  if (!v12)
  {
    OUTLINED_FUNCTION_339();
    if ((sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (v7)
  {
    if (!v10)
    {
      goto LABEL_38;
    }

    v13 = v6 == v11 && v7 == v10;
    if (!v13 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v10)
  {
    goto LABEL_38;
  }

  if ((sub_1D844A4B0(v60, v59, v58, v57, &qword_1ECA38A78, &unk_1D85A22B0) & 1) == 0)
  {
    goto LABEL_38;
  }

  v14 = v56 == v54 && v55 == v53;
  if (!v14 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (v52)
  {
    if (!v51)
    {
      goto LABEL_38;
    }

    v15 = v50 == v49 && v52 == v51;
    if (!v15 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v51)
  {
    goto LABEL_38;
  }

  v16 = __dst[0];
  v17 = __dst[1];
  v19 = v68[0];
  v18 = v68[1];
  if (__dst[1])
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    OUTLINED_FUNCTION_381(__src);
    memcpy(v64, __src, sizeof(v64));
    if (v18)
    {
      memcpy(&v63[2], v1 + 12, 0x60uLL);
      v63[0] = v19;
      v63[1] = v18;
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_303();
      sub_1D847B878();
      v20 = sub_1D8581208();
      memcpy(v61, v63, sizeof(v61));
      sub_1D847B824(v61);
      memcpy(v62, v64, sizeof(v62));
      sub_1D847B824(v62);
      v63[0] = v16;
      v63[1] = v17;
      memcpy(&v63[2], v3 + 12, 0x60uLL);
      OUTLINED_FUNCTION_397();
      sub_1D8436E18(v21, v22, v23);
      if ((v20 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    memcpy(v63, __src, sizeof(v63));
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_303();
    sub_1D847B824(v63);
LABEL_37:
    __src[0] = v16;
    __src[1] = v17;
    memcpy(&__src[2], v3 + 12, 0x60uLL);
    __src[14] = v19;
    __src[15] = v18;
    memcpy(v66, v1 + 12, sizeof(v66));
    sub_1D8436E18(__src, &qword_1ECA39210, &qword_1D859A9A0);
    goto LABEL_38;
  }

  if (v68[1])
  {
    sub_1D847C204();
    sub_1D847C204();
    goto LABEL_37;
  }

  __src[0] = __dst[0];
  __src[1] = 0;
  OUTLINED_FUNCTION_381(__src);
  OUTLINED_FUNCTION_361();
  sub_1D847C204();
  OUTLINED_FUNCTION_361();
  sub_1D847C204();
  OUTLINED_FUNCTION_231();
  sub_1D8436E18(v24, v25, v26);
LABEL_40:
  if (v48)
  {
    if (!v47)
    {
      goto LABEL_38;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v27 = sub_1D844A4B0(v46, v48, v45, v47, &qword_1ECA38A90, &qword_1D8590AB0);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if ((v27 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v47)
    {
      goto LABEL_38;
    }

    swift_bridgeObjectRelease_n();
  }

  if ((sub_1D846B080(v44, v43) & 1) != 0 && ((v42 ^ v41) & 1) == 0 && ((v40 ^ v39) & 1) == 0)
  {
    if (v38)
    {
      if (!v37)
      {
        goto LABEL_38;
      }

      v28 = OUTLINED_FUNCTION_194();
      v30 = sub_1D846B138(v28, v29);

      if ((v30 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v37)
    {
      goto LABEL_38;
    }

    if (v36 == 3)
    {
      if (v35 != 3)
      {
        goto LABEL_38;
      }
    }

    else
    {
      LOBYTE(__src[0]) = v36;
      if (v35 == 3)
      {
        goto LABEL_38;
      }

      v64[0] = v35;
      sub_1D847B7D0();
      if ((sub_1D8581208() & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (sub_1D846B294(v34, v33))
    {
      sub_1D846B304(v32, v31);
    }
  }

LABEL_38:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D846AD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
      sub_1D848211C(&unk_1ECA394B8);
      v5 = (a1 + 40);
      v6 = (a2 + 40);
      do
      {
        v7 = *v5;
        v12 = *(v5 - 1);
        v10 = *(v6 - 1);
        v11 = *v6;

        v8 = sub_1D8581208();

        if ((v8 & 1) == 0)
        {
          break;
        }

        v5 += 2;
        v6 += 2;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D846AE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = v3 + 2;
      v6 = *v3;
      v7 = *v4;
      v8 = 0xE600000000000000;
      v9 = 0x646E6F636573;
      switch(*(v3 - 8))
      {
        case 1:
          v9 = 0x6574756E696DLL;
          break;
        case 2:
          v8 = 0xE400000000000000;
          v9 = 1920298856;
          break;
        case 3:
          v8 = 0xE300000000000000;
          v9 = 7954788;
          break;
        case 4:
          v8 = 0xE400000000000000;
          v9 = 1801807223;
          break;
        case 5:
          v8 = 0xE500000000000000;
          v9 = 0x68746E6F6DLL;
          break;
        case 6:
          v8 = 0xE400000000000000;
          v9 = 1918985593;
          break;
        default:
          break;
      }

      v10 = 0xE600000000000000;
      v11 = 0x646E6F636573;
      switch(*(v4 - 8))
      {
        case 1:
          v11 = 0x6574756E696DLL;
          break;
        case 2:
          v10 = 0xE400000000000000;
          v11 = 1920298856;
          break;
        case 3:
          v10 = 0xE300000000000000;
          v11 = 7954788;
          break;
        case 4:
          v10 = 0xE400000000000000;
          v11 = 1801807223;
          break;
        case 5:
          v10 = 0xE500000000000000;
          v11 = 0x68746E6F6DLL;
          break;
        case 6:
          v10 = 0xE400000000000000;
          v11 = 1918985593;
          break;
        default:
          break;
      }

      if (v9 == v11 && v8 == v10)
      {

        if (v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_1D8581AB8();

        result = 0;
        if ((v13 & 1) == 0 || v6 != v7)
        {
          return result;
        }
      }

      v4 += 2;
      v3 = v5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D846B080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1D846AE70(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D846B138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    sub_1D84820C8();
    v5 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = *(i - 1);
      v10 = *i;
      v16 = *(i - 2);
      v17 = *(v5 - 2);

      sub_1D85813D8();
      sub_1D85813D8();
      if (v15 != v14)
      {
        break;
      }

      if (v8 == v9 && v7 == v10)
      {
      }

      else
      {
        v12 = sub_1D8581AB8();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      v5 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D846B294(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D846B304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D846B378(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x644970756F7267 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_484();
      v8 = a1 == v7 && a2 == 0xE300000000000000;
      if (v8 || (OUTLINED_FUNCTION_35_0(), (OUTLINED_FUNCTION_7() & 1) != 0))
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_439(1819568500);
        v9 = v3 && a2 == 0xE500000000000000;
        if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == OUTLINED_FUNCTION_473() && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
            if (v12 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_440();
              v13 = v3 && a2 == 0xE800000000000000;
              if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v15 = a1 == OUTLINED_FUNCTION_171() && a2 == v14;
                if (v15 || (OUTLINED_FUNCTION_143() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v17 = a1 == OUTLINED_FUNCTION_472() && a2 == v16;
                  if (v17 || (OUTLINED_FUNCTION_7() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_441();
                    v19 = v3 && a2 == v18;
                    if (v19 || (OUTLINED_FUNCTION_7() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v20 = a1 == 0x736E6F6973726576 && a2 == 0xE800000000000000;
                      if (v20 || (OUTLINED_FUNCTION_7() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v22 = a1 == OUTLINED_FUNCTION_223() && a2 == v21;
                        if (v22 || (OUTLINED_FUNCTION_7() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_184_0();
                          v25 = a1 == v24 && v23 == a2;
                          if (v25 || (OUTLINED_FUNCTION_7() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == OUTLINED_FUNCTION_448() && a2 == v26)
                          {

                            return 13;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_7();
                            OUTLINED_FUNCTION_369();
                            if (a1)
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

uint64_t sub_1D846B668(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x644970756F7267;
      break;
    case 2:
      result = OUTLINED_FUNCTION_391();
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = OUTLINED_FUNCTION_473();
      break;
    case 5:
      result = 0x6B726F77747261;
      break;
    case 6:
      result = OUTLINED_FUNCTION_318();
      break;
    case 7:
      result = OUTLINED_FUNCTION_171();
      break;
    case 8:
      result = OUTLINED_FUNCTION_472();
      break;
    case 9:
      result = 0x7669686372417369;
      break;
    case 10:
      result = 0x736E6F6973726576;
      break;
    case 11:
      result = OUTLINED_FUNCTION_223();
      break;
    case 12:
      result = OUTLINED_FUNCTION_351();
      break;
    case 13:
      result = OUTLINED_FUNCTION_448();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846B7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D846B378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D846B7DC()
{
  sub_1D847B8CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D846B814()
{
  sub_1D847B8CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39228, &qword_1D8590FE0);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_110();
  v10 = v0[1];
  v33 = v0[2];
  v34 = *v0;
  v31 = v0[4];
  v32 = v0[3];
  v29 = v0[6];
  v30 = v0[5];
  v26 = v0[8];
  v27 = v0[9];
  v28 = v0[7];
  memcpy(v37, v0 + 10, sizeof(v37));
  v24 = v0[24];
  v25 = v0[25];
  v23 = v0[26];
  v21 = *(v0 + 217);
  v22 = *(v0 + 216);
  v20 = v0[28];
  v19 = *(v0 + 232);
  v17 = v0[31];
  v18 = v0[30];
  v11 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847B8CC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_477();
  LOBYTE(v36[0]) = 0;
  sub_1D8581A08();
  if (v1)
  {
    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_238();
    v14(v13);
  }

  else
  {
    sub_1D8581998();
    v36[0] = v31;
    v36[1] = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A78, &unk_1D85A22B0);
    OUTLINED_FUNCTION_4();
    sub_1D848211C(v15);
    OUTLINED_FUNCTION_488();
    sub_1D8581A58();

    sub_1D8581A08();
    LOBYTE(v36[0]) = 4;
    sub_1D8581998();
    OUTLINED_FUNCTION_530(v36);
    v35[119] = 5;
    sub_1D847C204();
    sub_1D847B920();
    sub_1D85819E8();
    memcpy(v35, v36, 0x70uLL);
    sub_1D8436E18(v35, &qword_1ECA39200, &qword_1D859A990);
    sub_1D8466B2C();

    sub_1D8581A58();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39238, &qword_1D8590FE8);
    sub_1D847B974();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_244();
    sub_1D8581A58();
    sub_1D8581A18();
    sub_1D8581A18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39248, &qword_1D8590FF0);
    sub_1D847B9F8();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_244();
    sub_1D85819E8();
    sub_1D8466A84();
    OUTLINED_FUNCTION_488();
    sub_1D85819E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39260, &qword_1D8590FF8);
    sub_1D847BAD0();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_488();
    sub_1D8581A58();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39278, &qword_1D8591000);
    sub_1D847BBA8();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_436();
    OUTLINED_FUNCTION_488();
    sub_1D8581A58();
    (*(v6 + 8))(v16);
  }

  OUTLINED_FUNCTION_284_0();
}

void ChallengeDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[7];
  v10 = v0[9];
  v11 = v0[11];
  v20 = v0[8];
  v21 = v0[10];
  v22 = v0[24];
  v23 = v0[6];
  v24 = v0[25];
  v25 = v0[26];
  v26 = *(v0 + 216);
  v27 = *(v0 + 217);
  v28 = v0[28];
  v29 = *(v0 + 232);
  v30 = v0[30];
  v31 = v0[31];
  sub_1D85812B8();
  if (v6)
  {
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_164();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v34[0] = v8;
  v34[1] = v7;
  v12 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v14);
  OUTLINED_FUNCTION_445();
  sub_1D85811E8();
  sub_1D85812B8();
  if (v10)
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (v11)
  {
    OUTLINED_FUNCTION_381(__src);
    __src[0] = v21;
    __src[1] = v11;
    OUTLINED_FUNCTION_414();
    v33[0] = v21;
    v33[1] = v11;
    OUTLINED_FUNCTION_381(v33);
    sub_1D847BC2C(v33, v34);
    sub_1D847BC88();
    sub_1D85811E8();
    memcpy(v34, __src, 0x70uLL);
    sub_1D847B824(v34);
    if (v24)
    {
LABEL_9:
      OUTLINED_FUNCTION_429();
      v34[0] = v22;
      v34[1] = v24;
      v15 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      OUTLINED_FUNCTION_6();
      sub_1D848211C(v17);
      OUTLINED_FUNCTION_7_0();
      sub_1D85811E8();
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_402();
    if (v24)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_447();
LABEL_12:
  sub_1D847370C(v2, v25);
  sub_1D8581B78();
  sub_1D8581B78();
  if (v28)
  {
    OUTLINED_FUNCTION_414();
    v18 = OUTLINED_FUNCTION_188();
    sub_1D8473658(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  if (v29 == 3)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    LOBYTE(v34[0]) = v29;
    OUTLINED_FUNCTION_414();
    sub_1D846779C();
    sub_1D85811E8();
  }

  sub_1D8473608(v2, v30);
  sub_1D8473598(v2, v31);
  OUTLINED_FUNCTION_388();
}

uint64_t ChallengeDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_379();
  ChallengeDefinition.hash(into:)();
  return sub_1D8581B98();
}

void ChallengeDefinition.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39290, &qword_1D8591008);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_199();
  v9 = v2[3];
  v10 = v2[4];
  v11 = OUTLINED_FUNCTION_509();
  OUTLINED_FUNCTION_260(v11, v12);
  sub_1D847B8CC();
  OUTLINED_FUNCTION_365();
  sub_1D8581BA8();
  if (v0)
  {
    OUTLINED_FUNCTION_115();
    __swift_destroy_boxed_opaque_existential_1(v2);

    if (v9)
    {

      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v4)
    {
LABEL_5:
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_530(&v41);
    sub_1D8436E18(&v41, &qword_1ECA39200, &qword_1D859A990);
    if (v5)
    {
LABEL_6:

      if ((v39 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!v39)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v41) = 0;
  OUTLINED_FUNCTION_236_0();
  v13 = sub_1D8581908();
  v38 = v14;
  OUTLINED_FUNCTION_81_0(1);
  v30 = sub_1D8581898();
  v68 = v15;
  v16 = OUTLINED_FUNCTION_258();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_164();
  sub_1D848211C(v18);
  OUTLINED_FUNCTION_71();
  sub_1D8581958();
  v19 = v41;
  v37 = v42;
  OUTLINED_FUNCTION_81_0(3);
  v29 = sub_1D8581908();
  v36 = v20;
  OUTLINED_FUNCTION_81_0(4);
  v28 = sub_1D8581898();
  v35 = v21;
  v63 = 5;
  sub_1D847BCDC();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_236_0();
  sub_1D85818E8();
  memcpy(v67, v64, sizeof(v67));
  sub_1D84738D0();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_236_0();
  sub_1D8581958();
  v22 = v41;
  v34 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39238, &qword_1D8590FE8);
  sub_1D847BD30();
  OUTLINED_FUNCTION_71();
  sub_1D8581958();
  v33 = v41;
  OUTLINED_FUNCTION_81_0(8);
  v27 = sub_1D8581918();
  OUTLINED_FUNCTION_81_0(9);
  v26 = sub_1D8581918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39248, &qword_1D8590FF0);
  sub_1D847BDB4();
  OUTLINED_FUNCTION_71();
  sub_1D85818E8();
  v32 = v41;
  sub_1D847387C();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_236_0();
  sub_1D85818E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39260, &qword_1D8590FF8);
  LOBYTE(v40[0]) = 12;
  sub_1D847BE8C();
  OUTLINED_FUNCTION_71();
  sub_1D8581958();
  v31 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39278, &qword_1D8591000);
  v61 = 13;
  sub_1D847BF64();
  OUTLINED_FUNCTION_236_0();
  sub_1D8581958();
  v23 = OUTLINED_FUNCTION_77_0();
  v24(v23);
  v25 = v62;
  v40[0] = v13;
  v40[1] = v38;
  v40[2] = v30;
  v40[3] = v68;
  v40[4] = v19;
  v40[5] = v37;
  v40[6] = v29;
  v40[7] = v36;
  v40[8] = v28;
  v40[9] = v35;
  OUTLINED_FUNCTION_530(&v40[10]);
  v40[24] = v22;
  v40[25] = v34;
  v40[26] = v33;
  LOBYTE(v40[27]) = v27 & 1;
  BYTE1(v40[27]) = v26 & 1;
  v40[28] = v32;
  LOBYTE(v40[29]) = 0;
  v40[30] = v31;
  v40[31] = v25;
  memcpy(v4, v40, 0x100uLL);
  sub_1D847BFE8(v40, &v41);
  __swift_destroy_boxed_opaque_existential_1(v2);
  v41 = v13;
  v42 = v38;
  v43 = v30;
  v44 = v68;
  v45 = v19;
  v46 = v37;
  v47 = v29;
  v48 = v36;
  v49 = v28;
  v50 = v35;
  OUTLINED_FUNCTION_530(v51);
  v51[14] = v22;
  v51[15] = v34;
  v51[16] = v33;
  v52 = v27 & 1;
  v53 = v26 & 1;
  v54 = *&v65[7];
  v55 = v66;
  v56 = v32;
  v57 = 0;
  *v58 = *v65;
  *&v58[3] = *&v65[3];
  v59 = v31;
  v60 = v25;
  sub_1D847C020(&v41);
LABEL_12:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D846C838()
{
  sub_1D8581B58();
  ChallengeDefinition.hash(into:)();
  return sub_1D8581B98();
}

uint64_t ChallengeDescription.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t ChallengeDescription.startTime.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = *(type metadata accessor for ChallengeDescription(v2) + 36);
  v4 = sub_1D8580EA8();
  v5 = OUTLINED_FUNCTION_4_0(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t ChallengeDescription.duration.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChallengeDescription(0) + 40));
}

uint64_t ChallengeDescription.attemptsLimit.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  result = type metadata accessor for ChallengeDescription(v2);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

void ChallengeDescription.init(id:ref:creator:definition:startTime:duration:attemptsLimit:)()
{
  OUTLINED_FUNCTION_386();
  v1 = v0;
  v42 = v2;
  v43 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v41 = v12;
  v14 = v13;
  v15 = sub_1D8580EA8();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_1();
  v23 = v22 - v21;
  v37 = v11[1];
  v38 = *v11;
  v24 = *v9;
  v25 = v9[1];
  v36 = v24;
  v26 = *v7;
  v27 = v7[1];
  v40 = *v1;
  v39 = *(v1 + 8);
  v44[2] = *v7;
  v44[3] = v27;
  Ref<A>.game.getter(v44);
  v28 = v44[0];
  v35 = v44[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392D0, &qword_1D8591010);
  v29 = OUTLINED_FUNCTION_532();
  *(v29 + 16) = xmmword_1D8590A70;
  *(v29 + 32) = v28;
  *(v29 + 40) = v35;
  v30 = *(v18 + 16);
  v31 = OUTLINED_FUNCTION_305();
  v32(v31);
  if (*(v29 + 16))
  {
    (*(v18 + 8))(v5, v15);
    *v14 = v41;
    *(v14 + 1) = v42;
    *(v14 + 2) = v38;
    *(v14 + 3) = v37;
    *(v14 + 4) = v36;
    *(v14 + 5) = v25;
    *(v14 + 6) = v26;
    *(v14 + 7) = v27;
    *(v14 + 8) = v29;
    v33 = type metadata accessor for ChallengeDescription(0);
    (*(v18 + 32))(&v14[v33[9]], v23, v15);
    *&v14[v33[10]] = v43;
    v34 = &v14[v33[11]];
    *v34 = v40;
    v34[8] = v39;
    OUTLINED_FUNCTION_388();
  }

  else
  {
    OUTLINED_FUNCTION_387();
    __break(1u);
  }
}

uint64_t ChallengeDescription.init(id:ref:creator:definition:games:startTime:duration:attemptsLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  if (*(a6 + 16))
  {
    v13 = *(a10 + 8);
    v14 = *a10;
    v16 = *a5;
    v15 = a5[1];
    v18 = *a4;
    v17 = a4[1];
    v20 = *a3;
    v19 = a3[1];
    *a9 = a1;
    *(a9 + 1) = a2;
    *(a9 + 2) = v20;
    *(a9 + 3) = v19;
    *(a9 + 4) = v18;
    *(a9 + 5) = v17;
    *(a9 + 6) = v16;
    *(a9 + 7) = v15;
    *(a9 + 8) = a6;
    v21 = type metadata accessor for ChallengeDescription(0);
    v22 = v21[9];
    v23 = sub_1D8580EA8();
    OUTLINED_FUNCTION_4_0(v23);
    result = (*(v24 + 32))(&a9[v22], a7);
    *&a9[v21[10]] = a8;
    v26 = &a9[v21[11]];
    *v26 = v14;
    v26[8] = v13;
  }

  else
  {
    result = OUTLINED_FUNCTION_387();
    __break(1u);
  }

  return result;
}

uint64_t static ChallengeDescription.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D844A4B0(v1[2], v1[3], v0[2], v0[3], &qword_1ECA38B48, &qword_1D8590B40) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D844A4B0(v1[4], v1[5], v0[4], v0[5], &qword_1ECA389B8, &qword_1D8590B30) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D844A4B0(v1[6], v1[7], v0[6], v0[7], &qword_1ECA38A78, &unk_1D85A22B0) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D846AD48(v1[8], v0[8]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ChallengeDescription(0);
  v5 = v4[9];
  if ((_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D846AE70(*(v1 + v4[10]), *(v0 + v4[10])) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[11];
  v7 = (v1 + v6);
  v8 = *(v1 + v6 + 8);
  v9 = (v0 + v6);
  v10 = *(v0 + v6 + 8);
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D846CE14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_484();
    v7 = a1 == v6 && a2 == 0xE300000000000000;
    if (v7 || (OUTLINED_FUNCTION_35_0(), (OUTLINED_FUNCTION_7() & 1) != 0))
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_172() && a2 == 0xE700000000000000;
      if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == OUTLINED_FUNCTION_237() && a2 == v9;
        if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0x73656D6167 && a2 == 0xE500000000000000;
          if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_392();
            v13 = a1 == 0x6D69547472617473 && a2 == v12;
            if (v13 || (OUTLINED_FUNCTION_143() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v14 = a1 == OUTLINED_FUNCTION_171() && a2 == 0xE800000000000000;
              if (v14 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == OUTLINED_FUNCTION_268() && a2 == v15)
              {

                return 7;
              }

              else
              {
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_369();
                if (a1)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D846CFE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_391();
      break;
    case 2:
      result = OUTLINED_FUNCTION_172();
      break;
    case 3:
      result = OUTLINED_FUNCTION_237();
      break;
    case 4:
      result = 0x73656D6167;
      break;
    case 5:
      result = 0x6D69547472617473;
      break;
    case 6:
      result = OUTLINED_FUNCTION_171();
      break;
    case 7:
      result = OUTLINED_FUNCTION_268();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846D0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D846CE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D846D0F0()
{
  sub_1D847C050();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D846D128()
{
  sub_1D847C050();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t ChallengeDescription.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392D8, &qword_1D8591018);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v13, v14);
  sub_1D847C050();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_477();
  v15 = *v3;
  v16 = v3[1];
  OUTLINED_FUNCTION_232();
  sub_1D8581A08();
  if (!v2)
  {
    v34 = v3[2];
    v40 = v3[3];

    v17 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v19);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();

    v35 = v3[4];
    v41 = v3[5];

    v20 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v22);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();

    v36 = v3[6];
    v42 = v3[7];

    v23 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v25);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();

    v37 = v3[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    sub_1D847C0A4();
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    v30 = type metadata accessor for ChallengeDescription(0);
    v31 = v30[9];
    sub_1D8580EA8();
    OUTLINED_FUNCTION_7_1();
    sub_1D8473E40(v32);
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    v38 = *(v3 + v30[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E58, &qword_1D8590D58);
    sub_1D8477400();
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    v33 = v3 + v30[11];
    v39 = *v33;
    LOBYTE(v42) = v33[8];
    sub_1D847752C();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
  }

  v26 = *(v7 + 8);
  v27 = OUTLINED_FUNCTION_291();
  return v28(v27);
}

uint64_t ChallengeDescription.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_1D85812B8();
  v18 = v1[2];
  v21 = v1[3];
  v6 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  sub_1D848211C(&unk_1ECA38B60);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  v19 = v1[4];
  v22 = v1[5];
  v8 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  v20 = v1[6];
  v23 = v1[7];
  v10 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  sub_1D848211C(&unk_1ECA38AA0);
  OUTLINED_FUNCTION_161();
  sub_1D85811E8();
  sub_1D84734BC(a1, v1[8]);
  v12 = type metadata accessor for ChallengeDescription(0);
  v13 = v12[9];
  sub_1D8580EA8();
  OUTLINED_FUNCTION_7_1();
  sub_1D8473E40(v14);
  sub_1D85811E8();
  sub_1D84733A4(a1, *(v2 + v12[10]));
  v15 = v2 + v12[11];
  if (v15[8])
  {
    v16 = 1;
  }

  else
  {
    v16 = *v15;
    OUTLINED_FUNCTION_429();
  }

  return MEMORY[0x1DA7191F0](v16);
}

void ChallengeDescription.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = sub_1D8580EA8();
  v4 = OUTLINED_FUNCTION_1(v3);
  v41 = v5;
  v42 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v10 = v9 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392F0, &qword_1D8591028);
  OUTLINED_FUNCTION_1(v40);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_160();
  v43 = type metadata accessor for ChallengeDescription(0);
  v14 = OUTLINED_FUNCTION_4_0(v43);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v19 = (v18 - v17);
  v20 = v2[3];
  v21 = v2[4];
  v22 = OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_260(v22, v23);
  sub_1D847C050();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v44) = 0;
    *v19 = sub_1D8581908();
    v19[1] = v24;
    v25 = OUTLINED_FUNCTION_444();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_338();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v27);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_244();
    sub_1D8581958();
    v19[2] = v44;
    v19[3] = v45;
    v28 = OUTLINED_FUNCTION_444();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_244();
    sub_1D8581958();
    v19[4] = v44;
    v19[5] = v45;
    v31 = OUTLINED_FUNCTION_444();
    __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v33);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_244();
    sub_1D8581958();
    v19[6] = v44;
    v19[7] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    sub_1D847C154();
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_377();
    v19[8] = v44;
    LOBYTE(v44) = 5;
    OUTLINED_FUNCTION_7_1();
    sub_1D8473E40(v34);
    OUTLINED_FUNCTION_377();
    (*(v41 + 32))(v19 + v43[9], v10, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E58, &qword_1D8590D58);
    sub_1D8477328();
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_377();
    *(v19 + v43[10]) = v44;
    sub_1D84774D8();
    sub_1D8581958();
    v35 = OUTLINED_FUNCTION_85();
    v36(v35);
    v37 = v19 + v43[11];
    *v37 = v44;
    v37[8] = v45;
    sub_1D847C320();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v38 = OUTLINED_FUNCTION_291();
    sub_1D847C378(v38, v39);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeState.scheduledEndTime.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = *(type metadata accessor for ChallengeState(v2) + 20);
  v4 = sub_1D8580EA8();
  v5 = OUTLINED_FUNCTION_4_0(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t ChallengeState.message.getter()
{
  v1 = (v0 + *(type metadata accessor for ChallengeState(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t ChallengeState.completedAt.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = *(type metadata accessor for ChallengeState(v0) + 28);
  return sub_1D847C204();
}

uint64_t ChallengeState.game.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = (v1 + *(type metadata accessor for ChallengeState(v2) + 32));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t ChallengeState.init(challenge:game:message:completedAt:)()
{
  OUTLINED_FUNCTION_386();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = v6[1];
  v10 = *v9;
  v11 = v9[1];
  v12 = type metadata accessor for ChallengeState(0);
  v13 = v5 + v12[5];
  sub_1D8580E78();
  *v5 = v7;
  v5[1] = v8;
  v14 = (v5 + v12[8]);
  *v14 = v10;
  v14[1] = v11;
  v15 = (v5 + v12[6]);
  *v15 = v3;
  v15[1] = v1;
  v16 = v12[7];
  OUTLINED_FUNCTION_388();

  return sub_1D847C25C(v17, v18);
}

uint64_t ChallengeState.init(challenge:game:scheduledEndTime:message:completedAt:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  *a7 = *a1;
  *(a7 + 1) = v12;
  v15 = type metadata accessor for ChallengeState(0);
  v16 = &a7[v15[8]];
  *v16 = v13;
  *(v16 + 1) = v14;
  v17 = v15[5];
  v18 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v18);
  (*(v19 + 32))(&a7[v17], a3);
  v20 = &a7[v15[6]];
  *v20 = a4;
  *(v20 + 1) = a5;
  v21 = &a7[v15[7]];

  return sub_1D847C25C(a6, v21);
}

void static ChallengeState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D8580EA8();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_128();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39308, &qword_1D85A7960);
  OUTLINED_FUNCTION_4_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_200();
  if ((sub_1D844A4B0(*v4, v4[1], *v2, v2[1], &qword_1ECA38B48, &qword_1D8590B40) & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = type metadata accessor for ChallengeState(0);
  v23 = v22[5];
  if ((_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v24 = v22[6];
  v25 = (v4 + v24);
  v26 = *(v4 + v24 + 8);
  v27 = (v2 + v24);
  v28 = v27[1];
  if (!v26)
  {
    if (v28)
    {
      goto LABEL_21;
    }

LABEL_12:
    v30 = v22[7];
    v31 = *(v18 + 48);
    sub_1D847C204();
    sub_1D847C204();
    OUTLINED_FUNCTION_501(v0, 1, v5);
    if (v29)
    {
      OUTLINED_FUNCTION_501(v0 + v31, 1, v5);
      if (v29)
      {
        sub_1D8436E18(v0, &qword_1ECA39300, &unk_1D8591030);
        goto LABEL_23;
      }
    }

    else
    {
      OUTLINED_FUNCTION_221();
      sub_1D847C204();
      OUTLINED_FUNCTION_501(v0 + v31, 1, v5);
      if (!v32)
      {
        (*(v8 + 32))(v13, v0 + v31, v5);
        OUTLINED_FUNCTION_7_1();
        sub_1D8473E40(v36);
        OUTLINED_FUNCTION_228();
        v37 = sub_1D8581208();
        v38 = *(v8 + 8);
        v38(v13, v5);
        v39 = OUTLINED_FUNCTION_495();
        (v38)(v39);
        sub_1D8436E18(v0, &qword_1ECA39300, &unk_1D8591030);
        if ((v37 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_23:
        sub_1D844A4B0(*(v4 + v22[8]), *(v4 + v22[8] + 8), *(v2 + v22[8]), *(v2 + v22[8] + 8), &qword_1ECA38B38, &qword_1D85981B0);
        goto LABEL_21;
      }

      v33 = *(v8 + 8);
      v34 = OUTLINED_FUNCTION_495();
      v35(v34);
    }

    sub_1D8436E18(v0, &qword_1ECA39308, &qword_1D85A7960);
    goto LABEL_21;
  }

  if (v28)
  {
    v29 = *v25 == *v27 && v26 == v28;
    if (v29 || (sub_1D8581AB8() & 1) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D846E324()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_392();
  v4 = v1 == OUTLINED_FUNCTION_58() && v2 == v3;
  if (v4 || (OUTLINED_FUNCTION_143() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    v8 = v1 == v7 && v6 == v0;
    if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = v1 == 0x6567617373656DLL && v0 == 0xE700000000000000;
      if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_433();
        v11 = v4 && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_439(1835099999);
          if (v4 && v0 == 0xE500000000000000)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_369();
            if (v1)
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
}

uint64_t sub_1D846E460()
{
  result = OUTLINED_FUNCTION_58();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_351();
      break;
    case 2:
      result = 0x6567617373656DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_345();
      break;
    case 4:
      result = 0x656D61675FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846E514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D846E324();
  *a1 = result;
  return result;
}

uint64_t sub_1D846E544()
{
  sub_1D847C2CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D846E57C()
{
  sub_1D847C2CC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeState.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39318, &qword_1D8591040);
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
  sub_1D847C2CC();
  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_477();
  v32 = *v2;
  v34 = v2[1];

  v15 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v17);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_232();
  sub_1D8581A58();
  if (!v1)
  {

    v18 = type metadata accessor for ChallengeState(0);
    v19 = v18[5];
    OUTLINED_FUNCTION_290();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_7_1();
    sub_1D8473E40(v20);
    OUTLINED_FUNCTION_339();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    v21 = (v2 + v18[6]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_232();
    sub_1D8581998();
    v24 = v18[7];
    OUTLINED_FUNCTION_339();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
    v28 = (v2 + v18[8]);
    v33 = *v28;
    v35 = v28[1];

    v29 = OUTLINED_FUNCTION_368_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_104();
    sub_1D8581A58();
  }

  v25 = *(v7 + 8);
  v26 = OUTLINED_FUNCTION_291();
  v27(v26);
  OUTLINED_FUNCTION_284_0();
}

void ChallengeState.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v0;
  v3 = sub_1D8580EA8();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_128();
  v34 = *v0;
  v36 = v0[1];
  v13 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v15);
  OUTLINED_FUNCTION_445();
  sub_1D85811E8();
  v16 = type metadata accessor for ChallengeState(0);
  v17 = v16[5];
  OUTLINED_FUNCTION_7_1();
  sub_1D8473E40(v18);
  OUTLINED_FUNCTION_7_0();
  sub_1D85811E8();
  v19 = (v2 + v16[6]);
  if (v19[1])
  {
    v20 = v6;
    v21 = *v19;
    sub_1D8581B78();
    OUTLINED_FUNCTION_325();
    v6 = v20;
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v22 = v16[7];
  sub_1D847C204();
  OUTLINED_FUNCTION_501(v1, 1, v3);
  if (v23)
  {
    sub_1D8581B78();
  }

  else
  {
    v24 = *(v6 + 32);
    v25 = OUTLINED_FUNCTION_221();
    v26(v25);
    sub_1D8581B78();
    sub_1D85811E8();
    v27 = *(v6 + 8);
    v28 = OUTLINED_FUNCTION_496();
    v29(v28);
  }

  v30 = (v2 + v16[8]);
  v35 = *v30;
  v37 = v30[1];
  v31 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v33);
  OUTLINED_FUNCTION_7_0();
  sub_1D85811E8();
  OUTLINED_FUNCTION_388();
}

void ChallengeState.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  v41 = v7;
  v8 = sub_1D8580EA8();
  v9 = OUTLINED_FUNCTION_1(v8);
  v42 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39320, &qword_1D8591048);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_129();
  v20 = type metadata accessor for ChallengeState(0);
  v21 = OUTLINED_FUNCTION_4_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v26 = (v25 - v24);
  v27 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D847C2CC();
  OUTLINED_FUNCTION_494();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_189();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_127();
    sub_1D8581958();
    *v26 = v43;
    *(v26 + 1) = v44;
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_7_1();
    sub_1D8473E40(v31);
    OUTLINED_FUNCTION_411();
    sub_1D8581958();
    (*(v42 + 32))(&v26[v20[5]], v15, v8);
    OUTLINED_FUNCTION_340();
    v32 = sub_1D8581898();
    v33 = &v26[v20[6]];
    *v33 = v32;
    v33[1] = v34;
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_411();
    sub_1D85818E8();
    sub_1D847C25C(v41, &v26[v20[7]]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_411();
    sub_1D8581958();
    v36 = OUTLINED_FUNCTION_100_0();
    v37(v36);
    v38 = &v26[v20[8]];
    *v38 = v43;
    *(v38 + 1) = v44;
    sub_1D847C320();
    __swift_destroy_boxed_opaque_existential_1(0);
    v39 = OUTLINED_FUNCTION_495();
    sub_1D847C378(v39, v40);
  }

  OUTLINED_FUNCTION_284_0();
}

GameServices::ChallengeLeaveResult_optional __swiftcall ChallengeLeaveResult.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ChallengeLeaveResult.rawValue.getter()
{
  result = 0x4579646165726C61;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_304();
      break;
    case 2:
      result = 1952867692;
      break;
    case 3:
      result = 0x656E696F4A746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846F108@<X0>(uint64_t *a1@<X8>)
{
  result = ChallengeLeaveResult.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D846F130()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482020();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D846F178()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482020();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t ChallengeParticipantState.formattedScoreValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_194();
}

uint64_t ChallengeParticipantState.score.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t ChallengeParticipantState.rank.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

void *ChallengeParticipantState.init(player:challenge:game:attemptsCount:formattedScoreValue:score:rank:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v11 = result[1];
  v12 = *a2;
  v13 = a2[1];
  v14 = *a3;
  v15 = a3[1];
  *a9 = *result;
  *(a9 + 8) = v11;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  *(a9 + 88) = v14;
  *(a9 + 96) = v15;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8 & 1;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11 & 1;
  return result;
}

void static ChallengeParticipantState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_513();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v29 = *(v0 + 56);
  v32 = *(v0 + 64);
  v30 = *(v0 + 80);
  v26 = *(v0 + 88);
  v25 = *(v0 + 96);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = *(v6 + 32);
  v10 = *(v6 + 40);
  v11 = *(v6 + 48);
  v27 = *(v6 + 56);
  v31 = *(v6 + 64);
  v21 = *(v6 + 72);
  v22 = *(v0 + 72);
  v28 = *(v6 + 80);
  v23 = *(v6 + 96);
  v24 = *(v6 + 88);
  if ((sub_1D844A4B0(*v0, *(v0 + 8), *v6, *(v6 + 8), &qword_1ECA389B8, &qword_1D8590B30) & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_361();
  if ((sub_1D844A4B0(v12, v13, v14, v15, v16, v17) & 1) == 0 || v3 != v9)
  {
    goto LABEL_21;
  }

  if (v5)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    if (v4 != v10 || v5 != v11)
    {
      OUTLINED_FUNCTION_221();
      if ((sub_1D8581AB8() & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v11)
  {
    goto LABEL_21;
  }

  if (v32)
  {
    if (!v31)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v19 = v31;
    if (v29 != v27)
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_21;
    }
  }

  if (v30)
  {
    if (!v28)
    {
      goto LABEL_21;
    }

LABEL_25:
    sub_1D844A4B0(v26, v25, v24, v23, &qword_1ECA38B38, &qword_1D85981B0);
    goto LABEL_21;
  }

  v20 = v28;
  if (v22 != v21)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  OUTLINED_FUNCTION_514();
}

uint64_t sub_1D846F478()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == OUTLINED_FUNCTION_70() && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_392();
    v6 = v1 == OUTLINED_FUNCTION_58() && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_143() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == OUTLINED_FUNCTION_268() && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_184_0();
        v11 = v1 == v10 && v9 == v0;
        if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_439(1919902579);
          v12 = v3 && v0 == 0xE500000000000000;
          if (v12 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = v1 == 1802396018 && v0 == 0xE400000000000000;
            if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_439(1835099999);
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

uint64_t sub_1D846F618()
{
  result = OUTLINED_FUNCTION_70();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_58();
      break;
    case 2:
      result = OUTLINED_FUNCTION_268();
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    case 5:
      result = 1802396018;
      break;
    case 6:
      result = 0x656D61675FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D846F6F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D846F478();
  *a1 = result;
  return result;
}

uint64_t sub_1D846F724()
{
  sub_1D847C3D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D846F75C()
{
  sub_1D847C3D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeParticipantState.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39328, &qword_1D8591050);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_110();
  v11 = *v0;
  v10 = v0[1];
  v33 = v0[2];
  v34 = v0[3];
  v31 = v0[5];
  v32 = v0[4];
  v29 = v0[7];
  v30 = v0[6];
  v35 = *(v0 + 64);
  v28 = *(v0 + 80);
  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[9];
  v12 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847C3D0();

  OUTLINED_FUNCTION_359();
  OUTLINED_FUNCTION_477();
  v13 = OUTLINED_FUNCTION_368_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_1_1();
  sub_1D848211C(v15);
  OUTLINED_FUNCTION_104();
  sub_1D8581A58();
  if (!v1)
  {

    OUTLINED_FUNCTION_338();

    v16 = OUTLINED_FUNCTION_368_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v18);
    OUTLINED_FUNCTION_104();
    sub_1D8581A58();

    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_380();
    sub_1D8581A38();
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_380();
    sub_1D8581998();
    OUTLINED_FUNCTION_380();
    sub_1D85819F8();
    OUTLINED_FUNCTION_380();
    sub_1D85819C8();

    v22 = OUTLINED_FUNCTION_368_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_1_1();
    sub_1D848211C(v24);
    OUTLINED_FUNCTION_104();
    sub_1D8581A58();
  }

  v19 = *(v6 + 8);
  v20 = OUTLINED_FUNCTION_291();
  v21(v20);
  OUTLINED_FUNCTION_284_0();
}

uint64_t ChallengeParticipantState.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];
  v14 = v0[7];
  v5 = *(v0 + 64);
  v15 = v0[9];
  v16 = v0[5];
  v17 = *(v0 + 80);
  v18 = v0[12];
  v19 = v0[11];
  v20 = *v0;
  v21 = v0[1];
  v6 = OUTLINED_FUNCTION_509();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  sub_1D848211C(&qword_1EE0E0090);
  OUTLINED_FUNCTION_508();
  sub_1D85811E8();
  v8 = OUTLINED_FUNCTION_509();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  sub_1D848211C(&unk_1ECA38B60);
  OUTLINED_FUNCTION_508();
  sub_1D85811E8();
  MEMORY[0x1DA7191F0](v3);
  if (v4)
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
    if (v5)
    {
LABEL_3:
      OUTLINED_FUNCTION_402();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_402();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_414();
  MEMORY[0x1DA719210](v14);
LABEL_6:
  if (v17)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_414();
    MEMORY[0x1DA7191F0](v15);
  }

  v10 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v12);
  OUTLINED_FUNCTION_7_0();
  return sub_1D85811E8();
}

uint64_t ChallengeParticipantState.hashValue.getter()
{
  OUTLINED_FUNCTION_379();
  ChallengeParticipantState.hash(into:)();
  return sub_1D8581B98();
}

void ChallengeParticipantState.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39330, &qword_1D8591058);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_250_0();
  v9 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D847C3D0();
  OUTLINED_FUNCTION_481();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v12);
    sub_1D8581958();
    v34 = v37;
    v13 = OUTLINED_FUNCTION_368_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v15);
    OUTLINED_FUNCTION_358();
    sub_1D8581958();
    v33 = v36;
    v16 = v36;
    v17 = v37;
    OUTLINED_FUNCTION_118(2);
    v31 = sub_1D8581938();
    OUTLINED_FUNCTION_118(3);
    v18 = sub_1D8581898();
    v32 = v19;
    v30 = v18;
    OUTLINED_FUNCTION_118(4);
    v29 = sub_1D85818F8();
    v52 = v20 & 1;
    OUTLINED_FUNCTION_118(5);
    v28 = sub_1D85818C8();
    v51 = v21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v22);
    sub_1D8581958();
    v23 = OUTLINED_FUNCTION_254();
    v24(v23);
    v27 = v49;
    v26 = v50;
    v35[0] = v36;
    v35[1] = v37;
    v35[2] = v36;
    v35[3] = v37;
    v35[4] = v31;
    v35[5] = v30;
    v35[6] = v32;
    v35[7] = v29;
    LOBYTE(v35[8]) = v52;
    v35[9] = v28;
    v25 = v51;
    LOBYTE(v35[10]) = v51;
    v35[11] = v49;
    v35[12] = v50;
    memcpy(v4, v35, 0x68uLL);
    sub_1D847C424(v35, &v36);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v36 = v33;
    v37 = v34;
    v38 = v16;
    v39 = v17;
    v40 = v31;
    v41 = v30;
    v42 = v32;
    v43 = v29;
    v44 = v52;
    v45 = v28;
    v46 = v25;
    v47 = v27;
    v48 = v26;
    sub_1D847C45C(&v36);
  }

  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8470180()
{
  sub_1D8581B58();
  ChallengeParticipantState.hash(into:)();
  return sub_1D8581B98();
}

void static ChallengeInvite.Details.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v1 = sub_1D8580EA8();
  v2 = OUTLINED_FUNCTION_1(v1);
  v101 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v8 = v7 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39308, &qword_1D85A7960);
  OUTLINED_FUNCTION_4_0(v102);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_196();
  v103 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v14 = OUTLINED_FUNCTION_363(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_315();
  v100 = v17 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v104 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v94 - v22;
  v23 = type metadata accessor for ChallengeInvite.Details(0);
  v24 = OUTLINED_FUNCTION_4_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_315();
  v29 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v94 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39338, &qword_1D8591060);
  OUTLINED_FUNCTION_363(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_251();
  v38 = (v0 + *(v37 + 56));
  sub_1D847C320();
  sub_1D847C320();
  OUTLINED_FUNCTION_194();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v99 = v1;
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_188();
    sub_1D847C320();
    v44 = v32[1];
    v43 = v32[2];
    v45 = v32[3];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39340, &qword_1D8591068) + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D8436E18(v32 + v46, &qword_1ECA39300, &unk_1D8591030);

      goto LABEL_11;
    }

    v97 = v43;
    v47 = *v32;
    v49 = *v38;
    v48 = v38[1];
    v51 = v38[2];
    v50 = v38[3];
    v95 = v8;
    v96 = v51;
    v98 = v50;
    sub_1D847C25C(v32 + v46, v105);
    sub_1D847C25C(v38 + v46, v104);
    v52 = OUTLINED_FUNCTION_443();
    v56 = sub_1D844A4B0(v52, v53, v49, v48, v54, v55);

    if (v56)
    {
      v57 = sub_1D844A4B0(v97, v45, v96, v98, &qword_1ECA389B8, &qword_1D8590B30);

      if (v57)
      {
        v58 = v103;
        v59 = *(v102 + 48);
        v60 = v105;
        OUTLINED_FUNCTION_305();
        sub_1D847C204();
        sub_1D847C204();
        v61 = v99;
        OUTLINED_FUNCTION_501(v58, 1, v99);
        if (v41)
        {
          OUTLINED_FUNCTION_235_0();
          sub_1D8436E18(v62, v63, v64);
          OUTLINED_FUNCTION_235_0();
          sub_1D8436E18(v65, v66, v67);
          OUTLINED_FUNCTION_501(v58 + v59, 1, v61);
          if (v41)
          {
            sub_1D8436E18(v58, &qword_1ECA39300, &unk_1D8591030);
LABEL_24:
            OUTLINED_FUNCTION_293_0();
            goto LABEL_25;
          }
        }

        else
        {
          v78 = v100;
          sub_1D847C204();
          OUTLINED_FUNCTION_501(v58 + v59, 1, v61);
          if (!v79)
          {
            v88 = v101;
            v89 = v95;
            (*(v101 + 32))(v95, v58 + v59, v61);
            OUTLINED_FUNCTION_7_1();
            sub_1D8473E40(v90);
            LODWORD(v102) = sub_1D8581208();
            v91 = *(v88 + 8);
            v91(v89, v61);
            v92 = OUTLINED_FUNCTION_253();
            sub_1D8436E18(v92, v93, &unk_1D8591030);
            sub_1D8436E18(v60, &qword_1ECA39300, &unk_1D8591030);
            v91(v78, v61);
            sub_1D8436E18(v58, &qword_1ECA39300, &unk_1D8591030);
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_235_0();
          sub_1D8436E18(v80, v81, v82);
          OUTLINED_FUNCTION_235_0();
          sub_1D8436E18(v83, v84, v85);
          v86 = OUTLINED_FUNCTION_211();
          v87(v86, v61);
        }

        v76 = &qword_1ECA39308;
        v77 = &qword_1D85A7960;
        v75 = v58;
LABEL_23:
        sub_1D8436E18(v75, v76, v77);
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_235_0();
      sub_1D8436E18(v72, v73, v74);
    }

    else
    {

      OUTLINED_FUNCTION_235_0();
      sub_1D8436E18(v69, v70, v71);
    }

    OUTLINED_FUNCTION_235_0();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_367();
  sub_1D847C320();
  v39 = *v29;
  v40 = v29[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v39 == *v38 && v40 == v38[1];
    if (v41)
    {
      v68 = v38[1];
    }

    else
    {
      v42 = v38[1];
      sub_1D8581AB8();
    }

    goto LABEL_24;
  }

LABEL_11:

  sub_1D8436E18(v0, &qword_1ECA39338, &qword_1D8591060);
LABEL_25:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D8470840(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84708A8()
{
  OUTLINED_FUNCTION_379();
  OUTLINED_FUNCTION_529();
  return sub_1D8581B98();
}

uint64_t sub_1D84708DC()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == OUTLINED_FUNCTION_70() && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 1701080931 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D8470970(char a1)
{
  if (a1)
  {
    return 1701080931;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_1D847099C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 28532 && a2 == 0xE200000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == (OUTLINED_FUNCTION_158() & 0xFFFFFFFFFFFFLL | 0x4164000000000000) && a2 == v7)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_143();
      OUTLINED_FUNCTION_369();
      if (a1)
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

uint64_t sub_1D8470A74(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_379();
  MEMORY[0x1DA7191F0](a1);
  return sub_1D8581B98();
}

uint64_t sub_1D8470AB4(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_385();
  }

  if (a1 == 1)
  {
    return 28532;
  }

  return 0x4164657469766E69;
}

uint64_t sub_1D8470AF0()
{
  sub_1D8581B58();
  OUTLINED_FUNCTION_529();
  return sub_1D8581B98();
}

uint64_t sub_1D8470B60()
{
  sub_1D847C500();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8470B98()
{
  sub_1D847C500();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8470BD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84708DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D8470C00()
{
  sub_1D847C4AC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8470C38()
{
  sub_1D847C4AC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8470C70()
{
  v1 = *v0;
  sub_1D8581B58();
  v2 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

uint64_t sub_1D8470CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D847099C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8470CE8()
{
  sub_1D847C554();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8470D20()
{
  sub_1D847C554();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeInvite.Details.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39348, &qword_1D8591070);
  v59 = OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39350, &qword_1D8591078);
  v8 = OUTLINED_FUNCTION_1(v7);
  v61 = v9;
  v62 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_196();
  v65 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  OUTLINED_FUNCTION_363(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_196();
  v64 = v18;
  v19 = type metadata accessor for ChallengeInvite.Details(0);
  v20 = OUTLINED_FUNCTION_4_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39358, &qword_1D8591080);
  OUTLINED_FUNCTION_1(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_110();
  v32 = *(v2 + 24);
  v33 = *(v2 + 32);
  v34 = OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_260(v34, v35);
  sub_1D847C4AC();
  OUTLINED_FUNCTION_359();
  sub_1D8581BB8();
  OUTLINED_FUNCTION_23();
  sub_1D847C320();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = *v25;
  v38 = v25[1];
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_290();
    sub_1D847C500();
    sub_1D8581988();
    sub_1D8581A08();

    v39 = OUTLINED_FUNCTION_211();
    v40(v39, v59);
    v41 = *(v28 + 8);
    v42 = OUTLINED_FUNCTION_443();
    v43(v42);
  }

  else
  {
    v63 = v28;
    v44 = v25[3];
    v60 = v25[2];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39340, &qword_1D8591068);
    sub_1D847C25C(v25 + *(v45 + 64), v64);
    sub_1D847C554();
    sub_1D8581988();
    v46 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v48);
    sub_1D8581A58();

    if (v0)
    {
      (*(v61 + 8))(v65, v62);
      sub_1D8436E18(v64, &qword_1ECA39300, &unk_1D8591030);
      v49 = *(v63 + 8);
      v50 = OUTLINED_FUNCTION_443();
      v51(v50);
    }

    else
    {
      OUTLINED_FUNCTION_338();
      sub_1D8581A58();

      OUTLINED_FUNCTION_340();
      sub_1D8580EA8();
      OUTLINED_FUNCTION_7_1();
      sub_1D8473E40(v52);
      sub_1D85819E8();
      v53 = *(v61 + 8);
      v54 = OUTLINED_FUNCTION_167();
      v55(v54);
      sub_1D8436E18(v64, &qword_1ECA39300, &unk_1D8591030);
      v56 = *(v63 + 8);
      v57 = OUTLINED_FUNCTION_443();
      v58(v57);
    }
  }

  OUTLINED_FUNCTION_284_0();
}

void ChallengeInvite.Details.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v0 = sub_1D8580EA8();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v10 = OUTLINED_FUNCTION_363(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_315();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for ChallengeInvite.Details(0);
  v20 = OUTLINED_FUNCTION_4_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v25 = (v24 - v23);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_325();
  sub_1D847C320();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = *v25;
  v27 = v25[1];
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_508();
    sub_1D85812B8();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    v29 = v25[2];
    v30 = v25[3];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39340, &qword_1D8591068);
    sub_1D847C25C(v25 + *(v31 + 64), v18);
    OUTLINED_FUNCTION_429();
    v41 = v28;
    v42 = v27;
    v32 = OUTLINED_FUNCTION_238();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    OUTLINED_FUNCTION_6();
    sub_1D848211C(v34);
    sub_1D85811E8();

    v41 = v29;
    v42 = v30;
    sub_1D85811E8();

    OUTLINED_FUNCTION_221();
    sub_1D847C204();
    OUTLINED_FUNCTION_501(v15, 1, v0);
    if (v35)
    {
      OUTLINED_FUNCTION_402();
    }

    else
    {
      v37 = v39;
      v36 = v40;
      (*(v40 + 32))(v39, v15, v0);
      OUTLINED_FUNCTION_414();
      OUTLINED_FUNCTION_7_1();
      sub_1D8473E40(v38);
      sub_1D85811E8();
      (*(v36 + 8))(v37, v0);
    }

    sub_1D8436E18(v18, &qword_1ECA39300, &unk_1D8591030);
  }

  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D8471588(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_379();
  a1(v3);
  return sub_1D8581B98();
}

void ChallengeInvite.Details.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v105 = v0;
  v3 = v2;
  v96 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39360, &qword_1D8591088);
  v6 = OUTLINED_FUNCTION_1(v5);
  v97 = v7;
  v98 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_493(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39368, &qword_1D8591090);
  v13 = OUTLINED_FUNCTION_1(v12);
  v99 = v14;
  v100 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_196();
  v103 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39370, &qword_1D8591098);
  OUTLINED_FUNCTION_1(v19);
  v102 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_129();
  v24 = type metadata accessor for ChallengeInvite.Details(0);
  v25 = OUTLINED_FUNCTION_4_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_315();
  v30 = (v28 - v29);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v92 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v92 - v35;
  v37 = v3[3];
  v38 = v3[4];
  v104 = v3;
  v39 = OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_260(v39, v40);
  sub_1D847C4AC();
  OUTLINED_FUNCTION_494();
  v41 = v105;
  sub_1D8581BA8();
  if (!v41)
  {
    v92 = v30;
    v93 = v36;
    v94 = v34;
    v105 = v24;
    v42 = sub_1D8581968();
    sub_1D8440880(v42, 0);
    v44 = v43;
    v46 = v19;
    if (v47 == v45 >> 1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_159();
    v95 = v1;
    OUTLINED_FUNCTION_360();
    if (v52 == v53)
    {
      __break(1u);
      return;
    }

    v54 = *(v51 + v49);
    sub_1D84408DC(v49 + 1, v48, v44, v51, v49, v50);
    OUTLINED_FUNCTION_503();
    v56 = v55;
    swift_unknownObjectRelease();
    if (v56 >> 1)
    {
LABEL_8:
      v59 = sub_1D85817C8();
      OUTLINED_FUNCTION_446();
      v61 = v60;
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
      *v61 = v105;
      sub_1D8581888();
      OUTLINED_FUNCTION_178();
      v63 = *MEMORY[0x1E69E6AF8];
      OUTLINED_FUNCTION_206_0(v59);
      v65 = *(v64 + 104);
      v66 = OUTLINED_FUNCTION_498();
      v67(v66);
      swift_willThrow();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_267();
      v68 = OUTLINED_FUNCTION_151();
      v69(v68);
    }

    else
    {
      if (v54)
      {
        OUTLINED_FUNCTION_338();
        sub_1D847C500();
        OUTLINED_FUNCTION_522_0();
        v57 = v46;
        v58 = v102;
        v70 = v57;
        OUTLINED_FUNCTION_236_0();
        v78 = sub_1D8581908();
        v80 = v79;
        swift_unknownObjectRelease();
        v81 = OUTLINED_FUNCTION_126();
        v82(v81);
        (*(v58 + 8))(v95, v70);
        v83 = v92;
        *v92 = v78;
        *(v83 + 8) = v80;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        v84 = v93;
        sub_1D847C5A8(v83, v93);
        sub_1D847C5A8(v84, v96);
        __swift_destroy_boxed_opaque_existential_1(v104);
        goto LABEL_10;
      }

      sub_1D847C554();
      OUTLINED_FUNCTION_522_0();
      v101 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
      OUTLINED_FUNCTION_3();
      sub_1D848211C(v71);
      v83 = v94;
      v72 = v101;
      OUTLINED_FUNCTION_489();
      sub_1D8581958();
      if (!v72)
      {
        OUTLINED_FUNCTION_489();
        sub_1D8581958();
        v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39340, &qword_1D8591068) + 64);
        sub_1D8580EA8();
        OUTLINED_FUNCTION_7_1();
        sub_1D8473E40(v86);
        v87 = v100;
        OUTLINED_FUNCTION_436();
        sub_1D85818E8();
        swift_unknownObjectRelease();
        v88 = OUTLINED_FUNCTION_218();
        v89(v88, v87);
        v90 = OUTLINED_FUNCTION_302();
        v91(v90);
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
      v73 = *(v99 + 8);
      v74 = OUTLINED_FUNCTION_150();
      v75(v74);
      v76 = OUTLINED_FUNCTION_302();
      v77(v76);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v104);
LABEL_10:
  OUTLINED_FUNCTION_480();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8471D18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8581B58();
  a4(v6);
  return sub_1D8581B98();
}

uint64_t ChallengeInvite.details.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = *(type metadata accessor for ChallengeInvite(v0) + 20);
  OUTLINED_FUNCTION_23();
  return sub_1D847C320();
}

uint64_t ChallengeInvite.init(ref:details:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  OUTLINED_FUNCTION_442();

  return sub_1D847C5A8(a2, a3 + v6);
}

void static ChallengeInvite.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  if (sub_1D844A4B0(*v2, *(v1 + 8), *v0, v0[1], &qword_1ECA39038, &qword_1D8590E88))
  {
    OUTLINED_FUNCTION_442();

    static ChallengeInvite.Details.== infix(_:_:)();
  }
}

uint64_t sub_1D8471E54(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_484();
  v6 = v3 == v5 && v4 == 0xE300000000000000;
  if (v6 || (v7 = v3, OUTLINED_FUNCTION_35_0(), (OUTLINED_FUNCTION_7() & 1) != 0))
  {

    return 0;
  }

  else if (v7 == 0x736C6961746564 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v6)
    {
      return v10 + 1;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_1D8471F24(char a1)
{
  OUTLINED_FUNCTION_379();
  MEMORY[0x1DA7191F0](a1 & 1);
  return sub_1D8581B98();
}

uint64_t sub_1D8471F64(char a1)
{
  if (a1)
  {
    return 0x736C6961746564;
  }

  else
  {
    return 6710642;
  }
}

uint64_t sub_1D8471FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8471E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8471FFC()
{
  sub_1D847C60C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8472034()
{
  sub_1D847C60C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t ChallengeInvite.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39378, &qword_1D85910A0);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_200();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v14, v15);
  sub_1D847C60C();
  OUTLINED_FUNCTION_477();
  v22 = *v4;
  v23 = v4[1];

  v16 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v18);
  OUTLINED_FUNCTION_103();
  sub_1D8581A58();

  if (!v2)
  {
    v19 = *(type metadata accessor for ChallengeInvite(0) + 20);
    type metadata accessor for ChallengeInvite.Details(0);
    OUTLINED_FUNCTION_96_0();
    sub_1D8473E40(v20);
    OUTLINED_FUNCTION_361();
    sub_1D8581A58();
  }

  return (*(v8 + 8))(v3, v6);
}

void ChallengeInvite.hash(into:)()
{
  v4 = *v0;
  v5 = v0[1];
  v1 = OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  sub_1D848211C(v3);
  OUTLINED_FUNCTION_166();
  sub_1D85811E8();
  OUTLINED_FUNCTION_442();
  ChallengeInvite.Details.hash(into:)();
}

uint64_t ChallengeInvite.hashValue.getter()
{
  sub_1D8581B58();
  v14 = *v0;
  v15 = v0[1];
  v1 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v4 = sub_1D848211C(v3);
  OUTLINED_FUNCTION_412(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16);
  sub_1D85811E8();
  OUTLINED_FUNCTION_442();
  ChallengeInvite.Details.hash(into:)();
  return sub_1D8581B98();
}

void ChallengeInvite.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v29 = type metadata accessor for ChallengeInvite.Details(0);
  v3 = OUTLINED_FUNCTION_4_0(v29);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39390, &qword_1D85910A8);
  v30 = OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for ChallengeInvite(0);
  v14 = OUTLINED_FUNCTION_4_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v19 = (v18 - v17);
  v20 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D847C60C();
  OUTLINED_FUNCTION_481();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v23);
    OUTLINED_FUNCTION_127();
    sub_1D8581958();
    *v19 = v31;
    v19[1] = v32;
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_96_0();
    sub_1D8473E40(v24);
    sub_1D8581958();
    v25 = OUTLINED_FUNCTION_211();
    v26(v25, v30);
    sub_1D847C5A8(v8, v19 + *(v13 + 20));
    sub_1D847C320();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v27 = OUTLINED_FUNCTION_495();
    sub_1D847C378(v27, v28);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D847264C(uint64_t a1, uint64_t a2)
{
  sub_1D8581B58();
  v18 = *v2;
  v19 = v2[1];
  v4 = OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6();
  v7 = sub_1D848211C(v6);
  OUTLINED_FUNCTION_412(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20);
  sub_1D85811E8();
  v15 = v2 + *(a2 + 20);
  ChallengeInvite.Details.hash(into:)();
  return sub_1D8581B98();
}

GameServices::ChallengeInviteState_optional __swiftcall ChallengeInviteState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  v2 = sub_1D8581868();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t ChallengeInviteState.rawValue.getter()
{
  result = 0x657669746361;
  switch(*v0)
  {
    case 1:
      result = 0x4179646165726C61;
      break;
    case 2:
      result = 0x4979646165726C61;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = OUTLINED_FUNCTION_304();
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x616C696176616E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8472848@<X0>(uint64_t *a1@<X8>)
{
  result = ChallengeInviteState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8472870()
{
  OUTLINED_FUNCTION_99();
  sub_1D8481FCC();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84728B8()
{
  OUTLINED_FUNCTION_99();
  sub_1D8481FCC();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t DistributedChallengeServiceProtocol<>.createChallenge(creator:leaderboard:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_148();
  v12 = *(a12 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v13 = OUTLINED_FUNCTION_63();
  return OUTLINED_FUNCTION_525(v13, v14, v15);
}

uint64_t DistributedChallengeServiceProtocol<>.createChallenge(creator:definition:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_148();
  v9 = *(a9 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v10 = OUTLINED_FUNCTION_63();
  return OUTLINED_FUNCTION_523(v10, v11, v12);
}

uint64_t sub_1D84733A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 8);
      v7 = *v5;
      v5 += 2;
      sub_1D85812B8();

      result = MEMORY[0x1DA7191F0](v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D84734BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
      sub_1D848211C(&unk_1ECA38B58);
      sub_1D85811E8();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D8473598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      if (*v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = *(v5 - 1);
        MEMORY[0x1DA7191F0](0);
      }

      result = MEMORY[0x1DA7191F0](v6);
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D8473608(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x1DA7191F0](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D8473658(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    sub_1D847B62C();
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 3;

      sub_1D85811E8();
      sub_1D85812B8();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D847370C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  v12 = v3;
  if (v3)
  {
    v5 = 0;
    v11 = a2 + 32;
    do
    {
      v6 = *(v11 + 8 * v5);
      result = MEMORY[0x1DA7191F0](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = (v6 + 40);
        do
        {
          v9 = *(v8 - 8);
          v10 = *v8;
          v8 += 2;
          sub_1D85812B8();

          MEMORY[0x1DA7191F0](v10);
          --v7;
        }

        while (v7);
      }

      ++v5;
    }

    while (v5 != v12);
  }

  return result;
}

unint64_t sub_1D847387C()
{
  result = qword_1ECA38AD8;
  if (!qword_1ECA38AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38AD8);
  }

  return result;
}

unint64_t sub_1D84738D0()
{
  result = qword_1ECA38AE0;
  if (!qword_1ECA38AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38AE0);
  }

  return result;
}

uint64_t sub_1D8473924(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1D847393C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1D8473954()
{
  result = qword_1ECA3B398;
  if (!qword_1ECA3B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B398);
  }

  return result;
}

unint64_t sub_1D84739A8()
{
  result = qword_1ECA3B3A0;
  if (!qword_1ECA3B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3A0);
  }

  return result;
}

unint64_t sub_1D84739FC()
{
  result = qword_1ECA3B3A8;
  if (!qword_1ECA3B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3A8);
  }

  return result;
}

unint64_t sub_1D8473A50()
{
  result = qword_1ECA3B3B0;
  if (!qword_1ECA3B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3B0);
  }

  return result;
}

unint64_t sub_1D8473AA4()
{
  result = qword_1ECA3B3B8;
  if (!qword_1ECA3B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3B8);
  }

  return result;
}

unint64_t sub_1D8473AF8()
{
  result = qword_1ECA3B3C0;
  if (!qword_1ECA3B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3C0);
  }

  return result;
}

unint64_t sub_1D8473B4C()
{
  result = qword_1ECA3B3C8;
  if (!qword_1ECA3B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3C8);
  }

  return result;
}

unint64_t sub_1D8473BA0()
{
  result = qword_1ECA3B3D0;
  if (!qword_1ECA3B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3D0);
  }

  return result;
}

unint64_t sub_1D8473BF4()
{
  result = qword_1ECA3B3D8;
  if (!qword_1ECA3B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3D8);
  }

  return result;
}

uint64_t sub_1D8473C48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1D8473C60(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_1D8473C78()
{
  result = qword_1ECA3B3E0;
  if (!qword_1ECA3B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3E0);
  }

  return result;
}

unint64_t sub_1D8473CCC()
{
  result = qword_1ECA3B3E8;
  if (!qword_1ECA3B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3E8);
  }

  return result;
}

unint64_t sub_1D8473D20()
{
  result = qword_1ECA3B3F0;
  if (!qword_1ECA3B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3F0);
  }

  return result;
}

unint64_t sub_1D8473D74()
{
  result = qword_1ECA3B3F8;
  if (!qword_1ECA3B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B3F8);
  }

  return result;
}

unint64_t sub_1D8473DC8()
{
  result = qword_1ECA3B400;
  if (!qword_1ECA3B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B400);
  }

  return result;
}

unint64_t sub_1D8473E40(uint64_t a1)
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

uint64_t sub_1D8473E84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v20[1] = sub_1D848220C;

  return DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(game:filters:scope:)();
}

unint64_t sub_1D847418C()
{
  result = qword_1ECA38C40;
  if (!qword_1ECA38C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C38, &qword_1D8590C08);
    sub_1D8474210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C40);
  }

  return result;
}

unint64_t sub_1D8474210()
{
  result = qword_1ECA38C48;
  if (!qword_1ECA38C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C50, &unk_1D8590C10);
    sub_1D8474294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C48);
  }

  return result;
}

unint64_t sub_1D8474294()
{
  result = qword_1ECA38C58;
  if (!qword_1ECA38C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C58);
  }

  return result;
}

unint64_t sub_1D84742E8()
{
  result = qword_1ECA38C60;
  if (!qword_1ECA38C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C38, &qword_1D8590C08);
    sub_1D847436C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C60);
  }

  return result;
}

unint64_t sub_1D847436C()
{
  result = qword_1ECA38C68;
  if (!qword_1ECA38C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C50, &unk_1D8590C10);
    sub_1D84743F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C68);
  }

  return result;
}

unint64_t sub_1D84743F0()
{
  result = qword_1ECA38C70;
  if (!qword_1ECA38C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C70);
  }

  return result;
}

unint64_t sub_1D8474444()
{
  result = qword_1ECA38C78;
  if (!qword_1ECA38C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C78);
  }

  return result;
}

unint64_t sub_1D8474498()
{
  result = qword_1ECA38C80;
  if (!qword_1ECA38C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38C80);
  }

  return result;
}

uint64_t sub_1D84744EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_1D847472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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
  OUTLINED_FUNCTION_242();
  v21 = v20;
  OUTLINED_FUNCTION_37();
  *v22 = v21;

  OUTLINED_FUNCTION_431();
  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_221();
  v26(v25);
  OUTLINED_FUNCTION_430();
  v28 = *(v27 + 8);
  v29 = OUTLINED_FUNCTION_188();
  v30(v29);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

unint64_t sub_1D84748E4()
{
  result = qword_1ECA38CA0;
  if (!qword_1ECA38CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C98, &unk_1D85961F0);
    sub_1D848211C(&unk_1ECA38AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CA0);
  }

  return result;
}

unint64_t sub_1D8474994()
{
  result = qword_1ECA38CA8;
  if (!qword_1ECA38CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C98, &unk_1D85961F0);
    sub_1D848211C(&unk_1ECA38A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CA8);
  }

  return result;
}

uint64_t sub_1D8474A44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_1D8474C80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v20[1] = sub_1D8474F9C;

  return DistributedChallengeServiceProtocol<>.listChallengeDefinitions(game:filters:after:)();
}

void sub_1D8474F9C()
{
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  v2 = v1[11];
  v3 = v1[10];
  v25 = v1[9];
  OUTLINED_FUNCTION_193();
  v5 = *(v4 + 64);
  v7 = *(v6 + 56);
  v24 = *(v6 + 48);
  OUTLINED_FUNCTION_193();
  v10 = v9[4];
  v11 = v9[3];
  v12 = v9[2];
  v13 = *(v8 + 40) - 8;
  v14 = *v0;
  OUTLINED_FUNCTION_37();
  *v15 = v14;

  (*(v11 + 8))(v10, v12);
  v16 = *(v24 + 8);
  v17 = OUTLINED_FUNCTION_444();
  v18(v17);
  v19 = *(v25 + 8);
  v20 = OUTLINED_FUNCTION_233();
  v21(v20);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_428();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_1D84751F0()
{
  result = qword_1ECA38CC0;
  if (!qword_1ECA38CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38CB8, &unk_1D8596010);
    sub_1D8443BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CC0);
  }

  return result;
}

unint64_t sub_1D8475274()
{
  result = qword_1ECA38CC8;
  if (!qword_1ECA38CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38CB8, &unk_1D8596010);
    sub_1D8442B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CC8);
  }

  return result;
}

uint64_t sub_1D84752F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D8475488;

  return DistributedChallengeServiceProtocol<>.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_1D8475488()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *(v1 + 32);
  v5 = *(v1 + 24) - 8;
  v19 = *v0;
  OUTLINED_FUNCTION_476(v6, *(v1 + 16));
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_188();
  v9(v8);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_1D84755F8()
{
  result = qword_1ECA38CF0;
  if (!qword_1ECA38CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38CE8, &qword_1D8590C88);
    sub_1D847567C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CF0);
  }

  return result;
}

unint64_t sub_1D847567C()
{
  result = qword_1ECA38CF8;
  if (!qword_1ECA38CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D00, &qword_1D8590C90);
    sub_1D8475700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38CF8);
  }

  return result;
}

unint64_t sub_1D8475700()
{
  result = qword_1ECA38D08;
  if (!qword_1ECA38D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D08);
  }

  return result;
}

unint64_t sub_1D8475754()
{
  result = qword_1ECA38D10;
  if (!qword_1ECA38D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38CE8, &qword_1D8590C88);
    sub_1D84757D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D10);
  }

  return result;
}

unint64_t sub_1D84757D8()
{
  result = qword_1ECA38D18;
  if (!qword_1ECA38D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D00, &qword_1D8590C90);
    sub_1D847585C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D18);
  }

  return result;
}

unint64_t sub_1D847585C()
{
  result = qword_1ECA38D20;
  if (!qword_1ECA38D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D20);
  }

  return result;
}

uint64_t sub_1D84758B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v16[1] = sub_1D8482288;

  return DistributedChallengeServiceProtocol<>.describe(challenges:)();
}

unint64_t sub_1D8475A40()
{
  result = qword_1ECA38D38;
  if (!qword_1ECA38D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D30, &unk_1D8590CB0);
    sub_1D848211C(&unk_1ECA38BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D38);
  }

  return result;
}

unint64_t sub_1D8475AF0()
{
  result = qword_1ECA38D40;
  if (!qword_1ECA38D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D30, &unk_1D8590CB0);
    sub_1D848211C(&qword_1ECA38B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D40);
  }

  return result;
}

unint64_t sub_1D8475BA0()
{
  result = qword_1ECA38D50;
  if (!qword_1ECA38D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D48, &unk_1D8596270);
    sub_1D8475C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D50);
  }

  return result;
}

unint64_t sub_1D8475C24()
{
  result = qword_1ECA38D58;
  if (!qword_1ECA38D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D60, &qword_1D8590CC0);
    sub_1D8473E40(&unk_1ECA38D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D58);
  }

  return result;
}

unint64_t sub_1D8475CFC()
{
  result = qword_1ECA38D70;
  if (!qword_1ECA38D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D48, &unk_1D8596270);
    sub_1D8475D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D70);
  }

  return result;
}

unint64_t sub_1D8475D80()
{
  result = qword_1ECA38D78;
  if (!qword_1ECA38D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38D60, &qword_1D8590CC0);
    sub_1D8473E40(&unk_1ECA38D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38D78);
  }

  return result;
}

uint64_t sub_1D8475E38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *a2;
  v13[2] = *a2;
  v17 = *(v16 - 8);
  v13[3] = v17;
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v13[4] = v19;
  sub_1D8580F88();
  v53 = a3;
  v20 = a2[1];
  v13[5] = v20;
  v21 = *(v20 - 8);
  v13[6] = v21;
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  v13[7] = v23;
  sub_1D8580F88();
  v52 = v23;
  v24 = a2[2];
  v13[8] = v24;
  v25 = *(v24 - 8);
  v13[9] = v25;
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  v13[10] = v27;
  sub_1D8580F88();
  v51 = v19;
  v49 = *(v27 + 8);
  v50 = *v27;
  v48 = *(v27 + 16);
  v28 = a2[3];
  v13[11] = v28;
  v29 = *(v28 - 8);
  v13[12] = v29;
  v30 = *(v29 + 64) + 15;
  v31 = swift_task_alloc();
  v13[13] = v31;
  sub_1D8580F88();
  v46 = *v31;
  v45 = *(v31 + 8);
  v32 = a2[4];
  v13[14] = v32;
  v33 = *(v32 - 8);
  v13[15] = v33;
  v34 = *(v33 + 64) + 15;
  v35 = swift_task_alloc();
  v13[16] = v35;
  v47 = v35;
  sub_1D8580F88();
  v44 = *v47;
  v36 = a2[5];
  v13[17] = v36;
  v37 = *(v36 - 8);
  v13[18] = v37;
  v38 = *(v37 + 64) + 15;
  v13[19] = swift_task_alloc();
  sub_1D8580F88();
  v39 = *a4;
  v40 = *a5;
  v41 = a5[1];
  v42 = swift_task_alloc();
  v13[20] = v42;
  *v42 = v13;
  v42[1] = sub_1D84764D4;

  return DistributedChallengeServiceProtocol<>.createChallenge(creator:leaderboard:duration:attemptLimit:players:previousChallenge:)(v53, v51, v52, v50, v49, v48, v46, v45, a9, a10, a11, a12, a13);
}

uint64_t sub_1D84764D4()
{
  OUTLINED_FUNCTION_153();
  v1 = *(v0 + 160);
  v45 = *(v0 + 152);
  OUTLINED_FUNCTION_193();
  v44 = *(v2 + 144);
  OUTLINED_FUNCTION_193();
  v40 = *(v3 + 136);
  OUTLINED_FUNCTION_193();
  v43 = *(v4 + 128);
  OUTLINED_FUNCTION_193();
  v42 = *(v5 + 120);
  OUTLINED_FUNCTION_193();
  v38 = *(v6 + 112);
  OUTLINED_FUNCTION_193();
  v41 = *(v7 + 104);
  OUTLINED_FUNCTION_193();
  v39 = *(v8 + 96);
  OUTLINED_FUNCTION_193();
  v35 = *(v9 + 88);
  OUTLINED_FUNCTION_193();
  v37 = *(v10 + 80);
  OUTLINED_FUNCTION_193();
  v36 = *(v11 + 72);
  OUTLINED_FUNCTION_193();
  v13 = *(v12 + 64);
  v34 = *(v14 + 56);
  OUTLINED_FUNCTION_193();
  v33 = *(v15 + 48);
  OUTLINED_FUNCTION_193();
  v17 = *(v16 + 40);
  v19 = v18[4];
  v20 = v18[3];
  v21 = v18[2];
  OUTLINED_FUNCTION_271();
  v23 = v22;
  OUTLINED_FUNCTION_37();
  *v24 = v23;

  v25 = *(v20 + 8);
  v26 = OUTLINED_FUNCTION_233();
  v27(v26);
  (*(v33 + 8))(v34, v17);
  v28 = *(v36 + 8);
  v29 = OUTLINED_FUNCTION_506();
  v30(v29);
  (*(v39 + 8))(v41, v35);
  (*(v42 + 8))(v43, v38);
  (*(v44 + 8))(v45, v40);

  OUTLINED_FUNCTION_491();

  return v31();
}

unint64_t sub_1D8476880(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38DC8, &qword_1D8590D08);
    result = OUTLINED_FUNCTION_524();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D84768D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38DE0, &qword_1D8590D10);
    result = OUTLINED_FUNCTION_524();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D8476930()
{
  result = qword_1ECA38E00;
  if (!qword_1ECA38E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38DF8, &qword_1D8590D18);
    sub_1D84769B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E00);
  }

  return result;
}

unint64_t sub_1D84769B4()
{
  result = qword_1ECA38E08;
  if (!qword_1ECA38E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D848211C(&qword_1ECA389F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E08);
  }

  return result;
}

unint64_t sub_1D8476A64()
{
  result = qword_1ECA38E18;
  if (!qword_1ECA38E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38DF8, &qword_1D8590D18);
    sub_1D8476AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E18);
  }

  return result;
}

unint64_t sub_1D8476AE8()
{
  result = qword_1ECA38E20;
  if (!qword_1ECA38E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E10, &qword_1D8590D20);
    sub_1D848211C(&qword_1ECA389C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E20);
  }

  return result;
}

unint64_t sub_1D8476B98()
{
  result = qword_1ECA38E30;
  if (!qword_1ECA38E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E28, &qword_1D8590D28);
    sub_1D848211C(&unk_1ECA38BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E30);
  }

  return result;
}

unint64_t sub_1D8476C48()
{
  result = qword_1ECA38E38;
  if (!qword_1ECA38E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E28, &qword_1D8590D28);
    sub_1D848211C(&qword_1ECA38B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E38);
  }

  return result;
}

uint64_t sub_1D8476CF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *a2;
  v18[2] = *a2;
  v22 = *(v21 - 8);
  v18[3] = v22;
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  v18[4] = v24;
  sub_1D8580F88();
  v55 = a3;
  v25 = a2[1];
  v18[5] = v25;
  v26 = *(v25 - 8);
  v18[6] = v26;
  v27 = *(v26 + 64) + 15;
  v28 = swift_task_alloc();
  v18[7] = v28;
  sub_1D8580F88();
  v54 = v28;
  v29 = a2[2];
  v18[8] = v29;
  v30 = *(v29 - 8);
  v18[9] = v30;
  v31 = *(v30 + 64) + 15;
  v32 = swift_task_alloc();
  v18[10] = v32;
  sub_1D8580F88();
  v53 = v24;
  v52 = *v32;
  v33 = a2[3];
  v18[11] = v33;
  v34 = *(v33 - 8);
  v18[12] = v34;
  v35 = *(v34 + 64) + 15;
  v36 = swift_task_alloc();
  v18[13] = v36;
  sub_1D8580F88();
  v51 = v36;
  v37 = a2[4];
  v18[14] = v37;
  v38 = *(v37 - 8);
  v18[15] = v38;
  v39 = *(v38 + 64) + 15;
  v40 = swift_task_alloc();
  v18[16] = v40;
  sub_1D8580F88();
  v50 = *v40;
  v41 = a2[5];
  v18[17] = v41;
  v42 = *(v41 - 8);
  v18[18] = v42;
  v43 = *(v42 + 64) + 15;
  v44 = swift_task_alloc();
  v18[19] = v44;
  v58 = v44;
  sub_1D8580F88();
  v45 = *a4;
  v46 = *a5;
  v47 = a5[1];
  v48 = swift_task_alloc();
  v18[20] = v48;
  *v48 = v18;
  v48[1] = sub_1D84764D4;

  return DistributedChallengeServiceProtocol<>.createChallenge(creator:definition:duration:attemptLimit:players:previousChallenge:)(v55, v53, v54, v52, v51, v50, v58, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

unint64_t sub_1D8477328()
{
  result = qword_1ECA38E60;
  if (!qword_1ECA38E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E58, &qword_1D8590D58);
    sub_1D84773AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E60);
  }

  return result;
}

unint64_t sub_1D84773AC()
{
  result = qword_1ECA38E68;
  if (!qword_1ECA38E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E68);
  }

  return result;
}

unint64_t sub_1D8477400()
{
  result = qword_1ECA38E70;
  if (!qword_1ECA38E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E58, &qword_1D8590D58);
    sub_1D8477484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E70);
  }

  return result;
}

unint64_t sub_1D8477484()
{
  result = qword_1ECA38E78;
  if (!qword_1ECA38E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E78);
  }

  return result;
}

unint64_t sub_1D84774D8()
{
  result = qword_1ECA38E80;
  if (!qword_1ECA38E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E80);
  }

  return result;
}

unint64_t sub_1D847752C()
{
  result = qword_1ECA38E88;
  if (!qword_1ECA38E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E88);
  }

  return result;
}

uint64_t sub_1D8477580(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v18[1] = sub_1D84777C4;

  return DistributedChallengeServiceProtocol<>.leave(challenges:for:)();
}

uint64_t sub_1D84777C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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
  OUTLINED_FUNCTION_242();
  *v21 = v22;
  OUTLINED_FUNCTION_476(v23, v24);
  OUTLINED_FUNCTION_431();
  v26 = *(v25 + 8);
  v27 = OUTLINED_FUNCTION_367();
  v28(v27);
  OUTLINED_FUNCTION_430();
  v30 = *(v29 + 8);
  v31 = OUTLINED_FUNCTION_166();
  v32(v31);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

unint64_t sub_1D8477994()
{
  result = qword_1ECA38E98;
  if (!qword_1ECA38E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E90, &qword_1D8590D70);
    sub_1D8477A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38E98);
  }

  return result;
}

unint64_t sub_1D8477A18()
{
  result = qword_1ECA38EA0;
  if (!qword_1ECA38EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EA0);
  }

  return result;
}

unint64_t sub_1D8477A6C()
{
  result = qword_1ECA38EA8;
  if (!qword_1ECA38EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38E90, &qword_1D8590D70);
    sub_1D8477AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EA8);
  }

  return result;
}

unint64_t sub_1D8477AF0()
{
  result = qword_1ECA38EB0;
  if (!qword_1ECA38EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EB0);
  }

  return result;
}

uint64_t sub_1D8477B44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

  return DistributedChallengeServiceProtocol<>.refreshChallenges(player:filters:)();
}

unint64_t sub_1D8477D80()
{
  result = qword_1ECA38EC8;
  if (!qword_1ECA38EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38EC0, &qword_1D8590D90);
    sub_1D8477E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EC8);
  }

  return result;
}

unint64_t sub_1D8477E04()
{
  result = qword_1ECA38ED0;
  if (!qword_1ECA38ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38ED8, &qword_1D8590D98);
    sub_1D8477E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38ED0);
  }

  return result;
}

unint64_t sub_1D8477E88()
{
  result = qword_1ECA38EE0;
  if (!qword_1ECA38EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EE0);
  }

  return result;
}

unint64_t sub_1D8477EDC()
{
  result = qword_1ECA38EE8;
  if (!qword_1ECA38EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38EC0, &qword_1D8590D90);
    sub_1D8477F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EE8);
  }

  return result;
}

unint64_t sub_1D8477F60()
{
  result = qword_1ECA38EF0;
  if (!qword_1ECA38EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38ED8, &qword_1D8590D98);
    sub_1D8477FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EF0);
  }

  return result;
}

unint64_t sub_1D8477FE4()
{
  result = qword_1ECA38EF8;
  if (!qword_1ECA38EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38EF8);
  }

  return result;
}

uint64_t sub_1D8478038(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v19[1] = sub_1D84777C4;

  return DistributedChallengeServiceProtocol<>.listChallengeStates(player:challenges:)();
}

unint64_t sub_1D8478278()
{
  result = qword_1ECA38F08;
  if (!qword_1ECA38F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F00, &qword_1D8590DB0);
    sub_1D8473E40(&unk_1ECA38F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F08);
  }

  return result;
}

unint64_t sub_1D8478350()
{
  result = qword_1ECA38F18;
  if (!qword_1ECA38F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F00, &qword_1D8590DB0);
    sub_1D8473E40(&unk_1ECA38F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F18);
  }

  return result;
}

uint64_t sub_1D8478408(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v19[1] = sub_1D8482254;

  return DistributedChallengeServiceProtocol<>.listChallengeStates2(player:challenges:)();
}

unint64_t sub_1D8478648()
{
  result = qword_1ECA38F30;
  if (!qword_1ECA38F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F28, &qword_1D8590DC8);
    sub_1D84786CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F30);
  }

  return result;
}

unint64_t sub_1D84786CC()
{
  result = qword_1ECA38F38;
  if (!qword_1ECA38F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F40, &qword_1D8590DD0);
    sub_1D8473E40(&unk_1ECA38F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F38);
  }

  return result;
}

unint64_t sub_1D8478784()
{
  result = qword_1ECA38F48;
  if (!qword_1ECA38F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F28, &qword_1D8590DC8);
    sub_1D8478808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F48);
  }

  return result;
}

unint64_t sub_1D8478808()
{
  result = qword_1ECA38F50;
  if (!qword_1ECA38F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F40, &qword_1D8590DD0);
    sub_1D8473E40(&unk_1ECA38F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F50);
  }

  return result;
}

uint64_t sub_1D84788C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v20[1] = sub_1D848220C;

  return DistributedChallengeServiceProtocol<>.listChallenges(player:filters:after:)();
}

uint64_t sub_1D8478BDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v19[1] = sub_1D8482254;

  return DistributedChallengeServiceProtocol<>.listParticipantStates(player:challenges:)();
}

unint64_t sub_1D8478E1C()
{
  result = qword_1ECA38F78;
  if (!qword_1ECA38F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F70, &qword_1D8590E00);
    sub_1D8478EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F78);
  }

  return result;
}

unint64_t sub_1D8478EA0()
{
  result = qword_1ECA38F80;
  if (!qword_1ECA38F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F88, &qword_1D8590E08);
    sub_1D8478F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F80);
  }

  return result;
}

unint64_t sub_1D8478F24()
{
  result = qword_1ECA38F90;
  if (!qword_1ECA38F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F90);
  }

  return result;
}

unint64_t sub_1D8478F78()
{
  result = qword_1ECA38F98;
  if (!qword_1ECA38F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F70, &qword_1D8590E00);
    sub_1D8478FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38F98);
  }

  return result;
}

unint64_t sub_1D8478FFC()
{
  result = qword_1ECA38FA0;
  if (!qword_1ECA38FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38F88, &qword_1D8590E08);
    sub_1D8479080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FA0);
  }

  return result;
}

unint64_t sub_1D8479080()
{
  result = qword_1ECA38FA8;
  if (!qword_1ECA38FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FA8);
  }

  return result;
}

uint64_t sub_1D84790D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v19[1] = sub_1D8482254;

  return DistributedChallengeServiceProtocol<>.listParticipantStates2(player:challenges:)();
}

unint64_t sub_1D8479314()
{
  result = qword_1ECA38FB8;
  if (!qword_1ECA38FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FB0, &qword_1D8590E20);
    sub_1D8479398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FB8);
  }

  return result;
}

unint64_t sub_1D8479398()
{
  result = qword_1ECA38FC0;
  if (!qword_1ECA38FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FC8, &qword_1D8590E28);
    sub_1D8478EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FC0);
  }

  return result;
}

unint64_t sub_1D847941C()
{
  result = qword_1ECA38FD0;
  if (!qword_1ECA38FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FB0, &qword_1D8590E20);
    sub_1D84794A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FD0);
  }

  return result;
}

unint64_t sub_1D84794A0()
{
  result = qword_1ECA38FD8;
  if (!qword_1ECA38FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38FC8, &qword_1D8590E28);
    sub_1D8478FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38FD8);
  }

  return result;
}

uint64_t sub_1D8479524(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
  v5[8] = swift_task_alloc();
  sub_1D8580F88();
  v14 = a2[2];
  v5[9] = v14;
  v15 = *(v14 - 8);
  v5[10] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v5[11] = v17;
  sub_1D8580F88();
  v18 = *v17;
  v19 = *a4;
  v20 = *a5;
  v21 = a5[1];
  v22 = swift_task_alloc();
  v5[12] = v22;
  *v22 = v5;
  v22[1] = sub_1D8479834;

  return DistributedChallengeServiceProtocol<>.sendInvites(player:challenge:to:)();
}

void sub_1D8479834()
{
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  v2 = *(v1 + 96);
  v30 = *(v1 + 88);
  OUTLINED_FUNCTION_193();
  v29 = *(v3 + 80);
  OUTLINED_FUNCTION_193();
  v5 = *(v4 + 72);
  v7 = *(v6 + 64);
  v28 = *(v6 + 56);
  OUTLINED_FUNCTION_193();
  v10 = v9[5];
  v11 = v9[4];
  v12 = v9[3];
  v13 = v9[2];
  v14 = *(v8 + 48) - 8;
  v15 = *v0;
  OUTLINED_FUNCTION_42();
  *v16 = v15;
  OUTLINED_FUNCTION_476(v17, v18);
  (*(v11 + 8))(v10, v12);
  v19 = *(v28 + 8);
  v20 = OUTLINED_FUNCTION_445();
  v21(v20);
  v22 = *(v29 + 8);
  v23 = OUTLINED_FUNCTION_150();
  v24(v23);

  v25 = *(v15 + 8);
  OUTLINED_FUNCTION_428();

  __asm { BRAA            X1, X16 }
}