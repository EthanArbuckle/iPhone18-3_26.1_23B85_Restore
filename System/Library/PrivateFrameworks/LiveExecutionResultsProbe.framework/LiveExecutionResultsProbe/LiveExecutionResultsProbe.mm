uint64_t sub_255FA6340(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255FB5978();
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_255FB58E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FB5BA8();
  v13 = (v3 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v3 + 16) = a1;
  (*(v9 + 16))(v12, a2, v8);
  sub_255FA79E8();
  v14 = a1;
  sub_255FB5928();
  sub_255FA6628(v18);

  (*(v9 + 8))(a2, v8);
  return v3;
}

uint64_t sub_255FA6628(int a1)
{
  v2 = v1;
  LODWORD(v49) = a1;
  v3 = sub_255FB5978();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v42 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - v7;
  v9 = sub_255FB5BC8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v41 - v18;
  v20 = OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_config;
  swift_beginAccess();
  v21 = *(v10 + 16);
  v47 = v19;
  v21(v19, v2 + v20, v9);
  sub_255FB5B88();
  swift_beginAccess();
  v49 = v10;
  (*(v10 + 24))(v2 + v20, v17, v9);
  swift_endAccess();
  v41[1] = sub_255FA7BFC();
  sub_255FB5D98();
  v48 = v17;
  v21(v14, v17, v9);
  v43 = v8;
  v22 = sub_255FB5968();
  v23 = sub_255FB5D08();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v50 = v25;
    *v24 = 136446210;
    v26 = sub_255FB5BB8();
    v28 = v27;
    v46 = *(v49 + 8);
    v46(v14, v9);
    v29 = sub_255FA7D18(v26, v28, &v50);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_255FA5000, v22, v23, "PlaygroundLoggerProbePoint config updated: (%{public}s)", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x259C556A0](v25, -1, -1);
    MEMORY[0x259C556A0](v24, -1, -1);
  }

  else
  {

    v46 = *(v49 + 8);
    v46(v14, v9);
  }

  v30 = *(v44 + 8);
  v31 = v45;
  v30(v43, v45);
  swift_beginAccess();
  v32 = sub_255FB5B98();
  swift_endAccess();
  v33 = v47;
  if ((v32 & 1) != 0 && (sub_255FB5B98() & 1) == 0)
  {
    sub_255FA72B0();
    if (qword_27F821C50 != -1)
    {
      swift_once();
    }

    swift_weakAssign();
    *MEMORY[0x277D23D50] = sub_255FA7184;
  }

  else
  {
    swift_beginAccess();
    v34 = sub_255FB5B98();
    swift_endAccess();
    if ((v34 & 1) != 0 || (sub_255FB5B98() & 1) == 0)
    {
      v35 = v42;
      sub_255FB5D98();
      v36 = sub_255FB5968();
      v37 = sub_255FB5D08();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_255FA5000, v36, v37, "PlaygroundLoggerProbePoint config was updated but nothing changed", v38, 2u);
        MEMORY[0x259C556A0](v38, -1, -1);
      }

      v30(v35, v31);
    }

    else
    {
      *MEMORY[0x277D23D50] = 0;
      if (qword_27F821C50 != -1)
      {
        swift_once();
      }

      swift_weakAssign();
      sub_255FB5E38();
    }
  }

  v39 = v46;
  v46(v48, v9);
  return v39(v33, v9);
}

uint64_t sub_255FA6BC8(uint64_t a1)
{
  v2 = sub_255FB5978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FA831C(a1, v14);
  if (swift_dynamicCast())
  {
    v8 = v13[0];
    v7 = v13[1];
    if (qword_27F821C50 != -1)
    {
      swift_once();
    }

    if (swift_weakLoadStrong())
    {
      sub_255FA6DC4(v8, v7);
      sub_255FA83C4(v8, v7);
    }

    else
    {
      return sub_255FA83C4(v8, v7);
    }
  }

  else
  {
    sub_255FA7BFC();
    sub_255FB5D98();
    v10 = sub_255FB5968();
    v11 = sub_255FB5D18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_255FA5000, v10, v11, "Error: Received non-Data result from _ler_send_log_data.", v12, 2u);
      MEMORY[0x259C556A0](v12, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_255FA6DC4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = sub_255FB5C18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255FB5C38();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255FB5978();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FA7BFC();
  sub_255FB5D98();
  v18 = sub_255FB5968();
  v19 = sub_255FB5D08();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v12;
    v21 = v8;
    v22 = v4;
    v23 = v3;
    v24 = v5;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_255FA5000, v18, v19, "PlaygroundLoggerProbePoint did receive logger data.", v20, 2u);
    v26 = v25;
    v5 = v24;
    v3 = v23;
    v4 = v22;
    v8 = v21;
    v12 = v33;
    MEMORY[0x259C556A0](v26, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v27 = *(v3 + 16);
  v28 = swift_allocObject();
  v30 = v34;
  v29 = v35;
  v28[2] = v34;
  v28[3] = v29;
  v28[4] = v3;
  aBlock[4] = sub_255FA8458;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255FA726C;
  aBlock[3] = &block_descriptor;
  v31 = _Block_copy(aBlock);
  sub_255FA847C(v30, v29);

  sub_255FB5C28();
  v38 = MEMORY[0x277D84F90];
  sub_255FA84D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CA0, &unk_255FB64A0);
  sub_255FA8528();
  sub_255FB5DE8();
  MEMORY[0x259C55120](0, v12, v8, v31);
  _Block_release(v31);
  (*(v5 + 8))(v8, v4);
  (*(v36 + 8))(v12, v37);
}

uint64_t sub_255FA7184()
{
  swift_unknownObjectRetain();
  sub_255FB5DB8();
  swift_unknownObjectRelease();
  sub_255FA6BC8(v1);
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_255FA71D0(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler);
  if (v3)
  {
    v4 = *(a3 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler + 8);
    v5 = result;
    sub_255FA847C(result, a2);
    sub_255FA85D4(v3);
    v3(v5, a2, 0);
    sub_255FA85E4(v3);

    return sub_255FA83C4(v5, a2);
  }

  return result;
}

uint64_t sub_255FA726C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_255FA72B0()
{
  v1 = v0;
  v2 = sub_255FB5978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255FB5E28();
  v9 = v8;
  sub_255FA7BFC();
  sub_255FB5D98();
  sub_255FA85D4(v7);
  v10 = sub_255FB5968();
  v11 = sub_255FB5D08();
  sub_255FA85E4(v7);
  if (os_log_type_enabled(v10, v11))
  {
    v24 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    v23 = v2;
    if (v7)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      *(v14 + 24) = v9;
      v15 = sub_255FA86B8;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v25 = v15;
    v26 = v14;
    sub_255FA85D4(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CB0, &unk_255FB6D20);
    v16 = sub_255FB5CB8();
    v18 = sub_255FA7D18(v16, v17, &v27);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_255FA5000, v10, v11, "setupPlaygroundPrintHook() existing playgroundPrintHook: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C556A0](v13, -1, -1);
    MEMORY[0x259C556A0](v12, -1, -1);

    (*(v3 + 8))(v6, v23);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = v9;
  v20[4] = v19;
  return sub_255FB5E38();
}

void sub_255FA75A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = sub_255FB5978();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    a3(a1, a2);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v11 = sub_255FB5B98();
    swift_endAccess();

    if (v11)
    {
      sub_255FA7BFC();
      sub_255FB5D98();
      v12 = sub_255FB5968();
      v13 = sub_255FB5D08();
      v14 = os_log_type_enabled(v12, v13);
      v15 = MEMORY[0x277D23D48];
      if (v14)
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24[0] = a2;
        v18 = v17;
        *v16 = 136315138;
        v24[1] = *v15;
        v25[0] = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CB8, qword_255FB64B0);
        v19 = sub_255FB5CB8();
        v21 = sub_255FA7D18(v19, v20, v25);
        v15 = MEMORY[0x277D23D48];

        *(v16 + 4) = v21;
        _os_log_impl(&dword_255FA5000, v12, v13, "setupPlaygroundPrintHook() sending printed string to _ler_print_hook: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x259C556A0](v18, -1, -1);
        MEMORY[0x259C556A0](v16, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
      v22 = *v15;
      if (*v15)
      {
        v23 = sub_255FB5C78();
        v22();
      }
    }
  }
}

uint64_t sub_255FA7830()
{
  v1 = OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_config;
  v2 = sub_255FB5BC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler + 8);
  sub_255FA85E4(*(v0 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler));
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for PlaygroundLoggerProbePoint()
{
  result = qword_27F821C68;
  if (!qword_27F821C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255FA793C()
{
  result = sub_255FB5BC8();
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

unint64_t sub_255FA79E8()
{
  result = qword_27F821C78;
  if (!qword_27F821C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821C78);
  }

  return result;
}

unint64_t sub_255FA7A40()
{
  result = qword_27F821C80;
  if (!qword_27F821C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821C80);
  }

  return result;
}

uint64_t sub_255FA7AB0(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_255FA6340(a1, a2);
  return v7;
}

uint64_t sub_255FA7B00()
{
  *MEMORY[0x277D23D50] = 0;
  if (qword_27F821C50 != -1)
  {
    swift_once();
  }

  return swift_weakAssign();
}

uint64_t sub_255FA7B6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    a1 = swift_allocObject();
    *(a1 + 16) = v4;
    *(a1 + 24) = a2;
    v5 = sub_255FA86E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v2 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler);
  v8 = *(v2 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler);
  v7 = *(v2 + OBJC_IVAR____TtC25LiveExecutionResultsProbe26PlaygroundLoggerProbePoint_probeSampleGenerationHandler + 8);
  *v6 = v5;
  v6[1] = a1;

  return sub_255FA85E4(v8);
}

unint64_t sub_255FA7BFC()
{
  result = qword_27F821C88;
  if (!qword_27F821C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F821C88);
  }

  return result;
}

