void *sub_249E2E1F4(uint64_t a1)
{
  v2 = [v1 activeConversationForCall_];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 provider];
    v5 = [v4 identifier];

    v6 = sub_249E7AAA8();
    v8 = v7;

    if (v6 == sub_249E7A8A8() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_249E7B318();

      if ((v11 & 1) == 0)
      {

        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_249E2E2EC()
{
  v1 = v0;
  if (qword_27EF22F98 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_0_7();
  }

  v2 = sub_249E7A6B8();
  __swift_project_value_buffer(v2, qword_27EF29170);
  v3 = v1;
  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_4();
    *v6 = 134217984;
    v7 = [v3 currentAudioAndVideoCalls];
    sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
    v8 = sub_249E7ABE8();

    v9 = sub_249E51FB4(v8);

    *(v6 + 4) = v9;

    _os_log_impl(&dword_249DEE000, v4, v5, "%ld Current Audio and Video Calls", v6, 0xCu);
    OUTLINED_FUNCTION_1();
  }

  else
  {

    v4 = v3;
  }

  v10 = [v3 currentAudioAndVideoCalls];
  sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
  v1 = sub_249E7ABE8();

  v11 = sub_249E51FB4(v1);
  v12 = 0;
  v13 = v1 & 0xC000000000000001;
  v14 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v11 != v12)
  {
    if (v13)
    {
      v15 = MEMORY[0x24C204D50](v12, v1);
    }

    else
    {
      if (v12 >= *(v14 + 16))
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v16 = v15;
    v17 = sub_249E7A698();
    v18 = sub_249E7AE28();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v1;
      v21 = v11;
      v22 = v13;
      v23 = swift_slowAlloc();
      *v19 = 134218242;
      *(v19 + 4) = v12 + 1;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v23 = v16;
      v24 = v16;
      _os_log_impl(&dword_249DEE000, v17, v18, "Call %ld: %@", v19, 0x16u);
      sub_249DF4A68(v23);
      v13 = v22;
      v11 = v21;
      v1 = v20;
      OUTLINED_FUNCTION_1();
      v14 = v26;
      OUTLINED_FUNCTION_1();
      v16 = v17;
      v17 = v24;
    }

    ++v12;
  }
}

