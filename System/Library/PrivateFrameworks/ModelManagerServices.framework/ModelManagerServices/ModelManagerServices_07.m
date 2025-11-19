uint64_t sub_1979DE114()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.cancelRequest(id:sessionID:)();
}

uint64_t sub_1979DE1BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.acquireAssertion(assertion:)();
}

uint64_t sub_1979DE254()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.releaseAssertion(id:)();
}

uint64_t sub_1979DE2EC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197A05FA4;

  return ModelXPCSender.fetchAllAssertions()();
}

uint64_t sub_1979DE37C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.restoreAssertions(_:)();
}

uint64_t sub_1979DE414()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1979DE4A4;

  return ModelXPCSender.fetchAllAssetInfo()();
}

uint64_t sub_1979DE4A4()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1979DE594()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197A05FA4;

  return ModelXPCSender.fetchDynamicAssetInfo()();
}

uint64_t sub_1979DE624()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.fetchEffectivePolicy()();
}

uint64_t sub_1979DE6C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.fetchPolicy(_:)();
}

uint64_t sub_1979DE774()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.fetchAvailability()();
}

uint64_t sub_1979DE810(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_197960FB0;

  return ModelXPCSender.loadAssetBundle(_:dynamicMode:)(a1, a2, a3);
}

uint64_t sub_1979DE8C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.holdAssetBundle(_:)();
}

uint64_t sub_1979DE968()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.dumpState()();
}

uint64_t sub_1979DEA04()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960E38;

  return ModelXPCSender.fetchModelInstance(session:)();
}

uint64_t sub_1979DEAB0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.setAssetsHaveUpdated(_:)();
}

uint64_t sub_1979DEB48()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.ignoreAssetUpdates(_:)();
}

uint64_t sub_1979DEBE0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.startMonitoringInferences(endpoint:)();
}

uint64_t sub_1979DEC78(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BC8, &qword_197A92C38);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979DEE70, v2, 0);
}

uint64_t sub_1979DEE70()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979DEEF4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979DF008()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A04EE0();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979DF130;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979DF130()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979DF270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_9_5();
          v79(v78);
          sub_197A21F90();
          v80 = OUTLINED_FUNCTION_42();
          v81(v80);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v82, v83);
        v84 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v84, v85);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 96);
        v63 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 88);
        if (v67)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          v72 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.AcquireRequest(v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BD0, &qword_197A92C40);
          v73 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v73, v74, v75);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v86);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v89;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v90);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979DF90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29_4();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &unk_1EAF49BC8);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49BC8);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_14_8();
        v71(v70);
        sub_197A21F90();
        v72 = OUTLINED_FUNCTION_60_3();
        v73(v72);
      }

      v74 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v74, v75);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 96);
      v55 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_221();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 88);
      if (v60)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        v64 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.AcquireRequest(v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BD0, &qword_197A92C40);
        v65 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v65, v66, v67);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v68, v69, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v76);
      }

      v77 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v77;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v78);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979DFFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v20 = *(v16 + 160);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v21, v22);
  OUTLINED_FUNCTION_45_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v81 = OUTLINED_FUNCTION_9_5();
          v82(v81);
          sub_197A21F90();
          v83 = OUTLINED_FUNCTION_42();
          v84(v83);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v85, v86);
        v87 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v87, v88);
        OUTLINED_FUNCTION_201();
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 96);
        v66 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 88);
        if (v70)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          v75 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.AcquireRequest(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BD0, &qword_197A92C40);
          v76 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v76, v77, v78);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v79, v80, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v89);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v90, v91);
        v92 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v92;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v93);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E0664(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BB8, &qword_197A92C20);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E085C, v2, 0);
}

uint64_t sub_1979E085C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E08E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E09F4()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A04D34();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979E0B1C;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E0B1C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E0C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_9_5();
          v79(v78);
          sub_197A21F90();
          v80 = OUTLINED_FUNCTION_42();
          v81(v80);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v82, v83);
        v84 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v84, v85);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 96);
        v63 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 88);
        if (v67)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          v72 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ReleaseRequest(v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BC0, &qword_197A92C28);
          v73 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v73, v74, v75);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v86);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v89;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v90);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29_4();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &unk_1EAF49BB8);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49BB8);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_14_8();
        v71(v70);
        sub_197A21F90();
        v72 = OUTLINED_FUNCTION_60_3();
        v73(v72);
      }

      v74 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v74, v75);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 96);
      v55 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_221();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 88);
      if (v60)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        v64 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.ReleaseRequest(v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BC0, &qword_197A92C28);
        v65 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v65, v66, v67);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v68, v69, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v76);
      }

      v77 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v77;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v78);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E19A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v20 = *(v16 + 160);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v21, v22);
  OUTLINED_FUNCTION_45_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v81 = OUTLINED_FUNCTION_9_5();
          v82(v81);
          sub_197A21F90();
          v83 = OUTLINED_FUNCTION_42();
          v84(v83);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v85, v86);
        v87 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v87, v88);
        OUTLINED_FUNCTION_201();
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 96);
        v66 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 88);
        if (v70)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          v75 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ReleaseRequest(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BC0, &qword_197A92C28);
          v76 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v76, v77, v78);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v79, v80, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v89);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v90, v91);
        v92 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v92;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v93);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E2050(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_197A87298();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for ModelManagerError();
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v8 = type metadata accessor for ModelXPCRequest(0);
  v2[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B90, &qword_197A92C08);
  v2[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for IPCSessionWrapper(0);
  v2[18] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E2244, v1, 0);
}

