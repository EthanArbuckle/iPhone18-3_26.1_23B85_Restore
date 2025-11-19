uint64_t sub_227A568D0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[25];

  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_227A56930, v2, v3);
}

uint64_t sub_227A56930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = v10[13];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE378, &unk_227AA5D20);
  OUTLINED_FUNCTION_20_2(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_30_2();
    v15(v14);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_9_9();
    v26(v25);
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_92_0();
    sub_227A6055C();
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5D2E8(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_5_11();
    sub_227A605B0();
    v33 = v10[20];
    v10[25] = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE370, &qword_27D7DE368, &unk_227AA5D10);
    v34 = *(MEMORY[0x277D856D0] + 4);
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_26_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_4_11(v36);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v38);
  }
}

uint64_t sub_227A56ABC(uint64_t a1)
{
  v2 = v1;
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v4 = sub_227A7227C();
  __swift_project_value_buffer(v4, qword_27D7DE210);

  v5 = sub_227A7226C();
  v6 = sub_227A7289C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_227A46730(*(v2 + 24), *(v2 + 32), &v15);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x22AA9FF60](a1, MEMORY[0x277D837D0]);
    v11 = sub_227A46730(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_227904000, v5, v6, "%s-> Adding handles: %s to transport context.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v8, -1, -1);
    MEMORY[0x22AAA1930](v7, -1, -1);
  }

  v13 = sub_227A17C58(v12);
  sub_227A56CF0(v13);

  *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
  sub_227A49FA0();
}

uint64_t sub_227A56CF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  swift_beginAccess();
  v4 = *(v1 + v3);

  return sub_227A597F8(v5, a1);
}

uint64_t sub_227A56D5C(uint64_t a1)
{
  v2 = v1;
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v4 = sub_227A7227C();
  __swift_project_value_buffer(v4, qword_27D7DE210);

  v5 = sub_227A7226C();
  v6 = sub_227A7289C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_227A46730(*(v2 + 24), *(v2 + 32), &v15);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x22AA9FF60](a1, MEMORY[0x277D837D0]);
    v11 = sub_227A46730(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_227904000, v5, v6, "%s-> Removing handles: %s from transport context.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v8, -1, -1);
    MEMORY[0x22AAA1930](v7, -1, -1);
  }

  v13 = sub_227A17C58(v12);
  sub_227A56CF0(v13);

  *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
  sub_227A49FA0();
}

uint64_t sub_227A56F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE488, &qword_227AA5E48);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE490, &qword_227AA5E50);
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A57104, 0, 0);
}

uint64_t sub_227A57104()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = v0[5];
  OUTLINED_FUNCTION_36_2();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  v3 = v0[12];
  v4 = v0[9];
  if (Strong)
  {
    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[9];
    sub_227A4C164(&qword_27D7DE498, &qword_227AA5E60, type metadata accessor for QueryScoresActionMessage);
    sub_227A7278C();
    v8 = *(v6 + 8);
    v9 = OUTLINED_FUNCTION_93_1();
    v10(v9);
    v11 = *(MEMORY[0x277D85798] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v0[14] = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_56_2(v12);
    v14 = v0[12];
    v15 = v0[10];
    v16 = v0[6];
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_161();

    return MEMORY[0x2822003E8](v17, v18, v19);
  }

  else
  {
    v21 = v0[6];
    v22 = v0[12];

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_161();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_227A5726C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_32();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227A57354()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[6];
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, ScoresActionMessage) == 1)
  {
    v3 = v0[13];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[6];

    OUTLINED_FUNCTION_41();

    return v7();
  }

  else
  {
    v9 = (v1 + *(ScoresActionMessage + 20));
    v10 = *v9;
    v11 = v9[1];
    v0[15] = v11;

    OUTLINED_FUNCTION_6_10();
    sub_227A605B0();
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_227A574AC;
    v13 = v0[13];

    return sub_227A5761C(v10, v11);
  }
}

uint64_t sub_227A574AC()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_32();
  *v3 = v2;
  v4 = v1[16];
  v5 = v1[15];
  v6 = *v0;
  *v3 = *v0;

  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v2[14] = v8;
  *v8 = v6;
  OUTLINED_FUNCTION_56_2();
  v9 = v1[12];
  v10 = v1[10];
  v11 = v1[6];
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_161();

  return MEMORY[0x2822003E8](v12, v13, v14);
}

uint64_t sub_227A5761C(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v3[26] = ScoresResponseActionMessage;
  v5 = *(ScoresResponseActionMessage - 8);
  v3[27] = v5;
  v3[28] = *(v5 + 64);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A57718, 0, 0);
}

uint64_t sub_227A578CC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 288);

  v2 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227A57928()
{
  v96 = v0;
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v5 = v0[25];
  v4 = v0[26];

  sub_227A71C5C();
  v6 = (v3 + v4[5]);
  *v6 = v2;
  v6[1] = v1;
  *(v3 + v4[7]) = 0;
  *(v3 + v4[6]) = -64;
  v7 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v8 = *(v5 + v7);
  v91 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_132_0();
    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    OUTLINED_FUNCTION_76();
    sub_227A7285C();
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[12];
  }

  else
  {
    v13 = *(v8 + 32);
    OUTLINED_FUNCTION_55_1();
    v9 = v8 + 56;
    v14 = *(v8 + 56);
    v10 = ~v15;
    OUTLINED_FUNCTION_68_2();
    v12 = v16 & v17;
    swift_bridgeObjectRetain_n();
    v11 = 0;
  }

  v92 = v0[24];
  v90 = v10;
  for (i = v0; ; v0 = i)
  {
    if (v8 < 0)
    {
      v24 = sub_227A72A7C();
      if (!v24 || (v0[22] = v24, sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78), swift_dynamicCast(), v23 = v0[21], v21 = v12, !v23))
      {
LABEL_21:
        v30 = v0[35];

        OUTLINED_FUNCTION_93_1();
        sub_2279F34F8();

        if (qword_27D7DC4E0 == -1)
        {
LABEL_22:
          v31 = v0[25];
          v32 = sub_227A7227C();
          __swift_project_value_buffer(v32, qword_27D7DE210);
          OUTLINED_FUNCTION_13();

          v33 = sub_227A7226C();
          sub_227A728BC();

          v34 = OUTLINED_FUNCTION_143();
          v35 = v0[33];
          if (v34)
          {
            v36 = v0[25];
            OUTLINED_FUNCTION_29_2();
            v37 = swift_slowAlloc();
            OUTLINED_FUNCTION_55_2();
            v38 = swift_slowAlloc();
            v95[0] = v38;
            *v37 = 136315138;
            *(v37 + 4) = sub_227A46730(*(v36 + 24), *(v36 + 32), v95);
            OUTLINED_FUNCTION_57();
            _os_log_impl(v39, v40, v41, v42, v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v38);
            v0 = i;
            OUTLINED_FUNCTION_13_2();
            MEMORY[0x22AAA1930]();
            v43 = OUTLINED_FUNCTION_4_5();
            MEMORY[0x22AAA1930](v43);
          }

          OUTLINED_FUNCTION_5_11();
          sub_227A605B0();
LABEL_25:
          v45 = v0[32];
          v44 = v0[33];
          v47 = v0[30];
          v46 = v0[31];
          v48 = v0[29];

          OUTLINED_FUNCTION_41();
          OUTLINED_FUNCTION_68_1();

          __asm { BRAA            X1, X16 }
        }

LABEL_37:
        OUTLINED_FUNCTION_0_15();
        swift_once();
        goto LABEL_22;
      }
    }

    else
    {
      v18 = v11;
      if (!v12)
      {
        while (1)
        {
          v11 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v11 >= ((v10 + 64) >> 6))
          {
            goto LABEL_21;
          }

          ++v18;
          if (*(v9 + 8 * v11))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_10:
      OUTLINED_FUNCTION_43_1();
      v21 = v20 & v19;
      v23 = *(*(v8 + 48) + ((v11 << 9) | (8 * v22)));
      if (!v23)
      {
        goto LABEL_21;
      }
    }

    v25 = sub_227A5B280(v23, &selRef_pseudonym);
    if (v26)
    {
      break;
    }

LABEL_20:

    v12 = v21;
  }

  if (v25 != i[23] || v26 != v92)
  {
    v28 = i[24];
    v29 = sub_227A72E5C();

    if (v29)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

LABEL_29:
  OUTLINED_FUNCTION_93_1();
  sub_2279F34F8();

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v51 = i;
  v52 = i[32];
  v53 = i[33];
  v54 = i[25];
  v55 = sub_227A7227C();
  v56 = __swift_project_value_buffer(v55, qword_27D7DE210);
  OUTLINED_FUNCTION_7_11();
  sub_227A60604();

  v57 = v23;
  v93 = v56;
  v58 = sub_227A7226C();
  v59 = sub_227A7289C();

  v60 = os_log_type_enabled(v58, v59);
  v61 = i[32];
  if (v60)
  {
    v62 = i[31];
    v64 = i[25];
    v63 = i[26];
    OUTLINED_FUNCTION_55_2();
    v65 = swift_slowAlloc();
    v66 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_50_2();
    v92 = swift_slowAlloc();
    v95[0] = v92;
    *v65 = 136315650;
    *(v65 + 4) = sub_227A46730(*(v64 + 24), *(v64 + 32), v95);
    *(v65 + 12) = 2080;
    OUTLINED_FUNCTION_7_11();
    sub_227A60604();
    OUTLINED_FUNCTION_30_1();
    sub_227A7251C();
    OUTLINED_FUNCTION_5_11();
    sub_227A605B0();
    v67 = OUTLINED_FUNCTION_93_1();
    v70 = sub_227A46730(v67, v68, v69);

    *(v65 + 14) = v70;
    *(v65 + 22) = 2112;
    *(v65 + 24) = v57;
    *v66 = v23;
    v71 = v57;
    _os_log_impl(&dword_227904000, v58, v59, "%s-> Sending leader query response message: %s, only to %@", v65, 0x20u);
    sub_2279F3774(v66, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    v51 = i;
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    OUTLINED_FUNCTION_5_11();
    sub_227A605B0();
  }

  v72 = v57;
  v73 = v51[33];
  v51[16] = v51[26];
  v51[17] = sub_227A589A8(&qword_27D7DCA78, type metadata accessor for QueryScoresResponseActionMessage);
  __swift_allocate_boxed_opaque_existential_1(v51 + 13);
  OUTLINED_FUNCTION_7_11();
  sub_227A60604();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00F0;
  result = sub_227A5B280(v57, &selRef_playerID);
  if (v76)
  {
    v77 = v51[33];
    v78 = v51[30];
    v80 = v51[27];
    v79 = v51[28];
    v81 = v51[25];
    *(inited + 32) = result;
    *(inited + 40) = v76;
    v82 = sub_227A59668(inited);
    OUTLINED_FUNCTION_7_11();
    OUTLINED_FUNCTION_93_1();
    sub_227A60604();
    v83 = (*(v80 + 80) + 24) & ~*(v80 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v81;
    OUTLINED_FUNCTION_57_2();
    sub_227A6055C();

    sub_227A4843C((v51 + 13), v85, v86, v82, 0, sub_227A607D8, v84, v87, v90, v91, v92, v93, i, v95[0], v95[1], v95[2], v95[3], v95[4], v95[5], v95[6]);
    v88 = v51[35];
    v89 = v51[33];
    OUTLINED_FUNCTION_5_11();
    sub_227A605B0();

    __swift_destroy_boxed_opaque_existential_0Tm(v51 + 13);
    v0 = v51;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_227A58280(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_227A5B04C(a1);
  }

  else
  {

    sub_2279F06B8(a1, a2);
  }
}

uint64_t sub_227A582F4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 16);
  v2 = sub_227A4B9D0();
  *(v0 + 24) = v2;

  return MEMORY[0x2822009F8](sub_227A5835C, v2, 0);
}

uint64_t sub_227A5835C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  sub_227A2F25C();

  OUTLINED_FUNCTION_41();

  return v2();
}