void sub_249E2E5EC()
{
  v1 = [v0 currentAudioAndVideoCalls];
  sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
  v2 = sub_249E7ABE8();

  v3 = sub_249E51FB4(v2);
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {
LABEL_10:

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C204D50](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = [v6 isActive];

    v4 = v5 + 1;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t TUConversationState.description.getter(uint64_t a1)
{
  v1 = 0x676E6974696157;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v1 = 0x6E69726170657250;
      break;
    case 2:
      v2 = 1852403530;
      goto LABEL_5;
    case 3:
      v1 = 0x64656E696F4ALL;
      break;
    case 4:
      v2 = 1986094412;
LABEL_5:
      v1 = v2 | 0x676E6900000000;
      break;
    default:
      v1 = 0x6E776F6E6B6E55;
      break;
  }

  v3 = sub_249E7B2D8();
  MEMORY[0x24C204750](v3);

  MEMORY[0x24C204750](41, 0xE100000000000000);

  MEMORY[0x24C204750](10272, 0xE200000000000000);

  return v1;
}

uint64_t sub_249E2E860(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_249DF691C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return swift_once();
}

uint64_t type metadata accessor for DropInStateResponse()
{
  result = qword_27EF238E0;
  if (!qword_27EF238E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249E2E958()
{
  sub_249E7A628();
  if (v0 <= 0x3F)
  {
    type metadata accessor for State(319);
    if (v1 <= 0x3F)
    {
      sub_249E7A5B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_249E2E9FC(uint64_t a1, uint64_t a2)
{
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DropInStateResponse();
  v5 = v4[5];
  if ((sub_249E7A5F8() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[8];

  return sub_249E7A578();
}

uint64_t sub_249E2EAC8(uint64_t a1)
{
  result = sub_249E2EBFC(&qword_27EF238F0);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249E2EB0C(uint64_t a1)
{
  result = sub_249E2EBFC(&qword_27EF238F8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E2EB50(uint64_t a1)
{
  result = sub_249E2EBFC(&qword_27EF238F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E2EB94(uint64_t a1)
{
  *(a1 + 8) = sub_249E2EBFC(&qword_27EF23900);
  result = sub_249E2EBFC(&qword_27EF23908);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E2EBFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DropInStateResponse();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E2EC40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DropInStateManager.Context(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v8 = sub_249E7A698();
  v9 = sub_249E7AE28();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    v12 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
    swift_beginAccess();
    sub_249E30560(v2 + v12, v7);
    v13 = sub_249E30088();
    v15 = v14;
    sub_249E30628(v7);
    v16 = sub_249E3A958(v13, v15, &v28);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_249DEE000, v8, v9, "Updated Context to %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C205870](v11, -1, -1);
    MEMORY[0x24C205870](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = 0x65746E6F43646C6FLL;
  *(inited + 40) = 0xEA00000000007478;
  *(inited + 72) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  sub_249E30560(a1, boxed_opaque_existential_0);
  v19 = sub_249E7AA08();
  v20 = [objc_opt_self() defaultCenter];
  if (qword_28130D218 != -1)
  {
    swift_once();
  }

  v21 = qword_28130E6F0;
  v22 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
  swift_beginAccess();
  sub_249E30560(v2 + v22, v7);
  v23 = sub_249E7B358();
  sub_249E56C58(v19);
  v25 = v24;

  sub_249E30684(v21, v23, v25, v20);

  return swift_unknownObjectRelease();
}

uint64_t sub_249E2EF44(uint64_t a1)
{
  v3 = type metadata accessor for DropInStateManager.Context(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
  swift_beginAccess();
  sub_249E30560(v1 + v8, v7);
  swift_beginAccess();
  sub_249E305C4(a1, v1 + v8);
  swift_endAccess();
  sub_249E2EC40(v7);
  sub_249E30628(a1);
  return sub_249E30628(v7);
}

uint64_t sub_249E2F018()
{
  v1 = type metadata accessor for DropInStateManager.Context(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask) = 0;
  sub_249E7A6A8();
  v7 = v6 + *(v2 + 32);
  sub_249E7A508();
  *v6 = xmmword_249E7E7A0;
  *(v6 + 16) = 0xE000000000000000;
  sub_249E30720(v6, v0 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_context);
  return v0;
}

void sub_249E2F110(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DropInStateManager.Context(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v14 = OUTLINED_FUNCTION_3(v13);
  v55 = v15;
  v56 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v54 = &v50 - v18;
  v19 = sub_249E7A5B8();
  v20 = OUTLINED_FUNCTION_3(v19);
  v58 = v21;
  v59 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v53 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v57 = &v50 - v26;
  v27 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_logger;

  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60[0] = v27;
    *v30 = 136315394;
    v31 = sub_249E7ADB8();
    v51 = v4;
    v52 = a1;
    v33 = v12;
    v34 = v8;
    v35 = sub_249E3A958(v31, v32, v60);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    if (a3)
    {
      v36 = a2;
    }

    else
    {
      v36 = 0;
    }

    if (a3)
    {
      v37 = a3;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v38 = sub_249E3A958(v36, v37, v60);
    v8 = v34;
    v12 = v33;

    *(v30 + 14) = v38;
    v4 = v51;
    a1 = v52;
    _os_log_impl(&dword_249DEE000, v28, v29, "Updating State to %s, reason = %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C205870](v27, -1, -1);
    MEMORY[0x24C205870](v30, -1, -1);
  }

  switch(a1)
  {
    case 3:
      OUTLINED_FUNCTION_2_8();
      break;
    case 2:
      OUTLINED_FUNCTION_2_8();
      v44 = *(v4 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask);
      if (*v27 != 3)
      {
        if (v44)
        {
          v46 = *(v4 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask);

          sub_249E7AC98();
        }

        v40 = a3;
        if (!a3)
        {
          a2 = v27[1];
          v40 = v27[2];
        }

        v47 = v54;
        sub_249E7A758();
        sub_249E30310(&qword_28130D320);
        sub_249E30310(&unk_28130D310);
        sub_249E30310(&unk_28130D300);
        v48 = v56;
        sub_249E7A6E8();
        (*(v55 + 8))(v47, v48);
        v49 = v53;
        sub_249E7A5A8();
        v41 = v57;
        sub_249E7A528();
        v43 = v58;
        v42 = v59;
        (*(v58 + 8))(v49, v59);
        sub_249E2F81C();
        goto LABEL_28;
      }

      if (!v44)
      {
        sub_249E2F694();
        return;
      }

      break;
    case 1:
      if (*(v4 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask))
      {
        v39 = *(v4 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask);

        sub_249E7AC98();
      }

      if (a3)
      {
        v40 = a3;
      }

      else
      {
        a2 = 0;
        v40 = 0xE000000000000000;
      }

      v41 = v57;
      sub_249E7A508();
      v43 = v58;
      v42 = v59;
      goto LABEL_28;
    default:
      return;
  }

  a2 = v27[1];
  v40 = v27[2];
  v41 = v57;
  v43 = v58;
  v45 = v27 + *(v8 + 24);
  v42 = v59;
  (*(v58 + 16))(v57, v45, v59);

LABEL_28:
  (*(v43 + 16))(v12 + *(v8 + 24), v41, v42);
  *v12 = a1;
  v12[1] = a2;
  v12[2] = v40;
  sub_249E2EF44(v12);
  (*(v43 + 8))(v41, v42);
}

uint64_t sub_249E2F694()
{
  v1 = v0;
  v2 = type metadata accessor for DropInStateManager.Context(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249E7A698();
  v7 = sub_249E7AE28();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_249DEE000, v6, v7, "Availability Expired", v8, 2u);
    MEMORY[0x24C205870](v8, -1, -1);
  }

  v9 = v1 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
  swift_beginAccess();
  v10 = *(v2 + 24);
  v11 = sub_249E7A5B8();
  (*(*(v11 - 8) + 16))(&v5[v10], v9 + v10, v11);
  *v5 = xmmword_249E7E7B0;
  *(v5 + 2) = 0x8000000249E82670;
  return sub_249E2EF44(v5);
}

uint64_t sub_249E2F81C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  sub_249E7A758();
  sub_249E30310(&qword_28130D320);
  sub_249E30310(&unk_28130D310);
  sub_249E30310(&unk_28130D300);
  sub_249E7A6E8();
  (*(v7 + 8))(v10, v6);
  v11 = v18[1];
  v12 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  v13 = sub_249E30360(&qword_27EF23910, type metadata accessor for DropInStateManager);
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v13;
  v14[4] = v11;
  v14[5] = v1;
  swift_retain_n();
  v15 = sub_249E5ED90(0, 0, v5, &unk_249E7E878, v14);
  v16 = *(v1 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask);
  *(v1 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask) = v15;
}

uint64_t sub_249E2FA98()
{
  sub_249E30628(v0 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_context);
  v1 = *(v0 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask);

  v2 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_logger;
  v3 = sub_249E7A6B8();
  (*(*(v3 - 8) + 8))(&v2[v0], v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E2FB20()
{
  sub_249E2FA98();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249E2FB74()
{
  result = type metadata accessor for DropInStateManager.Context(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_249E7A6B8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_249E2FC74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249E2FCD4()
{
  type metadata accessor for State(319);
  if (v0 <= 0x3F)
  {
    sub_249E7A5B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_249E2FD60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  return MEMORY[0x2822009F8](sub_249E2FD84, a5, 0);
}

uint64_t sub_249E2FD84()
{
  v1 = sub_249E62184(*(v0 + 40));
  v2 = *(MEMORY[0x277D857E8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_249E2FE24;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_249E2FE24()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_249E30784;
  }

  else
  {
    v6 = sub_249E2FF5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_249E2FF5C()
{
  if ((sub_249E7ACB8() & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_logger + *(v0 + 48);
    v2 = sub_249E7A698();
    v3 = sub_249E7AE28();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_249DEE000, v2, v3, "Drop In Availability Expired", v4, 2u);
      MEMORY[0x24C205870](v4, -1, -1);
    }

    v5 = *(v0 + 48);

    v6 = *(v5 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask);
    *(v5 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_stateChangeTask) = 0;

    v7 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
    swift_beginAccess();
    if (*(v5 + v7) != 3)
    {
      v8 = *(v0 + 48);
      sub_249E2F694();
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_249E30088()
{
  v1 = sub_249E7A5B8();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_249E7B128();
  MEMORY[0x24C204750](0x3D2065746174535BLL, 0xE900000000000020);
  v10 = *v0;
  v11 = sub_249E7ADB8();
  MEMORY[0x24C204750](v11);

  MEMORY[0x24C204750](0x6E6F73616552202CLL, 0xEB00000000203D20);
  MEMORY[0x24C204750](v0[1], v0[2]);
  MEMORY[0x24C204750](0xD000000000000014, 0x8000000249E82650);
  v12 = *(type metadata accessor for DropInStateManager.Context(0) + 24);
  sub_249E30360(&unk_27EF23778, MEMORY[0x277CC9578]);
  v13 = sub_249E7B2D8();
  MEMORY[0x24C204750](v13);

  MEMORY[0x24C204750](0x697078457369202CLL, 0xEE00203D20646572);
  sub_249E7A568();
  v15 = v14;
  sub_249E7A598();
  sub_249E7A568();
  v17 = v16;
  (*(v4 + 8))(v9, v1);
  if (v15 >= v17)
  {
    v18 = 0x65736C6166;
  }

  else
  {
    v18 = 1702195828;
  }

  if (v15 >= v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v18, v19);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_249E302D8()
{
  result = sub_249E7AA88();
  qword_28130E6F0 = result;
  return result;
}

uint64_t sub_249E30310(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF23820, &unk_249E7E860);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E30360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249E303A8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249E3046C;

  return sub_249E2FD60(v6, a1, v4, v5, v7);
}

uint64_t sub_249E3046C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249E30560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInStateManager.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E305C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInStateManager.Context(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E30628(uint64_t a1)
{
  v2 = type metadata accessor for DropInStateManager.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_249E30684(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_249E7A9C8();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_249E30720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInStateManager.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_beginAccess();
}

uint64_t sub_249E307AC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = OBJC_IVAR____TtC10DropInCore16PseudonymManager_logger;
  v4 = sub_249E7A6B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E3082C()
{
  sub_249E307AC();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PseudonymManager()
{
  result = qword_27EF23920;
  if (!qword_27EF23920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E308AC()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E30974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = 0x6469656D6F68;
  *(inited + 40) = 0xE600000000000000;
  v1 = sub_249E7A5D8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  return sub_249E7AA08();
}

uint64_t sub_249E30A38(uint64_t a1)
{
  result = sub_249E30B0C(&qword_27EF23930);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for DropInStateRequest()
{
  result = qword_28130E3F0;
  if (!qword_28130E3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E30AC8(uint64_t a1)
{
  result = sub_249E30B0C(&qword_27EF23938);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E30B0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DropInStateRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E30B50(uint64_t a1)
{
  result = sub_249E30B0C(&qword_27EF23938);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E30BBC()
{
  result = sub_249E7A628();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249E30C28()
{
  v1 = 7104878;
  sub_249E7B128();
  MEMORY[0x24C204750](0x44497265646E6553, 0xEB00000000203D20);
  MEMORY[0x24C204750](*v0, v0[1]);
  MEMORY[0x24C204750](0x203D20494353202CLL, 0xE800000000000000);
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x24C204750](v2, v3);

  MEMORY[0x24C204750](0xD000000000000010, 0x8000000249E82760);
  if (v0[5])
  {
    v4 = v0[4];
    v5 = v0[5];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x24C204750](v4, v5);

  MEMORY[0x24C204750](0xD000000000000016, 0x8000000249E82780);
  if (v0[7])
  {
    v1 = v0[6];
    v6 = v0[7];
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x24C204750](v1, v6);

  return 0;
}

uint64_t sub_249E30DC4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_249E7B318() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[4] == a2[4] && v8 == v9;
    if (!v10 && (sub_249E7B318() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = a2[7];
  if (v11)
  {
    if (v12)
    {
      v13 = a1[6] == a2[6] && v11 == v12;
      if (v13 || (sub_249E7B318() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_249E30EBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_249E7AB18();
  if (v0[3])
  {
    v3 = v0[2];
    sub_249E7B428();
    sub_249E7AB18();
  }

  else
  {
    sub_249E7B428();
  }

  if (v0[5])
  {
    v4 = v0[4];
    sub_249E7B428();
    sub_249E7AB18();
  }

  else
  {
    sub_249E7B428();
  }

  if (!v0[7])
  {
    return sub_249E7B428();
  }

  v5 = v0[6];
  sub_249E7B428();

  return sub_249E7AB18();
}

uint64_t sub_249E30F98()
{
  sub_249E7B408();
  sub_249E30EBC();
  return sub_249E7B438();
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

uint64_t sub_249E30FFC(uint64_t a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249E3103C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_249E310A0()
{
  result = qword_27EF23940;
  if (!qword_27EF23940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23940);
  }

  return result;
}

uint64_t sub_249E310F4()
{
  sub_249E7B408();
  sub_249E30EBC();
  return sub_249E7B438();
}

uint64_t type metadata accessor for Pseudonym()
{
  result = qword_28130D4A8;
  if (!qword_28130D4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E311A4()
{
  result = sub_249DF691C(319, &unk_28130D140, 0x277D6EEE8);
  if (v1 <= 0x3F)
  {
    result = sub_249E7A5B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E31250(void *a1, void *a2)
{
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  if (sub_249E7AF78() & 1) != 0 && (v6 = type metadata accessor for Pseudonym(), v7 = *(v6 + 20), (sub_249E7A578()))
  {
    v8 = *(a1 + *(v6 + 24)) ^ *(a2 + *(v6 + 24)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_249E312EC()
{
  v1 = sub_249E7A5B8();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_249E7B128();

  v10 = [*v0 description];
  v11 = sub_249E7AAA8();
  v13 = v12;

  MEMORY[0x24C204750](v11, v13);

  MEMORY[0x24C204750](0x617269707845202CLL, 0xEF203D206E6F6974);
  LODWORD(v13) = *(type metadata accessor for Pseudonym() + 20);
  OUTLINED_FUNCTION_1_5();
  sub_249E32D94(v14, v15);
  v16 = sub_249E7B2D8();
  MEMORY[0x24C204750](v16);

  MEMORY[0x24C204750](0x697078457369202CLL, 0xEE00203D20646572);
  sub_249E7A568();
  v18 = v17;
  sub_249E7A598();
  sub_249E7A568();
  v20 = v19;
  (*(v4 + 8))(v9, v1);
  if (v18 >= v20)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (v18 >= v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x24C204750](v21, v22);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return 0x20656C646E61485BLL;
}

uint64_t sub_249E31534()
{
  v0 = sub_249E7B268();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_249E31580(char a1)
{
  if (a1)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_249E31614@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249E31534();
  *a2 = result;
  return result;
}

uint64_t sub_249E31644@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E31580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_249E31678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_249E31534();
  *a1 = result;
  return result;
}

uint64_t sub_249E316B8(uint64_t a1)
{
  v2 = sub_249E32B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249E316F4(uint64_t a1)
{
  v2 = sub_249E32B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249E31730@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_249E7A5B8();
  v5 = OUTLINED_FUNCTION_3(v4);
  v36 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23960, &qword_249E7ED68);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v15);
  v37 = type metadata accessor for Pseudonym();
  v16 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v19 = (v18 - v17);
  v20 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_249E32B84();
  sub_249E7B448();
  if (v2)
  {
    v21 = 0;
    v22 = v19;
    v23 = v4;
    v26 = v37;
  }

  else
  {
    LOBYTE(v39) = 1;
    OUTLINED_FUNCTION_1_5();
    sub_249E32D94(v24, v25);
    sub_249E7B298();
    v23 = v4;
    v26 = v37;
    v22 = v19;
    (*(v36 + 32))(v19 + *(v37 + 20), v11, v23);
    sub_249E32BD8();
    sub_249E7B298();
    *(v19 + *(v37 + 24)) = 1;
    sub_249E32C2C();
    sub_249E7B298();
    sub_249DF691C(0, &qword_27EF23528, 0x277CCAAC8);
    sub_249DF691C(0, &unk_28130D140, 0x277D6EEE8);
    v30 = sub_249E7AE38();
    v31 = v30;
    if (v30)
    {
      v32 = OUTLINED_FUNCTION_4_6();
      v33(v32);
      sub_249DFE8F8(v39, v40);
      *v19 = v31;
      sub_249E32CD4(v19, a2);
      __swift_destroy_boxed_opaque_existential_0(v38);
      return sub_249E32D38(v19);
    }

    sub_249E32C80();
    swift_allocError();
    swift_willThrow();
    sub_249DFE8F8(v39, v40);
    v34 = OUTLINED_FUNCTION_4_6();
    v29(v34, v28);
    v21 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v38);
  if (v21)
  {
    return (*(v36 + 8))(v22 + *(v26 + 20), v23);
  }

  return result;
}

uint64_t sub_249E31B94(void *a1)
{
  v3 = v1;
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23990, &qword_249E7ED70);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  v12 = &v29[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_249E32B84();
  sub_249E7B458();
  v14 = type metadata accessor for Pseudonym();
  v15 = *(v14 + 20);
  LOBYTE(v29[0]) = 1;
  sub_249E7A5B8();
  OUTLINED_FUNCTION_1_5();
  sub_249E32D94(v16, v17);
  sub_249E7B2C8();
  if (!v2)
  {
    LOBYTE(v29[0]) = *(v3 + *(v14 + 24));
    HIBYTE(v28) = 2;
    sub_249E32DDC();
    OUTLINED_FUNCTION_7_4();
    v20 = objc_opt_self();
    v21 = *v3;
    v29[0] = 0;
    v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:v29];
    v23 = v29[0];
    if (v22)
    {
      v24 = sub_249E7A4F8();
      v26 = v25;

      v29[0] = v24;
      v29[1] = v26;
      HIBYTE(v28) = 0;
      sub_249E32E30();
      OUTLINED_FUNCTION_7_4();
      (*(v7 + 8))(v12, v5);
      result = sub_249DFE8F8(v24, v26);
      goto LABEL_4;
    }

    v27 = v23;
    sub_249E7A4D8();

    swift_willThrow();
  }

  result = (*(v7 + 8))(v12, v5);
LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_249E31E24()
{
  v0 = sub_249E7B268();

  return v0 != 0;
}

BOOL sub_249E31EC8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249E31E24();
  *a2 = result;
  return result;
}

unint64_t sub_249E31EFC@<X0>(void *a1@<X8>)
{
  result = sub_249E31E6C();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

uint64_t sub_249E31F30(char a1)
{
  if (a1)
  {
    return 0x72656E6567657250;
  }

  else
  {
    return 0x6C616D726F4ELL;
  }
}

uint64_t sub_249E31F7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_249E7B318() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E6567657270 && a2 == 0xEC00000064657461)
  {

    return 1;
  }

  else
  {
    v7 = sub_249E7B318();

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

uint64_t sub_249E3204C(char a1)
{
  if (a1)
  {
    return 0x72656E6567657270;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_249E3209C(void *a1, int a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239E8, &qword_249E7ED98);
  v4 = OUTLINED_FUNCTION_3(v3);
  v30 = v5;
  v31 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239F0, &qword_249E7EDA0);
  OUTLINED_FUNCTION_3(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239F8, &qword_249E7EDA8);
  OUTLINED_FUNCTION_3(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v23);
  v25 = &v29 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_249E32E84();
  sub_249E7B458();
  v27 = (v20 + 8);
  if (v32)
  {
    v34 = 1;
    sub_249E32F9C();
    sub_249E7B2B8();
    (*(v30 + 8))(v10, v31);
  }

  else
  {
    v33 = 0;
    sub_249E32FF0();
    sub_249E7B2B8();
    (*(v12 + 8))(v17, v29);
  }

  return (*v27)(v25, v18);
}

uint64_t sub_249E32350(char a1)
{
  sub_249E7B408();
  MEMORY[0x24C205020](a1 & 1);
  return sub_249E7B438();
}

uint64_t sub_249E32398(unint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239B0, &qword_249E7ED78);
  OUTLINED_FUNCTION_3(v49);
  v47 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239B8, &qword_249E7ED80);
  OUTLINED_FUNCTION_3(v8);
  v46 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239C0, &qword_249E7ED88);
  OUTLINED_FUNCTION_3(v15);
  v48 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v22 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_0(a1, *(a1 + 24));
  sub_249E32E84();
  v23 = v50;
  sub_249E7B448();
  if (v23)
  {
    goto LABEL_8;
  }

  v44 = v8;
  v45 = v14;
  v50 = a1;
  v24 = v49;
  v25 = sub_249E7B2A8();
  result = sub_249E32ED8(v25, 0);
  if (v28 == v29 >> 1)
  {
LABEL_7:
    v34 = sub_249E7B178();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF239D0, &qword_249E7ED90) + 48);
    *v36 = &type metadata for Pseudonym.ExpirationType;
    sub_249E7B288();
    sub_249E7B168();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v21, v15);
    a1 = v50;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return a1;
  }

  v43 = 0;
  if (v28 < (v29 >> 1))
  {
    a1 = *(v27 + v28);
    sub_249E32F20(v28 + 1, v29 >> 1, result, v27, v28, v29);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (a1)
      {
        LODWORD(v46) = a1;
        v52 = 1;
        sub_249E32F9C();
        OUTLINED_FUNCTION_6_4(&type metadata for Pseudonym.ExpirationType.PregeneratedCodingKeys, &v52);
        swift_unknownObjectRelease();
        (*(v47 + 8))(v7, v24);
        v39 = OUTLINED_FUNCTION_2_9();
        v40(v39);
        a1 = v46;
      }

      else
      {
        v51 = 0;
        sub_249E32FF0();
        v38 = v45;
        OUTLINED_FUNCTION_6_4(&type metadata for Pseudonym.ExpirationType.NormalCodingKeys, &v51);
        swift_unknownObjectRelease();
        (*(v46 + 8))(v38, v44);
        v41 = OUTLINED_FUNCTION_2_9();
        v42(v41);
      }

      __swift_destroy_boxed_opaque_existential_0(v50);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E32824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_249E31F7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_249E3286C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_249E32044();
  *a1 = result;
  return result;
}

uint64_t sub_249E32894(uint64_t a1)
{
  v2 = sub_249E32E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249E328D0(uint64_t a1)
{
  v2 = sub_249E32E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249E3292C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_249E32088();
  *a1 = result & 1;
  return result;
}

uint64_t sub_249E32958(uint64_t a1)
{
  v2 = sub_249E32FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249E32994(uint64_t a1)
{
  v2 = sub_249E32FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249E329D0(uint64_t a1)
{
  v2 = sub_249E32F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249E32A0C(uint64_t a1)
{
  v2 = sub_249E32F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249E32A48@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E32398(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_249E32AA0()
{
  result = qword_27EF23948;
  if (!qword_27EF23948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23948);
  }

  return result;
}

unint64_t sub_249E32B84()
{
  result = qword_27EF23968;
  if (!qword_27EF23968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23968);
  }

  return result;
}

unint64_t sub_249E32BD8()
{
  result = qword_27EF23978;
  if (!qword_27EF23978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23978);
  }

  return result;
}

unint64_t sub_249E32C2C()
{
  result = qword_27EF23980;
  if (!qword_27EF23980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23980);
  }

  return result;
}

unint64_t sub_249E32C80()
{
  result = qword_27EF23988;
  if (!qword_27EF23988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23988);
  }

  return result;
}

uint64_t sub_249E32CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Pseudonym();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E32D38(uint64_t a1)
{
  v2 = type metadata accessor for Pseudonym();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249E32D94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_249E32DDC()
{
  result = qword_27EF239A0;
  if (!qword_27EF239A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239A0);
  }

  return result;
}

unint64_t sub_249E32E30()
{
  result = qword_27EF239A8;
  if (!qword_27EF239A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239A8);
  }

  return result;
}

unint64_t sub_249E32E84()
{
  result = qword_27EF239C8;
  if (!qword_27EF239C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239C8);
  }

  return result;
}

uint64_t sub_249E32ED8(uint64_t result, uint64_t a2)
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

uint64_t sub_249E32F20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_249E32F9C()
{
  result = qword_27EF239D8;
  if (!qword_27EF239D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239D8);
  }

  return result;
}

unint64_t sub_249E32FF0()
{
  result = qword_27EF239E0;
  if (!qword_27EF239E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF239E0);
  }

  return result;
}

_BYTE *sub_249E33044(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Pseudonym.PseudonymError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Pseudonym.PseudonymError(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Pseudonym.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Pseudonym.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_249E333B0()
{
  result = qword_27EF23A00;
  if (!qword_27EF23A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A00);
  }

  return result;
}

unint64_t sub_249E3340C()
{
  result = qword_27EF23A08;
  if (!qword_27EF23A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A08);
  }

  return result;
}

unint64_t sub_249E33464()
{
  result = qword_27EF23A10;
  if (!qword_27EF23A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A10);
  }

  return result;
}

unint64_t sub_249E334BC()
{
  result = qword_27EF23A18;
  if (!qword_27EF23A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A18);
  }

  return result;
}

unint64_t sub_249E33514()
{
  result = qword_27EF23A20;
  if (!qword_27EF23A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A20);
  }

  return result;
}

unint64_t sub_249E3356C()
{
  result = qword_27EF23A28;
  if (!qword_27EF23A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A28);
  }

  return result;
}

unint64_t sub_249E335C4()
{
  result = qword_27EF23A30;
  if (!qword_27EF23A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A30);
  }

  return result;
}

unint64_t sub_249E3361C()
{
  result = qword_27EF23A38;
  if (!qword_27EF23A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A38);
  }

  return result;
}

unint64_t sub_249E33674()
{
  result = qword_27EF23A40;
  if (!qword_27EF23A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A40);
  }

  return result;
}

unint64_t sub_249E336CC()
{
  result = qword_27EF23A48;
  if (!qword_27EF23A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A48);
  }

  return result;
}

unint64_t sub_249E33724()
{
  result = qword_27EF23A50;
  if (!qword_27EF23A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 144);

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_249E7B2C8();
}

uint64_t sub_249E33818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_249E7B318();
  }
}

uint64_t sub_249E33850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C204750](a2, a3);
  MEMORY[0x24C204750](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_249E338A4()
{
  sub_249E7B408();
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E33904()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_249E338A4();
}

uint64_t sub_249E3390C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_249E33844();
}

uint64_t sub_249E33914()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_249E7B408();
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E33964()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84FA0];
  sub_249E7A6A8();
  *(v0 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask) = 0;
  sub_249E7A508();
  return v0;
}

uint64_t sub_249E339F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TransactionType(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = sub_249E7A5B8();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E35688(a1, v10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
  if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
  {
    sub_249E3562C(v10);
  }

  else
  {
    (*(v14 + 32))(v18, v10, v11);
    sub_249E34498(v18);
    (*(v14 + 8))(v18, v11);
  }

  sub_249E35688(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
  {
    v20 = 0xED00006576697463;
    v21 = 0x416E6F6973736553;
  }

  else
  {
    (*(v14 + 8))(v8, v11);
    v20 = 0xEB00000000796461;
    v21 = 0x65526E49706F7244;
  }

  OUTLINED_FUNCTION_8_1();
  v22 = *(v2 + 112);

  v23 = OUTLINED_FUNCTION_4_7();
  v25 = sub_249E33EC0(v23, v24, v22);

  if (v25)
  {

    v26 = sub_249E7A698();
    v27 = sub_249E7AE28();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_4();
      v29 = OUTLINED_FUNCTION_4_0();
      v44 = v29;
      *v28 = 136315138;
      v30 = OUTLINED_FUNCTION_4_7();
      v33 = sub_249E3A958(v30, v31, v32);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_249DEE000, v26, v27, "Transaction [%s] already started", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }

    return (v25 & 1) == 0;
  }

  OUTLINED_FUNCTION_4_7();
  sub_249E7AAF8();
  v34 = os_transaction_create();

  if (v34)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();

    sub_249E646A0(&v44, v34, v21, v20);
    swift_endAccess();
    swift_unknownObjectRelease();

    swift_unknownObjectRetain();

    v36 = sub_249E7A698();
    v37 = sub_249E7AE28();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_4();
      v39 = OUTLINED_FUNCTION_4_0();
      v43 = v39;
      *v38 = 136315138;
      v44 = 91;
      v45 = 0xE100000000000000;
      swift_unknownObjectRetain();

      v40 = OUTLINED_FUNCTION_4_7();
      MEMORY[0x24C204750](v40);
      MEMORY[0x24C204750](93, 0xE100000000000000);

      swift_unknownObjectRelease();
      v41 = sub_249E3A958(v44, v45, &v43);

      *(v38 + 4) = v41;
      _os_log_impl(&dword_249DEE000, v36, v37, "Transaction %s started", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    sub_249E35064();

    swift_unknownObjectRelease();
    return (v25 & 1) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E33EC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = *(a3 + 48) + 24 * (__clz(__rbit64(v10)) | (v6 << 6));
    if (*(v13 + 8) != v5 || *(v13 + 16) != a2)
    {
      v10 &= v10 - 1;
      result = sub_249E7B318();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      return 0;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_249E33FAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TransactionType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E35688(a1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v9 = 0xED00006576697463;
    v10 = 0x416E6F6973736553;
  }

  else
  {
    v11 = sub_249E7A5B8();
    OUTLINED_FUNCTION_21(v11);
    (*(v12 + 8))(v7);
    v9 = 0xEB00000000796461;
    v10 = 0x65526E49706F7244;
  }

  OUTLINED_FUNCTION_8_1();
  v13 = *(v2 + 112);

  v14 = sub_249E34370(v10, v9, v13);
  v16 = v15;
  v18 = v17;

  if (v14)
  {

    swift_unknownObjectRetain();

    v19 = sub_249E7A698();
    v20 = sub_249E7AE28();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_4();
      v22 = OUTLINED_FUNCTION_4_0();
      *v21 = 136315138;
      v33 = v22;
      v34 = 91;
      v35 = 0xE100000000000000;
      swift_unknownObjectRetain();

      v23 = OUTLINED_FUNCTION_4_7();
      MEMORY[0x24C204750](v23);
      MEMORY[0x24C204750](93, 0xE100000000000000);

      swift_unknownObjectRelease();
      v24 = sub_249E3A958(v34, v35, &v33);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_249DEE000, v19, v20, "Transaction %s ended", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    swift_beginAccess();
    v25 = sub_249E68324(v14, v16, v18);
    swift_endAccess();
    sub_249E356EC(v25);
    sub_249E35064();

    swift_unknownObjectRelease();
  }

  else
  {

    v26 = sub_249E7A698();
    v27 = sub_249E7AE28();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_4();
      v29 = OUTLINED_FUNCTION_4_0();
      v34 = v29;
      *v28 = 136315138;
      v30 = sub_249E3A958(v10, v9, &v34);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_249DEE000, v26, v27, "Transaction [%s] already ended", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }
  }

  return v14 != 0;
}

uint64_t sub_249E34370(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (*(a3 + 48) + 24 * (__clz(__rbit64(v10)) | (v6 << 6)));
    v14 = *v13;
    if (v13[1] != v5 || v13[2] != a2)
    {
      v10 &= v10 - 1;
      result = sub_249E7B318();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    swift_unknownObjectRetain();

    return v14;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      return 0;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249E34498(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v83 - v6;
  v8 = sub_249E7A5B8();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v83 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v83 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  sub_249E7A598();
  if (sub_249E7A558())
  {
    v87 = v7;
    v90 = v24;
    v25 = OBJC_IVAR____TtC10DropInCore18TransactionManager_scheduledExpirationDate;
    OUTLINED_FUNCTION_8_1();
    v26 = *(v11 + 16);
    v27 = OUTLINED_FUNCTION_3_6();
    v26(v27);
    v28 = sub_249E7A548();
    v29 = *(v11 + 8);
    v88 = v11 + 8;
    v89 = v29;
    v29(v22, v8);
    if (v28)
    {
      v86 = v26;
      sub_249E7A568();
      v31 = v30;
      sub_249E7A568();
      v33 = v31 - v32;
      swift_beginAccess();
      (*(v11 + 24))(v2 + v25, a1, v8);
      swift_endAccess();

      v34 = sub_249E7A698();
      v35 = sub_249E7AE28();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v85 = OUTLINED_FUNCTION_4_0();
        v91[0] = v85;
        *v36 = 136315394;
        v37 = OUTLINED_FUNCTION_3_6();
        v86(v37);
        OUTLINED_FUNCTION_0_8();
        sub_249E35500(v38, v39);
        v40 = sub_249E7B2D8();
        v42 = v41;
        v89(v22, v8);
        v43 = sub_249E3A958(v40, v42, v91);

        *(v36 + 4) = v43;
        *(v36 + 12) = 2048;
        *(v36 + 14) = v33;
        _os_log_impl(&dword_249DEE000, v34, v35, "Scheduled Expiration Date Set to %s. Time Interval from now = %f", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v85);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();
      }

      v74 = OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask;
      if (*(v2 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask))
      {
        v75 = *(v2 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask);

        sub_249E7AC98();
      }

      v76 = sub_249E7AC78();
      v77 = v87;
      __swift_storeEnumTagSinglePayload(v87, 1, 1, v76);
      v78 = sub_249E35500(&unk_27EF23A70, type metadata accessor for TransactionManager);
      v79 = swift_allocObject();
      *(v79 + 16) = v2;
      *(v79 + 24) = v78;
      *(v79 + 32) = v33;
      *(v79 + 40) = v2;
      swift_retain_n();
      v80 = sub_249E5ED90(0, 0, v77, &unk_249E7F420, v79);
      v89(v90, v8);
      v81 = *(v2 + v74);
      *(v2 + v74) = v80;
    }

    else
    {
      (v26)(v19, a1, v8);

      v56 = sub_249E7A698();
      v57 = sub_249E7AE28();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v86 = v26;
        LODWORD(v85) = v57;
        v59 = v58;
        v87 = swift_slowAlloc();
        v91[0] = v87;
        *v59 = 136315394;
        OUTLINED_FUNCTION_0_8();
        v83 = sub_249E35500(v60, v61);
        v84 = v56;
        v62 = sub_249E7B2D8();
        v64 = v63;
        v65 = v89;
        v89(v19, v8);
        v66 = sub_249E3A958(v62, v64, v91);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2080;
        v67 = OUTLINED_FUNCTION_3_6();
        v86(v67);
        v68 = sub_249E7B2D8();
        v70 = v69;
        v65(v22, v8);
        v71 = sub_249E3A958(v68, v70, v91);

        *(v59 + 14) = v71;
        v72 = v84;
        _os_log_impl(&dword_249DEE000, v84, v85, "Requested Expiration Date %s is earlier than or equal to scheduled date %s", v59, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();

        return (v65)(v90, v8);
      }

      else
      {

        v82 = v89;
        v89(v19, v8);
        return v82(v90, v8);
      }
    }
  }

  else
  {
    (*(v11 + 16))(v16, a1, v8);
    v44 = sub_249E7A698();
    v45 = sub_249E7AE28();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_4();
      v47 = OUTLINED_FUNCTION_4_0();
      v92 = v47;
      *v46 = 136315138;
      OUTLINED_FUNCTION_0_8();
      sub_249E35500(v48, v49);
      v50 = sub_249E7B2D8();
      v52 = v51;
      v90 = v24;
      v53 = *(v11 + 8);
      v53(v16, v8);
      v54 = sub_249E3A958(v50, v52, &v92);

      *(v46 + 4) = v54;
      _os_log_impl(&dword_249DEE000, v44, v45, "Requested Expiration Date is in the past %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();

      return (v53)(v90, v8);
    }

    else
    {

      v73 = *(v11 + 8);
      v73(v16, v8);
      return (v73)(v24, v8);
    }
  }
}

uint64_t sub_249E34CB8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v7 = *(*(type metadata accessor for TransactionType(0) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E34D50, a5, 0);
}

uint64_t sub_249E34D50()
{
  v1 = sub_249E62184(*(v0 + 16));
  v2 = *(MEMORY[0x277D857E8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_249E34DF0;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_249E34DF0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = sub_249E357F4;
  }

  else
  {
    v6 = sub_249E34F28;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_249E34F28()
{
  if ((sub_249E7ACB8() & 1) == 0)
  {
    v1 = v0[3] + OBJC_IVAR____TtC10DropInCore18TransactionManager_logger;
    v2 = sub_249E7A698();
    v3 = sub_249E7AE28();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_249DEE000, v2, v3, "Scheduled Transaction Expiration Task Fired", v4, 2u);
      OUTLINED_FUNCTION_1();
    }

    v6 = v0[3];
    v5 = v0[4];

    v7 = *(v6 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask);
    *(v6 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask) = 0;

    sub_249E7A598();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    sub_249E33FAC(v5);
    sub_249E3562C(v5);
  }

  v9 = v0[4];

  v10 = v0[1];

  return v10();
}

void sub_249E35064()
{
  v1 = v0;

  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = OUTLINED_FUNCTION_4();
    v4 = OUTLINED_FUNCTION_4_0();
    v11 = v4;
    *v3 = 136315138;
    OUTLINED_FUNCTION_8_1();
    v5 = *(v1 + 112);
    sub_249E354AC();

    v6 = sub_249E7AD68();
    v8 = v7;

    v9 = sub_249E3A958(v6, v8, &v11);

    *(v3 + 4) = v9;
    _os_log_impl(&dword_249DEE000, oslog, v2, "Active Transactions = %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {
  }
}

uint64_t sub_249E351C8()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC10DropInCore18TransactionManager_logger;
  v3 = sub_249E7A6B8();
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask);

  v6 = OBJC_IVAR____TtC10DropInCore18TransactionManager_scheduledExpirationDate;
  v7 = sub_249E7A5B8();
  OUTLINED_FUNCTION_21(v7);
  (*(v8 + 8))(v0 + v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E35270()
{
  sub_249E351C8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249E352C4()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_249E7A5B8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_249E353C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249E35404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_249E35458()
{
  result = qword_27EF23A60;
  if (!qword_27EF23A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A60);
  }

  return result;
}

unint64_t sub_249E354AC()
{
  result = qword_27EF23A68;
  if (!qword_27EF23A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A68);
  }

  return result;
}

uint64_t sub_249E35500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249E35548(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249E3046C;

  return sub_249E34CB8(v6, a1, v4, v5, v7);
}

uint64_t sub_249E3562C(uint64_t a1)
{
  v2 = type metadata accessor for TransactionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249E35688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E356EC(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_249E35754()
{
  sub_249E357AC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_249E357AC()
{
  if (!qword_27EF23A90)
  {
    v0 = sub_249E7A5B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF23A90);
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return swift_beginAccess();
}

uint64_t sub_249E35844(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_249E7A6B8();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_249E35940(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A5B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  v23 = a1;
  swift_beginAccess();
  v21[3] = sub_249E36508(sub_249E3B004, v22, *(v1 + 120));
  v14 = sub_249E3B024(sub_249E3B004, v22);
  v15 = *(*(v1 + 120) + 16);
  if (v15 < v14)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_249E3B54C(v14, v15);
    swift_endAccess();
    v16 = sub_249E7A628();
    (*(*(v16 - 8) + 16))(v13, a1, v16);
    sub_249E7A598();
    v17 = *(v1 + 112);
    v18 = &v13[*(v9 + 36)];
    sub_249E7A528();
    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    sub_249E3A140();
    v19 = *(*(v1 + 120) + 16);
    sub_249E3A264(v19);
    v20 = *(v1 + 120);
    *(v20 + 16) = v19 + 1;
    sub_249E3B698(v13, v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19);
    *(v2 + 120) = v20;
    swift_endAccess();
    sub_249E2A8CC(v13, &qword_27EF23AA0, &unk_249E7F508);
    sub_249E35E94();
  }
}

uint64_t sub_249E35C20()
{
  sub_249E7A628();
  sub_249E3B95C(&qword_27EF23760, MEMORY[0x277CC95F0]);
  return sub_249E7AA78() & 1;
}

int64_t sub_249E35CB0()
{
  v1 = sub_249E7A5B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_249E7A598();
  v9 = v5;
  swift_beginAccess();
  result = sub_249E3B024(sub_249E3B884, v8);
  v7 = *(*(v0 + 120) + 16);
  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    sub_249E3B54C(result, v7);
    swift_endAccess();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

BOOL sub_249E35DE0()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508) + 36);
  sub_249E7A5B8();
  sub_249E3B95C(&qword_27EF23AB8, MEMORY[0x277CC9578]);
  return (sub_249E7AA68() & 1) == 0;
}

uint64_t sub_249E35E94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA8, &qword_249E7F518);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_249E7A5B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v34 = &v30 - v16;
  if (*(v0 + 128))
  {
    v17 = *(v0 + 128);

    sub_249E7AC98();
  }

  swift_beginAccess();
  sub_249E36230(*(v0 + 120), v8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  if (__swift_getEnumTagSinglePayload(v8, 1, v18) == 1)
  {
    return sub_249E2A8CC(v8, &qword_27EF23AA8, &qword_249E7F518);
  }

  v20 = *(v18 + 36);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v4;
  v30 = *(v10 + 16);
  v30(v15, &v8[v20], v9);
  sub_249E2A8CC(v8, &qword_27EF23AA0, &unk_249E7F508);
  v21 = v34;
  v32 = *(v10 + 32);
  v32(v34, v15, v9);
  v22 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v22);
  v23 = v31;
  v30(v31, v21, v9);
  v24 = sub_249E3B708();
  v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v0;
  *(v27 + 24) = v24;
  v32((v27 + v25), v23, v9);
  *(v27 + v26) = v0;
  swift_retain_n();
  v28 = sub_249E5ED90(0, 0, v33, &unk_249E7F530, v27);
  (*(v10 + 8))(v34, v9);
  v29 = *(v0 + 128);
  *(v0 + 128) = v28;
}

uint64_t sub_249E36230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  v6 = v5;
  if (v4)
  {
    sub_249E3B698(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_249E362E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_249E36378;

  return sub_249E2D0E8();
}

uint64_t sub_249E36378()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  v6 = *(v2 + 16);
  if (v0)
  {

    v7 = sub_249E3BBA0;
  }

  else
  {
    v7 = sub_249E364A4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_249E364A4()
{
  OUTLINED_FUNCTION_11();
  if ((sub_249E7ACB8() & 1) == 0)
  {
    v1 = *(v0 + 16);
    sub_249E35CB0();
    sub_249E35E94();
  }

  OUTLINED_FUNCTION_9_0();

  return v2();
}

BOOL sub_249E36508(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_249E365F8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t *sub_249E366A8()
{
  v1 = *v0;

  v2 = v0[3];

  OUTLINED_FUNCTION_10_1();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v3 + 112));
  OUTLINED_FUNCTION_10_1();
  v5 = *(v4 + 120);
  v6 = sub_249E7A6B8();
  OUTLINED_FUNCTION_28_0(v6);
  (*(v7 + 8))(v0 + v5);
  OUTLINED_FUNCTION_10_1();
  v9 = *(v0 + *(v8 + 128));

  OUTLINED_FUNCTION_10_1();
  v11 = *(v0 + *(v10 + 136));

  OUTLINED_FUNCTION_10_1();
  v13 = *(v0 + *(v12 + 144));

  return v0;
}

uint64_t sub_249E367B4()
{
  sub_249E366A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_249E36824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  v7 = type metadata accessor for MessageContainer();
  v6[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E368F4, 0, 0);
}

uint64_t sub_249E368F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[7];
  v28 = v24[4];
  OUTLINED_FUNCTION_10_1();
  v24[12] = *(v29 + 120);

  v30 = sub_249E7A698();
  v31 = sub_249E7AE28();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v24[4];
    v33 = OUTLINED_FUNCTION_4();
    a12 = OUTLINED_FUNCTION_4_0();
    *v33 = 136315138;
    v34 = sub_249E7A9E8();
    v36 = sub_249E3A958(v34, v35, &a12);

    *(v33 + 4) = v36;
    OUTLINED_FUNCTION_18_1(&dword_249DEE000, v37, v38, "Validating Message: %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_1();
  }

  v39 = v24[11];
  v40 = v24[4];

  sub_249E55A40(v41, v39);
  v42 = v24[11];
  v44 = v24[8];
  v43 = v24[9];
  v45 = v24[7];
  v65 = v24[6];
  v64 = v24[5];
  v46 = v24[3];
  OUTLINED_FUNCTION_10_1();
  v48 = *(v47 + 112);
  v51 = *(v50 + *(v49 + 24));
  v53 = *(v52 + 88);
  v24[13] = v53;
  v54 = *(v53 + 72);
  v55 = *(v52 + 80);
  v24[14] = v55;

  v54(v56, v64, v65, v55, v53);
  v57 = v24[7];

  OUTLINED_FUNCTION_10_1();
  v24[15] = *(v57 + *(v58 + 128));

  OUTLINED_FUNCTION_122();

  return MEMORY[0x2822009F8](v59, v60, v61);
}

uint64_t sub_249E36B4C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 120);
  sub_249E35940(*(v0 + 88));
  *(v0 + 128) = v2 & 1;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E36BC0()
{
  v25 = v0;
  if (*(v0 + 128) == 1)
  {
    v2 = *(v0 + 80);
    sub_249E3AFA0(*(v0 + 88), *(v0 + 16));

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 56);
    sub_249E3AF3C(*(v0 + 88), *(v0 + 80));
    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 80);
    if (v8)
    {
      OUTLINED_FUNCTION_4();
      v24 = OUTLINED_FUNCTION_21_1();
      *v1 = 136315138;
      sub_249E7A628();
      sub_249E3B95C(&qword_28130D350, MEMORY[0x277CC95F0]);
      v10 = sub_249E7B2D8();
      v12 = v11;
      sub_249E3AA18(v9);
      v13 = sub_249E3A958(v10, v12, &v24);

      *(v1 + 4) = v13;
      _os_log_impl(&dword_249DEE000, v6, v7, "Already handled message with identifier = %s", v1, 0xCu);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_15_1();
    }

    else
    {

      sub_249E3AA18(v9);
    }

    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 88);
    v17 = *(v0 + 24);
    type metadata accessor for MessageCenter.MessageCenterError();
    OUTLINED_FUNCTION_2_10();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_91();
    *v18 = 6;
    swift_willThrow();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_28_0(AssociatedTypeWitness);
    (*(v20 + 8))(v17);
    sub_249E3AA18(v16);
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);

    OUTLINED_FUNCTION_9_0();
  }

  return v3();
}

uint64_t sub_249E36E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  v5 = *v3;
  v4[36] = type metadata accessor for MessageContainer();
  v4[37] = *(v5 + 88);
  v4[38] = *(v5 + 80);
  v4[39] = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4[40] = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  v4[41] = v7;
  v8 = *(v7 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E36F74, 0, 0);
}

uint64_t sub_249E36F74()
{
  OUTLINED_FUNCTION_17();
  v24 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  OUTLINED_FUNCTION_10_1();
  *(v0 + 360) = *(v3 + 120);

  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 256);
    v7 = OUTLINED_FUNCTION_4();
    v23 = OUTLINED_FUNCTION_4_0();
    *v7 = 136315138;
    v8 = sub_249E7A9E8();
    v10 = sub_249E3A958(v8, v9, &v23);

    *(v7 + 4) = v10;
    OUTLINED_FUNCTION_18_1(&dword_249DEE000, v11, v12, "Handling Event %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_1();
  }

  v13 = *(v0 + 352);
  v14 = *(*(v0 + 320) + 48);
  *(v0 + 440) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 368) = v15;
  *v15 = v16;
  v15[1] = sub_249E3710C;
  v17 = *(v0 + 352);
  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  v20 = *(v0 + 256);
  v21 = *(v0 + 264);

  return sub_249E36824(v17, v13 + v14, v20, v21, v18);
}

uint64_t sub_249E3710C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E37208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 344);
  v28 = *(v24 + 320);
  v29 = *(v24 + 312);
  v30 = *(v24 + 288);
  v31 = *(*(v24 + 280) + *(**(v24 + 280) + 136));
  v32 = *(*(v24 + 328) + 16);
  v32(v27, *(v24 + 352), v28);
  v33 = *(v28 + 48);
  v34 = (v27 + *(v30 + 20));
  v36 = *v34;
  v35 = v34[1];

  sub_249E3AA18(v27);
  *(v24 + 216) = v36;
  v37 = v24 + 216;
  *(v24 + 224) = v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF23718, &qword_249E7E080);
  swift_getFunctionTypeMetadata2();
  sub_249E7AA38();

  v39 = *(v24 + 200);
  v38 = *(v24 + 208);
  *(v24 + 384) = v39;
  *(v24 + 392) = v38;
  if (v39)
  {
    v104 = *(v24 + 440);
    v40 = *(v24 + 352);
    v41 = *(v24 + 336);
    v42 = *(v24 + 320);
    v43 = *(v24 + 288);
    OUTLINED_FUNCTION_8_2(*(v24 + 312));
    v45 = *(v44 + 8);
    *(v24 + 400) = v45;
    *(v24 + 408) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v27 + v46);
    v32(v41, v40, v42);
    *(v24 + 444) = *(v42 + 48);
    v47 = *(v41 + *(v43 + 24));
    *(v24 + 416) = v47;

    sub_249E3AA18(v41);
    *(v24 + 248) = v47;
    OUTLINED_FUNCTION_3_7();
    v103 = v48;
    v49 = *(v39 + 4);
    v50 = swift_task_alloc();
    *(v24 + 424) = v50;
    *v50 = v24;
    v50[1] = sub_249E377E0;
    OUTLINED_FUNCTION_122();

    return v51(v51, v52, v53, v54, v55, v56, v57, v58, a9, v103, v104, a12, a13, a14, a15, a16);
  }

  else
  {
    v60 = *(v24 + 352);
    v61 = *(v24 + 320);
    v62 = *(v24 + 328);
    v63 = *(v24 + 304);
    v64 = *(v24 + 296);
    OUTLINED_FUNCTION_8_2(*(v24 + 312));
    (*(v65 + 8))(v27 + v33);
    type metadata accessor for MessageCenter.MessageCenterError();
    OUTLINED_FUNCTION_2_10();
    swift_getWitnessTable();
    v66 = OUTLINED_FUNCTION_91();
    *v67 = 4;
    swift_willThrow();
    (*(v62 + 8))(v60, v61);
    *(v24 + 232) = v66;
    v68 = v66;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
    v70 = swift_dynamicCast();
    v71 = *(v24 + 360);
    v72 = *(v24 + 280);
    if (v70 && *(v24 + 448) == 6)
    {
      v73 = *(v24 + 256);

      v74 = sub_249E7A698();
      v75 = sub_249E7AE28();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = *(v24 + 256);
        OUTLINED_FUNCTION_4();
        v77 = OUTLINED_FUNCTION_21_1();
        a12 = v77;
        *v66 = 136315138;
        v78 = sub_249E7A9E8();
        v80 = sub_249E3A958(v78, v79, &a12);

        *(v66 + 1) = v80;
        OUTLINED_FUNCTION_19_1(&dword_249DEE000, v81, v82, "Event already handled. Event = %s");
        __swift_destroy_boxed_opaque_existential_0(v77);
        OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_15_1();
      }
    }

    else
    {
      OUTLINED_FUNCTION_34_1();
      sub_249E3B9A4(v69, v24 + 16);

      v83 = v66;
      v84 = v72 + v71;
      v85 = sub_249E7A698();
      v86 = sub_249E7AE08();

      if (os_log_type_enabled(v85, v86))
      {
        a10 = v24 + 176;
        a11 = *(v24 + 256);
        OUTLINED_FUNCTION_4_0();
        a12 = OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_33_0(4.8152e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
        sub_249E7AAC8();
        OUTLINED_FUNCTION_32_1();
        v87 = sub_249E3A958(v24 + 56, v84, &a12);

        OUTLINED_FUNCTION_26_0();
        swift_getErrorValue();
        v89 = *(v24 + 176);
        v88 = *(v24 + 184);
        v90 = *(v24 + 192);
        v91 = sub_249E7B3A8();
        sub_249E3A958(v91, v92, &a12);
        OUTLINED_FUNCTION_280();

        *(v64 + 14) = v37;
        *(v64 + 22) = v87;
        v93 = sub_249E7A9E8();
        sub_249E3A958(v93, v94, &a12);
        OUTLINED_FUNCTION_280();

        *(v64 + 24) = v37;
        _os_log_impl(&dword_249DEE000, v85, v86, "Failed to handle Event. Transport = %s, Error = %s, Event = %s", v64, 0x20u);
        OUTLINED_FUNCTION_31_1();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_11_2();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v24 + 16));
      }
    }

    OUTLINED_FUNCTION_44_1();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_122();

    return v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_249E377E0()
{
  OUTLINED_FUNCTION_82();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v5 = *(v2 + 424);
  *v4 = *v1;
  *(v3 + 432) = v0;

  v6 = *(v2 + 416);
  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 444);
    v9 = *(v3 + 400);
    v8 = *(v3 + 408);
    v10 = *(v3 + 336);
    v11 = *(v3 + 312);

    v9(v10 + v7, v11);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_249E3792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = v22[45];
  v26 = v22[35];
  sub_249E3B9A4(v22[34], (v22 + 12));
  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();
  if (os_log_type_enabled(v27, v28))
  {
    v30 = v22[48];
    v29 = v22[49];
    v31 = v22[41];
    a9 = v22[40];
    a10 = v22[44];
    v32 = OUTLINED_FUNCTION_4();
    v33 = OUTLINED_FUNCTION_4_0();
    a11 = v33;
    *v32 = 136315138;
    sub_249E3B9A4((v22 + 12), (v22 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
    v34 = sub_249E7AAC8();
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_0(v22 + 12);
    v37 = sub_249E3A958(v34, v36, &a11);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_249DEE000, v27, v28, "Handled Event received on transport %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
    sub_249DF2D58(v30);

    (*(v31 + 8))(a10, a9);
  }

  else
  {
    v38 = v22[49];
    v39 = v22[44];
    v40 = v22[40];
    v41 = v22[41];
    sub_249DF2D58(v22[48]);

    __swift_destroy_boxed_opaque_existential_0(v22 + 12);
    (*(v41 + 8))(v39, v40);
  }

  OUTLINED_FUNCTION_44_1();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E37AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 444);
  v27 = *(v22 + 400);
  v26 = *(v22 + 408);
  v28 = *(v22 + 392);
  v29 = *(v22 + 352);
  v31 = *(v22 + 328);
  v30 = *(v22 + 336);
  v33 = *(v22 + 312);
  v32 = *(v22 + 320);
  sub_249DF2D58(*(v22 + 384));
  (*(v31 + 8))(v29, v32);
  (v27)(v30 + v25, v33);
  v34 = *(v22 + 432);
  *(v22 + 232) = v34;
  v35 = (v22 + 232);
  v36 = v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  v38 = OUTLINED_FUNCTION_30_1();
  v39 = *(v22 + 360);
  v40 = *(v22 + 280);
  if (v38 && *(v22 + 448) == 6)
  {
    v41 = *(v22 + 256);

    v42 = sub_249E7A698();
    v43 = sub_249E7AE28();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v22 + 256);
      OUTLINED_FUNCTION_4();
      v45 = OUTLINED_FUNCTION_21_1();
      a11 = v45;
      *v41 = 136315138;
      v46 = sub_249E7A9E8();
      v48 = sub_249E3A958(v46, v47, &a11);

      *(v41 + 4) = v48;
      OUTLINED_FUNCTION_19_1(&dword_249DEE000, v49, v50, "Event already handled. Event = %s");
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_15_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    sub_249E3B9A4(v37, v22 + 16);

    v51 = v34;
    v52 = v40 + v39;
    v53 = sub_249E7A698();
    v54 = sub_249E7AE08();

    if (os_log_type_enabled(v53, v54))
    {
      a9 = v22 + 176;
      a10 = *(v22 + 256);
      OUTLINED_FUNCTION_4_0();
      a11 = OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_33_0(4.8152e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
      sub_249E7AAC8();
      OUTLINED_FUNCTION_32_1();
      v55 = sub_249E3A958(v22 + 56, v52, &a11);

      OUTLINED_FUNCTION_26_0();
      swift_getErrorValue();
      v57 = *(v22 + 176);
      v56 = *(v22 + 184);
      v58 = *(v22 + 192);
      v59 = sub_249E7B3A8();
      OUTLINED_FUNCTION_45_1(v59, v60, v61, v62);
      OUTLINED_FUNCTION_280();

      *(v27 + 14) = v35;
      *(v27 + 22) = v55;
      v63 = sub_249E7A9E8();
      OUTLINED_FUNCTION_45_1(v63, v64, v65, v66);
      OUTLINED_FUNCTION_280();

      *(v27 + 24) = v35;
      OUTLINED_FUNCTION_43_1(&dword_249DEE000, v67, v68, "Failed to handle Event. Transport = %s, Error = %s, Event = %s");
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_11_2();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v22 + 16));
    }
  }

  OUTLINED_FUNCTION_44_1();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E37E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v26 = *(v22 + 376);
  *(v22 + 232) = v26;
  v27 = (v22 + 232);
  v28 = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  v30 = OUTLINED_FUNCTION_30_1();
  v31 = *(v22 + 360);
  v32 = *(v22 + 280);
  if (v30)
  {
    v33 = *(v22 + 448) == 6;
  }

  else
  {
    v33 = 0;
  }

  if (v33)
  {
    v52 = *(v22 + 256);

    v53 = sub_249E7A698();
    v54 = sub_249E7AE28();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v22 + 256);
      OUTLINED_FUNCTION_4();
      v56 = OUTLINED_FUNCTION_21_1();
      a11 = v56;
      *v52 = 136315138;
      v57 = sub_249E7A9E8();
      v59 = sub_249E3A958(v57, v58, &a11);

      *(v52 + 4) = v59;
      OUTLINED_FUNCTION_19_1(&dword_249DEE000, v60, v61, "Event already handled. Event = %s");
      __swift_destroy_boxed_opaque_existential_0(v56);
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_15_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    sub_249E3B9A4(v29, v22 + 16);

    v34 = v26;
    v35 = v32 + v31;
    v36 = sub_249E7A698();
    v37 = sub_249E7AE08();

    if (os_log_type_enabled(v36, v37))
    {
      a9 = v22 + 176;
      a10 = *(v22 + 256);
      OUTLINED_FUNCTION_4_0();
      a11 = OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_33_0(4.8152e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
      sub_249E7AAC8();
      OUTLINED_FUNCTION_32_1();
      v38 = sub_249E3A958(v22 + 56, v35, &a11);

      OUTLINED_FUNCTION_26_0();
      swift_getErrorValue();
      v40 = *(v22 + 176);
      v39 = *(v22 + 184);
      v41 = *(v22 + 192);
      v42 = sub_249E7B3A8();
      OUTLINED_FUNCTION_45_1(v42, v43, v44, v45);
      OUTLINED_FUNCTION_280();

      *(v23 + 14) = v27;
      *(v23 + 22) = v38;
      v46 = sub_249E7A9E8();
      OUTLINED_FUNCTION_45_1(v46, v47, v48, v49);
      OUTLINED_FUNCTION_280();

      *(v23 + 24) = v27;
      OUTLINED_FUNCTION_43_1(&dword_249DEE000, v50, v51, "Failed to handle Event. Transport = %s, Error = %s, Event = %s");
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_11_2();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v22 + 16));
    }
  }

  OUTLINED_FUNCTION_44_1();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E38150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = *v4;
  v5[32] = type metadata accessor for MessageContainer();
  v5[33] = *(v6 + 88);
  v5[34] = *(v6 + 80);
  v5[35] = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[36] = TupleTypeMetadata2;
  v8 = *(TupleTypeMetadata2 - 8);
  v5[37] = v8;
  v9 = *(v8 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E382AC, 0, 0);
}

uint64_t sub_249E382AC()
{
  OUTLINED_FUNCTION_17();
  v24 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_10_1();
  *(v0 + 328) = *(v3 + 120);

  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = OUTLINED_FUNCTION_4();
    v23 = OUTLINED_FUNCTION_4_0();
    *v7 = 136315138;
    v8 = sub_249E7A9E8();
    v10 = sub_249E3A958(v8, v9, &v23);

    *(v7 + 4) = v10;
    OUTLINED_FUNCTION_18_1(&dword_249DEE000, v11, v12, "Handling Request %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_1();
  }

  v13 = *(v0 + 320);
  v14 = *(*(v0 + 288) + 48);
  *(v0 + 408) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 336) = v15;
  *v15 = v16;
  v15[1] = sub_249E38444;
  v17 = *(v0 + 320);
  v18 = *(v0 + 240);
  v19 = *(v0 + 248);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);

  return sub_249E36824(v17, v13 + v14, v20, v21, v18);
}

uint64_t sub_249E38444()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E38540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 312);
  v16 = *(v14 + 288);
  v17 = *(v14 + 280);
  v18 = *(v14 + 256);
  v19 = *(*(v14 + 248) + *(**(v14 + 248) + 144));
  v20 = *(*(v14 + 296) + 16);
  v20(v15, *(v14 + 320), v16);
  v65 = *(v16 + 48);
  v21 = (v15 + *(v18 + 20));
  v23 = *v21;
  v22 = v21[1];

  sub_249E3AA18(v15);
  *(v14 + 192) = v23;
  *(v14 + 200) = v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF23AC8, &qword_249E7F558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF23718, &qword_249E7E080);
  swift_getFunctionTypeMetadata2();
  sub_249E7AA38();

  v25 = *(v14 + 176);
  v24 = *(v14 + 184);
  *(v14 + 352) = v25;
  *(v14 + 360) = v24;
  if (v25)
  {
    v64 = *(v14 + 408);
    v26 = *(v14 + 320);
    v27 = *(v14 + 304);
    v28 = *(v14 + 288);
    v29 = *(v14 + 256);
    OUTLINED_FUNCTION_8_2(*(v14 + 280));
    v31 = *(v30 + 8);
    *(v14 + 368) = v31;
    *(v14 + 376) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v15 + v65);
    v20(v27, v26, v28);
    *(v14 + 412) = *(v28 + 48);
    v32 = *(v27 + *(v29 + 24));
    *(v14 + 384) = v32;

    sub_249E3AA18(v27);
    *(v14 + 208) = v32;
    OUTLINED_FUNCTION_3_7();
    v66 = v33;
    v34 = *(v25 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_75();
    *(v14 + 392) = v35;
    *v35 = v36;
    v35[1] = sub_249E38878;
    OUTLINED_FUNCTION_72();

    return v40(v37, v38, v39, v40, v41, v42, v43, v44, v64, v66, a11, a12, a13, a14);
  }

  else
  {
    v46 = *(v14 + 320);
    v47 = *(v14 + 288);
    v48 = *(v14 + 296);
    v49 = *(v14 + 272);
    v50 = *(v14 + 264);
    OUTLINED_FUNCTION_8_2(*(v14 + 280));
    (*(v51 + 8))(v15 + v65);
    type metadata accessor for MessageCenter.MessageCenterError();
    OUTLINED_FUNCTION_2_10();
    swift_getWitnessTable();
    swift_allocError();
    *v52 = 4;
    swift_willThrow();
    (*(v48 + 8))(v46, v47);
    v54 = *(v14 + 312);
    v53 = *(v14 + 320);
    v55 = *(v14 + 304);

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, v65, a11, a12, a13, a14);
  }
}

uint64_t sub_249E38878()
{
  OUTLINED_FUNCTION_82();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;
  v5 = *(v2 + 392);
  *v4 = *v1;
  *(v3 + 400) = v0;

  v6 = *(v2 + 384);
  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 412);
    v9 = *(v3 + 368);
    v8 = *(v3 + 376);
    v10 = *(v3 + 304);
    v11 = *(v3 + 280);

    v9(v10 + v7, v11);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_249E389C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[41];
  v28 = v24[31];
  sub_249E3B9A4(v24[30], (v24 + 7));
  v29 = sub_249E7A698();
  v30 = sub_249E7AE28();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_4();
    v32 = OUTLINED_FUNCTION_4_0();
    a12 = v32;
    *v31 = 136315138;
    sub_249E3B9A4((v24 + 7), (v24 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
    v33 = sub_249E7AAC8();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_0(v24 + 7);
    v36 = sub_249E3A958(v33, v35, &a12);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_249DEE000, v29, v30, "Handled Request received on transport %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v24 + 7);
  }

  v37 = v24[50];
  v39 = v24[33];
  v38 = v24[34];
  v40 = v24[30];
  v41 = *(*v24[31] + 112);
  v42 = v24[5];
  v43 = v24[6];
  __swift_project_boxed_opaque_existential_0(v24 + 2, v42);
  v24[15] = v42;
  v24[16] = *(v43 + 8);
  __swift_allocate_boxed_opaque_existential_0(v24 + 12);
  OUTLINED_FUNCTION_8_2(v42);
  (*(v44 + 16))();
  (*(v39 + 48))(v24 + 12, v40, v38, v39);
  if (v37)
  {
    v45 = v24[44];
    v46 = v24[45];
    (*(v24[37] + 8))(v24[40], v24[36]);
    sub_249DF2D58(v45);
    __swift_destroy_boxed_opaque_existential_0(v24 + 12);
    __swift_destroy_boxed_opaque_existential_0(v24 + 2);
    v54 = v24[39];
    v53 = v24[40];
    v55 = v24[38];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v24 + 12);
    v47 = v24[5];
    v48 = v24[6];
    __swift_project_boxed_opaque_existential_0(v24 + 2, v47);
    v49 = (*(*(*(v48 + 8) + 16) + 8))(v47);
    v51 = v24[44];
    v50 = v24[45];
    v52 = v24[40];
    v65 = v49;
    a10 = v24[39];
    a11 = v24[38];
    v66 = v24[37];
    a9 = v24[36];
    v67 = v24[32];
    v68 = v24[27];
    v70 = v24[5];
    v69 = v24[6];
    __swift_project_boxed_opaque_existential_0(v24 + 2, v70);
    v71 = (*(*(*(v69 + 8) + 24) + 8))(v70);
    v73 = v72;
    sub_249E7A618();
    sub_249DF2D58(v51);
    (*(v66 + 8))(v52, a9);
    v74 = (v68 + *(v67 + 20));
    *v74 = v71;
    v74[1] = v73;
    *(v68 + *(v67 + 24)) = v65;
    __swift_destroy_boxed_opaque_existential_0(v24 + 2);
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_122();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_249E38D48()
{
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 412);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  sub_249DF2D58(*(v0 + 352));
  (*(v7 + 8))(v5, v8);
  v3(v6 + v1, v9);
  v10 = *(v0 + 400);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v13 = *(v0 + 304);

  OUTLINED_FUNCTION_9_0();

  return v14();
}

uint64_t sub_249E38E10()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  OUTLINED_FUNCTION_9_0();

  return v5();
}

uint64_t sub_249E38E88()
{
  OUTLINED_FUNCTION_11();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[29] = v5;
  v6 = type metadata accessor for MessageContainer();
  v1[34] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E38F1C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[30];
  v0[27] = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  v0[28] = &off_285D09CA8;
  v0[24] = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  v0[36] = v3;
  *v3 = v4;
  v3[1] = sub_249E38FF4;
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[31];

  return sub_249E38150(v5, v8, v6, (v0 + 24));
}

uint64_t sub_249E38FF4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_5_5();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 296) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 192));
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E390F8()
{
  OUTLINED_FUNCTION_17();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DF30;
  *(inited + 32) = 6580589;
  *(inited + 40) = 0xE300000000000000;
  v5 = sub_249E7A5D8();
  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = v6;
  *(inited + 80) = 6580592;
  *(inited + 88) = 0xE300000000000000;
  v8 = (v1 + *(v2 + 20));
  v9 = v8[1];
  *(inited + 96) = *v8;
  *(inited + 104) = v9;
  *(inited + 120) = v6;
  *(inited + 128) = 112;
  *(inited + 136) = 0xE100000000000000;
  v10 = *(v1 + *(v2 + 24));
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  *(inited + 144) = v10;

  v11 = sub_249E7AA08();
  v12 = sub_249E7A628();
  OUTLINED_FUNCTION_28_0(v12);
  (*(v13 + 16))(v3, v1);
  sub_249E3AA18(v1);

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_249E39288()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[35];
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  OUTLINED_FUNCTION_9_0();
  v3 = v0[37];

  return v2();
}

uint64_t sub_249E392F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E39308()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[7];
  v0[5] = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  v0[6] = &off_285D09CA8;
  v0[2] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_23_1(v3);

  return sub_249E36E1C(v4, v5, v6);
}

uint64_t sub_249E393CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E3948C;

  return sub_249E38E88();
}

uint64_t sub_249E3948C()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_249E3957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_249E042BC;

  return sub_249E392F0(v8, a2, a3, a4);
}

