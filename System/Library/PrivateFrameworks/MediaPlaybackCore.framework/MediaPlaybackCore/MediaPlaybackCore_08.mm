uint64_t sub_1C5D32874()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_235();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_172();

    return v10();
  }
}

uint64_t sub_1C5D32988()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v2, qword_1ED7E1690);
  v3 = v1;
  v4 = sub_1C60162B0();
  sub_1C6016F20();

  v5 = OUTLINED_FUNCTION_48_3();
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_112();
    v8 = OUTLINED_FUNCTION_110();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_4_19();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_1C5CB5700(v8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_172();

  return v16();
}

uint64_t sub_1C5D32ACC()
{
  sub_1C6016C10();
  v3 = v0;
  return sub_1C5D3417C(sub_1C5D3814C, &v2);
}

uint64_t sub_1C5D32B40(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 shared];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = a1;
  sub_1C5C82CC8(0xD00000000000001BLL, 0x80000001C604B010, &unk_1C60371D0, v4, 0, 0);
  swift_unknownObjectRelease();

  v6 = [v2 shared];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = v5;
  sub_1C5C82CC8(0xD000000000000024, 0x80000001C604B030, &unk_1C60371E0, v7, 0, 0);
  swift_unknownObjectRelease();

  if (*(*&v8[OBJC_IVAR___MPCFairPlayPerformanceController_context] + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_isAppActive) == 1)
  {
    return sub_1C5C82BD0();
  }

  return result;
}

uint64_t sub_1C5D32CD8()
{
  v0[2] = sub_1C6016C10();
  v0[3] = sub_1C6016C00();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C5D32D84;

  return sub_1C5D32EA8();
}

uint64_t sub_1C5D32D84()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  sub_1C6016BA0();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_103();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D32EA8()
{
  v1[5] = v0;
  v1[6] = sub_1C6016C10();
  v1[7] = sub_1C6016C00();
  v3 = sub_1C6016BA0();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5D32F44, v3, v2);
}

uint64_t sub_1C5D32F44()
{
  v1 = [objc_opt_self() sharedManager];
  v0[10] = v1;
  v40 = v1;
  v2 = [v1 accounts];
  sub_1C5C64D74(0, &unk_1EC1A8BB0);
  v3 = sub_1C6016B10();

  v4 = sub_1C5C6AA20();
  v5 = 0;
  if (!v4)
  {
    v6 = v3 & 0xC000000000000001;
LABEL_19:
    v24 = OUTLINED_FUNCTION_45_0();
    sub_1C5D85598(v24);
    sub_1C5D85598(v4);
    if (!v6 || v5 == v4)
    {
    }

    else
    {
      if (v5 >= v4)
      {
LABEL_41:
        __break(1u);
        return MEMORY[0x1EEE6DDE8]();
      }

      v25 = v5;
      do
      {
        v26 = v25 + 1;
        sub_1C6017550();
        v25 = v26;
      }

      while (v4 != v26);
    }

    if (v3 >> 62)
    {
      goto LABEL_39;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {

      v27 = v3 & 0xFFFFFFFFFFFFFF8;
      v28 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
      v29 = (2 * v4) | 1;
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_41;
  }

  v6 = v3 & 0xC000000000000001;
  v41 = v3 & 0xFFFFFFFFFFFFFF8;
  v42 = OBJC_IVAR___MPCFairPlayPerformanceController_context;
  v43 = v0[5];
  v44 = v3 & 0xC000000000000001;
  v45 = v3;
  while (1)
  {
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_45_0();
      v8 = MEMORY[0x1C6954040](v7);
    }

    else
    {
      if (v5 >= *(v41 + 16))
      {
        goto LABEL_38;
      }

      v8 = *(v3 + 8 * v5 + 32);
    }

    v9 = v8;
    if ([v8 isDelegated])
    {
      goto LABEL_12;
    }

    v10 = *(v43 + v42);
    v11 = [v9 shortHashedDSID];
    v12 = sub_1C6016940();
    v14 = v13;

    v15 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_accountPrewarm;
    swift_beginAccess();
    v16 = *(v10 + v15);
    if (!*(v16 + 16))
    {
      break;
    }

    v17 = sub_1C5CE2084(v12, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

    v20 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v6 = v44;
    v3 = v45;
    if (!*(v20 + 16))
    {
      goto LABEL_18;
    }

    sub_1C60179F0();

    sub_1C60169F0();
    v21 = sub_1C6017A20() & ~(-1 << *(v20 + 32));
    v22 = *(v20 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);

    if (((v22 >> v21) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:

    v23 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_37;
    }

    ++v5;
    if (v23 == v4)
    {
      v5 = v4;
      goto LABEL_19;
    }
  }

LABEL_17:
  swift_endAccess();
  v6 = v44;
  v3 = v45;
LABEL_18:

  if (v4 >= v5)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  v27 = sub_1C60176D0();
  v28 = v36;
  v5 = v37;
  v29 = v38;

LABEL_29:
  v0[11] = v27;
  if (v5 == v29 >> 1)
  {

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_30_7();

    __asm { BRAA            X1, X16 }
  }

  v32 = v0[5];
  v0[12] = sub_1C6016C00();
  v33 = swift_task_alloc();
  v0[13] = v33;
  v33[2] = v27;
  v33[3] = v28;
  v33[4] = v5;
  v33[5] = v29;
  v33[6] = v32;
  v34 = swift_task_alloc();
  v0[14] = v34;
  *v34 = v0;
  v34[1] = sub_1C5D333B0;
  OUTLINED_FUNCTION_30_7();

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1C5D333B0()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_101();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C5D33504, v5, v4);
}

uint64_t sub_1C5D33504()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5D3356C()
{
  v0[2] = sub_1C6016C10();
  v0[3] = sub_1C6016C00();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C5CF348C;

  return sub_1C5D33618();
}

uint64_t sub_1C5D33618()
{
  v1[33] = v0;
  v2 = sub_1C6014F20();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_1C6016C10();
  v1[38] = sub_1C6016C00();
  v4 = sub_1C6016BA0();
  v1[39] = v4;
  v1[40] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C5D33718, v4, v3);
}

uint64_t sub_1C5D33718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_35();
  if (*(*(v12[33] + OBJC_IVAR___MPCFairPlayPerformanceController_context) + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_hasPrewarmedPastis))
  {
  }

  else
  {
    v13 = [objc_opt_self() sharedManager];
    v12[41] = v13;
    v14 = [v13 accounts];
    sub_1C5C64D74(0, &unk_1EC1A8BB0);
    OUTLINED_FUNCTION_34_4();
    v15 = sub_1C6016B10();

    if (sub_1C5C6AA20())
    {
      v16 = sub_1C5C6AA20();
      for (i = 0; ; ++i)
      {
        if (v16 == i)
        {

LABEL_15:

          goto LABEL_26;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          v21 = OUTLINED_FUNCTION_102_0();
          v18 = MEMORY[0x1C6954040](v21);
        }

        else
        {
          if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v18 = *(v15 + 8 * i + 32);
        }

        v19 = v18;
        v12[42] = v18;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v20 = [v18 bag];
        if (v20)
        {
          break;
        }
      }

      v22 = [v19 bag];
      v12[43] = v22;
      if (v22)
      {
        v23 = v22;
        v24 = [v22 urlForBagKey_];
        if (v24)
        {
          v25 = v24;
          v26 = v12[36];
          sub_1C6014EC0();

          v27 = OUTLINED_FUNCTION_252();
          v28(v27);
          v29 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
          sub_1C5D37CC8(0, &qword_1EC1A9220);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C60311E0;
          v12[31] = @"network-request-initiator";
          type metadata accessor for MPCPlaybackEngineEventPayloadKey();
          OUTLINED_FUNCTION_2_19();
          sub_1C5C66260(v31, v32);
          v33 = @"network-request-initiator";
          sub_1C60174C0();
          v34 = sub_1C6016900();
          *(inited + 96) = sub_1C5C64D74(0, &qword_1EC1A92B0);
          *(inited + 72) = v34;
          OUTLINED_FUNCTION_102_0();
          sub_1C6016880();
          v35 = objc_allocWithZone(MPCNetworkRequestMonitoredTag);
          v36 = v29;
          OUTLINED_FUNCTION_102_0();
          v37 = sub_1C6016840();

          v38 = [v35 initWithContextInfo:v37 engineInfoProvider:v36];

          v39 = sub_1C5CBBF68(v38);
          v40 = objc_allocWithZone(MEMORY[0x1E69E4620]);
          v41 = sub_1C5D37940(v26, v39, MEMORY[0x1E6968F90], &selRef_initWithURL_requestContext_, MEMORY[0x1E6968FB0]);
          v12[44] = v41;
          if (qword_1ED7DD2B0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v42 = sub_1C60162D0();
          v12[45] = __swift_project_value_buffer(v42, qword_1ED7E1690);
          v43 = v41;
          v44 = sub_1C60162B0();
          sub_1C6016F00();

          if (OUTLINED_FUNCTION_48_3())
          {
            v45 = OUTLINED_FUNCTION_112();
            v46 = OUTLINED_FUNCTION_110();
            *v45 = 138543362;
            *(v45 + 4) = v43;
            *v46 = v43;
            v47 = v43;
            OUTLINED_FUNCTION_4_19();
            _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
            sub_1C5CB5700(v46);
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_35_1();
          }

          v12[46] = [objc_opt_self() defaultSession];
          v12[2] = v12;
          v12[7] = v12 + 32;
          v53 = OUTLINED_FUNCTION_54_1();
          sub_1C5D38004();
          v12[30] = v54;
          v12[23] = MEMORY[0x1E69E9820];
          v12[24] = 1107296256;
          v12[25] = sub_1C5CA6B88;
          v12[26] = &block_descriptor_45;
          v12[27] = v53;
          OUTLINED_FUNCTION_50_3(v54, sel_enqueueDataRequest_withCompletionHandler_);
          OUTLINED_FUNCTION_25_7();

          return MEMORY[0x1EEE6DEC8](v55);
        }

        goto LABEL_15;
      }

LABEL_26:
      if (qword_1ED7DD2B0 == -1)
      {
        goto LABEL_27;
      }

LABEL_36:
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_27:
      v57 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v57, qword_1ED7E1690);
      v58 = sub_1C60162B0();
      v59 = sub_1C6016F20();
      if (os_log_type_enabled(v58, v59))
      {
        *OUTLINED_FUNCTION_42() = 0;
        OUTLINED_FUNCTION_4_19();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        OUTLINED_FUNCTION_35_1();
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_25_7();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12);
}

uint64_t sub_1C5D33D90()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 376) = v4;
  v5 = v3[40];
  v6 = v3[39];
  if (v4)
  {
    v7 = sub_1C5D33FE8;
  }

  else
  {
    v7 = sub_1C5D33EB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C5D33EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_35();
  v13 = *(v12 + 368);

  v14 = sub_1C60162B0();
  v15 = sub_1C6016F00();
  v16 = os_log_type_enabled(v14, v15);
  v18 = *(v12 + 344);
  v17 = *(v12 + 352);
  v20 = *(v12 + 328);
  v19 = *(v12 + 336);
  v21 = *(v12 + 296);
  v22 = *(v12 + 272);
  v23 = *(v12 + 280);
  if (v16)
  {
    v24 = OUTLINED_FUNCTION_42();
    a9 = v22;
    *v24 = 0;
    _os_log_impl(&dword_1C5C61000, v14, v15, "[FPPC] prewarmPastis | finished []", v24, 2u);
    OUTLINED_FUNCTION_4();
    v25 = v20;
    v20 = v14;
  }

  else
  {
    v25 = *(v12 + 352);
    v17 = v14;
  }

  (*(v23 + 8))(v21, v22);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_25_7();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1C5D33FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_60_2();
  v18 = v16[46];
  v17 = v16[47];

  swift_willThrow();

  v19 = v17;
  v20 = sub_1C60162B0();
  v21 = sub_1C6016F20();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v16[47];
  v24 = v16[44];
  v44 = v16[43];
  v25 = v16[41];
  v26 = v16[42];
  v27 = v16[34];
  if (v22)
  {
    a11 = v16[37];
    v28 = OUTLINED_FUNCTION_112();
    a10 = v27;
    v29 = OUTLINED_FUNCTION_110();
    *v28 = 138543362;
    v30 = v23;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_1C5C61000, v20, v21, "[FPPC] prewarmPastis | failed [request failed] error=%{public}@", v28, 0xCu);
    sub_1C5CB5700(v29);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
    v32 = v25;
    v25 = v20;
  }

  else
  {
    v32 = v16[44];
    v24 = v20;
  }

  v33 = OUTLINED_FUNCTION_55_2();
  v34(v33);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, v44, a13, a14, a15, a16);
}

uint64_t sub_1C5D3417C(uint64_t a1, uint64_t a2)
{
  sub_1C6016C00();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1C5D38168();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003FLL, 0x80000001C604AFD0);
    v8 = sub_1C6017AD0();
    MEMORY[0x1C69534E0](v8);

    MEMORY[0x1C69534E0](46, 0xE100000000000000);
    result = sub_1C60176A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D34390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a2;
  sub_1C5C671CC();
  v7[10] = swift_task_alloc();
  sub_1C6016C10();
  v7[11] = sub_1C6016C00();
  v9 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5D3445C, v9, v8);
}

void sub_1C5D3445C()
{
  v46 = v0;
  v1 = v0;
  v2 = v0[7];
  v3 = v0[8] >> 1;
  if (v3 != v2)
  {
    v4 = 0;
    v39 = OBJC_IVAR___MPCFairPlayPerformanceController_context;
    v40 = v1[9];
    v38 = v3;
    while (1)
    {
      if (v2 >= v3)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v6 = *(v1[6] + 8 * v2);
      v7 = [v6 shortHashedDSID];
      v8 = sub_1C6016940();
      v10 = v9;

      v11 = [v6 bag];
      if (v11)
      {
        v41 = v11;
        v42 = v6;
        v43 = v2;
        v12 = *(v40 + v39);
        v13 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_accountPrewarm;
        OUTLINED_FUNCTION_24_7();
        sub_1C5C74C18(v4);
        swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v12 + v13);
        v14 = v45;
        *(v12 + v13) = 0x8000000000000000;
        v15 = v8;
        v16 = v10;
        v17 = sub_1C5CE2084(v8, v10);
        if (__OFADD__(*(v14 + 16), (v18 & 1) == 0))
        {
          goto LABEL_27;
        }

        v19 = v17;
        v20 = v18;
        sub_1C5D38444();
        v21 = sub_1C6017660();
        v22 = v45;
        if (v21)
        {
          v23 = sub_1C5CE2084(v15, v16);
          if ((v20 & 1) != (v24 & 1))
          {

            sub_1C60178D0();
            return;
          }

          v19 = v23;
        }

        *(v12 + v13) = v22;
        v3 = v38;
        if ((v20 & 1) == 0)
        {
          sub_1C5E370E4(v19, v15, v16, MEMORY[0x1E69E7CD0], v22);
        }

        v25 = v1[10];
        sub_1C5E1F478();
        swift_endAccess();
        v26 = sub_1C6016C30();
        __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
        v27 = swift_allocObject();
        v27[2] = 0;
        v27[3] = 0;
        v27[4] = v15;
        v27[5] = v16;
        v27[6] = v41;
        v27[7] = v42;
        sub_1C5E3ABB4(v25, &unk_1C6037228, v27);
        sub_1C5C7ACE0(v25);
        v4 = sub_1C5D3488C;
        v2 = v43;
      }

      else
      {
        if (qword_1ED7DD2B0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v28 = sub_1C60162D0();
        OUTLINED_FUNCTION_144(v28, qword_1ED7E1690);

        v29 = sub_1C60162B0();
        v30 = sub_1C6016F20();

        if (os_log_type_enabled(v29, v30))
        {
          v44 = v2;
          v31 = OUTLINED_FUNCTION_112();
          v32 = OUTLINED_FUNCTION_21();
          v33 = v8;
          v34 = v4;
          v35 = v10;
          v36 = v32;
          v45 = v32;
          *v31 = 136446210;
          v37 = sub_1C5C6AB10(v33, v35, &v45);
          v4 = v34;

          *(v31 + 4) = v37;
          _os_log_impl(&dword_1C5C61000, v29, v30, "[FPPC] prewarmSAP | skipping [account missing bag] account=%{public}s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          OUTLINED_FUNCTION_28();
          v2 = v44;
          OUTLINED_FUNCTION_4();
        }

        else
        {
        }
      }

      if (v3 == ++v2)
      {
        goto LABEL_3;
      }
    }
  }

  v4 = 0;
LABEL_3:

  sub_1C5C74C18(v4);

  v5 = v1[1];

  v5();
}

uint64_t sub_1C5D3489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[34] = a3;
  v6[35] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C5D348C0, 0, 0);
}

uint64_t sub_1C5D348C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_60_2();
  a22 = v24;
  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v27 = sub_1C60162D0();
  v24[38] = __swift_project_value_buffer(v27, qword_1ED7E1690);

  v28 = sub_1C60162B0();
  v29 = sub_1C6016F00();

  if (OUTLINED_FUNCTION_48_3())
  {
    v31 = v24[34];
    v30 = v24[35];
    v32 = OUTLINED_FUNCTION_112();
    a13 = OUTLINED_FUNCTION_21();
    *v32 = 136446210;
    *(v32 + 4) = sub_1C5C6AB10(v31, v30, &a13);
    OUTLINED_FUNCTION_34_5(&dword_1C5C61000, v33, v29, "[FPPC] prewarmSAP | getting session [] account=%{public}s");
    OUTLINED_FUNCTION_12_12();
    OUTLINED_FUNCTION_28();
  }

  v74 = v24[36];
  v75 = v24[35];
  v73 = objc_opt_self();
  HIDWORD(a9) = *MEMORY[0x1E69E4218];
  v34 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  sub_1C5D37CC8(0, &qword_1EC1A9220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  v24[33] = @"network-request-initiator";
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_2_19();
  sub_1C5C66260(v36, v37);
  v38 = @"network-request-initiator";
  sub_1C60174C0();
  v39 = sub_1C6016900();
  *(inited + 96) = sub_1C5C64D74(0, &qword_1EC1A92B0);
  *(inited + 72) = v39;
  sub_1C6016880();
  v40 = objc_allocWithZone(MPCNetworkRequestMonitoredTag);
  v41 = v34;
  v42 = sub_1C6016840();

  v43 = [v40 initWithContextInfo:v42 engineInfoProvider:v41];

  v44 = sub_1C5CBBF68(v43);
  v45 = [v73 sharedSAPSessionWithVersion:HIDWORD(a9) URLBag:v74 requestContext:v44];
  v24[39] = v45;

  v46 = sub_1C60162B0();
  if (v45)
  {
    v47 = sub_1C6016F00();

    if (OUTLINED_FUNCTION_67())
    {
      v48 = OUTLINED_FUNCTION_112();
      a13 = OUTLINED_FUNCTION_21();
      *v48 = 136446210;
      v49 = OUTLINED_FUNCTION_102_0();
      *(v48 + 4) = sub_1C5C6AB10(v49, v50, v51);
      OUTLINED_FUNCTION_34_5(&dword_1C5C61000, v52, v47, "[FPPC] prewarmSAP | signing data [] account=%{public}s");
      OUTLINED_FUNCTION_12_12();
      OUTLINED_FUNCTION_28();
    }

    v53 = sub_1C6014F50();
    v24[40] = v53;
    v24[2] = v24;
    v24[7] = v24 + 31;
    v54 = OUTLINED_FUNCTION_54_1();
    sub_1C5D38560(0, &unk_1EC1A8D48);
    v24[30] = v55;
    v24[23] = MEMORY[0x1E69E9820];
    v24[24] = 1107296256;
    v24[25] = sub_1C5D35168;
    v24[26] = &block_descriptor_55;
    v24[27] = v54;
    [v45 signData:v53 withCompletionHandler:v24 + 23];
    OUTLINED_FUNCTION_14_0();

    return MEMORY[0x1EEE6DEC8](v56);
  }

  else
  {
    v58 = sub_1C6016F20();

    if (OUTLINED_FUNCTION_67())
    {
      v60 = v24[34];
      v59 = v24[35];
      v61 = OUTLINED_FUNCTION_112();
      v62 = OUTLINED_FUNCTION_21();
      a13 = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_1C5C6AB10(v60, v59, &a13);
      OUTLINED_FUNCTION_52_4(&dword_1C5C61000, v63, v58, "[FPPC] prewarmSAP | failed [session creation failed] account=%{public}s");
      __swift_destroy_boxed_opaque_existential_0(v62);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_14_0();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, v73, v74, v75, a13, a14, a15, a16);
  }
}

uint64_t sub_1C5D34DC8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5D34EC4()
{
  v14 = v0;
  v1 = v0[40];
  sub_1C5C8F8BC(v0[31], v0[32]);

  v2 = sub_1C60162B0();
  v3 = sub_1C6016F00();

  v4 = OUTLINED_FUNCTION_67();
  v5 = v0[39];
  if (v4)
  {
    v7 = v0[34];
    v6 = v0[35];
    v8 = OUTLINED_FUNCTION_112();
    v9 = OUTLINED_FUNCTION_21();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1C5C6AB10(v7, v6, &v13);
    OUTLINED_FUNCTION_52_4(&dword_1C5C61000, v10, v3, "[FPPC] prewarmSAP | finished [] account=%{public}s");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_172();

  return v11();
}

uint64_t sub_1C5D34FDC()
{
  v23 = v0;
  v2 = v0[40];
  v1 = v0[41];
  swift_willThrow();

  v3 = v1;
  v4 = sub_1C60162B0();
  sub_1C6016F20();

  v5 = OUTLINED_FUNCTION_48_3();
  v6 = v0[41];
  v7 = v0[39];
  if (v5)
  {
    v9 = v0[34];
    v8 = v0[35];
    v10 = OUTLINED_FUNCTION_68_0();
    v11 = OUTLINED_FUNCTION_110();
    v12 = OUTLINED_FUNCTION_21();
    v22 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_1C5C6AB10(v9, v8, &v22);
    *(v10 + 12) = 2114;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    OUTLINED_FUNCTION_4_19();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    sub_1C5CB5700(v11);
    OUTLINED_FUNCTION_4();
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_172();

  return v20();
}

uint64_t sub_1C5D35168(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C5E0232C(v5, v6);
  }

  else
  {
    v8 = a2;
    v9 = sub_1C6014F60();
    v11 = v10;

    return sub_1C5E02330(v5, v9, v11);
  }
}

void sub_1C5D3520C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C6016900();
  v5 = [a3 valueForKey_];

  if (v5)
  {
    sub_1C6017390();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0);
    if (OUTLINED_FUNCTION_51_3())
    {
      v6 = [v19 integerValue];

      goto LABEL_9;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v22);
  }

  v6 = sub_1C6014B90();