void sub_227A583BC()
{
  OUTLINED_FUNCTION_96_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = OUTLINED_FUNCTION_149(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v11 = sub_227A7227C();
  __swift_project_value_buffer(v11, qword_27D7DE210);
  sub_227A60604();

  v12 = v5;
  v13 = sub_227A7226C();
  v14 = sub_227A7289C();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_55_2();
    v26 = v1;
    v15 = swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_50_2();
    v27 = swift_slowAlloc();
    *v15 = 136315650;
    v17 = sub_227A46730(*(v3 + 24), *(v3 + 32), &v27);
    OUTLINED_FUNCTION_98_1(v17);
    sub_227A71C6C();
    OUTLINED_FUNCTION_3_12();
    sub_227A589A8(v18, v19);
    v20 = sub_227A72E1C();
    v22 = v21;
    sub_227A605B0();
    v23 = sub_227A46730(v20, v22, &v27);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2112;
    v24 = v5;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v25;
    *v16 = v25;
    _os_log_impl(&dword_227904000, v13, v14, v26, v15, 0x20u);
    sub_2279F3774(v16, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    sub_227A605B0();
  }

  OUTLINED_FUNCTION_91();
}

uint64_t type metadata accessor for FastSyncChannel()
{
  result = qword_27D7DE2E8;
  if (!qword_27D7DE2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227A58698()
{
  sub_227A58788();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_227A58788()
{
  if (!qword_27D7DE2F8)
  {
    type metadata accessor for FastSyncActivity(255);
    sub_227A589A8(&qword_27D7DC990, type metadata accessor for FastSyncActivity);
    v0 = sub_227A7201C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7DE2F8);
    }
  }
}

uint64_t sub_227A58828(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_227A58868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_227A58950(uint64_t a1)
{
  result = sub_227A589A8(&qword_27D7DE320, type metadata accessor for FastSyncChannel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A589A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227A589F0(uint64_t a1)
{
  result = sub_227A589A8(&qword_27D7DE328, type metadata accessor for FastSyncChannel);
  *(a1 + 8) = result;
  return result;
}

id sub_227A58A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_227A724BC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_227A724BC();

LABEL_6:
  v8 = [v4 initWithPlayerID:v6 pseudonym:v7];

  return v8;
}

id sub_227A58AE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_227A71B8C();
    sub_2279E3F90(a1, a2);
  }

  v6 = [v2 initWithMessage_];

  return v6;
}

void sub_227A58B5C()
{
  v0 = OUTLINED_FUNCTION_105_0();
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(v0);
  OUTLINED_FUNCTION_149(ScoresActionMessage);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_102_1();
  sub_227A583BC();
}

uint64_t sub_227A58BF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_227A58C28(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_227AA59A0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_227A58C8C()
{
  OUTLINED_FUNCTION_96_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v39 = sub_227A720EC();
  v8 = OUTLINED_FUNCTION_92(v39);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  v38 = v14 - v13;
  if (!v3)
  {
LABEL_27:

LABEL_28:
    OUTLINED_FUNCTION_91();
    return;
  }

  if (*(v1 + 16) == v3)
  {
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD098, &qword_227AA3630);
  v15 = sub_227A72AFC();
  v16 = v15;
  if (v5 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v7;
  }

  v18 = 0;
  v19 = v15 + 56;
  v35 = v1;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v36 = (v17 - 1) & v17;
LABEL_16:
    v37 = *(v10 + 72);
    (*(v10 + 16))(v38, *(v1 + 48) + v37 * (v20 | (v18 << 6)), v39);
    v24 = *(v16 + 40);
    sub_227A589A8(&qword_27D7DC560, MEMORY[0x277CCB248]);
    v25 = sub_227A7244C();
    v26 = -1 << *(v16 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
    {
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
        v33 = *(v19 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v19 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    (*(v10 + 32))(*(v16 + 48) + v29 * v37, v38, v39);
    ++*(v16 + 16);
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_31;
    }

    v1 = v35;
    v17 = v36;
    if (!v3)
    {
      goto LABEL_27;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= v5)
    {
      goto LABEL_27;
    }

    ++v21;
    if (v7[v18])
    {
      OUTLINED_FUNCTION_43_1();
      v36 = v23 & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_227A58F80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
  result = sub_227A72AFC();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_227A7298C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_227A5916C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_227A72A4C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_227A72A8C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_227A5926C(uint64_t a1)
{
  v1 = a1;
  if (sub_227A06998(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
    v2 = sub_227A72AFC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v21 = sub_227A06998(v1);
  if (v21)
  {
    v3 = 0;
    v4 = v2 + 56;
    v19 = v1;
    v20 = v1 & 0xC000000000000001;
    v18 = v1 + 32;
    while (1)
    {
      sub_227A133F4(v3, v20 == 0, v1);
      result = v20 ? MEMORY[0x22AAA03F0](v3, v1) : *(v18 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      result = sub_227A7298C();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        v14 = *(*(v2 + 48) + 8 * v10);
        v15 = sub_227A7299C();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      v1 = v19;
      if (v3 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_227A59430(uint64_t a1)
{
  v1 = a1;
  if (sub_227A06998(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE518, qword_227AA5F20);
    v2 = sub_227A72AFC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = sub_227A06998(v1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v17 = v1;
    v18 = v1 & 0xC000000000000001;
    v16 = v1 + 32;
    while (1)
    {
      sub_227A133F4(v3, v18 == 0, v1);
      if (v18)
      {
        result = MEMORY[0x22AAA03F0](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v16 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      sub_227A722BC();
      sub_227A589A8(&qword_27D7DE520, MEMORY[0x277CBCDA8]);
      result = sub_227A7244C();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v20 = *(*(v2 + 48) + 8 * v10);
        sub_227A589A8(&qword_27D7DE528, MEMORY[0x277CBCDA8]);
        if (sub_227A7248C())
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v14 = *(v2 + 16);
      v7 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v15;
LABEL_17:
      v1 = v17;
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_227A59668(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD020, &qword_227AA35B0);
  result = sub_227A72AFC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_227A72F2C();

    sub_227A7255C();
    result = sub_227A72F4C();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_227A72E5C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227A597F8(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v29 = MEMORY[0x277D84FA0];

    sub_227A72A3C();
    while (1)
    {
LABEL_3:
      if (!sub_227A72A7C())
      {
        swift_bridgeObjectRelease_n();

        return v4;
      }

      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      result = sub_227A5B280(v28, &selRef_pseudonym);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      if (*(a2 + 16))
      {
        v8 = result;
        v9 = *(a2 + 40);
        sub_227A72F2C();
        sub_227A7255C();
        v10 = sub_227A72F4C();
        v11 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v12 = v10 & v11;
          if (((*(a2 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
          {
            break;
          }

          v13 = (*(a2 + 48) + 16 * v12);
          if (*v13 != v8 || v7 != v13[1])
          {
            v15 = sub_227A72E5C();
            v10 = v12 + 1;
            if ((v15 & 1) == 0)
            {
              continue;
            }
          }

          v16 = *(v4 + 16);
          if (*(v4 + 24) <= v16)
          {
            sub_227A21A18(v16 + 1);
          }

          v4 = v29;
          v17 = *(v29 + 40);
          result = sub_227A7298C();
          v18 = v29 + 56;
          v19 = -1 << *(v29 + 32);
          v20 = result & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~*(v29 + 56 + 8 * (v20 >> 6))) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~*(v29 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
            *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
            *(*(v29 + 48) + 8 * v22) = v28;
            ++*(v29 + 16);
            goto LABEL_3;
          }

          v23 = 0;
          v24 = (63 - v19) >> 6;
          while (++v21 != v24 || (v23 & 1) == 0)
          {
            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *(v18 + 8 * v21);
            if (v26 != -1)
            {
              v22 = __clz(__rbit64(~v26)) + (v21 << 6);
              goto LABEL_25;
            }
          }

          __break(1u);
          goto LABEL_29;
        }
      }
    }

LABEL_29:
    __break(1u);
  }

  else
  {

    v27 = sub_227A5A3A8(a1, a2);

    return v27;
  }

  return result;
}

void *sub_227A59AC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_227A720EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v42[2] = v3;
    v42[0] = v42;
    MEMORY[0x28223BE20](v13);
    v42[1] = v11;
    v43 = v42 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_227A58C28(0, v11, v43);
    v49 = 0;
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v7 + 16;
    v20 = v7;
    v7 = a2 + 56;
    v45 = v19;
    v46 = v20;
    v44 = (v20 + 8);
    v47 = v6;
    v48 = a1;
LABEL_6:
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v51 = (v17 - 1) & v17;
LABEL_13:
      v24 = v21 | (v11 << 6);
      v25 = *(a1 + 48);
      v26 = *(v46 + 72);
      v50 = v24;
      v12 = v52;
      (*(v46 + 16))(v52, v25 + v26 * v24, v6);
      v27 = sub_227A720DC();
      v29 = v28;
      if (*(a2 + 16))
      {
        v3 = v27;
        v30 = *(a2 + 40);
        sub_227A72F2C();
        sub_227A7255C();
        v31 = sub_227A72F4C();
        v32 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v12 = v31 & v32;
          if (((*(v7 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v33 = (*(a2 + 48) + 16 * v12);
          if (*v33 != v3 || v33[1] != v29)
          {
            v35 = sub_227A72E5C();
            v31 = v12 + 1;
            if ((v35 & 1) == 0)
            {
              continue;
            }
          }

          v6 = v47;
          (*v44)(v52, v47);
          *(v43 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
          a1 = v48;
          v36 = __OFADD__(v49++, 1);
          v17 = v51;
          if (v36)
          {
            goto LABEL_28;
          }

          goto LABEL_6;
        }
      }

      v6 = v47;
      (*v44)(v52, v47);
      a1 = v48;
      v17 = v51;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        sub_227A58C8C();
        v38 = v37;
        swift_bridgeObjectRelease_n();
        goto LABEL_26;
      }

      v23 = *(v14 + 8 * v11);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v51 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v41 = swift_slowAlloc();

  v38 = sub_227A5AF8C(v41, v11, a1, a2, MEMORY[0x277D84FD0], sub_227A5A744, MEMORY[0x277D84FC0]);

  MEMORY[0x22AAA1930](v41, -1, -1);
  swift_bridgeObjectRelease_n();
LABEL_26:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

void *sub_227A59F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = *MEMORY[0x277D85DE8];
  v46 = sub_227A720EC();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;
  v41 = a2;

  if (v10 > 0xD)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v38[2] = v3;
    v38[0] = v38;
    MEMORY[0x28223BE20](v13);
    v38[1] = v11;
    v39 = v38 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_227A58C28(0, v11, v39);
    v40 = 0;
    v14 = 0;
    v44 = v6;
    v45 = a1;
    v16 = *(a1 + 56);
    a1 += 56;
    v15 = v16;
    v17 = 1 << *(a1 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v3 = (v17 + 63) >> 6;
    v42 = (v6 + 8);
    v43 = v6 + 16;
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_12:
      v6 = v20 | (v14 << 6);
      (*(v44 + 16))(v9, *(v45 + 48) + *(v44 + 72) * v6, v46);
      v12 = sub_227A720DC();
      v24 = v23;

      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v11 = sub_227A720DC();
        v12 = v26;
        v27 = sub_227A4C78C();
        if (v28)
        {
          if (v11 == v27 && v28 == v12)
          {

            goto LABEL_23;
          }

          v11 = sub_227A72E5C();

          (*v42)(v9, v46);
          if ((v11 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {

          (*v42)(v9, v46);
LABEL_25:
          *(v39 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
          if (__OFADD__(v40++, 1))
          {
            __break(1u);
LABEL_28:
            sub_227A58C8C();
            v32 = v31;

            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_23:
        (*v42)(v9, v46);
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v3)
      {
        goto LABEL_28;
      }

      v22 = *(a1 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v19 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v35 = swift_slowAlloc();
  v36 = a1;
  v37 = v41;

  v32 = sub_227A5AF8C(v35, v11, v36, v37, MEMORY[0x277D85018], sub_227A5AA50, MEMORY[0x277D85010]);

  MEMORY[0x22AAA1930](v35, -1, -1);

LABEL_29:
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_227A5A3A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v38 = v3;
    v36[1] = v36;
    MEMORY[0x28223BE20](v10);
    v37 = v8;
    v39 = (v36 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_227A58C28(0, v8, v39);
    v40 = v5;
    v41 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = a2;
    v44 = a2 + 56;
LABEL_6:
    while (v14)
    {
      v17 = __clz(__rbit64(v14));
      v43 = (v14 - 1) & v14;
LABEL_13:
      v20 = v17 | (v11 << 6);
      v21 = *(v5 + 48);
      v42 = v20;
      v22 = *(v21 + 8 * v20);
      v23 = sub_227A5B280(v22, &selRef_pseudonym);
      if (!v24)
      {
        __break(1u);
      }

      v9 = v24;
      if (*(v16 + 16))
      {
        a2 = v23;
        v25 = *(v16 + 40);
        sub_227A72F2C();
        sub_227A7255C();
        v26 = sub_227A72F4C();
        v27 = ~(-1 << *(v16 + 32));
        while (1)
        {
          v3 = v26 & v27;
          if (((*(v44 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
          {
            break;
          }

          v28 = (*(v16 + 48) + 16 * v3);
          if (*v28 != a2 || v9 != v28[1])
          {
            v30 = sub_227A72E5C();
            v26 = v3 + 1;
            if ((v30 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v40;
          *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
          v31 = __OFADD__(v41++, 1);
          v14 = v43;
          if (v31)
          {
            goto LABEL_29;
          }

          goto LABEL_6;
        }
      }

      v5 = v40;
      v14 = v43;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        v32 = sub_227A58F80(v39, v37, v41, v5);
        goto LABEL_27;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();

  v32 = sub_227A5AF8C(v35, v8, v5, a2, MEMORY[0x277D84FD0], sub_227A5AD54, MEMORY[0x277D84FC0]);

  MEMORY[0x22AAA1930](v35, -1, -1);
LABEL_27:
  swift_bridgeObjectRelease_n();
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_227A5A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40[1] = a2;
  v41 = a1;
  v6 = sub_227A720EC();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = result;
  v47 = 0;
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v44 = v11;
  v45 = v9;
  v42 = (v9 + 8);
  v43 = v9 + 16;
LABEL_5:
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = *(v49 + 48);
    v25 = *(v45 + 72);
    v48 = v23;
    (*(v45 + 16))(v11, v24 + v25 * v23, v6);
    v26 = sub_227A720DC();
    v28 = v27;
    if (*(a4 + 16))
    {
      v29 = v26;
      v30 = *(a4 + 40);
      sub_227A72F2C();
      sub_227A7255C();
      v31 = sub_227A72F4C();
      v32 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v33 = v31 & v32;
        if (((*(a4 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
        {
          break;
        }

        v34 = (*(a4 + 48) + 16 * v33);
        if (*v34 != v29 || v34[1] != v28)
        {
          v36 = sub_227A72E5C();
          v31 = v33 + 1;
          if ((v36 & 1) == 0)
          {
            continue;
          }
        }

        v11 = v44;
        v6 = v46;
        result = (*v42)(v44, v46);
        *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        v37 = __OFADD__(v47++, 1);
        v18 = v50;
        if (v37)
        {
          goto LABEL_26;
        }

        goto LABEL_5;
      }
    }

    v11 = v44;
    v6 = v46;
    result = (*v42)(v44, v46);
    v18 = v50;
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {

      sub_227A58C8C();
      v39 = v38;

      return v39;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v50 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_227A5AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37[1] = a2;
  v40 = a4;
  v38 = a1;
  v5 = sub_227A720EC();
  v6 = *(*(v5 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v12 = 0;
  v45 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v41 = v8 + 16;
  v42 = v8;
  v43 = v7;
  v44 = (v8 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v23 = v20 | (v12 << 6);
    (*(v42 + 16))(v11, *(v45 + 48) + *(v42 + 72) * v23, v5, v9);
    v24 = sub_227A720DC();
    v25 = v11;
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = sub_227A720DC();
      v31 = v30;
      v32 = sub_227A4C78C();
      if (v33)
      {
        if (v29 == v32 && v33 == v31)
        {

          v25 = v11;
          goto LABEL_22;
        }

        v35 = sub_227A72E5C();

        v5 = v43;
        (*v44)(v11, v43);
        if ((v35 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {

        v5 = v43;
        (*v44)(v11, v43);
LABEL_24:
        *(v38 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
LABEL_27:

          sub_227A58C8C();

          return;
        }
      }
    }

    else
    {
LABEL_22:
      v5 = v43;
      (*v44)(v25, v43);
      v11 = v25;
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_27;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_227A5AD54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v33 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v32 = (v9 - 1) & v9;
LABEL_12:
    v30 = v11 | (v5 << 6);
    v14 = *(*(a3 + 48) + 8 * v30);
    result = sub_227A5B280(v14, &selRef_pseudonym);
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = v15;
    if (*(a4 + 16))
    {
      v17 = result;
      v18 = *(a4 + 40);
      sub_227A72F2C();
      sub_227A7255C();
      v19 = sub_227A72F4C();
      v20 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v33 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 != v17 || v16 != v22[1])
        {
          v24 = sub_227A72E5C();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        *(v28 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v25 = __OFADD__(v29++, 1);
        v9 = v32;
        if (v25)
        {
          goto LABEL_27;
        }

        goto LABEL_5;
      }
    }

    v9 = v32;
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v26 = sub_227A58F80(v28, a2, v29, a3);

      return v26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v32 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *sub_227A5AF8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a5(a4, 2);
    v14 = a6(v13, a2, a3, a4);
    a7(a4, 2);

    return v14;
  }

  return result;
}

void sub_227A5B04C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5C0, &qword_227AA0538);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  v7 = sub_227A720EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v19[0] = v8 + 8;
    v19[1] = v8 + 16;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v7);
      sub_2279EF994(v11, v6);
      (*(v8 + 8))(v11, v7);
      sub_2279F3774(v6, &qword_27D7DC5C0, &qword_227AA0538);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_227A5B280(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_227A724EC();
  }

  return OUTLINED_FUNCTION_86();
}

uint64_t sub_227A5B30C(void *a1)
{
  v2 = [a1 playerID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A724EC();

  return v3;
}

uint64_t sub_227A5B380(uint64_t a1)
{
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_55_1();
  result = sub_227A72A0C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_227A5B3BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v61 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v10 = *(*(ScoresResponseActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v61 - v15;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v16 = *(*(ScoresActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227A720EC();
  v69 = *(v18 - 8);
  v70 = v18;
  v19 = *(v69 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227A71EFC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ChannelMigrationActionMessage(0);
  v77[3] = v72;
  v77[4] = sub_227A589A8(&qword_27D7DE458, type metadata accessor for ChannelMigrationActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  sub_227A60604();
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v27 = sub_227A7227C();
  __swift_project_value_buffer(v27, qword_27D7DE210);
  sub_2279F4B58(v77, v76);
  v28 = *(v23 + 16);
  v73 = a3;
  v28(v26, a3, v22);

  v29 = sub_227A7226C();
  v30 = sub_227A7289C();

  v31 = a4;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v64 = v12;
    v33 = v32;
    v34 = swift_slowAlloc();
    v63 = ScoresResponseActionMessage;
    v35 = v34;
    v75 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_227A46730(a4[3], a4[4], &v75);
    *(v33 + 12) = 2080;
    sub_2279F4B58(v76, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v36 = sub_227A7251C();
    v62 = a4;
    v37 = v36;
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    v40 = sub_227A46730(v37, v39, &v75);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2080;
    sub_227A71EEC();
    v41 = sub_227A720DC();
    v43 = v42;
    (*(v69 + 8))(v21, v70);
    (*(v23 + 8))(v26, v22);
    v44 = v41;
    v31 = v62;
    v45 = sub_227A46730(v44, v43, &v75);

    *(v33 + 24) = v45;
    _os_log_impl(&dword_227904000, v29, v30, "%s-> Received action message: %s from %s", v33, 0x20u);
    swift_arrayDestroy();
    v46 = v35;
    ScoresResponseActionMessage = v63;
    MEMORY[0x22AAA1930](v46, -1, -1);
    v47 = v33;
    v12 = v64;
    MEMORY[0x22AAA1930](v47, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v26, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
  }

  v48 = *(boxed_opaque_existential_1 + *(v72 + 20));
  if (v48 >> 6 != 3)
  {
    if (v48 >> 6 == 2 && v48 == 129)
    {
      v49 = v31[9];
      if (v49)
      {
        v50 = v31[10];
        sub_2279F4B58(v77, v76);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v51 = v67;
        v52 = ScoresActionMessage;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
          v53 = v65;
          sub_227A6055C();
          v49(v53);
          sub_22790D4C0(v49);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v77);
        }

        sub_22790D4C0(v49);
        __swift_storeEnumTagSinglePayload(v51, 1, 1, v52);
        v57 = &qword_27D7DE380;
        v58 = &qword_227AA5D30;
        v59 = v51;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v77);
    }

LABEL_17:
    sub_227A5DA88(boxed_opaque_existential_1, v73, v31);
    return __swift_destroy_boxed_opaque_existential_0Tm(v77);
  }

  if (v48 != 192)
  {
    goto LABEL_17;
  }

  v54 = v31[11];
  if (v54)
  {
    v55 = v31[12];
    sub_2279F4B58(v77, v76);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v68, 0, 1, ScoresResponseActionMessage);
      sub_227A6055C();
      v54(v12);
      sub_22790D4C0(v54);
      goto LABEL_16;
    }

    sub_22790D4C0(v54);
    v60 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, ScoresResponseActionMessage);
    v57 = &qword_27D7DD460;
    v58 = &qword_227AA4108;
    v59 = v60;
LABEL_21:
    sub_2279F3774(v59, v57, v58);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v77);
}

uint64_t sub_227A5BB8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v61 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v10 = *(*(ScoresResponseActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v61 - v15;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v16 = *(*(ScoresActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227A720EC();
  v69 = *(v18 - 8);
  v70 = v18;
  v19 = *(v69 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227A71EFC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  v77[3] = updated;
  v77[4] = sub_227A589A8(&qword_27D7DE428, type metadata accessor for UpdateParticipantsActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  sub_227A60604();
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v27 = sub_227A7227C();
  __swift_project_value_buffer(v27, qword_27D7DE210);
  sub_2279F4B58(v77, v76);
  v28 = *(v23 + 16);
  v73 = a3;
  v28(v26, a3, v22);

  v29 = sub_227A7226C();
  v30 = sub_227A7289C();

  v31 = a4;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v64 = v12;
    v33 = v32;
    v34 = swift_slowAlloc();
    v63 = ScoresResponseActionMessage;
    v35 = v34;
    v75 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_227A46730(a4[3], a4[4], &v75);
    *(v33 + 12) = 2080;
    sub_2279F4B58(v76, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v36 = sub_227A7251C();
    v62 = a4;
    v37 = v36;
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    v40 = sub_227A46730(v37, v39, &v75);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2080;
    sub_227A71EEC();
    v41 = sub_227A720DC();
    v43 = v42;
    (*(v69 + 8))(v21, v70);
    (*(v23 + 8))(v26, v22);
    v44 = v41;
    v31 = v62;
    v45 = sub_227A46730(v44, v43, &v75);

    *(v33 + 24) = v45;
    _os_log_impl(&dword_227904000, v29, v30, "%s-> Received action message: %s from %s", v33, 0x20u);
    swift_arrayDestroy();
    v46 = v35;
    ScoresResponseActionMessage = v63;
    MEMORY[0x22AAA1930](v46, -1, -1);
    v47 = v33;
    v12 = v64;
    MEMORY[0x22AAA1930](v47, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v26, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
  }

  v48 = *(boxed_opaque_existential_1 + *(updated + 20));
  if (v48 >> 6 != 3)
  {
    if (v48 >> 6 == 2 && v48 == 129)
    {
      v49 = v31[9];
      if (v49)
      {
        v50 = v31[10];
        sub_2279F4B58(v77, v76);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v51 = v67;
        v52 = ScoresActionMessage;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
          v53 = v65;
          sub_227A6055C();
          v49(v53);
          sub_22790D4C0(v49);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v77);
        }

        sub_22790D4C0(v49);
        __swift_storeEnumTagSinglePayload(v51, 1, 1, v52);
        v57 = &qword_27D7DE380;
        v58 = &qword_227AA5D30;
        v59 = v51;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v77);
    }

LABEL_17:
    sub_227A5E1C4(boxed_opaque_existential_1, v73, v31);
    return __swift_destroy_boxed_opaque_existential_0Tm(v77);
  }

  if (v48 != 192)
  {
    goto LABEL_17;
  }

  v54 = v31[11];
  if (v54)
  {
    v55 = v31[12];
    sub_2279F4B58(v77, v76);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v68, 0, 1, ScoresResponseActionMessage);
      sub_227A6055C();
      v54(v12);
      sub_22790D4C0(v54);
      goto LABEL_16;
    }

    sub_22790D4C0(v54);
    v60 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, ScoresResponseActionMessage);
    v57 = &qword_27D7DD460;
    v58 = &qword_227AA4108;
    v59 = v60;
LABEL_21:
    sub_2279F3774(v59, v57, v58);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v77);
}

uint64_t sub_227A5C35C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v61 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v10 = *(*(ScoresResponseActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v61 - v15;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v16 = *(*(ScoresActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227A720EC();
  v69 = *(v18 - 8);
  v70 = v18;
  v19 = *(v69 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227A71EFC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for JoinChannelActionMessage(0);
  v77[3] = v72;
  v77[4] = sub_227A589A8(&qword_27D7DE3F8, type metadata accessor for JoinChannelActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  sub_227A60604();
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v27 = sub_227A7227C();
  __swift_project_value_buffer(v27, qword_27D7DE210);
  sub_2279F4B58(v77, v76);
  v28 = *(v23 + 16);
  v73 = a3;
  v28(v26, a3, v22);

  v29 = sub_227A7226C();
  v30 = sub_227A7289C();

  v31 = a4;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v64 = v12;
    v33 = v32;
    v34 = swift_slowAlloc();
    v63 = ScoresResponseActionMessage;
    v35 = v34;
    v75 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_227A46730(a4[3], a4[4], &v75);
    *(v33 + 12) = 2080;
    sub_2279F4B58(v76, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v36 = sub_227A7251C();
    v62 = a4;
    v37 = v36;
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    v40 = sub_227A46730(v37, v39, &v75);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2080;
    sub_227A71EEC();
    v41 = sub_227A720DC();
    v43 = v42;
    (*(v69 + 8))(v21, v70);
    (*(v23 + 8))(v26, v22);
    v44 = v41;
    v31 = v62;
    v45 = sub_227A46730(v44, v43, &v75);

    *(v33 + 24) = v45;
    _os_log_impl(&dword_227904000, v29, v30, "%s-> Received action message: %s from %s", v33, 0x20u);
    swift_arrayDestroy();
    v46 = v35;
    ScoresResponseActionMessage = v63;
    MEMORY[0x22AAA1930](v46, -1, -1);
    v47 = v33;
    v12 = v64;
    MEMORY[0x22AAA1930](v47, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v26, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
  }

  v48 = *(boxed_opaque_existential_1 + *(v72 + 20));
  if (v48 >> 6 != 3)
  {
    if (v48 >> 6 == 2 && v48 == 129)
    {
      v49 = v31[9];
      if (v49)
      {
        v50 = v31[10];
        sub_2279F4B58(v77, v76);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v51 = v67;
        v52 = ScoresActionMessage;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
          v53 = v65;
          sub_227A6055C();
          v49(v53);
          sub_22790D4C0(v49);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v77);
        }

        sub_22790D4C0(v49);
        __swift_storeEnumTagSinglePayload(v51, 1, 1, v52);
        v57 = &qword_27D7DE380;
        v58 = &qword_227AA5D30;
        v59 = v51;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v77);
    }

LABEL_17:
    sub_227A5E900(boxed_opaque_existential_1, v73, v31);
    return __swift_destroy_boxed_opaque_existential_0Tm(v77);
  }

  if (v48 != 192)
  {
    goto LABEL_17;
  }

  v54 = v31[11];
  if (v54)
  {
    v55 = v31[12];
    sub_2279F4B58(v77, v76);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v68, 0, 1, ScoresResponseActionMessage);
      sub_227A6055C();
      v54(v12);
      sub_22790D4C0(v54);
      goto LABEL_16;
    }

    sub_22790D4C0(v54);
    v60 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, ScoresResponseActionMessage);
    v57 = &qword_27D7DD460;
    v58 = &qword_227AA4108;
    v59 = v60;
LABEL_21:
    sub_2279F3774(v59, v57, v58);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v77);
}

uint64_t sub_227A5CB2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v62 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v10 = *(*(ScoresResponseActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v62 - v15;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v17 = *(*(ScoresActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v65 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227A720EC();
  v68 = *(v19 - 8);
  v69 = v19;
  v20 = *(v68 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_227A71EFC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = ScoresActionMessage;
  v76[3] = ScoresActionMessage;
  v76[4] = sub_227A589A8(&qword_27D7DE3C8, type metadata accessor for QueryScoresActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
  sub_227A60604();
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v28 = sub_227A7227C();
  __swift_project_value_buffer(v28, qword_27D7DE210);
  sub_2279F4B58(v76, v75);
  v29 = *(v24 + 16);
  v72 = a3;
  v29(v27, a3, v23);

  v30 = sub_227A7226C();
  v31 = sub_227A7289C();

  v32 = a4;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v64 = v12;
    v34 = v33;
    v35 = swift_slowAlloc();
    v63 = ScoresResponseActionMessage;
    v36 = v35;
    v74 = v35;
    *v34 = 136315650;
    *(v34 + 4) = sub_227A46730(a4[3], a4[4], &v74);
    *(v34 + 12) = 2080;
    sub_2279F4B58(v75, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v37 = sub_227A7251C();
    v62 = a4;
    v38 = v37;
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    v41 = sub_227A46730(v38, v40, &v74);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    sub_227A71EEC();
    v42 = sub_227A720DC();
    v44 = v43;
    (*(v68 + 8))(v22, v69);
    (*(v24 + 8))(v27, v23);
    v45 = v42;
    v32 = v62;
    v46 = sub_227A46730(v45, v44, &v74);

    *(v34 + 24) = v46;
    _os_log_impl(&dword_227904000, v30, v31, "%s-> Received action message: %s from %s", v34, 0x20u);
    swift_arrayDestroy();
    v47 = v36;
    ScoresResponseActionMessage = v63;
    MEMORY[0x22AAA1930](v47, -1, -1);
    v48 = v34;
    v12 = v64;
    MEMORY[0x22AAA1930](v48, -1, -1);
  }

  else
  {

    (*(v24 + 8))(v27, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
  }

  v49 = v71;
  v50 = *(boxed_opaque_existential_1 + *(v71 + 28));
  if (v50 >> 6 != 3)
  {
    if (v50 >> 6 == 2 && v50 == 129)
    {
      v51 = v32[9];
      if (v51)
      {
        v52 = v32[10];
        sub_2279F4B58(v76, v75);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v53 = v66;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v53, 0, 1, v49);
          v54 = v65;
          sub_227A6055C();
          v51(v54);
          sub_22790D4C0(v51);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v76);
        }

        sub_22790D4C0(v51);
        __swift_storeEnumTagSinglePayload(v53, 1, 1, v49);
        v58 = &qword_27D7DE380;
        v59 = &qword_227AA5D30;
        v60 = v53;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v76);
    }

LABEL_17:
    sub_227A5F03C(boxed_opaque_existential_1, v72, v32);
    return __swift_destroy_boxed_opaque_existential_0Tm(v76);
  }

  if (v50 != 192)
  {
    goto LABEL_17;
  }

  v55 = v32[11];
  if (v55)
  {
    v56 = v32[12];
    sub_2279F4B58(v76, v75);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v67, 0, 1, ScoresResponseActionMessage);
      sub_227A6055C();
      v55(v12);
      sub_22790D4C0(v55);
      goto LABEL_16;
    }

    sub_22790D4C0(v55);
    v61 = v67;
    __swift_storeEnumTagSinglePayload(v67, 1, 1, ScoresResponseActionMessage);
    v58 = &qword_27D7DD460;
    v59 = &qword_227AA4108;
    v60 = v61;
LABEL_21:
    sub_2279F3774(v60, v58, v59);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v76);
}

uint64_t sub_227A5D2E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD460, &qword_227AA4108);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v59 - v8;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v11 = *(*(ScoresResponseActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresResponseActionMessage);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v59 - v15;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v16 = *(*(ScoresActionMessage - 8) + 64);
  MEMORY[0x28223BE20](ScoresActionMessage);
  v62 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227A720EC();
  v66 = *(v18 - 8);
  v67 = v18;
  v19 = *(v66 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227A71EFC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73[3] = ScoresResponseActionMessage;
  v73[4] = sub_227A589A8(&qword_27D7DE388, type metadata accessor for QueryScoresResponseActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  sub_227A60604();
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v27 = sub_227A7227C();
  __swift_project_value_buffer(v27, qword_27D7DE210);
  sub_2279F4B58(v73, v72);
  v28 = *(v23 + 16);
  v69 = a3;
  v28(v26, a3, v22);

  v29 = sub_227A7226C();
  v30 = sub_227A7289C();

  v31 = a4;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v60 = ScoresResponseActionMessage;
    v33 = v32;
    v34 = swift_slowAlloc();
    v61 = v9;
    v35 = v34;
    v71 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_227A46730(a4[3], a4[4], &v71);
    *(v33 + 12) = 2080;
    sub_2279F4B58(v72, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    v36 = sub_227A7251C();
    v59 = a4;
    v37 = v36;
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    v40 = sub_227A46730(v37, v39, &v71);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2080;
    sub_227A71EEC();
    v41 = sub_227A720DC();
    v43 = v42;
    (*(v66 + 8))(v21, v67);
    (*(v23 + 8))(v26, v22);
    v44 = v41;
    v31 = v59;
    v45 = sub_227A46730(v44, v43, &v71);

    *(v33 + 24) = v45;
    _os_log_impl(&dword_227904000, v29, v30, "%s-> Received action message: %s from %s", v33, 0x20u);
    swift_arrayDestroy();
    v46 = v35;
    v9 = v61;
    MEMORY[0x22AAA1930](v46, -1, -1);
    v47 = v33;
    ScoresResponseActionMessage = v60;
    MEMORY[0x22AAA1930](v47, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v26, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
  }

  v48 = *(boxed_opaque_existential_1 + *(ScoresResponseActionMessage + 24));
  if (v48 >> 6 != 3)
  {
    if (v48 >> 6 == 2 && v48 == 129)
    {
      v49 = v31[9];
      if (v49)
      {
        v50 = v31[10];
        sub_2279F4B58(v73, v72);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v9 = v65;
        v51 = ScoresActionMessage;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v51);
          v52 = v62;
          sub_227A6055C();
          v49(v52);
          sub_22790D4C0(v49);
LABEL_16:
          sub_227A605B0();
          return __swift_destroy_boxed_opaque_existential_0Tm(v73);
        }

        sub_22790D4C0(v49);
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v51);
        v57 = &qword_27D7DE380;
        v58 = &qword_227AA5D30;
        goto LABEL_21;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v73);
    }

LABEL_17:
    sub_227A5F78C(boxed_opaque_existential_1, v69, v31);
    return __swift_destroy_boxed_opaque_existential_0Tm(v73);
  }

  if (v48 != 192)
  {
    goto LABEL_17;
  }

  v53 = v31[11];
  if (v53)
  {
    v54 = v31[12];
    sub_2279F4B58(v73, v72);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v9, 0, 1, ScoresResponseActionMessage);
      v55 = v63;
      sub_227A6055C();
      v53(v55);
      sub_22790D4C0(v53);
      goto LABEL_16;
    }

    sub_22790D4C0(v53);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, ScoresResponseActionMessage);
    v57 = &qword_27D7DD460;
    v58 = &qword_227AA4108;
LABEL_21:
    sub_2279F3774(v9, v57, v58);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v73);
}

uint64_t sub_227A5DA88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for JoinChannelActionMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for ChannelMigrationActionMessage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v49 - v21;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  v24 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v50 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[3] = v15;
  v53[4] = sub_227A589A8(&qword_27D7DE458, type metadata accessor for ChannelMigrationActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  sub_227A60604();
  v27 = *(boxed_opaque_existential_1 + *(v15 + 20));
  v28 = a3;
  switch(v27 >> 6)
  {
    case 1u:
      v31 = a3[13];
      if (v31)
      {
        v32 = a3[14];
        sub_2279F4B58(v53, v52);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
          v33 = v51;
          sub_227A6055C();
          v31(v33);
          sub_22790D4C0(v31);
          goto LABEL_22;
        }

        sub_22790D4C0(v31);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
        v40 = &qword_27D7DD0E8;
        v41 = &qword_227AA36A0;
        v42 = v7;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v53);
    case 3u:
      if (v27 == 193)
      {
        sub_2279F4B58(v53, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v22, 1, 1, updated);
          v40 = &qword_27D7DE398;
          v41 = &qword_227AA5D40;
          v42 = v22;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v22, 0, 1, updated);
        v34 = v50;
        sub_227A6055C();
        v35 = *&v34[*(updated + 24)];
        v52[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v35);
        v36 = v52[0];
        v37 = sub_227A4C78C();
        if (v38 && (v39 = sub_227A498C0(v37, v38, v36), , v39))
        {

          *(a3 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v43 = sub_227A7227C();
          __swift_project_value_buffer(v43, qword_27D7DE210);

          v44 = sub_227A7226C();
          v45 = sub_227A728AC();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v52[0] = v47;
            *v46 = 136315138;
            *(v46 + 4) = sub_227A46730(v28[3], v28[4], v52);
            _os_log_impl(&dword_227904000, v44, v45, "%s-> No need to handle participant update since all pseudonyms allowed already.", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v47);
            MEMORY[0x22AAA1930](v47, -1, -1);
            MEMORY[0x22AAA1930](v46, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v29 = a3[7];
      if (v29)
      {
        v30 = a3[8];
        sub_2279F4B58(v53, v52);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
          sub_227A6055C();
          v29(v18);
          sub_22790D4C0(v29);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v29);
          __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
          v40 = &qword_27D7DD0D0;
          v41 = &qword_227AA3660;
          v42 = v14;
LABEL_16:
          sub_2279F3774(v42, v40, v41);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v53);
}

uint64_t sub_227A5E1C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for JoinChannelActionMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for ChannelMigrationActionMessage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v50 - v21;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  v24 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v51 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[3] = v26;
  v54[4] = sub_227A589A8(&qword_27D7DE428, type metadata accessor for UpdateParticipantsActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  sub_227A60604();
  v28 = *(boxed_opaque_existential_1 + *(updated + 20));
  v29 = a3;
  switch(v28 >> 6)
  {
    case 1u:
      v32 = a3[13];
      if (v32)
      {
        v33 = a3[14];
        sub_2279F4B58(v54, v53);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
          v34 = v52;
          sub_227A6055C();
          v32(v34);
          sub_22790D4C0(v32);
          goto LABEL_22;
        }

        sub_22790D4C0(v32);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
        v41 = &qword_27D7DD0E8;
        v42 = &qword_227AA36A0;
        v43 = v7;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v54);
    case 3u:
      if (v28 == 193)
      {
        sub_2279F4B58(v54, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v22, 1, 1, updated);
          v41 = &qword_27D7DE398;
          v42 = &qword_227AA5D40;
          v43 = v22;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v22, 0, 1, updated);
        v35 = v51;
        sub_227A6055C();
        v36 = *&v35[*(updated + 24)];
        v53[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v36);
        v37 = v53[0];
        v38 = sub_227A4C78C();
        if (v39 && (v40 = sub_227A498C0(v38, v39, v37), , v40))
        {

          *(a3 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v44 = sub_227A7227C();
          __swift_project_value_buffer(v44, qword_27D7DE210);

          v45 = sub_227A7226C();
          v46 = sub_227A728AC();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v53[0] = v48;
            *v47 = 136315138;
            *(v47 + 4) = sub_227A46730(v29[3], v29[4], v53);
            _os_log_impl(&dword_227904000, v45, v46, "%s-> No need to handle participant update since all pseudonyms allowed already.", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v48);
            MEMORY[0x22AAA1930](v48, -1, -1);
            MEMORY[0x22AAA1930](v47, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v30 = a3[7];
      if (v30)
      {
        v31 = a3[8];
        sub_2279F4B58(v54, v53);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
          sub_227A6055C();
          v30(v18);
          sub_22790D4C0(v30);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v30);
          __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
          v41 = &qword_27D7DD0D0;
          v42 = &qword_227AA3660;
          v43 = v14;
LABEL_16:
          sub_2279F3774(v43, v41, v42);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v54);
}

uint64_t sub_227A5E900(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for JoinChannelActionMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for ChannelMigrationActionMessage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v49 - v21;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  v24 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v50 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[3] = v8;
  v53[4] = sub_227A589A8(&qword_27D7DE3F8, type metadata accessor for JoinChannelActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  sub_227A60604();
  v27 = *(boxed_opaque_existential_1 + *(v8 + 20));
  v28 = a3;
  switch(v27 >> 6)
  {
    case 1u:
      v31 = a3[13];
      if (v31)
      {
        v32 = a3[14];
        sub_2279F4B58(v53, v52);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
          v33 = v51;
          sub_227A6055C();
          v31(v33);
          sub_22790D4C0(v31);
          goto LABEL_22;
        }

        sub_22790D4C0(v31);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
        v40 = &qword_27D7DD0E8;
        v41 = &qword_227AA36A0;
        v42 = v7;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v53);
    case 3u:
      if (v27 == 193)
      {
        sub_2279F4B58(v53, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v22, 1, 1, updated);
          v40 = &qword_27D7DE398;
          v41 = &qword_227AA5D40;
          v42 = v22;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v22, 0, 1, updated);
        v34 = v50;
        sub_227A6055C();
        v35 = *&v34[*(updated + 24)];
        v52[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v35);
        v36 = v52[0];
        v37 = sub_227A4C78C();
        if (v38 && (v39 = sub_227A498C0(v37, v38, v36), , v39))
        {

          *(a3 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v43 = sub_227A7227C();
          __swift_project_value_buffer(v43, qword_27D7DE210);

          v44 = sub_227A7226C();
          v45 = sub_227A728AC();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v52[0] = v47;
            *v46 = 136315138;
            *(v46 + 4) = sub_227A46730(v28[3], v28[4], v52);
            _os_log_impl(&dword_227904000, v44, v45, "%s-> No need to handle participant update since all pseudonyms allowed already.", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v47);
            MEMORY[0x22AAA1930](v47, -1, -1);
            MEMORY[0x22AAA1930](v46, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v29 = a3[7];
      if (v29)
      {
        v30 = a3[8];
        sub_2279F4B58(v53, v52);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
          sub_227A6055C();
          v29(v18);
          sub_22790D4C0(v29);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v29);
          __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
          v40 = &qword_27D7DD0D0;
          v41 = &qword_227AA3660;
          v42 = v14;
LABEL_16:
          sub_2279F3774(v42, v40, v41);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v53);
}

uint64_t sub_227A5F03C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v50 - v6;
  v7 = type metadata accessor for JoinChannelActionMessage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ChannelMigrationActionMessage(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v50 - v20;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  v23 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v50 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  v54[3] = ScoresActionMessage;
  v54[4] = sub_227A589A8(&qword_27D7DE3C8, type metadata accessor for QueryScoresActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  sub_227A60604();
  v27 = *(boxed_opaque_existential_1 + *(ScoresActionMessage + 28));
  v28 = a3;
  switch(v27 >> 6)
  {
    case 1u:
      v31 = a3[13];
      if (v31)
      {
        v32 = a3[14];
        sub_2279F4B58(v54, v53);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v33 = v52;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v33, 0, 1, v7);
          v34 = v51;
          sub_227A6055C();
          v31(v34);
          sub_22790D4C0(v31);
          goto LABEL_22;
        }

        sub_22790D4C0(v31);
        __swift_storeEnumTagSinglePayload(v33, 1, 1, v7);
        v41 = &qword_27D7DD0E8;
        v42 = &qword_227AA36A0;
        v43 = v33;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v54);
    case 3u:
      if (v27 == 193)
      {
        sub_2279F4B58(v54, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v21, 1, 1, updated);
          v41 = &qword_27D7DE398;
          v42 = &qword_227AA5D40;
          v43 = v21;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v21, 0, 1, updated);
        v35 = v50;
        sub_227A6055C();
        v36 = *&v35[*(updated + 24)];
        v53[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v36);
        v37 = v53[0];
        v38 = sub_227A4C78C();
        if (v39 && (v40 = sub_227A498C0(v38, v39, v37), , v40))
        {

          *(v28 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v44 = sub_227A7227C();
          __swift_project_value_buffer(v44, qword_27D7DE210);

          v45 = sub_227A7226C();
          v46 = sub_227A728AC();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v53[0] = v48;
            *v47 = 136315138;
            *(v47 + 4) = sub_227A46730(v28[3], v28[4], v53);
            _os_log_impl(&dword_227904000, v45, v46, "%s-> No need to handle participant update since all pseudonyms allowed already.", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v48);
            MEMORY[0x22AAA1930](v48, -1, -1);
            MEMORY[0x22AAA1930](v47, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v29 = a3[7];
      if (v29)
      {
        v30 = a3[8];
        sub_2279F4B58(v54, v53);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
          sub_227A6055C();
          v29(v17);
          sub_22790D4C0(v29);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v29);
          __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
          v41 = &qword_27D7DD0D0;
          v42 = &qword_227AA3660;
          v43 = v13;
LABEL_16:
          sub_2279F3774(v43, v41, v42);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v54);
}

uint64_t sub_227A5F78C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v50 - v6;
  v7 = type metadata accessor for JoinChannelActionMessage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ChannelMigrationActionMessage(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE398, &qword_227AA5D40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v50 - v20;
  updated = type metadata accessor for UpdateParticipantsActionMessage(0);
  v23 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v50 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v54[3] = ScoresResponseActionMessage;
  v54[4] = sub_227A589A8(&qword_27D7DE388, type metadata accessor for QueryScoresResponseActionMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  sub_227A60604();
  v27 = *(boxed_opaque_existential_1 + *(ScoresResponseActionMessage + 24));
  v28 = a3;
  switch(v27 >> 6)
  {
    case 1u:
      v31 = a3[13];
      if (v31)
      {
        v32 = a3[14];
        sub_2279F4B58(v54, v53);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        v33 = v52;
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v33, 0, 1, v7);
          v34 = v51;
          sub_227A6055C();
          v31(v34);
          sub_22790D4C0(v31);
          goto LABEL_22;
        }

        sub_22790D4C0(v31);
        __swift_storeEnumTagSinglePayload(v33, 1, 1, v7);
        v41 = &qword_27D7DD0E8;
        v42 = &qword_227AA36A0;
        v43 = v33;
        goto LABEL_16;
      }

      break;
    case 2u:
      return __swift_destroy_boxed_opaque_existential_0Tm(v54);
    case 3u:
      if (v27 == 193)
      {
        sub_2279F4B58(v54, v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_storeEnumTagSinglePayload(v21, 1, 1, updated);
          v41 = &qword_27D7DE398;
          v42 = &qword_227AA5D40;
          v43 = v21;
          goto LABEL_16;
        }

        __swift_storeEnumTagSinglePayload(v21, 0, 1, updated);
        v35 = v50;
        sub_227A6055C();
        v36 = *&v35[*(updated + 24)];
        v53[0] = MEMORY[0x277D84FA0];
        sub_227A46E58(v36);
        v37 = v53[0];
        v38 = sub_227A4C78C();
        if (v39 && (v40 = sub_227A498C0(v38, v39, v37), , v40))
        {

          *(v28 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
          sub_227A49FA0();
        }

        else
        {

          if (qword_27D7DC4E0 != -1)
          {
            swift_once();
          }

          v44 = sub_227A7227C();
          __swift_project_value_buffer(v44, qword_27D7DE210);

          v45 = sub_227A7226C();
          v46 = sub_227A728AC();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v53[0] = v48;
            *v47 = 136315138;
            *(v47 + 4) = sub_227A46730(v28[3], v28[4], v53);
            _os_log_impl(&dword_227904000, v45, v46, "%s-> No need to handle participant update since all pseudonyms allowed already.", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v48);
            MEMORY[0x22AAA1930](v48, -1, -1);
            MEMORY[0x22AAA1930](v47, -1, -1);
          }
        }

        goto LABEL_22;
      }

      break;
    default:
      v29 = a3[7];
      if (v29)
      {
        v30 = a3[8];
        sub_2279F4B58(v54, v53);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE390, &qword_227AA5D38);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
          sub_227A6055C();
          v29(v17);
          sub_22790D4C0(v29);
LABEL_22:
          sub_227A605B0();
        }

        else
        {
          sub_22790D4C0(v29);
          __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
          v41 = &qword_27D7DD0D0;
          v42 = &qword_227AA3660;
          v43 = v13;
LABEL_16:
          sub_2279F3774(v43, v41, v42);
        }
      }

      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v54);
}

uint64_t sub_227A5FEDC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_defaultActor_initialize();
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = sub_227A7243C();
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  v9 = OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate;
  v10 = sub_227A71C2C();
  __swift_storeEnumTagSinglePayload(a5 + v9, 1, 1, v10);
  *(a5 + OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_support + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_283AFCC50;
  swift_unknownObjectWeakAssign();

  *(a5 + 112) = a1;
  *(a5 + 120) = a3;
  *(a5 + 128) = a4;
  return a5;
}

void sub_227A5FFE8()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = type metadata accessor for JoinChannelActionMessage(v0);
  OUTLINED_FUNCTION_149(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_102_1();
  sub_227A583BC();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227A600A4()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A55C7C(v3, v4, v5, v6, v7);
}

uint64_t sub_227A60130()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A5639C(v3, v4, v5, v6, v7);
}

uint64_t sub_227A601BC()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A54684(v3, v4, v5, v6, v7);
}

uint64_t sub_227A60248()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A54DB4(v3, v4, v5, v6, v7);
}

uint64_t sub_227A602D4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_32();
  *v4 = v3;

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A603B8()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A5555C(v3, v4, v5, v6, v7);
}

uint64_t sub_227A60444()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A52678(v3, v4, v5, v6, v7);
}

uint64_t sub_227A604D0()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A53F70(v3, v4, v5, v6, v7);
}

uint64_t sub_227A6055C()
{
  v1 = OUTLINED_FUNCTION_99_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_51(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_86();
  v7(v6);
  return v0;
}

uint64_t sub_227A605B0()
{
  v1 = OUTLINED_FUNCTION_105_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_51(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_227A60604()
{
  v1 = OUTLINED_FUNCTION_99_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_51(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_86();
  v7(v6);
  return v0;
}

uint64_t sub_227A60658()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5(v5);

  return sub_227A56F98(v7, v8, v9, v3);
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_129_0(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v2 + 16);

  v10 = sub_227A71C6C();
  OUTLINED_FUNCTION_51(v10);
  (*(v11 + 8))(v2 + v6);
  v12 = *(v2 + v6 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v2, v6 + v8, v5 | 7);
}

void sub_227A607D8()
{
  v0 = OUTLINED_FUNCTION_105_0();
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(v0);
  OUTLINED_FUNCTION_149(ScoresResponseActionMessage);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_102_1();
  sub_227A583BC();
}

uint64_t sub_227A608A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_149(v6);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, v8);
}

uint64_t sub_227A60928()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A4F0F4(v3, v4, v5, v6, v7);
}

uint64_t sub_227A609B4()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A502DC(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_69Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227A60A80()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5(v5);

  return sub_227A582D4(v7, v8, v9, v3);
}

uint64_t objectdestroy_12Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_51(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t OUTLINED_FUNCTION_9_9()
{
  v4 = v2[9];
  v3 = v2[10];
  v5 = *(v2[11] + 32);
  v6 = v0 + *(v1 + 48);
  return v2[12];
}

void OUTLINED_FUNCTION_16_5()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[8];
  v6 = *(v0[7] + 16);
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[16];
  v4 = v2[14];
  return v2[10];
}

uint64_t OUTLINED_FUNCTION_30_2()
{
  v1 = v0[21];
  result = v0[19];
  v3 = v0[17];
  v4 = *(v0[18] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_2()
{
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_33_3()
{
  v2 = *(v0 + 48);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{
  *(v2 - 112) = a1;
  *(v2 - 136) = v1;
  sub_2279FF11C((v2 - 136), (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_52_2()
{
  v3 = v1[9];
  v5 = v1[6];
  v4 = v1[7];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v0 + 48);

  return sub_227A6055C();
}

uint64_t OUTLINED_FUNCTION_54_2()
{
  v3 = *(v1 + v0);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 56);

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_227A605B0();
}

uint64_t OUTLINED_FUNCTION_67_2(unint64_t *a1)
{

  return sub_227A589A8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_83_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v1 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v2)))));
}

uint64_t OUTLINED_FUNCTION_86_1()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v5 = v0[7];
  v6 = *(v0[15] + 8);
  return v0[16];
}

uint64_t OUTLINED_FUNCTION_98_1(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_103_1()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[3];
}

void OUTLINED_FUNCTION_108_1(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 32;
}

uint64_t OUTLINED_FUNCTION_113_1(unint64_t *a1)
{

  return sub_227A589A8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return sub_227A4C78C();
}

uint64_t OUTLINED_FUNCTION_115_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_116_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);

  return sub_227A46730(v13, v14, &a10);
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_118_0()
{
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];
}

uint64_t OUTLINED_FUNCTION_121_0()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return sub_227A46730(v3, v4, (v1 - 120));
}

uint64_t OUTLINED_FUNCTION_132_0()
{
}

void OUTLINED_FUNCTION_134_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_135_0()
{
  v2 = *(v0 - 160);

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_136_0()
{

  JUMPOUT(0x22AA9FBC0);
}

uint64_t OUTLINED_FUNCTION_137_0()
{
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
}

void OUTLINED_FUNCTION_138_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

void OUTLINED_FUNCTION_139_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t TransportMonitorPlayerStat.monitoring.getter()
{
  v1 = *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring);
  v2 = *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring + 8);

  return v1;
}

uint64_t TransportMonitorPlayerStat.description.getter()
{
  sub_227A72B1C();
  MEMORY[0x22AA9FE40](0x666F206574617453, 0xE900000000000020);
  MEMORY[0x22AA9FE40](*(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring), *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring + 8));
  MEMORY[0x22AA9FE40](0x6E6574616C7B203ALL, 0xEC000000203A7963);
  v1 = *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_latency);
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](0xD000000000000012, 0x8000000227A9F970);
  v2 = *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_averageLatency);
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](0x6F43746E6573202CLL, 0xED0000203A746E75);
  v6 = *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_sentCount);
  v3 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v3);

  MEMORY[0x22AA9FE40](0xD000000000000011, 0x8000000227A9F990);
  v7 = *(v0 + OBJC_IVAR___GKTransportMonitorPlayerStat_receivedCount);
  v4 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v4);

  MEMORY[0x22AA9FE40](125, 0xE100000000000000);
  return 0;
}

id TransportMonitorPlayerStat.init(monitoring:latency:averageLatency:sentCount:receivedCount:)()
{
  OUTLINED_FUNCTION_1_21();
  ObjectType = swift_getObjectType();
  v8 = &v1[OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring];
  *v8 = v4;
  *(v8 + 1) = v3;
  *&v1[OBJC_IVAR___GKTransportMonitorPlayerStat_latency] = v6;
  *&v1[OBJC_IVAR___GKTransportMonitorPlayerStat_averageLatency] = v5;
  *&v1[OBJC_IVAR___GKTransportMonitorPlayerStat_sentCount] = v2;
  *&v1[OBJC_IVAR___GKTransportMonitorPlayerStat_receivedCount] = v0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_227A61A3C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_227A7240C();

  return v5;
}

uint64_t sub_227A61AC0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___GKTransportMonitorStat_playerStats);
  v3 = sub_227A7243C();
  v4 = sub_227A06998(v2);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      return v3;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAA03F0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = *&v6[OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring];
    v8 = *&v6[OBJC_IVAR___GKTransportMonitorPlayerStat_monitoring + 8];
    v10 = *&v6[*a1];
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_2279FDBCC(v9, v8);
    if (__OFADD__(v3[2], (v12 & 1) == 0))
    {
      goto LABEL_20;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE560, &qword_227AA5F50);
    if (sub_227A72C2C())
    {
      v15 = sub_2279FDBCC(v9, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v13 = v15;
    }

    if (v14)
    {
      *(v3[7] + 8 * v13) = v10;
    }

    else
    {
      v3[(v13 >> 6) + 8] |= 1 << v13;
      v17 = (v3[6] + 16 * v13);
      *v17 = v9;
      v17[1] = v8;
      *(v3[7] + 8 * v13) = v10;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v3[2] = v20;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_227A72EAC();
  __break(1u);
  return result;
}

uint64_t sub_227A61D28(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___GKTransportMonitorStat_playerStats);
  result = sub_227A06998(v3);
  v5 = result;
  v6 = 0;
  for (i = 0.0; ; i = i + v9)
  {
    if (v6 == v5)
    {
      return sub_227A06998(v3);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x22AAA03F0](v6, v3);
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_13;
      }

      v9 = *(result + *a1);
      result = swift_unknownObjectRelease();
      continue;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v3 + 32 + 8 * v6++);
    v9 = *(v8 + *a1);
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void TransportMonitorStat.overallPacketLoss.getter()
{
  v1 = *(v0 + OBJC_IVAR___GKTransportMonitorStat_playerStats);
  v2 = sub_227A06998(v1);
  v3 = 0;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  while (v2 != v3)
  {
    if (v5)
    {
      v6 = MEMORY[0x22AAA03F0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v7 = *&v6[OBJC_IVAR___GKTransportMonitorPlayerStat_sentCount];

    ++v3;
    v8 = __OFADD__(v4, v7);
    v4 += v7;
    if (v8)
    {
      goto LABEL_24;
    }
  }

  v9 = sub_227A06998(v1);
  v10 = 0;
  v11 = 0;
  while (v9 != v10)
  {
    if (v5)
    {
      v12 = MEMORY[0x22AAA03F0](v10, v1);
    }

    else
    {
      if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v12 = *(v1 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      goto LABEL_25;
    }

    v13 = *&v12[OBJC_IVAR___GKTransportMonitorPlayerStat_receivedCount];

    ++v10;
    v8 = __OFADD__(v11, v13);
    v11 += v13;
    if (v8)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_91();
}

id sub_227A61FBC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_227A724BC();

  return v5;
}

uint64_t TransportMonitorStat.description.getter()
{
  sub_227A72B1C();
  MEMORY[0x22AA9FE40](0xD000000000000019, 0x8000000227A9F9F0);
  TransportMonitorStat.overallLatency.getter();
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](0xD000000000000012, 0x8000000227A9F970);
  TransportMonitorStat.overallAverageLatency.getter();
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](0x74656B636170202CLL, 0xEE00203A73736F4CLL);
  TransportMonitorStat.overallPacketLoss.getter();
  OUTLINED_FUNCTION_3_13();
  sub_227A7281C();
  MEMORY[0x22AA9FE40](125, 0xE100000000000000);
  return 0;
}

id sub_227A62144(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___GKTransportMonitorStat_playerStats] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TransportMonitorStat.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_227A62254(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227A71D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = sub_2279FDB38();
  OUTLINED_FUNCTION_0_26(v10, v11);
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE570, &qword_227AA5FE8);
  if ((OUTLINED_FUNCTION_2_17() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v2;
  v18 = sub_2279FDB38();
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_227A72EAC();
    __break(1u);
    return;
  }

  v15 = v18;
LABEL_5:
  v20 = *v2;
  if (v16)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v15);
    *(v21 + 8 * v15) = a1;
    OUTLINED_FUNCTION_91();
  }

  else
  {
    v25 = *(v5 + 16);
    OUTLINED_FUNCTION_3_13();
    v26();
    sub_227A629A8(v15, v8, a1, v20);
    OUTLINED_FUNCTION_91();
  }
}

_OWORD *sub_227A623E4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2279FDBCC(a2, a3);
  OUTLINED_FUNCTION_0_26(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8B0, &qword_227AA0E40);
  if ((OUTLINED_FUNCTION_2_17() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_2279FDBCC(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return sub_2279FF11C(a1, v20);
  }

  else
  {
    sub_227A62A60(v14, a2, a3, a1, v19);
  }
}

uint64_t sub_227A62510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2279FDBCC(a2, a3);
  OUTLINED_FUNCTION_0_26(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFD8, &qword_227AA4A60);
  if ((OUTLINED_FUNCTION_2_17() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_2279FDBCC(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_227A62ACC(v14, a2, a3, a1, v19);
  }
}

uint64_t sub_227A62630(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2279FDBCC(a1, a2);
  OUTLINED_FUNCTION_0_26(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE560, &qword_227AA5F50);
  result = sub_227A72C2C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  result = sub_2279FDBCC(a1, a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v14) = a3;
  }

  else
  {
    sub_227A62B14(v14, a1, a2, v19, a3);
  }

  return result;
}

uint64_t sub_227A62750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2279FDBCC(a3, a4);
  OUTLINED_FUNCTION_0_26(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE568, &unk_227AA5FD8);
  if ((sub_227A72C2C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_2279FDBCC(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
    OUTLINED_FUNCTION_91();
  }

  else
  {
    sub_227A62BE8(v16, a3, a4, a1, a2, v21);
    OUTLINED_FUNCTION_91();
  }
}

id sub_227A62888(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2279FDC44();
  OUTLINED_FUNCTION_0_26(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFC8, &qword_227AA4A48);
  if ((sub_227A72C2C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_2279FDC44();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_227A40414();
    result = sub_227A72EAC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v3;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_227A62C34(v11, a2, a1, v16);

    return a2;
  }
}

uint64_t sub_227A629A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_227A71D0C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_227A62A60(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2279FF11C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_227A62ACC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_227A62B14(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_227A62BE8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_227A62C34(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_227A72C2C();
}

uint64_t sub_227A62CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v5 = OUTLINED_FUNCTION_149(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_227A7276C();
  OUTLINED_FUNCTION_12_7();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_12_1();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  OUTLINED_FUNCTION_12_1();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_227AA6108;
  v15[5] = v14;
  sub_227A659A8(0, 0, v9, &unk_227AA6118, v15);
}

id LimitedPresentationManager.__allocating_init(defaultsKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return LimitedPresentationManager.init(defaultsKey:)(a1, a2);
}

id LimitedPresentationManager.init(defaultsKey:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  v7 = OUTLINED_FUNCTION_149(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
  v13 = sub_227A71C2C();
  OUTLINED_FUNCTION_12_7();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v2[14] = a1;
  v2[15] = a2;
  if (!a2)
  {
    goto LABEL_7;
  }

  v17 = objc_opt_self();

  v18 = [v17 standardUserDefaults];
  v19 = sub_227A724BC();

  v20 = [v18 dictionaryForKey_];

  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = sub_227A7241C();

  if (v21)
  {
    sub_2279F9104(0x746E756F63, 0xE500000000000000, v21, &v34);
    if (*(&v35 + 1))
    {
      if (OUTLINED_FUNCTION_17_5())
      {
        v22 = v32;
      }

      else
      {
        v22 = 0;
      }

      v2[16] = v22;
      goto LABEL_13;
    }

    v23 = 0;
  }

  else
  {
LABEL_7:
    v21 = 0;
    v34 = 0u;
    v35 = 0u;
    v23 = 1;
  }

  sub_227A04918(&v34, &qword_27D7DC610, &qword_227AA0590);
  v2[16] = 0;
  if (v23)
  {
    v34 = 0u;
    v35 = 0u;
    v24 = 1;
    goto LABEL_16;
  }

LABEL_13:
  sub_2279F9104(1702125924, 0xE400000000000000, v21, &v34);
  if (*(&v35 + 1))
  {
    v25 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v11, v25 ^ 1u, 1, v13);
    v24 = 0;
    goto LABEL_17;
  }

  v24 = 0;
LABEL_16:
  sub_227A04918(&v34, &qword_27D7DC610, &qword_227AA0590);
  OUTLINED_FUNCTION_12_7();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v13);
LABEL_17:
  swift_beginAccess();
  sub_227A346D0(v11, v2 + v12);
  swift_endAccess();
  if (v24)
  {
    v34 = 0u;
    v35 = 0u;
LABEL_22:
    sub_227A04918(&v34, &qword_27D7DC610, &qword_227AA0590);
    goto LABEL_23;
  }

  sub_2279F9104(0x6465646565637865, 0xED000074696D694CLL, v21, &v34);

  if (!*(&v35 + 1))
  {
    goto LABEL_22;
  }

  if (!OUTLINED_FUNCTION_17_5())
  {
LABEL_23:
    v29 = 0;
    goto LABEL_24;
  }

  v29 = v32;
LABEL_24:
  *(v2 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit) = v29;
  v33.receiver = v2;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t LimitedPresentationManager.presentationDisabled(config:context:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_5_12(sub_227A631CC, v2);
}

uint64_t sub_227A631CC()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_227A6324C();
  v4 = sub_227A63540(v3, v1);
  sub_227A64078();
  v5 = v0[1];

  return v5(v4 & 1);
}

void sub_227A6324C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  if (v0[15])
  {
    v5 = v0[14];
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_227A724BC();
    v8 = [v6 dictionaryForKey_];

    if (v8)
    {
      v9 = sub_227A7241C();
    }

    else
    {
      v9 = sub_227A7243C();
    }

    sub_2279F9104(0x746E756F63, 0xE500000000000000, v9, &v19);
    if (v20)
    {
      if (swift_dynamicCast())
      {
        v10 = v18;
        goto LABEL_10;
      }
    }

    else
    {
      sub_227A04918(&v19, &qword_27D7DC610, &qword_227AA0590);
    }

    v10 = 0;
LABEL_10:
    v0[16] = v10;
    sub_2279F9104(1702125924, 0xE400000000000000, v9, &v19);
    if (v20)
    {
      v11 = sub_227A71C2C();
      v12 = swift_dynamicCast() ^ 1;
      v13 = v4;
      v14 = v11;
    }

    else
    {
      sub_227A04918(&v19, &qword_27D7DC610, &qword_227AA0590);
      v14 = sub_227A71C2C();
      v13 = v4;
      v12 = 1;
    }

    __swift_storeEnumTagSinglePayload(v13, v12, 1, v14);
    v15 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
    swift_beginAccess();
    sub_227A346D0(v4, v0 + v15);
    swift_endAccess();
    sub_2279F9104(0x6465646565637865, 0xED000074696D694CLL, v9, &v19);

    if (v20)
    {
      if (swift_dynamicCast())
      {
        v16 = v18;
LABEL_18:
        *(v0 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit) = v16;
        return;
      }
    }

    else
    {
      sub_227A04918(&v19, &qword_27D7DC610, &qword_227AA0590);
    }

    v16 = 0;
    goto LABEL_18;
  }
}

uint64_t sub_227A63540(void *a1, void *a2)
{
  v3 = v2;
  v105 = a2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v94 - v10;
  v12 = sub_227A71C2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v94 - v21;
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v26 = &v94 - v25;
  if (![a1 enabled])
  {
    if (qword_280B551E0 != -1)
    {
      swift_once();
    }

    v28 = sub_227A7227C();
    __swift_project_value_buffer(v28, qword_280B551E8);
    v29 = v105;
    v30 = sub_227A7226C();
    v31 = sub_227A7289C();

    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_9;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v107 = v33;
    *v32 = 136315138;
    v34 = sub_227A650F4();
    v36 = sub_227A46730(v34, v35, &v107);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_227904000, v30, v31, "GKLimitedPresentationManager %s: Disabled by the bag", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x22AAA1930](v33, -1, -1);
    v37 = v32;
LABEL_8:
    MEMORY[0x22AAA1930](v37, -1, -1);
LABEL_9:

    return 1;
  }

  v103 = v13;
  v27 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
  swift_beginAccess();
  sub_227A34844(v3 + v27, v11, &qword_27D7DD358, &unk_227AA3BF0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_227A04918(v11, &qword_27D7DD358, &unk_227AA3BF0);
  }

  else
  {
    (*(v103 + 32))(v26, v11, v12);
    if (sub_227A6509C(a1) && ([a1 resetPeriod], v39 >= 0.0) && (v40 = sub_227A64FC0(), objc_msgSend(a1, sel_resetPeriod), v41 <= v40))
    {
      if (qword_280B551E0 != -1)
      {
        swift_once();
      }

      v78 = sub_227A7227C();
      __swift_project_value_buffer(v78, qword_280B551E8);
      (*(v103 + 16))(v22, v26, v12);
      v100 = v105;
      v101 = a1;
      v102 = sub_227A7226C();
      v79 = sub_227A7289C();

      v99 = v79;
      if (os_log_type_enabled(v102, v79))
      {
        v80 = swift_slowAlloc();
        v98 = v80;
        v97 = swift_slowAlloc();
        v106 = v97;
        *v80 = 136315650;
        v81 = sub_227A650F4();
        v100 = sub_227A46730(v81, v82, &v106);

        v83 = v98;
        *(v98 + 1) = v100;
        *(v83 + 6) = 2080;
        sub_227A660BC();
        v84 = sub_227A72E1C();
        v86 = v85;
        v87 = *(v103 + 8);
        v95 = v84;
        v96 = v87;
        v100 = (v103 + 8);
        v87(v22, v12);
        v88 = sub_227A46730(v95, v86, &v106);

        v89 = v98;
        *(v98 + 14) = v88;
        *(v89 + 11) = 2048;
        [v101 resetPeriod];
        *(v89 + 3) = v90;
        _os_log_impl(&dword_227904000, v102, v99, "GKLimitedPresentationManager %s: reset period has passed (lastAppearanceDate = %s, resetPeriod = %f). resetting count to 0", v89, 0x20u);
        v91 = v97;
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v91, -1, -1);
        MEMORY[0x22AAA1930](v89, -1, -1);

        v96(v26, v12);
      }

      else
      {

        v92 = v22;
        v93 = *(v103 + 8);
        v93(v92, v12);
        v93(v26, v12);
      }

      *(v3 + 128) = 0;
      *(v3 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit) = 1;
    }

    else
    {
      (*(v103 + 8))(v26, v12);
    }
  }

  if (sub_227A6509C(a1))
  {
    if (*(v3 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit))
    {
      v43 = &selRef_limit;
    }

    else
    {
      v43 = &selRef_initialLimit;
    }

    v42 = *(v3 + 128);
    if (v42 != [a1 *v43])
    {
      return 1;
    }

    if (qword_280B551E0 != -1)
    {
      swift_once();
    }

    v44 = sub_227A7227C();
    __swift_project_value_buffer(v44, qword_280B551E8);
    swift_retain_n();
    v45 = a1;
    v46 = v105;
    v47 = v45;
    v30 = sub_227A7226C();
    v48 = sub_227A7289C();

    if (!os_log_type_enabled(v30, v48))
    {

      return 1;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v106 = v50;
    *v49 = 136315650;
    v51 = sub_227A650F4();
    v53 = sub_227A46730(v51, v52, &v106);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2048;
    v54 = *(v3 + 128);

    *(v49 + 14) = v54;

    *(v49 + 22) = 2048;
    if (*(v3 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit))
    {
      v55 = &selRef_limit;
    }

    else
    {
      v55 = &selRef_initialLimit;
    }

    v56 = [v47 *v55];

    *(v49 + 24) = v56;

    _os_log_impl(&dword_227904000, v30, v48, "GKLimitedPresentationManager %s: limit exceeded (count = %ld, effective limit = %ld). Disabling presentation until reset period passes.", v49, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x22AAA1930](v50, -1, -1);
    v37 = v49;
    goto LABEL_8;
  }

  sub_227A34844(v3 + v27, v8, &qword_27D7DD358, &unk_227AA3BF0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_227A04918(v8, &qword_27D7DD358, &unk_227AA3BF0);
  }

  else
  {
    v57 = v103;
    (*(v103 + 32))(v19, v8, v12);
    v58 = sub_227A64FC0();
    [a1 minTimeBetweenAppearances];
    if (v58 < v59 || ([a1 minTimeBetweenAppearances], v60 < 0.0))
    {
      if (qword_280B551E0 != -1)
      {
        swift_once();
      }

      v61 = sub_227A7227C();
      __swift_project_value_buffer(v61, qword_280B551E8);
      (*(v57 + 16))(v16, v19, v12);
      v62 = v105;
      v63 = a1;
      v64 = sub_227A7226C();
      v65 = sub_227A7289C();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v106 = v105;
        *v66 = 136315650;
        v67 = sub_227A650F4();
        v69 = sub_227A46730(v67, v68, &v106);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2080;
        sub_227A660BC();
        v70 = sub_227A72E1C();
        v72 = v71;
        ObjectType = v19;
        v73 = *(v57 + 8);
        v73(v16, v12);
        v74 = sub_227A46730(v70, v72, &v106);

        *(v66 + 14) = v74;
        *(v66 + 22) = 2048;
        [v63 minTimeBetweenAppearances];
        *(v66 + 24) = v75;
        _os_log_impl(&dword_227904000, v64, v65, "GKLimitedPresentationManager %s: Too soon since last presentation (lastAppearanceDate = %s, minTimeBetween = %f). Disabling presentation.", v66, 0x20u);
        v76 = v105;
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v76, -1, -1);
        MEMORY[0x22AAA1930](v66, -1, -1);

        v73(ObjectType, v12);
      }

      else
      {

        v77 = *(v57 + 8);
        v77(v16, v12);
        v77(v19, v12);
      }

      return 1;
    }

    (*(v57 + 8))(v19, v12);
  }

  return 0;
}

void sub_227A64078()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v20 - v3;
  v5 = sub_227A71C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[15])
  {
    v10 = v0[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC668, &qword_227AA0670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00E0;
    *(inited + 32) = 0x746E756F63;
    *(inited + 40) = 0xE500000000000000;
    v12 = MEMORY[0x277D83B88];
    *(inited + 48) = v0[16];
    *(inited + 72) = v12;
    strcpy((inited + 80), "exceededLimit");
    *(inited + 94) = -4864;
    v13 = *(v0 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit);
    *(inited + 120) = MEMORY[0x277D839B0];
    *(inited + 96) = v13;
    v14 = sub_227A7243C();
    v15 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
    swift_beginAccess();
    sub_227A34844(v0 + v15, v4, &qword_27D7DD358, &unk_227AA3BF0);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_227A04918(v4, &qword_27D7DD358, &unk_227AA3BF0);
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      v23 = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      (*(v6 + 16))(boxed_opaque_existential_1, v9, v5);
      sub_2279FF11C(v22, v21);
      swift_isUniquelyReferenced_nonNull_native();
      v20[1] = v14;
      sub_227A623E4(v21, 1702125924, 0xE400000000000000);
      (*(v6 + 8))(v9, v5);
    }

    v17 = [objc_opt_self() standardUserDefaults];
    v18 = sub_227A7240C();

    v19 = sub_227A724BC();
    [v17 setValue:v18 forKey:v19];
  }
}

uint64_t sub_227A64468(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_227A64540;

  return LimitedPresentationManager.presentationDisabled(config:context:)(v7, v8);
}

uint64_t sub_227A64540()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_36();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = v1[2];
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_13_6();
  v10(v9);
  _Block_release(v3);
  OUTLINED_FUNCTION_41();

  return v11();
}

uint64_t LimitedPresentationManager.presentationDisabled(config:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_5_12(sub_227A646C0, v1);
}

id sub_227A646C0()
{
  OUTLINED_FUNCTION_42();
  result = [objc_allocWithZone(GKLimitedPresentationContext) initWithScope:0 elementType:0];
  if (result)
  {
    v2 = result;
    v4 = v0[2];
    v3 = v0[3];
    sub_227A6324C();
    v5 = sub_227A63540(v4, v2);
    sub_227A64078();

    v6 = v0[1];

    return v6(v5 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227A647F8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_227A648BC;

  return LimitedPresentationManager.presentationDisabled(config:)(v5);
}

uint64_t sub_227A648BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_13_6();
  v9(v8);
  _Block_release(v3);
  OUTLINED_FUNCTION_41();

  return v10();
}

uint64_t LimitedPresentationManager.reset()()
{
  OUTLINED_FUNCTION_31();
  *(v1 + 40) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  OUTLINED_FUNCTION_149(v2);
  v4 = *(v3 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A64A94, v0, 0);
}

uint64_t sub_227A64A94()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v2 + 128) = 0;
  sub_227A71C2C();
  OUTLINED_FUNCTION_12_7();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
  OUTLINED_FUNCTION_16_6();
  sub_227A346D0(v1, v2 + v7);
  swift_endAccess();
  *(v2 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit) = 0;
  sub_227A64078();

  OUTLINED_FUNCTION_41();

  return v8();
}

uint64_t sub_227A64B64(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_227A66114;

  return LimitedPresentationManager.reset()();
}

uint64_t LimitedPresentationManager.didPresent()()
{
  OUTLINED_FUNCTION_31();
  *(v1 + 40) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  OUTLINED_FUNCTION_149(v2);
  v4 = *(v3 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A64CA0, v0, 0);
}

void sub_227A64CA0()
{
  v2 = *(v0 + 40);
  if (__OFADD__(*(v2 + 128), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_42();
    v3 = *(v0 + 48);
    *(v2 + 128) = v4;
    sub_227A71C1C();
    v5 = sub_227A71C2C();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    v6 = OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate;
    OUTLINED_FUNCTION_16_6();
    sub_227A346D0(v3, v2 + v6);
    swift_endAccess();
    sub_227A64078();

    OUTLINED_FUNCTION_41();

    v7();
  }
}

uint64_t sub_227A64D84(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_135();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  return sub_227A62CD4(a5, v8);
}

uint64_t sub_227A64DF0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_227A64E98;

  return LimitedPresentationManager.didPresent()();
}

uint64_t sub_227A64E98()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_41();

  return v7();
}

double sub_227A64FC0()
{
  v0 = sub_227A71C2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227A71C1C();
  sub_227A71BBC();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return fabs(v6);
}

BOOL sub_227A6509C(void *a1)
{
  if (*(v1 + OBJC_IVAR___GKLimitedPresentationManager_exceededFirstLimit))
  {
    v2 = &selRef_limit;
  }

  else
  {
    v2 = &selRef_initialLimit;
  }

  v3 = [a1 *v2];
  return (v3 & 0x8000000000000000) == 0 && *(v1 + 128) >= v3;
}

uint64_t sub_227A650F4()
{
  v3 = sub_227A6546C([v0 scope]);
  MEMORY[0x22AA9FE40](32, 0xE100000000000000);
  v1 = sub_227A6556C([v0 elementType]);
  MEMORY[0x22AA9FE40](v1);

  return v3;
}

void LimitedPresentationManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void LimitedPresentationManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t LimitedPresentationManager.deinit()
{
  v1 = *(v0 + 120);

  sub_227A04918(v0 + OBJC_IVAR___GKLimitedPresentationManager_lastAppearanceDate, &qword_27D7DD358, &unk_227AA3BF0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LimitedPresentationManager.__deallocating_deinit()
{
  LimitedPresentationManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for LimitedPresentationManager()
{
  result = qword_280B550E8;
  if (!qword_280B550E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227A652F4()
{
  sub_227A2A954();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_227A653DC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_49(v4);

  return v7(v6);
}

uint64_t sub_227A6546C(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 1:
      result = 0x6C61626F6C67;
      break;
    case 2:
      result = 0x6576656C20707061;
      break;
    case 3:
      result = 0x20737365636F7270;
      break;
    default:
      strcpy(v2, "unsupported-");
      v1 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v1);

      result = v2[0];
      break;
  }

  return result;
}

uint64_t sub_227A6556C(uint64_t result)
{
  if (result)
  {
    if (result == 1 || result == 2)
    {
      return 0x206E692D6E676973;
    }

    else
    {
      strcpy(v2, "unsupported-");
      v1 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v1);

      return v2[0];
    }
  }

  return result;
}

uint64_t sub_227A6563C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2279F50E8;

  return v7();
}

uint64_t sub_227A65724()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_52(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_14(v6);

  return v9(v8);
}

uint64_t sub_227A657C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2279E5A6C;

  return v8();
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_12_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_227A658E4()
{
  OUTLINED_FUNCTION_56();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_52(v7);
  *v8 = v9;
  v8[1] = sub_2279F50E8;

  return sub_227A657C0(v2, v3, v4, v6);
}

uint64_t sub_227A659A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_227A34844(a3, v25 - v11, &qword_27D7DC5B8, &qword_227AA04D0);
  v13 = sub_227A7276C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_227A04918(v12, &qword_27D7DC5B8, &qword_227AA04D0);
  }

  else
  {
    sub_227A7275C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_227A726EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_227A7253C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_227A04918(a3, &qword_27D7DC5B8, &qword_227AA04D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227A04918(a3, &qword_27D7DC5B8, &qword_227AA04D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_227A65C84(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227A327F4;

  return v7(a1);
}

uint64_t sub_227A65D7C()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_51_1(v4);

  return v7(v6);
}

uint64_t sub_227A65E14()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_51_1(v4);

  return v7(v6);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_135();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_227A65EE4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_49(v4);

  return v7(v6);
}

uint64_t sub_227A65F74()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  v5[1] = sub_2279F50E8;

  return sub_227A647F8(v1, v2, v3);
}

uint64_t sub_227A66020()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_52(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_14(v6);

  return v9(v8);
}

unint64_t sub_227A660BC()
{
  result = qword_27D7DE578;
  if (!qword_27D7DE578)
  {
    sub_227A71C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE578);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return swift_dynamicCast();
}

uint64_t ReachabilityCallback_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void ReachabilityCallback(SCNetworkReachabilityRef, SCNetworkReachabilityFlags, void *)"}];

  return [v0 handleFailureInFunction:v1 file:@"GKReachability+NoARC.m" lineNumber:41 description:@"info was NULL in ReachabilityCallback"];
}

uint64_t ReachabilityCallback_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void ReachabilityCallback(SCNetworkReachabilityRef, SCNetworkReachabilityFlags, void *)"}];

  return [v0 handleFailureInFunction:v1 file:@"GKReachability+NoARC.m" lineNumber:42 description:@"info was wrong class in ReachabilityCallback"];
}

void _gkMarkFileAsPurgeable_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __error();
  v5 = strerror(*v4);
  v7 = 136315394;
  v8 = a1;
  v9 = 2080;
  v10 = v5;
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, " Can't open %s : %s\n", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void gkEnsureDirectory_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  v4 = v0;
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "Could not create target folder: %@,   %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void OnBoardingKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GKSoftLinkedClassesFoundation.h" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __getOBBundleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getOBBundleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GKSoftLinkedClassesFoundation.h" lineNumber:35 description:{@"Unable to find class %s", "OBBundle"}];

  __break(1u);
}

void __getOBPrivacyFlowClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getOBPrivacyFlowClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GKSoftLinkedClassesFoundation.h" lineNumber:32 description:{@"Unable to find class %s", "OBPrivacyFlow"}];

  __break(1u);
}

void __GKInsecureCacheRoot_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_18(&dword_227904000, v0, v1, "error while trying to create the cache root directory at path:%@ due to:%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __GKSupportDataRoot_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_18(&dword_227904000, v0, v1, "error while trying to create the support root directory at:%@ due to %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __getASCArtworkClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getASCArtworkClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GKGameInternal.m" lineNumber:27 description:{@"Unable to find class %s", "ASCArtwork"}];

  __break(1u);
}

void __getASCArtworkClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppStoreComponentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GKGameInternal.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}