uint64_t sub_249E39628()
{
  OUTLINED_FUNCTION_11();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v5 = type metadata accessor for MessageContainer();
  v1[33] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E396B8()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[29];
  v0[27] = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  v0[28] = &off_285D09CA0;
  v0[24] = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  v0[35] = v3;
  *v3 = v4;
  v3[1] = sub_249E39790;
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[30];

  return sub_249E38150(v5, v8, v6, (v0 + 24));
}

uint64_t sub_249E39790()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_5_5();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 192));
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E39894()
{
  OUTLINED_FUNCTION_82();
  v2 = v0[33];
  v1 = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DF30;
  *(inited + 32) = 6580589;
  *(inited + 40) = 0xE300000000000000;
  v4 = sub_249E7A5D8();
  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v5;
  *(inited + 80) = 6580592;
  *(inited + 88) = 0xE300000000000000;
  v7 = (v1 + *(v2 + 20));
  v8 = v7[1];
  *(inited + 96) = *v7;
  *(inited + 104) = v8;
  *(inited + 120) = v5;
  *(inited + 128) = 112;
  *(inited + 136) = 0xE100000000000000;
  v9 = *(v1 + *(v2 + 24));
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  *(inited + 144) = v9;

  sub_249E7AA08();
  v10 = OUTLINED_FUNCTION_280();
  sub_249E3AA18(v10);

  v11 = v0[1];

  return v11(inited);
}