uint64_t sub_255FA7C48(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_255FA7CBC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_255FA7D18(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_255FA7D18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255FA7DE4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_255FA831C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_255FA7DE4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_255FA7EF0(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_255FB5E18();
    a6 = v11;
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

uint64_t sub_255FA7EF0(uint64_t a1, unint64_t a2)
{
  v4 = sub_255FA7F3C(a1, a2);
  sub_255FA806C(&unk_28680CF40);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_255FA7F3C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_255FA8158(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_255FB5E18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_255FB5CD8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255FA8158(v10, 0);
        result = sub_255FB5DF8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_255FA806C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_255FA81CC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_255FA8158(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821C90, &qword_255FB6498);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255FA81CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821C90, &qword_255FB6498);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_255FA82C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_255FA831C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_255FA83C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_255FA8418()
{
  sub_255FA83C4(v0[2], v0[3]);
  v1 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255FA847C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_255FA84D0()
{
  result = qword_27F821C98;
  if (!qword_27F821C98)
  {
    sub_255FB5C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821C98);
  }

  return result;
}

unint64_t sub_255FA8528()
{
  result = qword_27F821CA8;
  if (!qword_27F821CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F821CA0, &unk_255FB64A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821CA8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_255FA85D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255FA85E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_255FA85F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255FA862C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_255FA8674(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_255FA75A4(a1, a2, *(v2 + 16));
}

uint64_t sub_255FA8680()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255FA86B8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_255FA86E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_255FA8734(uint64_t a1)
{
  v3 = sub_255FB58E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_255FA9664(v7);
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_255FA883C()
{
  v1 = qword_27F821F48;
  v2 = off_27F821E28;
  off_27F821E28 = 0;
  qword_27F821E30 = 0;
  sub_255FA85E4(v2);

  sub_255FA89D0(v0 + qword_27F821D28);
  v3 = qword_27F821D30;
  v4 = sub_255FB5898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_27F821D38 + 8);

  v6 = *(v0 + qword_27F821F40 + 8);
  sub_255FA85E4(*(v0 + qword_27F821F40));
  v7 = *(v0 + v1);

  v8 = *(*v0 + 12);
  v9 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t type metadata accessor for LoggingStreamAgent()
{
  result = qword_27F821CC0;
  if (!qword_27F821CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255FA89D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CD0, &qword_255FB6870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_255FA8A90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0x6144726567676F6CLL;
  }

  if (v3)
  {
    v5 = 0xEA00000000006174;
  }

  else
  {
    v5 = 0x8000000255FB77B0;
  }

  if (*a2)
  {
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = 0x6144726567676F6CLL;
  }

  if (*a2)
  {
    v7 = 0x8000000255FB77B0;
  }

  else
  {
    v7 = 0xEA00000000006174;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255FB5E68();
  }

  return v9 & 1;
}

uint64_t sub_255FA8B40()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FA8BCC()
{
  *v0;
  sub_255FB5CC8();
}

uint64_t sub_255FA8C44()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FA8CCC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255FB5E48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255FA8D2C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000255FB77B0;
  v3 = 0x6144726567676F6CLL;
  if (*v1)
  {
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v2 = 0xEA00000000006174;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_255FA8D74()
{
  if (*v0)
  {
    result = 0xD00000000000001DLL;
  }

  else
  {
    result = 0x6144726567676F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_255FA8DB8(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  MEMORY[0x28223BE20](a1);
  if (v4 == 1)
  {
    sub_255FA8FF0();
  }

  else
  {
    sub_255FA847C(v3, v2);
    sub_255FA8FF0();
  }

  sub_255FB58D8();
  return sub_255FA905C(v3, v2, v4);
}

double sub_255FA8EE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[3] = &type metadata for PlaygroundLoggerSample_Transport.Key;
  v7[4] = sub_255FA8FF0();
  LOBYTE(v7[0]) = 0;
  sub_255FB58B8();
  v5 = sub_255FB58E8();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
    *(a2 + 16) = 0;
  }

  return result;
}

unint64_t sub_255FA8FF0()
{
  result = qword_27F821CD8;
  if (!qword_27F821CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821CD8);
  }

  return result;
}

uint64_t sub_255FA9044(_BYTE *a1, void *a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *a1 = 1;
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_255FA905C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_255FA83C4(a1, a2);
  }
}

uint64_t sub_255FA906C(_BYTE *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a1 = 0;
  *a2 = v3;
  a2[1] = v4;
  return sub_255FA847C(v3, v4);
}

uint64_t getEnumTagSinglePayload for PlaygroundLoggerSample_Transport.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaygroundLoggerSample_Transport.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255FA9200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255FA924C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255FA92B0()
{
  result = qword_27F821CE0;
  if (!qword_27F821CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821CE0);
  }

  return result;
}

uint64_t sub_255FA930C(uint64_t *a1, uint64_t *a2)
{
  v3 = (v2 + qword_27F821D38);
  if (*(v2 + qword_27F821D38 + 8))
  {
    v4 = *v3;
    v5 = *(v2 + qword_27F821D38 + 8);
  }

  else
  {
    v9 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v4 = sub_255FB5CB8();
    v6 = v3[1];
    *v3 = v4;
    v3[1] = v7;
  }

  return v4;
}

uint64_t sub_255FA93C8(uint64_t a1)
{
  v3 = sub_255FB58E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_255FA9B9C(v7);
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_255FA94D0()
{
  v1 = qword_27F821F48;
  *MEMORY[0x277D23D50] = 0;
  if (qword_27F821C50 != -1)
  {
    swift_once();
  }

  swift_weakAssign();

  sub_255FA89D0(v0 + qword_27F821D28);
  v2 = qword_27F821D30;
  v3 = sub_255FB5898();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_27F821D38 + 8);

  v5 = *(v0 + qword_27F821F40 + 8);
  sub_255FA85E4(*(v0 + qword_27F821F40));
  v6 = *(v0 + v1);

  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for PlaygroundLoggerStreamAgent()
{
  result = qword_27F821CE8;
  if (!qword_27F821CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255FA9664(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_255FB5978();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_255FB58E8();
  v44 = *(v39 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_255FB5D48();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_255FB5D38();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_255FB5C38();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_255FAA190(0, &qword_27F821CF8, 0x277D85C78);
  sub_255FB5C28();
  v45 = MEMORY[0x277D84F90];
  sub_255FAA0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821D08, &qword_255FB6860);
  sub_255FAA12C();
  v16 = v40;
  v17 = v38;
  sub_255FB5DE8();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v37);
  v18 = v39;
  *(v1 + 16) = sub_255FB5D78();
  v19 = qword_27F821D28;
  v20 = sub_255FB5898();
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  sub_255FB5888();
  v21 = (v2 + qword_27F821D38);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v2 + qword_27F821F40);
  *v22 = 0;
  v22[1] = 0;
  v23 = *(v2 + 16);
  v24 = v41;
  (*(v44 + 16))(v41, v16, v18);
  v25 = type metadata accessor for LoggingProbePoint();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v2 + qword_27F821F48) = sub_255FAE598(v23, v24);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D88();

  v28 = sub_255FB5968();
  v29 = sub_255FB5CF8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136446210;
    v32 = sub_255FA930C(&qword_27F821D20, &qword_255FB6878);
    v34 = sub_255FA7D18(v32, v33, &v45);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_255FA5000, v28, v29, "Initialize agent: %{public}s)", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x259C556A0](v31, -1, -1);
    MEMORY[0x259C556A0](v30, -1, -1);
  }

  (*(v44 + 8))(v16, v18);
  (*(v42 + 8))(v17, v43);
  return v2;
}

uint64_t sub_255FA9B9C(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_255FB5978();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_255FB58E8();
  v44 = *(v39 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_255FB5D48();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_255FB5D38();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_255FB5C38();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_255FAA190(0, &qword_27F821CF8, 0x277D85C78);
  sub_255FB5C28();
  v45 = MEMORY[0x277D84F90];
  sub_255FAA0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821D08, &qword_255FB6860);
  sub_255FAA12C();
  v16 = v40;
  v17 = v38;
  sub_255FB5DE8();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v37);
  v18 = v39;
  *(v1 + 16) = sub_255FB5D78();
  v19 = qword_27F821D28;
  v20 = sub_255FB5898();
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  sub_255FB5888();
  v21 = (v2 + qword_27F821D38);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v2 + qword_27F821F40);
  *v22 = 0;
  v22[1] = 0;
  v23 = *(v2 + 16);
  v24 = v41;
  (*(v44 + 16))(v41, v16, v18);
  v25 = type metadata accessor for PlaygroundLoggerProbePoint();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v2 + qword_27F821F48) = sub_255FA6340(v23, v24);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D88();

  v28 = sub_255FB5968();
  v29 = sub_255FB5CF8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136446210;
    v32 = sub_255FA930C(&qword_27F821D18, &qword_255FB6868);
    v34 = sub_255FA7D18(v32, v33, &v45);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_255FA5000, v28, v29, "Initialize agent: %{public}s)", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x259C556A0](v31, -1, -1);
    MEMORY[0x259C556A0](v30, -1, -1);
  }

  (*(v44 + 8))(v16, v18);
  (*(v42 + 8))(v17, v43);
  return v2;
}

unint64_t sub_255FAA0D4()
{
  result = qword_27F821D00;
  if (!qword_27F821D00)
  {
    sub_255FB5D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821D00);
  }

  return result;
}

unint64_t sub_255FAA12C()
{
  result = qword_27F821D10;
  if (!qword_27F821D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F821D08, &qword_255FB6860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821D10);
  }

  return result;
}