LABEL_9:
  v7 = sub_1C6016900();
  v8 = [a3 valueForKey_];

  if (v8)
  {
    sub_1C6017390();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0);
    if (OUTLINED_FUNCTION_51_3())
    {
      v9 = [v19 integerValue];

      goto LABEL_17;
    }
  }

  else
  {
    sub_1C5CBCF4C(&v22);
  }

  v9 = sub_1C6014B90();
LABEL_17:
  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v10 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v10, qword_1ED7E1690);
  v11 = sub_1C60162B0();
  v12 = sub_1C6016F00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_68_0();
    *v13 = 134218240;
    *(v13 + 4) = v6;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v9;
    _os_log_impl(&dword_1C5C61000, v11, v12, "[FPPC] databaseDidFinish | received [] objects=%ld assets=%ld", v13, 0x16u);
    OUTLINED_FUNCTION_28();
  }

  v14 = sub_1C6014B90();
  if (v9 < 1 || v9 == v14)
  {
    v16 = sub_1C60162B0();
    v17 = sub_1C6016F00();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_33_2(v18);
      _os_log_impl(&dword_1C5C61000, v16, v17, "[FPPC] databaseDidFinish | skipping [no new assets]", v6, 2u);
      OUTLINED_FUNCTION_11_8();
    }
  }

  else
  {
    sub_1C5D354FC();
  }
}

void sub_1C5D354FC()
{
  v0 = [objc_opt_self() shared];
  sub_1C5C82CC8(0xD00000000000001CLL, 0x80000001C604AEA0, &unk_1C60371B0, 0, 0, 0);
  swift_unknownObjectRelease();
}

_BYTE *_s8_ContextC8WarmableOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C5D356D8()
{
  result = qword_1EC1AB4F8;
  if (!qword_1EC1AB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB4F8);
  }

  return result;
}

uint64_t sub_1C5D3572C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C5D357E4;

  return sub_1C5D35E84();
}

uint64_t sub_1C5D357E4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  *v2 = *v0;
  v1[7] = v3;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5D35908()
{
  v26 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[4];
    v0[8] = v2;
    v3 = [objc_opt_self() sharedServerObjectDatabase];
    v0[5] = 0;
    v4 = [v3 importAssetsFromRequest:v1 error:v0 + 5];

    v5 = v0[5];
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v9 = v5;
      v10 = sub_1C6014D40();

      swift_willThrow();
      v11 = [v2 shortHashedDSID];
      v12 = sub_1C6016940();
      v14 = v13;

      if (qword_1ED7DD2B0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v15 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v15, qword_1ED7E1690);

      v16 = v10;
      v17 = sub_1C60162B0();
      v18 = sub_1C6016F20();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_68_0();
        v20 = OUTLINED_FUNCTION_110();
        v25[0] = OUTLINED_FUNCTION_21();
        *v19 = 136446466;
        v21 = sub_1C5C6AB10(v12, v14, v25);

        *(v19 + 4) = v21;
        *(v19 + 12) = 2114;
        v22 = v10;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v23;
        *v20 = v23;
        _os_log_impl(&dword_1C5C61000, v17, v18, "[FPPC] loadMiniSinfs | failed [import failed] account=%{public}s error=%{public}@", v19, 0x16u);
        sub_1C5CB5700(v20);
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_12_12();
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }
    }

    v0[9] = [objc_opt_self() shared];
    v24 = swift_task_alloc();
    v0[10] = v24;
    *v24 = v0;
    v24[1] = sub_1C5D35C68;

    return sub_1C5E3AD90(0xD000000000000025, 0x80000001C604AEC0);
  }

  else
  {
    OUTLINED_FUNCTION_172();

    return v7();
  }
}

uint64_t sub_1C5D35C68()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_101();
  *v4 = v3;

  v5 = *(v2 + 72);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5D35DC4()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1C5D357E4;

  return sub_1C5D35E84();
}

uint64_t sub_1C5D35E84()
{
  v1 = sub_1C6014BE0();
  v0[68] = v1;
  v0[69] = *(v1 - 8);
  v0[70] = swift_task_alloc();
  v0[71] = swift_task_alloc();
  v2 = sub_1C6014F20();
  v0[72] = v2;
  v0[73] = *(v2 - 8);
  v0[74] = swift_task_alloc();
  v0[75] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5D35FE0, 0, 0);
}

uint64_t sub_1C5D35FE0()
{
  v106 = v1;
  v105[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 accounts];

  sub_1C5C64D74(0, &unk_1EC1A8BB0);
  v4 = sub_1C6016B10();

  v102 = v4;
  v5 = sub_1C5C6AA20();
  if (!v5)
  {
LABEL_13:

    OUTLINED_FUNCTION_65_3();

    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_30_7();

    __asm { BRAA            X3, X16 }
  }

  v6 = v5;
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v100 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = (*(v1 + 584) + 8);
  while (1)
  {
    if (v8)
    {
      v10 = MEMORY[0x1C6954040](v7, v102);
    }

    else
    {
      if (v7 >= *(v100 + 16))
      {
        goto LABEL_35;
      }

      v10 = *(v102 + 8 * v7 + 32);
    }

    v0 = v10;
    *(v1 + 608) = v10;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v12 = [v10 shortHashedDSID];
    v13 = sub_1C6016940();
    v15 = v14;

    *(v1 + 616) = v15;
    v16 = [v0 miniSinfEndpointURL];
    if (!v16)
    {

      goto LABEL_12;
    }

    v17 = v16;
    v101 = v13;
    v103 = v15;
    sub_1C6014EC0();

    v18 = [objc_opt_self() sharedServerObjectDatabase];
    sub_1C5D375DC(v0);
    v20 = v19;

    if (*(v20 + 16))
    {
      break;
    }

    (*v9)(*(v1 + 600), *(v1 + 576));

LABEL_12:
    ++v7;
    if (v11 == v6)
    {
      goto LABEL_13;
    }
  }

  *(v1 + 624) = v101;
  v98 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  sub_1C5D37CC8(0, &qword_1EC1A9220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(v1 + 520) = @"network-request-initiator";
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_2_19();
  sub_1C5C66260(v24, v25);
  v26 = @"network-request-initiator";
  sub_1C60174C0();
  v27 = sub_1C6016900();
  *(inited + 96) = sub_1C5C64D74(0, &qword_1EC1A92B0);
  *(inited + 72) = v27;
  sub_1C6016880();
  v97 = objc_allocWithZone(MPCNetworkRequestMonitoredTag);
  v28 = v98;
  v29 = sub_1C6016840();

  v30 = [v97 initWithContextInfo:v29 engineInfoProvider:v28];

  v31 = sub_1C5CBBF68(v30);
  *(v1 + 632) = v31;

  v32 = MEMORY[0x1E69E6158];
  sub_1C5D37CC8(0, &qword_1EC1A9230);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1C6031150;
  *(v33 + 32) = 1684632935;
  *(v33 + 40) = 0xE400000000000000;
  v99 = v31;
  v34 = sub_1C5D37F94([v31 deviceInfo]);
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  v37 = 0xE000000000000000;
  if (v35)
  {
    v37 = v35;
  }

  *(v33 + 48) = v36;
  *(v33 + 56) = v37;
  *(v33 + 72) = v32;
  *(v33 + 80) = 0x73726F76616C66;
  *(v33 + 88) = 0xE700000000000000;

  sub_1C5D2F970(v38);
  v40 = v39;

  sub_1C5C67580(0, &qword_1ED7DCF10, v32, MEMORY[0x1E69E62F8]);
  v42 = v41;
  *(v33 + 96) = v40;
  *(v33 + 120) = v41;
  *(v33 + 128) = 0x7364496D616461;
  *(v33 + 136) = 0xE700000000000000;

  v44 = sub_1C5D2FF68(v43);
  *(v33 + 168) = v42;
  *(v33 + 144) = v44;
  OUTLINED_FUNCTION_58_2();
  *(v1 + 640) = sub_1C6016880();
  v45 = OUTLINED_FUNCTION_88_0();
  v46(v45);
  sub_1C6014BB0();
  v47 = objc_opt_self();
  OUTLINED_FUNCTION_58_2();
  v48 = sub_1C6016840();
  *(v1 + 528) = 0;
  v49 = [v47 dataWithJSONObject:v48 options:0 error:v1 + 528];

  v50 = *(v1 + 528);
  if (v49)
  {
    v51 = *(v1 + 568);
    v52 = *(v1 + 560);
    v53 = *(v1 + 552);
    v54 = *(v1 + 544);

    sub_1C6014F60();

    sub_1C6014BC0();
    sub_1C6014BA0();
    sub_1C6016940();
    sub_1C6014BD0();

    (*(v53 + 16))(v52, v51, v54);
    v55 = objc_allocWithZone(MEMORY[0x1E69E4620]);
    v56 = v99;
    v0 = sub_1C5D37940(v52, v56, MEMORY[0x1E6967EC0], &selRef_initWithURLRequest_requestContext_, MEMORY[0x1E6967EC8]);
    *(v1 + 648) = v0;
    if (qword_1ED7DD2B0 == -1)
    {
LABEL_23:
      v57 = sub_1C60162D0();
      *(v1 + 656) = OUTLINED_FUNCTION_144(v57, qword_1ED7E1690);

      v58 = v0;
      v59 = sub_1C60162B0();
      v60 = sub_1C6016F00();

      v96 = v1;
      if (os_log_type_enabled(v59, v60))
      {
        v61 = OUTLINED_FUNCTION_68_0();
        v105[0] = swift_slowAlloc();
        *v61 = 136446466;
        *(v61 + 4) = sub_1C5C6AB10(v101, v103, v105);
        *(v61 + 12) = 2082;
        v62 = [v58 requestID];
        v63 = v58;
        v64 = sub_1C6016940();
        v66 = v65;

        v67 = sub_1C5C6AB10(v64, v66, v105);

        *(v61 + 14) = v67;
        v58 = v63;
        _os_log_impl(&dword_1C5C61000, v59, v60, "[FPPC] loadMiniSinfs | requesting [] account=%{public}s requestID=%{public}s", v61, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_35_1();
        OUTLINED_FUNCTION_4();
      }

      v68 = v58;
      v69 = sub_1C60162B0();
      v70 = sub_1C6016F00();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = OUTLINED_FUNCTION_21();
        v105[0] = swift_slowAlloc();
        *v71 = 136446722;
        v72 = [v68 requestID];
        v73 = sub_1C6016940();
        v104 = v68;
        v75 = v74;

        v76 = sub_1C5C6AB10(v73, v75, v105);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2082;

        sub_1C5D2FBF0(v77);
        v79 = v78;

        v80 = MEMORY[0x1C6953600](v79, MEMORY[0x1E69E6158]);
        v82 = v81;

        v83 = sub_1C5C6AB10(v80, v82, v105);

        *(v71 + 14) = v83;
        *(v71 + 22) = 2082;

        v68 = v104;
        sub_1C6016D60();

        v84 = OUTLINED_FUNCTION_45_0();
        v87 = sub_1C5C6AB10(v84, v85, v86);

        *(v71 + 24) = v87;
        _os_log_impl(&dword_1C5C61000, v69, v70, "[FPPC] loadMiniSinfs | request info [] requestID=%{public}s flavors=%{public}s identifiers=%{public}s", v71, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      else
      {
      }

      v91 = [objc_opt_self() defaultSession];
      v96[83] = v91;
      v96[2] = v96;
      v96[7] = v96 + 67;
      v92 = OUTLINED_FUNCTION_54_1();
      sub_1C5D38004();
      v96[52] = v93;
      v96[45] = MEMORY[0x1E69E9820];
      v96[46] = 1107296256;
      v96[47] = sub_1C5CA6B88;
      v96[48] = &block_descriptor_12;
      v96[49] = v92;
      [v91 enqueueDataRequest:v68 withCompletionHandler:v96 + 45];
      OUTLINED_FUNCTION_30_7();

      return MEMORY[0x1EEE6DEC8](v94);
    }

LABEL_36:
    OUTLINED_FUNCTION_0_0();
    swift_once();
    goto LABEL_23;
  }

  v88 = v50;
  sub_1C6014D40();

  swift_willThrow();
  OUTLINED_FUNCTION_30_7();

  return swift_unexpectedError();
}

uint64_t sub_1C5D36BD8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 672) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5D36D0C()
{
  v75 = v0;
  v74[4] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 648);
  v2 = *(v0 + 536);

  v3 = v2;

  v4 = v1;
  v5 = v3;
  v6 = sub_1C60162B0();
  sub_1C6016F00();

  v7 = OUTLINED_FUNCTION_48_3();
  v8 = MEMORY[0x1E69E7CA0];
  if (v7)
  {
    v9 = *(v0 + 648);
    v10 = OUTLINED_FUNCTION_21();
    v74[0] = swift_slowAlloc();
    *v10 = 136446722;
    v11 = OUTLINED_FUNCTION_88_0();
    *(v10 + 4) = sub_1C5C6AB10(v11, v12, v13);
    *(v10 + 12) = 2082;
    v14 = [v9 requestID];
    sub_1C6016940();

    v15 = OUTLINED_FUNCTION_88_0();
    v18 = sub_1C5C6AB10(v15, v16, v17);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2048;
    v19 = [v5 statusCode];

    *(v10 + 24) = v19;
    OUTLINED_FUNCTION_4_19();
    _os_log_impl(v20, v21, v22, v23, v24, 0x20u);
    v25 = v8;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    v25 = MEMORY[0x1E69E7CA0];
  }

  v26 = sub_1C5D3808C(v5);
  v27 = *(v0 + 640);
  if (v26)
  {
    v28 = v26;
    v29 = *(v0 + 648);
    v30 = *(v0 + 608);
    loga = *(v0 + 600);
    v31 = *(v0 + 584);
    v66 = *(v0 + 632);
    v69 = *(v0 + 576);
    v64 = *(v0 + 568);
    v32 = *(v0 + 552);
    v33 = *(v0 + 544);

    sub_1C5D01EB0(0, &qword_1EC1AAC40);
    *(v0 + 448) = v34;

    *(v0 + 424) = v28;
    sub_1C5C653C8(v0 + 424, v0 + 488);
    sub_1C5D01EB0(0, &qword_1EC1A9490);
    v74[3] = v35;
    v74[0] = v27;
    v36 = [v30 hashedDSID];
    sub_1C6016940();

    v37 = objc_allocWithZone(MEMORY[0x1E6970960]);
    v38 = sub_1C5D379EC((v0 + 488), v74);

    (*(v32 + 8))(v64, v33);
    (*(v31 + 8))(loga, v69);
    __swift_destroy_boxed_opaque_existential_0(v0 + 424);
  }

  else
  {

    v39 = v5;
    v40 = sub_1C60162B0();
    v41 = sub_1C6016F20();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_68_0();
      v74[0] = swift_slowAlloc();
      *v42 = 136446466;
      v43 = OUTLINED_FUNCTION_55_2();
      v46 = sub_1C5C6AB10(v43, v44, v45);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      log = v40;
      if ([v39 parsedBody])
      {
        sub_1C6017390();
        swift_unknownObjectRelease();
      }

      else
      {
        *(v0 + 456) = 0u;
        *(v0 + 472) = 0u;
      }

      v60 = *(v0 + 608);
      v61 = *(v0 + 648);
      v71 = *(v0 + 600);
      v53 = *(v0 + 584);
      v65 = *(v0 + 632);
      v68 = *(v0 + 576);
      v54 = *(v0 + 552);
      v62 = *(v0 + 544);
      v63 = *(v0 + 568);
      sub_1C5C67580(0, &qword_1ED7E0200, v25 + 8, MEMORY[0x1E69E6720]);
      v55 = sub_1C60169A0();
      v57 = sub_1C5C6AB10(v55, v56, v74);

      *(v42 + 14) = v57;
      _os_log_impl(&dword_1C5C61000, log, v41, "[FPPC] loadMiniSinfs | failed [response not valid] account=%{public}s responseBody=%{public}s", v42, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_35_1();

      (*(v54 + 8))(v63, v62);
      (*(v53 + 8))(v71, v68);
    }

    else
    {
      v47 = *(v0 + 648);
      v48 = *(v0 + 632);
      v49 = v39;
      v50 = *(v0 + 584);
      v67 = *(v0 + 576);
      v70 = *(v0 + 600);

      v51 = OUTLINED_FUNCTION_55_2();
      v52(v51);
      (*(v50 + 8))(v70, v67);
    }

    v38 = 0;
    v30 = 0;
  }

  v58 = *(v0 + 8);

  return v58(v38, v30);
}

uint64_t sub_1C5D37304()
{
  v34 = v0;
  v33[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  swift_willThrow();

  v3 = v1;
  v4 = sub_1C60162B0();
  v5 = sub_1C6016F20();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 672);
  v31 = *(v0 + 648);
  v32 = *(v0 + 632);
  if (v6)
  {
    v8 = *(v0 + 624);
    v9 = *(v0 + 616);
    v29 = *(v0 + 576);
    v30 = *(v0 + 600);
    v27 = *(v0 + 568);
    v28 = *(v0 + 584);
    v10 = *(v0 + 552);
    v25 = *(v0 + 608);
    v26 = *(v0 + 544);
    v11 = OUTLINED_FUNCTION_68_0();
    v12 = OUTLINED_FUNCTION_110();
    v13 = OUTLINED_FUNCTION_21();
    v33[0] = v13;
    *v11 = 136446466;
    v14 = sub_1C5C6AB10(v8, v9, v33);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2114;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_1C5C61000, v4, v5, "[FPPC] loadMiniSinfs | failed [request failed] account=%{public}s error=%{public}@", v11, 0x16u);
    sub_1C5CB5700(v12);
    OUTLINED_FUNCTION_11_8();
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

    (*(v10 + 8))(v27, v26);
    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v17 = *(v0 + 600);
    v18 = *(v0 + 584);
    v19 = *(v0 + 576);

    v20 = OUTLINED_FUNCTION_55_2();
    v21(v20);
    (*(v18 + 8))(v17, v19);
  }

  OUTLINED_FUNCTION_65_3();

  v22 = OUTLINED_FUNCTION_62();

  return v23(v22);
}

uint64_t sub_1C5D375DC(void *a1)
{
  v3 = [a1 miniSinfMaximumBatchSize];
  v12[0] = MEMORY[0x1E69E7CD0];
  v12[1] = MEMORY[0x1E69E7CD0];
  v4 = [a1 hashedDSID];
  if (!v4)
  {
    sub_1C6016940();
    v4 = sub_1C6016900();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v12;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C5D38104;
  *(v6 + 24) = v5;
  v11[4] = sub_1C5D3810C;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C5D378E4;
  v11[3] = &block_descriptor_16;
  v7 = _Block_copy(v11);

  [v1 enumerateAssetsMissingSINFsForHashedPersonID:v4 usingBlock:v7];

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12[0];

    return v10;
  }

  return result;
}

uint64_t sub_1C5D37798()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBCD24;

  return sub_1C5D3572C();
}

uint64_t sub_1C5D37824(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  [a1 flavor];
  sub_1C5E1F534();
  v8 = [a1 identifier];
  v9 = sub_1C6016940();
  v11 = v10;

  sub_1C5C8F0A4(&v13, v9, v11);

  if (*(*(a3 + 8) + 16) == a4)
  {
    *a2 = 1;
  }

  return result;
}

void sub_1C5D378E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1C5D37940(uint64_t a1, void *a2, uint64_t (*a3)(void), SEL *a4, uint64_t (*a5)(void))
{
  v8 = v5;
  v11 = a3();
  v12 = [v8 *a4];

  v13 = a5(0);
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_1C5D379EC(void *a1, void *a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = sub_1C6017850();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v7 = sub_1C6017850();
  v8 = sub_1C6016900();

  v9 = [v3 initWithPayload:v6 requestPayload:v7 hashedPersonID:v8];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_1C5D37AC8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_45_0();
  v6(v9);
  if (v0)
  {
    OUTLINED_FUNCTION_235();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_172();

    return v13();
  }
}

uint64_t sub_1C5D37C64()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

void sub_1C5D37CC8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_103();
    sub_1C5D37D18(v3, v4);
    OUTLINED_FUNCTION_34_4();
    v5 = sub_1C60177E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5D37D18(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C5D37D7C(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_1C5D2FFF8(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    sub_1C5C6AA20();
LABEL_36:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v10 = sub_1C6017440();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v10)
      {
        goto LABEL_36;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C6954040](v9, v4);
        swift_unknownObjectRelease();
        if (v22 != v5)
        {
          if (v8 != v9)
          {
            v13 = MEMORY[0x1C6954040](v8, v4);
            v14 = MEMORY[0x1C6954040](v9, v4);
            goto LABEL_16;
          }

LABEL_26:
          v21 = __OFADD__(v8++, 1);
          if (v21)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
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
          break;
        }

        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v11)
        {
          goto LABEL_38;
        }

        v12 = *(v4 + 32 + 8 * v9);
        if (v12 != v5)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v11)
            {
              goto LABEL_42;
            }

            v13 = *(v4 + 32 + 8 * v8);
            v14 = v12;
LABEL_16:
            v15 = v14;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_1C5D120FC(v4);
              v16 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v4 & 0xFFFFFFFFFFFFFF8;
            v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

            if ((v4 & 0x8000000000000000) != 0 || v16)
            {
              v4 = sub_1C5D120FC(v4);
              v17 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v17 + 16))
            {
              goto LABEL_43;
            }

            v19 = v17 + 8 * v9;
            v20 = *(v19 + 32);
            *(v19 + 32) = v13;

            *a1 = v4;
          }

          goto LABEL_26;
        }
      }

      v21 = __OFADD__(v9++, 1);
      if (v21)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1C5D37F94(void *a1)
{
  v2 = [a1 deviceGUID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C6016940();

  return v3;
}

void sub_1C5D38004()
{
  if (!qword_1EC1A8D20)
  {
    sub_1C5C64D74(255, &qword_1EC1A8C58);
    sub_1C5CB5808();
    v0 = sub_1C6016CC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8D20);
    }
  }
}