uint64_t sub_249E399E0()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  OUTLINED_FUNCTION_9_0();
  v3 = v0[36];

  return v2();
}

uint64_t sub_249E39A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E39A60()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[7];
  v0[5] = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  v0[6] = &off_285D09CA0;
  v0[2] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_23_1(v3);

  return sub_249E36E1C(v4, v5, v6);
}

uint64_t sub_249E39B24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  OUTLINED_FUNCTION_9_0();

  return v8();
}

uint64_t sub_249E39C08()
{
  v0 = sub_249E7B268();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_249E39C54(char a1)
{
  result = 0x5264696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x4D64696C61766E69;
      break;
    case 4:
      result = 0x656C646E61486F6ELL;
      break;
    case 5:
      result = 0x6E61706D6F436F6ELL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_249E39D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E3BBA8;

  return sub_249E39628();
}

uint64_t sub_249E39DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_249E04BA4;

  return sub_249E39A48(v8, a2, a3, a4);
}

uint64_t sub_249E39EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_249E39F1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_249E39F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_249E39FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_249E3A068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249E39C08();
  *a2 = result;
  return result;
}

unint64_t sub_249E3A098@<X0>(unint64_t *a1@<X8>)
{
  result = sub_249E39C54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_249E3A0C4()
{
  swift_getWitnessTable();

  return sub_249E60108();
}

size_t sub_249E3A140()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_249E3A444(result, *(v1 + 16) + 1, 1, v1, &qword_27EF23AC0, &qword_249E7F538, &qword_27EF23AA0, &unk_249E7F508);
    *v0 = result;
  }

  return result;
}

