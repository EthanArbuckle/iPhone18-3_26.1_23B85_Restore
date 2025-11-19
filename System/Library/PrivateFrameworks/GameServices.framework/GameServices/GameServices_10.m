uint64_t sub_1D851D444(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  return GameDebuggerServiceWorkaround.describeGameLockups(_:)();
}

uint64_t sub_1D851D5E4(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D851D5FC()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 152);
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

uint64_t GameDebuggerServiceWorkaround.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_373_1();
  *(v1 + 160) = v3;
  *(v1 + 168) = v0;
  *(v1 + 149) = v4;
  *(v1 + 152) = v5;
  v6 = sub_1D8581018();
  *(v1 + 176) = v6;
  OUTLINED_FUNCTION_39(v6);
  *(v1 + 184) = v7;
  v9 = *(v8 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v1 + 200) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 208) = v11;
  v13 = *(v12 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 224) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 232) = v15;
  v17 = *(v16 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A220, &unk_1D85A7890);
  *(v1 + 248) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 256) = v19;
  v21 = *(v20 + 64);
  *(v1 + 264) = OUTLINED_FUNCTION_332();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A228, &unk_1D859F330);
  *(v1 + 272) = v22;
  OUTLINED_FUNCTION_39(v22);
  *(v1 + 280) = v23;
  v25 = *(v24 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_332();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A230, &unk_1D85A78A0);
  *(v1 + 296) = v26;
  OUTLINED_FUNCTION_39(v26);
  *(v1 + 304) = v27;
  v29 = *(v28 + 64);
  *(v1 + 312) = OUTLINED_FUNCTION_332();
  *(v1 + 320) = OUTLINED_FUNCTION_371_0();
  *(v1 + 336) = v30;
  v31 = v2[1];
  *(v1 + 352) = *v2;
  *(v1 + 360) = v31;
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_535();

  return MEMORY[0x1EEE6DFA0](v32, v33, v34);
}

uint64_t sub_1D851DA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_487();
  v17 = *(v16 + 168);
  if (swift_distributed_actor_is_remote())
  {
    v19 = *(v16 + 320);
    v18 = *(v16 + 328);
    v20 = *(v16 + 312);
    OUTLINED_FUNCTION_169_2(*(v16 + 168));
    *(v16 + 88) = v19;
    *(v16 + 96) = v18;
    sub_1D8508B60(v19, v18);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A238, &unk_1D859F340);
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_261_0();
    sub_1D8581038();
    sub_1D8508B74();
    sub_1D8508C4C();
    v22 = OUTLINED_FUNCTION_36();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v22, v21);
    v41 = *(v16 + 288);
    *(v16 + 147) = *(v16 + 150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A260, &qword_1D85A78B0);
    OUTLINED_FUNCTION_108_3();
    sub_1D8581038();
    sub_1D8508D24();
    sub_1D8508DFC();
    OUTLINED_FUNCTION_75_0();
    v42 = *(v16 + 264);
    v43 = *(v16 + 149);
    *(v16 + 136) = *(v16 + 160);
    *(v16 + 144) = v43 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A288, &qword_1D859F350);
    OUTLINED_FUNCTION_312_1();
    OUTLINED_FUNCTION_250_1();
    sub_1D8581038();
    OUTLINED_FUNCTION_137_0(&unk_1ECA3A290);
    OUTLINED_FUNCTION_136_2(&unk_1ECA3A298);
    OUTLINED_FUNCTION_75_0();
    v44 = *(v16 + 344);
    v45 = *(v16 + 240);
    *(v16 + 104) = *(v16 + 336);
    *(v16 + 112) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_254_1();
    sub_1D8581038();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_75_0();
    v46 = *(v16 + 360);
    v47 = *(v16 + 216);
    *(v16 + 120) = *(v16 + 352);
    *(v16 + 128) = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_252();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_358_1(v48);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_358_1(v49);
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v52);
    v53 = OUTLINED_FUNCTION_238();
    __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
    OUTLINED_FUNCTION_17_3();
    sub_1D848211C(v55);
    OUTLINED_FUNCTION_16_4();
    sub_1D848211C(v56);
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v57)
    {
      v58 = *(v16 + 304);
      v59 = *(v16 + 296);
      v88 = v59;
      v89 = *(v16 + 312);
      v60 = *(v16 + 280);
      v86 = *(v16 + 272);
      v87 = *(v16 + 288);
      v61 = *(v16 + 256);
      v62 = *(v16 + 264);
      v64 = *(v16 + 240);
      v63 = *(v16 + 248);
      v66 = *(v16 + 224);
      v65 = *(v16 + 232);
      (*(*(v16 + 208) + 8))(*(v16 + 216), *(v16 + 200));
      (*(v65 + 8))(v64, v66);
      v67 = *(v61 + 8);
      v68 = OUTLINED_FUNCTION_258();
      v69(v68);
      (*(v60 + 8))(v87, v86);
      (*(v58 + 8))(v89, v88);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_319_1();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_177_0();

      return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, v86, v87, v88, v89, a14, a15, a16);
    }

    else
    {
      v78 = *(v16 + 192);
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v79 = swift_task_alloc();
      *(v16 + 368) = v79;
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v80);
      OUTLINED_FUNCTION_217();
      *v79 = v81;
      v79[1] = sub_1D851E068;
      v82 = *(v16 + 192);
      v83 = *(v16 + 168);
      v84 = *(v16 + 152);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_238_2();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v23 = *(v16 + 336);
    *(v16 + 40) = *(v16 + 320);
    v25 = *(v16 + 352);
    v24 = *(v16 + 360);
    v26 = *(v16 + 149);
    *(v16 + 145) = *(v16 + 150);
    *(v16 + 56) = v23;
    *(v16 + 72) = v25;
    *(v16 + 80) = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v16 + 384) = v27;
    *v27 = v28;
    v27[1] = sub_1D851E264;
    v29 = *(v16 + 160);
    v30 = *(v16 + 168);
    v31 = *(v16 + 152);
    OUTLINED_FUNCTION_177_0();

    return sub_1D851EBC0(v32, v33, v34, v35, v36, v37, v38);
  }
}

uint64_t sub_1D851E068()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D851E264()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[49] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_535();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[39];
    v14 = v3[36];
    v15 = v3[33];
    v16 = v3[30];
    v17 = v3[27];
    v18 = v3[24];

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_535();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1D851E4C4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 392);
  OUTLINED_FUNCTION_218_1();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D851E54C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
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
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
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
  v11 = a2[2];
  v2[8] = v11;
  v12 = *(v11 - 8);
  v2[9] = v12;
  v13 = *(v12 + 64) + 15;
  v23 = swift_task_alloc();
  v2[10] = v23;
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
    goto LABEL_20;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v14 = *v23;
  v22 = *(v23 + 8);
  v15 = a2[3];
  v2[11] = v15;
  v16 = *(v15 - 8);
  v2[12] = v16;
  v17 = *(v16 + 64) + 15;
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v18 = a2[4];
  v2[14] = v18;
  v19 = *(v18 - 8);
  v2[15] = v19;
  v20 = *(v19 + 64) + 15;
  v2[16] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v21 = swift_task_alloc();
  v2[17] = v21;
  *v21 = v2;
  v21[1] = sub_1D852A39C;

  return GameDebuggerServiceWorkaround.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_1D851EBC0(uint64_t a1, __int128 *a2, _WORD *a3, uint64_t a4, char a5, __int128 *a6, void *a7)
{
  *(v8 + 192) = a4;
  *(v8 + 200) = v7;
  *(v8 + 276) = a5;
  *(v8 + 184) = a1;
  v9 = *a2;
  *(v8 + 272) = *a3;
  v10 = *a6;
  *(v8 + 208) = v9;
  *(v8 + 224) = v10;
  v11 = a7[1];
  *(v8 + 240) = *a7;
  *(v8 + 248) = v11;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D851EBF8()
{
  OUTLINED_FUNCTION_214_0();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_163_1();
  (*(v2 + 112))();
  if (*(v0 + 40))
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);
    v35 = *(v0 + 224);
    v5 = *(v0 + 272);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v39 = *(v0 + 276);
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v8 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    *(v0 + 136) = v7;
    *(v0 + 144) = v6;
    *(v0 + 274) = v5;
    *(v0 + 152) = v35;
    *(v0 + 168) = v4;
    *(v0 + 176) = v3;
    v9 = *(v8 + 160);
    OUTLINED_FUNCTION_54();
    *&v35 = v10 + *v10;
    v12 = *(v11 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 256) = v13;
    *v13 = v14;
    v13[1] = sub_1D851EE84;
    v15 = *(v0 + 192);
    OUTLINED_FUNCTION_176_0();

    __asm { BRAA            X8, X16 }
  }

  v18 = *(v0 + 184);
  sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
  v19 = OUTLINED_FUNCTION_188();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_397();
  sub_1D848211C(v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_397();
  v23 = sub_1D848211C(v22);
  OUTLINED_FUNCTION_392_1(MEMORY[0x1E69E7CC0], v24, v25, v26, v23, v27, v28, v29, v32, v33, v34, v36, v37, 0);
  OUTLINED_FUNCTION_57();

  return v30();
}

uint64_t sub_1D851EE84()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 264) = v0;

  v9 = *(v3 + 200);
  if (v0)
  {
    v10 = sub_1D851F008;
  }

  else
  {
    v10 = sub_1D851EF84;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1D851EF84()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 184);
  v2 = *(v0 + 96);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *v1 = v2;
  *(v1 + 24) = v5;
  *(v1 + 8) = v6;
  OUTLINED_FUNCTION_57();

  return v3();
}

uint64_t sub_1D851F008()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_93_0();
  v2 = *(v0 + 264);

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.enableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_148();
  v3 = OUTLINED_FUNCTION_300_2(v1, v2);
  v0[10] = v3;
  OUTLINED_FUNCTION_39(v3);
  v0[11] = v4;
  v6 = *(v5 + 64);
  v0[12] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2B8, &qword_1D859F370);
  v0[13] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[14] = v8;
  v10 = *(v9 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v11 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D851F150()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = v0[9];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[15];
    v3 = v0[8];
    v4 = v0[7];
    OUTLINED_FUNCTION_169_2(v0[9]);
    v0[5] = v4;
    v0[6] = v3;

    OUTLINED_FUNCTION_110_3();
    OUTLINED_FUNCTION_285_0();
    v5 = OUTLINED_FUNCTION_166();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v7);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_246_2();
      v10(v9);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_349_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_535();

      return v12(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    else
    {
      v26 = v0[12];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v27 = swift_task_alloc();
      OUTLINED_FUNCTION_333_2(v27);
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v28);
      OUTLINED_FUNCTION_81();
      v0[2] = v29;
      OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_535();

      return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v30, v31, v32, v33, v34, v35, v36);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_306_1(v20);
    *v21 = v22;
    OUTLINED_FUNCTION_52_1(v21);
    OUTLINED_FUNCTION_535();

    return sub_1D851F884(v23, v24);
  }
}

uint64_t sub_1D851F398()
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

uint64_t sub_1D851F490()
{
  OUTLINED_FUNCTION_174();
  v0 = OUTLINED_FUNCTION_360_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_74();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_349_0();

  OUTLINED_FUNCTION_57();

  return v4();
}

uint64_t sub_1D851F528()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = *(v0 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 120);
  v7 = *(v0 + 96);

  OUTLINED_FUNCTION_137();

  return v8();
}

uint64_t sub_1D851F640()
{
  OUTLINED_FUNCTION_174();
  v1 = OUTLINED_FUNCTION_360_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_74();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[12];

  OUTLINED_FUNCTION_146();

  return v8();
}

uint64_t sub_1D851F6E4(uint64_t a1, uint64_t *a2)
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
  v9 = v6[1];
  v10 = swift_task_alloc();
  v2[5] = v10;
  *v10 = v2;
  v10[1] = sub_1D84A7CAC;

  return GameDebuggerServiceWorkaround.enableGameDebugging(bundleID:)();
}

uint64_t sub_1D851F884(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D851F89C()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_163_1();
  (*(v2 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v3 = *(OUTLINED_FUNCTION_14_3() + 168);
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

uint64_t sub_1D851FA20()
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

uint64_t sub_1D851FB34()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  OUTLINED_FUNCTION_57();

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.disableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_148();
  v3 = OUTLINED_FUNCTION_300_2(v1, v2);
  v0[10] = v3;
  OUTLINED_FUNCTION_39(v3);
  v0[11] = v4;
  v6 = *(v5 + 64);
  v0[12] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2B8, &qword_1D859F370);
  v0[13] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[14] = v8;
  v10 = *(v9 + 64);
  v0[15] = OUTLINED_FUNCTION_332();
  v11 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D851FC80()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = v0[9];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[15];
    v3 = v0[8];
    v4 = v0[7];
    OUTLINED_FUNCTION_169_2(v0[9]);
    v0[5] = v4;
    v0[6] = v3;

    OUTLINED_FUNCTION_110_3();
    OUTLINED_FUNCTION_285_0();
    v5 = OUTLINED_FUNCTION_166();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v7);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_246_2();
      v10(v9);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_349_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_535();

      return v12(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    else
    {
      v26 = v0[12];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v27 = swift_task_alloc();
      OUTLINED_FUNCTION_333_2(v27);
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v28);
      OUTLINED_FUNCTION_81();
      v0[2] = v29;
      OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_535();

      return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v30, v31, v32, v33, v34, v35, v36);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_306_1(v20);
    *v21 = v22;
    OUTLINED_FUNCTION_52_1(v21);
    OUTLINED_FUNCTION_535();

    return sub_1D8520160(v23, v24);
  }
}

uint64_t sub_1D851FEC8()
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

uint64_t sub_1D851FFC0(uint64_t a1, uint64_t *a2)
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
  v9 = v6[1];
  v10 = swift_task_alloc();
  v2[5] = v10;
  *v10 = v2;
  v10[1] = sub_1D84A7CAC;

  return GameDebuggerServiceWorkaround.disableGameDebugging(bundleID:)();
}

uint64_t sub_1D8520160(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D8520178()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_163_1();
  (*(v2 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v3 = *(OUTLINED_FUNCTION_14_3() + 176);
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

uint64_t GameDebuggerServiceWorkaround.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 120) = v6;
  *(v1 + 128) = v0;
  *(v1 + 112) = v7;
  v8 = sub_1D8581018();
  OUTLINED_FUNCTION_29(v8);
  *(v1 + 144) = v9;
  v11 = *(v10 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 160) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 168) = v13;
  v15 = *(v14 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  *(v1 + 184) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 192) = v17;
  v19 = *(v18 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 208) = v20;
  OUTLINED_FUNCTION_39(v20);
  *(v1 + 216) = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_332();
  v25 = *v5;
  v26 = v5[1];
  *(v1 + 224) = v24;
  *(v1 + 232) = v25;
  *(v1 + 240) = v26;
  *(v1 + 248) = *v3;
  v27 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1D85204C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v13 = *(v12 + 128);
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v12 + 232);
    v14 = *(v12 + 240);
    v16 = *(v12 + 224);
    OUTLINED_FUNCTION_169_2(*(v12 + 128));
    *(v12 + 72) = v15;
    *(v12 + 80) = v14;

    v17 = OUTLINED_FUNCTION_221();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_202_2();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v19);
    OUTLINED_FUNCTION_4();
    sub_1D848211C(v20);
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v21, v22);
    v35 = *(v12 + 200);
    *(v12 + 104) = *(v12 + 120);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E8, &unk_1D859A110);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D849DDF4();
    sub_1D849DF50();
    OUTLINED_FUNCTION_75_0();
    v36 = *(v12 + 256);
    v37 = *(v12 + 176);
    *(v12 + 88) = *(v12 + 248);
    *(v12 + 96) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_254_1();
    sub_1D8581038();
    sub_1D84751F0();
    sub_1D8475274();
    OUTLINED_FUNCTION_75_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    v39 = OUTLINED_FUNCTION_238();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_17_3();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_16_4();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      v45 = *(v12 + 216);
      v44 = *(v12 + 224);
      v47 = *(v12 + 200);
      v46 = *(v12 + 208);
      v48 = *(v12 + 184);
      v49 = *(v12 + 192);
      (*(*(v12 + 168) + 8))(*(v12 + 176), *(v12 + 160));
      v50 = *(v49 + 8);
      v51 = OUTLINED_FUNCTION_221();
      v52(v51);
      v53 = *(v45 + 8);
      v54 = OUTLINED_FUNCTION_151();
      v55(v54);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_111();
      v56 = *(v12 + 152);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
    }

    else
    {
      v65 = *(v12 + 152);
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v66 = swift_task_alloc();
      *(v12 + 264) = v66;
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v67);
      OUTLINED_FUNCTION_217();
      *v66 = v68;
      v66[1] = sub_1D8520938;
      v69 = *(v12 + 152);
      v70 = *(v12 + 128);
      v71 = *(v12 + 112);
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v23 = *(v12 + 240);
    *(v12 + 40) = *(v12 + 232);
    *(v12 + 48) = v23;
    *(v12 + 56) = *(v12 + 248);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v12 + 280) = v24;
    *v24 = v25;
    v24[1] = sub_1D8520B00;
    v26 = *(v12 + 120);
    v27 = *(v12 + 128);
    v28 = *(v12 + 112);
    OUTLINED_FUNCTION_170_1();

    return sub_1D8521150(v29, v30, v31, v32);
  }
}