uint64_t sub_255FAA190(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_255FAA1DC()
{
  sub_255FAACE4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_255FB5898();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void *sub_255FAA2CC()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_27F821F48;
  v4 = *(v0 + qword_27F821F48);
  v5 = *(v2 + 88);
  v6 = *(v5 + 56);
  v7 = *(v2 + 80);
  swift_unknownObjectRetain();
  v6(v7, v5);
  swift_unknownObjectRelease();

  sub_255FACF28(v1 + qword_27F821D28, &qword_27F821CD0, &qword_255FB6870);
  v8 = qword_27F821D30;
  v9 = sub_255FB5898();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + qword_27F821D38 + 8);

  v11 = *(v1 + qword_27F821F40 + 8);
  sub_255FA85E4(*(v1 + qword_27F821F40));
  v12 = *(v1 + v3);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_255FAA404()
{
  v1 = *v0;
  v2 = (v0 + qword_27F821D38);
  if (*(v0 + qword_27F821D38 + 8))
  {
    v3 = *v2;
    v4 = *(v0 + qword_27F821D38 + 8);
  }

  else
  {
    v10 = *v0;
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    type metadata accessor for AbstractProbePointStreamAgent();
    swift_getMetatypeMetadata();
    v3 = sub_255FB5CB8();
    v7 = v2[1];
    *v2 = v3;
    v2[1] = v8;
  }

  return v3;
}

uint64_t sub_255FAA4C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (v2 + qword_27F821F40);
  v5 = *(v2 + qword_27F821F40);
  v6 = *(v2 + qword_27F821F40 + 8);
  *v4 = a1;
  v4[1] = a2;

  sub_255FA85E4(v5);
  v7 = *(v2 + qword_27F821F48);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v10 = *(v3 + 80);
  v9[2] = v10;
  v11 = *(v3 + 88);
  v9[3] = v11;
  v9[4] = v8;
  v12 = *(v11 + 72);
  swift_unknownObjectRetain();

  v12(sub_255FAD008, v9, v10, v11);
  swift_unknownObjectRelease();
}

uint64_t sub_255FAA600(uint64_t a1)
{
  v3 = *(v1 + qword_27F821F48);
  v4 = *(*v1 + 88);
  v5 = *(v4 + 88);
  v6 = *(*v1 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_255FAA6B0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_255FAA6F0(a1);
  return v5;
}

void *sub_255FAA6F0(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = *v1;
  v4 = sub_255FB5978();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255FB58E8();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_255FB5D48();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_255FB5D38();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_255FB5C38();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v41[2] = sub_255FAA190(0, &qword_27F821CF8, 0x277D85C78);
  v18 = *(v3 + 80);
  v19 = *(v3 + 88);
  v20 = (*(v19 + 40))(v18, v19);
  v41[0] = v21;
  v41[1] = v20;
  sub_255FB5C28();
  v50 = MEMORY[0x277D84F90];
  sub_255FACF88(&qword_27F821D00, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821D08, &qword_255FB6860);
  sub_255FAA12C();
  sub_255FB5DE8();
  (*(v10 + 104))(v13, *MEMORY[0x277D85260], v42);
  v22 = v44;
  v2[2] = sub_255FB5D78();
  v23 = qword_27F821D28;
  v24 = sub_255FB5898();
  (*(*(v24 - 8) + 56))(v2 + v23, 1, 1, v24);
  sub_255FB5888();
  v25 = (v2 + qword_27F821D38);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v2 + qword_27F821F40);
  *v26 = 0;
  v26[1] = 0;
  v27 = v2[2];
  v28 = v43;
  (*(v48 + 16))(v43, v22, v49);
  v29 = *(v19 + 48);
  v30 = v27;
  v31 = v18;
  v32 = v45;
  *(v2 + qword_27F821F48) = v29(v30, v28, v31, v19);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D88();

  v33 = sub_255FB5968();
  v34 = sub_255FB5CF8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    v37 = sub_255FAA404();
    v39 = sub_255FA7D18(v37, v38, &v50);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_255FA5000, v33, v34, "Initialize agent: %{public}s)", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x259C556A0](v36, -1, -1);
    MEMORY[0x259C556A0](v35, -1, -1);
  }

  (*(v48 + 8))(v22, v49);
  (*(v46 + 8))(v32, v47);
  return v2;
}

uint64_t sub_255FAAC74()
{
  sub_255FAA2CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_255FAACE4()
{
  if (!qword_27F821DC0)
  {
    sub_255FB5898();
    v0 = sub_255FB5DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F821DC0);
    }
  }
}

uint64_t sub_255FAAD3C(uint64_t a1)
{
  v2 = sub_255FB5978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255FB5C48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(result + 16);
    *v11 = v14;
    (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
    v15 = v14;
    LOBYTE(v14) = sub_255FB5C58();
    result = (*(v8 + 8))(v11, v7);
    if (v14)
    {
      v16 = *(v13 + qword_27F821F40);
      if (v16)
      {
        v17 = *(v13 + qword_27F821F40 + 8);

        v16(a1);
        sub_255FA85E4(v16);
      }

      else
      {
        sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
        sub_255FB5D88();
        v18 = sub_255FB5968();
        v19 = sub_255FB5D18();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_255FA5000, v18, v19, "Error: Unable to send probe sample without stream.", v20, 2u);
          MEMORY[0x259C556A0](v20, -1, -1);
        }

        else
        {
        }

        return (*(v3 + 8))(v6, v2);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_255FAB008(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = *v1;
  v4 = sub_255FB5898();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v8;
  MEMORY[0x28223BE20](v7);
  v52 = &v40 - v9;
  v10 = sub_255FB5978();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D88();

  v15 = sub_255FB5968();
  v16 = sub_255FB5D28();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v49 = v3;
    v19 = v18;
    v53 = v18;
    *v17 = 136315138;
    v20 = sub_255FAA404();
    v22 = sub_255FA7D18(v20, v21, &v53);

    *(v17 + 4) = v22;
    v2 = v1;
    _os_log_impl(&dword_255FA5000, v15, v16, "%s handleMessageStream", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v23 = v19;
    v3 = v49;
    MEMORY[0x259C556A0](v23, -1, -1);
    MEMORY[0x259C556A0](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v25 = *(v3 + 80);
  v24 = *(v3 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v24;
  v27[4] = v26;
  v48 = v25;
  swift_getAssociatedConformanceWitness();
  v44 = v2;
  v42 = v24;
  swift_getAssociatedConformanceWitness();

  v49 = sub_255FB5828();

  v28 = v52;
  sub_255FB5888();
  v29 = swift_allocObject();
  swift_weakInit();
  v31 = v46;
  v30 = v47;
  v43 = *(v47 + 16);
  v32 = v45;
  v43(v45, v28, v46);
  v33 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = v48;
  *(v34 + 3) = v24;
  *(v34 + 4) = v29;
  v41 = *(v30 + 32);
  v41(&v34[v33], v32, v31);
  sub_255FB5958();

  v35 = swift_allocObject();
  swift_weakInit();
  v43(v32, v52, v31);
  v36 = swift_allocObject();
  v37 = v41;
  v38 = v42;
  *(v36 + 2) = v48;
  *(v36 + 3) = v38;
  *(v36 + 4) = v35;
  v37(&v36[v33], v32, v31);
  sub_255FB5878();
  sub_255FACF88(&qword_27F821DC8, MEMORY[0x277D40750]);

  sub_255FB58F8();

  (*(v30 + 8))(v52, v31);
}

uint64_t sub_255FAB5F0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = sub_255FB5898();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = sub_255FB5978();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DE8, &unk_255FB6980);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v61 = v22;
    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D88();
    v60 = *(v8 + 16);
    v60(v13, a1, AssociatedTypeWitness);
    swift_retain_n();
    v27 = sub_255FB5968();
    v28 = sub_255FB5D08();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v59 = a1;
      v57 = v28;
      v30 = v29;
      v58 = swift_slowAlloc();
      v68 = v58;
      *v30 = 136446722;
      v55 = v27;
      v31 = sub_255FAA404();
      v33 = sub_255FA7D18(v31, v32, &v68);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v56 = v17;
      v54 = v8;
      v34 = v63;
      v35 = v6;
      v36 = v6;
      v37 = v64;
      (*(v63 + 16))(v36, v26 + qword_27F821D30, v64);

      sub_255FACF88(&qword_27F821DE0, MEMORY[0x277D403A8]);
      v38 = sub_255FB5E58();
      v40 = v39;

      (*(v34 + 8))(v35, v37);
      v41 = sub_255FA7D18(v38, v40, &v68);

      *(v30 + 14) = v41;
      *(v30 + 22) = 2082;
      v60(v62, v13, AssociatedTypeWitness);
      v42 = sub_255FB5CB8();
      v44 = v43;
      (*(v54 + 8))(v13, AssociatedTypeWitness);
      v45 = sub_255FA7D18(v42, v44, &v68);

      *(v30 + 24) = v45;
      v46 = v55;
      _os_log_impl(&dword_255FA5000, v55, v57, "%{public}s-%{public}s received message: %{public}s.", v30, 0x20u);
      v47 = v58;
      swift_arrayDestroy();
      MEMORY[0x259C556A0](v47, -1, -1);
      a1 = v59;
      MEMORY[0x259C556A0](v30, -1, -1);

      (*(v65 + 8))(v56, v66);
    }

    else
    {

      (*(v8 + 8))(v13, AssociatedTypeWitness);
      (*(v65 + 8))(v17, v66);
    }

    sub_255FAA600(a1);
    v51 = v61;
    sub_255FACEC0(v67, v61, &qword_27F821DE8, &unk_255FB6980);
    v52 = sub_255FB5868();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {

      return sub_255FACF28(v51, &qword_27F821DE8, &unk_255FB6980);
    }

    else
    {
      sub_255FB5858();

      return (*(v53 + 8))(v51, v52);
    }
  }

  else
  {
    sub_255FACEC0(v67, v24, &qword_27F821DE8, &unk_255FB6980);
    v48 = sub_255FB5868();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v24, 1, v48) == 1)
    {
      return sub_255FACF28(v24, &qword_27F821DE8, &unk_255FB6980);
    }

    else
    {
      sub_255FB5858();
      return (*(v49 + 8))(v24, v48);
    }
  }
}