uint64_t sub_1979E2244()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_129_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_105_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_70_4(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E22C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 176);
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 40);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E23DC()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_69_4();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_34_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_216(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A04B88();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979E24F0;
  v9 = v1[16];
  v11 = v1[14];
  v10 = v1[15];
  OUTLINED_FUNCTION_8_7(v12, v1[17]);
  OUTLINED_FUNCTION_191();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E24F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 192);
  *v4 = *v2;
  *(v3 + 200) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 40);
  sub_1979636E8(*(v6 + 120), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E2630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 184);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v77 = OUTLINED_FUNCTION_12_6();
          v78(v77);
          sub_197A21F90();
          v79 = OUTLINED_FUNCTION_42();
          v80(v79);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v81, v82);
        v83 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v83, v84);
        OUTLINED_FUNCTION_201();
        v33 = v19;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 88);
        v63 = *(v16 + 96);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 80);
        if (v67)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.FetchAssertionsRequest;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B98, &qword_197A92C10);
          v72 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v72, v73, v74);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v75, v76, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v85);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v86, v87);
        v88 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v88;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v89);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E3390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 152);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  v22 = *(v16 + 200);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v80 = OUTLINED_FUNCTION_12_6();
          v81(v80);
          sub_197A21F90();
          v82 = OUTLINED_FUNCTION_42();
          v83(v82);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v84, v85);
        v86 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v86, v87);
        OUTLINED_FUNCTION_201();
        v36 = v22;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 88);
        v66 = *(v16 + 96);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 80);
        if (v70)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.FetchAssertionsRequest;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B98, &qword_197A92C10);
          v75 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v75, v76, v77);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v78, v79, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v88);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v89, v90);
        v91 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v91;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v92);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E3A40(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B80, &qword_197A92BF0);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E3C38, v2, 0);
}

uint64_t sub_1979E3C38()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E3CBC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E3DD0()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v5 = OUTLINED_FUNCTION_21_5();
  v6(v5);
  OUTLINED_FUNCTION_6_7();
  *v2 = v4;
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  sub_197A878A8();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v7);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v8, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A049DC();
  OUTLINED_FUNCTION_57_2();
  MEMORY[0xC0] = v9;
  MEMORY[0xC8] = sub_1979E3EF4;
  v10 = v1[17];
  v12 = v1[15];
  v11 = v1[16];
  OUTLINED_FUNCTION_8_7(v13, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E3EF4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v77 = OUTLINED_FUNCTION_9_5();
          v78(v77);
          sub_197A21F90();
          v79 = OUTLINED_FUNCTION_42();
          v80(v79);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v81, v82);
        v83 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v83, v84);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 96);
        v63 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 88);
        if (v67)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.RestoreAssertionsRequest;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B88, &qword_197A92BF8);
          v72 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v72, v73, v74);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v75, v76, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v85);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v86, v87);
        v88 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v88;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v89);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E46D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29_4();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &unk_1EAF49B80);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49B80);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v69 = OUTLINED_FUNCTION_14_8();
        v70(v69);
        sub_197A21F90();
        v71 = OUTLINED_FUNCTION_60_3();
        v72(v71);
      }

      v73 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v73, v74);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 96);
      v55 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_221();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 88);
      if (v60)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        OUTLINED_FUNCTION_19_8();
        *(v16 + 24) = &type metadata for ModelXPCRequest.RestoreAssertionsRequest;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B88, &qword_197A92BF8);
        v64 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v64, v65, v66);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v67, v68, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v75);
      }

      v76 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v76;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v77);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E4D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v20 = *(v16 + 160);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v21, v22);
  OUTLINED_FUNCTION_45_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v80 = OUTLINED_FUNCTION_9_5();
          v81(v80);
          sub_197A21F90();
          v82 = OUTLINED_FUNCTION_42();
          v83(v82);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v84, v85);
        v86 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v86, v87);
        OUTLINED_FUNCTION_201();
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 96);
        v66 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 88);
        if (v70)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.RestoreAssertionsRequest;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B88, &qword_197A92BF8);
          v75 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v75, v76, v77);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v78, v79, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v88);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v89, v90);
        v91 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v91;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v92);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E5434(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_197A87298();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = type metadata accessor for ModelManagerError();
  *(v5 + 88) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v11 = type metadata accessor for ModelXPCRequest(0);
  *(v5 + 128) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CA0, &qword_197A92D40);
  *(v5 + 144) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v15 = type metadata accessor for IPCSessionWrapper(0);
  *(v5 + 160) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E5630, v4, 0);
}