uint64_t sub_1D8520938()
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

uint64_t sub_1D8520A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  v13 = OUTLINED_FUNCTION_286_1();
  v14(v13);
  v15 = OUTLINED_FUNCTION_67();
  v16(v15);
  v17 = OUTLINED_FUNCTION_69();
  v18(v17);
  v19 = OUTLINED_FUNCTION_68();
  v20(v19);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_111();
  v21 = *(v12 + 152);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D8520B00()
{
  OUTLINED_FUNCTION_174();
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
    v12 = v3[28];
    v13 = v3[25];
    v14 = v3[22];
    v15 = v3[19];

    OUTLINED_FUNCTION_57();

    return v16();
  }
}

uint64_t sub_1D8520C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  v13 = OUTLINED_FUNCTION_286_1();
  v14(v13);
  v15 = OUTLINED_FUNCTION_67();
  v16(v15);
  v17 = OUTLINED_FUNCTION_69();
  v18(v17);
  v19 = OUTLINED_FUNCTION_68();
  v20(v19);
  OUTLINED_FUNCTION_331();

  v21 = *(v12 + 272);
  OUTLINED_FUNCTION_235();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D8520D18()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 288);
  OUTLINED_FUNCTION_235();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D8520D90(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
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
  v16 = *v11;
  v12 = a2[2];
  v2[8] = v12;
  v13 = *(v12 - 8);
  v2[9] = v13;
  v14 = *(v13 + 64) + 15;
  v2[10] = swift_task_alloc();
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
    return result;
  }

  GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()();
  v15 = swift_task_alloc();
  v2[11] = v15;
  *v15 = v2;
  v15[1] = sub_1D852A324;

  return GameDebuggerServiceWorkaround.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_1D8521150(uint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 168) = a1;
  *(v5 + 176) = a3;
  v6 = *a2;
  v7 = a2[1];
  *(v5 + 184) = v4;
  *(v5 + 192) = v6;
  *(v5 + 200) = v7;
  *(v5 + 208) = *a4;
  return OUTLINED_FUNCTION_12_2();
}

uint64_t sub_1D8521178()
{
  OUTLINED_FUNCTION_487();
  v2 = *(v1 + 184);
  OUTLINED_FUNCTION_163_1();
  (*(v3 + 112))();
  if (*(v1 + 40))
  {
    v5 = *(v1 + 208);
    v4 = *(v1 + 216);
    v30 = *(v1 + 192);
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v1 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    OUTLINED_FUNCTION_18_1();
    *(v1 + 136) = v30;
    *(v1 + 152) = v5;
    *(v1 + 160) = v4;
    v6 = *(v0 + 184);
    OUTLINED_FUNCTION_54();
    v31 = (v7 + *v7);
    v9 = *(v8 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v1 + 224) = v10;
    *v10 = v11;
    v10[1] = sub_1D85213BC;
    v12 = *(v1 + 176);
    OUTLINED_FUNCTION_377_1();

    return v31();
  }

  else
  {
    v14 = *(v1 + 168);
    sub_1D84F589C(v1 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v15 = OUTLINED_FUNCTION_188();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_397();
    sub_1D848211C(v17);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_397();
    v19 = sub_1D848211C(v18);
    OUTLINED_FUNCTION_392_1(MEMORY[0x1E69E7CC0], v20, v21, v22, v19, v23, v24, v25, v27, v28, v29, v32, v33, 0);
    OUTLINED_FUNCTION_57();

    return v26();
  }
}

uint64_t sub_1D85213BC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 232) = v0;

  v9 = *(v3 + 184);
  if (v0)
  {
    v10 = sub_1D8521540;
  }

  else
  {
    v10 = sub_1D85214BC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1D85214BC()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 168);
  v2 = *(v0 + 96);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *v1 = v2;
  *(v1 + 24) = v5;
  *(v1 + 8) = v6;
  OUTLINED_FUNCTION_57();

  return v3();
}

uint64_t sub_1D8521540()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_93_0();
  v2 = *(v0 + 232);

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.describeGameActivityDefinitions(_:)()
{
  OUTLINED_FUNCTION_148();
  v2 = OUTLINED_FUNCTION_311_1(v1);
  v0[9] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[10] = v3;
  v5 = *(v4 + 64);
  v0[11] = OUTLINED_FUNCTION_332();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  OUTLINED_FUNCTION_38_0(v6);
  v0[13] = v7;
  v9 = *(v8 + 64);
  v0[14] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D8521684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_185_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_83_3();
    OUTLINED_FUNCTION_285_0();
    sub_1D849EA88();
    sub_1D849EB38();
    OUTLINED_FUNCTION_37_0();
    if (v12)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
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
      OUTLINED_FUNCTION_197();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      v33 = v13[11];
      sub_1D8581028();
      v34 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v34);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v35);
      OUTLINED_FUNCTION_98();
      v13[2] = v36;
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_2_4(v37);
      OUTLINED_FUNCTION_118_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_207_3(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_33_1(v29);
    OUTLINED_FUNCTION_197();

    return sub_1D8521DF0(v31);
  }
}

uint64_t sub_1D85218F0()
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

uint64_t sub_1D85219E8()
{
  OUTLINED_FUNCTION_174();
  v1 = OUTLINED_FUNCTION_387_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_74();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_304_0();

  v6 = OUTLINED_FUNCTION_72();

  return v7(v6);
}

uint64_t sub_1D8521A88()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v3 = *(v2 + 136);
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_510();
  v7 = *(v6 + 112);
  v8 = *(v2 + 88);

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_482();
  }

  return v10(v9);
}

uint64_t sub_1D8521BB0()
{
  OUTLINED_FUNCTION_174();
  v1 = OUTLINED_FUNCTION_387_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_74();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 128);
  OUTLINED_FUNCTION_304_0();

  OUTLINED_FUNCTION_146();

  return v6();
}

uint64_t sub_1D8521C50(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  return GameDebuggerServiceWorkaround.describeGameActivityDefinitions(_:)();
}

uint64_t sub_1D8521DF0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D8521E08()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 192);
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

uint64_t sub_1D8521F94()
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

uint64_t sub_1D85220AC()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_69_2();

  return v2();
}

uint64_t sub_1D852210C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_93_0();
  v2 = *(v0 + 120);

  return v1();
}

uint64_t GameDebuggerServiceWorkaround.invokeActivity(_:)()
{
  OUTLINED_FUNCTION_148();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1D8581018();
  v1[7] = v3;
  OUTLINED_FUNCTION_39(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_332();
  v7 = type metadata accessor for GameActivityInstance(0);
  v1[10] = v7;
  v8 = *(*(v7 - 8) + 64);
  v1[11] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  OUTLINED_FUNCTION_38_0(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D8522280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  v11 = v10[6];
  if (swift_distributed_actor_is_remote())
  {
    v12 = v10[14];
    v13 = v10[10];
    v14 = v10[11];
    v15 = v10[5];
    OUTLINED_FUNCTION_169_2(v10[6]);
    sub_1D84A3A34(v15, v14);
    OUTLINED_FUNCTION_241_1();
    OUTLINED_FUNCTION_83_3();
    sub_1D8581038();
    OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_283_1(v16);
    OUTLINED_FUNCTION_120_0(&qword_1ECA39988);
    OUTLINED_FUNCTION_37_0();
    if (v12 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v17), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v18))
    {
      v19 = OUTLINED_FUNCTION_116_0();
      v20(v19);
      OUTLINED_FUNCTION_331();

      OUTLINED_FUNCTION_191_2();
      v21 = v10[9];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239_1();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
    }

    else
    {
      v37 = v10[9];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v38 = swift_task_alloc();
      OUTLINED_FUNCTION_309_2(v38);
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v39);
      OUTLINED_FUNCTION_81();
      v10[2] = v40;
      v10[3] = sub_1D85224F0;
      v41 = v10[9];
      v42 = v10[6];
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_239_1();

      return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v43, v44, v45, v46, v47, v48, v49);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_207_3(v31);
    *v32 = v33;
    v32[1] = sub_1D8522698;
    v34 = v10[6];
    OUTLINED_FUNCTION_207_0(v10[5]);
    OUTLINED_FUNCTION_239_1();

    return sub_1D8522A18(v35);
  }
}

uint64_t sub_1D85224F0()
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

uint64_t sub_1D85225E8()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = OUTLINED_FUNCTION_177_1();
  v5(v4);
  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_191_2();
  v8 = v0[9];

  OUTLINED_FUNCTION_57();

  return v9();
}

uint64_t sub_1D8522698()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = v0[17];
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

uint64_t sub_1D85227CC()
{
  OUTLINED_FUNCTION_174();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = OUTLINED_FUNCTION_177_1();
  v5(v4);
  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
  OUTLINED_FUNCTION_331();

  v8 = v0[16];
  OUTLINED_FUNCTION_304_0();
  v9 = v0[9];

  OUTLINED_FUNCTION_146();

  return v10();
}

uint64_t sub_1D8522880(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
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
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1D84A7CAC;

  return GameDebuggerServiceWorkaround.invokeActivity(_:)();
}

uint64_t sub_1D8522A18(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_10_4(a1, v1);
}

uint64_t sub_1D8522A30()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C(v0 + 16, &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 200);
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

uint64_t sub_1D8522BB0()
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

uint64_t GameDebuggerServiceWorkaround.getDefaultGameActivityEnvironment()()
{
  OUTLINED_FUNCTION_148();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1D8581018();
  v1[7] = v3;
  OUTLINED_FUNCTION_39(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_332();
  v7 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D8522D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
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
    type metadata accessor for DefaultGameActivityEnvironment(0);
    OUTLINED_FUNCTION_106_2();
    OUTLINED_FUNCTION_283_1(v15);
    OUTLINED_FUNCTION_119_1(&unk_1ECA39FA8);
    OUTLINED_FUNCTION_41_1();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v16)
    {
      OUTLINED_FUNCTION_331();

      v17 = v12[9];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
    }

    else
    {
      v32 = v12[9];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v33 = swift_task_alloc();
      v12[10] = v33;
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v34);
      OUTLINED_FUNCTION_217();
      *v33 = v35;
      OUTLINED_FUNCTION_378_1();
      v37 = v12[5];
      v36 = v12[6];
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v12[12] = v27;
    *v27 = v28;
    v27[1] = sub_1D8523120;
    v29 = v12[5];
    v30 = v12[6];
    OUTLINED_FUNCTION_170_1();

    return sub_1D85232BC();
  }
}

uint64_t sub_1D8522FAC()
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

uint64_t sub_1D85230A4()
{
  OUTLINED_FUNCTION_148();
  v1 = OUTLINED_FUNCTION_177_1();
  v2(v1);
  OUTLINED_FUNCTION_331();

  v3 = *(v0 + 72);

  OUTLINED_FUNCTION_57();

  return v4();
}

uint64_t sub_1D8523120()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = *(v0 + 96);
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 72);

  OUTLINED_FUNCTION_137();

  return v7();
}

uint64_t sub_1D852321C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8442F30;

  return GameDebuggerServiceWorkaround.getDefaultGameActivityEnvironment()();
}

uint64_t sub_1D85232BC()
{
  OUTLINED_FUNCTION_148();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A2E0, &qword_1D85A0488) - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_332();

  return MEMORY[0x1EEE6DFA0](sub_1D852334C, v0, 0);
}