uint64_t sub_255FABCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CD0, &qword_255FB6870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47[-v10];
  swift_getAssociatedTypeWitness();
  v61 = a4;
  swift_getAssociatedConformanceWitness();
  v59 = sub_255FB5848();
  v12 = *(v59 - 8);
  v57 = *(v12 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v47[-v13];
  v14 = sub_255FB5898();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_255FB5978();
  v55 = *(v19 - 8);
  v56 = v19;
  v20 = *(v55 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v47[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v53 = a5;
    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D88();
    v25 = *(v15 + 16);
    v54 = a3;
    v52 = v25;
    v25(v18, a3, v14);

    v26 = sub_255FB5968();
    v27 = sub_255FB5D28();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v51 = v11;
      v29 = v28;
      v49 = swift_slowAlloc();
      v62[0] = v49;
      *v29 = 136446466;
      v48 = v27;
      v30 = sub_255FAA404();
      v32 = sub_255FA7D18(v30, v31, v62);
      v50 = v15 + 16;
      v33 = v15;
      v34 = v32;

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      sub_255FACF88(&qword_27F821DE0, MEMORY[0x277D403A8]);
      v35 = sub_255FB5E58();
      v37 = v36;
      (*(v33 + 8))(v18, v14);
      v38 = sub_255FA7D18(v35, v37, v62);
      v15 = v33;

      *(v29 + 14) = v38;
      _os_log_impl(&dword_255FA5000, v26, v48, "%{public}s-%{public}s messageStream.open success", v29, 0x16u);
      v39 = v49;
      swift_arrayDestroy();
      MEMORY[0x259C556A0](v39, -1, -1);
      v40 = v29;
      v11 = v51;
      MEMORY[0x259C556A0](v40, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    (*(v55 + 8))(v22, v56);
    v42 = v58;
    v41 = v59;
    (*(v12 + 16))(v58, v60, v59);
    v43 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v44 = swift_allocObject();
    v45 = v53;
    *(v44 + 16) = v61;
    *(v44 + 24) = v45;
    (*(v12 + 32))(v44 + v43, v42, v41);
    sub_255FAA4C4(sub_255FACD78, v44);

    v52(v11, v54, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v46 = qword_27F821D28;
    swift_beginAccess();
    sub_255FACE50(v11, v24 + v46);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_255FAC2A8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_255FB5848();
  return sub_255FB5838();
}

uint64_t sub_255FAC344(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DD0, &unk_255FB6970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v55[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CD0, &qword_255FB6870);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v55[-v11];
  v13 = sub_255FB5898();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v61 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v55[-v18];
  v20 = sub_255FB5978();
  v65 = *(v20 - 8);
  v66 = v20;
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v63 = v2;
    v64 = v12;
    v60 = v10;
    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D88();
    v62 = *(v14 + 16);
    v62(v19, v67, v13);

    v26 = v14;
    v27 = sub_255FB5968();
    v28 = sub_255FB5D28();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v58 = v5;
      v30 = v29;
      v68[0] = swift_slowAlloc();
      v59 = v25;
      v31 = v68[0];
      *v30 = 136446466;
      v32 = v26;
      v57 = v26;
      v33 = sub_255FAA404();
      v35 = sub_255FA7D18(v33, v34, v68);
      v56 = v28;
      v36 = v35;

      *(v30 + 4) = v36;
      *(v30 + 12) = 2082;
      sub_255FACF88(&qword_27F821DE0, MEMORY[0x277D403A8]);
      v37 = sub_255FB5E58();
      v39 = v38;
      v40 = *(v32 + 8);
      v40(v19, v13);
      v41 = sub_255FA7D18(v37, v39, v68);

      *(v30 + 14) = v41;
      _os_log_impl(&dword_255FA5000, v27, v56, "%{public}s-%{public}s messageStream invalidating", v30, 0x16u);
      swift_arrayDestroy();
      v42 = v31;
      v25 = v59;
      MEMORY[0x259C556A0](v42, -1, -1);
      v43 = v30;
      v5 = v58;
      MEMORY[0x259C556A0](v43, -1, -1);

      (*(v65 + 8))(v23, v66);
      v44 = v57;
    }

    else
    {

      v40 = *(v26 + 8);
      v40(v19, v13);
      (*(v65 + 8))(v23, v66);
      v44 = v26;
    }

    v45 = qword_27F821D28;
    swift_beginAccess();
    v46 = v64;
    v62(v64, v67, v13);
    (*(v44 + 56))(v46, 0, 1, v13);
    v47 = *(v63 + 48);
    sub_255FACEC0(v25 + v45, v5, &qword_27F821CD0, &qword_255FB6870);
    sub_255FACEC0(v46, &v5[v47], &qword_27F821CD0, &qword_255FB6870);
    v48 = *(v44 + 48);
    if (v48(v5, 1, v13) == 1)
    {
      sub_255FACF28(v46, &qword_27F821CD0, &qword_255FB6870);
      if (v48(&v5[v47], 1, v13) == 1)
      {
        sub_255FACF28(v5, &qword_27F821CD0, &qword_255FB6870);
LABEL_12:
        v52 = (v25 + qword_27F821F40);
        v53 = *(v25 + qword_27F821F40);
        v54 = *(v25 + qword_27F821F40 + 8);
        *v52 = 0;
        v52[1] = 0;
        sub_255FA85E4(v53);
      }
    }

    else
    {
      v49 = v60;
      sub_255FACEC0(v5, v60, &qword_27F821CD0, &qword_255FB6870);
      if (v48(&v5[v47], 1, v13) != 1)
      {
        v50 = v61;
        (*(v44 + 32))(v61, &v5[v47], v13);
        sub_255FACF88(&qword_27F821DD8, MEMORY[0x277D403A8]);
        v51 = sub_255FB5C68();
        v40(v50, v13);
        sub_255FACF28(v46, &qword_27F821CD0, &qword_255FB6870);
        v40(v49, v13);
        sub_255FACF28(v5, &qword_27F821CD0, &qword_255FB6870);
        if (v51)
        {
          goto LABEL_12;
        }
      }

      sub_255FACF28(v46, &qword_27F821CD0, &qword_255FB6870);
      v40(v49, v13);
    }

    sub_255FACF28(v5, &qword_27F821DD0, &unk_255FB6970);
  }

  return result;
}

uint64_t sub_255FACA84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255FACABC(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_255FAB5F0(a1, a2);
}

uint64_t sub_255FACAC8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_255FB5898() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_255FABCF0(a1, v6, v7, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  v1 = sub_255FB5898();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255FACC18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_255FB5898() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_255FAC344(v4, v5);
}

uint64_t sub_255FACC98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_255FB5848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_255FACD78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(*(sub_255FB5848() - 8) + 80);

  return sub_255FAC2A8();
}

uint64_t sub_255FACE50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CD0, &qword_255FB6870);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255FACEC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255FACF28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_255FACF88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255FACFD0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255FAD008(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_255FAAD3C(a1);
}

uint64_t get_enum_tag_for_layout_string_25LiveExecutionResultsProbe28SourceLocationInfo_TransportOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255FAD090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255FAD0D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255FAD13C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x68746150656C6966;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6D756C6F63;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0x8000000255FB7880;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x626D754E656E696CLL;
    }

    else
    {
      v4 = 0x68746150656C6966;
    }

    if (v3)
    {
      v5 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6E6D756C6F63;
  v8 = 0x8000000255FB7880;
  if (a2 == 2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x626D754E656E696CLL;
    v6 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255FB5E68();
  }

  return v11 & 1;
}

uint64_t sub_255FAD280(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xEE006E6F69746163;
    if (a1 == 2)
    {
      v6 = 0x6372756F53676F6CLL;
    }

    else
    {
      v6 = 0x6F4C656372756F73;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE900000000000070;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6D617473656D6974;
    }

    else
    {
      v6 = 0x676E69727473;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6372756F53676F6CLL;
  if (a2 == 2)
  {
    v10 = 0xE900000000000065;
  }

  else
  {
    v9 = 0x6F4C656372756F73;
    v10 = 0xEE006E6F69746163;
  }

  if (a2)
  {
    v2 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_255FB5E68();
  }

  return v13 & 1;
}

uint64_t sub_255FAD408()
{
  v1 = *v0;
  sub_255FB5E88();
  MEMORY[0x259C55250](qword_255FB6C60[v1]);
  return sub_255FB5EA8();
}

uint64_t sub_255FAD490()
{
  v1 = *v0;
  sub_255FB5E88();
  MEMORY[0x259C55250](qword_255FB6C60[v1]);
  return sub_255FB5EA8();
}

uint64_t sub_255FAD4DC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255FADDE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_255FAD520(uint64_t a1, uint64_t a2)
{
  v4 = sub_255FAE534();
  v5 = MEMORY[0x277D405F0];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_255FAD57C(uint64_t *a1)
{
  v2 = *a1;
  sub_255FAE534();
  return sub_255FB5948();
}

uint64_t sub_255FAD5F4()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FAD6C4()
{
  *v0;
  *v0;
  sub_255FB5CC8();
}

uint64_t sub_255FAD780()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FAD84C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255FADED8();
  *a2 = result;
  return result;
}

void sub_255FAD87C(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E69727473;
  v4 = 0x6372756F53676F6CLL;
  v5 = 0xEE006E6F69746163;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x6F4C656372756F73;
  }

  if (*v1)
  {
    v3 = 0x6D617473656D6974;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255FAD908()
{
  v1 = 0x676E69727473;
  v2 = 0x6372756F53676F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6F4C656372756F73;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255FAD990(uint64_t *a1)
{
  v2 = *(a1 + 2);
  *v3 = *(a1 + 3);
  *&v3[9] = *(a1 + 57);
  v6 = *a1;
  v7 = a1[1];
  v5 = a1[2];
  v4 = *(a1 + 24);
  sub_255FAE204();
  sub_255FAE258();
  sub_255FAE2AC();
  return sub_255FB5908();
}

uint64_t sub_255FADA94()
{
  v4 = v0[2];
  *v5 = v0[3];
  *&v5[9] = *(v0 + 57);
  v2 = *v0;
  v3 = v0[1];
  return sub_255FB58C8();
}

__n128 sub_255FADAEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_255FADF24(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_255FADB38@<Q0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_255FB59C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255FB59A8();
  v28 = v11;
  v29 = v10;
  sub_255FB59E8();
  v13 = v12;
  sub_255FB59D8();
  v27 = sub_255FB59B8();
  (*(v6 + 8))(v9, v5);
  sub_255FB5988();
  v14 = sub_255FB5A58();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    sub_255FADE08(v4);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
  }

  else
  {
    sub_255FB3D24(v44);
    v16 = v44[0];
    v17 = v44[1];
    v18 = v44[2];
    v19 = v44[3];
    v20 = v44[4];
    v21 = v45;
    (*(v15 + 8))(v4, v14);
  }

  *&v32 = v29;
  *(&v32 + 1) = v28;
  v22 = 0x300020100uLL >> (8 * v27);
  if (v27 >= 5)
  {
    LOBYTE(v22) = 0;
  }

  v33.n128_u64[0] = v13;
  v33.n128_u8[8] = v22;
  *&v34 = v16;
  *(&v34 + 1) = v17;
  *&v35[0] = v18;
  *(&v35[0] + 1) = v19;
  *&v35[1] = v20;
  BYTE8(v35[1]) = v21;
  v36[0] = v29;
  v36[1] = v28;
  v36[2] = v13;
  v37 = v22;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v43 = v21;
  sub_255FADE70(&v32, &v31);
  sub_255FADEA8(v36);
  v23 = v35[0];
  v24 = v30;
  *(v30 + 32) = v34;
  *(v24 + 48) = v23;
  *(v24 + 57) = *(v35 + 9);
  result = v33;
  *v24 = v32;
  *(v24 + 16) = result;
  return result;
}

uint64_t sub_255FADDE4(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x304020100uLL >> (8 * a1));
  }
}