uint64_t sub_1979E5630()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_235();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 192) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_195(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E56B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 56);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E57CC()
{
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v20 = *(v0 + 128);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 224);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_197947900(*(v0 + 184), &qword_1EAF499A8);
  v9 = OUTLINED_FUNCTION_21_5();
  v10(v9);
  OUTLINED_FUNCTION_6_7();
  *v3 = v7;
  *(v3 + 8) = v8;
  *(v3 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  sub_197A878A8();
  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v12, v7);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05DE4();
  OUTLINED_FUNCTION_57_2();
  *v11 = v13;
  v11[1] = sub_1979E5918;
  v14 = *(v0 + 144);
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  OUTLINED_FUNCTION_8_7(v17, *(v0 + 152));
  OUTLINED_FUNCTION_253();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E5918()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 208);
  *v4 = *v2;
  *(v3 + 216) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 56);
  sub_1979636E8(*(v6 + 136), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E5A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_239();
        sub_197944528();
        OUTLINED_FUNCTION_95_3();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v77 = *(v16 + 72);
          v17 = *(v16 + 80);
          v78 = *(v16 + 56);
          v79 = *(v16 + 64);
          v80 = OUTLINED_FUNCTION_13_6();
          v81(v80);
          sub_197A21F90();
          v82 = OUTLINED_FUNCTION_42();
          v83(v82);
        }

        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v84, v85);
        v86 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v86, v87);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 104);
        v63 = *(v16 + 112);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_247();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 96);
        if (v67)
        {
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.LoadAssetBundle;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CA8, &unk_197A92D48);
          v72 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v72, v73, v74);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v75, v76, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v88);
        }

        OUTLINED_FUNCTION_151_0();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v89, v90);
        v91 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v91;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v92);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E6104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_197();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_106_2();
    sub_197947900(v18, &unk_1EAF49CA0);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v35);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49CA0);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_236();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v36 = sub_197A87608();
    v37 = OUTLINED_FUNCTION_37_4(v36, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v37);
    v38 = sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v39 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v40 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v40);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v41, v42, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v39, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    v43 = *(v16 + 184);
    v44 = *(v16 + 88);

    v45 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v45, v46);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v43, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_240();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v57, qword_1ED87FB48);
      sub_197A878A8();
      v58 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v59);
        OUTLINED_FUNCTION_146(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v62 = *(v16 + 184);
      v63 = *(v16 + 88);
      v64 = OUTLINED_FUNCTION_94_1();
      OUTLINED_FUNCTION_55_4(v64, v65);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_240();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v47 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v47, qword_1ED87FB48);
      sub_197A878A8();
      v48 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v49);
        OUTLINED_FUNCTION_146(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = *(v16 + 176);
      v52 = *(v16 + 184);
      v54 = *(v16 + 64);
      sub_197944528();
      v55 = OUTLINED_FUNCTION_143_1();
      v56 = *(v16 + 176);
      if (v55 == 1)
      {
        sub_197947900(*(v16 + 176), &qword_1EAF499A8);
      }

      else
      {
        v81 = *(v16 + 72);
        v80 = *(v16 + 80);
        v82 = *(v16 + 56);
        v83 = *(v16 + 64);
        v84 = OUTLINED_FUNCTION_17_6();
        v85(v84);
        sub_197A21F90();
        v86 = OUTLINED_FUNCTION_60_3();
        v87(v86);
      }

      v88 = *(v16 + 184);
      v89 = *(v16 + 88);
      v90 = OUTLINED_FUNCTION_93_2();
      OUTLINED_FUNCTION_54_3(v90, v91);
      OUTLINED_FUNCTION_201();
      v34 = v88;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      v25 = sub_197A875E8();
      v26 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v26))
      {
        v27 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v27);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v28, v29, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      v30 = *(v16 + 184);
      v31 = *(v16 + 88);

      v32 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v32, v33);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v34 = v30;
      goto LABEL_37;
    default:
      v67 = *(v16 + 104);
      v66 = *(v16 + 112);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v68 = OUTLINED_FUNCTION_247();
      __swift_project_value_buffer(v68, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v69 = sub_197A875E8();
      v70 = sub_197A87D58();
      v71 = OUTLINED_FUNCTION_118_1(v70);
      v72 = *(v16 + 96);
      if (v71)
      {
        OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v73 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v72, v74);
        OUTLINED_FUNCTION_19_8();
        *(v16 + 24) = &type metadata for ModelXPCRequest.LoadAssetBundle;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CA8, &unk_197A92D48);
        v75 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v75, v76, v77);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v73;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v78, v79, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v72, v92);
      }

      v62 = *(v16 + 184);
      v93 = *(v16 + 104);
      v94 = *(v16 + 88);
      v95 = OUTLINED_FUNCTION_111_2();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v95;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v93, v96);
      break;
  }

  v34 = v62;