uint64_t sub_1C5D3808C(void *a1)
{
  v1 = [a1 parsedBodyDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C6016860();

  return v3;
}

uint64_t sub_1C5D380F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t block_destroy_helper_15()
{
}

{
}

uint64_t sub_1C5D38190()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_37_2(v1);

  return sub_1C5D32CD8();
}

uint64_t sub_1C5D38214()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_37_2(v1);

  return sub_1C5D3356C();
}

uint64_t sub_1C5D38298()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_37_2(v1);

  return sub_1C5D325F8(v3);
}

uint64_t sub_1C5D3831C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C5C665D4(255, a2, &unk_1EC1A8BB0, off_1E822D740, a3);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5D38370(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_27_0(v10);
  *v11 = v12;
  v11[1] = sub_1C5CBCD24;

  return sub_1C5D34390(a1, a2, v5, v6, v7, v8, v9);
}

void sub_1C5D38444()
{
  if (!qword_1EC1A8980)
  {
    sub_1C5C66828();
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8980);
    }
  }
}

uint64_t sub_1C5D384AC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_27_0(v5);
  *v6 = v7;
  v6[1] = sub_1C5CBD218;
  v8 = OUTLINED_FUNCTION_252();

  return sub_1C5D3489C(v8, v9, v1, v2, v4, v3);
}

void sub_1C5D38560(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1C5CB5808();
    v3 = sub_1C6016CC0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C5D385E8()
{
  OUTLINED_FUNCTION_248();

  return sub_1C5D35DC4();
}

void OUTLINED_FUNCTION_16_8(uint64_t a1@<X8>)
{
  v1[28] = sub_1C5E223AC;
  v1[29] = a1;
  v1[30] = v2;
}

BOOL OUTLINED_FUNCTION_49_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_54_1()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_66_3()
{
}

uint64_t sub_1C5D3877C()
{
  v1 = [v0 playbackStackController];
  sub_1C6017390();
  swift_unknownObjectRelease();
  type metadata accessor for MFPlaybackStackControllerImplementation();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5D38800(uint64_t a1)
{
  result = sub_1C5D3877C();
  if (result)
  {
    v3 = result;
    v4 = sub_1C5DD6D88(a1);

    return v4;
  }

  return result;
}

uint64_t sub_1C5D38854()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 128) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 56) = sub_1C6016C10();
  *(v1 + 64) = sub_1C6016C00();
  v6 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_16(v6, v7);
  v8 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C5D388E0()
{
  v1 = sub_1C5D3877C();
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 128);
    v6 = *(v0 + 24);
    v7 = sub_1C6016C00();
    *(v0 + 96) = v7;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *(v8 + 16) = v2;
    *(v8 + 24) = v6;
    *(v8 + 32) = v5;
    *(v8 + 40) = v4;
    *(v8 + 48) = v3;
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_1C5D38AEC;
    v10 = MEMORY[0x1E69E85E0];
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v9, v7, v10, 0xD000000000000037, 0x80000001C604B190, sub_1C5D3A074, v8, v11);
  }

  else
  {

    sub_1C5CFF12C();
    sub_1C6016940();
    OUTLINED_FUNCTION_1_20();
    sub_1C6016880();
    OUTLINED_FUNCTION_10_14();
    sub_1C5CBCEF4();
    OUTLINED_FUNCTION_0_26();

    swift_willThrow();
    OUTLINED_FUNCTION_172();

    return v12();
  }
}

uint64_t sub_1C5D38AEC()
{
  OUTLINED_FUNCTION_248();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  v2[15] = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1C5D38C68;
  }

  else
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1C5D38C04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C5D38C04()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5D38C68()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_172();

  return v2();
}

void sub_1C5D38CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C5D3A084();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = sub_1C6016900();
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_1C5DCD198(a3, a4, v11, sub_1C5D3A0F0, v13);
}

uint64_t sub_1C5D38E5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1C5D3A084();
    v3 = a2;
    return sub_1C6016BB0();
  }

  else
  {
    sub_1C5D3A084();
    return sub_1C6016BC0();
  }
}

uint64_t sub_1C5D38EC8()
{
  OUTLINED_FUNCTION_248();
  v1[5] = v2;
  v1[6] = v0;
  v1[7] = sub_1C6016C10();
  v1[8] = sub_1C6016C00();
  v3 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_16(v3, v4);
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5D38F4C()
{
  v33 = v0;
  v1 = [*(v0 + 48) playbackEngine];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 engineID];

    v4 = sub_1C6016940();
    v6 = v5;

    *(v0 + 88) = v6;
    v7 = sub_1C5D3877C();
    *(v0 + 96) = v7;
    if (v7)
    {
      v8 = v7;
      if (qword_1ED7DD2B0 != -1)
      {
        swift_once();
      }

      v9 = sub_1C60162D0();
      __swift_project_value_buffer(v9, qword_1ED7E1690);

      v10 = v8;
      v11 = sub_1C60162B0();
      v12 = sub_1C6016F30();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 40);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v32[0] = v15;
        *v14 = 136446722;

        v16 = sub_1C5C6AB10(v4, v6, v32);

        *(v14 + 4) = v16;
        *(v14 + 12) = 2080;
        type metadata accessor for Description();
        v17 = sub_1C5DCAA28(v13);
        v19 = sub_1C5C6AB10(v17, v18, v32);

        *(v14 + 14) = v19;
        *(v14 + 22) = 2082;
        *(v0 + 32) = [v10 currentItem];
        sub_1C5D3A17C();
        v20 = sub_1C60169A0();
        v22 = sub_1C5C6AB10(v20, v21, v32);

        *(v14 + 24) = v22;
        _os_log_impl(&dword_1C5C61000, v11, v12, "[IMP:%{public}s] - [AP] reloadQueue(reason:) | reloading all items [%s] currentItem=%{public}s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C6956920](v15, -1, -1);
        MEMORY[0x1C6956920](v14, -1, -1);
      }

      v23 = *(v0 + 40);
      v24 = sub_1C6016C00();
      *(v0 + 104) = v24;
      v25 = swift_task_alloc();
      *(v0 + 112) = v25;
      v25[2] = v10;
      v25[3] = v23;
      v25[4] = v4;
      v25[5] = v6;
      v26 = swift_task_alloc();
      *(v0 + 120) = v26;
      *v26 = v0;
      v26[1] = sub_1C5D393D0;
      v27 = MEMORY[0x1E69E85E0];
      v28 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE38](v26, v24, v27, 0xD000000000000014, 0x80000001C604B200, sub_1C5D3A170, v25, v28);
    }

    v29 = (v0 + 24);
  }

  else
  {
    v29 = (v0 + 16);
  }

  sub_1C5CFF12C();
  sub_1C6016940();
  *v29 = 60;
  sub_1C6016880();
  OUTLINED_FUNCTION_10_14();
  sub_1C5CBCEF4();
  sub_1C6017280();

  swift_willThrow();
  OUTLINED_FUNCTION_172();

  return v30();
}

uint64_t sub_1C5D393D0()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  v2[16] = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1C5D39560;
  }

  else
  {

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_1C5D394FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C5D394FC()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5D39560()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5D395E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C5D3A084();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a3;
  *(v15 + 5) = a2;
  (*(v12 + 32))(&v15[v14], &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v16 = a2;
  sub_1C5DCC190();
}

uint64_t sub_1C5D39754(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  if (qword_1ED7DD2B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C60162D0();
  __swift_project_value_buffer(v10, qword_1ED7E1690);

  v11 = a5;
  v12 = sub_1C60162B0();
  v13 = sub_1C6016F30();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446722;
    *(v14 + 4) = sub_1C5C6AB10(a2, a3, &v24);
    *(v14 + 12) = 2080;
    type metadata accessor for Description();
    v16 = sub_1C5DCAA28(a4);
    v18 = sub_1C5C6AB10(v16, v17, &v24);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2082;
    [v11 currentItem];
    sub_1C5D3A17C();
    v19 = sub_1C60169A0();
    v21 = sub_1C5C6AB10(v19, v20, &v24);

    *(v14 + 24) = v21;
    _os_log_impl(&dword_1C5C61000, v12, v13, "[IMP:%{public}s] - [AP] reloadQueue(reason:) | Done reloading all items [%s] currentItem=%{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v15, -1, -1);
    MEMORY[0x1C6956920](v14, -1, -1);
  }

  if (a1)
  {
    v24 = a1;
    sub_1C5D3A084();
    v22 = a1;
    return sub_1C6016BB0();
  }

  else
  {
    sub_1C5D3A084();
    return sub_1C6016BC0();
  }
}

uint64_t sub_1C5D399B0()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 24) = v5;
  *(v1 + 112) = v6;
  sub_1C6016C10();
  *(v1 + 64) = sub_1C6016C00();
  v7 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_16(v7, v8);
  v9 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5D39A3C()
{
  v1 = sub_1C5D3877C();
  *(v0 + 88) = v1;
  if (!v1)
  {

    sub_1C5CFF12C();
    sub_1C6016940();
    OUTLINED_FUNCTION_1_20();
    sub_1C6016880();
    OUTLINED_FUNCTION_10_14();
    sub_1C5CBCEF4();
    OUTLINED_FUNCTION_0_26();

    swift_willThrow();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_8_14();

    __asm { BRAA            X1, X16 }
  }

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1C5D39BB4;
  OUTLINED_FUNCTION_8_14();

  return sub_1C5DCC6B4();
}

uint64_t sub_1C5D39BB4()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1C5D39CE4;
  }

  else
  {
    v7 = sub_1C5D3A24C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C5D39CE4()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5D39D48()
{
  OUTLINED_FUNCTION_248();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  sub_1C6016C10();
  v1[8] = sub_1C6016C00();
  v6 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_16(v6, v7);
  v8 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C5D39DD0()
{
  v1 = sub_1C5D3877C();
  *(v0 + 88) = v1;
  if (!v1)
  {

    sub_1C5CFF12C();
    sub_1C6016940();
    OUTLINED_FUNCTION_1_20();
    sub_1C6016880();
    OUTLINED_FUNCTION_10_14();
    sub_1C5CBCEF4();
    OUTLINED_FUNCTION_0_26();

    swift_willThrow();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_8_14();

    __asm { BRAA            X1, X16 }
  }

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1C5D39F44;
  OUTLINED_FUNCTION_8_14();

  return sub_1C5DCC9F4();
}

uint64_t sub_1C5D39F44()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1C5D3A250;
  }

  else
  {
    v7 = sub_1C5D3A24C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1C5D3A084()
{
  if (!qword_1EC1A8D70)
  {
    sub_1C5CB5808();
    v0 = sub_1C6016BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8D70);
    }
  }
}

uint64_t sub_1C5D3A0F0(uint64_t a1, void *a2)
{
  sub_1C5D3A084();

  return sub_1C5D38E5C(a1, a2);
}

void sub_1C5D3A17C()
{
  if (!qword_1ED7DF158)
  {
    sub_1C5D11E0C();
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DF158);
    }
  }
}

uint64_t sub_1C5D3A1D4(void *a1)
{
  sub_1C5D3A084();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  return sub_1C5D39754(a1, v3, v4, v5, v6);
}

uint64_t sub_1C5D3A27C(void *a1)
{
  v1 = a1;
  v2 = MPPlaybackUserDefaults.shouldPreroll.getter();

  return v2 & 1;
}

uint64_t MPAVItem.observeChapters(_:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v2;

  v7 = sub_1C6014DE0();

  return v7;
}

void sub_1C5D3A3CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 chapters];
  sub_1C5D3A7E8();
  v4 = sub_1C6016B10();

  *a2 = v4;
}

void sub_1C5D3A430(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_1C5D3A7E8();
  v3 = sub_1C6016AF0();
  [v2 setChapters_];
}

char *sub_1C5D3A49C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1C5D3A784(0, &unk_1EC1A9720, sub_1C5D3A750, MEMORY[0x1E6968EA8]);
  sub_1C6014D90();
  if (!v16)
  {
    goto LABEL_13;
  }

  v4 = sub_1C5C6AA20();
  if (!v4)
  {

LABEL_13:
    a3(MEMORY[0x1E69E7CC0]);
  }

  v5 = v4;
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1C5D0F218(0, v4 & ~(v4 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v14 = a3;
    for (i = 0; i != v5; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C6954040](i);
      }

      else
      {
        v8 = *(v16 + 8 * i + 32);
      }

      v9 = v8;
      [v8 startTime];
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C5D0F218((v12 > 1), v13 + 1, 1);
      }

      *(v15 + 16) = v13 + 1;
      *(v15 + 8 * v13 + 32) = v11;
    }

    v14(v15);
  }

  __break(1u);
  return result;
}

id sub_1C5D3A644(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  v7 = MPAVItem.observeChapters(_:)(sub_1C5D3A748, v5);

  return v7;
}

void sub_1C5D3A6DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6016AF0();
  (*(a2 + 16))(a2, v3);
}

void sub_1C5D3A784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C5D3A7E8()
{
  result = qword_1EC1A9390;
  if (!qword_1EC1A9390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1A9390);
  }

  return result;
}

id sub_1C5D3A844()
{
  v0 = sub_1C5D3A834();

  return v0;
}

void sub_1C5D3A86C(char a1)
{
  v2 = v1;
  v4 = sub_1C60162D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setInitialPlaybackStartTimeOverride_];
  if (a1)
  {
    if ([v2 isAssetLoaded])
    {
      v22 = [v2 playerItem];
      if (v22)
      {
        v8 = [v2 initialPlaybackStartTime];
        if (!v8)
        {
          sub_1C5C64D74(0, &qword_1ED7DCCD0);
          v8 = sub_1C60172B0();
        }

        [v8 doubleValue];
        v10 = v9;

        [v22 currentTime];
        OUTLINED_FUNCTION_0_27();
        if (sub_1C6017200() & 1) != 0 && (OUTLINED_FUNCTION_0_27(), (sub_1C6016810()) && (OUTLINED_FUNCTION_0_27(), sub_1C6017220(), vabdd_f64(v11, v10) < 0.01))
        {
          v12 = v22;
        }

        else
        {
          sub_1C60162C0();
          v13 = v2;
          v14 = sub_1C60162B0();
          v15 = sub_1C6016F30();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *v16 = 138543618;
            *(v16 + 4) = v13;
            *v17 = v13;
            *(v16 + 12) = 2050;
            *(v16 + 14) = v10;
            v18 = v13;
            _os_log_impl(&dword_1C5C61000, v14, v15, "%{public}@ Reset playback start time for reuse to: %{public}f", v16, 0x16u);
            sub_1C5CB5700(v17);
            MEMORY[0x1C6956920](v17, -1, -1);
            MEMORY[0x1C6956920](v16, -1, -1);
          }

          (*(v5 + 8))(v7, v4);
          CMTimeMakeWithSeconds(&v31, v10, 10000);
          v19 = *MEMORY[0x1E6960CC0];
          v20 = *(MEMORY[0x1E6960CC0] + 8);
          v21 = *(MEMORY[0x1E6960CC0] + 12);
          v30 = *(MEMORY[0x1E6960CC0] + 16);
          v26 = v30;
          v27 = v19;
          v28 = v20;
          v29 = v21;
          v23 = v19;
          v24 = v20;
          v25 = v21;
          [v22 seekToTime:&v31 toleranceBefore:&v27 toleranceAfter:&v23 completionHandler:0];
        }
      }
    }
  }
}

void sub_1C5D3ABE8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1C5D3A86C(a3);
}

uint64_t sub_1C5D3AC88(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v44 = v11;
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v48 = v13 - v12;
  sub_1C5D2D8C8();
  v47 = v14;
  OUTLINED_FUNCTION_25();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_146();
  v20 = v19 - v18;
  v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v22 = sub_1C5D3BAA8();
  v50 = v22;
  v49[0] = v21;
  OUTLINED_FUNCTION_5_17(v22, 0x72617473u);
  sub_1C5CBCF4C(v49);
  v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v50 = v22;
  v49[0] = v23;
  OUTLINED_FUNCTION_5_17(v23, 0x6F766970u);
  sub_1C5CBCF4C(v49);
  v43 = a1;
  v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v50 = v22;
  v49[0] = v24;
  sub_1C5D3B0C8(v49, 0x656C797473, 0xE500000000000000);
  sub_1C5CBCF4C(v49);
  if (a3)
  {
    v25 = MEMORY[0x1E69E6158];
    v42 = a3;
    v26 = a2;
    v27 = a2;
    v28 = a3;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v49[2] = 0;
    v42 = 0xE300000000000000;
    v26 = a2;
  }

  v49[0] = v27;
  v49[1] = v28;
  v50 = v25;

  OUTLINED_FUNCTION_4_20();
  sub_1C5D3B0C8(v49, v29, v30);
  sub_1C5CBCF4C(v49);

  MEMORY[0x1C6952D20]([v5 _updateContentItemIncludingPlaybackState_]);
  OUTLINED_FUNCTION_1();
  sub_1C6016250();
  (*(v16 + 8))(v20, v47);

  v31 = v5;
  v32 = sub_1C60162B0();
  v33 = sub_1C6016F30();
  if (!os_log_type_enabled(v32, v33))
  {

    return (*(v44 + 8))(v48, v45);
  }

  v34 = swift_slowAlloc();
  v49[0] = swift_slowAlloc();
  *v34 = 136316162;
  v35 = sub_1C5D2966C(v31);
  v37 = v36;

  if (v37)
  {
    v39 = sub_1C5C6AB10(v35, v37, v49);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2050;
    *(v34 + 14) = a4;
    *(v34 + 22) = 2050;
    *(v34 + 24) = a5;
    *(v34 + 32) = 2050;
    *(v34 + 34) = v43;
    if (a3)
    {
      v40 = v26;
    }

    else
    {
      v40 = 7104878;
    }

    *(v34 + 42) = 2080;

    v41 = sub_1C5C6AB10(v40, v42, v49);

    *(v34 + 44) = v41;
    _os_log_impl(&dword_1C5C61000, v32, v33, "[TSN: %s] Updated content item with transition info - startTime: %{public}f, pivotTime: %{public}f, style: %{public}ld, debugString: %s", v34, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

    return (*(v44 + 8))(v48, v45);
  }

  __break(1u);
  return result;
}

void sub_1C5D3B0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C5D3B958(v3);
  if (!v8)
  {
    v8 = sub_1C6016880();
  }

  v9 = v8;
  if (!*(a1 + 24))
  {
    v10 = sub_1C5CE2084(a2, a3);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      *&v17[0] = v9;
      sub_1C5D3BA44();
      sub_1C6017660();

      sub_1C5C70758((*(v9 + 56) + 32 * v12), &v18);
      sub_1C6017680();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v16 = &v18;
    goto LABEL_14;
  }

  sub_1C5CC5960(a1, &v18);
  if (!*(&v19 + 1))
  {

    sub_1C5CBCF4C(&v18);
    v13 = sub_1C5CE2084(a2, a3);
    if (v14)
    {
      v15 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5D3BA44();
      sub_1C6017660();

      sub_1C5C70758((*(v9 + 56) + 32 * v15), v17);
      sub_1C6017680();
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v16 = v17;
LABEL_14:
    sub_1C5CBCF4C(v16);
    goto LABEL_15;
  }

  sub_1C5C70758(&v18, v17);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1C5E361A8(v17, a2, a3);

LABEL_15:
  sub_1C5D3B9C4(v9, v4);
}

uint64_t sub_1C5D3B30C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v10 = sub_1C6016940();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = a1;
  sub_1C5D3AC88(a5, v10, v12, a2, a3);
}

void sub_1C5D3B3A0()
{
  v1 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  v7 = v6 - v5;
  sub_1C5D2D8C8();
  v9 = v8;
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_8_15();
  OUTLINED_FUNCTION_6_14(v16, 0x72617473u);
  sub_1C5CBCF4C(v31);
  OUTLINED_FUNCTION_8_15();
  OUTLINED_FUNCTION_6_14(v17, 0x6F766970u);
  sub_1C5CBCF4C(v31);
  OUTLINED_FUNCTION_8_15();
  sub_1C5D3B0C8(v31, 0x656C797473, 0xE500000000000000);
  sub_1C5CBCF4C(v31);
  OUTLINED_FUNCTION_8_15();
  OUTLINED_FUNCTION_4_20();
  sub_1C5D3B0C8(v31, v18, v19);
  sub_1C5CBCF4C(v31);
  MEMORY[0x1C6952D20]([v0 _updateContentItemIncludingPlaybackState_]);
  OUTLINED_FUNCTION_1();
  sub_1C6016250();
  (*(v11 + 8))(v15, v9);
  v20 = v0;
  v21 = sub_1C60162B0();
  v22 = sub_1C6016F30();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_5;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v31[0] = v24;
  *v23 = 136315138;
  v25 = sub_1C5D2966C(v20);
  v27 = v26;

  if (v27)
  {
    v28 = sub_1C5C6AB10(v25, v27, v31);

    *(v23 + 4) = v28;
    OUTLINED_FUNCTION_9_13(&dword_1C5C61000, v29, v30, "[TSN: %s] Cleared planned transition info from content item");
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

LABEL_5:
    (*(v3 + 8))(v7, v1);
    return;
  }

  __break(1u);
}

void sub_1C5D3B654(void *a1)
{
  v1 = a1;
  sub_1C5D3B3A0();
}