uint64_t sub_1D852334C()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_90_1();
  (*(v1 + 112))();
  if (v0[5])
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C((v0 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    v2 = *(OUTLINED_FUNCTION_14_3() + 208);
    OUTLINED_FUNCTION_131();
    v16 = (v3 + *v3);
    v5 = *(v4 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v0[15] = v6;
    *v6 = v7;
    v6[1] = sub_1D8523560;
    v8 = v0[14];
    OUTLINED_FUNCTION_397();

    return v16();
  }

  else
  {
    v10 = v0[14];
    sub_1D84F589C((v0 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    v11 = type metadata accessor for DefaultGameActivityEnvironment(0);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_1D84F589C(v0[14], &qword_1ECA3A2E0, &qword_1D85A0488);
    sub_1D8448448();
    swift_allocError();
    OUTLINED_FUNCTION_315_1();
    static GameServicesError.illegalState(message:)(0xD000000000000023, v12, v13);
    swift_willThrow();
    v14 = v0[14];

    OUTLINED_FUNCTION_146();

    return v15();
  }
}

uint64_t sub_1D8523560()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *(v1 + 120);
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_341();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_184_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D8523674()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[14];
  v2 = type metadata accessor for DefaultGameActivityEnvironment(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D84F589C(v0[14], &qword_1ECA3A2E0, &qword_1D85A0488);
    sub_1D8448448();
    swift_allocError();
    OUTLINED_FUNCTION_315_1();
    static GameServicesError.illegalState(message:)(0xD000000000000023, v5, v6);
    swift_willThrow();
    v7 = v0[14];

    OUTLINED_FUNCTION_146();
  }

  else
  {
    sub_1D85237F4(v0[14], v0[12]);

    OUTLINED_FUNCTION_57();
  }

  return v8();
}

uint64_t sub_1D8523790()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[16];
  v2 = v0[14];

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D85237F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultGameActivityEnvironment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t GameDebuggerServiceWorkaround.getServiceVersion()()
{
  OUTLINED_FUNCTION_148();
  v1[7] = v0;
  v2 = sub_1D8581018();
  v1[8] = v2;
  OUTLINED_FUNCTION_39(v2);
  v1[9] = v3;
  v5 = *(v4 + 64);
  v1[10] = OUTLINED_FUNCTION_332();
  v6 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D85238FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_177();
  v13 = v12[7];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_169_2(v12[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_76_1();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v14);
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v15)
    {
      OUTLINED_FUNCTION_331();

      v16 = v12[10];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170_1();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
    }

    else
    {
      v29 = v12[10];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v30 = swift_task_alloc();
      v12[11] = v30;
      type metadata accessor for GameDebuggerServiceWorkaround();
      OUTLINED_FUNCTION_1_3();
      sub_1D8526788(v31);
      OUTLINED_FUNCTION_98();
      *v30 = v32;
      v30[1] = sub_1D8523B20;
      v33 = v12[10];
      v34 = v12[7];
      OUTLINED_FUNCTION_2_4(v35);
      OUTLINED_FUNCTION_143_0();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v26 = swift_task_alloc();
    v12[13] = v26;
    *v26 = v12;
    v26[1] = sub_1D8523CA8;
    v27 = v12[7];
    OUTLINED_FUNCTION_170_1();

    return sub_1D8523EE0(v28);
  }
}

uint64_t sub_1D8523B20()
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

uint64_t sub_1D8523C18()
{
  OUTLINED_FUNCTION_148();
  (*(v0[9] + 8))(v0[10], v0[8]);
  OUTLINED_FUNCTION_331();

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[10];

  OUTLINED_FUNCTION_298_1();
  v4 = OUTLINED_FUNCTION_151();

  return v5(v4);
}

uint64_t sub_1D8523CA8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_95_2();
  v3 = *(v2 + 104);
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

uint64_t sub_1D8523DC0()
{
  OUTLINED_FUNCTION_148();
  (*(v0[9] + 8))(v0[10], v0[8]);
  OUTLINED_FUNCTION_331();

  v1 = v0[12];
  v2 = v0[10];

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D8523E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1D852A300;

  return GameDebuggerServiceWorkaround.getServiceVersion()();
}

uint64_t sub_1D8523EF8()
{
  OUTLINED_FUNCTION_204();
  v2 = v1[12];
  OUTLINED_FUNCTION_163_1();
  (*(v3 + 112))();
  if (v1[5])
  {
    OUTLINED_FUNCTION_281_1();
    sub_1D84F589C((v1 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    v4 = *(OUTLINED_FUNCTION_14_3() + 216);
    OUTLINED_FUNCTION_131();
    v14 = (v5 + *v5);
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    v1[13] = v8;
    *v8 = v1;
    v9 = OUTLINED_FUNCTION_64(v8);

    return v14(v9, v0);
  }

  else
  {
    sub_1D84F589C((v1 + 2), &qword_1ECA3A2D0, &qword_1D859F400);
    sub_1D8448448();
    swift_allocError();
    OUTLINED_FUNCTION_315_1();
    static GameServicesError.illegalState(message:)(0xD00000000000001FLL, v11, v12);
    swift_willThrow();
    OUTLINED_FUNCTION_146();

    return v13();
  }
}

uint64_t sub_1D85240C8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v9 = v6[13];
  *v8 = *v1;
  v7[14] = v0;

  v10 = v6[12];
  if (!v0)
  {
    v7[15] = v3;
    v7[16] = v5;
  }

  OUTLINED_FUNCTION_511();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D85241F4()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_298_1();
  v3 = v0[15];
  v2 = v0[16];

  return v1(v2, v3);
}

uint64_t sub_1D8524254()
{
  OUTLINED_FUNCTION_148();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_146();

  return v2();
}

void *sub_1D852430C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  a3();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_21_3();
  sub_1D8526788(v8);
  sub_1D8526788(a4);
  v9 = sub_1D8580F48();
  v10 = v9;
  if (!v4 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = a1[1];
    v10[14] = *a1;
    v10[15] = v11;
    v10[16] = a2;
  }

  return v10;
}

uint64_t GameDebuggerServiceWorkaround.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_21_3();
  sub_1D8526788(v1);
  OUTLINED_FUNCTION_406_1();
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  sub_1D84F589C(v0 + 136, &qword_1ECA3A2D0, &qword_1D859F400);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D85244C4(void (*a1)(void))
{
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1 + 120);

    v4 = *(v1 + 128);

    swift_defaultActor_destroy();
  }

  else
  {
    a1();
  }

  return MEMORY[0x1EEE6DEF0](v1);
}

uint64_t sub_1D8524570()
{
  OUTLINED_FUNCTION_365_1();
  v1 = sub_1D8581B58();
  v0(v1);
  OUTLINED_FUNCTION_200_1();
  sub_1D8526788(v2);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D8524634()
{
  OUTLINED_FUNCTION_365_1();
  if ((sub_1D8580FF8() & 1) == 0)
  {
    v1();
    OUTLINED_FUNCTION_200_1();
    sub_1D8526788(v2);
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D85246C8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.describeAchievements(_:)();
}

uint64_t sub_1D852474C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_3(v1);

  return GameDebuggerServiceWorkaround.listAchievements(games:after:)();
}

uint64_t sub_1D85247D8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_3(v1);

  return GameDebuggerServiceWorkaround.getAchievementsProgresses(_:player:)();
}

uint64_t sub_1D8524864()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_3(v1);

  return GameDebuggerServiceWorkaround.resetAchievementsProgress(_:players:)();
}

uint64_t sub_1D85248F0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_3(v1);

  return GameDebuggerServiceWorkaround.revealAchievements(_:players:)();
}

uint64_t sub_1D852497C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.submitAchievementsProgress(_:)();
}

uint64_t sub_1D8524A00()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.getImageData(_:)();
}

uint64_t sub_1D8524A84()
{
  OUTLINED_FUNCTION_148();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return GameDebuggerServiceWorkaround.listLocalPlayers()();
}

uint64_t sub_1D8524B08()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.describeLeaderboards(_:)();
}

uint64_t sub_1D8524B8C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_326_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);
  OUTLINED_FUNCTION_327_1();
  OUTLINED_FUNCTION_511();

  return GameDebuggerServiceWorkaround.listLeaderboardEntries(_:range:locale:timeScope:)();
}

uint64_t sub_1D8524C20()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_141_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_82_0(v3);
  OUTLINED_FUNCTION_535();

  return GameDebuggerServiceWorkaround.listLeaderboardEntries(_:players:locale:timeScope:)();
}

uint64_t sub_1D8524CB0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_3(v1);

  return GameDebuggerServiceWorkaround.listLeaderboards(games:players:)();
}

uint64_t sub_1D8524D3C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.submitLeaderboardEntries(_:)();
}

uint64_t sub_1D8524DC0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.resetLeaderboards(_:)();
}

uint64_t sub_1D8524E44()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.describeLeaderboardSets(_:)();
}

uint64_t sub_1D8524EC8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.listLeaderboardSets(games:)();
}

uint64_t sub_1D8524F4C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_1D8524FD0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.describePlayerProfiles(_:)();
}

uint64_t sub_1D8525054()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.describeGameLockups(_:)();
}

uint64_t sub_1D85250D8()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_381_0();
  OUTLINED_FUNCTION_259_2();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_97(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_263_2(v3);

  return GameDebuggerServiceWorkaround.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_1D8525184()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_3(v1);

  return GameDebuggerServiceWorkaround.enableGameDebugging(bundleID:)();
}

uint64_t sub_1D8525210()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_3(v1);

  return GameDebuggerServiceWorkaround.disableGameDebugging(bundleID:)();
}

uint64_t sub_1D852529C()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_141_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_97(v2);
  *v3 = v4;
  v3[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_377_1();
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_535();

  return GameDebuggerServiceWorkaround.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_1D8525338()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.describeGameActivityDefinitions(_:)();
}

uint64_t sub_1D85253BC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64(v1);

  return GameDebuggerServiceWorkaround.invokeActivity(_:)();
}

uint64_t sub_1D8525440()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_366();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_97(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_314_2(v1);

  return GameDebuggerServiceWorkaround.getDefaultGameActivityEnvironment()();
}

uint64_t sub_1D85254C4()
{
  OUTLINED_FUNCTION_148();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return GameDebuggerServiceWorkaround.getServiceVersion()();
}

uint64_t sub_1D8525560()
{
  v1 = *v0;
  OUTLINED_FUNCTION_163_1();
  return (*(v2 + 360))();
}

uint64_t sub_1D85255F0()
{
  OUTLINED_FUNCTION_381_0();
  v1 = *v0;
  v2();
  OUTLINED_FUNCTION_200_1();
  sub_1D8526788(v3);
  OUTLINED_FUNCTION_221();
  return sub_1D8580FC8();
}

uint64_t sub_1D8525668(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = *v4;
  v6 = sub_1D8581B58();
  a4(v6);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D8525718(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v5 = *a1;
  v6 = *a2;
  a5();
  OUTLINED_FUNCTION_200_1();
  sub_1D8526788(v7);
  v8 = OUTLINED_FUNCTION_221();

  return MEMORY[0x1EEE6CC98](v8);
}

uint64_t sub_1D85257E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v7 = *v5;
  a4();
  sub_1D8526788(a5);
  sub_1D843D180();
  OUTLINED_FUNCTION_258();
  return sub_1D8580FD8();
}