LABEL_37:
  sub_197947900(v34, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E67F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 168);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  v22 = *(v16 + 216);
  OUTLINED_FUNCTION_102_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_239();
        sub_197944528();
        OUTLINED_FUNCTION_95_3();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v80 = *(v16 + 72);
          v22 = *(v16 + 80);
          v81 = *(v16 + 56);
          v82 = *(v16 + 64);
          v83 = OUTLINED_FUNCTION_13_6();
          v84(v83);
          sub_197A21F90();
          v85 = OUTLINED_FUNCTION_42();
          v86(v85);
        }

        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v89, v90);
        OUTLINED_FUNCTION_201();
        v36 = v22;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 104);
        v66 = *(v16 + 112);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_247();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 96);
        if (v70)
        {
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.LoadAssetBundle;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CA8, &unk_197A92D48);
          v75 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v75, v76, v77);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v78, v79, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v91);
        }

        OUTLINED_FUNCTION_151_0();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v92, v93);
        v94 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v94;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v95);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E6EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_197A87298();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = type metadata accessor for ModelManagerError();
  v4[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for ModelXPCRequest(0);
  v4[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C78, &qword_197A92D28);
  v4[18] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v14 = type metadata accessor for IPCSessionWrapper(0);
  v4[20] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E70A8, v3, 0);
}

uint64_t sub_1979E70A8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_235();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 192) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_195(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E7130()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 56);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E7244()
{
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_255();
  sub_197947900(v0, &qword_1EAF499A8);
  v6 = OUTLINED_FUNCTION_21_5();
  v7(v6);
  OUTLINED_FUNCTION_6_7();
  *v2 = v5;
  v2[1] = v4;
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  sub_197A878A8();
  v8 = swift_task_alloc();
  v1[26] = v8;
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v9, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05C38();
  OUTLINED_FUNCTION_57_2();
  *v8 = v10;
  v8[1] = sub_1979E7370;
  v11 = v1[18];
  v13 = v1[16];
  v12 = v1[17];
  OUTLINED_FUNCTION_8_7(v14, v1[19]);
  OUTLINED_FUNCTION_253();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E7370()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 208);
  *v4 = *v2;
  *(v3 + 216) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 56);
  sub_1979636E8(*(v6 + 136), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E74B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_189();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_239();
        sub_197944528();
        OUTLINED_FUNCTION_95_3();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v77 = *(v16 + 72);
          v17 = *(v16 + 80);
          v78 = *(v16 + 56);
          v79 = *(v16 + 64);
          v80 = OUTLINED_FUNCTION_13_6();
          v81(v80);
          sub_197A21F90();
          v82 = OUTLINED_FUNCTION_42();
          v83(v82);
        }

        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v84, v85);
        v86 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v86, v87);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 104);
        v63 = *(v16 + 112);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_247();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 96);
        if (v67)
        {
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.HoldAssetBundle;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C80, &qword_197A92D30);
          v72 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v72, v73, v74);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v75, v76, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v88);
        }

        OUTLINED_FUNCTION_151_0();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v89, v90);
        v91 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v91;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v92);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E7B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_197();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_106_2();
    sub_197947900(v18, &unk_1EAF49C78);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v35);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49C78);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_236();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v36 = sub_197A87608();
    v37 = OUTLINED_FUNCTION_37_4(v36, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v37);
    v38 = sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v39 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v40 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v40);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v41, v42, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v39, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    v43 = *(v16 + 184);
    v44 = *(v16 + 88);

    v45 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v45, v46);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v43, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_240();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v57, qword_1ED87FB48);
      sub_197A878A8();
      v58 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v59);
        OUTLINED_FUNCTION_146(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v62 = *(v16 + 184);
      v63 = *(v16 + 88);
      v64 = OUTLINED_FUNCTION_94_1();
      OUTLINED_FUNCTION_55_4(v64, v65);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_240();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v47 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v47, qword_1ED87FB48);
      sub_197A878A8();
      v48 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v49);
        OUTLINED_FUNCTION_146(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = *(v16 + 176);
      v52 = *(v16 + 184);
      v54 = *(v16 + 64);
      sub_197944528();
      v55 = OUTLINED_FUNCTION_143_1();
      v56 = *(v16 + 176);
      if (v55 == 1)
      {
        sub_197947900(*(v16 + 176), &qword_1EAF499A8);
      }

      else
      {
        v81 = *(v16 + 72);
        v80 = *(v16 + 80);
        v82 = *(v16 + 56);
        v83 = *(v16 + 64);
        v84 = OUTLINED_FUNCTION_17_6();
        v85(v84);
        sub_197A21F90();
        v86 = OUTLINED_FUNCTION_60_3();
        v87(v86);
      }

      v88 = *(v16 + 184);
      v89 = *(v16 + 88);
      v90 = OUTLINED_FUNCTION_93_2();
      OUTLINED_FUNCTION_54_3(v90, v91);
      OUTLINED_FUNCTION_201();
      v34 = v88;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      v25 = sub_197A875E8();
      v26 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v26))
      {
        v27 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v27);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v28, v29, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      v30 = *(v16 + 184);
      v31 = *(v16 + 88);

      v32 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v32, v33);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v34 = v30;
      goto LABEL_37;
    default:
      v67 = *(v16 + 104);
      v66 = *(v16 + 112);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v68 = OUTLINED_FUNCTION_247();
      __swift_project_value_buffer(v68, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v69 = sub_197A875E8();
      v70 = sub_197A87D58();
      v71 = OUTLINED_FUNCTION_118_1(v70);
      v72 = *(v16 + 96);
      if (v71)
      {
        OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v73 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v72, v74);
        OUTLINED_FUNCTION_19_8();
        *(v16 + 24) = &type metadata for ModelXPCRequest.HoldAssetBundle;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C80, &qword_197A92D30);
        v75 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v75, v76, v77);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v73;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v78, v79, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v72, v92);
      }

      v62 = *(v16 + 184);
      v93 = *(v16 + 104);
      v94 = *(v16 + 88);
      v95 = OUTLINED_FUNCTION_111_2();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v95;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v93, v96);
      break;
  }

  v34 = v62;