void sub_1C5D3B69C()
{
  v1 = v0;
  v2 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  sub_1C5D2D8C8();
  v10 = v9;
  OUTLINED_FUNCTION_25();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_146();
  v16 = v15 - v14;
  v17 = sub_1C6016880();
  sub_1C5D3B9C4(v17, v1);
  MEMORY[0x1C6952D20]([v1 _updateContentItemIncludingPlaybackState_]);
  OUTLINED_FUNCTION_1();
  sub_1C6016250();
  (*(v12 + 8))(v16, v10);
  v18 = v1;
  v19 = sub_1C60162B0();
  v20 = sub_1C6016F30();
  if (!os_log_type_enabled(v19, v20))
  {

    goto LABEL_5;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v29 = v22;
  *v21 = 136315138;
  v23 = sub_1C5D2966C(v18);
  v25 = v24;

  if (v25)
  {
    v26 = sub_1C5C6AB10(v23, v25, &v29);

    *(v21 + 4) = v26;
    OUTLINED_FUNCTION_9_13(&dword_1C5C61000, v27, v28, "[TSN: %s] Cleared all transition info from content item");
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

LABEL_5:
    (*(v4 + 8))(v8, v2);
    return;
  }

  __break(1u);
}

void sub_1C5D3B910(void *a1)
{
  v1 = a1;
  sub_1C5D3B69C();
}

uint64_t sub_1C5D3B958(void *a1)
{
  v1 = [a1 transitionInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C6016860();

  return v3;
}

void sub_1C5D3B9C4(uint64_t a1, void *a2)
{
  v3 = sub_1C6016840();

  [a2 setTransitionInfo_];
}

void sub_1C5D3BA44()
{
  if (!qword_1EC1A9268)
  {
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9268);
    }
  }
}

unint64_t sub_1C5D3BAA8()
{
  result = qword_1ED7DCCD0;
  if (!qword_1ED7DCCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DCCD0);
  }

  return result;
}

double OUTLINED_FUNCTION_8_15()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

void sub_1C5D3BAF8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6988038]) init];
  v3 = [objc_opt_self() audioMixInputParametersWithTrack_];
  [v3 setTrackID_];
  sub_1C5C64D74(0, &qword_1EC1AB520);
  sub_1C5D96190();
  if (v4)
  {
    v5 = v4;
    [v3 addEffect_];
  }

  sub_1C5D3BEAC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C60311F0;
  *(v6 + 32) = v3;
  v19 = v6;
  v18 = v3;
  v7 = [a1 audioMix];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 inputParameters];
    sub_1C5C64D74(0, &qword_1EC1AB528);
    v10 = sub_1C6016B10();

    v11 = sub_1C5C6AA20();
    if (v11)
    {
      v12 = v11;
      if (v11 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v12; ++i)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1C6954040](i, v10);
        }

        else
        {
          v14 = *(v10 + 8 * i + 32);
        }

        v15 = v14;
        MEMORY[0x1C69535C0]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C6016B30();
        }

        sub_1C6016B70();
      }
    }
  }

  sub_1C5C64D74(0, &qword_1EC1AB528);
  v16 = sub_1C6016AF0();

  [v2 setInputParameters_];

  v17 = v2;
  [a1 setAudioMix_];
}

void sub_1C5D3BDFC(void *a1)
{
  sub_1C5DABC1C();
  sub_1C5E10700();
  v3 = v2;

  sub_1C5D9B0F0(v3, a1);
}

void sub_1C5D3BEAC()
{
  if (!qword_1ED7DCAF0)
  {
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCAF0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_SSs5Error_pSgIeggg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C5D3BF2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1C5D3BF6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5D3BFC4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C6017860();
  }
}

_BYTE *storeEnumTagSinglePayload for UserActionMetadata.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5D3C0D8()
{
  result = qword_1EC1AB530;
  if (!qword_1EC1AB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB530);
  }

  return result;
}

uint64_t sub_1C5D3C12C()
{
  type metadata accessor for AssetActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ED7E1700 = v0;
  return result;
}

uint64_t sub_1C5D3C168()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C5D3C1C0()
{
  result = qword_1ED7DFE28;
  if (!qword_1ED7DFE28)
  {
    type metadata accessor for AssetActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DFE28);
  }

  return result;
}

uint64_t sub_1C5D3C214()
{
  if (qword_1ED7DFE38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C5D3C278()
{
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_1C5D3C364(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v5 = v4;
  v177 = a4;
  OUTLINED_FUNCTION_4_21(a1, &qword_1ED7DCEC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v164 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v5[9] > a1)
    {
      OUTLINED_FUNCTION_237();

      swift_unknownObjectRelease();
      return;
    }

    v169 = v12;
    v174 = v5[3];
    v175 = v14;
    sub_1C5CDAF64((v5 + 4), v190);
    v17 = a3;
    __swift_project_boxed_opaque_existential_0(v190, v190[3]);
    v192[0] = 0;
    v192[1] = 0xE000000000000000;
    sub_1C6017540();
    v188 = v192[0];
    v189 = v192[1];
    MEMORY[0x1C69534E0](0xD000000000000029, 0x80000001C604B3F0);
    v192[0] = a1;
    v18 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v18);

    MEMORY[0x1C69534E0](0xD000000000000010, 0x80000001C604B420);
    v19 = MEMORY[0x1C6953600](a2, MEMORY[0x1E69E6158]);
    MEMORY[0x1C69534E0](v19);

    MEMORY[0x1C69534E0](0x6552776F6C6C6120, 0xEC0000003D657375);
    if (a3)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (a3)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x1C69534E0](v20, v21);

    MEMORY[0x1C69534E0](0x6574496465657320, 0xEA00000000003D6DLL);
    v192[0] = v177;
    sub_1C5C67E68(0, &qword_1ED7DF158, sub_1C5D11E0C);
    swift_unknownObjectRetain();
    v22 = sub_1C60169A0();
    MEMORY[0x1C69534E0](v22);

    v23 = v189;
    v187[0] = 0;
    v187[1] = 0;
    v187[2] = v188;
    v187[3] = v189;
    sub_1C5D3DD34(v187);
    memcpy(v192, v187, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v190);
    v5[9] = a1;
    v179 = swift_allocObject();
    swift_weakInit();
    v24 = type metadata accessor for AssetTask();
    v25 = MEMORY[0x1E69E7CC0];
    v176 = v24;
    v26 = sub_1C6016880();
    v27 = *(a2 + 16);
    v178 = v5;
    v165 = a1;
    v166 = a2;
    v167 = v25;
    if (v27)
    {
      swift_beginAccess();
      v170 = v17;
      v168 = v17 & 1;
      v28 = (a2 + 40);
      v29 = v177;
      while (1)
      {
        v31 = *(v28 - 1);
        v30 = *v28;
        v182 = v27;
        if (!v29)
        {

          goto LABEL_23;
        }

        swift_unknownObjectRetain();

        v32 = [v29 contentItemID];
        v181 = v30;
        v33 = v32;
        v23 = sub_1C6016940();
        v35 = v34;

        v30 = v181;
        if (v31 == v23 && v181 == v35)
        {
        }

        else
        {
          v23 = sub_1C6017860();

          if ((v23 & 1) == 0)
          {
            swift_unknownObjectRelease();
LABEL_23:
            if (v170)
            {
              v37 = v5[10];
              if (*(v37 + 16))
              {

                v38 = sub_1C5CE2084(v31, v30);
                if (v39)
                {
                  v23 = *(*(v37 + 56) + 8 * v38);

                  if (sub_1C5D4674C())
                  {
                    v173 = v28;

                    swift_isUniquelyReferenced_nonNull_native();
                    v40 = OUTLINED_FUNCTION_12_13();
                    v42 = v41;
                    sub_1C5CE2084(v40, v41);
                    OUTLINED_FUNCTION_7_15();
                    if (v45)
                    {
                      goto LABEL_122;
                    }

                    v46 = v43;
                    v47 = v44;
                    sub_1C5D3DE00();
                    if (OUTLINED_FUNCTION_3_18())
                    {
                      v48 = sub_1C5CE2084(v31, v42);
                      if ((v47 & 1) != (v49 & 1))
                      {
                        goto LABEL_126;
                      }

                      v46 = v48;
                    }

                    v28 = v173;
                    if (v47)
                    {

                      v26 = v191[0];
                      *(*(v191[0] + 56) + 8 * v46) = v23;

LABEL_73:

LABEL_76:
                      v29 = v177;
                      v5 = v178;
                      goto LABEL_77;
                    }

                    v26 = v191[0];
                    OUTLINED_FUNCTION_15_9();
                    OUTLINED_FUNCTION_1_21(v123);
                    OUTLINED_FUNCTION_13_8(v124);

                    v125 = *(v26 + 16);
                    v45 = __OFADD__(v125, 1);
                    v122 = v125 + 1;
                    if (v45)
                    {
                      goto LABEL_124;
                    }

LABEL_75:
                    *(v26 + 16) = v122;
                    goto LABEL_76;
                  }
                }

                else
                {
                }
              }
            }

            v173 = v26;
            sub_1C5CDAF64((v5 + 4), v191);
            __swift_mutable_project_boxed_opaque_existential_1(v191, v191[3]);
            v172 = &v164;
            OUTLINED_FUNCTION_5_18();
            MEMORY[0x1EEE9AC00](v87);
            v89 = OUTLINED_FUNCTION_0_28(v88, v164);
            v90(v89);
            v91 = *v23;
            v92 = type metadata accessor for EventReporter();
            v183[3] = v92;
            v183[4] = &off_1F4544D18;
            v183[0] = v91;
            v93 = swift_allocObject();
            __swift_mutable_project_boxed_opaque_existential_1(v183, v92);
            v171 = &v164;
            OUTLINED_FUNCTION_5_18();
            MEMORY[0x1EEE9AC00](v94);
            v96 = OUTLINED_FUNCTION_0_28(v95, v164);
            v97(v96);
            v98 = *v91;
            v185 = v92;
            v186 = &off_1F4544D18;
            v184[0] = v98;
            *(v93 + 32) = 0;
            *(v93 + 48) = 0;
            swift_unknownObjectWeakInit();
            *(v93 + 128) = 0;
            v181 = v31;
            *(v93 + 16) = v31;
            *(v93 + 24) = v30;
            *(v93 + 48) = v174;
            swift_unknownObjectWeakAssign();
            sub_1C5CDAF64(v184, v93 + 56);
            v99 = v179;
            *(v93 + 96) = sub_1C5D3DD48;
            *(v93 + 104) = v99;
            *(v93 + 112) = 0;
            *(v93 + 120) = 0;
            v100 = sub_1C6016C30();
            v101 = v175;
            __swift_storeEnumTagSinglePayload(v175, 1, 1, v100);
            v102 = qword_1ED7DFE38;
            swift_retain_n();
            v103 = v30;

            swift_unknownObjectRetain();

            if (v102 != -1)
            {
              swift_once();
            }

            v104 = qword_1ED7E1700;
            v105 = sub_1C5D3C1C0();
            v106 = swift_allocObject();
            *(v106 + 16) = v104;
            *(v106 + 24) = v105;
            *(v106 + 32) = v93;
            *(v106 + 40) = v168;
            v107 = v169;
            sub_1C5CE2ACC(v101, v169);
            LODWORD(v105) = __swift_getEnumTagSinglePayload(v107, 1, v100);

            if (v105 == 1)
            {
              sub_1C5C7ACE0(v107);
            }

            else
            {
              sub_1C6016C20();
              (*(*(v100 - 8) + 8))(v107, v100);
            }

            v108 = v173;
            v109 = *(v106 + 16);
            swift_unknownObjectRetain();

            if (v109)
            {
              swift_getObjectType();
              v110 = sub_1C6016BA0();
              v112 = v111;
              swift_unknownObjectRelease();
            }

            else
            {
              v110 = 0;
              v112 = 0;
            }

            sub_1C5C7ACE0(v175);
            if (v112 | v110)
            {
              v183[31] = 0;
              v183[32] = 0;
              v183[33] = v110;
              v183[34] = v112;
            }

            v27 = v182;
            v113 = swift_task_create();
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_0(v184);
            *(v93 + 128) = v113;

            __swift_destroy_boxed_opaque_existential_0(v183);
            __swift_destroy_boxed_opaque_existential_0(v191);
            swift_isUniquelyReferenced_nonNull_native();
            v191[0] = v108;
            sub_1C5CE2084(v181, v103);
            OUTLINED_FUNCTION_7_15();
            if (v45)
            {
              goto LABEL_118;
            }

            v23 = v114;
            v116 = v115;
            sub_1C5D3DE00();
            if (OUTLINED_FUNCTION_3_18())
            {
              v117 = sub_1C5CE2084(v181, v103);
              if ((v116 & 1) != (v118 & 1))
              {
                goto LABEL_126;
              }

              v23 = v117;
            }

            v26 = v191[0];
            if (v116)
            {
              *(*(v191[0] + 56) + 8 * v23) = v93;

              goto LABEL_73;
            }

            OUTLINED_FUNCTION_15_9();
            OUTLINED_FUNCTION_1_21(v119);
            v121 = (v120 + 16 * v23);
            *v121 = v181;
            v121[1] = v103;
            OUTLINED_FUNCTION_16_9();
            if (v45)
            {
              goto LABEL_120;
            }

            goto LABEL_75;
          }
        }

        v50 = v5[10];
        if (!*(v50 + 16))
        {
          goto LABEL_43;
        }

        v51 = sub_1C5CE2084(v31, v30);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v53 = *(*(v50 + 56) + 8 * v51);

        v54 = *(v53 + 32);
        if (!v54 || v54 != v29 || (sub_1C5D4674C() & 1) == 0)
        {

          v5 = v178;
          goto LABEL_43;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v55 = OUTLINED_FUNCTION_12_13();
        sub_1C5CE2084(v55, v56);
        OUTLINED_FUNCTION_7_15();
        if (v45)
        {
          goto LABEL_123;
        }

        v23 = v57;
        v29 = v58;
        sub_1C5D3DE00();
        if (OUTLINED_FUNCTION_3_18())
        {
          v59 = OUTLINED_FUNCTION_19_12();
          if ((v29 & 1) != (v60 & 1))
          {
            goto LABEL_126;
          }

          v23 = v59;
        }

        else
        {
          v30 = v181;
        }

        v26 = v191[0];
        if ((v29 & 1) == 0)
        {
          OUTLINED_FUNCTION_15_9();
          OUTLINED_FUNCTION_1_21(v126);
          v128 = (v127 + 16 * v23);
          *v128 = v31;
          v128[1] = v30;
          OUTLINED_FUNCTION_16_9();
          if (v45)
          {
            goto LABEL_125;
          }

          *(v26 + 16) = v129;
          OUTLINED_FUNCTION_20_12();
          goto LABEL_51;
        }

        *(*(v191[0] + 56) + 8 * v23) = v53;
        OUTLINED_FUNCTION_20_12();

LABEL_50:

LABEL_51:

LABEL_54:
        v5 = v178;
LABEL_77:
        v28 += 2;
        if (!--v27)
        {
          goto LABEL_89;
        }
      }

LABEL_43:
      v173 = v28;
      sub_1C5CDAF64((v5 + 4), v191);
      __swift_mutable_project_boxed_opaque_existential_1(v191, v191[3]);
      v172 = &v164;
      OUTLINED_FUNCTION_5_18();
      MEMORY[0x1EEE9AC00](v61);
      v63 = OUTLINED_FUNCTION_0_28(v62, v164);
      v64(v63);
      v65 = *v23;
      v66 = type metadata accessor for EventReporter();
      v183[3] = v66;
      v183[4] = &off_1F4544D18;
      v183[0] = v65;
      v67 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v183, v66);
      OUTLINED_FUNCTION_5_18();
      MEMORY[0x1EEE9AC00](v68);
      v70 = v30;
      v71 = (&v164 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v72 + 16))(v71);
      v73 = *v71;
      swift_unknownObjectRetain();
      v74 = v26;
      v75 = Strong;
      swift_unknownObjectRetain();
      v76 = v179;

      v23 = sub_1C5D3DE68(v29, v75, v174, v73, sub_1C5D3DD48, v76, v67);
      __swift_destroy_boxed_opaque_existential_0(v183);
      __swift_destroy_boxed_opaque_existential_0(v191);
      swift_isUniquelyReferenced_nonNull_native();
      v191[0] = v74;
      sub_1C5CE2084(v31, v70);
      OUTLINED_FUNCTION_7_15();
      if (v45)
      {
        goto LABEL_119;
      }

      v29 = v77;
      v79 = v78;
      sub_1C5D3DE00();
      v80 = OUTLINED_FUNCTION_3_18();
      v27 = v182;
      if (v80)
      {
        v81 = OUTLINED_FUNCTION_19_12();
        v28 = v173;
        if ((v79 & 1) != (v82 & 1))
        {
          goto LABEL_126;
        }

        v29 = v81;
      }

      else
      {
        v28 = v173;
      }

      v26 = v191[0];
      if ((v79 & 1) == 0)
      {
        OUTLINED_FUNCTION_15_9();
        OUTLINED_FUNCTION_1_21(v83);
        OUTLINED_FUNCTION_13_8(v84);
        v85 = *(v26 + 16);
        v45 = __OFADD__(v85, 1);
        v86 = v85 + 1;
        if (v45)
        {
          goto LABEL_121;
        }

        *(v26 + 16) = v86;
        OUTLINED_FUNCTION_20_12();
        goto LABEL_54;
      }

      *(*(v191[0] + 56) + 8 * v29) = v23;
      OUTLINED_FUNCTION_20_12();
      goto LABEL_50;
    }

LABEL_89:
    swift_beginAccess();
    v130 = v5[10];
    v131 = v130 + 64;
    OUTLINED_FUNCTION_6_15();
    v134 = v133 & v132;
    v136 = (v135 + 63) >> 6;

    v137 = 0;
    if (v134)
    {
      goto LABEL_94;
    }

    while (1)
    {
LABEL_90:
      v138 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        __break(1u);
        goto LABEL_117;
      }

      if (v138 >= v136)
      {
        break;
      }

      v134 = *(v131 + 8 * v138);
      ++v137;
      if (v134)
      {
        v137 = v138;
        while (1)
        {
LABEL_94:
          v139 = __clz(__rbit64(v134)) | (v137 << 6);
          v140 = *(*(v130 + 56) + 8 * v139);
          if (*(v26 + 16))
          {
            v141 = (*(v130 + 48) + 16 * v139);
            v142 = v26;
            v143 = v130;
            v145 = *v141;
            v144 = v141[1];

            v182 = sub_1C5CE2084(v145, v144);
            LOBYTE(v145) = v146;
            v130 = v143;
            v26 = v142;

            if ((v145 & 1) != 0 && v140 == *(*(v142 + 56) + 8 * v182))
            {
              goto LABEL_100;
            }
          }

          else
          {
          }

          sub_1C5D46C80();
LABEL_100:
          v134 &= v134 - 1;

          if (!v134)
          {
            goto LABEL_90;
          }
        }
      }
    }

    v178[10] = v26;

    v191[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_6_15();
    v149 = v148 & v147;
    v151 = (v150 + 63) >> 6;

    v152 = 0;
    while (v149)
    {
LABEL_108:
      v154 = __clz(__rbit64(v149));
      v149 &= v149 - 1;
      if (*(*(*(v26 + 56) + ((v152 << 9) | (8 * v154))) + 112))
      {

        MEMORY[0x1C69535C0](v155);
        if (*((v191[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v191[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C6016B30();
        }

        sub_1C6016B70();
        v167 = v191[0];
      }
    }

    while (1)
    {
      v153 = v152 + 1;
      if (__OFADD__(v152, 1))
      {
        break;
      }

      if (v153 >= v151)
      {

        v156 = v167;
        v157 = sub_1C5C6AA20();
        v158 = v178;
        if (v157 > 0)
        {
          sub_1C5D3D82C(v156);
        }

        sub_1C5CDAF64((v158 + 4), v184);
        __swift_project_boxed_opaque_existential_0(v184, v185);
        v191[0] = 0;
        v191[1] = 0xE000000000000000;
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD000000000000028, 0x80000001C604B440);
        v183[0] = v165;
        v159 = sub_1C60177D0();
        MEMORY[0x1C69534E0](v159);

        MEMORY[0x1C69534E0](0x746E65746E6F6320, 0xEF3A44496D657449);
        v160 = MEMORY[0x1C6953600](v166, MEMORY[0x1E69E6158]);
        MEMORY[0x1C69534E0](v160);

        MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C604B470);
        v161 = MEMORY[0x1C6953600](v156, v176);
        v163 = v162;

        MEMORY[0x1C69534E0](v161, v163);

        v183[0] = 0;
        v183[1] = 0;
        v183[2] = v191[0];
        v183[3] = v191[1];
        sub_1C5D3DD34(v183);
        memcpy(v191, v183, 0xD9uLL);
        sub_1C5DBBF0C();

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v184);
        goto LABEL_115;
      }

      v149 = *(v26 + 64 + 8 * v153);
      ++v152;
      if (v149)
      {
        v152 = v153;
        goto LABEL_108;
      }
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    sub_1C60178D0();
    __break(1u);
  }

  else
  {
    v5[9] = 0;
    type metadata accessor for AssetTask();
    v16 = sub_1C6016880();
    swift_beginAccess();
    v5[10] = v16;
LABEL_115:

    OUTLINED_FUNCTION_237();
  }
}

uint64_t sub_1C5D3D598(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C5D3BEAC();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C60311F0;
    *(inited + 32) = a1;

    sub_1C5D3D82C(inited);

    swift_setDeallocating();
    return sub_1C5D6787C();
  }

  return result;
}

uint64_t sub_1C5D3D63C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);

  v6 = sub_1C5D020A8(a1, a2, v5);

  if (v6)
  {
    sub_1C5D46C80();
  }

  swift_beginAccess();
  sub_1C5D45BE0(a1, a2);
  swift_endAccess();
}