uint64_t sub_249E3A1C4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_249E3A238(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_249E7AC08();
  }

  return result;
}

size_t sub_249E3A264(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_249E3A444(v2 > 1, result + 1, 1, *v1, &qword_27EF23AC0, &qword_249E7F538, &qword_27EF23AA0, &unk_249E7F508);
    *v1 = result;
  }

  return result;
}

uint64_t sub_249E3A2DC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_249E3A324(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AD0, &qword_249E7F570);
    v10 = swift_allocObject();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_40_1();
    *(v10 + 2) = v8;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_249E3A444(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_249E3A6FC(v14, v13, a5, a6, a7, a8);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_249E3A884(a4 + v17, v14, v15 + v17, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_249E3A55C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AE0, &qword_249E7F580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF23AE8, &qword_249E7F588);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_249E3A68C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AD0, &qword_249E7F570);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_40_1();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_249E3A6FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_249E3A7FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_249E3A81C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_249E3A83C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_249E3A864(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

uint64_t sub_249E3A884(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_28_0(v10), a1 + *(v12 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_37_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_37_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_249E3A958(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_18();
  v9 = sub_249E3AA8C(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_249DF686C(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

uint64_t sub_249E3AA18(uint64_t a1)
{
  v2 = type metadata accessor for MessageContainer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249E3AA8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_249E3AB8C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_249E7B188();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_249E3AB8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_249E3ABD8(a1, a2);
  sub_249E3ACF0(&unk_285D07258);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_249E3ABD8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_249E7AB58())
  {
    result = sub_249E3ADD4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_249E7B118();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_249E7B188();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_249E3ACF0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_249E3AE44(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_249E3ADD4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23A98, &qword_249E7F500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_249E3AE44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23A98, &qword_249E7F500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_249E3AF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E3AFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageContainer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E3B024(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = *v2;
  result = sub_249E3B324(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  v42 = a2;
  v44 = v17;
  v38 = v12;
  v39 = v15;
  if (v20)
  {
    return *(v18 + 16);
  }

  v4 = result;
  v45 = 0;
  v37 = v2;
  v21 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = v18;
    v23 = v44;
    v40 = v8;
    v41 = a1;
    while (1)
    {
      v24 = *(v22 + 16);
      if (v21 == v24)
      {
        return v4;
      }

      if (v21 >= v24)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        break;
      }

      v25 = v4;
      v26 = v22;
      v43 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v27 = v22 + v43;
      v28 = *(v8 + 72);
      v46 = v21;
      v29 = v28 * v21;
      sub_249E3B698(v27 + v28 * v21, v23);
      v30 = v45;
      v31 = a1(v23);
      v4 = v30;
      result = sub_249E2A8CC(v23, &qword_27EF23AA0, &unk_249E7F508);
      v45 = v30;
      if (v30)
      {
        return v4;
      }

      if (v31)
      {
        v8 = v40;
        a1 = v41;
        v4 = v25;
        v23 = v44;
        v22 = v26;
        v32 = v46;
      }

      else
      {
        v32 = v46;
        v23 = v44;
        if (v46 == v25)
        {
          a1 = v41;
          v22 = v26;
        }

        else
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v33 = *(v26 + 16);
          if (v25 >= v33)
          {
            goto LABEL_26;
          }

          v34 = v28 * v25;
          result = sub_249E3B698(v27 + v34, v39);
          if (v46 >= v33)
          {
            goto LABEL_27;
          }

          sub_249E3B698(v27 + v29, v38);
          v22 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_249E3B8A4(v26);
          }

          a1 = v41;
          v35 = v22 + v43;
          sub_249E3B8EC(v38, v22 + v43 + v34);
          result = v39;
          if (v46 >= *(v22 + 16))
          {
            goto LABEL_28;
          }

          result = sub_249E3B8EC(v39, v35 + v29);
          v32 = v46;
          *v37 = v22;
          v23 = v44;
        }

        v4 = v25 + 1;
        v8 = v40;
      }

      v21 = v32 + 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249E3B324(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_249E3B424(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_249E7B068();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_249E7B158();
  *v1 = result;
  return result;
}

size_t sub_249E3B4C4(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_249E3A444(result, v7, a2 & 1, v5, &qword_27EF23AC0, &qword_249E7F538, &qword_27EF23AA0, &unk_249E7F508);
    *v2 = result;
  }

  return result;
}

int64_t sub_249E3B54C(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_249E3B4C4(result, 1);
  v8 = *v2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_249E3A884(v10 + v11 * a2, v13 - a2, v12, &qword_27EF23AA0, &unk_249E7F508);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_249E3B698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_249E3B708()
{
  result = qword_27EF23AB0;
  if (!qword_27EF23AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF23C90, &qword_249E7F520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23AB0);
  }

  return result;
}

uint64_t sub_249E3B76C()
{
  OUTLINED_FUNCTION_82();
  v3 = v2;
  v4 = *(sub_249E7A5B8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_249E042BC;

  return sub_249E362E0(v3, v6, v7, v0 + v5, v8);
}

uint64_t sub_249E3B8EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E3B95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249E3B9A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_8_2(v3);
  (*v4)(a2);
  return a2;
}

uint64_t getEnumTagSinglePayload for CallCenterManager.CallCenterManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_249E3BA94(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x24C205870);
}

void OUTLINED_FUNCTION_12_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x24C205870);
}

void OUTLINED_FUNCTION_15_1()
{

  JUMPOUT(0x24C205870);
}

void OUTLINED_FUNCTION_18_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_19_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[9];
  v4 = v2[10];
  return v2[8];
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return __swift_destroy_boxed_opaque_existential_0(v0);
}

uint64_t OUTLINED_FUNCTION_33_0(float a1)
{
  *v1 = a1;

  return sub_249E3B9A4(v2, v3);
}

void OUTLINED_FUNCTION_34_1()
{
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_43_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_44_1()
{
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_249E3A958(a1, a2, va);
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C50, &qword_249E7F8A0);
      [v2 addObject_];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v6 = v2;
  sub_249E7AD48();

  sub_249E7B228();
  __break(1u);
}

uint64_t sub_249E3BFE8()
{
  v0 = sub_249E7A6B8();
  __swift_allocate_value_buffer(v0, qword_27EF23B70);
  __swift_project_value_buffer(v0, qword_27EF23B70);
  return sub_249E7A6A8();
}

uint64_t sub_249E3C06C(char a1)
{
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x24C205020](a1 & 1);
  return sub_249E7B438();
}

uint64_t sub_249E3C0D0()
{
  v0 = OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E3C13C()
{
  v0 = OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E3C19C(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_4_8();
  a2(a1);
  OUTLINED_FUNCTION_2_11();

  return sub_249E7B438();
}

uint64_t sub_249E3C1EC(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_8();
  }

  sub_249E7AB18();
}

uint64_t sub_249E3C2C8()
{
  sub_249E7AB18();
}

uint64_t sub_249E3C330()
{
  sub_249E7AB18();
}

uint64_t sub_249E3C478(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_249E7AB18();
}

uint64_t sub_249E3C4D0(uint64_t a1, char a2)
{
  sub_249E7B408();
  MEMORY[0x24C205020](a2 & 1);
  return sub_249E7B438();
}

uint64_t sub_249E3C544()
{
  sub_249E7B408();
  sub_249E7AB18();

  return sub_249E7B438();
}

uint64_t sub_249E3C5D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_249E7B408();
  a3(a2);
  OUTLINED_FUNCTION_2_11();

  return sub_249E7B438();
}

uint64_t sub_249E3C62C()
{
  v0 = sub_249E7B408();
  OUTLINED_FUNCTION_0_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E3C678()
{
  v0 = sub_249E7B408();
  OUTLINED_FUNCTION_0_10(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E3C6C4(uint64_t a1, char a2)
{
  sub_249E7B408();
  if (!a2)
  {
    OUTLINED_FUNCTION_3_8();
  }

  sub_249E7AB18();

  return sub_249E7B438();
}

char *sub_249E3C76C(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_249E7A628();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC10DropInCore17ConversationTimer_mode) = a1 & 1;
  if (a1)
  {
    v14 = 0x657669746341;
  }

  else
  {
    v14 = 0x676E6974696157;
  }

  if (a1)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  v16 = sub_249E3C8E0(a1 & 1);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_249E7B128();

  strcpy(v20, "Conversation");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  MEMORY[0x24C204750](v14, v15);

  MEMORY[0x24C204750](0x72656D6954, 0xE500000000000000);
  v17 = v20[0];
  v18 = v20[1];
  sub_249E7A618();
  return OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(a2, v13, v17, v18, a3, a4, v16);
}

double sub_249E3C8E0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - v4;
  v7 = (v6 + 8);
  if (a1)
  {
    sub_249E7A738();
  }

  else
  {
    sub_249E7A748();
  }

  sub_249E30310(&qword_28130D320);
  sub_249E30310(&unk_28130D310);
  sub_249E30310(&unk_28130D300);
  sub_249E7A6E8();
  (*v7)(v5, v2);
  return *&v9[1];
}

id sub_249E3CB20()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConversationTimer()
{
  result = qword_27EF23B88;
  if (!qword_27EF23B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationTimer.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_249E3CCCC(char a1)
{
  if (a1)
  {
    return 0x657669746341;
  }

  else
  {
    return 0x676E6974696157;
  }
}

uint64_t sub_249E3CD00()
{
  v0 = sub_249E7B268();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249E3CD78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249E3CD00();
  *a2 = result;
  return result;
}

uint64_t sub_249E3CDA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E3CCCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_249E3CDE0()
{
  result = qword_27EF23B98;
  if (!qword_27EF23B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23B98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return sub_249E7AB18();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_249E7B408();
}

uint64_t sub_249E3CE9C(double a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = MEMORY[0x277D84F90];
  *(v1 + 128) = 0;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_249E3CED8()
{
  v1 = sub_249E7AA88();
  v2 = [v0 valueForEntitlementName_];

  if (v2)
  {
    sub_249E7AFF8();
    swift_unknownObjectRelease();
    sub_249DFDB78(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C40, &qword_249E7D8E0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

void sub_249E3CFA0(uint64_t a1)
{
  v2 = type metadata accessor for XPCClient();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v22 = 0x8000000249E815B0;
  v23 = 0x8000000249E81560;

  v10 = 0;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_249DF76A8(*(a1 + 48) + *(v24 + 72) * (v12 | (v10 << 6)), v5);
    v13 = *&v5[*(v25 + 20)];
    sub_249DF770C(v5);
    v14 = [v13 bundleIdentifier];

    if (v14)
    {
      v15 = sub_249E7AAA8();
      v17 = v16;

      v18 = v15 == 0xD000000000000014 && 0x8000000249E81540 == v17;
      if (v18 || (sub_249E7B318() & 1) != 0 || (v15 == 0xD000000000000014 ? (v19 = v23 == v17) : (v19 = 0), v19 || (sub_249E7B318() & 1) != 0))
      {

LABEL_28:

        return;
      }

      if (v15 == 0xD000000000000021 && v22 == v17)
      {

        return;
      }

      v21 = sub_249E7B318();

      if (v21)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_28;
    }

    v8 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_249E3D244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v33 - v13;
  v15 = v5 + *(*v5 + 120);
  sub_249E7A6A8();
  v4[4] = a1;
  v4[2] = a2;
  v16 = *(*v4 + 136);
  *(v4 + v16) = a3;
  v17 = *(*v4 + 144);
  *(v4 + v17) = a4;
  v33[0] = a2;
  sub_249E7A7C8();
  sub_249E42168(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
  sub_249E42168(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
  sub_249E42168(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
  sub_249E7A6E8();
  (*(v11 + 8))(v14, v10);
  v18 = v33[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C90, &qword_249E7F520);
  swift_allocObject();
  *(v4 + *(*v4 + 128)) = sub_249E3CE9C(*&v18);
  v19 = *(v4 + v16);

  v21 = sub_249E3D55C(v20);
  v22 = *(v5 + v17);

  v24 = sub_249E3D55C(v23);
  v25 = type metadata accessor for RapportManager();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v5[3] = sub_249E4394C(v21, v24);
  v28 = v5[2];

  sub_249E5715C(v29, &off_285D09358);

  v30 = v5[3];

  sub_249E43780(v31, &off_285D09340);

  return v5;
}

void *sub_249E3D55C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_249E3A68C(*(a1 + 16), 0);
  v4 = sub_249E3F96C(&v6, v3 + 4, v2, a1);
  sub_249E08728();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

char *sub_249E3D5EC(void *a1)
{
  v2 = sub_249E7AE68();
  v3 = OUTLINED_FUNCTION_3(v2);
  v29 = v4;
  v30 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v28 = v8 - v7;
  v9 = sub_249E7AE58();
  v10 = OUTLINED_FUNCTION_28_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = sub_249E7A958();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_1_0();
  *&v1[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcClientDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcDispatcher] = 0;
  *&v1[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcServerInterface] = 0;
  sub_249E7A6A8();
  v27 = OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue;
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249DF3F24();
  sub_249E7A938();
  v33 = MEMORY[0x277D84F90];
  sub_249E42078(&qword_28130D230, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  OUTLINED_FUNCTION_5_6();
  sub_249E42168(v15, v16, &qword_249E7F8C0);
  sub_249E7B018();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  *&v1[v27] = sub_249E7AE98();
  *&v1[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate__xpcClients] = MEMORY[0x277D84FA0];
  v32.receiver = v1;
  v32.super_class = type metadata accessor for DropInServiceListenerDelegate();
  v17 = objc_msgSendSuper2(&v32, sel_init);
  v18 = type metadata accessor for XPCDispatcher();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = v17;
  v23 = sub_249E40A18(v22, a1, v21);
  v24 = *&v22[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcDispatcher];
  *&v22[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcDispatcher] = v23;

  v25 = *&v22[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcServerInterface];
  *&v22[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcServerInterface] = v23;

  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_249E3D970(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for XPCClient();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v12 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  [a2 setExportedObject_];
  if (qword_27EF22FE8 != -1)
  {
    swift_once();
  }

  [a2 setExportedInterface_];
  sub_249E3DF24();
  if (qword_27EF22FF0 != -1)
  {
    swift_once();
  }

  [a2 setRemoteObjectInterface_];
  sub_249E3E188();
  if (qword_28130D2B0 != -1)
  {
    swift_once();
  }

  v15 = sub_249E3CED8();
  if (v15 == 2 || (v15 & 1) == 0)
  {
    v29 = sub_249E7A698();
    v30 = sub_249E7AE08();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = sub_249E7A848();
      v35 = sub_249E3A958(v33, v34, aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_249DEE000, v29, v30, "Missing Entitlement: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C205870](v32, -1, -1);
      MEMORY[0x24C205870](v31, -1, -1);
    }

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_2_12();
    swift_allocObject();
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_8_3();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = a2;
    v41 = sub_249E3F944;
    v42 = v16;
    aBlock[1] = 1107296256;
    v37 = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    v39 = sub_249E52140;
    v40 = &block_descriptor_33;
    v17 = _Block_copy(aBlock);
    v18 = a2;

    [v18 setInterruptionHandler_];
    _Block_release(v17);
    OUTLINED_FUNCTION_2_12();
    swift_allocObject();
    OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_8_3();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v41 = sub_249E3F94C;
    v42 = v19;
    OUTLINED_FUNCTION_4_9();
    v39 = sub_249E52140;
    v40 = &block_descriptor_40;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    [v21 setInvalidationHandler_];
    _Block_release(v20);
    sub_249E7A6A8();
    *&v14[*(v5 + 20)] = v21;
    *&v14[*(v5 + 24)] = 0;
    v22 = *(v2 + OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue);
    OUTLINED_FUNCTION_2_12();
    swift_allocObject();
    OUTLINED_FUNCTION_9_3();
    sub_249DF76A8(v14, v12);
    v23 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    sub_249E04524(v12, v24 + v23);
    OUTLINED_FUNCTION_8_3();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_249E3F954;
    *(v25 + 24) = v24;
    v41 = sub_249E42270;
    v42 = v25;
    OUTLINED_FUNCTION_4_9();
    v39 = sub_249E3EC2C;
    v40 = &block_descriptor_51;
    v26 = _Block_copy(aBlock);
    v27 = v21;

    dispatch_sync(v22, v26);
    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      [v27 resume];
      sub_249DF770C(v14);

      return 1;
    }
  }

  return result;
}

uint64_t sub_249E3DF24()
{
  sub_249E3F8DC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  v1 = sub_249E7A6D8();
  *(inited + 32) = v1;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(inited);
  swift_setDeallocating();
  sub_249E3F8DC();
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_249E7D7D0;
  *(v2 + 32) = sub_249DF691C(0, &qword_28130D248, 0x277D069C8);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v2);
  swift_setDeallocating();
  sub_249E3F8DC();
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_249E7D7D0;
  v4 = sub_249DF691C(0, &unk_28130D238, 0x277D069D8);
  *(v3 + 32) = v4;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v3);
  swift_setDeallocating();
  sub_249E3F8DC();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_249E7D7D0;
  *(v5 + 32) = v1;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v5);
  swift_setDeallocating();
  sub_249E3F8DC();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_249E7D7D0;
  *(v6 + 32) = v4;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v6);
  swift_setDeallocating();
  sub_249E3F8DC();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_249E7D7D0;
  *(v7 + 32) = v1;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v7);
  swift_setDeallocating();
  sub_249E3F8DC();
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_249E7D7D0;
  *(v8 + 32) = v1;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v8);
  swift_setDeallocating();
  sub_249E3F8DC();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_249E7D7D0;
  *(v9 + 32) = sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v9);
  return swift_setDeallocating();
}

uint64_t sub_249E3E188()
{
  sub_249E3F8DC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = sub_249E7A6D8();
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(inited);
  swift_setDeallocating();
  sub_249E3F8DC();
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_249E7DBA0;
  v2 = sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
  *(v1 + 32) = v2;
  *(v1 + 40) = sub_249DF691C(0, &unk_28130D170, 0x277CBEA60);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v1);
  swift_setDeallocating();
  sub_249E3F8DC();
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_249E7D7D0;
  *(v3 + 32) = v2;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v3);
  swift_setDeallocating();
  sub_249E3F8DC();
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_249E7D7D0;
  *(v4 + 32) = v2;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v4);
  swift_setDeallocating();
  sub_249E3F8DC();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_249E7D7D0;
  *(v5 + 32) = v2;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v5);
  swift_setDeallocating();
  sub_249E3F8DC();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_249E7D7D0;
  v7 = sub_249DF691C(0, &unk_28130D238, 0x277D069D8);
  *(v6 + 32) = v7;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v6);
  swift_setDeallocating();
  sub_249E3F8DC();
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_249E7D7D0;
  *(v8 + 32) = v7;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v8);
  swift_setDeallocating();
  sub_249E3F8DC();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_249E7D7D0;
  *(v9 + 32) = v7;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v9);
  swift_setDeallocating();
  sub_249E3F8DC();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_249E7D7D0;
  *(v10 + 32) = v7;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v10);
  swift_setDeallocating();
  sub_249E3F8DC();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_249E7D7D0;
  *(v11 + 32) = v7;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v11);
  return swift_setDeallocating();
}