LABEL_37:
  sub_197947900(v34, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E8250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 168);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  v22 = *(v16 + 216);
  OUTLINED_FUNCTION_102_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_239();
        sub_197944528();
        OUTLINED_FUNCTION_95_3();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v80 = *(v16 + 72);
          v22 = *(v16 + 80);
          v81 = *(v16 + 56);
          v82 = *(v16 + 64);
          v83 = OUTLINED_FUNCTION_13_6();
          v84(v83);
          sub_197A21F90();
          v85 = OUTLINED_FUNCTION_42();
          v86(v85);
        }

        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v89, v90);
        OUTLINED_FUNCTION_201();
        v36 = v22;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 104);
        v66 = *(v16 + 112);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_247();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 96);
        if (v70)
        {
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.HoldAssetBundle;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C80, &qword_197A92D30);
          v75 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v75, v76, v77);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v78, v79, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v91);
        }

        OUTLINED_FUNCTION_151_0();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v92, v93);
        v94 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v94;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v95);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E8908(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_197A87298();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for ModelManagerError();
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v8 = type metadata accessor for ModelXPCRequest(0);
  v2[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C60, &qword_197A92D10);
  v2[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for IPCSessionWrapper(0);
  v2[18] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E8AFC, v1, 0);
}

uint64_t sub_1979E8AFC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_129_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_105_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_70_4(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E8B80()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 176);
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 40);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E8C94()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_69_4();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_34_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_216(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05A8C();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979E8DA8;
  v9 = v1[16];
  v11 = v1[14];
  v10 = v1[15];
  OUTLINED_FUNCTION_8_7(v12, v1[17]);
  OUTLINED_FUNCTION_191();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E8DA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 192);
  *v4 = *v2;
  *(v3 + 200) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 40);
  sub_1979636E8(*(v6 + 120), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979E8EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 184);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v77 = OUTLINED_FUNCTION_12_6();
          v78(v77);
          sub_197A21F90();
          v79 = OUTLINED_FUNCTION_42();
          v80(v79);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v81, v82);
        v83 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v83, v84);
        OUTLINED_FUNCTION_201();
        v33 = v19;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 88);
        v63 = *(v16 + 96);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 80);
        if (v67)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.ForceAssetVersionSwitch;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C68, &qword_197A92D18);
          v72 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v72, v73, v74);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v75, v76, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v85);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v86, v87);
        v88 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v88;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v89);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_68_5();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_18_6();
    sub_197947900(v18, &unk_1EAF49C60);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_67_6();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49C60);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_130_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_251();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_174();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_77_5();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_174();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_208();
      sub_197944528();
      OUTLINED_FUNCTION_57_3();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v69 = *(v16 + 56);
        v17 = *(v16 + 64);
        v70 = *(v16 + 40);
        v71 = *(v16 + 48);
        v72 = OUTLINED_FUNCTION_17_6();
        v73(v72);
        sub_197A21F90();
        v74 = OUTLINED_FUNCTION_60_3();
        v75(v74);
      }

      v76 = OUTLINED_FUNCTION_75_5();
      OUTLINED_FUNCTION_54_3(v76, v77);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_252();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 88);
      v55 = *(v16 + 96);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_225();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 80);
      if (v60)
      {
        OUTLINED_FUNCTION_139_0();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        OUTLINED_FUNCTION_19_8();
        *(v16 + 24) = &type metadata for ModelXPCRequest.ForceAssetVersionSwitch;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C68, &qword_197A92D18);
        v64 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v64, v65, v66);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v67, v68, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v78);
      }

      v79 = OUTLINED_FUNCTION_76_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v79;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v80);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E9C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 152);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  v22 = *(v16 + 200);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v80 = OUTLINED_FUNCTION_12_6();
          v81(v80);
          sub_197A21F90();
          v82 = OUTLINED_FUNCTION_42();
          v83(v82);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v84, v85);
        v86 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v86, v87);
        OUTLINED_FUNCTION_201();
        v36 = v22;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 88);
        v66 = *(v16 + 96);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 80);
        if (v70)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.ForceAssetVersionSwitch;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C68, &qword_197A92D18);
          v75 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v75, v76, v77);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v78, v79, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v88);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v89, v90);
        v91 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v91;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v92);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EA2F8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A60, &qword_197A92AF8);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979EA4F0, v2, 0);
}