uint64_t sub_255FADE08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255FADED8()
{
  v0 = sub_255FB5E48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255FADF24@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = &type metadata for PrintSample_Transport.Key;
  v5 = sub_255FAE204();
  *&v22 = v5;
  LOBYTE(v20[0]) = 0;
  sub_255FB58B8();
  if (v2)
  {
    v6 = sub_255FB58E8();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    v8 = v33;
    v7 = v34;
    v21 = &type metadata for PrintSample_Transport.Key;
    *&v22 = v5;
    LOBYTE(v20[0]) = 1;
    sub_255FB58B8();
    __swift_destroy_boxed_opaque_existential_0(v20);
    v9 = v32;
    v21 = &type metadata for PrintSample_Transport.Key;
    *&v22 = v5;
    LOBYTE(v20[0]) = 2;
    sub_255FAE258();
    sub_255FB58B8();
    __swift_destroy_boxed_opaque_existential_0(v20);
    v11 = v31;
    v26[3] = &type metadata for PrintSample_Transport.Key;
    v26[4] = v5;
    LOBYTE(v26[0]) = 3;
    sub_255FAE2AC();
    sub_255FB58B8();
    v12 = sub_255FB58E8();
    (*(*(v12 - 8) + 8))(a1, v12);
    __swift_destroy_boxed_opaque_existential_0(v26);
    *&v16 = v8;
    *(&v16 + 1) = v7;
    *&v17 = v9;
    BYTE8(v17) = v11;
    v18 = v27;
    *v19 = v28;
    *&v19[16] = v29;
    v19[24] = v30;
    v20[0] = v8;
    v20[1] = v7;
    v20[2] = v9;
    LOBYTE(v21) = v11;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    sub_255FADE70(&v16, &v15);
    result = sub_255FADEA8(v20);
    v13 = *v19;
    a2[2] = v18;
    a2[3] = v13;
    *(a2 + 57) = *&v19[9];
    v14 = v17;
    *a2 = v16;
    a2[1] = v14;
  }

  return result;
}

unint64_t sub_255FAE204()
{
  result = qword_27F821DF8;
  if (!qword_27F821DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821DF8);
  }

  return result;
}

unint64_t sub_255FAE258()
{
  result = qword_27F821E00;
  if (!qword_27F821E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E00);
  }

  return result;
}

unint64_t sub_255FAE2AC()
{
  result = qword_27F821E08;
  if (!qword_27F821E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SourceLocation_Transport.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SourceLocation_Transport.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255FAE47C()
{
  result = qword_27F821E10;
  if (!qword_27F821E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E10);
  }

  return result;
}

unint64_t sub_255FAE4D4()
{
  result = qword_27F821E18;
  if (!qword_27F821E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E18);
  }

  return result;
}

unint64_t sub_255FAE534()
{
  result = qword_27F821E20;
  if (!qword_27F821E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E20);
  }

  return result;
}

uint64_t sub_255FAE598(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255FB58E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FB5AC8();
  v11 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_stdOutFileHandle;
  *(v3 + v11) = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor_];
  v12 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_stdErrFileHandle;
  *(v3 + v12) = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor_];
  v13 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdOutFD;
  v14 = sub_255FB5C08();
  v15 = fileno(v14);
  *(v3 + v13) = dup(v15);
  v16 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdErrFD;
  v17 = sub_255FB5BF8();
  v18 = fileno(v17);
  *(v3 + v16) = dup(v18);
  v19 = (v3 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler);
  *v19 = 0;
  v19[1] = 0;
  *(v3 + 16) = a1;
  (*(v7 + 16))(v10, a2, v6);
  sub_255FB1CE8();
  v20 = a1;
  sub_255FB5928();
  sub_255FAE7A4(v22[2], v23);

  (*(v7 + 8))(a2, v6);
  return v3;
}

uint64_t sub_255FAE7A4(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v90 = a2;
  v76 = sub_255FB59C8();
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255FB5978();
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v5);
  v87 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_255FB5A78();
  v84 = *(v88 - 8);
  v8 = *(v84 + 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_255FB5B28();
  v83 = *(v79 - 8);
  v10 = *(v83 + 64);
  v11 = MEMORY[0x28223BE20](v79);
  v78 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v15 = sub_255FB5B78();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v74 - v24;
  v26 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_config;
  swift_beginAccess();
  v82 = v16[2];
  v86 = v25;
  v82(v25, &v2[v26], v15);
  sub_255FB5B08();
  (*(v84 + 13))(v85, **(&unk_2798181F0 + v90), v88);
  sub_255FB5B48();
  swift_beginAccess();
  v88 = v16;
  v27 = v16[3];
  v85 = v2;
  v90 = v26;
  v27(&v2[v26], v23, v15);
  swift_endAccess();
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D98();
  v84 = v23;
  v89 = v15;
  v82(v20, v23, v15);
  v28 = sub_255FB5968();
  v29 = sub_255FB5D08();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v91 = v31;
    *v30 = 136446210;
    v32 = sub_255FB5B38();
    v34 = v33;
    v82 = *(v88 + 8);
    (v82)(v20, v89);
    v35 = sub_255FA7D18(v32, v34, &v91);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_255FA5000, v28, v29, "LoggingProbePoint config updated: (%{public}s)", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x259C556A0](v31, -1, -1);
    MEMORY[0x259C556A0](v30, -1, -1);
  }

  else
  {

    v82 = *(v88 + 8);
    (v82)(v20, v89);
  }

  (*(v80 + 8))(v87, v81);
  v36 = v85;
  swift_beginAccess();
  v37 = v77;
  sub_255FB5B58();
  swift_endAccess();
  v38 = v78;
  sub_255FB5B18();
  sub_255FB23C4(&qword_27F821E78, MEMORY[0x277D23D38]);
  v39 = v79;
  v40 = sub_255FB5DC8();
  v41 = *(v83 + 8);
  v41(v38, v39);
  v41(v37, v39);
  v42 = v86;
  if (v40)
  {
    sub_255FB5B58();
    sub_255FB5B18();
    v43 = sub_255FB5DC8();
    v41(v38, v39);
    v41(v37, v39);
    if ((v43 & 1) == 0 && !off_27F821E28)
    {

      sub_255FAF380(sub_255FB1EC4, v36);
    }
  }

  swift_beginAccess();
  sub_255FB5B58();
  swift_endAccess();
  sub_255FB5AE8();
  v44 = sub_255FB5DC8();
  v41(v38, v39);
  v41(v37, v39);
  if ((v44 & 1) != 0 && (sub_255FB5B58(), sub_255FB5AE8(), v45 = sub_255FB5DC8(), v41(v38, v39), v41(v37, v39), (v45 & 1) == 0))
  {
    v51 = sub_255FB5C08();
    v52 = fileno(v51);
    *(v36 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdOutFD) = dup(v52);
    v53 = *(v36 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_stdOutFileHandle);
    v54 = v74;
    (*(v75 + 104))(v74, *MEMORY[0x277D23CF0], v76);
    v55 = v53;
    sub_255FB0E0C(1, v55, v54);

    v56 = v54;
    v42 = v86;
    (*(v75 + 8))(v56, v76);
  }

  else
  {
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    sub_255FB5AE8();
    v46 = sub_255FB5DC8();
    v41(v38, v39);
    v41(v37, v39);
    if ((v46 & 1) == 0)
    {
      sub_255FB5B58();
      sub_255FB5AE8();
      v47 = sub_255FB5DC8();
      v41(v38, v39);
      v41(v37, v39);
      if (v47)
      {
        v48 = *(v36 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdOutFD);
        v49 = sub_255FB5C08();
        v50 = fileno(v49);
        dup2(v48, v50);
      }
    }
  }

  swift_beginAccess();
  sub_255FB5B58();
  swift_endAccess();
  sub_255FB5AF8();
  v57 = sub_255FB5DC8();
  v41(v38, v39);
  v41(v37, v39);
  if ((v57 & 1) != 0 && (sub_255FB5B58(), sub_255FB5AF8(), v58 = sub_255FB5DC8(), v41(v38, v39), v41(v37, v39), (v58 & 1) == 0))
  {
    v64 = sub_255FB5BF8();
    v65 = fileno(v64);
    *(v36 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdErrFD) = dup(v65);
    v66 = *(v36 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_stdErrFileHandle);
    v67 = v75;
    v68 = v74;
    v69 = v76;
    (*(v75 + 104))(v74, *MEMORY[0x277D23CF8], v76);
    v70 = v66;
    sub_255FB0E0C(2, v70, v68);

    (*(v67 + 8))(v68, v69);
  }

  else
  {
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    sub_255FB5AF8();
    v59 = sub_255FB5DC8();
    v41(v38, v39);
    v41(v37, v39);
    if ((v59 & 1) == 0)
    {
      sub_255FB5B58();
      sub_255FB5AF8();
      v60 = sub_255FB5DC8();
      v41(v38, v39);
      v41(v37, v39);
      if (v60)
      {
        v61 = *(v36 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_originalStdErrFD);
        v62 = sub_255FB5BF8();
        v63 = fileno(v62);
        dup2(v61, v63);
      }
    }
  }

  v71 = v89;
  v72 = v82;
  (v82)(v84, v89);
  return v72(v42, v71);
}