void sub_249E3E45C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_249DEE000, v6, v7, "Connection to Client Interrupted %@", v8, 0xCu);
      sub_249E2A8CC(v9, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v9, -1, -1);
      MEMORY[0x24C205870](v8, -1, -1);
    }
  }
}

uint64_t sub_249E3E590(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a2;
    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_249DEE000, v6, v7, "Connection to Client Invalidated %@", v8, 0xCu);
      sub_249E2A8CC(v9, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v9, -1, -1);
      MEMORY[0x24C205870](v8, -1, -1);
    }

    v11 = *&v4[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v5;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_249E41E2C;
    *(v14 + 24) = v13;
    aBlock[4] = sub_249E42270;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249E3EC2C;
    aBlock[3] = &block_descriptor_62;
    v15 = _Block_copy(aBlock);
    v16 = v5;

    dispatch_sync(v11, v15);

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_249E3E810(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF235D8, &qword_249E7DAA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = type metadata accessor for XPCClient();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v43 = v6;
    v44 = v8;
    v45 = v18;
    v21 = OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate__xpcClients;
    swift_beginAccess();
    v42 = v21;
    v22 = *&v20[v21];
    v23 = 1 << *(v22 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v22 + 56);
    v26 = (v23 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v27 = 0;
    if (v25)
    {
      while (1)
      {
        v28 = v27;
LABEL_9:
        sub_249DF76A8(*(v22 + 48) + *(v46 + 72) * (__clz(__rbit64(v25)) | (v28 << 6)), v16);
        sub_249E04524(v16, v13);
        sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
        v29 = *&v13[*(v9 + 20)];
        if (sub_249E7AF78())
        {
          break;
        }

        v25 &= v25 - 1;
        result = sub_249DF770C(v13);
        v27 = v28;
        if (!v25)
        {
          goto LABEL_6;
        }
      }

      v30 = v44;
      sub_249E04524(v13, v44);
      v31 = v30;
      v32 = 0;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v31, v32, 1, v9);

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v9);
      v34 = v45;
      if (EnumTagSinglePayload == 1)
      {

        return sub_249E2A8CC(v30, &qword_27EF235D8, &qword_249E7DAA0);
      }

      else
      {
        sub_249E04524(v30, v45);
        v35 = v42;
        swift_beginAccess();
        v36 = v43;
        sub_249E685D4();
        sub_249E2A8CC(v36, &qword_27EF235D8, &qword_249E7DAA0);
        swift_endAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v38 = Strong;
          v39 = *&v20[v35];
          v40 = v20;

          sub_249E415A4(v40, v34, v39, v38);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return sub_249DF770C(v34);
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v28 >= v26)
        {

          v30 = v44;
          v31 = v44;
          v32 = 1;
          goto LABEL_13;
        }

        v25 = *(v22 + 56 + 8 * v28);
        ++v27;
        if (v25)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_249E3EC54(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for XPCClient();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_249DF76A8(a2, v7);
    v12 = OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate__xpcClients;
    swift_beginAccess();
    sub_249E6481C();
    sub_249DF770C(v9);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *&v11[v12];
      v14 = v11;

      sub_249E41A6C(v14, a2, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_249E3EE60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropInServiceListenerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DropInServiceListenerDelegate()
{
  result = qword_28130E228;
  if (!qword_28130E228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E3EFA0()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E3F064()
{
  v9 = MEMORY[0x277D84FA0];
  v1 = *(v0 + OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_3();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = &v9;
  OUTLINED_FUNCTION_8_3();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_249E3F27C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_249E3F284;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E3EC2C;
  aBlock[3] = &block_descriptor_3;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v1, v5);
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_249E3F1EC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate__xpcClients;
    swift_beginAccess();
    v6 = *&v4[v5];

    v7 = *a2;
    *a2 = v6;
  }

  return result;
}

uint64_t sub_249E3F284()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E3F2C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A928();
  v5 = OUTLINED_FUNCTION_3(v4);
  v32 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v31 = sub_249E7A958();
  v12 = OUTLINED_FUNCTION_3(v31);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for XPCClient();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v30 = *(v2 + OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_249DF76A8(a1, &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  sub_249E04524(&v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  aBlock[4] = sub_249E41FE8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E52140;
  aBlock[3] = &block_descriptor_73;
  v26 = _Block_copy(aBlock);

  sub_249E7A938();
  v33 = MEMORY[0x277D84F90];
  sub_249E42078(&qword_28130D2D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_5_6();
  sub_249E42168(v27, v28, &unk_249E80260);
  sub_249E7B018();
  MEMORY[0x24C204A90](0, v19, v11, v26);
  _Block_release(v26);
  (*(v32 + 8))(v11, v4);
  (*(v14 + 8))(v19, v31);
}

uint64_t sub_249E3F630(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF235D8, &qword_249E7DAA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19[-v5];
  v7 = type metadata accessor for XPCClient();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v19[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v19[-v15];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_beginAccess();
    sub_249E685D4();
    swift_endAccess();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {

      return sub_249E2A8CC(v6, &qword_27EF235D8, &qword_249E7DAA0);
    }

    else
    {
      sub_249E04524(v6, v16);
      sub_249E69CE4(a2);
      sub_249DF76A8(v16, v11);
      swift_beginAccess();
      sub_249E6481C();
      sub_249DF770C(v14);
      swift_endAccess();

      return sub_249DF770C(v16);
    }
  }

  return result;
}

void sub_249E3F870(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

uint64_t sub_249E3F8DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C50, &qword_249E7F8A0);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &qword_27EF23C60;
    v2 = &unk_249E7F8B0;
  }

  else
  {
    v1 = &unk_27EF23C58;
    v2 = &unk_249E7F8A8;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_249E3F96C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_249E3FAC8(void *a1, void *a2, char *a3)
{
  v46 = a2;
  v43 = a1;
  v44 = sub_249E7A6B8();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v40 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_249E7A688();
  v39 = *(v41 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_249E7AE68();
  v47 = *(v45 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_249E7AE58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_249E7A958();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v37 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_logger;
  sub_249E7A6A8();
  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_mockDataTask] = 0;
  v17 = &a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_delegate];
  *(v17 + 1) = 0;
  v36 = v17;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController] = 0;
  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens] = MEMORY[0x277D84FA0];
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  v18 = sub_249DF3F24();
  v34 = v19;
  v35 = v18;
  sub_249E7A948();
  v49 = MEMORY[0x277D84F90];
  v20 = sub_249E42078(&qword_28130D230, MEMORY[0x277D85230]);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  v33[0] = sub_249E42168(&unk_28130D280, &unk_27EF23C68, &qword_249E7F8C0);
  v33[1] = v21;
  v33[2] = v20;
  v33[3] = v11;
  sub_249E7B018();
  v22 = *MEMORY[0x277D85260];
  v23 = *(v47 + 104);
  v47 += 104;
  v23(v10, v22, v45);
  v34 = v14;
  v35 = v10;
  v24 = sub_249E7AE98();
  v25 = v46;
  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue] = v24;
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    sub_249DF3F24();
    sub_249E7A948();
    v49 = MEMORY[0x277D84F90];
    sub_249E7B018();
    v23(v35, v22, v45);
    v26 = sub_249E7AE98();
    v25 = v46;
  }

  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_delegateQueue] = v26;
  *(v36 + 1) = &off_285D0B010;
  v27 = v43;
  swift_unknownObjectWeakAssign();
  v28 = v25;

  (*(v42 + 16))(v40, &a3[v37], v44);
  v29 = v38;
  sub_249E7A668();
  (*(v39 + 32))(&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_signposter], v29, v41);
  v30 = type metadata accessor for AudioPowerManager();
  v48.receiver = a3;
  v48.super_class = v30;
  v31 = objc_msgSendSuper2(&v48, sel_init);

  return v31;
}

uint64_t sub_249E4006C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = &a4[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym];
  *v8 = 0;
  v8[1] = 0;
  sub_249E7A6A8();
  v9 = sub_249E4012C(a1, a2, a3, a4);
  v10 = (v9 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym);
  v11 = *(v9 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym + 8);
  *v10 = 0;
  v10[1] = 0;

  return v9;
}

uint64_t sub_249E4012C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v64 = a2;
  v65 = a3;
  v57 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v49 - v7;
  v63 = sub_249E7A6B8();
  v61 = *(v63 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_249E7A688();
  v60 = *(v62 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249E7AE68();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_249E7AE58();
  v15 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_249E7A958();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_callParticpants;
  sub_249DF691C(0, &qword_28130D1C8, 0x277D6EEA8);
  v20 = MEMORY[0x277D84F90];
  *&a4[v19] = sub_249E7AA08();
  v21 = &a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_delegate];
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderLoader] = 0;
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager] = 0;
  v52 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  sub_249E7A6A8();
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation] = 0;
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer] = 0;
  a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined] = 0;
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall] = 0;
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249DF3F24();
  sub_249E7A948();
  aBlock[0] = v20;
  sub_249E42078(&qword_28130D230, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  sub_249E42168(&unk_28130D280, &unk_27EF23C68, &qword_249E7F8C0);
  sub_249E7B018();
  (*(v55 + 104))(v54, *MEMORY[0x277D85260], v56);
  v22 = sub_249E7AE98();
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x277D6EDF8]) initWithQueue_];
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter] = v23;
  v24 = [objc_allocWithZone(MEMORY[0x277D6EEC0]) init];
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderManager] = v24;
  (*(v61 + 16))(v59, &a4[v52], v63);
  v25 = v58;
  sub_249E7A668();
  (*(v60 + 32))(&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_signposter], v25, v62);
  *(v21 + 1) = v64;
  swift_unknownObjectWeakAssign();
  v26 = &a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_participantValidator];
  *v26 = v65;
  v26[1] = &off_285D0A8B8;
  v27 = type metadata accessor for CallCenterManager();
  v67.receiver = a4;
  v67.super_class = v27;
  v28 = objc_msgSendSuper2(&v67, sel_init);
  v29 = objc_allocWithZone(type metadata accessor for AudioPowerManager());
  v30 = v28;
  v31 = sub_249E3FAC8(v30, 0, v29);
  v32 = *&v30[OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager];
  *&v30[OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager] = v31;

  v33 = sub_249E7218C();
  v34 = *&v30[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderLoader];
  *&v30[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderLoader] = v33;

  v35 = *&v30[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_249E421B0;
  *(v37 + 24) = v36;
  aBlock[4] = sub_249E42270;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E3EC2C;
  aBlock[3] = &block_descriptor_87;
  v38 = _Block_copy(aBlock);
  v39 = v30;
  v40 = v35;

  dispatch_sync(v40, v38);

  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
  }

  else
  {
    v42 = objc_opt_self();
    v43 = [v42 defaultCenter];
    [v43 addObserver:v39 selector:sel_uplinkMutedChangedWithNotification_ name:*MEMORY[0x277D6F0A0] object:0];

    v44 = [v42 defaultCenter];
    [v44 addObserver:v39 selector:sel_callStatusChangedWithNotification_ name:*MEMORY[0x277D6EFF0] object:0];

    v45 = v50;
    sub_249E7AC58();
    v46 = sub_249E7AC78();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v47;
    sub_249E6FF00();

    swift_unknownObjectRelease();

    return v39;
  }

  return result;
}