uint64_t sub_1D85258B0@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  a1();
  sub_1D8526788(a2);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listGames(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_148();
  v9 = *(a9 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v10 = OUTLINED_FUNCTION_63();
  return OUTLINED_FUNCTION_523(v10, v11, v12);
}

unint64_t sub_1D85265D0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6();
  result = sub_1D8526788(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D852668C()
{
  result = qword_1ECA3A300;
  if (!qword_1ECA3A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A300);
  }

  return result;
}

unint64_t sub_1D8526788(uint64_t a1)
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.describeAchievements(_:)()
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listAchievements(games:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v11 = *(v10 + 16);
  OUTLINED_FUNCTION_54();
  v27 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_176(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_82_0(v16);
  OUTLINED_FUNCTION_471();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.getAchievementsProgresses(_:player:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v11 = *(v10 + 24);
  OUTLINED_FUNCTION_54();
  v27 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_176(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_82_0(v16);
  OUTLINED_FUNCTION_471();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.resetAchievementsProgress(_:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v11 = *(v10 + 32);
  OUTLINED_FUNCTION_54();
  v27 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_176(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_82_0(v16);
  OUTLINED_FUNCTION_471();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.revealAchievements(_:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v11 = *(v10 + 40);
  OUTLINED_FUNCTION_54();
  v27 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_176(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_82_0(v16);
  OUTLINED_FUNCTION_471();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.submitAchievementsProgress(_:)()
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.getImageData(_:)()
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listLocalPlayers()()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_54();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_28_3(v6);

  return v10(v8);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.describeLeaderboards(_:)()
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listLeaderboardEntries(_:range:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_381_0();
  OUTLINED_FUNCTION_259_2();
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_131();
  v30 = v14 + *v14;
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_176(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_191(v18);
  OUTLINED_FUNCTION_240();

  return v27(v20, v21, v22, v23, v24, v25, v26, v27, a9, v30, a11, a12);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listLeaderboardEntries(_:players:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v18 = *(OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17) + 88);
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listLeaderboards(games:players:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v11 = *(v10 + 96);
  OUTLINED_FUNCTION_54();
  v27 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_176(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_82_0(v16);
  OUTLINED_FUNCTION_471();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.submitLeaderboardEntries(_:)()
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.resetLeaderboards(_:)()
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.describeLeaderboardSets(_:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 120);
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 128);
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 136);
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.describePlayerProfiles(_:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 144);
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.describeGameLockups(_:)()
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listGames(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  v43 = v23;
  v24 = *(a23 + 160);
  OUTLINED_FUNCTION_131();
  v42 = v25 + *v25;
  v27 = *(v26 + 4);
  v28 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_97(v28);
  *v29 = v30;
  v29[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_170();

  return v39(v31, v32, v33, v34, v35, v36, v37, v38, a9, v42, v43, a12, a13, a14, a15);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.enableGameDebugging(bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v11 = *(v10 + 168);
  OUTLINED_FUNCTION_54();
  v27 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_176(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_82_0(v16);
  OUTLINED_FUNCTION_471();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.disableGameDebugging(bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  v11 = *(v10 + 176);
  OUTLINED_FUNCTION_54();
  v27 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_176(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_82_0(v16);
  OUTLINED_FUNCTION_471();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.listGameActivityDefinitions(game:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  v18 = *(OUTLINED_FUNCTION_163(v12, v13, v14, v15, v16, v17) + 184);
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.describeGameActivityDefinitions(_:)()
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.invokeActivity(_:)()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 200);
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

uint64_t dispatch thunk of GameServicesDebuggerProtocol.getDefaultGameActivityEnvironment()()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_204();
  v3 = *(OUTLINED_FUNCTION_296(v0, v1, v2) + 208);
  OUTLINED_FUNCTION_131();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_97(v7);
  *v8 = v9;
  v8[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_309_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of GameServicesDebuggerProtocol.getServiceVersion()()
{
  OUTLINED_FUNCTION_204();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_54();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_28_3(v6);

  return v10(v8);
}

uint64_t sub_1D8528268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1D85282A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.describeAchievements(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v1 = *(v0 + 144);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_1(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_86_2();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_3(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.getAchievementsProgresses(_:player:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_86_2();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_3(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.resetAchievementsProgress(_:players:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_86_2();
  v1 = *(v0 + 168);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_3(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.revealAchievements(_:players:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_86_2();
  v1 = *(v0 + 176);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_3(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.submitAchievementsProgress(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v1 = *(v0 + 184);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_1(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.getImageData(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v1 = *(v0 + 192);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_1(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listLocalPlayers()()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_163_1();
  v1 = *(v0 + 200);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);

  return v7();
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.describeLeaderboards(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v1 = *(v0 + 208);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_1(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listLeaderboardEntries(_:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_163_1();
  v1 = *(v0 + 216);
  v15 = v0 + 216;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);
  OUTLINED_FUNCTION_327_1();
  OUTLINED_FUNCTION_239_1();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listLeaderboardEntries(_:players:locale:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_163_1();
  v10 = *(v9 + 224);
  v24 = v9 + 224;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_176(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_82_0(v13);
  OUTLINED_FUNCTION_471();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_86_2();
  v1 = *(v0 + 232);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_3(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.submitLeaderboardEntries(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v1 = *(v0 + 240);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_1(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.resetLeaderboards(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v1 = *(v0 + 248);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_46_1(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.describeLeaderboardSets(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v8 = *(v0 + 256) + **(v0 + 256);
  v1 = *(*(v0 + 256) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_46_1(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v8 = *(v0 + 264) + **(v0 + 264);
  v1 = *(*(v0 + 264) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_46_1(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v8 = *(v0 + 272) + **(v0 + 272);
  v1 = *(*(v0 + 272) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_46_1(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.describePlayerProfiles(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v8 = *(v0 + 280) + **(v0 + 280);
  v1 = *(*(v0 + 280) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_46_1(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.describeGameLockups(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v8 = *(v0 + 288) + **(v0 + 288);
  v1 = *(*(v0 + 288) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_46_1(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listGames(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_381_0();
  OUTLINED_FUNCTION_259_2();
  OUTLINED_FUNCTION_163_1();
  v27 = (v12 + 296);
  v28 = *v27 + **v27;
  v13 = *(*(v12 + 296) + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_97(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_263_2(v15);
  OUTLINED_FUNCTION_240();

  return v24(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, a11, a12);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.enableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_86_2();
  v7 = (*(v0 + 304) + **(v0 + 304));
  v1 = *(*(v0 + 304) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_28_3(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.disableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_86_2();
  v7 = (*(v0 + 312) + **(v0 + 312));
  v1 = *(*(v0 + 312) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_28_3(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.listGameActivityDefinitions(game:filters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_163_1();
  v23 = (v9 + 320);
  v24 = *v23 + **v23;
  v10 = *(*(v9 + 320) + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_97(v11);
  *v12 = v13;
  v12[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_377_1();
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_471();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.describeGameActivityDefinitions(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v8 = *(v0 + 328) + **(v0 + 328);
  v1 = *(*(v0 + 328) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_46_1(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.invokeActivity(_:)()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v8 = *(v0 + 336) + **(v0 + 336);
  v1 = *(*(v0 + 336) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_46_1(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.getDefaultGameActivityEnvironment()()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_92_1();
  v7 = (*(v0 + 344) + **(v0 + 344));
  v1 = *(*(v0 + 344) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_97(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_314_2(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameDebuggerServiceWorkaround.getServiceVersion()()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_163_1();
  v6 = (*(v0 + 352) + **(v0 + 352));
  v1 = *(*(v0 + 352) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6();
}

uint64_t sub_1D8529F74()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_298_1();
  v5 = OUTLINED_FUNCTION_506();

  return v6(v5);
}

uint64_t getEnumTagSinglePayload for GameLockup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameLockup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D852A1F8()
{
  result = qword_1ECA4E850[0];
  if (!qword_1ECA4E850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4E850);
  }

  return result;
}

unint64_t sub_1D852A250()
{
  result = qword_1ECA4E960;
  if (!qword_1ECA4E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4E960);
  }

  return result;
}

unint64_t sub_1D852A2A8()
{
  result = qword_1ECA4E968[0];
  if (!qword_1ECA4E968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4E968);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{
  *(v1 + 96) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[8];
  v4 = v2[9];
  return v2[7];
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  return *(v2 + 96);
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_91_1()
{
  v1 = v0[8];
  v0[15] = $DistributedGameServicesDebuggerProtocol.actorSystem.getter();

  return GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_98_1()
{
  v2 = v0[14];
  v3 = v0[7];
  v4 = *(v0[8] + 128);

  return GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_113_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 56);
  return *(v2 + 48);
}

unint64_t OUTLINED_FUNCTION_120_0(uint64_t a1)
{

  return sub_1D8526788(a1);
}

unint64_t OUTLINED_FUNCTION_137_0(uint64_t a1)
{

  return sub_1D8508ED4(a1);
}

uint64_t OUTLINED_FUNCTION_177_1()
{
  result = v0[9];
  v2 = v0[7];
  v3 = *(v0[8] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_185_2()
{
  *(v0 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_191_2()
{
  result = *(v0 + 112);
  v2 = *(v0 + 88);
  return result;
}

void OUTLINED_FUNCTION_203_2()
{
  v1 = v0[43];
  v2 = v0[42];
  v4 = v0[44];
  v3 = v0[39];
}

uint64_t OUTLINED_FUNCTION_204_0()
{
  result = v0[13];
  v2 = v0[11];
  v3 = *(v0[12] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_210_1()
{
  v1 = v0[38];
  v2 = v0[37];
  v16 = v0[39];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[30];
  v14 = v0[31];
  v15 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v9 = v0[27];
  result = v0[24];
  v11 = v0[25];
  v12 = v0[22];
  v13 = *(v0[23] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_218_1()
{
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_225_0()
{
  v1 = v0[30];
  v2 = v0[29];
  v14 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[18];
  v9 = v0[19];
  result = v0[16];
  v11 = v0[17];
  v12 = v0[14];
  v13 = *(v0[15] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_228_2()
{
  v1 = v0[28];
  v2 = v0[27];
  v14 = v0[29];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  v8 = v0[16];
  v9 = v0[17];
  result = v0[14];
  v11 = v0[15];
  v12 = v0[12];
  v13 = *(v0[13] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_236_2()
{
  result = *(v0 + 152);
  v2 = *(v0 + 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_246_2()
{
  result = v0[15];
  v2 = v0[13];
  v3 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_251_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_258_2()
{
  *(v1 + 8) = v0;
  v3 = *(v2 + 120);
  v4 = *(v2 + 96);
}

uint64_t OUTLINED_FUNCTION_277_1()
{
  v2 = v0[37];
  v3 = v0[36];
  v12 = v0[38];
  v4 = v0[34];
  v5 = v0[31];
  v11 = v0[32];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[28];
}

unint64_t OUTLINED_FUNCTION_283_1(uint64_t a1)
{

  return sub_1D8526788(a1);
}

uint64_t OUTLINED_FUNCTION_285_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_286_1()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  result = v0[19];
  v10 = v0[20];
  v11 = v0[17];
  v12 = *(v0[18] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_300_2(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;

  return sub_1D8581018();
}

unint64_t OUTLINED_FUNCTION_302_1(uint64_t a1)
{

  return sub_1D848211C(a1);
}

uint64_t OUTLINED_FUNCTION_304_0()
{
  result = *(v0 + 112);
  v2 = *(v0 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_309_2(uint64_t a1)
{
  *(v1 + 120) = a1;

  return type metadata accessor for GameDebuggerServiceWorkaround();
}

uint64_t OUTLINED_FUNCTION_311_1(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_317_1()
{
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[16];
}

uint64_t OUTLINED_FUNCTION_318_1()
{
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[29];
}

uint64_t OUTLINED_FUNCTION_319_1()
{
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_320_1()
{
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];
}

uint64_t OUTLINED_FUNCTION_338_1()
{
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
}

uint64_t OUTLINED_FUNCTION_339_1()
{
  v2 = v0[13];
  v0[5] = v0[6];
}

uint64_t OUTLINED_FUNCTION_342_2()
{
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
}

uint64_t OUTLINED_FUNCTION_351_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  return sub_1D8511308(a1, &a32, v32, v33);
}

uint64_t OUTLINED_FUNCTION_352_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{

  return sub_1D8511308(a1, &a32, v32, v33);
}

unint64_t OUTLINED_FUNCTION_358_1(uint64_t a1)
{

  return sub_1D848211C(a1);
}

uint64_t OUTLINED_FUNCTION_360_0()
{
  v2 = v0[14];
  v1 = v0[15];
  result = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_364_0()
{
  v2 = v0[12];
  v1 = v0[13];
  result = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = *(v0[9] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_366_1()
{
  v2 = v0[14];
  result = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  return result;
}

uint64_t OUTLINED_FUNCTION_368_1()
{
  v2 = v0[17];
  v1 = v0[18];
  result = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  v6 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_369_1()
{
  *(v1 + 96) = v3;
  *(v1 + 104) = v2;
  return v0;
}

uint64_t OUTLINED_FUNCTION_370_0()
{
  result = *(v0 + 144);
  v2 = *(v0 + 120);
  return result;
}

__n128 OUTLINED_FUNCTION_371_0()
{
  result = *v3;
  *(v2 + 150) = *v1;
  v5 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_372_0()
{
  v2 = v0[20];
  v1 = v0[21];
  result = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = *(v0[17] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_385_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[12];
  v4 = v2[13];
  v5 = v2[10];
  v6 = v2[11];
  v7 = v2[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_387_1()
{
  v2 = v0[13];
  v1 = v0[14];
  result = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = *(v0[10] + 8);
  return result;
}

double OUTLINED_FUNCTION_392_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  *&result = Page.init(_:next:)(a1, &a14, v14).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_393_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_395_1()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
}

void *OUTLINED_FUNCTION_405_0()
{

  return memcpy(&STACK[0x218], (v0 + 64), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_406_1()
{

  return sub_1D8580F68();
}

uint64_t OUTLINED_FUNCTION_407_0()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
}

uint64_t OUTLINED_FUNCTION_408_1()
{

  return sub_1D8581028();
}

uint64_t OUTLINED_FUNCTION_409_1()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
}

uint64_t OUTLINED_FUNCTION_411_1()
{
  *(v0 + 48) = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_413_1()
{

  return sub_1D8581028();
}

uint64_t static GameActivityInstanceCoder.encodedData(_:)()
{
  v1 = sub_1D8580B18();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1D8580B08();
  type metadata accessor for GameActivityInstance(0);
  sub_1D852B210(&qword_1ECA39988);
  v4 = sub_1D8580AF8();
  v6 = v5;

  if (!v0)
  {
    v8 = sub_1D8580E28();
    sub_1D843F6E8(v4, v6);
    return v8;
  }

  return result;
}

uint64_t static GameActivityInstanceCoder.decodedInstance(_:)()
{
  v0 = sub_1D8580AE8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1D8580AD8();
  type metadata accessor for GameActivityInstance(0);
  v3 = sub_1D8580E48();
  v5 = v4;
  sub_1D852B210(&qword_1ECA39970);
  sub_1D8580AC8();
  sub_1D843F6E8(v3, v5);
}

uint64_t sub_1D852B210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GameActivityInstance(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameActivityInstanceCoder(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GameActivityInstanceCoder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D852B3A0(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1D8437BA8();
  OUTLINED_FUNCTION_209_2();

  v6 = OUTLINED_FUNCTION_115_1();
  MEMORY[0x1DA718990](v6);
  sub_1D8438004(0, a3, a4);
  sub_1D85817E8();
  return v8;
}

uint64_t sub_1D852B424(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
  v2 = sub_1D8437BA8();
  BYTE8(v4) = 0;
  MEMORY[0x1DA718990](v2);

  MEMORY[0x1DA718990](46, 0xE100000000000000);
  *&v4 = a1 & 1;
  sub_1D8438004(0, &qword_1ECA3A498, type metadata accessor for Ref<A>.ContactRefFields);
  sub_1D85817E8();
  return *(&v4 + 1);
}

uint64_t sub_1D852B4E8()
{
  swift_getAssociatedTypeWitness();
  sub_1D8437BA8();
  OUTLINED_FUNCTION_209_2();

  v0 = OUTLINED_FUNCTION_115_1();
  MEMORY[0x1DA718990](v0);
  sub_1D8581AA8();
  return v2;
}

void Ref<A>.game.getter(uint64_t a1@<X8>)
{
  sub_1D852C230(&qword_1ECA39520, &unk_1D8595FE0, a1);
}

{
  sub_1D852C230(&qword_1ECA39C60, &unk_1D859A7E0, a1);
}

{
  sub_1D852C230(&qword_1ECA38A78, &unk_1D85A22B0, a1);
}

{
  sub_1D852C230(&qword_1ECA39938, &qword_1D8596358, a1);
}

{
  sub_1D852C230(&qword_1ECA39860, &qword_1D85962F0, a1);
}

{
  sub_1D852C230(&qword_1ECA38A90, &qword_1D8590AB0, a1);
}

{
  sub_1D852C230(&qword_1ECA39758, &unk_1D859F290, a1);
}

uint64_t sub_1D852B6F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D8533A40(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D8533A40((v6 > 1), v7 + 1, 1);
        v2 = v13;
      }

      sub_1D8438004(0, &qword_1ECA3A498, type metadata accessor for Ref<A>.ContactRefFields);
      v11 = v8;
      v12 = sub_1D8440D9C(&qword_1ECA3A5E8, &qword_1ECA3A498, type metadata accessor for Ref<A>.ContactRefFields);
      LOBYTE(v10) = v5;
      *(v2 + 16) = v7 + 1;
      sub_1D84F2D50(&v10, v2 + 40 * v7 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D852B838(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_199_1();
    v5 = v4;
    OUTLINED_FUNCTION_163_2();
    v3 = v22;
    v6 = (v5 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      OUTLINED_FUNCTION_186_3();
      if (v10)
      {
        sub_1D8533A40((v9 > 1), v5, 1);
        v3 = v22;
      }

      OUTLINED_FUNCTION_123_2();
      sub_1D8438004(v11, v12, v13);
      v20 = v14;
      OUTLINED_FUNCTION_123_2();
      v21 = sub_1D8440D9C(v15, v16, v17);
      LOBYTE(v19) = v7;
      *(v3 + 16) = v5;
      sub_1D84F2D50(&v19, v3 + 40 * v1 + 32);
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1D852B91C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_163_2();
    v4 = v18;
    do
    {
      OUTLINED_FUNCTION_186_3();
      if (v6)
      {
        sub_1D8533A40((v5 > 1), v1, 1);
        v4 = v18;
      }

      OUTLINED_FUNCTION_123_2();
      sub_1D8438004(v7, v8, v9);
      v16 = v10;
      OUTLINED_FUNCTION_123_2();
      v17 = sub_1D8440D9C(v11, v12, v13);
      *(v4 + 16) = v1;
      sub_1D84F2D50(&v15, v4 + 40 * v2 + 32);
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1D852B9F0(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D8441004();
  if (!v4)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v49 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    v15 = sub_1D8437BA8();
    v17 = v16;
    v18 = v12 == v15 && v13 == v16;
    if (v18 || (OUTLINED_FUNCTION_94_2(), v20 = v19, (sub_1D8581AB8() & 1) != 0))
    {

      sub_1D8533950(v21, v14);
      v22 = *(a1 + 16);
      if (v22)
      {
        v47 = MEMORY[0x1E69E7CC0];
        sub_1D84E8374(0, v22, 0);
        v23 = v47;
        v24 = a1 + 32;
        do
        {
          sub_1D84EB9C4(v24, v44);
          v25 = v45;
          v26 = v46;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          OUTLINED_FUNCTION_45_1(v26);
          v28 = v27(v25, v26);
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_1(v44);
          v47 = v23;
          v32 = *(v23 + 16);
          v31 = *(v23 + 24);
          if (v32 >= v31 >> 1)
          {
            v34 = OUTLINED_FUNCTION_337_0(v31);
            sub_1D84E8374(v34, v32 + 1, 1);
            v23 = v47;
          }

          *(v23 + 16) = v32 + 1;
          v33 = v23 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v30;
          v24 += 40;
          --v22;
        }

        while (v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
      sub_1D8437BA8();

      v37 = OUTLINED_FUNCTION_221();
      sub_1D8533E98(v37, v38);

      sub_1D843808C();
      v40 = v39;
      v42 = v41;

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39470, &unk_1D8592720);
      Ref.init(rawValue:)(v40, v42, v43);
    }

    else
    {

      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      sub_1D8581768();
      v47 = a2;
      v48 = a3;
      sub_1D85817E8();
      OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_129_1();
      MEMORY[0x1DA718990](v20, v17);

      OUTLINED_FUNCTION_48_0();
      sub_1D8448448();
      v35 = OUTLINED_FUNCTION_446();
      *v36 = 0;
      v36[1] = 0xE000000000000000;
      OUTLINED_FUNCTION_120_1(v35, v36);
    }
  }

  OUTLINED_FUNCTION_203_3();
}

void sub_1D852C230(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v9 = *v3;
  v8 = v3[1];
  OUTLINED_FUNCTION_0_7();
  v11 = sub_1D852B838(v10);
  sub_1D85811B8();
  OUTLINED_FUNCTION_101_1();
  sub_1D8441004();
  if (!v4)
  {
    v14 = v12;
    v33 = v13;
    v39 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    sub_1D8437BA8();
    OUTLINED_FUNCTION_93_1();
    v16 = v16 && v14 == v15;
    if (v16 || (OUTLINED_FUNCTION_16_5() & 1) != 0)
    {

      v18 = sub_1D8533950(v17, v33);
      v19 = v18;
      if (*(v11 + 16))
      {
        v34 = v18;
        v37 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_61_2();
        v20 = v37;
        do
        {
          sub_1D84EB9C4(v11 + 32, v35);
          v14 = v36;
          __swift_project_boxed_opaque_existential_1(v35, v36);
          v21 = OUTLINED_FUNCTION_6_3();
          v22(v21);
          OUTLINED_FUNCTION_58_2();
          __swift_destroy_boxed_opaque_existential_1(v35);
          v37 = v20;
          OUTLINED_FUNCTION_28_4();
          if (v23)
          {
            OUTLINED_FUNCTION_87_1();
            sub_1D84E8374(v24, v25, v26);
            v20 = v37;
          }

          OUTLINED_FUNCTION_14_4();
        }

        while (!v16);
        v19 = v34;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
      sub_1D8437BA8();
      OUTLINED_FUNCTION_38_1();

      OUTLINED_FUNCTION_62_1();
      sub_1D8533E98(v30, v31);
      OUTLINED_FUNCTION_67_2();

      OUTLINED_FUNCTION_194();
      sub_1D843808C();
      OUTLINED_FUNCTION_58_2();

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39470, &unk_1D8592720);
      Ref.init(rawValue:)(v14, v19, v32);
    }

    else
    {

      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_1D8581768();
      v37 = v9;
      v38 = v8;
      sub_1D85817E8();
      OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_129_1();
      v27 = OUTLINED_FUNCTION_174_1();
      MEMORY[0x1DA718990](v27);

      OUTLINED_FUNCTION_48_0();
      sub_1D8448448();
      v28 = OUTLINED_FUNCTION_446();
      OUTLINED_FUNCTION_34_1(v28, v29);
    }
  }

  OUTLINED_FUNCTION_102_2();
}

void Ref<A>.init(id:)()
{
  OUTLINED_FUNCTION_96_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  *(swift_initStackObject() + 16) = xmmword_1D8590A70;
  OUTLINED_FUNCTION_13_2();
  v0 = OUTLINED_FUNCTION_221();
  v4 = sub_1D852B3A0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_200_2(v4, v5);
  OUTLINED_FUNCTION_160_1();
  sub_1D85811B8();
  v6 = OUTLINED_FUNCTION_221();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  sub_1D8437BA8();
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_68_0();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39440, &unk_1D85A22A0);
  v9 = OUTLINED_FUNCTION_35_4(v8);
  OUTLINED_FUNCTION_63_1(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t Ref<A>.invite(code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = 0;
  v7[3] = 0;
  v8 = 0;

  return Ref<A>.init(challenge:inviteDetails:)(v9, v7, a3);
}

uint64_t Ref<A>.init(challenge:inviteDetails:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v32[0] = *a2;
  LOBYTE(v33) = v9;
  v10 = sub_1D852D688();
  v11 = OUTLINED_FUNCTION_258();
  sub_1D8534BE8(v11, v12, v7, v8, v9);
  v13 = OUTLINED_FUNCTION_221();
  sub_1D8440EEC(v13, v14, v15, v16, v17, v18, v19, v20, v31, v32[0], v6, v7, v8, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v22 = v21;

  if (v3)
  {
  }

  swift_isUniquelyReferenced_nonNull_native();
  v32[0] = v10;
  OUTLINED_FUNCTION_2_5();
  sub_1D853450C(v22, v24, 0, v25, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39038, &qword_1D8590E88);
  sub_1D8437BA8();
  sub_1D843808C();
  OUTLINED_FUNCTION_151_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39480, &qword_1D85927C0);
  v26 = OUTLINED_FUNCTION_221();
  result = Ref.init(rawValue:)(v26, v27, v28);
  v29 = v32[1];
  v30 = v35;
  *v35 = v32[0];
  v30[1] = v29;
  return result;
}

uint64_t Ref<A>.invite(from:to:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = v3[1];
  v23[0] = *v3;
  v23[1] = v10;
  *&v18[0] = v6;
  *(&v18[0] + 1) = v7;
  v20[0] = v8;
  v20[1] = v9;

  sub_1D852CC94(v18, v20, v11, v12, v13, v14, v15, v16, v21);
  if (v4)
  {
  }

  v18[0] = v21[0];
  v18[1] = v21[1];
  v19 = v22;
  return Ref<A>.init(challenge:inviteDetails:)(v23, v18, a3);
}

void sub_1D852CC94(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  v38 = *a1;
  v39 = v12;
  Ref<A>.playerID.getter(a1, a2, a3, a4, a5, a6, a7, a8, &v33);
  if (!v9)
  {
    v21 = v33;
    v20 = v34;
    if (v37 == 1)
    {
      v22 = v36;
      v38 = v13;
      v39 = v14;
      Ref<A>.playerID.getter(v15, v16, v35, v36, v37, v17, v18, v19, &v33);
      v28 = v33;
      v29 = v34;
      if (v37 == 1)
      {
        *a9 = v21;
        *(a9 + 8) = v20;
        *(a9 + 16) = v28;
        *(a9 + 24) = v29;
        *(a9 + 32) = 1;
        goto LABEL_6;
      }

      sub_1D8534C38(v33, v34, v35, v36, v37);
      v30 = OUTLINED_FUNCTION_18_2();
      sub_1D8534C38(v30, v31, v32, v22, 1);
      v33 = v13;
      v34 = v14;
    }

    else
    {
      v23 = OUTLINED_FUNCTION_236_1();
      sub_1D8534C38(v23, v24, v25, v26, v27);
      v33 = v11;
      v34 = v12;
    }

    sub_1D8448448();
    OUTLINED_FUNCTION_446();
    OUTLINED_FUNCTION_38_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A18, &qword_1D8590940);
    static GameServicesError.invalidReference<A>(ref:)(&v33, &v38);
    swift_willThrow();
  }

LABEL_6:
  OUTLINED_FUNCTION_203_3();
}

void Ref<A>.init(gameBundleID:vendorID:)()
{
  OUTLINED_FUNCTION_31_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  *(swift_initStackObject() + 16) = xmmword_1D85A2260;
  OUTLINED_FUNCTION_1_4();
  v4 = sub_1D84379E4(1, v0, v1, v2, v3);
  OUTLINED_FUNCTION_202_3(v4, v5);
  OUTLINED_FUNCTION_75_1();
  v6 = OUTLINED_FUNCTION_368();
  v10 = sub_1D852B3A0(v6, v7, v8, v9);
  OUTLINED_FUNCTION_201_1(v10, v11);
  OUTLINED_FUNCTION_152_2();
  sub_1D85811B8();
  v12 = OUTLINED_FUNCTION_368();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  sub_1D8437BA8();
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_68_0();

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39450, &qword_1D8592708);
  v15 = OUTLINED_FUNCTION_35_4(v14);
  OUTLINED_FUNCTION_63_1(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
}

void Ref<A>.challenge.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_118_2();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_27_4();
  v34 = sub_1D852B91C(v33);
  v35 = sub_1D85811B8();
  OUTLINED_FUNCTION_258();
  sub_1D8441004();
  if (!v30)
  {
    OUTLINED_FUNCTION_32_2();
    a20 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39038, &qword_1D8590E88);
    sub_1D8437BA8();
    OUTLINED_FUNCTION_93_1();
    v37 = v37 && v36 == 0;
    if (v37 || (OUTLINED_FUNCTION_16_5() & 1) != 0)
    {

      OUTLINED_FUNCTION_101_1();
      v40 = sub_1D8533950(v38, v39);
      v41 = v40;
      if (*(v34 + 16))
      {
        v57 = v40;
        a17 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_61_2();
        v42 = a17;
        do
        {
          sub_1D84EB9C4(v34 + 32, &a12);
          __swift_project_boxed_opaque_existential_1(&a12, a15);
          v43 = OUTLINED_FUNCTION_6_3();
          v44(v43);
          OUTLINED_FUNCTION_58_2();
          __swift_destroy_boxed_opaque_existential_1(&a12);
          a17 = v42;
          OUTLINED_FUNCTION_28_4();
          if (v46)
          {
            OUTLINED_FUNCTION_337_0(v45);
            OUTLINED_FUNCTION_87_1();
            sub_1D84E8374(v47, v48, v49);
            v42 = a17;
          }

          OUTLINED_FUNCTION_14_4();
        }

        while (!v37);
        v41 = v57;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B48, &qword_1D8590B40);
      sub_1D8437BA8();
      OUTLINED_FUNCTION_38_1();

      OUTLINED_FUNCTION_62_1();
      sub_1D8533E98(v53, v54);
      OUTLINED_FUNCTION_67_2();

      OUTLINED_FUNCTION_194();
      sub_1D843808C();
      OUTLINED_FUNCTION_58_2();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39440, &unk_1D85A22A0);
      v55 = OUTLINED_FUNCTION_139_1();
      Ref.init(rawValue:)(v55, v41, v56);
    }

    else
    {

      OUTLINED_FUNCTION_119_2();
      OUTLINED_FUNCTION_134_1();
      sub_1D85817E8();
      OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_129_1();
      v50 = OUTLINED_FUNCTION_174_1();
      MEMORY[0x1DA718990](v50);

      OUTLINED_FUNCTION_48_0();
      sub_1D8448448();
      v51 = OUTLINED_FUNCTION_446();
      OUTLINED_FUNCTION_34_1(v51, v52);
    }
  }

  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_117_2();
}

void Ref<A>.init(challengeID:inviteCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_105_2();
  a37 = v39;
  a38 = v40;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8590A70;
  OUTLINED_FUNCTION_13_2();
  v52 = OUTLINED_FUNCTION_94_2();
  *(inited + 32) = sub_1D852B3A0(v52, v53, v54, v55);
  *(inited + 40) = v56;
  *(inited + 48) = v48;
  *(inited + 56) = v46;
  OUTLINED_FUNCTION_161_0();
  v57 = OUTLINED_FUNCTION_94_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
  sub_1D8437BA8();
  sub_1D843808C();
  v60 = v59;
  v62 = v61;

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39440, &unk_1D85A22A0);
  Ref.init(rawValue:)(v60, v62, v63);
  a15 = a10;
  a16 = a11;
  a10 = v44;
  a11 = v42;
  a12 = 0;
  a13 = 0;
  a14 = 0;
  Ref<A>.init(challenge:inviteDetails:)(&a15, &a10, &a25);
  if (!v38)
  {
    v64 = a26;
    *v50 = a25;
    v50[1] = v64;
  }

  OUTLINED_FUNCTION_104_3();
}

uint64_t Ref<A>.init(challengeID:from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  v10 = *a4;
  v9 = a4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8590A70;
  OUTLINED_FUNCTION_13_2();
  v12 = OUTLINED_FUNCTION_94_2();
  *(inited + 32) = sub_1D852B3A0(v12, v13, v14, v15);
  *(inited + 40) = v16;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  OUTLINED_FUNCTION_161_0();
  v17 = OUTLINED_FUNCTION_94_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  sub_1D8437BA8();
  sub_1D843808C();
  v20 = v19;
  v22 = v21;

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39440, &unk_1D85A22A0);
  Ref.init(rawValue:)(v20, v22, v23);
  v39 = v37[0];
  *&v34[0] = v7;
  *(&v34[0] + 1) = v8;
  v36[0] = v10;
  v36[1] = v9;
  v24 = v40[4];
  sub_1D852CC94(v34, v36, v25, v26, v27, v28, v29, v30, v37);

  if (v24)
  {
  }

  v34[0] = v37[0];
  v34[1] = v37[1];
  v35 = v38;
  result = Ref<A>.init(challenge:inviteDetails:)(&v39, v34, v40);
  v32 = v40[1];
  *a5 = v40[0];
  a5[1] = v32;
  return result;
}

uint64_t sub_1D852D688()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8590A70;
  OUTLINED_FUNCTION_4_4();
  *(inited + 32) = sub_1D84379E4(0, v7, v8, v9, v10);
  *(inited + 40) = v11;
  v12 = 1701080931;
  if (v5)
  {
    v12 = 0x726579616C70;
  }

  v13 = 0xE400000000000000;
  if (v5)
  {
    v13 = 0xE600000000000000;
  }

  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v14 = sub_1D85811B8();

  if (v5)
  {

    v15 = sub_1D84379E4(1, &qword_1ECA39038, &qword_1D8590E88, &qword_1ECA3A470, type metadata accessor for Ref<A>.ChallengeInviteRefFields);
    v17 = v16;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = OUTLINED_FUNCTION_298();
    sub_1D84E81D4(v18, v2, v15, v17);

    v19 = sub_1D84379E4(2, &qword_1ECA39038, &qword_1D8590E88, &qword_1ECA3A470, type metadata accessor for Ref<A>.ChallengeInviteRefFields);
    v21 = v20;
    swift_isUniquelyReferenced_nonNull_native();
    v33 = v14;
    v22 = OUTLINED_FUNCTION_233();
    sub_1D84E81D4(v22, v23, v19, v21);
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
    v28 = sub_1D84379E4(3, v24, v25, v26, v27);
    v30 = v29;
    swift_isUniquelyReferenced_nonNull_native();
    v33 = v14;
    v31 = OUTLINED_FUNCTION_298();
    sub_1D84E81D4(v31, v2, v28, v30);
  }

  return v33;
}

void Ref<A>.playerID.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *v9;
  v13 = v9[1];
  v14 = Ref<A>.playerIDs.getter(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = v14[2];
  if (!v16)
  {

    sub_1D8448448();
    OUTLINED_FUNCTION_446();
    OUTLINED_FUNCTION_38_1();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A18, &qword_1D8590940);
    OUTLINED_FUNCTION_65_3(v36, v37, v38, v39, v40, v41);
    swift_willThrow();
LABEL_11:
    OUTLINED_FUNCTION_203_3();
    return;
  }

  v17 = v14[4];
  v18 = v14[5];
  v19 = v14[6];
  v20 = *(v14 + 64);
  v48 = v14[7];
  sub_1D8534CB8(v17, v18, v19, v48, v20);
  v21 = v20;
  v22 = 1;
LABEL_4:
  v23 = &v15[5 * v22];
  while (1)
  {
    if (v16 == v22)
    {
      v35 = v21;

      *a9 = v17;
      *(a9 + 8) = v18;
      *(a9 + 16) = v19;
      *(a9 + 24) = v48;
      *(a9 + 32) = v35;
      goto LABEL_11;
    }

    if (v22 >= v15[2])
    {
      break;
    }

    ++v22;
    v24 = v23 + 5;
    v25 = *(v23 + 64);
    v23 += 5;
    if (qword_1D85A3318[v25] < qword_1D85A3318[v21])
    {
      v45 = v25;
      v46 = v17;
      v47 = a9;
      v17 = *(v24 - 1);
      v26 = *v24;
      v43 = v19;
      v44 = v18;
      v27 = v24[1];
      v28 = v24[2];
      v29 = OUTLINED_FUNCTION_221();
      v42 = v30;
      sub_1D8534CB8(v29, v31, v27, v28, v32);
      sub_1D8534C38(v46, v44, v43, v48, v42);
      v33 = v26;
      a9 = v47;
      v34 = v27;
      v18 = v33;
      v48 = v28;
      v19 = v34;
      v21 = v45;
      goto LABEL_4;
    }
  }

  __break(1u);
}

void static Ref<A>.InviteDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + 32);
  v8 = *v1;
  v7 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = *(v1 + 32);
  if (v6)
  {
    if (v1[4])
    {
      v12 = v3 == v8 && v2 == v7;
      if (v12 || (OUTLINED_FUNCTION_18_2(), OUTLINED_FUNCTION_185_3(), (sub_1D8581AB8() & 1) != 0))
      {
        if (v5 == v10 && v4 == v9)
        {
          OUTLINED_FUNCTION_123_2();
          sub_1D8534D20(v80, v81, v82, v4, 1);
          v83 = OUTLINED_FUNCTION_9_3();
          sub_1D8534D20(v83, v84, v85, v86, 1);
          v87 = OUTLINED_FUNCTION_9_3();
          sub_1D8534BE8(v87, v88, v89, v90, 1);
          OUTLINED_FUNCTION_123_2();
          sub_1D8534BE8(v91, v92, v93, v4, 1);
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_54_0();
        sub_1D8581AB8();
        v14 = OUTLINED_FUNCTION_17_4();
        sub_1D8534D20(v14, v15, v16, v17, 1);
        v18 = OUTLINED_FUNCTION_9_3();
        sub_1D8534D20(v18, v19, v20, v21, 1);
        v22 = OUTLINED_FUNCTION_9_3();
        sub_1D8534BE8(v22, v23, v24, v25, 1);
        v26 = OUTLINED_FUNCTION_17_4();
        v30 = 1;
        goto LABEL_22;
      }

      v94 = OUTLINED_FUNCTION_17_4();
      sub_1D8534D20(v94, v95, v96, v97, 1);
      v98 = OUTLINED_FUNCTION_9_3();
      sub_1D8534D20(v98, v99, v100, v101, 1);
      v102 = OUTLINED_FUNCTION_9_3();
      sub_1D8534BE8(v102, v103, v104, v105, 1);
      v43 = OUTLINED_FUNCTION_17_4();
      v47 = 1;
LABEL_15:
      sub_1D8534BE8(v43, v44, v45, v46, v47);
      goto LABEL_23;
    }

LABEL_14:
    v31 = OUTLINED_FUNCTION_17_4();
    sub_1D8534D20(v31, v32, v33, v34, v11);
    v35 = OUTLINED_FUNCTION_9_3();
    sub_1D8534D20(v35, v36, v37, v38, v6);
    v39 = OUTLINED_FUNCTION_9_3();
    sub_1D8534BE8(v39, v40, v41, v42, v6);
    v43 = OUTLINED_FUNCTION_17_4();
    v47 = v11;
    goto LABEL_15;
  }

  if (v1[4])
  {
    goto LABEL_14;
  }

  v48 = *v0;
  if (v3 == v8 && v2 == v7)
  {
    OUTLINED_FUNCTION_54_0();
    sub_1D8534D20(v62, v63, v64, v65, v66);
    v67 = OUTLINED_FUNCTION_9_3();
    sub_1D8534D20(v67, v68, v69, v70, 0);
    v71 = OUTLINED_FUNCTION_9_3();
    sub_1D8534BE8(v71, v72, v73, v74, 0);
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_54_0();
    sub_1D8534BE8(v75, v76, v77, v78, v79);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_185_3();
  sub_1D8581AB8();
  v50 = OUTLINED_FUNCTION_17_4();
  sub_1D8534D20(v50, v51, v52, v53, 0);
  v54 = OUTLINED_FUNCTION_9_3();
  sub_1D8534D20(v54, v55, v56, v57, 0);
  v58 = OUTLINED_FUNCTION_9_3();
  sub_1D8534BE8(v58, v59, v60, v61, 0);
  v26 = OUTLINED_FUNCTION_17_4();
  v30 = 0;
LABEL_22:
  sub_1D8534BE8(v26, v27, v28, v29, v30);
LABEL_23:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D852DC64()
{
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_4_4();
  return sub_1D84379E4(v0, v1, v2, v3, v4);
}

uint64_t Ref<A>.ContactRefFields.hashValue.getter()
{
  OUTLINED_FUNCTION_196_1();
  sub_1D8581B58();
  v0 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v0);
  return sub_1D8581B98();
}

uint64_t sub_1D852E0A4()
{
  OUTLINED_FUNCTION_196_1();
  sub_1D8581B58();
  v0 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v0);
  return sub_1D8581B98();
}

void Ref<A>.init(id:associationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  OUTLINED_FUNCTION_144_0();
  v13 = v12;
  if (v10 | v11)
  {
    v16 = v11;
    v17 = v10;
    v18 = sub_1D852B424(0);
    v20 = v18;
    v21 = v19;
    v22 = MEMORY[0x1E69E7CC8];
    if (v17)
    {
      swift_isUniquelyReferenced_nonNull_native();
      a9 = v22;
      v23 = OUTLINED_FUNCTION_190_2();
      sub_1D84E81D4(v23, v24, v20, v21);
    }

    else
    {
      v25 = sub_1D8436A4C(v18, v19);
      if (v26)
      {
        v17 = v25;
        swift_isUniquelyReferenced_nonNull_native();
        a9 = v22;
        v27 = v22[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
        sub_1D8581808();
        v28 = *(v22[6] + 16 * v17 + 8);

        v29 = *(v22[7] + 16 * v17 + 8);
        OUTLINED_FUNCTION_154_1();
        sub_1D8581828();
      }
    }

    sub_1D852B424(1);
    OUTLINED_FUNCTION_194_2();
    if (v16)
    {
      swift_isUniquelyReferenced_nonNull_native();
      a9 = v22;
      v30 = OUTLINED_FUNCTION_52_2();
      sub_1D84E81D4(v30, v31, v32, v21);
    }

    else
    {
      v33 = sub_1D8436A4C(v17, v21);
      if (v34)
      {
        v35 = v33;
        swift_isUniquelyReferenced_nonNull_native();
        a9 = v22;
        v36 = v22[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
        sub_1D8581808();
        v37 = *(v22[6] + 16 * v35 + 8);

        OUTLINED_FUNCTION_192_1();
        v39 = *(v38 + 8);
        OUTLINED_FUNCTION_154_1();
        sub_1D8581828();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A368, &qword_1D85A22C0);
    sub_1D8437BA8();
    sub_1D843808C();
    OUTLINED_FUNCTION_86_3();

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A370, &qword_1D85A22C8);
    OUTLINED_FUNCTION_42_1(v40);
    *v13 = a9;
    v13[1] = a10;
  }

  else
  {
    sub_1D8448448();
    v14 = OUTLINED_FUNCTION_446();
    *v15 = 0xD000000000000026;
    v15[1] = 0x80000001D8587D50;
    OUTLINED_FUNCTION_120_1(v14, v15);
  }

  OUTLINED_FUNCTION_143_1();
}

void Ref<A>.adamID.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_215_1();
  a21 = v22;
  a22 = v23;
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_71_0();
  sub_1D8438004(0, &qword_1EE0E04A8, v24);
  a13 = v25;
  a14 = OUTLINED_FUNCTION_84_1(qword_1EE0E00B0);
  LOBYTE(a10) = 0;
  OUTLINED_FUNCTION_47_0();
  sub_1D8440DE0(v26, v27, v28, v29, v30, v31, v32);
  OUTLINED_FUNCTION_38_1();
  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_214_4();
}

void Ref<A>.gameActivityDefinition(id:activityEnvironment:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v62 = sub_1D8580D78();
  v7 = OUTLINED_FUNCTION_1(v62);
  v61 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v13 = v12 - v11;
  v60 = *v0;
  v63 = v0[1];
  v14 = sub_1D852B838(&unk_1F5394DA0);
  OUTLINED_FUNCTION_0_7();
  v16 = sub_1D852B838(v15);
  v64[0] = v14;
  sub_1D85347B4(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D859A760;
  *(inited + 32) = OUTLINED_FUNCTION_207_4(0);
  *(inited + 40) = v18;
  *(inited + 48) = v59;
  *(inited + 56) = v5;

  *(inited + 64) = OUTLINED_FUNCTION_207_4(1);
  *(inited + 72) = v19;
  v21 = v3[3];
  v20 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v21);
  *(inited + 80) = (*(v20 + 32))(v21, v20);
  *(inited + 88) = v22;
  *(inited + 96) = sub_1D84379E4(2, &qword_1ECA39860, &qword_1D85962F0, &qword_1ECA3A390, type metadata accessor for Ref<A>.GameActivityDefinitionRefFields);
  *(inited + 104) = v23;
  v24 = v3[3];
  v25 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v24);
  (*(v25 + 40))(v24, v25);
  sub_1D8580D48();
  OUTLINED_FUNCTION_38_1();
  (*(v61 + 8))(v13, v62);
  *(inited + 112) = v24;
  *(inited + 120) = v13;
  OUTLINED_FUNCTION_152_2();
  sub_1D85811B8();
  sub_1D8441004();
  if (!v1)
  {
    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
    v30 = sub_1D8437BA8();
    v32 = v31;
    v33 = v28 == v30 && v29 == v31;
    if (v33 || (v34 = v30, OUTLINED_FUNCTION_190_2(), (sub_1D8581AB8() & 1) != 0))
    {

      OUTLINED_FUNCTION_101_1();
      sub_1D8533950(v35, v36);
      v37 = *(v14 + 16);
      if (v37)
      {
        v67 = MEMORY[0x1E69E7CC0];
        sub_1D84E8374(0, v37, 0);
        v38 = v67;
        v39 = v14 + 32;
        do
        {
          sub_1D84EB9C4(v39, v64);
          v40 = v65;
          v41 = v66;
          __swift_project_boxed_opaque_existential_1(v64, v65);
          OUTLINED_FUNCTION_45_1(v41);
          v43 = v42(v40, v41);
          v45 = v44;
          __swift_destroy_boxed_opaque_existential_1(v64);
          v67 = v38;
          v47 = *(v38 + 16);
          v46 = *(v38 + 24);
          if (v47 >= v46 >> 1)
          {
            v49 = OUTLINED_FUNCTION_337_0(v46);
            sub_1D84E8374(v49, v47 + 1, 1);
            v38 = v67;
          }

          *(v38 + 16) = v47 + 1;
          v48 = v38 + 16 * v47;
          *(v48 + 32) = v43;
          *(v48 + 40) = v45;
          v39 += 40;
          --v37;
        }

        while (v37);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39860, &qword_1D85962F0);
      sub_1D8437BA8();
      OUTLINED_FUNCTION_38_1();

      v52 = OUTLINED_FUNCTION_39_1();
      sub_1D8533E98(v52, v53);
      OUTLINED_FUNCTION_67_2();

      OUTLINED_FUNCTION_194();
      sub_1D843808C();
      v55 = v54;
      v57 = v56;

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A090, &unk_1D859C228);
      Ref.init(rawValue:)(v55, v57, v58);
    }

    else
    {

      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      sub_1D8581768();
      v67 = v60;
      v68 = v63;
      sub_1D85817E8();
      OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_129_1();
      MEMORY[0x1DA718990](v34, v32);

      OUTLINED_FUNCTION_48_0();
      sub_1D8448448();
      v50 = OUTLINED_FUNCTION_446();
      OUTLINED_FUNCTION_34_1(v50, v51);
    }
  }

  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_284_0();
}

uint64_t Ref<A>.init(bundleID:adamID:platform:shortBundleVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8590A70;
  *(inited + 32) = sub_1D84379E4(1, &qword_1ECA38B38, &qword_1D85981B0, &qword_1EE0E04A8, type metadata accessor for Ref<A>.GameRefFields);
  *(inited + 40) = v13;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v14 = sub_1D85811B8();
  v15 = sub_1D84379E4(0, &qword_1ECA38B38, &qword_1D85981B0, &qword_1EE0E04A8, type metadata accessor for Ref<A>.GameRefFields);
  v17 = v15;
  v18 = v16;
  if (a3)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_132_0();
    v19 = OUTLINED_FUNCTION_190_2();
    sub_1D84E81D4(v19, v20, v17, v18);

    v14 = v62;
  }

  else
  {
    v21 = sub_1D8436A4C(v15, v16);
    if (v22)
    {
      a3 = v21;
      swift_isUniquelyReferenced_nonNull_native();
      v62 = v14;
      v23 = v14[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
      OUTLINED_FUNCTION_138_2();
      sub_1D8581808();
      v24 = *(v14[6] + 16 * a3 + 8);

      v25 = *(v14[7] + 16 * a3 + 8);
      OUTLINED_FUNCTION_154_1();
      sub_1D8581828();
    }
  }

  OUTLINED_FUNCTION_1_4();
  sub_1D84379E4(2, v26, v27, v28, v29);
  OUTLINED_FUNCTION_194_2();
  if (a5)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_132_0();
    sub_1D84E81D4(a4, a5, a3, v18);

    v14 = v62;
  }

  else
  {
    v30 = sub_1D8436A4C(a3, v18);
    if (v31)
    {
      v32 = v30;
      swift_isUniquelyReferenced_nonNull_native();
      v62 = v14;
      v33 = v14[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
      OUTLINED_FUNCTION_138_2();
      sub_1D8581808();
      v34 = *(v14[6] + 16 * v32 + 8);

      OUTLINED_FUNCTION_192_1();
      v36 = *(v35 + 8);
      OUTLINED_FUNCTION_154_1();
      sub_1D8581828();
    }
  }

  OUTLINED_FUNCTION_1_4();
  v41 = sub_1D84379E4(3, v37, v38, v39, v40);
  v43 = v42;
  if (a7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_132_0();
    sub_1D84E81D4(a6, a7, v41, v43);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_233();
    v46 = sub_1D8436A4C(v44, v45);
    if (v47)
    {
      v48 = v46;
      swift_isUniquelyReferenced_nonNull_native();
      v62 = v14;
      v49 = v14[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
      OUTLINED_FUNCTION_138_2();
      sub_1D8581808();
      v50 = *(v14[6] + 16 * v48 + 8);

      v51 = *(v14[7] + 16 * v48 + 8);
      OUTLINED_FUNCTION_154_1();
      sub_1D8581828();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B38, &qword_1D85981B0);
  sub_1D8437BA8();
  sub_1D843808C();
  v53 = v52;
  v55 = v54;

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39470, &unk_1D8592720);
  result = Ref.init(rawValue:)(v53, v55, v56);
  *a8 = v62;
  a8[1] = v63;
  return result;
}

void Ref<A>.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_215_1();
  a21 = v22;
  a22 = v23;
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_24_1();
  sub_1D8438004(0, &qword_1ECA3A390, v24);
  a13 = v25;
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_97_0();
  a14 = sub_1D8440D9C(v26, v27, v28);
  LOBYTE(a10) = 0;
  OUTLINED_FUNCTION_47_0();
  sub_1D8440DE0();
  OUTLINED_FUNCTION_38_1();
  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_214_4();
}

void Ref<A>.language.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_215_1();
  a21 = v22;
  a22 = v23;
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_24_1();
  sub_1D8438004(0, &qword_1ECA3A390, v24);
  a13 = v25;
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_97_0();
  sub_1D8440D9C(v26, v27, v28);
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_47_0();
  sub_1D8440DE0();
  OUTLINED_FUNCTION_38_1();
  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_214_4();
}

void Ref<A>.partyStartURLString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_215_1();
  a21 = v22;
  a22 = v23;
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_24_1();
  sub_1D8438004(0, &qword_1ECA3A390, v24);
  a13 = v25;
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_97_0();
  a14 = sub_1D8440D9C(v26, v27, v28);
  LOBYTE(a10) = 2;
  OUTLINED_FUNCTION_47_0();
  sub_1D8440DE0(v29, v30, v31, v32, v33, v34, v35);
  OUTLINED_FUNCTION_38_1();
  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_214_4();
}

void Ref<A>.partyStartURL.getter()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v11 = *v0;
  v10 = v0[1];
  sub_1D8438004(0, &qword_1ECA3A390, type metadata accessor for Ref<A>.GameActivityDefinitionRefFields);
  v13 = v12;
  v29 = v12;
  OUTLINED_FUNCTION_11_3();
  v14 = v11;
  v16 = sub_1D8440D9C(v15, &qword_1ECA3A390, type metadata accessor for Ref<A>.GameActivityDefinitionRefFields);
  v30 = v16;
  LOBYTE(v28[0]) = 2;
  sub_1D8440DE0(v28, v11, v10, &unk_1ECA3A090, &unk_1D859C228, &qword_1ECA39860, &qword_1D85962F0);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_174_1();
    sub_1D8580D68();

    v17 = sub_1D8580D78();
    if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
    {
      sub_1D8535DE0(v9, &qword_1ECA39D88);
      v28[0] = 0;
      v28[1] = 0xE000000000000000;
      sub_1D8581768();

      OUTLINED_FUNCTION_149_0();
      v26 = 0xD00000000000002DLL;
      v27 = v18;
      v29 = v13;
      v30 = v16;
      LOBYTE(v28[0]) = 2;
      v19 = sub_1D8440DE0(v28, v14, v10, &unk_1ECA3A090, &unk_1D859C228, &qword_1ECA39860, &qword_1D85962F0);
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1DA718990](v19, v21);

      v22 = v26;
      v23 = v27;
      sub_1D8448448();
      OUTLINED_FUNCTION_446();
      *v24 = v22;
      *(v24 + 8) = v23;
      *(v24 + 16) = 2;
      swift_willThrow();
    }

    else
    {
      (*(*(v17 - 8) + 32))(v3, v9, v17);
    }
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D8530DFC()
{
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_22_1();
  return sub_1D84379E4(v0, v1, v2, v3, v4);
}

double Ref<A>.artwork.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;

  Artwork.Size.init(width:height:)(1024.0, 1024.0);
  v5[0] = v5[1];
  *&result = Artwork.init(ref:sourceImageSize:backgroundColor:textColor1:textColor2:textColor3:textColor4:)(v6, v5, 0, 0, 0, 0, 0, 0, a1, 0, 0, 0).n128_u64[0];
  return result;
}

void Ref<A>.init(templateURL:)()
{
  OUTLINED_FUNCTION_285();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1D8580B38();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v28 = v1;
  sub_1D8580B28();
  sub_1D8534D90();
  v12 = sub_1D8581718();
  v14 = v13;
  v15 = *(v9 + 8);
  v16 = OUTLINED_FUNCTION_190_2();
  v17(v16);
  if (v14)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D85A2260;
    *(inited + 32) = sub_1D84379E4(0, &qword_1ECA389C8, &qword_1D8590820, &qword_1ECA3A3A8, type metadata accessor for Ref<A>.ImageRefFields);
    *(inited + 40) = v19;
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    *(inited + 64) = sub_1D84379E4(2, &qword_1ECA389C8, &qword_1D8590820, &qword_1ECA3A3A8, type metadata accessor for Ref<A>.ImageRefFields);
    *(inited + 72) = v20;
    *(inited + 80) = 0x6574616C706D6574;
    *(inited + 88) = 0xE800000000000000;
    sub_1D85811B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    sub_1D8437BA8();
    sub_1D843808C();
    OUTLINED_FUNCTION_86_3();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A28, &qword_1D8590948);
    v21 = OUTLINED_FUNCTION_69_1();
    Ref.init(rawValue:)(v21, v22, v23);
    *v5 = v3;
    v5[1] = v28;
  }

  else
  {
    sub_1D8581768();

    OUTLINED_FUNCTION_149_0();
    v29 = v24;
    v25 = OUTLINED_FUNCTION_233();
    MEMORY[0x1DA718990](v25);

    sub_1D8448448();
    v26 = OUTLINED_FUNCTION_446();
    *v27 = 0xD000000000000026;
    v27[1] = v29;
    OUTLINED_FUNCTION_120_1(v26, v27);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t Ref<A>.ImageRefType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E6F6349707061;
  }

  else
  {
    result = 0x6574616C706D6574;
  }

  *v0;
  return result;
}

uint64_t Ref<A>.ImageRefType.init(rawValue:)@<X0>(char *a1@<X8>)
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

uint64_t sub_1D8531328(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E6F6349707061;
  }

  else
  {
    v3 = 0x6574616C706D6574;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6E6F6349707061;
  }

  else
  {
    v5 = 0x6574616C706D6574;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D85313E4()
{
  sub_1D85812B8();
}

uint64_t sub_1D8531458()
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D85314D8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Ref<A>.ImageRefType.init(rawValue:)(a1);
}

uint64_t sub_1D85314E4@<X0>(uint64_t *a1@<X8>)
{
  result = Ref<A>.ImageRefType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Ref<A>.type.getter@<X0>(char *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  sub_1D8438004(0, &qword_1ECA3A3A8, type metadata accessor for Ref<A>.ImageRefFields);
  v12[3] = v6;
  v12[4] = OUTLINED_FUNCTION_69_4(&qword_1ECA3A3B0);
  LOBYTE(v12[0]) = 2;
  sub_1D8440DE0(v12, v4, v5, &qword_1ECA38A28, &qword_1D8590948, &qword_1ECA389C8, &qword_1D8590820);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  v8 = sub_1D8581868();

  if (!v8)
  {
    v9 = 0;
    goto LABEL_7;
  }

  if (v8 == 1)
  {
    v9 = 1;
LABEL_7:
    *a1 = v9;
    return result;
  }

  v12[0] = v4;
  v12[1] = v5;
  sub_1D8448448();
  OUTLINED_FUNCTION_446();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A28, &qword_1D8590948);
  static GameServicesError.invalidReference<A>(ref:)(v12, v11);
  return swift_willThrow();
}

uint64_t _s12GameServices3RefVA2A0A14ActivityEntity_pRszlE0adC6FieldsO9hashValueSivg_0()
{
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](0);
  return sub_1D8581B98();
}

void Ref<A>.internalID.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = v8[1];
  v17[0] = *v8;
  v17[1] = v11;
  Ref<A>.playerID.getter(a1, a2, a3, a4, a5, a6, a7, a8, &v12);
  if (!v9 && v16 != 1)
  {
    sub_1D8534C38(v12, v13, v14, v15, v16);
    v12 = v10;
    v13 = v11;
    sub_1D8448448();
    OUTLINED_FUNCTION_446();
    OUTLINED_FUNCTION_38_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A18, &qword_1D8590940);
    static GameServicesError.invalidReference<A>(ref:)(&v12, v17);
    swift_willThrow();
  }
}

void Ref<A>.init(internalID:)()
{
  OUTLINED_FUNCTION_96_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  *(swift_initStackObject() + 16) = xmmword_1D8590A70;
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_97_0();
  v5 = sub_1D84379E4(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_200_2(v5, v6);
  OUTLINED_FUNCTION_160_1();
  sub_1D85811B8();
  v7 = OUTLINED_FUNCTION_221();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  sub_1D8437BA8();
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_68_0();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A18, &qword_1D8590940);
  v10 = OUTLINED_FUNCTION_35_4(v9);
  OUTLINED_FUNCTION_63_1(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

void static Ref<A>.PlayerID.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  v8 = *v0;
  v7 = v0[1];
  v10 = v0[2];
  v9 = v0[3];
  v11 = *(v0 + 32);
  if (!*(v1 + 32))
  {
    if (*(v0 + 32))
    {
      goto LABEL_25;
    }

    if (v3 != v8 || v2 != v7)
    {
      OUTLINED_FUNCTION_236_1();
      if ((OUTLINED_FUNCTION_175_2() & 1) == 0)
      {
        v101 = OUTLINED_FUNCTION_10_5();
        sub_1D8534CB8(v101, v102, v103, v104, 0);
        v105 = OUTLINED_FUNCTION_8_1();
        sub_1D8534CB8(v105, v106, v107, v108, 0);
        v109 = OUTLINED_FUNCTION_8_1();
        sub_1D8534C38(v109, v110, v111, v112, 0);
        v72 = OUTLINED_FUNCTION_10_5();
        v76 = 0;
        goto LABEL_26;
      }
    }

    v30 = OUTLINED_FUNCTION_10_5();
    sub_1D8534CB8(v30, v31, v32, v33, 0);
    v34 = OUTLINED_FUNCTION_8_1();
    sub_1D8534CB8(v34, v35, v36, v37, 0);

    OUTLINED_FUNCTION_51_5();
    sub_1D8510440();
    v38 = OUTLINED_FUNCTION_8_1();
    sub_1D8534C38(v38, v39, v40, v41, 0);
    v42 = OUTLINED_FUNCTION_10_5();
    v46 = 0;
LABEL_24:
    sub_1D8534C38(v42, v43, v44, v45, v46);

    goto LABEL_27;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_25;
    }

    if (v3 != v8 || v2 != v7)
    {
      OUTLINED_FUNCTION_236_1();
      if ((OUTLINED_FUNCTION_175_2() & 1) == 0)
      {
        v89 = OUTLINED_FUNCTION_10_5();
        sub_1D8534CB8(v89, v90, v91, v92, 2);
        v93 = OUTLINED_FUNCTION_8_1();
        sub_1D8534CB8(v93, v94, v95, v96, 2);
        v97 = OUTLINED_FUNCTION_8_1();
        sub_1D8534C38(v97, v98, v99, v100, 2);
        v72 = OUTLINED_FUNCTION_10_5();
        v76 = 2;
        goto LABEL_26;
      }
    }

    v48 = OUTLINED_FUNCTION_10_5();
    sub_1D8534CB8(v48, v49, v50, v51, 2);
    v52 = OUTLINED_FUNCTION_8_1();
    sub_1D8534CB8(v52, v53, v54, v55, 2);

    OUTLINED_FUNCTION_51_5();
    sub_1D8510440();
    v56 = OUTLINED_FUNCTION_8_1();
    sub_1D8534C38(v56, v57, v58, v59, 2);
    v42 = OUTLINED_FUNCTION_10_5();
    v46 = 2;
    goto LABEL_24;
  }

  if (v11 != 1)
  {
LABEL_25:
    v60 = OUTLINED_FUNCTION_10_5();
    sub_1D8534CB8(v60, v61, v62, v63, v11);
    v64 = OUTLINED_FUNCTION_8_1();
    sub_1D8534CB8(v64, v65, v66, v67, v6);
    v68 = OUTLINED_FUNCTION_8_1();
    sub_1D8534C38(v68, v69, v70, v71, v6);
    v72 = OUTLINED_FUNCTION_10_5();
    v76 = v11;
LABEL_26:
    sub_1D8534C38(v72, v73, v74, v75, v76);
    goto LABEL_27;
  }

  if (v3 == v8 && v2 == v7)
  {
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_51_5();
    sub_1D8534CB8(v77, v78, v79, v80, 1);
    v81 = OUTLINED_FUNCTION_8_1();
    sub_1D8534CB8(v81, v82, v83, v84, 1);
    v85 = OUTLINED_FUNCTION_8_1();
    sub_1D8534C38(v85, v86, v87, v88, 1);
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_51_5();
  }

  else
  {
    OUTLINED_FUNCTION_236_1();
    OUTLINED_FUNCTION_175_2();
    v13 = OUTLINED_FUNCTION_10_5();
    sub_1D8534CB8(v13, v14, v15, v16, 1);
    v17 = OUTLINED_FUNCTION_8_1();
    sub_1D8534CB8(v17, v18, v19, v20, 1);
    v21 = OUTLINED_FUNCTION_8_1();
    sub_1D8534C38(v21, v22, v23, v24, 1);
    v25 = OUTLINED_FUNCTION_10_5();
  }

  sub_1D8534C38(v25, v26, v27, v28, 1);
LABEL_27:
  OUTLINED_FUNCTION_388();
}

uint64_t _s12GameServices3RefVA2A0A0_pRszlE0aC6FieldsO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_196_1();
  sub_1D8581B58();
  v0 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v0);
  return sub_1D8581B98();
}

uint64_t sub_1D853278C()
{
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_78_2();
  return sub_1D84379E4(v0, v1, v2, v3, v4);
}

uint64_t Ref<A>.game.getter()
{
  v2 = *v0;
  v1 = v0[1];
  OUTLINED_FUNCTION_0_7();
  sub_1D852B838(v3);
  sub_1D85811B8();
  v4 = OUTLINED_FUNCTION_69_1();
  sub_1D852B9F0(v4, v2, v1, v5);
}

void *Ref<A>.playerIDs.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  sub_1D8440EEC(*v8, v8[1], &qword_1ECA38A18, &qword_1D8590940, &qword_1ECA389B8, &qword_1D8590B30, a7, a8, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  if (!v9)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    v13 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v14 = byte_1F5394C88[v13 + 32];
      v15 = sub_1D8437BA8();
      MEMORY[0x1DA718990](v15);

      v16 = OUTLINED_FUNCTION_115_1();
      MEMORY[0x1DA718990](v16);
      OUTLINED_FUNCTION_5_4();
      sub_1D8438004(0, &qword_1ECA3A3E0, v17);
      sub_1D85817E8();
      if (*(v12 + 16))
      {
        v18 = sub_1D8436A4C(0, 0xE000000000000000);
        v20 = v19;

        if (v20)
        {
          v21 = (*(v12 + 56) + 16 * v18);
          v23 = *v21;
          v22 = v21[1];
          if (v14)
          {
            if (v14 == 1)
            {
              v24 = v21[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v44 = v10[2];
                v45 = OUTLINED_FUNCTION_95_3();
                v10 = sub_1D85348F8(v45, v46, v47, v10);
              }

              OUTLINED_FUNCTION_135_1();
              if (v26)
              {
                v48 = OUTLINED_FUNCTION_337_0(v25);
                v10 = OUTLINED_FUNCTION_166_2(v48);
              }

              OUTLINED_FUNCTION_133_1();
              *(v27 + 32) = v23;
              *(v27 + 40) = v22;
              *(v27 + 48) = 0;
              *(v27 + 56) = 0;
              v28 = 1;
            }

            else
            {
              v37 = *v21;
              v38 = v21[1];

              OUTLINED_FUNCTION_0_7();
              sub_1D852B838(&unk_1F5394C10);
              v39 = sub_1D85811B8();
              OUTLINED_FUNCTION_142_2(v39, v40, v41, v42);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v54 = v10[2];
                v55 = OUTLINED_FUNCTION_95_3();
                v10 = sub_1D85348F8(v55, v56, v57, v10);
              }

              OUTLINED_FUNCTION_135_1();
              if (v26)
              {
                v58 = OUTLINED_FUNCTION_337_0(v43);
                v10 = OUTLINED_FUNCTION_166_2(v58);
              }

              OUTLINED_FUNCTION_133_1();
              *(v27 + 32) = v37;
              *(v27 + 40) = v22;
              *(v27 + 48) = 0;
              *(v27 + 56) = 0xE000000000000000;
              v28 = 2;
            }

            *(v27 + 64) = v28;
          }

          else
          {
            v29 = *v21;
            v30 = v21[1];

            OUTLINED_FUNCTION_0_7();
            sub_1D852B838(&unk_1F5394C10);
            v31 = sub_1D85811B8();
            OUTLINED_FUNCTION_142_2(v31, v32, v33, v34);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = v10[2];
              v50 = OUTLINED_FUNCTION_95_3();
              v10 = sub_1D85348F8(v50, v51, v52, v10);
            }

            OUTLINED_FUNCTION_135_1();
            if (v26)
            {
              v53 = OUTLINED_FUNCTION_337_0(v35);
              v10 = OUTLINED_FUNCTION_166_2(v53);
            }

            OUTLINED_FUNCTION_133_1();
            *(v36 + 32) = v29;
            *(v36 + 40) = v22;
            *(v36 + 48) = 0;
            *(v36 + 56) = 0xE000000000000000;
            *(v36 + 64) = 0;
          }
        }
      }

      else
      {
      }

      ++v13;
    }

    while (v13 != 3);
  }

  return v10;
}

void sub_1D85333C4()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = sub_1D8580B88();
  v84 = OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_2_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  OUTLINED_FUNCTION_363(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_206_2();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v19 = v18 - v17;
  v21 = *v1;
  v20 = v1[1];
  sub_1D8580C38();
  if (__swift_getEnumTagSinglePayload(v0, 1, v11) == 1)
  {
    sub_1D8535DE0(v0, &qword_1ECA39E50);
LABEL_42:
    v85 = v21;
    v86 = v20;
    sub_1D8448448();
    OUTLINED_FUNCTION_446();
    v77 = *(v3 + 16);
    static GameServicesError.invalidReference<A>(ref:)(&v85, v78);
    swift_willThrow();
    goto LABEL_43;
  }

  (*(v14 + 32))(v19, v0, v11);
  sub_1D8580C18();
  if (!v22)
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_153_1();
  v24 = v24 && v23 == 0xE500000000000000;
  if (v24)
  {
  }

  else
  {
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    if ((v19 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  sub_1D8580BD8();
  if (!v25)
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_90_2();
  if (v24 && v26 == v27)
  {

    goto LABEL_19;
  }

  sub_1D8581AB8();
  OUTLINED_FUNCTION_369();
  if ((v19 & 1) == 0)
  {
LABEL_41:
    v75 = OUTLINED_FUNCTION_136_3();
    v76(v75);
    goto LABEL_42;
  }

LABEL_19:
  v29 = sub_1D8580B98();
  if (!v29)
  {
    goto LABEL_41;
  }

  v83 = v29;
  v30 = sub_1D8580BF8();
  v32 = OUTLINED_FUNCTION_173_1(v30, v31);
  MEMORY[0x1DA718930](v32);
  OUTLINED_FUNCTION_184_3();

  v33 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v33 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    v85 = v21;
    v86 = v20;
    sub_1D8448448();
    OUTLINED_FUNCTION_446();
    v79 = *(v3 + 16);
    static GameServicesError.invalidReference<A>(ref:)(&v85, v80);
    swift_willThrow();
    v81 = OUTLINED_FUNCTION_136_3();
    v82(v81);
    goto LABEL_43;
  }

  v34 = sub_1D85811B8();
  if (!*(v83 + 16))
  {
LABEL_40:

    v73 = OUTLINED_FUNCTION_136_3();
    v74(v73);
LABEL_43:
    OUTLINED_FUNCTION_284_0();
    return;
  }

  v35 = v84;
  v36 = OUTLINED_FUNCTION_89_1(v83);
  while (*(v36 + 16))
  {
    v37 = OUTLINED_FUNCTION_114_1();
    v38(v37);
    v39 = sub_1D8580B58();
    v41 = v40;
    sub_1D8580B78();
    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v85 = v34;
      v43 = OUTLINED_FUNCTION_69_1();
      sub_1D8436A4C(v43, v44);
      v45 = v34[2];
      OUTLINED_FUNCTION_189_1();
      if (__OFADD__(v48, v49))
      {
        goto LABEL_46;
      }

      v50 = v46;
      v51 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
      if (sub_1D8581808())
      {
        v52 = OUTLINED_FUNCTION_69_1();
        v54 = sub_1D8436A4C(v52, v53);
        if ((v51 & 1) != (v55 & 1))
        {
          goto LABEL_48;
        }

        v50 = v54;
      }

      v35 = v84;
      if (v51)
      {

        v34 = v85;
        v56 = (v85[7] + 16 * v50);
        v57 = v56[1];
        OUTLINED_FUNCTION_197_2(v56);

        v58 = OUTLINED_FUNCTION_40();
        v59(v58, v84);
      }

      else
      {
        v34 = v85;
        OUTLINED_FUNCTION_91_2(&v85[v50 >> 6]);
        v67 = (v85[6] + 16 * v50);
        *v67 = v39;
        v67[1] = v41;
        OUTLINED_FUNCTION_197_2((v34[7] + 16 * v50));
        v68 = OUTLINED_FUNCTION_40();
        v69(v68, v84);
        v70 = v34[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_47;
        }

        v34[2] = v72;
      }
    }

    else
    {
      v60 = OUTLINED_FUNCTION_69_1();
      sub_1D8436A4C(v60, v61);
      v63 = v62;

      if (v63)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v85 = v34;
        v64 = v34[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
        OUTLINED_FUNCTION_172_0();
        OUTLINED_FUNCTION_212_4(v34[6]);
        OUTLINED_FUNCTION_212_4(v34[7]);
        sub_1D8581828();
      }

      v65 = OUTLINED_FUNCTION_40();
      v66(v65, v35);
    }

    v36 = OUTLINED_FUNCTION_193_1();
    if (v24)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_1D8581AF8();
  __break(1u);
}

uint64_t sub_1D8533950(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1D853450C(a1, sub_1D8534B74, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1D85339D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8580B58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8533A00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D8580B68();
}

void *sub_1D8533A40(void *a1, int64_t a2, char a3)
{
  result = sub_1D8533A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8533A60(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5C8, &qword_1D85A32F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5D0, &qword_1D85A32F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D8533B98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_1D8533BE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5A0, &unk_1D85A3288);
  v39 = a2;
  result = sub_1D8581848();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_1D84F52AC(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_1D8581B58();
    sub_1D85812B8();
    result = sub_1D8581B98();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t *sub_1D8533E98(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v4 = sub_1D8534224(v13, v7, v4, a2);
      MEMORY[0x1DA719810](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = (v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1D84F52AC(0, v7, v9);

  v10 = sub_1D853405C(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

unint64_t *sub_1D853405C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v22 = a2;
  v23 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v25 + 56) + 16 * v13 + 8);
    v27[0] = *v14;
    v27[1] = v15;
    MEMORY[0x1EEE9AC00](result);
    v21[2] = v27;

    v17 = v28;
    v18 = sub_1D84F57EC(sub_1D84EC464, v21, v26);
    v28 = v17;

    if (v18)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        v20 = sub_1D85342C4(v23, v22, v24, v25);

        return v20;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D8534224(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1D853405C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1D85342C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5A0, &unk_1D85A3288);
  result = sub_1D8581858();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    sub_1D8581B58();

    sub_1D85812B8();
    result = sub_1D8581B98();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D853450C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v55 = a5;
  sub_1D8535DA4(a1, a2, a3, v54);
  v6 = v54[1];
  v7 = v54[3];
  v8 = v54[4];
  v46 = v54[5];
  v47 = v54[0];
  v9 = (v54[2] + 64) >> 6;

  v44 = v9;
  v45 = v6;
  if (v8)
  {
    while (1)
    {
      v48 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v47 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v47 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v53[0] = v14;
      v53[1] = v15;
      v53[2] = v17;
      v53[3] = v18;

      v46(&v49, v53);

      v19 = v49;
      v20 = v50;
      v21 = v51;
      v22 = v52;
      v23 = *v55;
      v24 = sub_1D8436A4C(v49, v50);
      v25 = *(v23 + 16);
      OUTLINED_FUNCTION_189_1();
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        break;
      }

      v30 = v26;
      if (*(v23 + 24) >= v29)
      {
        if ((v48 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
          sub_1D8581818();
        }
      }

      else
      {
        v31 = v55;
        sub_1D8533BE4(v29, v48 & 1);
        v32 = *v31;
        v33 = sub_1D8436A4C(v19, v20);
        if ((v30 & 1) != (v34 & 1))
        {
          goto LABEL_24;
        }

        v24 = v33;
      }

      v8 &= v8 - 1;
      v35 = *v55;
      if (v30)
      {

        OUTLINED_FUNCTION_192_1();
        v37 = v36[1];
        *v36 = v21;
        v36[1] = v22;
      }

      else
      {
        OUTLINED_FUNCTION_91_2(v35 + 8 * (v24 >> 6));
        v38 = (*(v35 + 48) + 16 * v24);
        *v38 = v19;
        v38[1] = v20;
        OUTLINED_FUNCTION_192_1();
        *v39 = v21;
        v39[1] = v22;
        v40 = *(v35 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_23;
        }

        *(v35 + 16) = v42;
      }

      a4 = 1;
      v7 = v10;
      v9 = v44;
      v6 = v45;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1D84F0B4C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v48 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D8581AF8();
  __break(1u);
  return result;
}

int64_t sub_1D85347B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1D8534890(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5D0, &qword_1D85A32F8);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1D8534890(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1D8534A3C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1D85348F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5A8, &unk_1D85A3298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D8438004(0, &qword_1ECA3A5B0, type metadata accessor for Ref<A>.PlayerID);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8534A3C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5C8, &qword_1D85A32F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5D0, &qword_1D85A32F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D8534B74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8533B98(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_1D8534BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D8534C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1D8534CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1D8534D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

unint64_t sub_1D8534D90()
{
  result = qword_1ECA3A3A0;
  if (!qword_1ECA3A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A3A0);
  }

  return result;
}

uint64_t sub_1D8534E84(uint64_t a1)
{
  OUTLINED_FUNCTION_83_4();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8534F44(uint64_t a1)
{
  OUTLINED_FUNCTION_73_1();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8535004(uint64_t a1)
{
  OUTLINED_FUNCTION_27_4();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D85350C4(uint64_t a1)
{
  OUTLINED_FUNCTION_76_2();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D853519C(uint64_t a1)
{
  OUTLINED_FUNCTION_72_1();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8535274(uint64_t a1)
{
  OUTLINED_FUNCTION_82_2();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8535334(uint64_t a1)
{
  OUTLINED_FUNCTION_0_7();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D85353F4(uint64_t a1)
{
  OUTLINED_FUNCTION_81_3();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D85354B4(uint64_t a1)
{
  OUTLINED_FUNCTION_74_1();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8535574(uint64_t a1)
{
  OUTLINED_FUNCTION_70_1();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D853569C(uint64_t a1)
{
  OUTLINED_FUNCTION_80_1();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D853575C(uint64_t a1)
{
  OUTLINED_FUNCTION_79_2();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D853581C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_4();
  result = sub_1D8440D9C(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D853589C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D85358F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return OUTLINED_FUNCTION_226(*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_226(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_226(-1);
  }
}

uint64_t sub_1D8535934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_171_1(result, -a2);
    }
  }

  return result;
}

_BYTE *sub_1D853599C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D8535A64(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D8535B20(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D8535BBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8535C04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_192();
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8535C3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_171_1(result, -a2);
    }
  }

  return result;
}

uint64_t sub_1D8535C84(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *sub_1D8535CC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8535DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1D8535DE0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_198_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D8535E3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_198_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_14_4()
{
  *(v4 + 16) = v1;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_1D8581AB8();
}

char *OUTLINED_FUNCTION_29_3()
{
  *(v2 - 96) = v0;

  return sub_1D84E8374(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1)
{

  return Ref.init(rawValue:)(v1, v2, a1);
}

char *OUTLINED_FUNCTION_36_4@<X0>(unint64_t a1@<X8>)
{

  return sub_1D84E8374((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_48_0()
{

  JUMPOUT(0x1DA718990);
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D853450C(v9, a2, 0, a4, &a9);
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1)
{

  return Ref.init(rawValue:)(v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_1D8581768();
}

char *OUTLINED_FUNCTION_61_2()
{

  return sub_1D84E8374(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return static GameServicesError.invalidReference<A>(ref:)(va, v6);
}

uint64_t OUTLINED_FUNCTION_67_2()
{
}

uint64_t OUTLINED_FUNCTION_84_1(unint64_t *a1)
{

  return sub_1D8440D9C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_85_3()
{
}

uint64_t OUTLINED_FUNCTION_86_3()
{
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t result)
{
  *(v5 - 152) = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  *(v5 - 168) = v1 + 8;
  *(v5 - 160) = v1 + 16;
  *(v5 - 192) = v3;
  *(v5 - 184) = v2;
  *(v5 - 176) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_2(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{

  return sub_1D852B3A0(a1, a2, a3, type metadata accessor for Ref<A>.GameActivityRefFields);
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{

  return sub_1D852B3A0(a1, a2, a3, type metadata accessor for Ref<A>.AchievementRefFields);
}

void OUTLINED_FUNCTION_106_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  sub_1D8440EEC(v23, v22, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_108_4()
{

  return sub_1D85817E8();
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[6] = v4;
  v2[7] = v3;
}

void OUTLINED_FUNCTION_110_4()
{

  JUMPOUT(0x1DA718990);
}

uint64_t OUTLINED_FUNCTION_114_1()
{
  v2 = *(v1 - 104);
  v3 = *(v1 - 152) + *(v2 + 72) * v0;
  v4 = *(v2 + 16);
  return *(v1 - 72);
}

uint64_t OUTLINED_FUNCTION_120_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_147()
{
  *(v4 + 16) = v1;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return sub_1D85811B8();
}

uint64_t OUTLINED_FUNCTION_165_2(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void *OUTLINED_FUNCTION_166_2(void *a1)
{

  return sub_1D85348F8(a1, v2, 1, v1);
}

unint64_t OUTLINED_FUNCTION_173_1(uint64_t a1, unint64_t a2)
{

  return sub_1D8441878(1uLL, a1, a2);
}

uint64_t OUTLINED_FUNCTION_179_0()
{

  return sub_1D85811B8();
}

void OUTLINED_FUNCTION_180_0()
{

  sub_1D843808C();
}

uint64_t OUTLINED_FUNCTION_181_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_1D84EB9C4(v11, va);
}

uint64_t OUTLINED_FUNCTION_182_0()
{
}

int64_t OUTLINED_FUNCTION_183_1(uint64_t a1)
{

  return sub_1D85347B4(a1);
}

uint64_t OUTLINED_FUNCTION_193_1()
{
  v1 = *(v0 - 176);
  v3 = *(v0 - 144);
  return *(v0 - 136);
}

void OUTLINED_FUNCTION_197_2(void *a1@<X8>)
{
  v2 = *(v1 - 120);
  *a1 = *(v1 - 128);
  a1[1] = v2;
}

uint64_t OUTLINED_FUNCTION_200_2(uint64_t result, uint64_t a2)
{
  v4[4] = result;
  v4[5] = a2;
  v4[6] = v3;
  v4[7] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_204_1(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1D853450C(v12, a2, 0, a4, va);
}

uint64_t OUTLINED_FUNCTION_206_2()
{

  return sub_1D8580C68();
}

uint64_t OUTLINED_FUNCTION_207_4(uint64_t a1)
{

  return sub_1D84379E4(a1, v3, v4, v2, v1);
}

void OUTLINED_FUNCTION_209_2()
{

  JUMPOUT(0x1DA718990);
}

uint64_t OUTLINED_FUNCTION_212_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16 * v1 + 8);
}

uint64_t sub_1D8536A84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D85810A8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

_BYTE *storeEnumTagSinglePayload for Loggers(_BYTE *result, int a2, int a3)
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

GameServices::ReleaseState_optional __swiftcall ReleaseState.init(rawValue:)(Swift::String rawValue)
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

uint64_t ReleaseState.rawValue.getter()
{
  v1 = 0x646567617473;
  if (*v0 != 1)
  {
    v1 = 0x6D706F6C65766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702259052;
  }
}

uint64_t sub_1D8536C94@<X0>(uint64_t *a1@<X8>)
{
  result = ReleaseState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D8536CC0()
{
  result = qword_1ECA3A5F0;
  if (!qword_1ECA3A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3A5F8, &qword_1D85A3388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A5F0);
  }

  return result;
}

uint64_t sub_1D8536D34()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482160();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D8536D7C()
{
  OUTLINED_FUNCTION_99();
  sub_1D8482160();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D8536DB4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1D844AB18();
}

uint64_t sub_1D8536DE0()
{
  sub_1D85812B8();
}

_BYTE *storeEnumTagSinglePayload for ReleaseState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8536F4C()
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t Page.elements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Page.previous.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t Page.next.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1D85370F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73756F6976657270 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047342 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_7();

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

uint64_t sub_1D85371E8()
{
  sub_1D8581B58();
  sub_1D8449008(v2, *v0);
  return sub_1D8581B98();
}

uint64_t sub_1D8537228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D85370F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D853725C()
{
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D853729C()
{
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t Cursor.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Cursor.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1D853736C@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = Cursor.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D85373AC@<X0>(uint64_t *a1@<X8>)
{
  result = Cursor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D85373D4()
{
  OUTLINED_FUNCTION_99();
  sub_1D8537B04();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D853741C()
{
  OUTLINED_FUNCTION_99();
  sub_1D8537B04();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

__n128 PaginatedSequence.init(after:_:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t sub_1D8537464()
{
  OUTLINED_FUNCTION_148();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v0[9] = v0[27];
  sub_1D85815F8();
  OUTLINED_FUNCTION_154();
  sub_1D85815E8();
  v4 = v0[25];
  v5 = v0[22];

  OUTLINED_FUNCTION_146();

  return v6();
}

uint64_t sub_1D85374F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A608, &qword_1D85AAD30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1D8537B58(a3, v26 - v11);
  v13 = sub_1D8581528();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D843A590(v12);
  }

  else
  {
    sub_1D8581518();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D85814E8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D8581298() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1D843A590(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D843A590(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t PaginatedSequence.toArray()(uint64_t a1)
{
  *(v2 + 64) = a1;
  v3 = v1[1];
  *(v2 + 72) = *v1;
  *(v2 + 88) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D8439DE8, 0, 0);
}