uint64_t sub_255FAF380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_255FB5978();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255FB5E28();
  v12 = v11;
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D98();
  sub_255FA85D4(v10);
  v13 = sub_255FB5968();
  v14 = sub_255FB5D08();
  sub_255FA85E4(v10);
  if (os_log_type_enabled(v13, v14))
  {
    v31 = v3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315138;
    v29 = v5;
    v30 = a1;
    if (v10)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v10;
      *(v17 + 24) = v12;
      v18 = sub_255FB1FE0;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v33 = v18;
    v34 = v17;
    sub_255FA85D4(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CB0, &unk_255FB6D20);
    v19 = sub_255FB5CB8();
    v21 = sub_255FA7D18(v19, v20, &v35);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_255FA5000, v13, v14, "setupPrintHook() existing playgroundPrintHook: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C556A0](v16, -1, -1);
    MEMORY[0x259C556A0](v15, -1, -1);

    (*(v6 + 8))(v9, v29);
    a1 = v30;
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a1;
  v23[4] = v32;
  v24 = off_27F821E28;
  off_27F821E28 = sub_255FB1F44;
  qword_27F821E30 = v23;

  sub_255FA85E4(v24);

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v10;
  v26[3] = v12;
  v26[4] = v25;
  return sub_255FB5E38();
}

uint64_t sub_255FAF6E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void), uint64_t a7)
{
  v22 = a7;
  v23 = a6;
  v11 = sub_255FB5B28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    sub_255FB5B18();
    sub_255FB23C4(&qword_27F821E78, MEMORY[0x277D23D38]);
    v20 = sub_255FB5DC8();

    v21 = *(v12 + 8);
    v21(v16, v11);
    result = (v21)(v18, v11);
    if (v20)
    {
      return v23(a1, a2, a3, a4 & 1);
    }
  }

  return result;
}

uint64_t sub_255FAF8D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = sub_255FB5A78();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255FB5B28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  if (a3)
  {
    a3(a1, a2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = a1;
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    sub_255FB5B18();
    sub_255FB23C4(&qword_27F821E78, MEMORY[0x277D23D38]);
    v19 = sub_255FB5DC8();
    v20 = *(v11 + 8);
    v20(v15, v10);
    v20(v17, v10);
    if (v19)
    {
      swift_beginAccess();
      sub_255FB5B68();
      swift_endAccess();
      v21 = sub_255FB5A68();
      (*(v27 + 8))(v9, v28);
      v22 = 0;
      if (v21)
      {
        sub_255FB2288();
        v22 = v23;
      }

      v24 = off_27F821E28;
      if (off_27F821E28)
      {

        v24(v26, a2, v22, (v21 & 1) == 0);
        sub_255FA85E4(v24);
      }
    }
  }

  return result;
}

uint64_t sub_255FAFBD8(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v44 = a3;
  v45 = a4;
  v49 = a1;
  v5 = sub_255FB5C18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255FB5C38();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255FB5978();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_255FB5818();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255FB5808();
  sub_255FB57F8();
  v24 = v23;
  (*(v19 + 8))(v22, v18);
  sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
  sub_255FB5D98();

  v25 = sub_255FB5968();
  v26 = sub_255FB5D08();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v13;
    v29 = v9;
    v30 = v6;
    v31 = v5;
    v32 = v28;
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_255FA7D18(v49, a2, aBlock);
    _os_log_impl(&dword_255FA5000, v25, v26, "Print hook received: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v33 = v32;
    v5 = v31;
    v6 = v30;
    v9 = v29;
    MEMORY[0x259C556A0](v33, -1, -1);
    MEMORY[0x259C556A0](v27, -1, -1);

    (*(v14 + 8))(v17, v42);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v34 = *(v43 + 16);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = v44;
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  *(v36 + 32) = v45 & 1;
  *(v36 + 40) = v49;
  *(v36 + 48) = a2;
  *(v36 + 56) = v24;
  aBlock[4] = sub_255FB2398;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_255FA726C;
  aBlock[3] = &block_descriptor_0;
  v38 = _Block_copy(aBlock);

  v39 = v46;
  sub_255FB5C28();
  v50 = MEMORY[0x277D84F90];
  sub_255FB23C4(&qword_27F821C98, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CA0, &unk_255FB64A0);
  sub_255FA8528();
  sub_255FB5DE8();
  MEMORY[0x259C55120](0, v39, v9, v38);
  _Block_release(v38);
  (*(v6 + 8))(v9, v5);
  (*(v47 + 8))(v39, v48);
}

uint64_t sub_255FB0134(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v27[0] = a2;
  v27[1] = a4;
  v5 = sub_255FB59C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_255FB59F8();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v28);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v27 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_255FB0468(v27[0], a3 & 1, v20);
    (*(v6 + 104))(v9, *MEMORY[0x277D23D00], v5);
    sub_255FB240C(v20, v18);

    sub_255FB5998();
    v23 = v22 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler;
    swift_beginAccess();
    v24 = *v23;
    if (*v23)
    {
      v25 = *(v23 + 8);
      swift_endAccess();

      v26 = sub_255FADB38(v29);
      v24(v29, v26);
      sub_255FADEA8(v29);
      sub_255FA85E4(v24);

      (*(v10 + 8))(v13, v28);
      return sub_255FACF28(v20, &qword_27F821DF0, &qword_255FB6D30);
    }

    else
    {
      (*(v10 + 8))(v13, v28);
      sub_255FACF28(v20, &qword_27F821DF0, &qword_255FB6D30);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_255FB0468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v5 = sub_255FB5978();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v50 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48[1] = v48 - v9;
  v10 = sub_255FB5A98();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = sub_255FB5A48();
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v55);
  v51 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821E88, &qword_255FB6D38);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v54 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v48 - v20;
  MEMORY[0x28223BE20](v19);
  v56 = v48 - v22;
  v23 = sub_255FB5A78();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = sub_255FB5A58();
    v29 = *(*(v28 - 8) + 56);

    return v29(a3, 1, 1, v28);
  }

  else
  {
    v48[0] = a3;
    swift_beginAccess();
    sub_255FB5B68();
    swift_endAccess();
    v31 = (*(v24 + 88))(v27, v23);
    if (v31 == *MEMORY[0x277D23D28])
    {
      v32 = sub_255FB5A58();
      return (*(*(v32 - 8) + 56))(v48[0], 1, 1, v32);
    }

    else
    {
      if (v31 == *MEMORY[0x277D23D18])
      {
        v33 = v12;
        v34 = *(v12 + 56);
        v36 = v55;
        v35 = v56;
        v34(v56, 1, 1, v55);
        sub_255FB5AB8();
        sub_255FB5AA8();
        sub_255FB5A88();
        sub_255FACF28(v35, &qword_27F821E88, &qword_255FB6D38);

        v34(v21, 0, 1, v36);
        sub_255FB247C(v21, v35);
        v42 = v54;
        sub_255FB247C(v35, v54);
        v43 = (*(v33 + 48))(v42, 1, v36);
        v37 = v48[0];
        if (v43 == 1)
        {
          sub_255FACF28(v42, &qword_27F821E88, &qword_255FB6D38);
          v44 = sub_255FB5A58();
          return (*(*(v44 - 8) + 56))(v37, 1, 1, v44);
        }

        v45 = *(v33 + 32);
        v46 = v51;
        v45(v51, v42, v36);
        v45(v37, v46, v36);
        v47 = *MEMORY[0x277D23D08];
        v39 = sub_255FB5A58();
        v40 = *(v39 - 8);
        (*(v40 + 104))(v37, v47, v39);
      }

      else
      {
        if (v31 != *MEMORY[0x277D23D20])
        {
          v41 = sub_255FB5A58();
          (*(*(v41 - 8) + 56))(v48[0], 1, 1, v41);
          return (*(v24 + 8))(v27, v23);
        }

        v37 = v48[0];
        *v48[0] = v57;
        v38 = *MEMORY[0x277D23D10];
        v39 = sub_255FB5A58();
        v40 = *(v39 - 8);
        (*(v40 + 104))(v37, v38, v39);
      }

      return (*(v40 + 56))(v37, 0, 1, v39);
    }
  }
}