uint64_t sub_249E40A18(void *a1, void *a2, uint64_t a3)
{
  sub_249E7A6A8();
  *(a3 + OBJC_IVAR____TtC10DropInCore13XPCDispatcher_xpcClientDataSource + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_285D094C0;
  swift_unknownObjectWeakAssign();
  v6 = objc_allocWithZone(type metadata accessor for DropInManager());
  v7 = a1;
  swift_unknownObjectRetain();
  *(a3 + 16) = sub_249E40CB0(v7, a2, v6);
  *&v7[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcClientDelegate + 8] = &off_285D08668;
  swift_unknownObjectWeakAssign();
  v8 = type metadata accessor for AudioSystemManager();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = sub_249E40B44(v7, v11);
  swift_unknownObjectRelease();
  *(a3 + 24) = v12;
  return a3;
}

uint64_t sub_249E40B44(void *a1, uint64_t a2)
{
  v4 = sub_249E7A6B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + OBJC_IVAR____TtC10DropInCore18AudioSystemManager_xpcClientDataSource + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_285D094C0;
  swift_unknownObjectWeakAssign();

  sub_249E7A6A8();
  (*(v5 + 32))(a2 + OBJC_IVAR____TtC10DropInCore18AudioSystemManager_logger, v8, v4);
  *(a2 + 16) = [objc_opt_self() sharedAudioSystemController];
  sub_249DF6E7C();
  return a2;
}

char *sub_249E40CB0(void *a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v74 - v8;
  v77 = sub_249E7A6B8();
  v75 = *(v77 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_249E7A688();
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v76);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter] = 0;
  v74 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  sub_249E7A6A8();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager] = 0;
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_xpcClientDataSource + 8] = 0;
  v16 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber] = 0;
  *(v16 + 8) = &off_285D094C0;
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider] = a2;
  v17 = type metadata accessor for DropInStateManager(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_stateManager] = sub_249E2F018();
  v79 = swift_getObjectType();
  sub_249DF5924();
  v21 = v20;
  v22 = type metadata accessor for DeviceManager();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager] = sub_249E4F83C(v21);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C78, &qword_249E7F8C8);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v80 = a1;
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager] = sub_249E41380(v80, v28);
  v29 = type metadata accessor for TransactionManager(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager] = sub_249E33964();
  v32 = &a3[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent];
  v33 = type metadata accessor for DropInSessionAnalyticEvent();
  *v32 = 0;
  *(v32 + 1) = 0;
  v34 = v33[5];
  v35 = sub_249E7A5B8();
  __swift_storeEnumTagSinglePayload(&v32[v34], 1, 1, v35);
  __swift_storeEnumTagSinglePayload(&v32[v33[6]], 1, 1, v35);
  __swift_storeEnumTagSinglePayload(&v32[v33[7]], 1, 1, v35);
  __swift_storeEnumTagSinglePayload(&v32[v33[8]], 1, 1, v35);
  v36 = &v32[v33[9]];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v32[v33[10]];
  *v37 = 0;
  *(v37 + 1) = 0;
  (*(v75 + 16))(v11, &a3[v74], v77);
  sub_249E7A668();
  (*(v12 + 32))(&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_signposter], v15, v76);
  v82.receiver = a3;
  v82.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v82, sel_init);
  v39 = objc_allocWithZone(type metadata accessor for IDSManager(0));
  v40 = v38;
  v41 = [v39 init];
  v42 = OBJC_IVAR____TtC10DropInCore10IDSManager_service;
  v43 = *&v41[OBJC_IVAR____TtC10DropInCore10IDSManager_service];
  v44 = *&v41[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID];
  v45 = *&v41[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID + 8];
  v46 = type metadata accessor for HomeParticipantValidator();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v49 = v43;

  v50 = sub_249E603F0(a2, v49, v44, v45);
  v51 = objc_allocWithZone(type metadata accessor for CallCenterManagerClient());
  v52 = v40;

  v53 = sub_249E4006C(v40, &off_285D08680, v50, v51);
  v54 = *&v52[OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager];
  *&v52[OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager] = v53;

  v55 = *&v41[v42];
  v56 = type metadata accessor for HomeMessageValidator();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v59 = sub_249E4AAF8(a2, v55);

  v60 = v41;
  v61 = sub_249E0DB10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C80, &qword_249E7F8D0);
  v62 = sub_249E7AA08();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C88, &qword_249E7F8D8);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = sub_249E3D244(v59, v60, v61, v62);
  v67 = *&v52[OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter];
  *&v52[OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter] = v66;

  [a2 addDelegate:v52 queue:0];
  sub_249E0DCCC();
  sub_249DF5924();
  v69 = v68;
  v70 = sub_249E7AC78();
  v71 = v81;
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v70);
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = v69;
  v72[5] = v52;
  sub_249E5ED90(0, 0, v71, &unk_249E7F8E0, v72);
  swift_unknownObjectRelease();

  return v52;
}