void sub_1C5D3D700()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  type metadata accessor for AssetTask();

  *(v0 + 80) = sub_1C6016880();

  v2 = 0;
  OUTLINED_FUNCTION_6_15();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(v1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      do
      {
LABEL_7:
        v5 &= v5 - 1;

        sub_1C5D46C80();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_1C5D3D82C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_21(a1, &qword_1ED7DCEC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = v5;
    v36 = Strong;
    v7 = *(v1 + 24);
    v33 = v1;
    v34 = v7;
    v8 = sub_1C5C6AA20();
    v9 = 0;
    v10 = a1;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    v37 = MEMORY[0x1E69E7CC0];
    while (v8 != v9)
    {
      if (v39)
      {
        MEMORY[0x1C6954040](v9, v10);
      }

      else
      {
        if (v9 >= *(v38 + 16))
        {
          goto LABEL_22;
        }
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      sub_1C5D466B8(v40);
      v12 = v40[0];
      v13 = v40[1];
      v14 = v40[2];
      v15 = v40[3];
      v16 = v41;

      ++v9;
      if (v13)
      {
        v17 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C5D0E52C(0, *(v17 + 2) + 1, 1, v17);
          v17 = v22;
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        v37 = v17;
        if (v19 >= v18 >> 1)
        {
          sub_1C5D0E52C(v18 > 1, v19 + 1, 1, v37);
          v37 = v23;
        }

        v20 = v37;
        *(v37 + 2) = v19 + 1;
        v21 = &v20[40 * v19];
        *(v21 + 4) = v12;
        *(v21 + 5) = v13;
        *(v21 + 6) = v14;
        *(v21 + 7) = v15;
        v21[64] = v16;
        v9 = v11;
      }
    }

    v24 = v37;
    if (*(v37 + 2))
    {
      v25 = *(v33 + 72);
      v26 = sub_1C6016C30();
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v26);
      sub_1C6016C10();
      v27 = v36;
      swift_unknownObjectRetain();
      v28 = sub_1C6016C00();
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E85E0];
      v29[2] = v28;
      v29[3] = v30;
      v31 = v34;
      v29[4] = v27;
      v29[5] = v31;
      v29[6] = v24;
      v29[7] = v25;
      sub_1C5CDC270();

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_237();
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_237();
  }
}

uint64_t sub_1C5D3DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  sub_1C6016C10();
  v7[5] = sub_1C6016C00();
  v9 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5D3DB78, v9, v8);
}

uint64_t sub_1C5D3DB78()
{

  sub_1C5D45574();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5D3DBF0()
{
  sub_1C5C96DF0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return v0;
}

uint64_t sub_1C5D3DC20()
{
  sub_1C5D3DBF0();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1C5D3DC78()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_27_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_28_4(v6);

  return sub_1C5D3DADC(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_1C5D3DD50()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_4(v1);

  return sub_1C5D46A54();
}

void sub_1C5D3DE00()
{
  if (!qword_1ED7DCB98)
  {
    type metadata accessor for AssetTask();
    v0 = sub_1C6017690();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCB98);
    }
  }
}

uint64_t sub_1C5D3DE68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C5C67E68(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29[-1] - v14;
  v29[3] = type metadata accessor for EventReporter();
  v29[4] = &off_1F4544D18;
  v29[0] = a4;
  *(a7 + 32) = 0;
  *(a7 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(a7 + 128) = 0;
  v16 = [a1 contentItemID];
  v17 = sub_1C6016940();
  v19 = v18;

  *(a7 + 16) = v17;
  *(a7 + 24) = v19;
  *(a7 + 32) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a7 + 48) = a3;
  swift_unknownObjectWeakAssign();
  sub_1C5CDAF64(v29, a7 + 56);
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  *(a7 + 112) = 0;
  *(a7 + 120) = 0;
  v20 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v20);
  v21 = qword_1ED7DFE38;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED7E1700;
  v23 = sub_1C5D3C1C0();
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v23;
  v24[4] = a7;

  sub_1C5E1161C();
  v26 = v25;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v29);
  *(a7 + 128) = v26;

  return a7;
}

uint64_t objectdestroy_23Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C5D3E100()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_27_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_4(v1);

  return sub_1C5D46894();
}

uint64_t OUTLINED_FUNCTION_20_12()
{

  return swift_unknownObjectRelease();
}

unint64_t sub_1C5D3E1D0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 16 * result + 32);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D3E21C(uint64_t a1, int a2, uint64_t a3)
{
  v36 = a3;
  v34 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v37 = a1;

  v10 = 0;
  v35 = a2;
  while (v7)
  {
    v11 = v7;
LABEL_11:
    v7 = (v11 - 1) & v11;
    if (a2)
    {
      v38 = (v11 - 1) & v11;
      v39 = &v33;
      v13 = __clz(__rbit64(v11)) | (v10 << 6);
      v14 = (*(v37 + 48) + 16 * v13);
      v15 = *(*(v37 + 56) + 8 * v13);
      v16 = *v14;
      v17 = v14[1];
      v18 = *(v15 + 24);
      v40[0] = *(v15 + 16);
      v40[1] = v18;
      MEMORY[0x1EEE9AC00](result);
      *(&v33 - 2) = v40;

      v19 = sub_1C5D2AE18(sub_1C5D46404, (&v33 - 4), v36);

      if (v19)
      {
        v39 = v16;
        v20 = v34;
        if (v34[3] <= v34[2])
        {
          sub_1C5CEA2E8();
          v20 = v41;
        }

        sub_1C60179F0();
        sub_1C60169F0();
        result = sub_1C6017A20();
        v21 = v20 + 8;
        v34 = v20;
        v22 = -1 << *(v20 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~v20[(v23 >> 6) + 8]) == 0)
        {
          v27 = 0;
          v28 = (63 - v22) >> 6;
          v26 = v39;
          while (++v24 != v28 || (v27 & 1) == 0)
          {
            v29 = v24 == v28;
            if (v24 == v28)
            {
              v24 = 0;
            }

            v27 |= v29;
            v30 = v21[v24];
            if (v30 != -1)
            {
              v25 = __clz(__rbit64(~v30)) + (v24 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_29;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~v20[(v23 >> 6) + 8])) | v23 & 0x7FFFFFFFFFFFFFC0;
        v26 = v39;
LABEL_26:
        *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v31 = v34;
        v32 = (v34[6] + 16 * v25);
        *v32 = v26;
        v32[1] = v17;
        *(v31[7] + 8 * v25) = v15;
        ++v31[2];
      }

      else
      {
      }

      LOBYTE(a2) = v35;
      v7 = v38;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v34;
    }

    v11 = *(v4 + 8 * v12);
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C5D3E504(uint64_t result, uint64_t *a2)
{
  v2 = a2;
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 40;
  v21 = MEMORY[0x1E69E7CC0];
  v20 = result + 40;
LABEL_2:
  for (i = (v6 + 16 * v4); ; i += 2)
  {
    if (v5 == v4)
    {

      return v21;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v8 = *v2;
    if (!*(*v2 + 16))
    {
      goto LABEL_15;
    }

    v10 = *(i - 1);
    v9 = *i;

    v11 = sub_1C5CE2084(v10, v9);
    if ((v12 & 1) == 0 || !*(*(*(v8 + 56) + 8 * v11) + 32))
    {

      goto LABEL_15;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;

      swift_unknownObjectRetain();
      if (([v14 isAssetLoaded] & 1) == 0)
      {

        result = swift_unknownObjectRelease();
        goto LABEL_14;
      }

      v15 = [v14 canReusePlayerItem];

      swift_unknownObjectRelease();
      if ((v15 & 1) == 0)
      {
        v16 = v21;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C5C66A1C(0, *(v21 + 16) + 1, 1);
          v16 = v21;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        v2 = a2;
        if (v18 >= v17 >> 1)
        {
          result = sub_1C5C66A1C((v17 > 1), v18 + 1, 1);
          v16 = v21;
        }

        ++v4;
        *(v16 + 16) = v18 + 1;
        v21 = v16;
        v19 = v16 + 16 * v18;
        *(v19 + 32) = v10;
        *(v19 + 40) = v9;
        v6 = v20;
        goto LABEL_2;
      }
    }

LABEL_14:
    v2 = a2;
LABEL_15:
    ++v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D3E6FC(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v21 = result + 40;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v21 + 16 * v4); ; i += 2)
  {
    if (v5 == v4)
    {

      return v6;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v9 = *(i - 1);
    v8 = *i;
    v10 = *a2;
    v11 = *(*a2 + 16);

    if (!v11 || (v12 = sub_1C5CE2084(v9, v8), (v13 & 1) == 0) || *(*(*(v10 + 56) + 8 * v12) + 40) != 1 || (v14 = *a2, *(*a2 + 16)) && (v15 = sub_1C5CE2084(v9, v8), (v16 & 1) != 0) && *(*(*(v14 + 56) + 8 * v15) + 48))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C5C66A1C(0, *(v6 + 16) + 1, 1);
      }

      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_1C5C66A1C((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
      }

      ++v4;
      *(v6 + 16) = v19;
      v20 = v6 + 16 * v18;
      *(v20 + 32) = v9;
      *(v20 + 40) = v8;
      goto LABEL_2;
    }

    ++v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D3E884(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_6();
  v3 = v2;
  if (*(v2 + 16) >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_9_14();
    v3 = v19;
  }

  OUTLINED_FUNCTION_6_16();
  *(v5 + 32) = 0xD000000000000018;
  *(v5 + 40) = v4;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_16();
      v3 = v20;
    }

    OUTLINED_FUNCTION_29_9();
    if (v6)
    {
      OUTLINED_FUNCTION_9_14();
      v3 = v21;
    }

    OUTLINED_FUNCTION_6_16();
    *(v8 + 32) = 0xD000000000000018;
    *(v8 + 40) = v7;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_16();
      v3 = v22;
    }

    OUTLINED_FUNCTION_29_9();
    if (v6)
    {
      OUTLINED_FUNCTION_9_14();
      v3 = v23;
    }

    OUTLINED_FUNCTION_6_16();
    *(v10 + 32) = 0xD00000000000001DLL;
    *(v10 + 40) = v9;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_16();
    v3 = v24;
  }

  OUTLINED_FUNCTION_29_9();
  if (v6)
  {
    OUTLINED_FUNCTION_9_14();
    v3 = v25;
  }

  OUTLINED_FUNCTION_6_16();
  *(v12 + 32) = 0xD000000000000010;
  *(v12 + 40) = v11;
  if ((a1 & 0x100000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000000000) == 0)
    {
      return v3;
    }

    goto LABEL_32;
  }

LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_16();
    v3 = v26;
  }

  OUTLINED_FUNCTION_29_9();
  if (v6)
  {
    OUTLINED_FUNCTION_9_14();
    v3 = v27;
  }

  OUTLINED_FUNCTION_6_16();
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = v13;
  if ((a1 & 0x10000000000) != 0)
  {
LABEL_32:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_16();
      v3 = v28;
    }

    v16 = *(v3 + 16);
    v15 = *(v3 + 24);
    if (v16 >= v15 >> 1)
    {
      OUTLINED_FUNCTION_128(v15);
      sub_1C5D0DB30();
      v3 = v29;
    }

    *(v3 + 16) = v16 + 1;
    v17 = v3 + 16 * v16;
    strcpy((v17 + 32), "awaitingReload");
    *(v17 + 47) = -18;
  }

  return v3;
}

unint64_t sub_1C5D3EAA0(uint64_t a1)
{
  v2 = 0xD000000000000015;
  if (a1 & 0x10101010100) != 0 || (a1)
  {
    OUTLINED_FUNCTION_151();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    sub_1C5D3E884(a1 & 0x10101010101);
    MEMORY[0x1C6953600]();

    v3 = OUTLINED_FUNCTION_38_0();
    MEMORY[0x1C69534E0](v3);

    return 0xD000000000000018;
  }

  return v2;
}