char *sub_255FB0E0C(int a1, void *a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_255FB59C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = [a2 fileDescriptor];
  grantpt(v8);
  unlockpt(v8);
  result = ptsname(v8);
  if (result)
  {
    v10 = sub_255FB5BD8();
    sub_255FB1FE8(v8);
    v11 = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v10 closeOnDealloc:1];
    dup2([v11 fileDescriptor], a1);
    v12 = swift_allocObject();
    swift_weakInit();
    (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v5);
    v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v6 + 32))(v14 + v13, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    aBlock[4] = sub_255FB25B0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_255FB1734;
    aBlock[3] = &block_descriptor_25;
    v15 = _Block_copy(aBlock);

    sub_255FA85D4(sub_255FB25B0);

    [a2 setReadabilityHandler_];

    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255FB108C(void *a1, uint64_t a2, uint64_t a3)
{
  v56 = a1;
  v57 = a3;
  v3 = sub_255FB5C18();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_255FB5C38();
  v51 = *(v53 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255FB59C8();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255FB5CA8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_255FB5B28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_255FB5C48();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_255FAA190(0, &qword_27F821CF8, 0x277D85C78);
  *v21 = sub_255FB5D58();
  (*(v18 + 104))(v21, *MEMORY[0x277D851F0], v17);
  v22 = sub_255FB5C58();
  result = (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    swift_beginAccess();
    sub_255FB5B58();
    swift_endAccess();
    v25 = v57;
    v26 = sub_255FB5AD8();
    (*(v13 + 8))(v16, v12);
    if (v26)
    {
      v27 = v56;
      v28 = [v56 availableData];
      v29 = sub_255FB57E8();
      v31 = v30;

      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 != 2 || *(v29 + 16) == *(v29 + 24))
        {
          goto LABEL_13;
        }
      }

      else if (v32)
      {
        if (v29 == v29 >> 32)
        {
LABEL_13:
          [v27 setReadabilityHandler_];
          _Block_release(0);
          goto LABEL_14;
        }
      }

      else if ((v31 & 0xFF000000000000) == 0)
      {
        goto LABEL_13;
      }

      sub_255FB5C98();
      v33 = sub_255FB5C88();
      if (!v34)
      {
LABEL_14:
        sub_255FA83C4(v29, v31);
      }

      v35 = v33;
      v36 = v34;
      v56 = *(v24 + 16);
      v37 = v47;
      v38 = v48;
      v39 = v49;
      (*(v48 + 16))(v47, v25, v49);
      v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v57 = v29;
      v41 = (v9 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      *(v42 + 16) = v35;
      *(v42 + 24) = v36;
      (*(v38 + 32))(v42 + v40, v37, v39);
      *(v42 + v41) = v24;
      aBlock[4] = sub_255FB26FC;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_255FA726C;
      aBlock[3] = &block_descriptor_31;
      v43 = _Block_copy(aBlock);

      v44 = v50;
      sub_255FB5C28();
      v58 = MEMORY[0x277D84F90];
      sub_255FB23C4(&qword_27F821C98, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821CA0, &unk_255FB64A0);
      sub_255FA8528();
      v45 = v52;
      v46 = v55;
      sub_255FB5DE8();
      MEMORY[0x259C55120](0, v44, v45, v43);
      _Block_release(v43);
      sub_255FA83C4(v57, v31);
      (*(v54 + 8))(v45, v46);
      (*(v51 + 8))(v44, v53);
    }
  }

  return result;
}

void sub_255FB1734(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_255FB179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_255FB59C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255FB5818();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_255FB59F8();
  v18 = *(v29 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v29);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_255FB5808();
  sub_255FB57F8();
  (*(v14 + 8))(v17, v13);
  (*(v9 + 16))(v12, v28, v8);
  v22 = sub_255FB5A58();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_255FB5998();
  v23 = v31 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler;
  swift_beginAccess();
  v24 = *v23;
  if (*v23)
  {
    v25 = *(v23 + 8);
    swift_endAccess();

    v26 = sub_255FADB38(v32);
    v24(v32, v26);
    sub_255FADEA8(v32);
    sub_255FA85E4(v24);
    return (*(v18 + 8))(v21, v29);
  }

  else
  {
    (*(v18 + 8))(v21, v29);
    return swift_endAccess();
  }
}

uint64_t sub_255FB1AFC()
{
  v1 = OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_config;
  v2 = sub_255FB5B78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler + 8);
  sub_255FA85E4(*(v0 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler));
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for LoggingProbePoint()
{
  result = qword_27F821E58;
  if (!qword_27F821E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255FB1C28()
{
  result = sub_255FB5B78();
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

unint64_t sub_255FB1CE8()
{
  result = qword_27F821E68;
  if (!qword_27F821E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E68);
  }

  return result;
}

unint64_t sub_255FB1D40()
{
  result = qword_27F821E70;
  if (!qword_27F821E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E70);
  }

  return result;
}

uint64_t sub_255FB1DB0(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_255FAE598(a1, a2);
  return v7;
}

uint64_t sub_255FB1E00()
{
  v0 = off_27F821E28;
  off_27F821E28 = 0;
  qword_27F821E30 = 0;
  return sub_255FA85E4(v0);
}

uint64_t sub_255FB1E14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_255FB278C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (v2 + OBJC_IVAR____TtC25LiveExecutionResultsProbe17LoggingProbePoint_probeSampleGenerationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  return sub_255FA85E4(v8);
}

uint64_t sub_255FB1ECC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255FB1F04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255FB1F54()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255FB1F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_255FAF8D0(a1, a2, *(v2 + 16));
}

uint64_t sub_255FB1FA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255FB1FE8(int a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sub_255FB5978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  memset(&v16, 0, sizeof(v16));
  if (tcgetattr(a1, &v16))
  {
    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D98();
    v10 = sub_255FB5968();
    v11 = sub_255FB5D18();
    if (!os_log_type_enabled(v10, v11))
    {
LABEL_9:

      result = (*(v3 + 8))(v7, v2);
      goto LABEL_10;
    }

    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = MEMORY[0x259C54FA0]();
    _os_log_impl(&dword_255FA5000, v10, v11, "Error: Could not get tty settings: %{public}d", v12, 8u);
LABEL_7:
    MEMORY[0x259C556A0](v12, -1, -1);
    goto LABEL_9;
  }

  *&v16.c_iflag = vandq_s8(*&v16.c_iflag, xmmword_255FB6C90);
  result = tcsetattr(a1, 0, &v16);
  if (result)
  {
    sub_255FAA190(0, &qword_27F821C88, 0x277D86200);
    sub_255FB5D98();
    v10 = sub_255FB5968();
    v14 = sub_255FB5D18();
    if (!os_log_type_enabled(v10, v14))
    {
      v7 = v9;
      goto LABEL_9;
    }

    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = MEMORY[0x259C54FA0]();
    _os_log_impl(&dword_255FA5000, v10, v14, "Error: Could not set tty settings: %{public}d", v12, 8u);
    v7 = v9;
    goto LABEL_7;
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255FB2288()
{
  v0 = [objc_opt_self() callStackReturnAddresses];
  sub_255FAA190(0, &qword_27F821E80, 0x277CCABB0);
  v1 = sub_255FB5CE8();

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x259C551C0](3, v1);
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
LABEL_8:
      __break(1u);
      return;
    }

    v2 = *(v1 + 56);
  }

  v3 = v2;

  v4 = [v3 unsignedLongLongValue];

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_255FB2358()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255FB2398()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return sub_255FB0134(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255FB23C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255FB240C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821DF0, &qword_255FB6D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255FB247C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F821E88, &qword_255FB6D38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255FB24EC()
{
  v1 = sub_255FB59C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255FB25B0(void *a1)
{
  v3 = *(sub_255FB59C8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_255FB108C(a1, v4, v5);
}

uint64_t sub_255FB2624()
{
  v1 = sub_255FB59C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_255FB26FC()
{
  v1 = *(sub_255FB59C8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_255FB179C(v3, v4, v0 + v2, v5);
}

uint64_t sub_255FB278C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[3];
  v7[2] = a1[2];
  v8[0] = v4;
  *(v8 + 9) = *(a1 + 57);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return v2(v7);
}

uint64_t sub_255FB27F4()
{
  sub_255FB5E88();
  sub_255FB5CC8();
  return sub_255FB5EA8();
}

uint64_t sub_255FB2868()
{
  sub_255FB5E88();
  sub_255FB5CC8();
  return sub_255FB5EA8();
}

uint64_t sub_255FB28BC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255FB5E48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255FB294C()
{
  v2 = *v0;
  sub_255FB2ABC();
  return sub_255FB58D8();
}

uint64_t sub_255FB29BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7[3] = &type metadata for PlaygroundLoggerProbePointConfiguration_Transport.Key;
  v7[4] = sub_255FB2ABC();
  sub_255FB58B8();
  v5 = sub_255FB58E8();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_0(v7);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_255FB2ABC()
{
  result = qword_27F821E98;
  if (!qword_27F821E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821E98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaygroundLoggerProbePointConfiguration_Transport.Key(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PlaygroundLoggerProbePointConfiguration_Transport.Key(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaygroundLoggerProbePointConfiguration_Transport(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_255FB2CB8()
{
  result = qword_27F821EA0;
  if (!qword_27F821EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EA0);
  }

  return result;
}

uint64_t sub_255FB2DAC()
{
  v1 = *v0;
  sub_255FB5E88();
  MEMORY[0x259C55250](v1);
  return sub_255FB5EA8();
}

uint64_t sub_255FB2E20()
{
  v1 = *v0;
  sub_255FB5E88();
  MEMORY[0x259C55250](v1);
  return sub_255FB5EA8();
}

uint64_t *sub_255FB2E64@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_255FB2E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_255FB3CCC();
  v5 = MEMORY[0x277D405F0];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_255FB2EE4(uint64_t *a1)
{
  v2 = *a1;
  sub_255FB3CCC();
  return sub_255FB5948();
}

uint64_t sub_255FB2F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255FB3BC8();
  v5 = MEMORY[0x277D405F0];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_255FB2FB8(uint64_t *a1)
{
  v2 = *a1;
  sub_255FB3BC8();
  return sub_255FB5948();
}

BOOL sub_255FB3068(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_255FB3098@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_255FB30C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_255FB31B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_255FB31E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_255FB3610(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_255FB3220(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "streamLoggedResultsEnabled";
  }

  else
  {
    v5 = "activeLogSources";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = "activeLogSources";
  }

  else
  {
    v8 = "streamLoggedResultsEnabled";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_255FB5E68();
  }

  return v10 & 1;
}

uint64_t sub_255FB32CC()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB334C()
{
  *v0;
  sub_255FB5CC8();
}

uint64_t sub_255FB33B8()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB3434@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255FB5E48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255FB3494(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "activeLogSources";
  }

  else
  {
    v3 = "streamLoggedResultsEnabled";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_255FB34D4()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_255FB3510()
{
  sub_255FB3798();
  sub_255FB37EC();
  sub_255FB3840();
  return sub_255FB5918();
}

uint64_t sub_255FB3598()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return sub_255FB58C8();
}

uint64_t sub_255FB35E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255FB3648(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_255FB3610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_255FB3648(uint64_t a1)
{
  v8 = &type metadata for LoggingProbePointConfiguration_Transport.Key;
  v4 = sub_255FB3798();
  v9 = v4;
  LOBYTE(v7[0]) = 0;
  sub_255FB37EC();
  sub_255FB58B8();
  if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    v2 = v10;
    v8 = &type metadata for LoggingProbePointConfiguration_Transport.Key;
    v9 = v4;
    LOBYTE(v7[0]) = 1;
    sub_255FB3840();
    sub_255FB58B8();
  }

  v5 = sub_255FB58E8();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v2;
}

unint64_t sub_255FB3798()
{
  result = qword_27F821EA8;
  if (!qword_27F821EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EA8);
  }

  return result;
}

unint64_t sub_255FB37EC()
{
  result = qword_27F821EB0;
  if (!qword_27F821EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EB0);
  }

  return result;
}

unint64_t sub_255FB3840()
{
  result = qword_27F821EB8;
  if (!qword_27F821EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EB8);
  }

  return result;
}

uint64_t sub_255FB3894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_255FB3510();
}

uint64_t getEnumTagSinglePayload for SourceLocationCollectionMode_Transport(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SourceLocationCollectionMode_Transport(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LoggingProbePointConfiguration_Transport(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LoggingProbePointConfiguration_Transport(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_255FB3AC0()
{
  result = qword_27F821EC0;
  if (!qword_27F821EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EC0);
  }

  return result;
}

unint64_t sub_255FB3B18()
{
  result = qword_27F821EC8;
  if (!qword_27F821EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EC8);
  }

  return result;
}

unint64_t sub_255FB3B70()
{
  result = qword_27F821ED0;
  if (!qword_27F821ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821ED0);
  }

  return result;
}

unint64_t sub_255FB3BC8()
{
  result = qword_27F821ED8;
  if (!qword_27F821ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821ED8);
  }

  return result;
}

unint64_t sub_255FB3C20()
{
  result = qword_27F821EE0;
  if (!qword_27F821EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EE0);
  }

  return result;
}

unint64_t sub_255FB3C78()
{
  result = qword_27F821EE8;
  if (!qword_27F821EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EE8);
  }

  return result;
}

unint64_t sub_255FB3CCC()
{
  result = qword_27F821EF0;
  if (!qword_27F821EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EF0);
  }

  return result;
}

uint64_t sub_255FB3D24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_255FB5A48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255FB5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, v2, v9);
  v14 = (*(v10 + 88))(v13, v9);
  v15 = v14;
  v16 = *MEMORY[0x277D23D08];
  if (v14 == *MEMORY[0x277D23D08])
  {
    (*(v10 + 96))(v13, v9);
    (*(v5 + 32))(v8, v13, v4);
    v22 = sub_255FB5A38();
    v28 = v23;
    v19 = sub_255FB5A08();
    v24 = v16;
    v25 = v4;
    v20 = sub_255FB5A28();
    v21 = sub_255FB5A18();
    v26 = v25;
    v16 = v24;
    result = (*(v5 + 8))(v8, v26);
    v18 = v28;
  }

  else if (v14 == *MEMORY[0x277D23D10])
  {
    result = (*(v10 + 96))(v13, v9);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = *v13;
  }

  else
  {
    result = (*(v10 + 8))(v13, v9);
    v22 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  *a1 = v22;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v15 != v16;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255FB3FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255FB4020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_255FB4098()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB4160()
{
  *v0;
  *v0;
  *v0;
  sub_255FB5CC8();
}

uint64_t sub_255FB4214()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB42D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255FB4F34();
  *a2 = result;
  return result;
}

void sub_255FB4308(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x68746150656C6966;
  v4 = 0xE600000000000000;
  v5 = 0x6E6D756C6F63;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000255FB7880;
  }

  if (*v1)
  {
    v3 = 0x626D754E656E696CLL;
    v2 = 0xEA00000000007265;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_255FB438C()
{
  v1 = 0x68746150656C6966;
  v2 = 0x6E6D756C6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x626D754E656E696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255FB440C(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v2 = a1[4];
  sub_255FB5724();
  return sub_255FB5908();
}

uint64_t sub_255FB44EC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_255FB58C8();
}

double sub_255FB453C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_255FB4F80(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_255FB4584(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x6F4C656372756F73;
  }

  if (v3)
  {
    v5 = 0xEE006E6F69746163;
  }

  else
  {
    v5 = 0x8000000255FB78A0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6F4C656372756F73;
  }

  if (*a2)
  {
    v7 = 0x8000000255FB78A0;
  }

  else
  {
    v7 = 0xEE006E6F69746163;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255FB5E68();
  }

  return v9 & 1;
}

uint64_t sub_255FB463C()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB46D0()
{
  *v0;
  sub_255FB5CC8();
}

uint64_t sub_255FB4750()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB47E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255FB5E48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_255FB4840(unint64_t *a1@<X8>)
{
  v2 = 0x8000000255FB78A0;
  v3 = 0x6F4C656372756F73;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEE006E6F69746163;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_255FB4890(uint64_t a1, uint64_t a2)
{
  v4 = sub_255FB56D0();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_255FB4954(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F4C656372756F73;
  v4 = 0xEE006E6F69746163;
  v5 = 0x8000000255FB78A0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x8000000255FB78A0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  v8 = 0x6F4C656372756F73;
  if (*a2 == 1)
  {
    v5 = 0xEE006E6F69746163;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255FB5E68();
  }

  return v11 & 1;
}

uint64_t sub_255FB4A6C()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB4B28()
{
  *v0;
  *v0;
  sub_255FB5CC8();
}

uint64_t sub_255FB4BD0()
{
  v1 = *v0;
  sub_255FB5E88();
  sub_255FB5CC8();

  return sub_255FB5EA8();
}

uint64_t sub_255FB4C88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255FB51B0();
  *a2 = result;
  return result;
}

void sub_255FB4CB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xEE006E6F69746163;
  v5 = 0x6F4C656372756F73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000255FB78A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255FB4D30()
{
  v1 = 0x6F4C656372756F73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_255FB4DA4()
{
  v1 = sub_255FB542C();
  sub_255FB5480();
  sub_255FB58D8();
  v2 = *v0;
  if (v0[5])
  {
    v7 = *v0;
    v8 = 0;
    *(&v12 + 1) = &type metadata for SourceLocationInfo_Transport.Key;
    v13 = v1;
    LOBYTE(v11[0]) = 2;
    sub_255FB58A8();
    v3 = v11;
  }

  else
  {
    v4 = v0[4];
    v5 = v0[1];
    v11[0] = *v0;
    v11[1] = v5;
    v12 = *(v0 + 1);
    v13 = v4;
    v9 = &type metadata for SourceLocationInfo_Transport.Key;
    v10 = v1;
    LOBYTE(v7) = 1;
    sub_255FB54D4();
    sub_255FB58A8();
    v3 = &v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_255FB4EB4()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_255FB4DA4();
}

double sub_255FB4EF0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_255FB51FC(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_255FB4F34()
{
  v0 = sub_255FB5E48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255FB4F80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = &type metadata for SourceLocation_Transport.Key;
  v5 = sub_255FB5724();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_255FB58B8();
  if (v2)
  {
    v6 = sub_255FB58E8();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
    v8 = v17;
    v7 = v18;
    v15 = &type metadata for SourceLocation_Transport.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_255FB58B8();
    __swift_destroy_boxed_opaque_existential_0(v14);
    v9 = v19;
    v15 = &type metadata for SourceLocation_Transport.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    sub_255FB58B8();
    __swift_destroy_boxed_opaque_existential_0(v14);
    v15 = &type metadata for SourceLocation_Transport.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 3;
    sub_255FB58B8();
    v11 = sub_255FB58E8();
    (*(*(v11 - 8) + 8))(a1, v11);
    result = __swift_destroy_boxed_opaque_existential_0(v14);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v9;
    a2[3] = v13;
    a2[4] = v12;
  }

  return result;
}

uint64_t sub_255FB51B0()
{
  v0 = sub_255FB5E48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255FB51FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v17 + 1) = &type metadata for SourceLocationInfo_Transport.Key;
  v5 = sub_255FB542C();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_255FB5480();
  sub_255FB58B8();
  if (v2)
  {
    v6 = sub_255FB58E8();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
    v8 = v15[0];
    if (v15[0])
    {
      *(&v17 + 1) = &type metadata for SourceLocationInfo_Transport.Key;
      v18 = v5;
      LOBYTE(v16[0]) = 2;
      sub_255FB58B8();
      v9 = sub_255FB58E8();
      (*(*(v9 - 8) + 8))(a1, v9);
      result = __swift_destroy_boxed_opaque_existential_0(v16);
      v10 = 0;
      v11 = 0;
      v12 = v15[0];
      v13 = 0uLL;
    }

    else
    {
      v15[3] = &type metadata for SourceLocationInfo_Transport.Key;
      v15[4] = v5;
      LOBYTE(v15[0]) = 1;
      sub_255FB54D4();
      sub_255FB58B8();
      v14 = sub_255FB58E8();
      (*(*(v14 - 8) + 8))(a1, v14);
      result = __swift_destroy_boxed_opaque_existential_0(v15);
      v12 = v16[0];
      v10 = v16[1];
      v13 = v17;
      v11 = v18;
    }

    *a2 = v12;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v8;
  }

  return result;
}

unint64_t sub_255FB542C()
{
  result = qword_27F821EF8;
  if (!qword_27F821EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821EF8);
  }

  return result;
}

unint64_t sub_255FB5480()
{
  result = qword_27F821F00;
  if (!qword_27F821F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F00);
  }

  return result;
}

unint64_t sub_255FB54D4()
{
  result = qword_27F821F08;
  if (!qword_27F821F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F08);
  }

  return result;
}

_BYTE *sub_255FB5528(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 16);
  *result = 0;
  *a2 = *(v3 + 40) & 1;
  return result;
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

uint64_t sub_255FB5574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255FB55BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_255FB5618()
{
  result = qword_27F821F10;
  if (!qword_27F821F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F10);
  }

  return result;
}

unint64_t sub_255FB5670()
{
  result = qword_27F821F18;
  if (!qword_27F821F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F18);
  }

  return result;
}

unint64_t sub_255FB56D0()
{
  result = qword_27F821F20;
  if (!qword_27F821F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F20);
  }

  return result;
}

unint64_t sub_255FB5724()
{
  result = qword_27F821F28;
  if (!qword_27F821F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F28);
  }

  return result;
}

unint64_t sub_255FB5794()
{
  result = qword_27F821F30;
  if (!qword_27F821F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F821F30);
  }

  return result;
}