uint64_t sub_249E41380(void *a1, uint64_t a2)
{
  v4 = sub_249E7A5B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = qword_28130E758;
  v10 = sub_249E7A628();
  __swift_storeEnumTagSinglePayload(a2 + v9, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(a2 + qword_28130E740, 1, 1, v10);
  *(a2 + qword_28130E738) = 0;
  __swift_storeEnumTagSinglePayload(a2 + qword_28130E748, 1, 1, v10);
  v11 = qword_28130E750;
  v12 = type metadata accessor for Pseudonym();
  __swift_storeEnumTagSinglePayload(a2 + v11, 1, 1, v12);
  sub_249E7A6A8();
  *(a2 + qword_28130DB98 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_285D094C0;
  swift_unknownObjectWeakAssign();
  *(a2 + qword_28130E730) = MEMORY[0x277D84FA0];
  sub_249E7A508();

  (*(v5 + 32))(a2 + qword_28130DB90, v8, v4);
  return a2;
}

void sub_249E415A4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for XPCClient();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  sub_249DF76A8(a2, v14);
  v16 = sub_249E7A698();
  v17 = sub_249E7AE28();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v48 = a4;
    v49 = v15;
    v20 = v10;
    v21 = v19;
    v50 = v19;
    *v18 = 136315138;
    v22 = sub_249E6A23C();
    v24 = v23;
    sub_249DF770C(v14);
    v25 = sub_249E3A958(v22, v24, &v50);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_249DEE000, v16, v17, "Did Remove XPC Client %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v26 = v21;
    v10 = v20;
    a4 = v48;
    MEMORY[0x24C205870](v26, -1, -1);
    MEMORY[0x24C205870](v18, -1, -1);
  }

  else
  {

    sub_249DF770C(v14);
  }

  sub_249E3CFA0(a3);
  v28 = v27;

  v29 = sub_249E7A698();
  v30 = sub_249E7AE28();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v50 = v32;
    *v31 = 134218242;
    *(v31 + 4) = *(a3 + 16);

    *(v31 + 12) = 2080;
    sub_249E42078(&qword_27EF23C28, type metadata accessor for XPCClient);
    v33 = sub_249E7AD68();
    v35 = sub_249E3A958(v33, v34, &v50);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_249DEE000, v29, v30, "%ld Active Clients = %s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C205870](v32, -1, -1);
    MEMORY[0x24C205870](v31, -1, -1);
  }

  else
  {
  }

  v36 = sub_249E7A698();
  v37 = sub_249E7AE28();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    *(v38 + 4) = v28 & 1;
    _os_log_impl(&dword_249DEE000, v36, v37, "Active Clients Contains UI Client = %{BOOL}d", v38, 8u);
    MEMORY[0x24C205870](v38, -1, -1);
  }

  if ((v28 & 1) == 0)
  {
    v39 = sub_249E7A698();
    v40 = sub_249E7AE28();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_249DEE000, v39, v40, "XPC Client count is empty. Will terminate any active session.", v41, 2u);
      MEMORY[0x24C205870](v41, -1, -1);
    }

    v42 = *&a4[OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager];
    if (v42)
    {
      v43 = v42;
      sub_249E067EC();

      v44 = sub_249E7AC78();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v44);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = a4;
      v46 = a4;
      sub_249E5ED90(0, 0, v10, &unk_249E7F890, v45);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_249E41A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for XPCClient();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249DF76A8(a2, v8);
  v9 = sub_249E7A698();
  v10 = sub_249E7AE28();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v5;
    v30 = v12;
    v13 = v12;
    *v11 = 136315138;
    v14 = sub_249E6A23C();
    v16 = v15;
    sub_249DF770C(v8);
    v17 = sub_249E3A958(v14, v16, &v30);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_249DEE000, v9, v10, "Did Add XPC Client %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C205870](v13, -1, -1);
    MEMORY[0x24C205870](v11, -1, -1);
  }

  else
  {

    sub_249DF770C(v8);
  }

  v18 = sub_249E7A698();
  v19 = sub_249E7AE28();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 134218242;
    *(v20 + 4) = *(a3 + 16);

    *(v20 + 12) = 2080;
    sub_249E42078(&qword_27EF23C28, type metadata accessor for XPCClient);
    v22 = sub_249E7AD68();
    v24 = sub_249E3A958(v22, v23, &v30);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_249DEE000, v18, v19, "%ld Active Clients = %s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C205870](v21, -1, -1);
    MEMORY[0x24C205870](v20, -1, -1);
  }

  else
  {
  }

  v25 = sub_249E7A698();
  v26 = sub_249E7AE28();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    sub_249E3CFA0(a3);
    *(v27 + 4) = v28 & 1;

    _os_log_impl(&dword_249DEE000, v25, v26, "Active Clients Contains UI Client = %{BOOL}d", v27, 8u);
    MEMORY[0x24C205870](v27, -1, -1);
  }

  else
  {
  }
}

uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_249E41E34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_3_9(v5);

  return sub_249E1FFF4(v7, v8, v9, v3);
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t objectdestroy_43Tm_0()
{
  v1 = (type metadata accessor for XPCClient() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_249E7A6B8();
  OUTLINED_FUNCTION_28_0(v6);
  (*(v7 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_249E42000(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for XPCClient() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_249E42078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249E420C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_3(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_9(v6);

  return sub_249E0E040(v8, v9, v10, v4, v3);
}

uint64_t sub_249E42168(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E421B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_3_9(v5);

  return sub_249E722B8();
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return swift_unknownObjectWeakInit();
}

uint64_t type metadata accessor for DropInSessionAnalyticEvent()
{
  result = qword_28130E2F0;
  if (!qword_28130E2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E42390()
{
  sub_249E424BC(319, &qword_28130D2A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_249E42464();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_249E424BC(319, &qword_28130D278);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_249E42464()
{
  if (!qword_28130D368)
  {
    sub_249E7A5B8();
    v0 = sub_249E7AFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_28130D368);
    }
  }
}

void sub_249E424BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_249E7AFC8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_249E42508()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_5_7();
  v77 = v4;
  OUTLINED_FUNCTION_2_13();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v73 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v73 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v73 - v12;
  v14 = sub_249E7A5B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_7();
  v75 = v17;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v18);
  v79 = &v73 - v19;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v20);
  v74 = &v73 - v21;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  v78 = sub_249E42CB8();
  v25 = sub_249E7AA08();
  v26 = v0[1];
  v76 = v24;
  if (v26)
  {
    v27 = *v0;
    v28 = sub_249E7AA88();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_7();
    sub_249DFDE08(v28, 0x5F6E6F6973736553, 0xEC00000065707954);
    v25 = v80;
  }

  else
  {
    v29 = sub_249DFDA24(0x5F6E6F6973736553, 0xEC00000065707954);
    if (v30)
    {
      v31 = v29;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
      OUTLINED_FUNCTION_3_10();
      sub_249E7B208();
      OUTLINED_FUNCTION_4_10();
      v33 = *(v32 + 16 * v31 + 8);

      v34 = v15;
      v35 = *(*(v25 + 56) + 8 * v31);
      OUTLINED_FUNCTION_7_5();

      v15 = v34;
    }
  }

  v36 = type metadata accessor for DropInSessionAnalyticEvent();
  sub_249E42CFC(v1 + v36[5], v13);
  OUTLINED_FUNCTION_0_11(v13);
  if (v40)
  {
    v37 = v13;
  }

  else
  {
    v73 = v15;
    v38 = *(v15 + 32);
    v39 = v76;
    v38(v76, v13, v14);
    sub_249E42CFC(v1 + v36[6], v11);
    OUTLINED_FUNCTION_0_11(v11);
    if (!v40)
    {
      v41 = v74;
      v38(v74, v11, v14);
      sub_249E7A518();
      sub_249E7ACF8();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_1_7();
      sub_249DFDE08(v11, 0x75445F7075746553, 0xEE006E6F69746172);
      v11 = v73;
      v42 = *(v73 + 8);
      v42(v41, v14);
      v42(v39, v14);
      v25 = v80;
      v15 = v11;
      goto LABEL_12;
    }

    v15 = v73;
    (*(v73 + 8))(v39, v14);
    v37 = v11;
  }

  sub_249E42D6C(v37);
LABEL_12:
  v43 = v79;
  sub_249E42CFC(v1 + v36[7], v8);
  OUTLINED_FUNCTION_0_11(v8);
  if (v40)
  {
    v44 = v8;
  }

  else
  {
    v45 = v15;
    v46 = *(v15 + 32);
    v46(v43, v8, v14);
    v11 = v77;
    sub_249E42CFC(v1 + v36[8], v77);
    OUTLINED_FUNCTION_0_11(v11);
    if (!v47)
    {
      v48 = v75;
      v46(v75, v11, v14);
      sub_249E7A518();
      sub_249E7ACF8();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_1_7();
      sub_249DFDE08(v11, 0x7275445F6C6C6143, 0xED00006E6F697461);
      v49 = *(v45 + 8);
      v49(v48, v14);
      v49(v43, v14);
      v25 = v80;
      goto LABEL_19;
    }

    (*(v45 + 8))(v43, v14);
    v44 = v11;
  }

  sub_249E42D6C(v44);
LABEL_19:
  v50 = v1 + v36[9];
  if (v50[8] == 1)
  {
    sub_249DFDA24(0xD00000000000001ELL, 0x8000000249E82B70);
    if (v51)
    {
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_6_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
      OUTLINED_FUNCTION_3_10();
      sub_249E7B208();
      OUTLINED_FUNCTION_4_10();
      v53 = *(v52 + 16 * v11 + 8);

      v54 = *(*(v25 + 56) + 8 * v11);
      OUTLINED_FUNCTION_7_5();
    }

    sub_249DFDA24(0xD00000000000001CLL, 0x8000000249E82B90);
    if (v55)
    {
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_6_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
      OUTLINED_FUNCTION_3_10();
      sub_249E7B208();
      OUTLINED_FUNCTION_4_10();
      v57 = *(v56 + 16 * v11 + 8);

      v58 = *(*(v25 + 56) + 8 * v11);
      OUTLINED_FUNCTION_7_5();
    }
  }

  else
  {
    v59 = *v50;
    v60 = sub_249E7AD98();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_7();
    sub_249DFDE08(v60, 0xD00000000000001ELL, 0x8000000249E82B70);
    v61 = v80;
    v62 = sub_249E7AD98();
    swift_isUniquelyReferenced_nonNull_native();
    v80 = v61;
    sub_249DFDE08(v62, 0xD00000000000001CLL, 0x8000000249E82B90);
    v25 = v80;
  }

  v63 = (v1 + v36[10]);
  if (v63[1])
  {
    v64 = *v63;
    v65 = sub_249E7AA88();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_7();
    sub_249DFDE08(v65, 0x736165525F646E45, 0xEA00000000006E6FLL);
    return v80;
  }

  else
  {
    v66 = sub_249DFDA24(0x736165525F646E45, 0xEA00000000006E6FLL);
    if (v67)
    {
      v68 = v66;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
      OUTLINED_FUNCTION_3_10();
      sub_249E7B208();
      OUTLINED_FUNCTION_4_10();
      v70 = *(v69 + 16 * v68 + 8);

      v71 = *(*(v25 + 56) + 8 * v68);
      OUTLINED_FUNCTION_7_5();
    }
  }

  return v25;
}

unint64_t sub_249E42CB8()
{
  result = qword_28130D150;
  if (!qword_28130D150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130D150);
  }

  return result;
}

uint64_t sub_249E42CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E42D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_5()
{
  v2 = *(v0 - 104);

  return sub_249E7B218();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_249E42E74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  v4 = OUTLINED_FUNCTION_40();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_249E42EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_249E49F10(a1, v22 - v10, &unk_27EF236B0, &qword_249E7DFD0);
  v12 = sub_249E7AC78();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_249E2A8CC(v11, &unk_27EF236B0, &qword_249E7DFD0);
  }

  else
  {
    sub_249E7AC68();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 16);
    swift_getObjectType();
    OUTLINED_FUNCTION_53_1();
    swift_unknownObjectRetain();
    v15 = sub_249E7AC28();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *v4;
  OUTLINED_FUNCTION_8_3();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_249E430E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_249E5ED90(0, 0, v4, &unk_249E7FA58, v6);
}

uint64_t sub_249E431CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = swift_task_alloc();
  *(v4 + 56) = v5;
  *v5 = v4;
  v5[1] = sub_249E43260;

  return sub_249E434D8();
}

uint64_t sub_249E43260()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v9 = v8;
  *(v10 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v14();
  }
}

uint64_t sub_249E4337C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v1;
  v4 = sub_249E7A698();
  v5 = sub_249E7AE08();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = OUTLINED_FUNCTION_4();
    v8 = OUTLINED_FUNCTION_4_0();
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_249E7B3A8();
    v20 = OUTLINED_FUNCTION_42(v12, v13, v14, v15, v16, v17, v18, v19, v8);

    *(v7 + 4) = v20;
    _os_log_impl(&dword_249DEE000, v4, v5, "Failed to Activate Companion Link %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_15();
  }

  else
  {
    v21 = v0[8];
  }

  OUTLINED_FUNCTION_9_0();

  return v22();
}

uint64_t sub_249E434F8()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0[2] + OBJC_IVAR____TtC10DropInCore14RapportManager_companionLinkClientLoader);
  OUTLINED_FUNCTION_22();
  v0[3] = swift_allocObject();
  swift_weakInit();
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_249E435E8;

  return sub_249E703C8();
}

uint64_t sub_249E435E8()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v5 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 24);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_249E43724()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_9_0();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_249E43780(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_249E430E8();

  return swift_unknownObjectRelease();
}

uint64_t sub_249E437C8()
{
  OUTLINED_FUNCTION_11();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E43850;

  return sub_249E434D8();
}

uint64_t sub_249E43850()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;

  if (v0)
  {

    v3 = 0;
  }

  v8 = *(v6 + 8);

  return v8(v3);
}

uint64_t sub_249E4394C(uint64_t a1, uint64_t a2)
{
  v3 = sub_249E7AE68();
  v19 = *(v3 - 8);
  v20 = v3;
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v18 = v6 - v5;
  v7 = sub_249E7AE58();
  v8 = OUTLINED_FUNCTION_28_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = sub_249E7A958();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_1_0();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_249E7A6A8();
  v13 = OBJC_IVAR____TtC10DropInCore14RapportManager_companionLinkClientLoader;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24490, &unk_249E7FA60);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v2 + v13) = sub_249E499D4(0, 0);
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249DF3F24();
  sub_249E7A948();
  sub_249E4A514();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  sub_249E42168(&unk_28130D280, &unk_27EF23C68, &qword_249E7F8C0);
  sub_249E7B018();
  (*(v19 + 104))(v18, *MEMORY[0x277D85260], v20);
  *(v2 + 32) = sub_249E7AE98();
  *(v2 + OBJC_IVAR____TtC10DropInCore14RapportManager_eventNames) = a1;
  *(v2 + OBJC_IVAR____TtC10DropInCore14RapportManager_requestNames) = a2;
  return v2;
}