unint64_t sub_1C5D3EB70()
{
  v1 = 0x10000000000;
  if (!v0[5])
  {
    v1 = 0;
  }

  v2 = 0x100000000;
  if (!v0[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v0[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v0[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v0[1])
  {
    v5 = 0;
  }

  return sub_1C5D3EAA0(v5 | *v0 | v4 | v3 | v2 | v1);
}

id sub_1C5D3EBDC(id a1)
{
  result = *(v1 + 32);
  if (result)
  {
    if (result == a1)
    {
      return result;
    }

    *(v1 + 57) = 0;
    result = [result isFullyDownloaded];
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    result = 0;
    *(v1 + 57) = 0;
  }

  *(v1 + 59) = result;
  return result;
}

uint64_t sub_1C5D3EC28(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  swift_unknownObjectRetain();
  sub_1C5D3EBDC(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5D3EC80()
{
  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  if (*(v0 + 48) && (*(v0 + 56) & 1) != 0)
  {
    return 1;
  }

  if (*(v0 + 59) != 1)
  {
    return 0;
  }

  if (*(v0 + 58))
  {
    return 1;
  }

  return *(v0 + 57);
}

void *sub_1C5D3ECC8()
{
  OUTLINED_FUNCTION_58_3();
  v3 = [v2 contentItemID];
  v4 = sub_1C6016940();
  v6 = v5;

  v1[2] = v4;
  v1[3] = v6;
  v1[4] = v0;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C5D3ED34()
{
  OUTLINED_FUNCTION_58_3();
  v6 = *v2;
  *(v1 + 16) = v6;

  sub_1C5D3EDD4(v0);
  sub_1C5CC583C(&v6);
  v5 = *(v0 + 16);
  sub_1C5D461C8(&v5, &qword_1ED7DF158, sub_1C5D11E0C, sub_1C5C67E68);
  v4 = *(v0 + 24);
  sub_1C5D46228(&v4);
  return v1;
}

void sub_1C5D3EDD4(uint64_t a1)
{
  v3 = *a1 == *(v1 + 16) && *(a1 + 8) == *(v1 + 24);
  if (v3 || (sub_1C6017860() & 1) != 0)
  {
    v4 = swift_unknownObjectRetain();
    sub_1C5D3EC28(v4);
    v7 = *(a1 + 24);
    v5 = *(v1 + 48);
    *(v1 + 48) = v7;
    sub_1C5C84D20(&v7, &v6, &qword_1ED7DCAD0, &qword_1ED7DCAE0);

    *(v1 + 56) = *(a1 + 32) & 1;
    *(v1 + 40) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5D3EE88()
{
  v1 = *(v0 + 48);
  *(v0 + 48) = 0;

  *(v0 + 56) = 1;
  *(v0 + 40) = 0;
}

uint64_t sub_1C5D3EEB4()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5D3EEE4()
{
  sub_1C5D3EEB4();

  return MEMORY[0x1EEE6BDC0](v0, 60, 7);
}

void sub_1C5D3EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a1;
  v22 = v20[184];
  v23 = v20[185];
  v24 = v20[186];
  v25 = v20[187];
  v26 = v20[188];
  v27 = v20[189];
  v20[184] = a1 & 1;
  v20[185] = BYTE1(a1) & 1;
  v20[186] = BYTE2(a1) & 1;
  v20[187] = BYTE3(a1) & 1;
  v20[188] = BYTE4(a1) & 1;
  v20[189] = BYTE5(a1) & 1;
  if ((a1 & 0x10101010100) == 0 && (a1 & 1) == 0)
  {
    if ((v22 | v23 | v24 | v25 | v26 | v27))
    {
      sub_1C5D3EAA0(0);
      sub_1C5D3F100();

      sub_1C5D3FA08(0, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    return;
  }

  sub_1C5D3EAA0(a1 & 0x10101010101);
  sub_1C5D3F100();

  if (v22 & 1 | ((v21 & 1) == 0))
  {
    if ((*&v21 & 0x10000) != 0)
    {
      v36 = v24;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      if ((v21 & 0x100) != 0)
      {
        v37 = v23;
      }

      else
      {
        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        sub_1C5D3F6F8();
        v39 = v38;
        v41 = v40;

        sub_1C5DBA218(v39, v42, v43, v44, v45, v46, v47, v48, v51, v52, v53);
        v50 = v49;
        swift_unknownObjectRelease();
        sub_1C5D3F198(0, v50);
      }

      return;
    }
  }

  else
  {
    if (qword_1EC1A9680 != -1)
    {
      swift_once();
    }

    v35 = sub_1C5D3F198(0, qword_1EC1BE470);
  }

  sub_1C5D3F4A8(v35);
}

uint64_t sub_1C5D3F100()
{
  OUTLINED_FUNCTION_44_3();
  __swift_project_boxed_opaque_existential_0(v1 + 6, v1[9]);
  v3 = v1[13];
  __src[0] = v1[12];
  __src[1] = v3;
  __src[2] = v2;
  __src[3] = v0;
  sub_1C5D3DD34(__src);
  memcpy(v5, __src, sizeof(v5));

  sub_1C5DBBF0C();
}

uint64_t sub_1C5D3F198(uint64_t a1, void *a2)
{
  result = swift_beginAccess();
  if (*(v2[14] + 16))
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (a1 || a2)
    {
      v7 = a2;
    }

    else
    {
      swift_beginAccess();
      v12 = v2[21];
      v30 = v6;
      v13 = v12 + 64;
      v14 = 1 << *(v12 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v12 + 64);
      v17 = (v14 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v18 = 0;
      v28 = v12;
      while (v16)
      {
LABEL_19:
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = *(*(v12 + 56) + 8 * (v20 | (v18 << 6)));
        v22 = *(v21 + 48);
        if (v22)
        {
          v29 = *(v21 + 48);

          v23 = v22;
          sub_1C5C74680(0, &qword_1ED7DCAE0);
          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          if (swift_dynamicCast())
          {

            MEMORY[0x1C69535C0](v24);
            if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C6016B30();
            }

            result = sub_1C6016B70();
            v12 = v28;
          }

          else
          {

            v12 = v28;
          }
        }
      }

      v6 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
          return result;
        }

        if (v19 >= v17)
        {
          break;
        }

        v16 = *(v13 + 8 * v19);
        ++v18;
        if (v16)
        {
          v18 = v19;
          goto LABEL_19;
        }
      }

      if (v2[13])
      {
        v25 = v2[12];
        v26 = v2[13];
      }

      else
      {
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = v2[15];

      a2 = sub_1C5DBA37C(v25, v26, v27);
    }

    v8 = v2[14];
    v9 = *(v8 + 16);

    if (v9)
    {
      v10 = v8 + 40;
      do
      {
        v11 = *(v10 - 8);
        v29 = a2;
        v30 = a1;

        v11(&v30, &v29);

        v10 += 16;
        --v9;
      }

      while (v9);
    }

    v2[14] = v6;
  }

  return result;
}

uint64_t sub_1C5D3F4A8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_21(a1, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v2);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29[-v4];
  v6 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = qword_1ED7DFE38;

  if (v7 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = qword_1ED7E1700;
    OUTLINED_FUNCTION_1_22();
    v11 = sub_1C5D46310(v9, v10);
    v12 = swift_allocObject();
    v12[2] = v8;
    v12[3] = v11;
    v12[4] = v1;

    OUTLINED_FUNCTION_34();
    sub_1C5CDC76C();

    v14 = *(v1 + 144);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    *(v1 + 144) = v16;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    v17 = *(v1 + 168);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    while (v20)
    {
LABEL_11:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = *(*(*(v17 + 56) + ((v22 << 9) | (8 * v24))) + 32);
      if (v25)
      {
        [v25 reset];
      }
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        OUTLINED_FUNCTION_24_7();
        OUTLINED_FUNCTION_27_9();
        sub_1C5D4629C(0, v26, v27, v28, MEMORY[0x1E69E5E18]);
        sub_1C6016890();
        return swift_endAccess();
      }

      v20 = *(v17 + 64 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_3_19();
  }

  __break(1u);
  return result;
}

void sub_1C5D3F6F8()
{
  if ((*(v0 + 136) & 1) != 0 || (v1 = v0, v2 = *(v0 + 128), v3 = *(*(v0 + 120) + 16), v2 >= v3))
  {
    OUTLINED_FUNCTION_80_2();
    return;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v4 = *(v0 + 128);
LABEL_5:
  v5 = 16 * v4;
  for (i = v4; ; ++i)
  {
    if (v3 == i)
    {
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

    if (v4 < v2 || i >= v3)
    {
      goto LABEL_39;
    }

    if (v4 < 0)
    {
      goto LABEL_40;
    }

    v8 = *(v1 + 120);
    if (i >= *(v8 + 16))
    {
      goto LABEL_41;
    }

    v9 = v8 + v5;
    v11 = *(v9 + 32);
    v10 = *(v9 + 40);
    OUTLINED_FUNCTION_20_13();
    swift_beginAccess();
    v12 = *(v1 + 168);
    v13 = *(v12 + 16);

    if (!v13 || (v14 = sub_1C5CE2084(v11, v10), (v15 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_29;
    }

    v16 = *(*(v12 + 56) + 8 * v14);
    swift_endAccess();

    if (*(v16 + 40) != 1)
    {
      break;
    }

    v17 = *(v16 + 48);
    if (!v17 && *(v16 + 32))
    {
      v18 = swift_unknownObjectRetain_n();
      MEMORY[0x1C69535C0](v18);
      v19 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
      {
        OUTLINED_FUNCTION_128(v19);
        sub_1C6016B30();
      }

      v4 = i + 1;
      sub_1C6016B70();
      swift_unknownObjectRelease();

      goto LABEL_5;
    }

    if (*(v16 + 56) != 1)
    {
      v26 = v17;

      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

    v5 += 16;
  }

LABEL_29:
  if (v2 < 0)
  {
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
    return;
  }

LABEL_30:
  v20 = *(v1 + 120);
  if (v2 >= *(v20 + 16))
  {
    goto LABEL_42;
  }

  v21 = v20 + 16 * v2;
  v23 = *(v21 + 32);
  v22 = *(v21 + 40);
  OUTLINED_FUNCTION_20_13();
  swift_beginAccess();
  v24 = *(v1 + 168);

  v25 = sub_1C5D020A8(v23, v22, v24);
  swift_endAccess();
  if (v25 && *(v25 + 32))
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1C5D409F4(v23, v22);

    if (!v25)
    {
      return;
    }
  }
}

void sub_1C5D3FA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_247();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  sub_1C5D11F3C();
  v26 = v25;
  OUTLINED_FUNCTION_5_18();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v24 & 1) == 0 && ((*(v20 + 184) & 1) != 0 || (*(v20 + 185) & 1) != 0 || (*(v20 + 186) & 1) != 0 || (*(v20 + 187) & 1) != 0 || (*(v20 + 188) & 1) != 0 || (*(v20 + 189)))
  {
    goto LABEL_12;
  }

  v32 = *(v20 + 200);
  *(v20 + 200) = MEMORY[0x1E69E7CC0];
  v33 = *(v32 + 16);
  if (v33)
  {
    v36 = *(v28 + 16);
    v34 = v28 + 16;
    v35 = v36;
    v37 = v32 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v38 = *(v34 + 56);
    do
    {
      v35(v31, v37, v26);
      sub_1C6016BC0();
      (*(v34 - 8))(v31, v26);
      v37 += v38;
      --v33;
    }

    while (v33);

LABEL_12:
    OUTLINED_FUNCTION_237();
    return;
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5D3FB90(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (a2)
  {
    v7 = a2;
    swift_unknownObjectRetain();

    v8 = a3;
  }

  else
  {
    sub_1C5D3F6F8();
    v7 = v9;
    a3 = v10;
    a4 = v11;
  }

  swift_beginAccess();
  if (*(*(v4 + 112) + 16))
  {
    v13 = sub_1C5C6AA20(v7) > 0 || a3 != 0;
    if ((v13 | a4))
    {
      if (sub_1C5C6AA20(v7))
      {
        sub_1C5C8CEE0(0, (v7 & 0xC000000000000001) == 0, v7);
        if ((v7 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1C6954040](0, v7);
        }

        else
        {
          v14 = *(v7 + 32);
          swift_unknownObjectRetain();
        }
      }

      else
      {
        v14 = 0;
      }

      sub_1C5D3F198(v14, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1C5D3FCE4(void *a1)
{
  if (*(*(v1 + 120) + 16))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v1 + 137) ^ 1;
  }

  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD00000000000001CLL, 0x80000001C604B8E0);
  swift_getErrorValue();
  sub_1C6017830();
  sub_1C5D3F100();

  sub_1C5D3F198(0, a1);
  v4 = *(v1 + 144);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 144) = v6;
    *(v1 + 120) = MEMORY[0x1E69E7CC0];

    *(v1 + 128) = 0;
    *(v1 + 136) = 257;
    swift_beginAccess();
    sub_1C5D4629C(0, &qword_1EC1A9498, v7, type metadata accessor for AssetSlidingQueue.Position, MEMORY[0x1E69E5E18]);
    sub_1C6016890();
    swift_endAccess();
    if (v3)
    {
      sub_1C5D3FE5C();
    }
  }
}

void sub_1C5D3FE5C()
{
  v1 = *(v0 + 192);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 192) = v3;
    sub_1C5D3F6F8();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    MEMORY[0x1C69534E0](0x203A6574617453, 0xE700000000000000);
    sub_1C6017650();
    sub_1C5D3F100();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5D4E3B8(v5, v7, v9, v11 & 0x101);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();

    v12 = v9;
    sub_1C5D3FB90(v5, v7, v9, v11 & 0x101);

    swift_unknownObjectRelease();

    LOWORD(v20) = v11 & 0x101;
    sub_1C5D3FA08(0, v13, v14, v15, v16, v17, v18, v19, v5, v7, v9, v20, 0, 0xE000000000000000, v21, v22, v23, v24, v25, v26);

    swift_unknownObjectRelease();

    sub_1C5D42AC4();
  }
}

uint64_t sub_1C5D3FFD8()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_1C6016BE0();
    sub_1C5D46310(&qword_1ED7DCF38, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1C6016820();
    swift_willThrow();
    return v0;
  }

  v0 = sub_1C5D4F300(0, 2);
  v2 = v1;
  result = swift_unknownObjectRelease();
  if (!__OFSUB__(*(v0 + 16), v2))
  {
    return v0;
  }

  __break(1u);
  return result;
}

void sub_1C5D400C0()
{
  v1 = *(v0 + 192);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 192) = v3;
  }
}

uint64_t sub_1C5D400D8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v9 = sub_1C60166C0();
  OUTLINED_FUNCTION_5_18();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  *v14 = sub_1C6016FD0();
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v9);
  v15 = sub_1C60166F0();
  result = (*(v11 + 8))(v14, v9);
  if (v15)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_20_13();
      swift_beginAccess();
      v17 = sub_1C5D020A8(a1, a2, *(v5 + 168));
      if (v17)
      {
        v18 = v17;
        swift_endAccess();
        v9 = *(v18 + 32);
        swift_unknownObjectRetain();

        if (v9)
        {
          return v9;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = sub_1C5D594F4(a1, a2, a3 & 1);
      if (!v4)
      {
        v9 = v19;
        OUTLINED_FUNCTION_20_13();
        swift_beginAccess();
        v22 = sub_1C5D020A8(a1, a2, *(v5 + 168));
        if (v22)
        {
          v23 = v22;
          swift_endAccess();
          if (!*(v23 + 32))
          {
            v24 = swift_unknownObjectRetain();
            sub_1C5D3EC28(v24);
          }
        }

        else
        {
          swift_endAccess();
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C6016BE0();
      OUTLINED_FUNCTION_0_29();
      sub_1C5D46310(v20, v21);
      swift_allocError();
      sub_1C6016820();
      swift_willThrow();
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D40370()
{
  v1[2] = v0;
  v1[3] = sub_1C6016C10();
  v1[4] = sub_1C6016C00();
  v3 = sub_1C6016BA0();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5D4040C, v3, v2);
}

uint64_t sub_1C5D4040C()
{
  OUTLINED_FUNCTION_248();
  if (*(v0[2] + 208))
  {

    OUTLINED_FUNCTION_14_3();

    return v1();
  }

  else
  {
    v0[7] = sub_1C6016C00();
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1C5D40530;

    return MEMORY[0x1EEE6DDE0]();
  }
}

uint64_t sub_1C5D40530()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_101();
  *v3 = v2;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C5D40668, v5, v4);
}

uint64_t sub_1C5D40668()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_14_3();

  return v0();
}

uint64_t sub_1C5D406C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C60166C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  *v7 = sub_1C6016FD0();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1C60166F0();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_1C5D293B0();
    v10 = *(*(a2 + 200) + 16);
    sub_1C5D29484(v10);
    v11 = *(a2 + 200);
    *(v11 + 16) = v10 + 1;
    sub_1C5D11F3C();
    result = (*(*(v12 - 8) + 16))(v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v10, a1, v12);
    *(a2 + 200) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D40864()
{
  sub_1C5C96DF0(v0 + 16);
  sub_1C5C96DF0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return v0;
}

uint64_t sub_1C5D408C4()
{
  sub_1C5D40864();

  return MEMORY[0x1EEE6BDC0](v0, 209, 7);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetLoadPrevention(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[6])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetLoadPrevention(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C5D40A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  if ((*(a1 + 136) & 1) == 0 && *(a1 + 128) < *(*(a1 + 120) + 16))
  {
    result = sub_1C5D12104();
    if (v13 == v14 >> 1)
    {
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    v15 = v13;
    v52 = a4;
    v53 = a2;
    v16 = v14 >> 1;
    v17 = (v12 + 16 * v13 + 8);
    v54 = a6;
    v49 = result;
    v50 = v14 >> 1;
    while (1)
    {
      if (v15 >= v16)
      {
        __break(1u);
        goto LABEL_40;
      }

      v19 = *(v17 - 1);
      v18 = *v17;
      OUTLINED_FUNCTION_20_13();
      swift_beginAccess();
      v20 = *(a1 + 168);
      v21 = *(v20 + 16);

      if (v21 && (v22 = OUTLINED_FUNCTION_15_1(), sub_1C5CE2084(v22, v23), (v24 & 1) != 0))
      {
        OUTLINED_FUNCTION_46_1();
        v25 = swift_endAccess();
        if (*(v20 + 40) == 1)
        {
          v33 = *(v20 + 32);
          v34 = *(v20 + 48);
          HIDWORD(v51) = *(v20 + 56);

          swift_unknownObjectRetain();
          v35 = v34;
          v36 = OUTLINED_FUNCTION_15_1();
          sub_1C5D57914(v36, v37, v33, v34, HIDWORD(v51), v53, a3, v52, v55, v54, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0]);
          v39 = v38;

          a2 = v53;

          v16 = v50;
          result = swift_unknownObjectRelease();
          if ((v39 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v25 = swift_endAccess();
      }

      if (a3)
      {
        if (v19 == a2 && v18 == a3)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_15_1();
        v25 = sub_1C6017860();
        if (v25)
        {
          a2 = v19;
LABEL_32:
          OUTLINED_FUNCTION_74_0(v25, v26, v27, v28, v29, v30, v31, v32, v46, v47, v48, v49, v50, v51, v52);
          OUTLINED_FUNCTION_31_2();
          swift_beginAccess();
          result = sub_1C5C84D20(v16 + 144, v59, &qword_1ED7DFD78, qword_1ED7DFD80);
          if (v60)
          {
            __swift_project_boxed_opaque_existential_0(v59, v60);
            v45 = sub_1C5D409F4(a2, v18);
            __swift_destroy_boxed_opaque_existential_0(v59);
            if (v45)
            {
              swift_unknownObjectRetain();
              sub_1C5D4D248();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            break;
          }

LABEL_41:
          __break(1u);
          return result;
        }
      }

      if (!v54 || (v19 == v55 ? (v41 = v18 == v54) : (v41 = 0), !v41 && (OUTLINED_FUNCTION_15_1(), v25 = sub_1C6017860(), (v25 & 1) == 0)))
      {
        OUTLINED_FUNCTION_74_0(v25, v26, v27, v28, v29, v30, v31, v32, v46, v47, v48, v49, v50, v51, v52);
        OUTLINED_FUNCTION_31_2();
        swift_beginAccess();
        result = sub_1C5C84D20(v16 + 144, v59, &qword_1ED7DFD78, qword_1ED7DFD80);
        if (v60)
        {
          __swift_project_boxed_opaque_existential_0(v59, v60);
          v42 = OUTLINED_FUNCTION_15_1();
          v44 = sub_1C5D409F4(v42, v43);
          __swift_destroy_boxed_opaque_existential_0(v59);
          if (v44)
          {
            swift_unknownObjectRetain();
            sub_1C5D4D248();

            swift_unknownObjectRelease();

            swift_unknownObjectRelease_n();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          goto LABEL_38;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_26:
      ++v15;
      v17 += 2;
      if (v16 == v15)
      {
LABEL_27:

        swift_unknownObjectRelease();
        goto LABEL_38;
      }
    }
  }

LABEL_37:

LABEL_38:
}

void sub_1C5D40DDC()
{
  OUTLINED_FUNCTION_247();
  v3 = v2;
  if ((*(v0 + 136) & 1) != 0 || (v4 = v1, v5 = v0, *(v0 + 128) >= *(*(v0 + 120) + 16)))
  {
    OUTLINED_FUNCTION_237();

    return;
  }

  v6 = sub_1C5D12104();
  if (v8 == v9 >> 1)
  {

    OUTLINED_FUNCTION_237();

    swift_unknownObjectRelease();
    return;
  }

  v12 = v8;
  v45 = v9 >> 1;
  v46 = v3;
  v42 = v6;
  v43 = (v9 >> 1) - 1;
  v13 = v7 + 16 * v8 + 8;
  HIDWORD(v44) = v4;
  while (1)
  {
    if (v12 >= v45)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_20_13();
    swift_beginAccess();
    v14 = *(v5 + 168);
    v15 = *(v14 + 16);

    if (!v15 || (v16 = OUTLINED_FUNCTION_38_0(), v18 = sub_1C5CE2084(v16, v17), (v19 & 1) == 0))
    {
      v21 = swift_endAccess();
LABEL_27:
      OUTLINED_FUNCTION_74_0(v21, v22, v23, v24, v25, v26, v27, v28, v41, v42, v43, "No queue item changes detected", v44, v45, v46);
      OUTLINED_FUNCTION_31_2();
      swift_beginAccess();
      sub_1C5C84D20(v13 + 144, __src, &qword_1ED7DFD78, qword_1ED7DFD80);
      if (__src[3])
      {
        __swift_project_boxed_opaque_existential_0(__src, __src[3]);
        v34 = OUTLINED_FUNCTION_38_0();
        v36 = sub_1C5D409F4(v34, v35);
        __swift_destroy_boxed_opaque_existential_0(__src);
        if (v36)
        {
          swift_unknownObjectRetain();
          sub_1C5D4D248();

          swift_unknownObjectRelease();

          swift_unknownObjectRelease_n();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        goto LABEL_39;
      }

      goto LABEL_41;
    }

    v20 = *(*(v14 + 56) + 8 * v18);
    v21 = swift_endAccess();
    if (*(v20 + 40) != 1)
    {
      goto LABEL_27;
    }

    v29 = *(v20 + 48);
    if (!*(v20 + 32))
    {
      goto LABEL_31;
    }

    if (!v29 || !*(v20 + 56))
    {
      break;
    }

    v30 = v29;
    swift_unknownObjectRetain_n();
    v31 = v29;

    sub_1C5D4D248();
    if (sub_1C5D4C574())
    {
      sub_1C5D4C1D0();
    }

    __swift_project_boxed_opaque_existential_0((v46 + 80), *(v46 + 104));
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000027, 0x80000001C604B7D0);
    v32 = OUTLINED_FUNCTION_38_0();
    MEMORY[0x1C69534E0](v32);
    MEMORY[0x1C69534E0](23328, 0xE200000000000000);
    swift_getObjectType();
    sub_1C6017830();
    MEMORY[0x1C69534E0](0x20726F727265205DLL, 0xE800000000000000);
    swift_getErrorValue();
    sub_1C6017830();
    __src[0] = v49;
    __src[1] = v50;
    sub_1C5D45B74(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C5DBBF0C();

    if (v4)
    {
      swift_getErrorValue();
      v33 = sub_1C5DBAD4C(v47);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (!v33)
      {
        swift_unknownObjectRelease();

        goto LABEL_37;
      }
    }

    else
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    if (v43 == v12)
    {

      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    v13 += 16;
    ++v12;
  }

  v21 = swift_unknownObjectRetain();
LABEL_31:
  OUTLINED_FUNCTION_74_0(v21, v22, v23, v24, v25, v26, v27, v28, v41, v42, v43, "No queue item changes detected", v44, v45, v46);
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  sub_1C5C84D20(v13 + 144, __src, &qword_1ED7DFD78, qword_1ED7DFD80);
  if (__src[3])
  {
    __swift_project_boxed_opaque_existential_0(__src, __src[3]);
    v37 = v29;

    v38 = OUTLINED_FUNCTION_38_0();
    v40 = sub_1C5D409F4(v38, v39);
    __swift_destroy_boxed_opaque_existential_0(__src);
    if (v40)
    {
      swift_unknownObjectRetain();
      sub_1C5D4D248();

      swift_unknownObjectRelease_n();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_37:

LABEL_39:
    OUTLINED_FUNCTION_237();
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1C5D41300(uint64_t result)
{
  if (*(result + 136))
  {
    return result;
  }

  OUTLINED_FUNCTION_44_3();
  result = *(v3 + 128);
  if (result >= *(*(v2 + 120) + 16))
  {
    return result;
  }

  result = sub_1C5D12104();
  if (v5 != v6 >> 1)
  {
    v7 = v5;
    v21 = v1;
    v8 = v6 >> 1;
    for (i = (v4 + 16 * v5 + 8); ; i += 2)
    {
      if (v7 >= v8)
      {
        __break(1u);
        return result;
      }

      v10 = *(i - 1);
      v11 = *i;
      OUTLINED_FUNCTION_20_13();
      swift_beginAccess();
      v12 = *(v2 + 168);
      v13 = *(v12 + 16);

      if (v13 && (v14 = sub_1C5CE2084(v10, v11), (v15 & 1) != 0))
      {
        v16 = *(*(v12 + 56) + 8 * v14);
        swift_endAccess();
        if (*(v16 + 40) == 1)
        {
          v17 = *(v16 + 48);
          if (v17)
          {
            v18 = v17;
            v19 = v17;
            sub_1C5C74680(0, &qword_1ED7DCAE0);
            sub_1C5C64D74(0, &qword_1ED7DCCF0);

            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              MEMORY[0x1C69535C0]();
              v20 = *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v20 >> 1)
              {
                OUTLINED_FUNCTION_128(v20);
                sub_1C6016B30();
              }

              sub_1C6016B70();

              result = swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            goto LABEL_19;
          }
        }
      }

      else
      {
        swift_endAccess();
      }

LABEL_19:
      if (v8 == ++v7)
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return swift_unknownObjectRelease();
}

void sub_1C5D41550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C5D3F4A8(a1);
  sub_1C5D3F198(0, a1);
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;

  *(v20 + 120) = MEMORY[0x1E69E7CC0];

  *(v20 + 128) = 0;
  *(v20 + 136) = 257;
  *(v20 + 152) = 0;
  OUTLINED_FUNCTION_53_2();

  sub_1C5D3EF18(v29 | v30 | 0x1000000, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1C5D41610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  if (qword_1ED7DFE38 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED7E1700;

  return MEMORY[0x1EEE6DFA0](sub_1C5D416A8, v5, 0);
}

uint64_t sub_1C5D416A8()
{
  OUTLINED_FUNCTION_248();
  v1 = *(*(v0 + 24) + 88);
  if (v1)
  {

    sub_1C5D3D700();
  }

  **(v0 + 16) = v1 == 0;
  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5D41728()
{
  OUTLINED_FUNCTION_52();
  v4 = *(v1 + 104);
  if (!v4)
  {
    v5 = 0;
    v7 = 0xE000000000000000;
LABEL_9:
    strcpy(v17, "Replaced by ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;

    v8 = OUTLINED_FUNCTION_303();
    MEMORY[0x1C69534E0](v8);
    v9 = sub_1C5DBA4F0(v5, v7, 0, v17[0], v17[1]);

    v10 = v9;
    OUTLINED_FUNCTION_60_3();
    sub_1C5D3F198(v11, v12);

    v0[12] = v3;
    v0[13] = v2;

    goto LABEL_10;
  }

  v5 = v0[12];
  if (v5 != v3 || v4 != v2)
  {
    OUTLINED_FUNCTION_303();
    v7 = v4;
    if ((sub_1C6017860() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  result = sub_1C5D3F100();
  v14 = v0[18];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v0[18] = v16;
    v0[19] = 0;
  }

  return result;
}

void sub_1C5D4186C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_24_7();

  sub_1C5D29398();
  v7 = *(*(v3 + 112) + 16);
  sub_1C5D2946C(v7);
  v8 = *(v3 + 112);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_1C5D46050;
  *(v9 + 40) = v6;
  *(v3 + 112) = v8;
  swift_endAccess();
  sub_1C5D3FB90(0, 0, 0, 0);
}

void sub_1C5D41938()
{
  if (v0[13])
  {
    v1 = v0[12];
    v2 = v0[13];
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  strcpy(v13, "New SetQueue ");
  HIWORD(v13[1]) = -4864;

  v3 = OUTLINED_FUNCTION_6_3();
  MEMORY[0x1C69534E0](v3);
  v4 = sub_1C5DBA4F0(v1, v2, 0, v13[0], v13[1]);

  v5 = v4;
  sub_1C5D3F198(0, v4);

  OUTLINED_FUNCTION_151();
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  v13[0] = 0xD000000000000014;
  v13[1] = v6;
  v7 = OUTLINED_FUNCTION_6_3();
  MEMORY[0x1C69534E0](v7);
  OUTLINED_FUNCTION_60_3();
  sub_1C5D3F100();

  if (!v0[19])
  {
    OUTLINED_FUNCTION_31_2();
    sub_1C5D41AB0(v8, v9, v10);
  }

  OUTLINED_FUNCTION_39_3();
  sub_1C5D4186C(v11, v12);
}

void sub_1C5D41AB0(char a1, int a2, uint64_t a3)
{
  if (!*(v3 + 192) || a3)
  {
    sub_1C5D41B10();
  }

  else
  {
    v4 = *(v3 + 190);
    if (v4 == 2)
    {
      if (a2)
      {
        v5 = 256;
      }

      else
      {
        v5 = 0;
      }

      *(v3 + 190) = v5 & 0xFFFE | a1 & 1;
    }

    else
    {
      v6 = v4 & 0x100;
      v7 = v4 & a1;
      if ((a2 & (v6 >> 8)) != 0)
      {
        v8 = 256;
      }

      else
      {
        v8 = 0;
      }

      *(v3 + 190) = v8 & 0xFFFE | v7 & 1;
    }
  }
}

void sub_1C5D41B10()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_4_21(v10, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v12);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v145 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(v1 + 160);
    if (v18 > 2)
    {
      __swift_project_boxed_opaque_existential_0((v1 + 48), *(v1 + 72));
      OUTLINED_FUNCTION_89();
      v166[0] = 0xD000000000000014;
      v166[1] = v23;
      sub_1C5D45B74(v166);
      memcpy(v167, v166, 0xD9uLL);
      sub_1C5DBBF0C();
      v158 = objc_opt_self();
      v157 = *MEMORY[0x1E69B1340];
      v156 = sub_1C6016900();
      v155 = sub_1C6016900();
      v24 = sub_1C6016900();
      sub_1C5D45B88(0, &qword_1ED7DCAE8, MEMORY[0x1E69E6F90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C6031150;
      v159 = v17;
      v161 = 0;
      v162 = 0xE000000000000000;
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      v161 = 0xD000000000000010;
      v162 = v26;

      v28 = MEMORY[0x1E69E6158];
      v29 = MEMORY[0x1C6953600](v27, MEMORY[0x1E69E6158]);
      v31 = v30;

      MEMORY[0x1C69534E0](v29, v31);

      v32 = v161;
      v33 = v162;
      *(v25 + 56) = v28;
      *(v25 + 32) = v32;
      *(v25 + 40) = v33;
      v164 = 0;
      v165 = 0xE000000000000000;
      MEMORY[0x1C69534E0](0x203A6574617473, 0xE700000000000000);
      sub_1C5D3F6F8();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v163 = &type metadata for AssetQueueState;
      v42 = swift_allocObject();
      v161 = v42;
      *(v42 + 16) = v35;
      *(v42 + 24) = v37;
      *(v42 + 32) = v39;
      *(v42 + 40) = v41 & 1;
      *(v42 + 41) = HIBYTE(v41) & 1;
      DefaultStringInterpolation.appendInterpolation(describing:default:)(&v161, 7104878, 0xE300000000000000);
      sub_1C5D461C8(&v161, &qword_1ED7E0200, MEMORY[0x1E69E6720], sub_1C5D45B88);
      v43 = v164;
      v44 = v165;
      *(v25 + 88) = v28;
      *(v25 + 64) = v43;
      *(v25 + 72) = v44;
      v161 = 0;
      v162 = 0xE000000000000000;
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      v161 = 0xD000000000000011;
      v162 = v45;
      v164 = *(v1 + 160);
      v46 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v46);

      v47 = v161;
      v48 = v162;
      *(v25 + 120) = v28;
      *(v25 + 96) = v47;
      *(v25 + 104) = v48;
      v49 = v156;
      v50 = v155;
      sub_1C5DC9604(v157, v156, v155, v24, 0, v25, 0, v158);
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    *(v1 + 160) = v18 + 1;
    v19 = *(v1 + 152);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      LODWORD(v158) = v11;
      v156 = v5;
      *(v1 + 152) = v21;
      v22 = 0;
      v51 = sub_1C5D3FFD8();
      v148 = v3;
      v154 = v52;
      v151 = v53;
      v150 = v15;
      v159 = v17;
      v167[0] = 0;
      v167[1] = 0xE000000000000000;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000020, 0x80000001C604B760);
      LODWORD(v157) = v9;
      v155 = v7;
      if (v158)
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      v3 = 0xE500000000000000;
      if (v158)
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      MEMORY[0x1C69534E0](v54, v55);

      MEMORY[0x1C69534E0](0x6552776F6C6C6120, 0xEC0000003D657375);
      if (v157)
      {
        v56 = 1702195828;
      }

      else
      {
        v56 = 0x65736C6166;
      }

      v7 = v155;
      v9 = v157;
      if (v157)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE500000000000000;
      }

      v15 = 0xD000000000000010;
      MEMORY[0x1C69534E0](v56, v57);

      MEMORY[0x1C69534E0](0xD000000000000013, 0x80000001C604B790);
      v58 = MEMORY[0x1C6953600](v51, MEMORY[0x1E69E6158]);
      MEMORY[0x1C69534E0](v58);

      sub_1C5D3F100();

      if (*(v1 + 152) < 2 || (v9 & 1) == 0 || (v158 & 1) == 0 || v7 || (sub_1C5DBCB98(v51, *(v1 + 120)) & 1) == 0 || (OUTLINED_FUNCTION_31_2(), swift_beginAccess(), *(*(v1 + 168) + 16) != *(v51 + 16)) || (*(v1 + 136) & 1) != 0 || v154 != *(v1 + 128) || (v151 & 1) != *(v1 + 137))
      {
        v3 = *(v51 + 16);
        v15 = v159;
        if (v3)
        {
          v5 = v1;
          v59 = sub_1C5D42B1C();
          if (v154 < v3)
          {
            v61 = v60;
            v152 = v51;
            v15 = (v51 + 32);
            v62 = (v51 + 32 + 16 * v154);
            v63 = *v62;
            v7 = v62[1];
            v164 = MEMORY[0x1E69E7CC0];
            v149 = v63;
            if (v60)
            {
              v64 = v59;
              if (v59 != v63 || v60 != v7)
              {
                v66 = sub_1C6017860();
                if ((v66 & 1) == 0)
                {
                  v167[0] = v64;
                  v167[1] = v61;
                  MEMORY[0x1EEE9AC00](v66);
                  *(&v145 - 2) = v167;

                  v15 = v152;
                  if (!sub_1C5D2AE18(sub_1C5D46404, (&v145 - 4), v152))
                  {
                    goto LABEL_119;
                  }

                  OUTLINED_FUNCTION_43_6();
                  v91 = v90;
                  v93 = *(v90 + 16);
                  v92 = *(v90 + 24);
                  if (v93 >= v92 >> 1)
                  {
                    OUTLINED_FUNCTION_128(v92);
                    sub_1C5D0DB30();
                    v91 = v144;
                  }

                  *(v91 + 16) = v93 + 1;
                  v94 = v91 + 16 * v93;
                  *(v94 + 32) = v64;
                  *(v94 + 40) = v61;
                  v147 = v91;
                  v164 = v91;
                  goto LABEL_49;
                }
              }

              if (v158)
              {
                v67 = v7;
                v153 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v67 = v7;

                OUTLINED_FUNCTION_43_6();
                v64 = *(v79 + 16);
                v80 = *(v79 + 24);
                v153 = v79;
                if (v64 >= v80 >> 1)
                {
                  OUTLINED_FUNCTION_128(v80);
                  sub_1C5D0DB30();
                  v153 = v140;
                }

                v81 = v153;
                *(v153 + 16) = v64 + 1;
                v82 = v81 + 16 * v64;
                *(v82 + 32) = v149;
                *(v82 + 40) = v7;
              }

              sub_1C5D42B7C();
              if (!v83)
              {
                goto LABEL_67;
              }

              OUTLINED_FUNCTION_75_3();
              v85 = v154 + 1;
              if (v154 + 1 < v3)
              {
                if (v85 >= *(v152 + 2))
                {
                  __break(1u);
                  goto LABEL_128;
                }

                v86 = &v15[16 * v85];
                v87 = v64 == *v86 && v1 == *(v86 + 1);
                if (v87 || (v84 = sub_1C6017860(), (v84 & 1) != 0))
                {
                  if (v9)
                  {

LABEL_67:
                    v147 = MEMORY[0x1E69E7CC0];
                    v7 = v67;
                    v15 = v152;
                    goto LABEL_81;
                  }
                }
              }

              v167[0] = v64;
              v167[1] = v1;
              MEMORY[0x1EEE9AC00](v84);
              OUTLINED_FUNCTION_59_3();
              v15 = v152;
              if (sub_1C5D2AE18(sub_1C5D46404, v88, v152))
              {
                v7 = v67;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_70:
                  v89 = *(v153 + 24);
                  if (*(v153 + 16) >= v89 >> 1)
                  {
                    OUTLINED_FUNCTION_128(v89);
                    sub_1C5D0DB30();
                    v153 = v143;
                  }

                  OUTLINED_FUNCTION_78_1();
                  v147 = MEMORY[0x1E69E7CC0];
                  goto LABEL_75;
                }

LABEL_128:
                sub_1C5D0DB30();
                v153 = v142;
                goto LABEL_70;
              }

              v147 = MEMORY[0x1E69E7CC0];
              LOBYTE(v9) = v157;
              v7 = v67;
              while (1)
              {
LABEL_81:
                swift_beginAccess();

                v3 = sub_1C5D3E21C(v95, v9 & 1, v15);

                v160[0] = v3;
                if (v158)
                {
                  OUTLINED_FUNCTION_20_13();
                  swift_beginAccess();
                  v96 = OUTLINED_FUNCTION_69_3();
                  v99 = sub_1C5D020A8(v96, v97, v98);
                  swift_endAccess();
                  if (v99)
                  {
                    swift_isUniquelyReferenced_nonNull_native();
                    v100 = OUTLINED_FUNCTION_56_2();
                    sub_1C5E369E4(v100, v101, v7);
                    v3 = v166[0];
LABEL_86:
                    v160[0] = v3;
                    goto LABEL_87;
                  }

                  v102 = OUTLINED_FUNCTION_69_3();
                  sub_1C5CE2084(v102, v103);
                  if (v104)
                  {
                    swift_isUniquelyReferenced_nonNull_native();
                    v146 = v7;
                    v166[0] = v3;
                    OUTLINED_FUNCTION_27_9();
                    sub_1C5D4629C(0, v105, v106, v107, MEMORY[0x1E69E6DC8]);
                    v7 = v146;
                    v15 = v152;
                    sub_1C6017660();
                    v3 = v166[0];

                    type metadata accessor for AssetSlidingQueue.Position();
                    sub_1C6017680();

                    goto LABEL_86;
                  }
                }

LABEL_87:
                v108 = OUTLINED_FUNCTION_69_3();
                v110 = sub_1C5D020A8(v108, v109, v3);
                if (v110 && (v111 = *(v110 + 32), swift_unknownObjectRetain(), , (v158 = v111) != 0))
                {
                  v146 = v7;
                }

                else
                {
                  v112 = OUTLINED_FUNCTION_69_3();
                  v115 = sub_1C5D594F4(v112, v113, v114);
                  if (v22)
                  {

                    sub_1C5D3FCE4(v22);
                    swift_unknownObjectRelease();

                    OUTLINED_FUNCTION_55_3();
                    if (!v20)
                    {
                      goto LABEL_5;
                    }

                    __break(1u);
                  }

                  v116 = v115;
                  type metadata accessor for AssetSlidingQueue.Position();
                  v111 = swift_allocObject();
                  swift_unknownObjectRetain();
                  v158 = v116;
                  sub_1C5D3ECC8();
                  swift_isUniquelyReferenced_nonNull_native();
                  v117 = OUTLINED_FUNCTION_56_2();
                  v146 = v7;
                  sub_1C5E369E4(v117, v118, v7);
                  v3 = v166[0];
                  v160[0] = v166[0];
                }

                v120 = sub_1C5D3E504(v119, v160);
                v145 = v22;
                v5 = &v164;
                sub_1C5D0CCE4(v120);
                v147 = v164;
                v121 = *(v164 + 16);
                if (v121)
                {
                  v122 = (v147 + 40);
                  do
                  {
                    if (v3[2])
                    {
                      v123 = *(v122 - 1);
                      v111 = *v122;

                      v5 = sub_1C5CE2084(v123, v111);
                      v125 = v124;

                      if (v125)
                      {
                        v5 = *(v3[7] + 8 * v5);

                        sub_1C5D3EE88();
                        v126 = *(v5 + 32);
                        if (v126)
                        {
                          [v126 prepareForReuseWithSeekToStartTime_];
                        }
                      }
                    }

                    v122 += 2;
                    --v121;
                  }

                  while (v121);
                }

                v9 = v155;
                if (!v155)
                {

                  goto LABEL_114;
                }

                swift_unknownObjectRetain();
                v127 = v148;
                sub_1C5D45E64(v148);
                v128 = [v9 contentItemID];
                sub_1C6016940();
                OUTLINED_FUNCTION_75_3();

                if (v149 == v111 && v146 == v5)
                {
                }

                else
                {
                  v130 = sub_1C6017860();

                  if ((v130 & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                [v158 setPlaybackStartTimeOverride_];
LABEL_113:
                swift_unknownObjectRelease();
                sub_1C5D45E74(v127);
LABEL_114:
                v131 = *(v1 + 144);
                v7 = v131 + 1;
                if (__OFADD__(v131, 1))
                {
LABEL_125:
                  __break(1u);
                }

                else
                {
                  *(v1 + 144) = v7;

                  v5 = sub_1C5D3E6FC(v132, v160);

                  v133 = sub_1C6016C30();
                  v15 = v150;
                  __swift_storeEnumTagSinglePayload(v150, 1, 1, v133);
                  v134 = qword_1ED7DFE38;

                  v9 = v158;
                  swift_unknownObjectRetain();
                  if (v134 == -1)
                  {
                    goto LABEL_116;
                  }
                }

                OUTLINED_FUNCTION_3_19();
LABEL_116:
                v22 = qword_1ED7E1700;
                OUTLINED_FUNCTION_1_22();
                v137 = sub_1C5D46310(v135, v136);
                v138 = swift_allocObject();
                *(v138 + 16) = v22;
                *(v138 + 24) = v137;
                v139 = v147;
                *(v138 + 32) = v1;
                *(v138 + 40) = v139;
                *(v138 + 48) = v7;
                *(v138 + 56) = v5;
                *(v138 + 64) = v157 & 1;
                *(v138 + 72) = v9;

                OUTLINED_FUNCTION_34();
                sub_1C5CDC270();

                *(v1 + 120) = v152;

                *(v1 + 128) = v154;
                *(v1 + 136) = 0;
                *(v1 + 137) = v151 & 1;
                *(v1 + 168) = v3;

                sub_1C5D3FE5C();

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                OUTLINED_FUNCTION_55_3();
                if (!v20)
                {
                  goto LABEL_5;
                }

                __break(1u);
LABEL_119:

                v147 = MEMORY[0x1E69E7CC0];
LABEL_49:
                sub_1C5D42B7C();
                if (!v72)
                {
                  goto LABEL_74;
                }

                OUTLINED_FUNCTION_75_3();
                v167[0] = v73;
                v167[1] = v74;
                MEMORY[0x1EEE9AC00](v73);
                OUTLINED_FUNCTION_59_3();
                if (!sub_1C5D2AE18(sub_1C5D0A05C, v75, v15))
                {

LABEL_74:
                  v153 = MEMORY[0x1E69E7CC0];
                  goto LABEL_75;
                }

                OUTLINED_FUNCTION_43_6();
                v78 = *(v76 + 16);
                v77 = *(v76 + 24);
                v153 = v76;
                if (v78 >= v77 >> 1)
                {
                  OUTLINED_FUNCTION_128(v77);
                  sub_1C5D0DB30();
                  v153 = v141;
                }

                OUTLINED_FUNCTION_78_1();
LABEL_75:
                LOBYTE(v9) = v157;
              }
            }

LABEL_48:

            v147 = MEMORY[0x1E69E7CC0];
            v15 = v152;
            goto LABEL_49;
          }

LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v68 = *(v1 + 104);
        if (v68)
        {
          v69 = *(v1 + 96);
        }

        else
        {
          v69 = 0;
        }

        if (v68)
        {
          v22 = *(v1 + 104);
        }

        else
        {
          v22 = 0xE000000000000000;
        }

        v70 = sub_1C5DBA6A0(v69, v22);

        sub_1C5D3FCE4(v70);
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_55_3();
        if (v20)
        {
          __break(1u);
          goto LABEL_48;
        }

        goto LABEL_5;
      }

      v5 = v1;
      sub_1C5D3F100();
      sub_1C5D3FE5C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_55_3();
      if (!v20)
      {
LABEL_5:
        *(v1 + 160) = v71;
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
    __break(1u);
    goto LABEL_124;
  }

LABEL_7:
  OUTLINED_FUNCTION_237();
}

void sub_1C5D42AC4()
{
  v1 = *(v0 + 192);
  v4 = __OFSUB__(v1, 1);
  v2 = v1 == 1;
  v3 = v1 - 1 < 0;
  v5 = v1 - 1;
  if (v3 != v4)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 192) = v5;
    if (v2 && *(v0 + 190) != 2)
    {
      *(v0 + 190) = 2;
      OUTLINED_FUNCTION_31_2();
      sub_1C5D41AB0(v6, v7, v8);
    }
  }
}

uint64_t sub_1C5D42B1C()
{
  if (*(v0 + 136))
  {
    return 0;
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  if (v1 >= *(v2 + 16))
  {
    return 0;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = *(v2 + 16 * v1 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D42B7C()
{
  if (*(v0 + 136))
  {
    return 0;
  }

  v1 = *(v0 + 128);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v0 + 120);
  if (v3 >= *(v4 + 16))
  {
    return 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = *(v4 + 16 * v3 + 32);

    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C5D42BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = v12;
  *(v8 + 176) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 136) = a4;
  if (qword_1ED7DFE38 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED7E1700;

  return MEMORY[0x1EEE6DFA0](sub_1C5D42C98, v9, 0);
}

uint64_t sub_1C5D42C98()
{
  v1 = *(v0 + 136);
  if (*(v1 + 88))
  {
    v2 = *(v0 + 144);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 40;
      do
      {
        if (*(v1 + 88))
        {

          v5 = OUTLINED_FUNCTION_80();
          sub_1C5D3D63C(v5, v6);
        }

        v4 += 16;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    sub_1C5CDAF64(v1 + 48, v0 + 16);
    v7 = *(v0 + 40);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v7);
    OUTLINED_FUNCTION_5_18();
    v10 = v9;
    v11 = swift_task_alloc();
    (*(v10 + 16))(v11, v8, v7);
    v12 = *v11;
    v13 = type metadata accessor for EventReporter();
    *(v0 + 80) = v13;
    *(v0 + 88) = &off_1F4544D18;
    *(v0 + 56) = v12;
    type metadata accessor for AssetProducer();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v13);
    OUTLINED_FUNCTION_5_18();
    v17 = v16;
    v18 = swift_task_alloc();
    (*(v17 + 16))(v18, v15, v13);
    *(v0 + 96) = *v18;
    *(v0 + 120) = v13;
    *(v0 + 128) = &off_1F4544D18;
    v14[3] = 0;
    swift_unknownObjectWeakInit();
    v14[9] = 0;
    type metadata accessor for AssetTask();

    v14[10] = sub_1C6016880();
    v14[3] = &off_1F4541978;
    swift_unknownObjectWeakAssign();

    sub_1C5C6BEFC((v0 + 96), (v14 + 4));
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);

    *(v1 + 88) = v14;
  }

  if (*(v1 + 88))
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);

    v21 = OUTLINED_FUNCTION_6_3();
    sub_1C5D3C364(v21, v22, v20, v19);
  }

  OUTLINED_FUNCTION_172();

  return v23();
}

void sub_1C5D42F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = sub_1C5D0C9C0(a1, a2, *(v20 + 120));
  if ((v22 & 1) == 0 && ((*(v20 + 136) & 1) != 0 || v21 != *(v20 + 128)))
  {
    *(v20 + 128) = v21;
    *(v20 + 136) = 0;

    sub_1C5D3FA08(0, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

void sub_1C5D42FE0()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_4_21(v3, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v4);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_24_7();
  v6 = OUTLINED_FUNCTION_303();
  sub_1C5D45A78(v6, v7);
  swift_endAccess();

  v8 = sub_1C6016C30();
  OUTLINED_FUNCTION_85_2(v8);
  v9 = qword_1ED7DFE38;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  v10 = qword_1ED7E1700;
  OUTLINED_FUNCTION_1_22();
  v13 = sub_1C5D46310(v11, v12);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v13;
  v14[4] = v0;
  v14[5] = v2;
  v14[6] = v1;

  OUTLINED_FUNCTION_34();
  sub_1C5CDC76C();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1C5D3F6F8();
    v16 = v15;
    sub_1C5D4E3B8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5D43188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  if (qword_1ED7DFE38 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED7E1700;

  return MEMORY[0x1EEE6DFA0](sub_1C5D46400, v7, 0);
}

uint64_t sub_1C5D43224()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_4_21(v4, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v5);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_20_13();
  swift_beginAccess();
  v7 = *(v1 + 168);
  if (!*(v7 + 16))
  {
    return swift_endAccess();
  }

  v8 = OUTLINED_FUNCTION_303();
  sub_1C5CE2084(v8, v9);
  if ((v10 & 1) == 0)
  {
    return swift_endAccess();
  }

  OUTLINED_FUNCTION_46_1();
  swift_endAccess();
  *(v7 + 40) = 0;
  v11 = sub_1C6016C30();
  OUTLINED_FUNCTION_85_2(v11);
  v12 = qword_1ED7DFE38;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  v13 = qword_1ED7E1700;
  OUTLINED_FUNCTION_1_22();
  v16 = sub_1C5D46310(v14, v15);
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v16;
  v17[4] = v0;
  v17[5] = v3;
  v17[6] = v2;

  OUTLINED_FUNCTION_34();
  sub_1C5CDC76C();

  v19 = *(v0 + 144);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 144) = v21;
  }

  return result;
}

uint64_t sub_1C5D433BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  if (qword_1ED7DFE38 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED7E1700;

  return MEMORY[0x1EEE6DFA0](sub_1C5D43458, v7, 0);
}

uint64_t sub_1C5D43458()
{
  OUTLINED_FUNCTION_13();
  v1 = *(*(v0 + 24) + 88);
  if (v1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);

    sub_1C5D3D63C(v3, v2);
  }

  **(v0 + 16) = v1 == 0;
  OUTLINED_FUNCTION_172();

  return v4();
}

uint64_t sub_1C5D434EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_20_13();
  swift_beginAccess();
  v9 = *(v4 + 168);
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v10 = sub_1C5CE2084(a1, a2);
  if ((v11 & 1) == 0)
  {
    return swift_endAccess();
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  if (a4 == 2)
  {
    *(v12 + 40) = 0;

    OUTLINED_FUNCTION_31_2();
    sub_1C5D41AB0(v13, v14, v15);
  }

  else
  {
    v17 = *(v12 + 48);
    *(v12 + 48) = a3;

    *(v12 + 56) = a4 == 0;
    *(v12 + 40) = 1;
    v18 = a3;
    sub_1C5D3FE5C();
  }
}

uint64_t sub_1C5D43780(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = sub_1C5D020A8(a1, a2, *(v2 + 168));
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    *(v6 + 57) = 0;
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v7 = sub_1C5D020A8(a1, a2, *(v2 + 168));
  if (!v7)
  {
    return swift_endAccess();
  }

  v8 = v7;
  swift_endAccess();
  *(v8 + 58) = 0;
}

uint64_t sub_1C5D4384C()
{
  OUTLINED_FUNCTION_248();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1C6016C10();
  v1[5] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_77();
  v1[6] = v4;
  v1[7] = v5;
  v6 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5D438CC()
{
  OUTLINED_FUNCTION_9();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = [*(v0 + 16) contentItemID];
    v3 = sub_1C6016940();
    v5 = v4;

    sub_1C5D43780(v3, v5);

    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_81_2(v6);

    return sub_1C5D59CBC();
  }

  else
  {

    sub_1C6016BE0();
    OUTLINED_FUNCTION_0_29();
    sub_1C5D46310(v8, v9);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63_1();
    swift_willThrow();
    OUTLINED_FUNCTION_172();

    return v10();
  }
}

uint64_t sub_1C5D43A3C()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  v5[10] = v0;

  if (v0)
  {
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_1C5D43BBC;
  }

  else
  {
    v5[11] = v3;
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_1C5D43B4C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1C5D43B4C()
{
  OUTLINED_FUNCTION_248();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1C5D43BBC()
{
  OUTLINED_FUNCTION_248();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D43C24()
{
  OUTLINED_FUNCTION_248();
  v1[2] = v2;
  v1[3] = v0;
  sub_1C6016C10();
  v1[4] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_77();
  v1[5] = v3;
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5D43CA0()
{
  OUTLINED_FUNCTION_13();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1C5D43DC8;

    return sub_1C5D5A784();
  }

  else
  {

    sub_1C6016BE0();
    OUTLINED_FUNCTION_0_29();
    sub_1C5D46310(v4, v5);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63_1();
    swift_willThrow();
    OUTLINED_FUNCTION_172();

    return v6();
  }
}

uint64_t sub_1C5D43DC8()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1C5D43F5C;
  }

  else
  {
    v7 = sub_1C5D43EF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C5D43EF8()
{
  OUTLINED_FUNCTION_248();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14_3();

  return v0();
}

uint64_t sub_1C5D43F5C()
{
  OUTLINED_FUNCTION_248();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D43FC4()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  *(v1 + 253) = v3;
  *(v1 + 168) = v4;
  sub_1C6016C10();
  *(v1 + 192) = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_77();
  *(v1 + 200) = v5;
  *(v1 + 208) = v6;
  v7 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C5D44048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  if (*(*(v14 + 184) + 208))
  {
    goto LABEL_2;
  }

  sub_1C6016CB0();
  v28 = *(v14 + 184);
  if ((*(v28 + 184) & 1) != 0 || (*(v28 + 185) & 1) != 0 || (*(v28 + 186) & 1) != 0 || (*(v28 + 187) & 1) != 0 || (*(v28 + 188) & 1) != 0 || *(v28 + 189))
  {
    v36 = *(v14 + 253);
    OUTLINED_FUNCTION_64_4();
    v37 = OUTLINED_FUNCTION_35_5();
    MEMORY[0x1C69534E0](v37, 0x80000001C604B9A0);
    *(v14 + 252) = v36;
    sub_1C6017650();
    OUTLINED_FUNCTION_84_0();
    v38 = OUTLINED_FUNCTION_80();
    MEMORY[0x1C69534E0](v38);
    MEMORY[0x1C69534E0](23328, 0xE200000000000000);
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_53_2();
    v42 = sub_1C5D3EAA0(v41 | v39 | v40);
    MEMORY[0x1C69534E0](v42);

    MEMORY[0x1C69534E0](93, 0xE100000000000000);
    OUTLINED_FUNCTION_39_3();
    sub_1C5D3F100();

    v43 = swift_task_alloc();
    *(v14 + 216) = v43;
    *v43 = v14;
    OUTLINED_FUNCTION_26_7();
LABEL_20:
    *(v44 + 8) = v45;
    OUTLINED_FUNCTION_19_3();

    sub_1C5D40370();
    return;
  }

  sub_1C5D0C9C0(*(v14 + 168), *(v14 + 176), *(v28 + 120));
  if (v29 & 1) != 0 || (v30 = *(v14 + 184), (*(v30 + 136)))
  {
LABEL_2:

    sub_1C6016BE0();
    OUTLINED_FUNCTION_0_29();
    sub_1C5D46310(v18, v19);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63_1();
    swift_willThrow();
    OUTLINED_FUNCTION_172();
LABEL_4:
    OUTLINED_FUNCTION_19_3();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
    return;
  }

  v31 = OUTLINED_FUNCTION_50_4();
  if (v33)
  {
    OUTLINED_FUNCTION_44_5();

    OUTLINED_FUNCTION_151();
    sub_1C6017540();
    *(v14 + 120) = a9;
    *(v14 + 128) = a10;
    OUTLINED_FUNCTION_30_8();
    *(v14 + 251) = v15;
    sub_1C6017650();
    v34 = OUTLINED_FUNCTION_4_22();
    MEMORY[0x1C69534E0](v34, 0xE600000000000000);
    v35 = OUTLINED_FUNCTION_80();
    MEMORY[0x1C69534E0](v35);
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_60_3();
    sub_1C5D3F100();
LABEL_18:

    OUTLINED_FUNCTION_14_3();
    goto LABEL_4;
  }

  if (v31 >= v32 || *(v30 + 138) != 1)
  {
    v52 = *(v14 + 253);
    OUTLINED_FUNCTION_41_2();
    v53 = *(v14 + 64);
    *(v14 + 40) = *(v14 + 56);
    *(v14 + 48) = v53;
    v54 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1C69534E0](v54, 0x80000001C604B920);
    *(v14 + 248) = v52;
    sub_1C6017650();
    v55 = OUTLINED_FUNCTION_4_22();
    MEMORY[0x1C69534E0](v55, 0xE600000000000000);
    v56 = OUTLINED_FUNCTION_80();
    MEMORY[0x1C69534E0](v56);
    OUTLINED_FUNCTION_62_4();
    OUTLINED_FUNCTION_39_3();
    sub_1C5D3F100();
LABEL_33:

    v57 = swift_task_alloc();
    *(v14 + 232) = v57;
    *v57 = v14;
    OUTLINED_FUNCTION_5_19();
    goto LABEL_20;
  }

  sub_1C5D12104(v31);
  OUTLINED_FUNCTION_24_9();
  while (1)
  {
    if (v16 == v15)
    {
      OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_151();
      sub_1C6017540();
      *(v14 + 104) = a9;
      *(v14 + 112) = a10;
      OUTLINED_FUNCTION_18_8();
      *(v14 + 250) = v16;
      sub_1C6017650();
      v63 = OUTLINED_FUNCTION_4_22();
      MEMORY[0x1C69534E0](v63, 0xE600000000000000);
      v64 = OUTLINED_FUNCTION_6_3();
      MEMORY[0x1C69534E0](v64);
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_65_4();
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    if (v15 >= v16)
    {
      break;
    }

    v47 = *(v14 + 184);
    OUTLINED_FUNCTION_20_13();
    swift_beginAccess();
    v48 = *(*(v47 + 168) + 16);

    if (!v48 || (v49 = OUTLINED_FUNCTION_80(), sub_1C5CE2084(v49, v50), (v51 & 1) == 0))
    {
      swift_endAccess();
LABEL_35:
      v58 = *(v14 + 253);
      OUTLINED_FUNCTION_42_5();
      v59 = *(v14 + 96);
      *(v14 + 72) = *(v14 + 88);
      *(v14 + 80) = v59;
      v60 = OUTLINED_FUNCTION_13_9();
      MEMORY[0x1C69534E0](v60, 0x80000001C604B920);
      *(v14 + 249) = v58;
      sub_1C6017650();
      v61 = OUTLINED_FUNCTION_4_22();
      MEMORY[0x1C69534E0](v61, 0xE600000000000000);
      OUTLINED_FUNCTION_68_3();
      OUTLINED_FUNCTION_10_15();
      v62 = OUTLINED_FUNCTION_80();
      MEMORY[0x1C69534E0](v62);

      OUTLINED_FUNCTION_12_14();
      OUTLINED_FUNCTION_67_2();
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_46_1();
    swift_endAccess();
    if ((sub_1C5D3EC80() & 1) == 0)
    {
      goto LABEL_35;
    }

    v17 += 16;
    ++v15;
  }

  __break(1u);
}

uint64_t sub_1C5D445B4()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_1C5D45194;
  }

  else
  {
    v7 = sub_1C5D446E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1C5D446E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  sub_1C5D0C9C0(*(v14 + 168), *(v14 + 176), *(*(v14 + 184) + 120));
  if (v18 & 1) != 0 || (v19 = *(v14 + 184), (*(v19 + 136)))
  {

    sub_1C6016BE0();
    OUTLINED_FUNCTION_0_29();
    sub_1C5D46310(v20, v21);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63_1();
    swift_willThrow();
    OUTLINED_FUNCTION_172();
LABEL_4:
    OUTLINED_FUNCTION_19_3();

    v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
    return;
  }

  v30 = OUTLINED_FUNCTION_50_4();
  if (v32)
  {
    OUTLINED_FUNCTION_44_5();

    OUTLINED_FUNCTION_151();
    sub_1C6017540();
    *(v14 + 120) = a9;
    *(v14 + 128) = a10;
    OUTLINED_FUNCTION_30_8();
    *(v14 + 251) = v15;
    sub_1C6017650();
    v33 = OUTLINED_FUNCTION_4_22();
    MEMORY[0x1C69534E0](v33, 0xE600000000000000);
    v34 = OUTLINED_FUNCTION_80();
    MEMORY[0x1C69534E0](v34);
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_60_3();
    sub_1C5D3F100();
LABEL_10:

    OUTLINED_FUNCTION_14_3();
    goto LABEL_4;
  }

  if (v30 < v31 && *(v19 + 138) == 1)
  {
    sub_1C5D12104(v30);
    OUTLINED_FUNCTION_24_9();
    while (1)
    {
      if (v16 == v15)
      {
        OUTLINED_FUNCTION_66_4();
        OUTLINED_FUNCTION_151();
        sub_1C6017540();
        *(v14 + 104) = a9;
        *(v14 + 112) = a10;
        OUTLINED_FUNCTION_18_8();
        *(v14 + 250) = v16;
        sub_1C6017650();
        v53 = OUTLINED_FUNCTION_4_22();
        MEMORY[0x1C69534E0](v53, 0xE600000000000000);
        v54 = OUTLINED_FUNCTION_6_3();
        MEMORY[0x1C69534E0](v54);
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_65_4();
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      if (v15 >= v16)
      {
        break;
      }

      v35 = *(v14 + 184);
      OUTLINED_FUNCTION_20_13();
      swift_beginAccess();
      v36 = *(*(v35 + 168) + 16);

      if (!v36 || (v37 = OUTLINED_FUNCTION_80(), sub_1C5CE2084(v37, v38), (v39 & 1) == 0))
      {
        swift_endAccess();
LABEL_25:
        v48 = *(v14 + 253);
        OUTLINED_FUNCTION_42_5();
        v49 = *(v14 + 96);
        *(v14 + 72) = *(v14 + 88);
        *(v14 + 80) = v49;
        v50 = OUTLINED_FUNCTION_13_9();
        MEMORY[0x1C69534E0](v50, 0x80000001C604B920);
        *(v14 + 249) = v48;
        sub_1C6017650();
        v51 = OUTLINED_FUNCTION_4_22();
        MEMORY[0x1C69534E0](v51, 0xE600000000000000);
        OUTLINED_FUNCTION_68_3();
        OUTLINED_FUNCTION_10_15();
        v52 = OUTLINED_FUNCTION_80();
        MEMORY[0x1C69534E0](v52);

        OUTLINED_FUNCTION_12_14();
        OUTLINED_FUNCTION_67_2();
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_46_1();
      swift_endAccess();
      if ((sub_1C5D3EC80() & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 += 16;
      ++v15;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_41_2();
    v40 = *(v14 + 64);
    *(v14 + 40) = *(v14 + 56);
    *(v14 + 48) = v40;
    v41 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1C69534E0](v41, 0x80000001C604B920);
    *(v14 + 248) = v15;
    sub_1C6017650();
    v42 = OUTLINED_FUNCTION_4_22();
    MEMORY[0x1C69534E0](v42, 0xE600000000000000);
    v43 = OUTLINED_FUNCTION_80();
    MEMORY[0x1C69534E0](v43);
    OUTLINED_FUNCTION_62_4();
    OUTLINED_FUNCTION_39_3();
    sub_1C5D3F100();
LABEL_21:

    v44 = swift_task_alloc();
    *(v14 + 232) = v44;
    *v44 = v14;
    v45 = OUTLINED_FUNCTION_5_19();
    *(v45 + 8) = v46;
    OUTLINED_FUNCTION_19_3();

    sub_1C5D40370();
  }
}

uint64_t sub_1C5D44AF4()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_1C5D451F0;
  }

  else
  {
    v7 = sub_1C5D44C24;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1C5D44C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  if (*(*(v14 + 184) + 208))
  {
    goto LABEL_2;
  }

  v20 = *(v14 + 240);
  sub_1C6016CB0();
  if (v20)
  {

    goto LABEL_5;
  }

  v29 = *(v14 + 184);
  if ((*(v29 + 184) & 1) != 0 || (*(v29 + 185) & 1) != 0 || (*(v29 + 186) & 1) != 0 || (*(v29 + 187) & 1) != 0 || (*(v29 + 188) & 1) != 0 || *(v29 + 189))
  {
    OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_64_4();
    v37 = OUTLINED_FUNCTION_35_5();
    MEMORY[0x1C69534E0](v37, 0x80000001C604B9A0);
    *(v14 + 252) = v15;
    sub_1C6017650();
    OUTLINED_FUNCTION_84_0();
    v38 = OUTLINED_FUNCTION_80();
    MEMORY[0x1C69534E0](v38);
    MEMORY[0x1C69534E0](23328, 0xE200000000000000);
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_53_2();
    v42 = sub_1C5D3EAA0(v41 | v39 | v40);
    MEMORY[0x1C69534E0](v42);

    MEMORY[0x1C69534E0](93, 0xE100000000000000);
    OUTLINED_FUNCTION_39_3();
    sub_1C5D3F100();

    v43 = swift_task_alloc();
    *(v14 + 216) = v43;
    *v43 = v14;
    OUTLINED_FUNCTION_26_7();
LABEL_22:
    *(v44 + 8) = v45;
    OUTLINED_FUNCTION_19_3();

    sub_1C5D40370();
    return;
  }

  sub_1C5D0C9C0(*(v14 + 168), *(v14 + 176), *(v29 + 120));
  if (v30 & 1) != 0 || (v31 = *(v14 + 184), (*(v31 + 136)))
  {
LABEL_2:

    sub_1C6016BE0();
    OUTLINED_FUNCTION_0_29();
    sub_1C5D46310(v18, v19);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63_1();
    swift_willThrow();
LABEL_5:
    OUTLINED_FUNCTION_172();
LABEL_6:
    OUTLINED_FUNCTION_19_3();

    v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
    return;
  }

  v32 = OUTLINED_FUNCTION_50_4();
  if (v34)
  {
    OUTLINED_FUNCTION_44_5();

    OUTLINED_FUNCTION_151();
    sub_1C6017540();
    *(v14 + 120) = a9;
    *(v14 + 128) = a10;
    OUTLINED_FUNCTION_30_8();
    *(v14 + 251) = v15;
    sub_1C6017650();
    v35 = OUTLINED_FUNCTION_4_22();
    MEMORY[0x1C69534E0](v35, 0xE600000000000000);
    v36 = OUTLINED_FUNCTION_80();
    MEMORY[0x1C69534E0](v36);
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_60_3();
    sub_1C5D3F100();
LABEL_20:

    OUTLINED_FUNCTION_14_3();
    goto LABEL_6;
  }

  if (v32 >= v33 || *(v31 + 138) != 1)
  {
    OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_41_2();
    v52 = *(v14 + 64);
    *(v14 + 40) = *(v14 + 56);
    *(v14 + 48) = v52;
    v53 = OUTLINED_FUNCTION_13_9();
    MEMORY[0x1C69534E0](v53, 0x80000001C604B920);
    *(v14 + 248) = v15;
    sub_1C6017650();
    v54 = OUTLINED_FUNCTION_4_22();
    MEMORY[0x1C69534E0](v54, 0xE600000000000000);
    v55 = OUTLINED_FUNCTION_80();
    MEMORY[0x1C69534E0](v55);
    OUTLINED_FUNCTION_62_4();
    OUTLINED_FUNCTION_39_3();
    sub_1C5D3F100();
LABEL_35:

    v56 = swift_task_alloc();
    *(v14 + 232) = v56;
    *v56 = v14;
    v44 = OUTLINED_FUNCTION_5_19();
    goto LABEL_22;
  }

  sub_1C5D12104(v32);
  OUTLINED_FUNCTION_24_9();
  while (1)
  {
    if (v16 == v15)
    {
      OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_151();
      sub_1C6017540();
      *(v14 + 104) = a9;
      *(v14 + 112) = a10;
      OUTLINED_FUNCTION_18_8();
      *(v14 + 250) = v16;
      sub_1C6017650();
      v62 = OUTLINED_FUNCTION_4_22();
      MEMORY[0x1C69534E0](v62, 0xE600000000000000);
      v63 = OUTLINED_FUNCTION_6_3();
      MEMORY[0x1C69534E0](v63);
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_65_4();
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    if (v15 >= v16)
    {
      break;
    }

    v47 = *(v14 + 184);
    OUTLINED_FUNCTION_20_13();
    swift_beginAccess();
    v48 = *(*(v47 + 168) + 16);

    if (!v48 || (v49 = OUTLINED_FUNCTION_80(), sub_1C5CE2084(v49, v50), (v51 & 1) == 0))
    {
      swift_endAccess();
LABEL_37:
      v57 = *(v14 + 253);
      OUTLINED_FUNCTION_42_5();
      v58 = *(v14 + 96);
      *(v14 + 72) = *(v14 + 88);
      *(v14 + 80) = v58;
      v59 = OUTLINED_FUNCTION_13_9();
      MEMORY[0x1C69534E0](v59, 0x80000001C604B920);
      *(v14 + 249) = v57;
      sub_1C6017650();
      v60 = OUTLINED_FUNCTION_4_22();
      MEMORY[0x1C69534E0](v60, 0xE600000000000000);
      OUTLINED_FUNCTION_68_3();
      OUTLINED_FUNCTION_10_15();
      v61 = OUTLINED_FUNCTION_80();
      MEMORY[0x1C69534E0](v61);

      OUTLINED_FUNCTION_12_14();
      OUTLINED_FUNCTION_67_2();
      swift_unknownObjectRelease();
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_46_1();
    swift_endAccess();
    if ((sub_1C5D3EC80() & 1) == 0)
    {
      goto LABEL_37;
    }

    v17 += 16;
    ++v15;
  }

  __break(1u);
}

uint64_t sub_1C5D45194()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D451F0()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D4524C()
{
  OUTLINED_FUNCTION_248();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1C6016C10();
  v1[5] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_77();
  v1[6] = v4;
  v1[7] = v5;
  v6 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5D452CC()
{
  OUTLINED_FUNCTION_13();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_81_2(v2);

    return sub_1C5D595C8();
  }

  else
  {

    sub_1C6016BE0();
    OUTLINED_FUNCTION_0_29();
    sub_1C5D46310(v4, v5);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63_1();
    swift_willThrow();
    OUTLINED_FUNCTION_172();

    return v6();
  }
}

uint64_t sub_1C5D453E8()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *(v2 + 80) = v4;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C5D45504, v6, v5);
}

uint64_t sub_1C5D45504()
{
  OUTLINED_FUNCTION_248();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

void sub_1C5D45574()
{
  OUTLINED_FUNCTION_247();
  v3 = v0;
  v4 = v1;
  if (*(v0 + 144) == v2)
  {
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = (v1 + 64);
      do
      {
        v8 = *(v6 - 4);
        v7 = *(v6 - 3);
        v10 = *(v6 - 2);
        v9 = *(v6 - 1);
        v11 = *v6;
        v31 = v8;
        v32 = v7;
        v33 = v10;
        v34 = v9;
        v35 = v11;
        OUTLINED_FUNCTION_20_13();
        swift_beginAccess();
        v12 = *(*(v3 + 168) + 16);

        swift_unknownObjectRetain();
        v13 = v9;
        if (v12 && (sub_1C5CE2084(v8, v7), (v14 & 1) != 0))
        {
          OUTLINED_FUNCTION_46_1();
          swift_endAccess();

          sub_1C5D3EDD4(&v31);
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = v9;
          v15 = swift_endAccess();
          v16 = v3;
          v17 = *(v3 + 120);
          v30[0] = v8;
          v30[1] = v7;
          MEMORY[0x1EEE9AC00](v15);
          v27[2] = v30;

          v18 = sub_1C5D2AE18(sub_1C5D46404, v27, v17);

          if (v18)
          {
            type metadata accessor for AssetSlidingQueue.Position();
            v19 = swift_allocObject();

            swift_unknownObjectRetain();
            v20 = v28;
            v21 = v28;
            sub_1C5D3ED34();
            OUTLINED_FUNCTION_24_7();
            swift_isUniquelyReferenced_nonNull_native();
            v29 = *(v16 + 168);
            sub_1C5E369E4(v19, v8, v7);
            *(v16 + 168) = v29;
            swift_endAccess();
            swift_unknownObjectRelease();

            v22 = v20;
          }

          else
          {

            swift_unknownObjectRelease();
            v22 = v28;
          }

          v3 = v16;
        }

        v6 += 40;
        --v5;
      }

      while (v5);
    }

    sub_1C5D3FE5C();
  }

  else
  {
    v23 = v2;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000002CLL, 0x80000001C604B9E0);
    v30[0] = v23;
    v24 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v24);

    MEMORY[0x1C69534E0](0x3D746C7573657220, 0xE800000000000000);
    v25 = MEMORY[0x1C6953600](v4, &type metadata for AssetTask.Result);
    MEMORY[0x1C69534E0](v25);

    MEMORY[0x1C69534E0](0xD000000000000030, 0x80000001C604BA10);
    v30[0] = *(v0 + 144);
    v26 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v26);

    OUTLINED_FUNCTION_39_3();
    sub_1C5D3F100();
  }

  OUTLINED_FUNCTION_237();
}

double sub_1C5D458C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1C5CE2084(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1C5D46080(0, &qword_1EC1A9268);
    sub_1C6017660();

    sub_1C5C70758((*(v9 + 56) + 32 * v7), a3);
    sub_1C6017680();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C5D459B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C5CE2084(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_72_1();
  sub_1C5D46080(0, &qword_1EC1AB540);
  OUTLINED_FUNCTION_87_2();

  v7 = *(*(v9 + 56) + 16 * v6);
  sub_1C6017680();
  *v3 = v9;
  return v7;
}

uint64_t sub_1C5D45A78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C5CE2084(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  sub_1C5D4629C(0, &unk_1ED7DCBA0, v7, type metadata accessor for AssetSlidingQueue.Position, MEMORY[0x1E69E6DC8]);
  sub_1C6017660();

  v8 = *(*(v10 + 56) + 8 * v6);
  type metadata accessor for AssetSlidingQueue.Position();
  sub_1C6017680();
  *v3 = v10;
  return v8;
}

void sub_1C5D45B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5D45BE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C5CE2084(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_72_1();
  sub_1C5D4629C(0, &qword_1ED7DCB98, 255, type metadata accessor for AssetTask, MEMORY[0x1E69E6DC8]);
  OUTLINED_FUNCTION_87_2();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for AssetTask();
  OUTLINED_FUNCTION_38_0();
  sub_1C6017680();
  *v3 = v9;
  return v7;
}