uint64_t sub_1979EA4F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979EA574()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979EA688()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A03924();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979EA7B0;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979EA7B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979EA8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_9_5();
          v79(v78);
          sub_197A21F90();
          v80 = OUTLINED_FUNCTION_42();
          v81(v80);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v82, v83);
        v84 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v84, v85);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 96);
        v63 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 88);
        if (v67)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          v72 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A68, &qword_197A92B08);
          v73 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v73, v74, v75);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v86);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v89;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v90);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EAF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29_4();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &unk_1EAF49A60);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49A60);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_14_8();
        v71(v70);
        sub_197A21F90();
        v72 = OUTLINED_FUNCTION_60_3();
        v73(v72);
      }

      v74 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v74, v75);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 96);
      v55 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_221();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 88);
      if (v60)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        v64 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A68, &qword_197A92B08);
        v65 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v65, v66, v67);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v68, v69, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v76);
      }

      v77 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v77;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v78);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EB63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v20 = *(v16 + 160);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v21, v22);
  OUTLINED_FUNCTION_45_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v81 = OUTLINED_FUNCTION_9_5();
          v82(v81);
          sub_197A21F90();
          v83 = OUTLINED_FUNCTION_42();
          v84(v83);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v85, v86);
        v87 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v87, v88);
        OUTLINED_FUNCTION_201();
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 96);
        v66 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 88);
        if (v70)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          v75 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A68, &qword_197A92B08);
          v76 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v76, v77, v78);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v79, v80, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v89);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v90, v91);
        v92 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v92;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v93);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EBCE4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_197A87298();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for ModelManagerError();
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v8 = type metadata accessor for ModelXPCRequest(0);
  v2[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AE8, &qword_197A92B60);
  v2[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for IPCSessionWrapper(0);
  v2[18] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979EBED8, v1, 0);
}

uint64_t sub_1979EBED8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_129_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_105_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_70_4(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979EBF5C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 176);
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 40);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979EC070()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_69_4();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_34_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_216(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A03FD4();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979EC184;
  v9 = v1[16];
  v11 = v1[14];
  v10 = v1[15];
  OUTLINED_FUNCTION_8_7(v12, v1[17]);
  OUTLINED_FUNCTION_191();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979EC184()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 192);
  *v4 = *v2;
  *(v3 + 200) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 40);
  sub_1979636E8(*(v6 + 120), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979EC2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 184);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v77 = OUTLINED_FUNCTION_12_6();
          v78(v77);
          sub_197A21F90();
          v79 = OUTLINED_FUNCTION_42();
          v80(v79);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v81, v82);
        v83 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v83, v84);
        OUTLINED_FUNCTION_201();
        v33 = v19;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 88);
        v63 = *(v16 + 96);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 80);
        if (v67)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.DumpState;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AF0, &qword_197A92B68);
          v72 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v72, v73, v74);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v75, v76, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v85);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v86, v87);
        v88 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v88;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v89);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EC968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = OUTLINED_FUNCTION_68_5();
  sub_1979D98F4(v19, v20);
  if (!v15)
  {
    OUTLINED_FUNCTION_18_6();
    sub_197947900(v18, &qword_1EAF49AE8);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v34);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_67_6();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v21, v22);
  v23 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &qword_1EAF49AE8);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v24);
  OUTLINED_FUNCTION_130_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v35 = sub_197A87608();
    v36 = OUTLINED_FUNCTION_37_4(v35, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v36);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v37 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v38);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v39, v40, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v37, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_251();
    v41 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v41, v42);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_174();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v50 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v50, qword_1ED87FB48);
      sub_197A878A8();
      v51 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v52);
        OUTLINED_FUNCTION_146(&dword_197941000, v53, v54, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v55 = OUTLINED_FUNCTION_77_5();
      OUTLINED_FUNCTION_55_4(v55, v56);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_174();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v43 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v43, qword_1ED87FB48);
      sub_197A878A8();
      v44 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v45);
        OUTLINED_FUNCTION_146(&dword_197941000, v46, v47, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_208();
      sub_197944528();
      OUTLINED_FUNCTION_57_3();
      if (v49)
      {
        sub_197947900(v48, &qword_1EAF499A8);
      }

      else
      {
        v71 = *(v16 + 56);
        v17 = *(v16 + 64);
        v72 = *(v16 + 40);
        v73 = *(v16 + 48);
        v74 = OUTLINED_FUNCTION_17_6();
        v75(v74);
        sub_197A21F90();
        v76 = OUTLINED_FUNCTION_60_3();
        v77(v76);
      }

      v78 = OUTLINED_FUNCTION_75_5();
      OUTLINED_FUNCTION_54_3(v78, v79);
      OUTLINED_FUNCTION_201();
      v33 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v26 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v26, qword_1ED87FB48);
      sub_197A875E8();
      v27 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v27))
      {
        v28 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v28);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v29, v30, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_252();
      v31 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v31, v32);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v33 = v23;
      goto LABEL_37;
    default:
      v58 = *(v16 + 88);
      v57 = *(v16 + 96);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v59 = OUTLINED_FUNCTION_225();
      v60 = __swift_project_value_buffer(v59, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v51 = sub_197A875E8();
      v61 = sub_197A87D58();
      v62 = OUTLINED_FUNCTION_118_1(v61);
      v63 = *(v16 + 80);
      if (v62)
      {
        OUTLINED_FUNCTION_139_0();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v64 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v63, v65);
        OUTLINED_FUNCTION_19_8();
        *(v16 + 24) = &type metadata for ModelXPCRequest.DumpState;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AF0, &qword_197A92B68);
        v66 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v66, v67, v68);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v64;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v69, v70, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v63, v80);
      }

      v81 = OUTLINED_FUNCTION_76_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v81;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v60, v82);
      break;
  }

  v33 = v51;
LABEL_37:
  sub_197947900(v33, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979ED014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 152);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  v22 = *(v16 + 200);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v80 = OUTLINED_FUNCTION_12_6();
          v81(v80);
          sub_197A21F90();
          v82 = OUTLINED_FUNCTION_42();
          v83(v82);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v84, v85);
        v86 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v86, v87);
        OUTLINED_FUNCTION_201();
        v36 = v22;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 88);
        v66 = *(v16 + 96);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 80);
        if (v70)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.DumpState;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AF0, &qword_197A92B68);
          v75 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v75, v76, v77);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v78, v79, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v88);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v89, v90);
        v91 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v91;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v92);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979ED6C4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C50, &qword_197A92CE0);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979ED8BC, v2, 0);
}

uint64_t sub_1979ED8BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979ED940()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979EDA54()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05894();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_19797D814;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979EDB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_9_5();
          v79(v78);
          sub_197A21F90();
          v80 = OUTLINED_FUNCTION_42();
          v81(v80);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v82, v83);
        v84 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v84, v85);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 96);
        v63 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 88);
        if (v67)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          v72 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ExecuteRequest(v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C58, &qword_197A92CE8);
          v73 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v73, v74, v75);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v86);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v89;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v90);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EE218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v20 = *(v16 + 160);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v21, v22);
  OUTLINED_FUNCTION_45_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v81 = OUTLINED_FUNCTION_9_5();
          v82(v81);
          sub_197A21F90();
          v83 = OUTLINED_FUNCTION_42();
          v84(v83);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v85, v86);
        v87 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v87, v88);
        OUTLINED_FUNCTION_201();
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 96);
        v66 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 88);
        if (v70)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          v75 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ExecuteRequest(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C58, &qword_197A92CE8);
          v76 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v76, v77, v78);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v79, v80, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v89);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v90, v91);
        v92 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v92;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v93);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EE8C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C28, &qword_197A92CC8);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979EEAB8, v2, 0);
}

uint64_t sub_1979EEAB8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979EEB3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979EEC50()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A0573C();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979EED78;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979EED78()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979EEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_9_5();
          v79(v78);
          sub_197A21F90();
          v80 = OUTLINED_FUNCTION_42();
          v81(v80);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v82, v83);
        v84 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v84, v85);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 96);
        v63 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 88);
        if (v67)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          v72 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C30, &qword_197A92CD0);
          v73 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v73, v74, v75);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v86);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v89;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v90);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EF554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = OUTLINED_FUNCTION_29_4();
  sub_1979D9E24(v19, &qword_1EAF49C28, &qword_197A92CC8);
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &qword_1EAF49C28);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v33);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v20, v21);
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &qword_1EAF49C28);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v23);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v34 = sub_197A87608();
    v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v35);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v36 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v37);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v38, v39, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v36, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v40 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v40, v41);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v49 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v49, qword_1ED87FB48);
      sub_197A878A8();
      v50 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v51);
        OUTLINED_FUNCTION_146(&dword_197941000, v52, v53, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v54 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v54, v55);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v42 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v42, qword_1ED87FB48);
      sub_197A878A8();
      v43 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v44);
        OUTLINED_FUNCTION_146(&dword_197941000, v45, v46, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v48)
      {
        sub_197947900(v47, &qword_1EAF499A8);
      }

      else
      {
        v71 = OUTLINED_FUNCTION_14_8();
        v72(v71);
        sub_197A21F90();
        v73 = OUTLINED_FUNCTION_60_3();
        v74(v73);
      }

      v75 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v75, v76);
      OUTLINED_FUNCTION_201();
      v32 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v25 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v25, qword_1ED87FB48);
      sub_197A875E8();
      v26 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v26))
      {
        v27 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v27);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v28, v29, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v30 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v30, v31);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v32 = v22;
      goto LABEL_37;
    default:
      v57 = *(v16 + 96);
      v56 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v58 = OUTLINED_FUNCTION_221();
      v59 = __swift_project_value_buffer(v58, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v50 = sub_197A875E8();
      v60 = sub_197A87D58();
      v61 = OUTLINED_FUNCTION_118_1(v60);
      v62 = *(v16 + 88);
      if (v61)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v63 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v62, v64);
        v65 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C30, &qword_197A92CD0);
        v66 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v66, v67, v68);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v63;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v69, v70, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v62, v77);
      }

      v78 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v78;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v59, v79);
      break;
  }

  v32 = v50;
LABEL_37:
  sub_197947900(v32, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EFC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v20 = *(v16 + 160);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v21, v22);
  OUTLINED_FUNCTION_45_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v81 = OUTLINED_FUNCTION_9_5();
          v82(v81);
          sub_197A21F90();
          v83 = OUTLINED_FUNCTION_42();
          v84(v83);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v85, v86);
        v87 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v87, v88);
        OUTLINED_FUNCTION_201();
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 96);
        v66 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 88);
        if (v70)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          v75 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C30, &qword_197A92CD0);
          v76 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v76, v77, v78);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v79, v80, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v89);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v90, v91);
        v92 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v92;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v93);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979F02C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C18, &qword_197A92CB0);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979F04B8, v2, 0);
}

uint64_t sub_1979F04B8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979F053C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979F0650()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05590();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979F0778;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979F0778()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979F08B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_9_5();
          v79(v78);
          sub_197A21F90();
          v80 = OUTLINED_FUNCTION_42();
          v81(v80);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v82, v83);
        v84 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v84, v85);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 96);
        v63 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 88);
        if (v67)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          v72 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.CancelRequest(v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C20, &qword_197A92CB8);
          v73 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v73, v74, v75);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v86);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v89;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v90);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979F0F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29_4();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &unk_1EAF49C18);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49C18);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_14_8();
        v71(v70);
        sub_197A21F90();
        v72 = OUTLINED_FUNCTION_60_3();
        v73(v72);
      }

      v74 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v74, v75);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 96);
      v55 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_221();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 88);
      if (v60)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        v64 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.CancelRequest(v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C20, &qword_197A92CB8);
        v65 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v65, v66, v67);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v68, v69, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v76);
      }

      v77 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v77;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v78);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979F1604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v20 = *(v16 + 160);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v21, v22);
  OUTLINED_FUNCTION_45_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v57 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v57, qword_1ED87FB48);
        sub_197A878A8();
        v58 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v59);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v60, v61, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v62, v63);
        v64 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v64, v65);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v50 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v50, qword_1ED87FB48);
        sub_197A878A8();
        v51 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v52);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v53, v54, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v56)
        {
          sub_197947900(v55, &qword_1EAF499A8);
        }

        else
        {
          v81 = OUTLINED_FUNCTION_9_5();
          v82(v81);
          sub_197A21F90();
          v83 = OUTLINED_FUNCTION_42();
          v84(v83);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v85, v86);
        v87 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v87, v88);
        OUTLINED_FUNCTION_201();
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v32, v33);
        v34 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v34, v35);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v36 = v14;
        goto LABEL_35;
      default:
        v67 = *(v16 + 96);
        v66 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v68 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v68, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v58 = sub_197A875E8();
        v69 = sub_197A87D58();
        v70 = OUTLINED_FUNCTION_118_1(v69);
        v71 = *(v16 + 88);
        if (v70)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v72, v73);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v74);
          v75 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.CancelRequest(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C20, &qword_197A92CB8);
          v76 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v76, v77, v78);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v71;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v79, v80, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v71, v89);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v90, v91);
        v92 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v92;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v93);
        break;
    }

    v36 = v58;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v46, v47);
  v48 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v48, v49);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979F1CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5())
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v57, v58, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v59, v60);
        v61 = OUTLINED_FUNCTION_85_3();
        OUTLINED_FUNCTION_38_5(v61, v62);
        OUTLINED_FUNCTION_211();
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v47 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v47, qword_1ED87FB48);
        sub_197A878A8();
        v48 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v49);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v50, v51, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v53)
        {
          sub_197947900(v52, &qword_1EAF499A8);
        }

        else
        {
          v78 = OUTLINED_FUNCTION_9_5();
          v79(v78);
          sub_197A21F90();
          v80 = OUTLINED_FUNCTION_42();
          v81(v80);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v82, v83);
        v84 = OUTLINED_FUNCTION_84_3();
        OUTLINED_FUNCTION_40_4(v84, v85);
        OUTLINED_FUNCTION_201();
        v33 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v21 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v21, qword_1ED87FB48);
        sub_197A875E8();
        v22 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v22))
        {
          v23 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v23);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v24, v25, v26, v27, v28, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v29, v30);
        v31 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_27_6(v31, v32);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201();
        v33 = v14;
        goto LABEL_35;
      default:
        v64 = *(v16 + 96);
        v63 = *(v16 + 104);
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7();
        }

        v65 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v65, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v55 = sub_197A875E8();
        v66 = sub_197A87D58();
        v67 = OUTLINED_FUNCTION_118_1(v66);
        v68 = *(v16 + 88);
        if (v67)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          sub_197955F04(v69, v70);
          OUTLINED_FUNCTION_83_3();
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v71);
          v72 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C10, &qword_197A92CA0);
          v73 = OUTLINED_FUNCTION_218();
          OUTLINED_FUNCTION_219(v73, v74, v75);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v68;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v68, v86);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        sub_197955F04(v87, v88);
        v89 = OUTLINED_FUNCTION_71_5();
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v89;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v90);
        break;
    }

    v33 = v55;
LABEL_35:
    sub_197947900(v33, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7();
  }

  v34 = sub_197A87608();
  v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v35);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v37);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v43, v44);
  v45 = OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_27_6(v45, v46);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201();

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
}