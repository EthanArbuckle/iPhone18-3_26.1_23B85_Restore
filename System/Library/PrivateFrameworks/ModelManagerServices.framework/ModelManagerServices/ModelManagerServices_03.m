void sub_197985D54(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 isDaemon];
  v5 = sub_1979862E8(a1);
  v7 = v6;
  v8 = [a1 bundle];
  if (v8)
  {
    v9 = sub_19798634C(v8);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 bundle];
  v13 = v12;
  if (!v12)
  {

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v14 = [v12 executablePath];

  if (!v14)
  {

    v13 = 0;
    goto LABEL_9;
  }

  v13 = sub_197A87938();
  v16 = v15;

LABEL_10:
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16;
}

uint64_t sub_197985E6C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  sub_197948484(v0 + OBJC_IVAR____TtC20ModelManagerServices20RunningBoardProvider____lazy_storage___processEventStream, &qword_1EAF48A88, &unk_197A890F0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_197985ECC()
{
  sub_197985E6C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for RunningBoardProvider()
{
  result = qword_1ED87E420;
  if (!qword_1ED87E420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_197985F4C()
{
  sub_197986014();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_197986014()
{
  if (!qword_1ED87DF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48A80, qword_197A890B0);
    v0 = sub_197A87DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED87DF50);
    }
  }
}

uint64_t sub_1979860A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_197A87898();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v22 = a1 + 32;
    while (v5 < *(a1 + 16))
    {
      v6 = *(v22 + 4 * v5);
      v7 = v3[2];
      if (v7)
      {
        v8 = sub_197A40860(*(v22 + 4 * v5));
        if (v9)
        {
          v7 = *(v3[7] + 8 * v8);
        }

        else
        {
          v7 = 0;
        }
      }

      v10 = v7 + 1;
      if (v7 == -1)
      {
        goto LABEL_20;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_197A40860(v6);
      if (__OFADD__(v3[2], (v12 & 1) == 0))
      {
        goto LABEL_21;
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AA8, &qword_197A89110);
      if (sub_197A87EB8())
      {
        v15 = sub_197A40860(v6);
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_23;
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
        *(v3[6] + 4 * v13) = v6;
        *(v3[7] + 8 * v13) = v10;
        v17 = v3[2];
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_22;
        }

        v3[2] = v19;
      }

      ++v5;

      if (v4 == v5)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_197A88288();
    __break(1u);
  }

  else
  {
LABEL_18:

    *a2 = v3;
  }

  return result;
}

void sub_19798627C(uint64_t a1, void *a2)
{
  v3 = sub_197A87AE8();

  [a2 setEndowmentNamespaces_];
}

uint64_t sub_1979862E8(void *a1)
{
  v1 = [a1 daemonJobLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_197A87938();

  return v3;
}

uint64_t sub_19798634C(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_197A87938();

  return v3;
}

uint64_t sub_1979863BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1979863FC()
{
  result = qword_1ED87DD60;
  if (!qword_1ED87DD60)
  {
    sub_197A87D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD60);
  }

  return result;
}

unint64_t sub_197986454()
{
  result = qword_1ED87DD70;
  if (!qword_1ED87DD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48A98, &unk_197A89100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DD70);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1979864D0()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_62();
  sub_1979671F8(v13, v14, &qword_1EAF48AB0, &unk_197A89150);
  v15 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v0, &qword_1EAF48AB0, &unk_197A89150);
  }

  else
  {
    sub_197A87BF8();
    (*(*(v15 - 8) + 8))(v0, v15);
  }

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947A40(v6, &qword_1EAF48AB0, &unk_197A89150);
    OUTLINED_FUNCTION_47_0();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();
  OUTLINED_FUNCTION_47_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
  swift_task_create();

  sub_197947A40(v6, &qword_1EAF48AB0, &unk_197A89150);

LABEL_9:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197986798()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87DF78);
  v1 = __swift_project_value_buffer(v0, qword_1ED87DF78);
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED880520);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Assertion.policy.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t Assertion.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_1979868BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_uuid;
  v4 = sub_197A87298();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Assertion.__allocating_init(policy:description:collection:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_63_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);
  OUTLINED_FUNCTION_59();

  return Assertion.init(policy:description:collection:)();
}

uint64_t Assertion.init(policy:description:collection:)()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_28(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v10 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_197986A58()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v9 = *(v0 + 16);
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  sub_197A87238();
  *(v2 + 32) = v5;
  *(v2 + 40) = v4;
  *(v2 + 16) = v9;
  *(v2 + OBJC_IVAR____TtC20ModelManagerServices9Assertion_collection) = v3;

  Assertion.daemonRep.getter();
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_197986B58;
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_32_1(*(v0 + 64));

  return sub_19798951C();
}

uint64_t sub_197986B58()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *(v4 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 80) = v0;

  sub_19798A20C(v6);
  if (v0)
  {
    v10 = sub_197986CE0;
  }

  else
  {
    v10 = sub_197986C74;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_197986C74()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[8];
  v2 = v0[6];

  OUTLINED_FUNCTION_68_0();
  v4 = v0[7];

  return v3(v4);
}

uint64_t sub_197986CE0()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  OUTLINED_FUNCTION_13();
  v5 = v0[10];

  return v4();
}

void Assertion.daemonRep.getter()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v6 = *(v0 + 4);
  v5 = *(v0 + 5);
  v7 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_timestamp;
  v8 = type metadata accessor for Assertion.DaemonRep(0);
  v9 = v8[6];
  v10 = sub_197A87258();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 16))(&v2[v9], &v0[v7]);
  v12 = v8[7];
  v13 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_uuid;
  v14 = sub_197A87298();
  OUTLINED_FUNCTION_6(v14);
  (*(v15 + 16))(&v2[v12], &v0[v13]);
  sub_197A878A8();
  sub_197A878A8();
  v16 = getpid();
  *v2 = v4;
  *(v2 + 1) = v3;
  *(v2 + 2) = v6;
  *(v2 + 3) = v5;
  *&v2[v8[8]] = v16;
  OUTLINED_FUNCTION_66();
}

uint64_t Assertion.__allocating_init(policy:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_4(sub_197986E58);
}

uint64_t sub_197986E58()
{
  OUTLINED_FUNCTION_18();
  if (qword_1ED87DFB8 != -1)
  {
    OUTLINED_FUNCTION_38();
  }

  v1 = v0[6];
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_197986F40;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  OUTLINED_FUNCTION_32_1(v0[2]);

  return Assertion.init(policy:description:collection:)();
}

uint64_t sub_197986F40()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  OUTLINED_FUNCTION_68_0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

void Assertion.deinit()
{
  OUTLINED_FUNCTION_67();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860) - 8);
  OUTLINED_FUNCTION_23();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v32 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_collection;
  v17 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices9Assertion_collection);
  v18 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_uuid;
  v19 = sub_197A87298();
  OUTLINED_FUNCTION_70(v19);
  v21 = v20;
  (*(v20 + 16))(v16, v0 + v18, v19);
  v22 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v22);
  sub_1979671F8(v16, v14, &qword_1EAF48AB8, &qword_197A92860);
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v17;
  sub_19798C52C(v14, v24 + v23);
  swift_retain_n();
  sub_19795CB2C();

  sub_197947A40(v16, &qword_1EAF48AB8, &qword_197A92860);
  v25 = *(v0 + 24);

  v26 = *(v0 + 40);

  (*(v21 + 8))(v0 + v18, v19);
  v27 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_timestamp;
  v28 = sub_197A87258();
  OUTLINED_FUNCTION_6(v28);
  (*(v29 + 8))(v0 + v27);
  v30 = *(v0 + v32);

  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979872E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return sub_19798A4C4();
}

uint64_t Assertion.__deallocating_deinit()
{
  Assertion.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Assertion.DaemonRep.init(policy:description:timestamp:id:acquirerPID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for Assertion.DaemonRep(0);
  v13 = v12[6];
  v14 = sub_197A87258();
  OUTLINED_FUNCTION_6(v14);
  (*(v15 + 32))(&a8[v13], a5);
  result = sub_19798C52C(a6, &a8[v12[7]]);
  *&a8[v12[8]] = a7;
  return result;
}

uint64_t Assertion.hash(into:)()
{
  v0 = type metadata accessor for Assertion.DaemonRep(0);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  Assertion.daemonRep.getter();
  v6 = *(v1 + 36);
  sub_197A87298();
  OUTLINED_FUNCTION_1_1();
  sub_1979736EC(v7, 255, v8);
  OUTLINED_FUNCTION_60();
  sub_197A878F8();
  return sub_19798A20C(v5);
}

uint64_t static Assertion.== infix(_:_:)()
{
  v0 = type metadata accessor for Assertion.DaemonRep(0);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  Assertion.daemonRep.getter();
  Assertion.daemonRep.getter();
  v8 = *(v1 + 36);
  v9 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
  sub_19798A20C(v5);
  sub_19798A20C(v7);
  return v9 & 1;
}

uint64_t static Assertion.DaemonRep.== infix(_:_:)()
{
  v0 = *(type metadata accessor for Assertion.DaemonRep(0) + 28);

  return _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t Assertion.invalidate()()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_78_0();
  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979876E4()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtC20ModelManagerServices9Assertion_collection);
  v4 = OBJC_IVAR____TtC20ModelManagerServices9Assertion_uuid;
  v5 = sub_197A87298();
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(v1, v2 + v4);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1979877C4;
  OUTLINED_FUNCTION_32_1(v0[3]);

  return sub_19798A4C4();
}

uint64_t sub_1979877C4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  sub_197947A40(v3, &qword_1EAF48AB8, &qword_197A92860);

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t Assertion.hashValue.getter()
{
  sub_197A882F8();
  Assertion.hash(into:)();
  return sub_197A88358();
}

uint64_t sub_197987918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static Assertion.== infix(_:_:)() & 1;
}

uint64_t sub_197987984()
{
  v1 = *v0;
  sub_197A882F8();
  Assertion.hash(into:)();
  return sub_197A88358();
}

uint64_t Assertion.DaemonRep.policy.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t Assertion.DaemonRep.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t Assertion.DaemonRep.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Assertion.DaemonRep(0) + 24);
  v4 = sub_197A87258();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Assertion.DaemonRep.init(policy:description:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for Assertion.DaemonRep(0);
  v9 = a6 + v8[6];
  sub_197A87238();
  sub_1979671F8(a5, a6 + v8[7], &qword_1EAF48AB8, &qword_197A92860);
  v10 = getpid();
  result = sub_197947A40(a5, &qword_1EAF48AB8, &qword_197A92860);
  *(a6 + v8[8]) = v10;
  return result;
}

uint64_t Assertion.DaemonRep.receivedFromPID(_:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = *v0;
  v5 = *(v0 + 1);
  v8 = *(v0 + 2);
  v7 = *(v0 + 3);
  v9 = type metadata accessor for Assertion.DaemonRep(0);
  v10 = v9[6];
  v11 = sub_197A87258();
  OUTLINED_FUNCTION_6(v11);
  (*(v12 + 16))(&v4[v10], &v0[v10]);
  sub_1979671F8(&v0[v9[7]], &v4[v9[7]], &qword_1EAF48AB8, &qword_197A92860);
  *v4 = v6;
  *(v4 + 1) = v5;
  *(v4 + 2) = v8;
  *(v4 + 3) = v7;
  *&v4[v9[8]] = v2;
  sub_197A878A8();
  OUTLINED_FUNCTION_66();

  return sub_197A878A8();
}

uint64_t Assertion.DaemonRep.hash(into:)()
{
  v0 = *(type metadata accessor for Assertion.DaemonRep(0) + 28);
  sub_197A87298();
  OUTLINED_FUNCTION_1_1();
  sub_1979736EC(v1, 255, v2);
  OUTLINED_FUNCTION_60();
  return sub_197A878F8();
}

uint64_t sub_197987D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7963696C6F70 && a2 == 0xE600000000000000;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7265726975716361 && a2 == 0xEB00000000444950)
        {

          return 4;
        }

        else
        {
          v10 = sub_197A88218();

          if (v10)
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

uint64_t sub_197987ED8(char a1)
{
  result = 0x7963696C6F70;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0x6D617473656D6974;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x7265726975716361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197987F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197987D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197987FC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197987EC4();
  *a1 = result;
  return result;
}

uint64_t sub_197987FF0(uint64_t a1)
{
  v2 = sub_19798C688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19798802C(uint64_t a1)
{
  v2 = sub_19798C688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Assertion.DaemonRep.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AC0, &qword_197A89180);
  OUTLINED_FUNCTION_34_0();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19798C688();
  sub_197A883D8();
  v14 = *v3;
  v15 = v3[1];
  v25[15] = 0;
  OUTLINED_FUNCTION_58();
  sub_197A880B8();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v25[14] = 1;
    OUTLINED_FUNCTION_58();
    sub_197A880B8();
    v18 = type metadata accessor for Assertion.DaemonRep(0);
    v19 = v18[6];
    v25[13] = 2;
    sub_197A87258();
    OUTLINED_FUNCTION_27_1();
    sub_1979736EC(v20, 255, v21);
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v22 = v18[7];
    v25[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
    sub_19798C6DC(&qword_1ED87E8B0);
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v23 = *(v3 + v18[8]);
    v25[11] = 4;
    OUTLINED_FUNCTION_58();
    sub_197A880F8();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t Assertion.DaemonRep.hashValue.getter()
{
  sub_197A882F8();
  v0 = *(type metadata accessor for Assertion.DaemonRep(0) + 28);
  sub_197A87298();
  OUTLINED_FUNCTION_1_1();
  sub_1979736EC(v1, 255, v2);
  OUTLINED_FUNCTION_76();
  return sub_197A88358();
}

uint64_t Assertion.DaemonRep.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_6(v45);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v46 = v43 - v6;
  v7 = sub_197A87258();
  OUTLINED_FUNCTION_34_0();
  v47 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AC8, &qword_197A89188);
  OUTLINED_FUNCTION_34_0();
  v48 = v16;
  v49 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v43 - v20;
  v22 = type metadata accessor for Assertion.DaemonRep(0);
  v23 = OUTLINED_FUNCTION_6(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_0();
  v28 = (v27 - v26);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19798C688();
  v50 = v21;
  v30 = v51;
  sub_197A883A8();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = v14;
  v56 = 0;
  v32 = sub_197A87FA8();
  v34 = v33;
  *v28 = v32;
  v28[1] = v33;
  v55 = 1;
  v28[2] = sub_197A87FA8();
  v28[3] = v35;
  v54 = 2;
  OUTLINED_FUNCTION_27_1();
  sub_1979736EC(v36, 255, v37);
  v51 = 0;
  sub_197A87FD8();
  v43[1] = v34;
  (*(v47 + 32))(v28 + v22[6], v31, v7);
  v53 = 3;
  sub_19798C6DC(&qword_1EAF48680);
  v38 = v46;
  sub_197A87FD8();
  sub_19798C52C(v38, v28 + v22[7]);
  v52 = 4;
  v39 = sub_197A87FE8();
  v40 = OUTLINED_FUNCTION_69();
  v41(v40);
  *(v28 + v22[8]) = v39;
  sub_19798C72C(v28, v44);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_19798A20C(v28);
}

uint64_t sub_197988818(uint64_t a1, uint64_t a2)
{
  sub_197A882F8();
  v3 = *(a2 + 28);
  sub_197A87298();
  OUTLINED_FUNCTION_1_1();
  sub_1979736EC(v4, 255, v5);
  OUTLINED_FUNCTION_76();
  return sub_197A88358();
}

uint64_t sub_1979888B0()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_19796E1D4;
  OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return ModelServiceClient.acquireAssertion(assertion:)();
}

uint64_t Assertion.LiveDaemonInterface.invalidate(_:)()
{
  OUTLINED_FUNCTION_9();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64) + 15;
  v0[3] = swift_task_alloc();
  v0[4] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197988A00()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_197988AB8;
  v2 = OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return ModelServiceClient.releaseAssertion(id:)(v2);
}

uint64_t sub_197988AB8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197988BE4, 0, 0);
  }

  else
  {
    v10 = v3[3];
    v9 = v3[4];

    OUTLINED_FUNCTION_13();

    return v11();
  }
}

uint64_t sub_197988BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  if (qword_1ED87DF70 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v27 = *(v24 + 48);
  v28 = *(v24 + 32);
  v29 = *(v24 + 16);
  v30 = sub_197A87608();
  __swift_project_value_buffer(v30, qword_1ED87DF78);
  v31 = OUTLINED_FUNCTION_22();
  sub_1979671F8(v31, v32, v33, v34);
  MEMORY[0x19A8EBBD0](v27);
  v35 = sub_197A875E8();
  v36 = sub_197A87D68();

  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v24 + 32);
  if (v37)
  {
    v39 = *(v24 + 24);
    a11 = *(v24 + 48);
    v40 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    a13 = a12;
    *v40 = 136315394;
    sub_1979671F8(v38, v39, &qword_1EAF48AB8, &qword_197A92860);
    v41 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v43 = v42;
    sub_197947A40(v39, &qword_1EAF48AB8, &qword_197A92860);
    sub_197947A40(v38, &qword_1EAF48AB8, &qword_197A92860);
    v44 = sub_197948834(v41, v43, &a13);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2112;
    MEMORY[0x19A8EBBD0](a11);
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v45;
    *a10 = v45;
    _os_log_impl(&dword_197941000, v35, v36, "Error occurred while releasing assertion [%s]: %@", v40, 0x16u);
    sub_197947A40(a10, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_42_0();
    __swift_destroy_boxed_opaque_existential_1Tm(a12);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    sub_197947A40(v38, &qword_1EAF48AB8, &qword_197A92860);
  }

  v47 = *(v24 + 24);
  v46 = *(v24 + 32);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_0();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197988E5C()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_43(v1);

  return ModelServiceClient.fetchAllAssertions()(v3);
}

uint64_t sub_197988F08()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  OUTLINED_FUNCTION_68_0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_19798900C()
{
  OUTLINED_FUNCTION_9();
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_19796E2B4;
  v2 = OUTLINED_FUNCTION_32_1(*(v0 + 16));

  return ModelServiceClient.restoreAssertions(_:)(v2);
}

uint64_t sub_1979890C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960E38;

  return Assertion.LiveDaemonInterface.acquire(_:)(a1);
}

uint64_t sub_19798915C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19795BD18;

  return Assertion.LiveDaemonInterface.invalidate(_:)();
}

uint64_t sub_1979891F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19798E644;

  return Assertion.LiveDaemonInterface.fetchAll()();
}

uint64_t sub_19798927C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return Assertion.LiveDaemonInterface.restore(_:)(a1);
}

uint64_t sub_197989310(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_197A878A8();
  return sub_197989374(v4);
}

uint64_t sub_19798933C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  return sub_197A878A8();
}

uint64_t sub_197989374(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_197989438(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_34_0();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a2(v12, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

uint64_t sub_19798951C()
{
  OUTLINED_FUNCTION_18();
  v16 = *MEMORY[0x1E69E9840];
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_197A87768();
  v1[22] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_23();
  v1[23] = v5;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = type metadata accessor for Assertion.DaemonRep(0);
  v1[27] = v8;
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_197989660()
{
  v48 = v0;
  v47[1] = *MEMORY[0x1E69E9840];
  v1 = v0[30];
  v2 = v0[21];
  sub_19798C72C(v0[20], v0[29]);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_60();
  sub_197A7FE14();
  LOBYTE(v2) = v3;
  sub_19798A20C(v1);
  swift_endAccess();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_45();

    OUTLINED_FUNCTION_13();
    v25 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_75_1();

    __asm { BRAA            X1, X16 }
  }

  type metadata accessor for _OSActivity();
  v0[31] = swift_initStackObject();
  v0[32] = sub_1979489D4("Acquiring Assertion", 19, 2);
  if (qword_1ED87DF70 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v4 = v0[28];
  v5 = v0[20];
  v6 = sub_197A87608();
  v0[33] = __swift_project_value_buffer(v6, qword_1ED87DF78);
  v7 = OUTLINED_FUNCTION_22();
  sub_19798C72C(v7, v8);
  v9 = sub_197A875E8();
  v10 = sub_197A87D78();
  if (OUTLINED_FUNCTION_65(v10))
  {
    v11 = v0[30];
    v13 = v0[27];
    v12 = v0[28];
    v14 = OUTLINED_FUNCTION_56();
    v15 = swift_slowAlloc();
    v47[0] = v15;
    *v14 = 136315138;
    sub_19798C72C(v12, v11);
    v16 = sub_197A87988();
    v18 = v17;
    sub_19798A20C(v12);
    v19 = sub_197948834(v16, v18, v47);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_53();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    v28 = v0[28];

    sub_19798A20C(v28);
  }

  v29 = v0[21];
  if (*(v29 + 120))
  {
    v30 = *(OUTLINED_FUNCTION_15_0(v29) + 8);
    OUTLINED_FUNCTION_23();
    v46 = v31 + *v31;
    v33 = *(v32 + 4);
    v34 = swift_task_alloc();
    v0[35] = v34;
    *v34 = v0;
    OUTLINED_FUNCTION_24_0(v34);
    v35 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_11(v36);
    OUTLINED_FUNCTION_75_1();

    __asm { BRAA            X4, X16 }
  }

  *(v29 + 120) = 1;
  if (qword_1ED880250 != -1)
  {
    swift_once();
  }

  v39 = v0[21];
  v0[34] = qword_1ED881808;

  v40 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_75_1();

  return MEMORY[0x1EEE6DFA0](v41, v42, v43);
}

uint64_t sub_197989A34()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_47_0();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_19798E518;
  *(v4 + 24) = v2;
  OUTLINED_FUNCTION_46();

  v5 = *(v1 + 128);
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 128);
  sub_197A25238(sub_19798E520, v4, v3);
  *(v1 + 128) = v8;

  swift_endAccess();

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_197989B94, v2, 0);
}

uint64_t sub_197989B94()
{
  OUTLINED_FUNCTION_33();
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(OUTLINED_FUNCTION_15_0(*(v0 + 168)) + 8);
  OUTLINED_FUNCTION_23();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_24_0(v5);
  v6 = *MEMORY[0x1E69E9840];
  v8 = OUTLINED_FUNCTION_11(v7);

  return v10(v8);
}

uint64_t sub_197989CA8()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *(v2 + 280);
  *v4 = *v1;
  *(v3 + 288) = v0;

  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_197989EDC;
  }

  else
  {
    v7 = sub_197989DF8;
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_197989DF8()
{
  OUTLINED_FUNCTION_33();
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 256);
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_45();

  OUTLINED_FUNCTION_13();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_197989EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  *(v24 + 152) = *(v24 + 288);
  v27 = *(v24 + 208);
  v28 = *(v24 + 176);
  MEMORY[0x19A8EBBD0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_22();
  if (swift_dynamicCast())
  {
    v29 = *(v24 + 264);
    v31 = *(v24 + 200);
    v30 = *(v24 + 208);
    v33 = *(v24 + 184);
    v32 = *(v24 + 192);
    v34 = *(v24 + 176);

    (*(v33 + 32))(v31, v30, v34);
    (*(v33 + 16))(v32, v31, v34);
    v35 = sub_197A875E8();
    v36 = sub_197A87D58();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v24 + 192);
    v39 = *(v24 + 200);
    v41 = *(v24 + 176);
    v40 = *(v24 + 184);
    if (v37)
    {
      a11 = *(v24 + 200);
      v42 = OUTLINED_FUNCTION_56();
      v43 = swift_slowAlloc();
      a12 = v43;
      *v42 = 136315138;
      v44 = sub_197A87758();
      v46 = v45;
      a10 = v41;
      v47 = *(v40 + 8);
      v47(v38, v41);
      v48 = sub_197948834(v44, v46, &a12);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_197941000, v35, v36, "Acquiring assertion caught XPC error: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();

      v47(a11, v41);
    }

    else
    {

      v58 = *(v40 + 8);
      v58(v38, v41);
      v58(v39, v41);
    }

    v59 = *(v24 + 256);
    OUTLINED_FUNCTION_46();
    os_activity_scope_leave((v59 + 24));
    swift_endAccess();

    OUTLINED_FUNCTION_45();

    OUTLINED_FUNCTION_13();
    v60 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v49 = *(v24 + 256);
    v51 = *(v24 + 232);
    v50 = *(v24 + 240);
    v52 = *(v24 + 224);
    v54 = *(v24 + 200);
    v53 = *(v24 + 208);
    v55 = *(v24 + 192);

    OUTLINED_FUNCTION_46();
    os_activity_scope_leave((v49 + 24));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
    v56 = *(v24 + 288);
    v57 = *MEMORY[0x1E69E9840];
  }

  OUTLINED_FUNCTION_30_0();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_19798A20C(uint64_t a1)
{
  v2 = type metadata accessor for Assertion.DaemonRep(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19798A268(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  if (a1)
  {
    v8 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;

    sub_19795CB2C();
  }

  else
  {
    if (qword_1ED87DF70 != -1)
    {
      swift_once();
    }

    v10 = sub_197A87608();
    __swift_project_value_buffer(v10, qword_1ED87DF78);
    v15 = sub_197A875E8();
    v11 = sub_197A87D78();
    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_197941000, v15, v11, "Can't retry modelmanagerd connection. Assertions cannot be restored.", v12, 2u);
      MEMORY[0x19A8EBE00](v12, -1, -1);
    }

    v13 = v15;
  }
}

uint64_t sub_19798A434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return sub_19798B6B8();
}

uint64_t sub_19798A4C4()
{
  OUTLINED_FUNCTION_18();
  v14 = *MEMORY[0x1E69E9840];
  v1[16] = v2;
  v1[17] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for Assertion.DaemonRep(0);
  OUTLINED_FUNCTION_28(v6);
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_78_0();
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19798A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v119 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  inited = swift_initStackObject();
  *(v18 + 176) = inited;
  *(v18 + 184) = sub_1979489D4("Invalidating Assertion", 22, 2);
  v21 = *(v18 + 136);
  if (*(v21 + 168))
  {
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v23 = sub_197A87608();
    __swift_project_value_buffer(v23, qword_1ED87DF78);
    v24 = sub_197A875E8();
    v25 = sub_197A87D78();
    if (OUTLINED_FUNCTION_65(v25))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      OUTLINED_FUNCTION_53();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v16 = *(v18 + 136);

    inited = *(v16 + 168);
    *(v18 + 192) = inited;
    if (inited)
    {
      v31 = *(MEMORY[0x1E69E86C0] + 4);

      v32 = swift_task_alloc();
      *(v18 + 200) = v32;
      *v32 = v18;
      OUTLINED_FUNCTION_25_1(v32);
      v33 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_30_0();

      return MEMORY[0x1EEE6DA40](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, v119, a14, a15, a16);
    }

    v21 = *(v18 + 136);
  }

  OUTLINED_FUNCTION_64();
  v42 = *(v21 + 112);
  *(swift_task_alloc() + 16) = inited;
  sub_197A878A8();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_54();
  *(v18 + 208) = v16;
  *(v18 + 216) = v17;
  *(v18 + 232) = inited;

  if (v19)
  {
    v43 = *(v18 + 168);
    OUTLINED_FUNCTION_46();
    v44 = OUTLINED_FUNCTION_60();
    sub_19798D21C(v44, v45, v46);
    sub_19798A20C(v43);
    swift_endAccess();
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v47 = *(v18 + 160);
    v48 = OUTLINED_FUNCTION_79_2();
    __swift_project_value_buffer(v48, qword_1ED87DF78);
    v49 = OUTLINED_FUNCTION_22();
    sub_1979671F8(v49, v50, v51, v52);
    v53 = sub_197A875E8();
    v54 = sub_197A87D78();
    v55 = OUTLINED_FUNCTION_48(v54);
    v56 = *(v18 + 160);
    if (v55)
    {
      v57 = *(v18 + 152);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61_1();
      *v43 = 136315138;
      v58 = OUTLINED_FUNCTION_40();
      sub_1979671F8(v58, v59, v60, &qword_197A92860);
      _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v61 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_55_1(v61);
      v62 = OUTLINED_FUNCTION_40();
      v64 = sub_197947A40(v62, v63, &qword_197A92860);
      OUTLINED_FUNCTION_51(v64, v65, v66);
      OUTLINED_FUNCTION_77_0();
      *(v43 + 4) = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_31(&dword_197941000, v67, v68, "Invalidating assertion: %s");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      sub_197947A40(v56, &qword_1EAF48AB8, &qword_197A92860);
    }

    v91 = *(OUTLINED_FUNCTION_15_0(*(v18 + 136)) + 16);
    OUTLINED_FUNCTION_23();
    v117 = v93 + *v93;
    v118 = v92;
    v95 = *(v94 + 4);
    v96 = swift_task_alloc();
    *(v18 + 224) = v96;
    *v96 = v18;
    OUTLINED_FUNCTION_19_0(v96);
    v97 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_11(v98);
    OUTLINED_FUNCTION_30_0();

    return v103(v99, v100, v101, v102, v103, v104, v105, v106, v117, v118, a11, a12, v119, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v69 = *(v18 + 144);
    v70 = OUTLINED_FUNCTION_79_2();
    __swift_project_value_buffer(v70, qword_1ED87DF78);
    v71 = OUTLINED_FUNCTION_22();
    sub_1979671F8(v71, v72, v73, v74);
    v75 = sub_197A875E8();
    v76 = sub_197A87D78();
    if (OUTLINED_FUNCTION_48(v76))
    {
      v78 = *(v18 + 144);
      v77 = *(v18 + 152);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61_1();
      *v42 = 136315138;
      v79 = OUTLINED_FUNCTION_40();
      sub_1979671F8(v79, v80, v81, &qword_197A92860);
      _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v82 = OUTLINED_FUNCTION_36();
      v83 = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_55_1(v82);
      v84 = OUTLINED_FUNCTION_40();
      v86 = sub_197947A40(v84, v85, &qword_197A92860);
      OUTLINED_FUNCTION_51(v86, v87, v88);
      OUTLINED_FUNCTION_77_0();
      *(v42 + 4) = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_31(&dword_197941000, v89, v90, "Assertion %s has already been removed.");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {
      v83 = *(v18 + 144);

      sub_197947A40(v83, &qword_1EAF48AB8, &qword_197A92860);
    }

    OUTLINED_FUNCTION_14_0();
    os_activity_scope_leave((v83 + 3));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
    v107 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_30_0();

    return v109(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, v119, a14, a15, a16);
  }
}

uint64_t sub_19798AB28()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19798AC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_72();
  v119 = *MEMORY[0x1E69E9840];
  v21 = *(v19 + 136);
  if (*(v21 + 168))
  {
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v23 = sub_197A87608();
    __swift_project_value_buffer(v23, qword_1ED87DF78);
    v24 = sub_197A875E8();
    v25 = sub_197A87D78();
    if (OUTLINED_FUNCTION_65(v25))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      OUTLINED_FUNCTION_53();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v16 = *(v19 + 136);

    v17 = *(v16 + 168);
    *(v19 + 192) = v17;
    if (v17)
    {
      v31 = *(MEMORY[0x1E69E86C0] + 4);

      v32 = swift_task_alloc();
      *(v19 + 200) = v32;
      *v32 = v19;
      OUTLINED_FUNCTION_25_1();
      v33 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_30_0();

      return MEMORY[0x1EEE6DA40](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, v119, a14, a15, a16);
    }

    v21 = *(v19 + 136);
  }

  OUTLINED_FUNCTION_64();
  v42 = *(v21 + 112);
  *(swift_task_alloc() + 16) = v17;
  sub_197A878A8();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_54();
  *(v19 + 208) = v16;
  *(v19 + 216) = v18;
  *(v19 + 232) = v17;

  if (v20)
  {
    v43 = *(v19 + 168);
    OUTLINED_FUNCTION_46();
    v44 = OUTLINED_FUNCTION_60();
    sub_19798D21C(v44, v45, v46);
    sub_19798A20C(v43);
    swift_endAccess();
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v47 = *(v19 + 160);
    v48 = OUTLINED_FUNCTION_79_2();
    __swift_project_value_buffer(v48, qword_1ED87DF78);
    v49 = OUTLINED_FUNCTION_22();
    sub_1979671F8(v49, v50, v51, v52);
    v53 = sub_197A875E8();
    v54 = sub_197A87D78();
    v55 = OUTLINED_FUNCTION_48(v54);
    v56 = *(v19 + 160);
    if (v55)
    {
      v57 = *(v19 + 152);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61_1();
      *v43 = 136315138;
      v58 = OUTLINED_FUNCTION_40();
      sub_1979671F8(v58, v59, v60, &qword_197A92860);
      _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v61 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_55_1(v61);
      v62 = OUTLINED_FUNCTION_40();
      v64 = sub_197947A40(v62, v63, &qword_197A92860);
      OUTLINED_FUNCTION_51(v64, v65, v66);
      OUTLINED_FUNCTION_77_0();
      *(v43 + 4) = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_31(&dword_197941000, v67, v68, "Invalidating assertion: %s");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      sub_197947A40(v56, &qword_1EAF48AB8, &qword_197A92860);
    }

    v91 = *(OUTLINED_FUNCTION_15_0(*(v19 + 136)) + 16);
    OUTLINED_FUNCTION_23();
    v117 = v93 + *v93;
    v118 = v92;
    v95 = *(v94 + 4);
    v96 = swift_task_alloc();
    *(v19 + 224) = v96;
    *v96 = v19;
    OUTLINED_FUNCTION_19_0(v96);
    v97 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_11(v98);
    OUTLINED_FUNCTION_30_0();

    return v103(v99, v100, v101, v102, v103, v104, v105, v106, v117, v118, a11, a12, v119, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (!v22)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v69 = *(v19 + 144);
    v70 = OUTLINED_FUNCTION_79_2();
    __swift_project_value_buffer(v70, qword_1ED87DF78);
    v71 = OUTLINED_FUNCTION_22();
    sub_1979671F8(v71, v72, v73, v74);
    v75 = sub_197A875E8();
    v76 = sub_197A87D78();
    if (OUTLINED_FUNCTION_48(v76))
    {
      v78 = *(v19 + 144);
      v77 = *(v19 + 152);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61_1();
      *v42 = 136315138;
      v79 = OUTLINED_FUNCTION_40();
      sub_1979671F8(v79, v80, v81, &qword_197A92860);
      _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v82 = OUTLINED_FUNCTION_36();
      v83 = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_55_1(v82);
      v84 = OUTLINED_FUNCTION_40();
      v86 = sub_197947A40(v84, v85, &qword_197A92860);
      OUTLINED_FUNCTION_51(v86, v87, v88);
      OUTLINED_FUNCTION_77_0();
      *(v42 + 4) = &qword_1EAF48AB8;
      OUTLINED_FUNCTION_31(&dword_197941000, v89, v90, "Assertion %s has already been removed.");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {
      v83 = *(v19 + 144);

      sub_197947A40(v83, &qword_1EAF48AB8, &qword_197A92860);
    }

    OUTLINED_FUNCTION_14_0();
    os_activity_scope_leave((v83 + 3));
    swift_endAccess();

    OUTLINED_FUNCTION_13();
    v107 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_30_0();

    return v109(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, v119, a14, a15, a16);
  }
}

uint64_t sub_19798B1B0()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v2 + 136);
  if (v0)
  {

    v7 = sub_19798E5D4;
  }

  else
  {
    v7 = sub_19798B308;
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_19798B308()
{
  OUTLINED_FUNCTION_33();
  v5 = *MEMORY[0x1E69E9840];
  sub_19798E49C(*(v1 + 208), *(v1 + 216), *(v1 + 232));
  OUTLINED_FUNCTION_14_0();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

unint64_t sub_19798B42C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a1;
  v6 = type metadata accessor for Assertion.DaemonRep(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_19798E10C(a3);
  v11 = a3 + 56;
  v31 = a3 + 64;
  if (v12)
  {
    __break(1u);
    return 0;
  }

  else
  {
    while (1)
    {
      v13 = *(a3 + 36);
      if (v13 != v10)
      {
        break;
      }

      v14 = 1 << *(a3 + 32);
      if (result == v14)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0 || result >= v14)
      {
        goto LABEL_25;
      }

      v35 = v10;
      v15 = result >> 6;
      v16 = 1 << result;
      if ((*(v11 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_26;
      }

      v36 = v13;
      v17 = v32;
      v18 = result;
      sub_19798C72C(*(a3 + 48) + *(v33 + 72) * result, v32);
      v19 = v4;
      v20 = v34(v17);
      result = sub_19798A20C(v17);
      if (v19)
      {
        return result;
      }

      if (v20)
      {
        return v18;
      }

      v21 = 1 << *(a3 + 32);
      if (v18 >= v21)
      {
        goto LABEL_27;
      }

      v22 = *(v11 + 8 * v15);
      if ((v22 & v16) == 0)
      {
        goto LABEL_28;
      }

      if (*(a3 + 36) != v36)
      {
        goto LABEL_29;
      }

      v23 = v18;
      v24 = v22 & (-2 << (v18 & 0x3F));
      if (v24)
      {
        v21 = __clz(__rbit64(v24)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v27 = (v31 + 8 * v15);
        while (v26 < (v21 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_19798E46C(v23, v35, 0);
            v21 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        sub_19798E46C(v23, v35, 0);
      }

LABEL_19:
      v10 = *(a3 + 36);
      result = v21;
      v4 = 0;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_19798B6B8()
{
  OUTLINED_FUNCTION_9();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64);
  *(v1 + 24) = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19798B740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_18();
  v18 = v16[2];
  v17 = v16[3];
  v19 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  v21 = sub_1979736EC(qword_1ED87D7D8, v20, type metadata accessor for Assertion.Collection);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v18;
  swift_retain_n();
  sub_19795CB2C();
  v24 = v23;
  v16[4] = v23;
  v25 = *(v18 + 168);
  *(v18 + 168) = v23;

  v26 = *(MEMORY[0x1E69E86C0] + 4);
  v27 = swift_task_alloc();
  v16[5] = v27;
  *v27 = v16;
  v27[1] = sub_19798B8AC;
  v33 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v27, v24, v33, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_19798B8AC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19798B9A8()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_19798BA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  *(v4 + 128) = a4;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_19798BA98, a4, 0);
}

void sub_19798BA98()
{
  v24[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  v0[17] = swift_initStackObject();
  v0[18] = sub_1979489D4("Restoring Assertions", 20, 2);
  if (qword_1ED87DF70 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v2 = v0[16];
  v3 = sub_197A87608();
  v0[19] = __swift_project_value_buffer(v3, qword_1ED87DF78);

  v4 = sub_197A875E8();
  v5 = sub_197A87D78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_61_1();
    *v1 = 136315138;
    swift_beginAccess();
    v7 = *(v6 + 112);
    v8 = sub_197A878A8();
    v9 = sub_19798C11C(v8);

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
    v11 = MEMORY[0x19A8EADB0](v9, v10);
    v13 = v12;

    v14 = sub_197948834(v11, v13, v24);

    *(v1 + 4) = v14;
    _os_log_impl(&dword_197941000, v4, v5, "Restoring assertions: %s", v1, 0xCu);
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_29();
  }

  v15 = v0[16];
  v16 = v15[20];
  __swift_project_boxed_opaque_existential_1(v15 + 16, v15[19]);
  swift_beginAccess();
  v0[20] = v15[14];
  v17 = *(v16 + 32);
  sub_197A878A8();
  v23 = v17 + *v17;
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_19798BD90;
  v20 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_75_1();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_19798BD90()
{
  OUTLINED_FUNCTION_18();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v2[22] = v0;

  if (v0)
  {
    v8 = v2[16];
    v9 = *MEMORY[0x1E69E9840];
    v10 = sub_19798BF90;
  }

  else
  {
    v11 = v2[20];
    v12 = v2[16];

    v13 = *MEMORY[0x1E69E9840];
    v10 = sub_19798BEF4;
    v8 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, 0);
}

uint64_t sub_19798BEF4()
{
  OUTLINED_FUNCTION_9();
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t sub_19798BF90()
{
  OUTLINED_FUNCTION_33();
  v14 = *MEMORY[0x1E69E9840];
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];

  MEMORY[0x19A8EBBD0](v1);
  v4 = sub_197A875E8();
  v5 = sub_197A87D58();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_56();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x19A8EBBD0](v7);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_197941000, v4, v5, "Failed to restore all assertions: %@", v8, 0xCu);
    sub_197947A40(v9, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v4 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_19798C11C(uint64_t a1)
{
  v3 = type metadata accessor for Assertion.DaemonRep(0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v33 = v1;
  v43 = MEMORY[0x1E69E7CC0];
  v40 = v8;
  sub_19798CC74(0, v11, 0);
  v12 = v43;
  result = sub_19798E10C(v40);
  v15 = result;
  v16 = v40;
  v18 = v17;
  v19 = 0;
  v42 = v40 + 56;
  v34 = v40 + 64;
  v35 = v11;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v15 < 1 << *(v16 + 32))
    {
      v20 = v15 >> 6;
      if ((*(v42 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v16 + 36) != v14)
      {
        goto LABEL_25;
      }

      v41 = v14;
      v21 = v37;
      sub_19798C72C(*(v16 + 48) + *(v38 + 72) * v15, v37);
      sub_1979671F8(v21 + *(v39 + 28), v10, &qword_1EAF48AB8, &qword_197A92860);
      sub_19798A20C(v21);
      v43 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_19798CC74(v22 > 1, v23 + 1, 1);
        v12 = v43;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v10;
      result = sub_19798C52C(v10, v12 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23);
      if (v18)
      {
        goto LABEL_29;
      }

      v16 = v40;
      v25 = 1 << *(v40 + 32);
      if (v15 >= v25)
      {
        goto LABEL_26;
      }

      v26 = *(v42 + 8 * v20);
      if ((v26 & (1 << v15)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v40 + 36) != v41)
      {
        goto LABEL_28;
      }

      v27 = v26 & (-2 << (v15 & 0x3F));
      if (v27)
      {
        v25 = __clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v20 << 6;
        v29 = v20 + 1;
        v30 = (v34 + 8 * v20);
        while (v29 < (v25 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_19798E46C(v15, v41, 0);
            v16 = v40;
            v25 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_19798E46C(v15, v41, 0);
        v16 = v40;
      }

LABEL_19:
      if (++v19 == v35)
      {
        return v12;
      }

      v18 = 0;
      v14 = *(v16 + 36);
      v15 = v25;
      v10 = v24;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_19798C4B4()
{
  type metadata accessor for Assertion.Collection();
  v0 = swift_allocObject();
  v3 = &type metadata for Assertion.LiveDaemonInterface;
  v4 = &protocol witness table for Assertion.LiveDaemonInterface;
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CD0];
  *(v0 + 120) = 0;
  *(v0 + 168) = 0;
  result = sub_197945EF8(&v2, v0 + 128);
  qword_1ED87DFC0 = v0;
  return result;
}

uint64_t sub_19798C52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19798C59C()
{
  OUTLINED_FUNCTION_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860);
  OUTLINED_FUNCTION_28(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  *v8 = v9;
  v8[1] = sub_197960FB0;
  OUTLINED_FUNCTION_7();

  return sub_1979872E4();
}

unint64_t sub_19798C688()
{
  result = qword_1ED87E930[0];
  if (!qword_1ED87E930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED87E930);
  }

  return result;
}

uint64_t sub_19798C6DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48AB8, &qword_197A92860);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19798C72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Assertion.Collection.default.getter()
{
  if (qword_1ED87DFB8 != -1)
  {
    OUTLINED_FUNCTION_38();
  }
}

void *Assertion.Collection.deinit()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v2 = v0[21];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Assertion.Collection.__deallocating_deinit()
{
  Assertion.Collection.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_19798C868(uint64_t a1, unint64_t a2)
{
  v4 = sub_19798C8B4(a1, a2);
  sub_19798C9CC(&unk_1F0C0CE00);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_19798C8B4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_197A879D8())
  {
    result = sub_19798CAB0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_197A87E48();
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
          result = sub_197A87E98();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19798C9CC(uint64_t result)
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

    result = sub_19798CB20(result, v8, 1, v3);
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

void *sub_19798CAB0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B10, &qword_197A895E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_19798CB20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B10, &qword_197A895E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_19798CC14(uint64_t a1, int64_t a2, char a3)
{
  result = sub_19798CC94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_19798CC34(uint64_t a1, int64_t a2, char a3)
{
  result = sub_19798CD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19798CC54(size_t a1, int64_t a2, char a3)
{
  result = sub_19798CEA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19798CC74(size_t a1, int64_t a2, char a3)
{
  result = sub_19798D050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_19798CC94(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_197A1F528((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_19798CD94(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AF0, &qword_197A895C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_197984484((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AF8, &qword_197A895C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_19798CEA4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B00, &qword_197A895D0);
  v10 = *(sub_197A87298() - 8);
  OUTLINED_FUNCTION_23();
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (!v12)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v14 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_24;
  }

  v15[2] = v8;
  v15[3] = 2 * ((result - v14) / v12);
LABEL_19:
  v17 = sub_197A87298();
  OUTLINED_FUNCTION_70(v17);
  if (v5)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_197A1F548(a4 + v19, v8, v15 + v19);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_19798D050(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE8, &qword_197A895B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB8, &qword_197A92860) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_197A1F560(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_19798D21C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v10 = *v4, 1 << *(*v4 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v10 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v10 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    sub_197A80F54();
    v10 = v13;
  }

  v11 = *(v10 + 48);
  v12 = type metadata accessor for Assertion.DaemonRep(0);
  sub_19798E4B4(v11 + *(*(v12 - 8) + 72) * a1, a3);
  sub_197A8198C();
  *v4 = v13;
}

uint64_t sub_19798D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  type metadata accessor for Assertion.Collection();
  v13 = swift_allocObject();
  (*(v6 + 16))(v10, v12, a3);
  v14 = sub_19798D448(v10, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_19798D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  *(a2 + 112) = MEMORY[0x1E69E7CD0];
  *(a2 + 120) = 0;
  *(a2 + 168) = 0;
  sub_197945EF8(&v9, a2 + 128);
  return a2;
}

uint64_t dispatch thunk of AssertionDaemonInterface.acquire(_:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_23();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_0(v8);

  return v11(v10);
}

uint64_t dispatch thunk of AssertionDaemonInterface.invalidate(_:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 16);
  OUTLINED_FUNCTION_23();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_0(v8);

  return v11(v10);
}

uint64_t dispatch thunk of AssertionDaemonInterface.fetchAll()()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_23();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_43(v9);

  return v12(v3, v1);
}

uint64_t sub_19798D8A0()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  OUTLINED_FUNCTION_68_0();

  return v7(v2);
}

uint64_t dispatch thunk of AssertionDaemonInterface.restore(_:)()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_37_0(v0, v1, v2) + 32);
  OUTLINED_FUNCTION_23();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_0(v8);

  return v11(v10);
}

uint64_t sub_19798DA8C()
{
  result = sub_197A87298();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_197A87258();
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

uint64_t dispatch thunk of Assertion.__allocating_init(policy:description:collection:)()
{
  OUTLINED_FUNCTION_63_0();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_23();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_43(v6);
  v8 = OUTLINED_FUNCTION_59();

  return v10(v8);
}

void sub_19798DCC4()
{
  sub_197A87258();
  if (v0 <= 0x3F)
  {
    sub_19798DD60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19798DD60()
{
  if (!qword_1ED880650)
  {
    type metadata accessor for Assertion(255);
    v0 = type metadata accessor for UUIDIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED880650);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Assertion.LiveDaemonInterface(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for Assertion.DaemonRep.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_19798E008()
{
  result = qword_1EAF48AD8;
  if (!qword_1EAF48AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48AD8);
  }

  return result;
}

unint64_t sub_19798E060()
{
  result = qword_1ED87E920;
  if (!qword_1ED87E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E920);
  }

  return result;
}

unint64_t sub_19798E0B8()
{
  result = qword_1ED87E928;
  if (!qword_1ED87E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E928);
  }

  return result;
}

uint64_t sub_19798E10C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_197A87E08();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_19798E14C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_19798E240;

  return v6(v2 + 32);
}

uint64_t sub_19798E240()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  *v6 = *(v2 + 32);
  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t sub_19798E33C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_71_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_0(v1);

  return v4(v3);
}

uint64_t sub_19798E3CC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960E38;
  v7 = OUTLINED_FUNCTION_7();

  return sub_19798BA08(v7, v8, v2, v3);
}

uint64_t sub_19798E46C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_19798E49C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_19798E46C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_19798E4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19798E528()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;
  OUTLINED_FUNCTION_7();

  return sub_19798A434();
}

uint64_t sub_19798E5D4()
{
  OUTLINED_FUNCTION_9();
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_19798B308();
}

uint64_t sub_19798E6B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_197990B74(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  OUTLINED_FUNCTION_52_1();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t InferenceError.Context.additionalDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t InferenceError.Context.domain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t InferenceError.Context.underlyingError.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = sub_197A87548();
    OUTLINED_FUNCTION_7_0();
    v7 = sub_19798FA98(v5, v6);
  }

  else
  {
    v4 = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v7;
}

uint64_t InferenceError.Context.retryAfter.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_58_1();

  return sub_19798E8A4(v1 + v3, a1);
}

uint64_t sub_19798E8A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19798E914()
{
  OUTLINED_FUNCTION_67();
  v2 = sub_197A87558();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_65_0();
  v12 = v0[7];
  if (v12)
  {
    v33 = sub_197A87548();
    OUTLINED_FUNCTION_7_0();
    v34 = sub_19798FA98(v13, v14);
    *&v32 = v12;
    sub_197945EF8(&v32, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E78, &qword_197A8D7E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_197A88E50;
    sub_197945EF8(v35, v15 + 32);
  }

  else if ((sub_19798EBA8() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E78, &qword_197A8D7E0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_197A88E50;
    v30 = v0[4];
    v31 = v0[2];
    v27 = v0[3];
    v28 = v0[5];
    v17 = v0[1];
    v29 = *v0;
    OUTLINED_FUNCTION_58_1();
    sub_19798E8A4(v0 + v18, v1);
    v19 = *(v5 + 16);
    OUTLINED_FUNCTION_71_1();
    v20();
    v21 = sub_197A87548();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    sub_197A878A8();
    sub_197A878A8();
    v24 = sub_197A87538();
    *(v16 + 56) = v21;
    OUTLINED_FUNCTION_7_0();
    *(v16 + 64) = sub_19798FA98(v25, v26);
    *(v16 + 32) = v24;
  }

  OUTLINED_FUNCTION_66();
}

uint64_t sub_19798EBA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  if (*v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 8) == 0xE000000000000000;
  }

  if (!v7 && (sub_197A88218() & 1) == 0 || (*(v0 + 16) || *(v0 + 24) != 0xE000000000000000) && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 32))
  {
    return 0;
  }

  v8 = *(v0 + 40);
  v9 = sub_197A87898();
  LOBYTE(v8) = sub_19798F578(v8, v9);

  if ((v8 & 1) == 0 || (*(v0 + 48) & 1) != 0 || *(v0 + 56))
  {
    return 0;
  }

  OUTLINED_FUNCTION_58_1();
  sub_19798E8A4(v0 + v12, v6);
  v13 = sub_197A87258();
  OUTLINED_FUNCTION_64_0(v6, 1, v13);
  v10 = v7;
  sub_197947A40(v6, &qword_1EAF48B20, &qword_197A89620);
  return v10;
}

void InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)()
{
  OUTLINED_FUNCTION_67();
  v57 = v2;
  v55 = v3;
  v56 = v4;
  v53 = v5;
  v54 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v14 = OUTLINED_FUNCTION_28(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_27();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_76_0();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  OUTLINED_FUNCTION_71_1();
  sub_197947A40(v29, v30, v31);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v25);
  sub_19798E8A4(v0, v1);
  *v12 = v10;
  *(v12 + 8) = v8;
  v35 = v54;
  *(v12 + 16) = v53;
  *(v12 + 24) = v35;
  v36 = v56;
  *(v12 + 32) = v55;
  *(v12 + 40) = v36;
  *(v12 + 48) = v57;
  *(v12 + 56) = 0;
  sub_19798E8A4(v1, v19);
  LODWORD(v8) = __swift_getEnumTagSinglePayload(v19, 1, v25);
  OUTLINED_FUNCTION_71_1();
  sub_197947A40(v37, v38, v39);
  OUTLINED_FUNCTION_71_1();
  sub_197947A40(v40, v41, v42);
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v25);
    OUTLINED_FUNCTION_64_0(v19, 1, v25);
    if (!v46)
    {
      sub_197947A40(v19, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0(v25);
    (*(v47 + 32))(v23, v19, v25);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v25);
  }

  OUTLINED_FUNCTION_58_1();
  sub_19798F508(v23, v12 + v51);
  OUTLINED_FUNCTION_66();
}

void InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v58 = v10;
  v59 = v11;
  v56 = v12;
  v57 = v13;
  v55 = v14;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v18 = OUTLINED_FUNCTION_28(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v52 - v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_77_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_76_0();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  if (v5)
  {
    v54 = v9;
    v60 = v5;
    MEMORY[0x19A8EBBD0](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B30, &qword_197A89638);
    if (swift_dynamicCast())
    {
      if (*(&v62 + 1))
      {
        sub_197945EF8(&v61, v64);
        v53 = v7;
        v52[1] = v64[4];
        __swift_project_boxed_opaque_existential_1(v64, v64[3]);
        LOBYTE(v7) = v53;
        sub_197A87568();
        sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
        sub_19798F508(v3, v1);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        v9 = v54;
        goto LABEL_9;
      }
    }

    else
    {
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
    }

    sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
    v9 = v54;
  }

  else
  {
    sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  sub_197947A40(&v61, &qword_1EAF48B28, &unk_197A89628);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v27);
LABEL_9:
  sub_19798E8A4(v1, v2);
  v34 = v56;
  *v16 = v55;
  *(v16 + 8) = v34;
  v35 = v58;
  *(v16 + 16) = v57;
  *(v16 + 24) = v35;
  *(v16 + 32) = v59;
  *(v16 + 40) = v9;
  *(v16 + 48) = v7 & 1;
  if (v5)
  {
    sub_197A87548();
    MEMORY[0x19A8EBBD0](v5);
    v36 = sub_197A87528();
  }

  else
  {
    v36 = 0;
  }

  *(v16 + 56) = v36;
  sub_19798E8A4(v2, v0);
  v37 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_64_0(v37, v38, v27);
  if (v39)
  {
    if (v36)
    {
      sub_197A87518();

      OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_75_2();
    }

    else
    {

      OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_75_2();
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v27);
    }

    v49 = OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_64_0(v49, v50, v27);
    if (!v39)
    {
      sub_197947A40(v0, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {

    OUTLINED_FUNCTION_73_0();
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_36_0(v27);
    v41 = *(v40 + 32);
    OUTLINED_FUNCTION_71_1();
    v42();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v27);
  }

  OUTLINED_FUNCTION_58_1();
  sub_19798F508(v24, v16 + v51);
  OUTLINED_FUNCTION_66();
}

void InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:retryAfter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_67();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v63 = a21;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v41 = OUTLINED_FUNCTION_28(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v44);
  v64 = &v63 - v45;
  *v39 = v37;
  *(v39 + 8) = v35;
  *(v39 + 16) = v33;
  *(v39 + 24) = v31;
  *(v39 + 32) = v29;
  *(v39 + 40) = v27;
  *(v39 + 48) = v25;
  if (v23)
  {
    sub_197A87548();
    MEMORY[0x19A8EBBD0](v23);
    v46 = sub_197A87528();
  }

  else
  {
    v46 = 0;
  }

  *(v39 + 56) = v46;
  v47 = v63;
  sub_19798E8A4(v63, v21);
  v48 = sub_197A87258();
  v49 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_64_0(v49, v50, v48);
  v51 = v64;
  if (v52)
  {
    if (v46)
    {
      sub_197A87518();

      sub_197947A40(v47, &qword_1EAF48B20, &qword_197A89620);
    }

    else
    {
      sub_197947A40(v47, &qword_1EAF48B20, &qword_197A89620);

      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v48);
    }

    v60 = OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_64_0(v60, v61, v48);
    if (!v52)
    {
      sub_197947A40(v21, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    sub_197947A40(v47, &qword_1EAF48B20, &qword_197A89620);

    OUTLINED_FUNCTION_36_0(v48);
    (*(v53 + 32))(v51, v21, v48);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v48);
  }

  OUTLINED_FUNCTION_58_1();
  sub_19798F508(v51, v39 + v62);
  OUTLINED_FUNCTION_66();
}

uint64_t sub_19798F508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19798F578(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];
    sub_197A878A8();
    sub_197A878A8();
    v20 = sub_197A407F0();
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_197A88218();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void static InferenceError.Context.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v4 = v3;
  v6 = v5;
  v7 = sub_197A87258();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_80_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B38, &qword_197A89640);
  OUTLINED_FUNCTION_6(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66_0();
  v21 = *v6 == *v4 && *(v6 + 8) == *(v4 + 8);
  if (v21 || (sub_197A88218() & 1) != 0)
  {
    v22 = *(v6 + 16) == *(v4 + 16) && *(v6 + 24) == *(v4 + 24);
    if (v22 || (sub_197A88218()) && *(v6 + 32) == *(v4 + 32) && (sub_19798F578(*(v6 + 40), *(v4 + 40)) & 1) != 0 && *(v6 + 48) == *(v4 + 48))
    {
      v23 = *(v4 + 56);
      if (*(v6 + 56))
      {
        v36 = *(v6 + 56);
        if (!v23)
        {
          goto LABEL_14;
        }

        v35 = *(v4 + 56);
        sub_197A87548();
        OUTLINED_FUNCTION_7_0();
        sub_19798FA98(v24, v25);

        v26 = sub_197A87918();

        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (v23)
      {
        goto LABEL_14;
      }

      v27 = *(type metadata accessor for InferenceError.Context(0) + 40);
      v28 = *(v17 + 48);
      sub_19798E8A4(v6 + v27, v1);
      sub_19798E8A4(v4 + v27, v1 + v28);
      v29 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_64_0(v29, v30, v7);
      if (v21)
      {
        OUTLINED_FUNCTION_64_0(v1 + v28, 1, v7);
        if (v21)
        {
          sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
          goto LABEL_14;
        }
      }

      else
      {
        sub_19798E8A4(v1, v2);
        OUTLINED_FUNCTION_64_0(v1 + v28, 1, v7);
        if (!v31)
        {
          (*(v10 + 32))(v0, v1 + v28, v7);
          OUTLINED_FUNCTION_23_0();
          sub_19798FA98(v32, v33);
          sub_197A87918();
          v34 = *(v10 + 8);
          v34(v0, v7);
          v34(v2, v7);
          sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
          goto LABEL_14;
        }

        (*(v10 + 8))(v2, v7);
      }

      sub_197947A40(v1, &qword_1EAF48B38, &qword_197A89640);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_19798FA98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19798FAE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000197AA2100 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701080931 && a2 == 0xE400000000000000;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6B6361626C6C6166 && a2 == 0xEF6465776F6C6C41;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x8000000197AA2120 == a2;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7466417972746572 && a2 == 0xEA00000000007265)
            {

              return 6;
            }

            else
            {
              v12 = sub_197A88218();

              if (v12)
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

unint64_t sub_19798FD30(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 1701080931;
      break;
    case 3:
      result = 0x6F666E4972657375;
      break;
    case 4:
      result = 0x6B6361626C6C6166;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x7466417972746572;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_19798FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19798FAE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19798FE3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19798FD28();
  *a1 = result;
  return result;
}

uint64_t sub_19798FE64(uint64_t a1)
{
  v2 = sub_197990188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19798FEA0(uint64_t a1)
{
  v2 = sub_197990188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceError.Context.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B50, &qword_197A89648);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66_0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_49();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_197990188();
  sub_197A883D8();
  v15 = *v3;
  v16 = v3[1];
  OUTLINED_FUNCTION_55();
  sub_197A880B8();
  if (!v2)
  {
    v17 = v3[2];
    v18 = v3[3];
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    v19 = v3[4];
    OUTLINED_FUNCTION_55();
    sub_197A880D8();
    v30 = v3[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    sub_19796471C(&qword_1ED87FC00);
    OUTLINED_FUNCTION_48_0();
    sub_197A880E8();
    v20 = *(v3 + 48);
    OUTLINED_FUNCTION_55();
    sub_197A880C8();
    v31 = v3[7];
    sub_197A87548();
    OUTLINED_FUNCTION_7_0();
    sub_19798FA98(v21, v22);
    OUTLINED_FUNCTION_48_0();
    sub_197A88098();
    v23 = *(type metadata accessor for InferenceError.Context(0) + 40);
    sub_197A87258();
    OUTLINED_FUNCTION_23_0();
    sub_19798FA98(v24, v25);
    OUTLINED_FUNCTION_48_0();
    sub_197A88098();
  }

  v26 = *(v7 + 8);
  v27 = OUTLINED_FUNCTION_61();
  return v28(v27);
}

unint64_t sub_197990188()
{
  result = qword_1ED87F068;
  if (!qword_1ED87F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F068);
  }

  return result;
}

uint64_t InferenceError.Context.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B60, &qword_197A89658);
  OUTLINED_FUNCTION_2(v9);
  v34 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_65_0();
  v14 = type metadata accessor for InferenceError.Context(0);
  v15 = OUTLINED_FUNCTION_6(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197990188();
  sub_197A883A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v35) = 0;
  *v20 = sub_197A87FA8();
  *(v20 + 8) = v22;
  OUTLINED_FUNCTION_51_0(1);
  *(v20 + 16) = sub_197A87FA8();
  *(v20 + 24) = v23;
  OUTLINED_FUNCTION_51_0(2);
  *(v20 + 32) = sub_197A87FC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
  sub_19796471C(&qword_1ED87F888);
  OUTLINED_FUNCTION_57_0();
  sub_197A87FD8();
  *(v20 + 40) = v35;
  OUTLINED_FUNCTION_51_0(4);
  *(v20 + 48) = sub_197A87FB8() & 1;
  sub_197A87548();
  OUTLINED_FUNCTION_7_0();
  sub_19798FA98(v24, v25);
  OUTLINED_FUNCTION_57_0();
  sub_197A87F88();
  *(v20 + 56) = v35;
  sub_197A87258();
  OUTLINED_FUNCTION_23_0();
  sub_19798FA98(v26, v27);
  sub_197A87F88();
  v28 = *(v34 + 8);
  v29 = OUTLINED_FUNCTION_49();
  v30(v29);
  sub_19798F508(v3, v20 + *(v14 + 40));
  sub_197990B74(v20, a2, type metadata accessor for InferenceError.Context);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  OUTLINED_FUNCTION_6_1();
  return sub_197990BD0(v20, v31);
}

uint64_t InferenceError.caseName.getter()
{
  v2 = type metadata accessor for InferenceError(0);
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v0, v1, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 8u:
    case 0xFu:
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_1_2();
      sub_197990BD0(v1, v7);
      break;
    case 0x10u:
      sub_197990BD0(v1, type metadata accessor for InferenceError);
      goto LABEL_6;
    case 0x12u:
    case 0x16u:
    case 0x18u:
      return OUTLINED_FUNCTION_63();
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x17u:
LABEL_6:
      OUTLINED_FUNCTION_38_0();
      break;
    default:
      sub_197990BD0(v1, type metadata accessor for InferenceError);
      break;
  }

  return OUTLINED_FUNCTION_63();
}

uint64_t sub_197990B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);
  return a2;
}

uint64_t sub_197990BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t InferenceError.description.getter()
{
  v0 = InferenceError.caseName.getter();
  v2 = v1;
  v3 = *(InferenceError.underlyingErrors.getter() + 16);

  if (!v3)
  {
    v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_5;
  }

  v14 = 14906;
  v15 = 0xE200000000000000;
  v4 = InferenceError.underlyingErrors.getter();
  sub_19797F3D0(v4, v11);

  if (v12)
  {
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = *(v6 + 24);
    v8 = sub_197A88148();
    MEMORY[0x19A8EAC80](v8);

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v10 = v14;
    v9 = v15;
LABEL_5:
    v11[0] = v0;
    v11[1] = v2;
    sub_197A878A8();
    MEMORY[0x19A8EAC80](v10, v9);

    return v11[0];
  }

  __break(1u);
  return result;
}

uint64_t InferenceError.underlyingErrors.getter()
{
  v3 = sub_197A87558();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  v9 = type metadata accessor for InferenceError(0);
  v10 = OUTLINED_FUNCTION_6(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_80_0();
  v13 = type metadata accessor for InferenceError.Context(0);
  v14 = OUTLINED_FUNCTION_28(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v0, v2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0xF || ((1 << EnumCaseMultiPayload) & 0xCFFF) == 0)
  {
    OUTLINED_FUNCTION_1_2();
    sub_197990BD0(v2, v29);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v23 = OUTLINED_FUNCTION_45_0();
    sub_19799747C(v23, v19, v24);
    InferenceError.category.getter(v1);
    sub_19798E914();
    v26 = v25;
    (*(v6 + 8))(v1, v3);
    OUTLINED_FUNCTION_6_1();
    sub_197990BD0(v19, v27);
  }

  return v26;
}

uint64_t InferenceError.context.getter()
{
  v2 = v0;
  v3 = type metadata accessor for InferenceError(0);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  v7 = type metadata accessor for InferenceError.Context(0);
  v8 = OUTLINED_FUNCTION_6(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v2, v1, v14);
  if (swift_getEnumCaseMultiPayload() > 0xF)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v7);
    OUTLINED_FUNCTION_1_2();
    return sub_197990BD0(v1, v25);
  }

  else
  {
    sub_19799747C(v1, v13, type metadata accessor for InferenceError.Context);
    v15 = OUTLINED_FUNCTION_61();
    sub_19799747C(v15, v16, type metadata accessor for InferenceError.Context);
    OUTLINED_FUNCTION_52_1();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }
}

void InferenceError.init(wrapping:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v121 = type metadata accessor for InferenceError.Context(0);
  v5 = OUTLINED_FUNCTION_6(v121);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_80_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v9 = OUTLINED_FUNCTION_28(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27();
  v119 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_35();
  v120 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35();
  v118 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v111 - v19;
  v20 = type metadata accessor for InferenceError(0);
  v21 = OUTLINED_FUNCTION_6(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_0();
  v116 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B68, &qword_197A89660);
  OUTLINED_FUNCTION_28(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v111 - v30;
  v32 = type metadata accessor for ModelManagerError();
  v33 = OUTLINED_FUNCTION_6(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_27();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v111 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B70, &unk_197A89668);
  OUTLINED_FUNCTION_28(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v111 - v46;
  v122 = v2;
  MEMORY[0x19A8EBBD0](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v20);
    OUTLINED_FUNCTION_4_1();
    sub_19799747C(v47, v4, v51);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_41();
  v115 = v20;
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v20);
  sub_197947A40(v47, &qword_1EAF48B70, &unk_197A89668);
  v122 = v2;
  MEMORY[0x19A8EBBD0](v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v32);
    sub_197947A40(v31, &qword_1EAF48B68, &qword_197A89660);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v32);
  sub_19799747C(v31, v41, type metadata accessor for ModelManagerError);
  sub_197990B74(v41, v38, type metadata accessor for ModelManagerError);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_197990BD0(v41, type metadata accessor for ModelManagerError);
    v58 = OUTLINED_FUNCTION_63();
    sub_197990BD0(v58, v59);
LABEL_7:
    v63 = sub_197A870D8();
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50();
    }

    v116 = v4;
    v64 = sub_197A87608();
    __swift_project_value_buffer(v64, qword_1ED880520);
    MEMORY[0x19A8EBBD0](v2);
    v65 = sub_197A875E8();
    v66 = sub_197A87D58();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      MEMORY[0x19A8EBBD0](v2);
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v69;
      *v68 = v69;
      _os_log_impl(&dword_197941000, v65, v66, "InferenceError: got unrecognized error %@", v67, 0xCu);
      sub_197947A40(v68, &qword_1EAF48A90, &qword_197A891A0);
      MEMORY[0x19A8EBE00](v68, -1, -1);
      MEMORY[0x19A8EBE00](v67, -1, -1);
    }

    v122 = v2;
    MEMORY[0x19A8EBBD0](v2);
    v70 = sub_197A87988();
    v113 = v71;
    v114 = v70;
    v72 = [v63 domain];
    v111 = sub_197A87938();
    v74 = v73;

    v75 = [v63 code];
    v112 = v63;
    v76 = v75;
    v77 = sub_197A87898();
    v78 = sub_197A87258();
    v79 = v117;
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v78);
    sub_197947A40(v79, &qword_1EAF48B20, &qword_197A89620);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v78);
    v86 = v118;
    sub_19798E8A4(v79, v118);
    v87 = v113;
    *v0 = v114;
    *(v0 + 8) = v87;
    *(v0 + 16) = v111;
    *(v0 + 24) = v74;
    *(v0 + 32) = v76;
    *(v0 + 40) = v77;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    v88 = v119;
    sub_19798E8A4(v86, v119);
    LODWORD(v76) = __swift_getEnumTagSinglePayload(v88, 1, v78);

    sub_197947A40(v86, &qword_1EAF48B20, &qword_197A89620);
    sub_197947A40(v79, &qword_1EAF48B20, &qword_197A89620);
    if (v76 == 1)
    {
      v89 = v120;
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v78);
      OUTLINED_FUNCTION_64_0(v88, 1, v78);
      v93 = v116;
      v94 = v121;
      if (!v95)
      {
        sub_197947A40(v88, &qword_1EAF48B20, &qword_197A89620);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_0(v78);
      v89 = v120;
      (*(v96 + 32))(v120, v88, v78);
      OUTLINED_FUNCTION_52_1();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
      v93 = v116;
      v94 = v121;
    }

    sub_19798F508(v89, v0 + *(v94 + 40));
    v101 = OUTLINED_FUNCTION_45_0();
    sub_19799747C(v101, v93, v102);
    swift_storeEnumTagMultiPayload();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_1();
  v103 = v116;
  sub_19799747C(v38, v116, v104);
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v103, v4, v105);
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50();
  }

  v106 = sub_197A87608();
  __swift_project_value_buffer(v106, qword_1ED880520);
  v107 = sub_197A875E8();
  v108 = sub_197A87D68();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_197941000, v107, v108, "Received a ModelManagerError wrapping an InferenceError", v109, 2u);
    MEMORY[0x19A8EBE00](v109, -1, -1);
  }

  OUTLINED_FUNCTION_1_2();
  sub_197990BD0(v103, v110);
  sub_197990BD0(v41, type metadata accessor for ModelManagerError);
LABEL_16:
  OUTLINED_FUNCTION_66();
}

uint64_t InferenceError.errorCode.getter()
{
  v0 = type metadata accessor for InferenceError(0);
  v1 = OUTLINED_FUNCTION_6(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_3_1();
  v7 = OUTLINED_FUNCTION_63();
  sub_197990B74(v7, v8, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 2000;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2014;
      break;
    case 2:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2003;
      break;
    case 3:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2004;
      break;
    case 4:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2005;
      break;
    case 5:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2006;
      break;
    case 6:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2007;
      break;
    case 7:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2008;
      break;
    case 8:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2009;
      break;
    case 9:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2010;
      break;
    case 10:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2011;
      break;
    case 11:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2012;
      break;
    case 12:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2016;
      break;
    case 13:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2017;
      break;
    case 14:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 3001;
      break;
    case 15:
    case 16:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2001;
      break;
    case 17:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2015;
      break;
    case 18:
      return result;
    case 19:
      result = 2013;
      break;
    case 20:
      result = 2018;
      break;
    case 21:
      result = 2019;
      break;
    case 22:
      result = 2020;
      break;
    case 23:
      result = 2021;
      break;
    case 24:
      result = 3000;
      break;
    default:
      sub_197990BD0(v6, type metadata accessor for InferenceError);
      result = 2002;
      break;
  }

  return result;
}

uint64_t InferenceError.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B78, &qword_197A89678);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_60_0();
  InferenceError.context.getter();
  v7 = type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_64_0(v1, 1, v7);
  if (v8)
  {
    sub_197947A40(v1, &qword_1EAF48B78, &qword_197A89678);
    sub_197A87258();
    OUTLINED_FUNCTION_41();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    sub_19798E8A4(v1 + *(v7 + 40), a1);
    OUTLINED_FUNCTION_6_1();
    return sub_197990BD0(v1, v13);
  }
}

uint64_t InferenceError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InferenceError(0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v2, v10, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v12 = MEMORY[0x1E698C2A0];
      goto LABEL_14;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 0xEu:
      v12 = MEMORY[0x1E698C330];
      goto LABEL_14;
    case 8u:
      v12 = MEMORY[0x1E698C2F0];
      goto LABEL_14;
    case 9u:
      v12 = MEMORY[0x1E698C2B8];
      goto LABEL_14;
    case 0xAu:
      v12 = MEMORY[0x1E698C2C0];
      goto LABEL_14;
    case 0xCu:
      v12 = MEMORY[0x1E698C328];
      goto LABEL_14;
    case 0xDu:
      v12 = MEMORY[0x1E698C300];
      goto LABEL_14;
    case 0xFu:
      v12 = MEMORY[0x1E698C2C8];
      goto LABEL_14;
    case 0x10u:
      sub_197990BD0(v10, type metadata accessor for InferenceError);
      goto LABEL_12;
    case 0x11u:
      sub_197990BD0(v10, type metadata accessor for InferenceError);
      goto LABEL_16;
    case 0x12u:
LABEL_12:
      v13 = MEMORY[0x1E698C2C8];
      goto LABEL_17;
    case 0x13u:
      v13 = MEMORY[0x1E698C348];
      goto LABEL_17;
    case 0x14u:
      v13 = MEMORY[0x1E698C2F8];
      goto LABEL_17;
    case 0x15u:
    case 0x16u:
    case 0x18u:
LABEL_16:
      v13 = MEMORY[0x1E698C330];
      goto LABEL_17;
    case 0x17u:
      v13 = MEMORY[0x1E698C300];
LABEL_17:
      v19 = *v13;
      v20 = sub_197A87558();
      OUTLINED_FUNCTION_6(v20);
      result = (*(v21 + 104))(a1, v19);
      break;
    default:
      v12 = MEMORY[0x1E698C2B0];
LABEL_14:
      v14 = *v12;
      v15 = sub_197A87558();
      OUTLINED_FUNCTION_6(v15);
      (*(v16 + 104))(a1, v14);
      OUTLINED_FUNCTION_1_2();
      result = sub_197990BD0(v10, v17);
      break;
  }

  return result;
}

uint64_t sub_197991E20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C706D49746F6ELL && a2 == 0xEE006465746E656DLL;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000197AA1FD0 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x8000000197AA2070 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x8000000197AA2050 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C79646165726C61 && a2 == 0xED0000646564616FLL;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6564616F4C746F6ELL && a2 == 0xE900000000000064;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C69614664616F6CLL && a2 == 0xEA00000000006465;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x636E657265666E69 && a2 == 0xEF64656C69614665;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x8000000197AA2030 == a2;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x8000000197AA2010 == a2;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x8000000197AA1FF0 == a2;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6F4E6D6165727473 && a2 == 0xEE00646E756F4674;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x696D694C65746172 && a2 == 0xEB00000000646574;
                            if (v18 || (sub_197A88218() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245;
                              if (v19 || (sub_197A88218() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272;
                                if (v20 || (sub_197A88218() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x656372756F736572 && a2 == 0xED00007973754273;
                                  if (v21 || (sub_197A88218() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000016 && 0x8000000197AA2140 == a2;
                                    if (v22 || (sub_197A88218() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000015 && 0x8000000197AA2160 == a2;
                                      if (v23 || (sub_197A88218() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000013 && 0x8000000197AA2180 == a2;
                                        if (v24 || (sub_197A88218() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6F72724574736F68 && a2 == 0xE900000000000072;
                                          if (v25 || (sub_197A88218() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6C69614674736F68 && a2 == 0xEA00000000006465;
                                            if (v26 || (sub_197A88218() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001ALL && 0x8000000197AA2090 == a2;
                                              if (v27 || (sub_197A88218() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD00000000000001BLL && 0x8000000197AA20B0 == a2;
                                                if (v28 || (sub_197A88218() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0x726F727245637078 && a2 == 0xE800000000000000)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_197A88218();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
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

uint64_t sub_1979925B8(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x656C706D49746F6ELL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x4C79646165726C61;
      break;
    case 6:
      result = 0x6564616F4C746F6ELL;
      break;
    case 7:
      v3 = 1684107116;
      goto LABEL_18;
    case 8:
      result = 0x636E657265666E69;
      break;
    case 9:
    case 19:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x6F4E6D6165727473;
      break;
    case 13:
      result = 0x696D694C65746172;
      break;
    case 14:
      result = 0x6C616E7265746E69;
      break;
    case 15:
      result = 0x456B726F7774656ELL;
      break;
    case 16:
      result = 0x656372756F736572;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0x6F72724574736F68;
      break;
    case 21:
      v3 = 1953722216;
LABEL_18:
      result = v3 | 0x6C69614600000000;
      break;
    case 22:
      result = 0xD00000000000001ALL;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
      result = 0x726F727245637078;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979928B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197992928()
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](0);
  return sub_197A88358();
}

uint64_t sub_19799298C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197991E0C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1979929B8(uint64_t a1)
{
  v2 = sub_197997B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979929F4(uint64_t a1)
{
  v2 = sub_197997B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992A34(uint64_t a1)
{
  v2 = sub_197997970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992A70(uint64_t a1)
{
  v2 = sub_197997970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197991E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197992ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979925B0();
  *a1 = result;
  return result;
}

uint64_t sub_197992B04(uint64_t a1)
{
  v2 = sub_1979974D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992B40(uint64_t a1)
{
  v2 = sub_1979974D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992B7C(uint64_t a1)
{
  v2 = sub_197997778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992BB8(uint64_t a1)
{
  v2 = sub_197997778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992BF4(uint64_t a1)
{
  v2 = sub_197997724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992C30(uint64_t a1)
{
  v2 = sub_197997724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992C6C(uint64_t a1)
{
  v2 = sub_19799767C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992CA8(uint64_t a1)
{
  v2 = sub_19799767C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992CE4(uint64_t a1)
{
  v2 = sub_197997628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992D20(uint64_t a1)
{
  v2 = sub_197997628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992D5C(uint64_t a1)
{
  v2 = sub_197997A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992D98(uint64_t a1)
{
  v2 = sub_197997A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992DD4(uint64_t a1)
{
  v2 = sub_197997874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992E10(uint64_t a1)
{
  v2 = sub_197997874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992E4C(uint64_t a1)
{
  v2 = sub_197997C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992E88(uint64_t a1)
{
  v2 = sub_197997C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992EC4(uint64_t a1)
{
  v2 = sub_197997AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992F00(uint64_t a1)
{
  v2 = sub_197997AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992F3C(uint64_t a1)
{
  v2 = sub_197997820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992F78(uint64_t a1)
{
  v2 = sub_197997820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992FB4(uint64_t a1)
{
  v2 = sub_197997CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992FF0(uint64_t a1)
{
  v2 = sub_197997CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19799302C(uint64_t a1)
{
  v2 = sub_197997B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993068(uint64_t a1)
{
  v2 = sub_197997B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979930A4(uint64_t a1)
{
  v2 = sub_1979979C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979930E0(uint64_t a1)
{
  v2 = sub_1979979C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19799311C(uint64_t a1)
{
  v2 = sub_197997A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993158(uint64_t a1)
{
  v2 = sub_197997A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993194(uint64_t a1)
{
  v2 = sub_1979978C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979931D0(uint64_t a1)
{
  v2 = sub_1979978C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19799320C(uint64_t a1)
{
  v2 = sub_1979977CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993248(uint64_t a1)
{
  v2 = sub_1979977CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993284(uint64_t a1)
{
  v2 = sub_197997BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979932C0(uint64_t a1)
{
  v2 = sub_197997BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979932FC(uint64_t a1)
{
  v2 = sub_19799791C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993338(uint64_t a1)
{
  v2 = sub_19799791C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993374(uint64_t a1)
{
  v2 = sub_197997580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979933B0(uint64_t a1)
{
  v2 = sub_197997580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979933EC(uint64_t a1)
{
  v2 = sub_197997D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993428(uint64_t a1)
{
  v2 = sub_197997D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993464(uint64_t a1)
{
  v2 = sub_1979975D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979934A0(uint64_t a1)
{
  v2 = sub_1979975D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979934DC(uint64_t a1)
{
  v2 = sub_197997C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993518(uint64_t a1)
{
  v2 = sub_197997C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993554(uint64_t a1)
{
  v2 = sub_1979976D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993590(uint64_t a1)
{
  v2 = sub_1979976D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979935CC()
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](0);
  return sub_197A88358();
}

uint64_t sub_19799360C(uint64_t a1)
{
  v2 = sub_19799752C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993648(uint64_t a1)
{
  v2 = sub_19799752C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceError.encode(to:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B80, &qword_197A89680);
  v5 = OUTLINED_FUNCTION_2(v4);
  v311 = v6;
  v312 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v310 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B88, &qword_197A89688);
  v12 = OUTLINED_FUNCTION_2(v11);
  v308 = v13;
  v309 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v306 = v17;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B90, &qword_197A89690);
  OUTLINED_FUNCTION_2(v307);
  v305 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  v304 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B98, &qword_197A89698);
  v24 = OUTLINED_FUNCTION_2(v23);
  v302 = v25;
  v303 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  v301 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BA0, &qword_197A896A0);
  v31 = OUTLINED_FUNCTION_2(v30);
  v299 = v32;
  v300 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_30();
  v298 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BA8, &qword_197A896A8);
  OUTLINED_FUNCTION_2_1(v37, &v330);
  v296 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BB0, &qword_197A896B0);
  OUTLINED_FUNCTION_2_1(v43, &v327);
  v293 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BB8, &qword_197A896B8);
  OUTLINED_FUNCTION_2_1(v49, v321);
  v287 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BC0, &qword_197A896C0);
  OUTLINED_FUNCTION_2_1(v55, &v325);
  v291 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BC8, &qword_197A896C8);
  OUTLINED_FUNCTION_2_1(v61, &v318);
  v285 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BD0, &qword_197A896D0);
  OUTLINED_FUNCTION_2_1(v67, &v314);
  v281 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BD8, &qword_197A896D8);
  OUTLINED_FUNCTION_2_1(v73, &v311);
  v278 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BE0, &qword_197A896E0);
  OUTLINED_FUNCTION_2_1(v79, &v308);
  v275 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BE8, &qword_197A896E8);
  OUTLINED_FUNCTION_2_1(v85, &v305);
  v272 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BF0, &qword_197A896F0);
  OUTLINED_FUNCTION_2_1(v91, &v300);
  v266 = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BF8, &qword_197A896F8);
  OUTLINED_FUNCTION_2_1(v97, &v303);
  v270 = v98;
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C00, &qword_197A89700);
  OUTLINED_FUNCTION_2_1(v103, v297);
  v264 = v104;
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C08, &qword_197A89708);
  OUTLINED_FUNCTION_2_1(v109, &v293);
  v260 = v110;
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C10, &qword_197A89710);
  OUTLINED_FUNCTION_2_1(v115, v290);
  v257 = v116;
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C18, &qword_197A89718);
  OUTLINED_FUNCTION_2_1(v121, &v287);
  v256[30] = v122;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C20, &qword_197A89720);
  OUTLINED_FUNCTION_2_1(v127, v284);
  v256[27] = v128;
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C28, &qword_197A89728);
  OUTLINED_FUNCTION_2_1(v133, &v281);
  v256[24] = v134;
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C30, &qword_197A89730);
  OUTLINED_FUNCTION_2_1(v139, &v278);
  v256[21] = v140;
  v142 = *(v141 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C38, &qword_197A89738);
  OUTLINED_FUNCTION_2_1(v145, &v275);
  v256[18] = v146;
  v148 = *(v147 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v150);
  v313 = type metadata accessor for InferenceError.Context(0);
  v151 = OUTLINED_FUNCTION_6(v313);
  v153 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v165);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v168);
  v170 = v256 - v169;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C40, &qword_197A89740);
  OUTLINED_FUNCTION_2(v171);
  v256[1] = v172;
  v174 = *(v173 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_65_0();
  v176 = type metadata accessor for InferenceError(0);
  v177 = OUTLINED_FUNCTION_6(v176);
  v179 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_80_0();
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C48, &qword_197A89748);
  v315 = OUTLINED_FUNCTION_2(v180);
  v316 = v181;
  v183 = *(v182 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v184);
  v186 = v256 - v185;
  v187 = *(a1 + 24);
  v188 = *(a1 + 32);
  v189 = OUTLINED_FUNCTION_63();
  __swift_project_boxed_opaque_existential_1(v189, v190);
  sub_1979974D8();
  v314 = v186;
  sub_197A883D8();
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v318, v1, v191);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v258);
      v322 = 2;
      sub_197997C64();
      OUTLINED_FUNCTION_42_1(v276);
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v224, v225);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_1(&v278);
      v226 = OUTLINED_FUNCTION_24_1(v277);
      v227(v226, v1);
      OUTLINED_FUNCTION_6_1();
      v197 = v2;
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v259);
      v322 = 3;
      sub_197997C10();
      OUTLINED_FUNCTION_10_1(v279);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v216, v217);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v281);
      v208 = &v280;
      goto LABEL_26;
    case 3u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, &v260);
      v322 = 4;
      sub_197997BBC();
      OUTLINED_FUNCTION_10_1(v282);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v220, v221);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(v284);
      v208 = &v283;
      goto LABEL_26;
    case 4u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v261);
      v322 = 5;
      sub_197997B68();
      OUTLINED_FUNCTION_10_1(&v285);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v209, v210);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v287);
      v208 = &v286;
      goto LABEL_26;
    case 5u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v262);
      v322 = 6;
      sub_197997B14();
      OUTLINED_FUNCTION_10_1(v288);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v237, v238);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(v290);
      v208 = &v289;
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v263);
      v322 = 7;
      sub_197997AC0();
      OUTLINED_FUNCTION_10_1(&v291);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v241, v242);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v293);
      v208 = &v292;
      goto LABEL_26;
    case 7u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, &v264);
      v322 = 8;
      sub_197997A6C();
      OUTLINED_FUNCTION_10_1(v294);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v222, v223);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(v297);
      v208 = &v296;
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v265);
      v322 = 9;
      sub_197997A18();
      OUTLINED_FUNCTION_10_1(&v299);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v246, v247);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v303);
      v208 = &v302;
      goto LABEL_26;
    case 9u:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, &v266);
      v322 = 12;
      sub_19799791C();
      OUTLINED_FUNCTION_10_1(&v306);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v213, v214);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v308);
      v208 = &v307;
      goto LABEL_26;
    case 0xAu:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v267);
      v322 = 13;
      sub_1979978C8();
      OUTLINED_FUNCTION_10_1(&v309);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v244, v245);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v311);
      v208 = &v310;
      goto LABEL_26;
    case 0xBu:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v268);
      v322 = 14;
      sub_197997874();
      OUTLINED_FUNCTION_10_1(&v312);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v206, v207);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v314);
      v208 = &v313;
      goto LABEL_26;
    case 0xCu:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v269);
      v322 = 15;
      sub_197997820();
      OUTLINED_FUNCTION_10_1(&v315);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v211, v212);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v318);
      v208 = &v317;
      goto LABEL_26;
    case 0xDu:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, &v270);
      v322 = 16;
      sub_1979977CC();
      OUTLINED_FUNCTION_10_1(&v320);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v239, v240);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1(&v325);
      v208 = &v324;
LABEL_26:
      v205 = *(v208 - 32);
      goto LABEL_27;
    case 0xEu:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v271);
      v322 = 21;
      sub_197997628();
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v203, v204);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_26_1();
      v205 = v302;
      goto LABEL_27;
    case 0xFu:
      OUTLINED_FUNCTION_59_0(v1, type metadata accessor for InferenceError.Context, v273);
      v322 = 22;
      sub_1979975D4();
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v218, v219);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_26_1();
      v205 = v305;
LABEL_27:
      v248 = *(v205 + 8);
      v249 = OUTLINED_FUNCTION_61();
      v250(v249);
      OUTLINED_FUNCTION_6_1();
      sub_197990BD0(v2, v251);
      goto LABEL_28;
    case 0x10u:
      v199 = *v1;
      v198 = v1[1];
      v322 = 23;
      sub_197997580();
      v200 = v306;
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_61();
      v201 = v309;
      sub_197A880B8();

      v202 = v308;
      goto LABEL_17;
    case 0x11u:
      v233 = *v1;
      v232 = v1[1];
      v322 = 24;
      sub_19799752C();
      v200 = v310;
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_61();
      v201 = v312;
      sub_197A880B8();

      v202 = v311;
LABEL_17:
      (*(v202 + 8))(v200, v201);
LABEL_28:
      v231 = *(v316 + 8);
      v229 = v186;
      v230 = v1;
      goto LABEL_29;
    case 0x12u:
      v322 = 0;
      sub_197997D0C();
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_32(&v257);
      v235 = v2;
      v243 = v171;
      goto LABEL_34;
    case 0x13u:
      v322 = 10;
      sub_1979979C4();
      OUTLINED_FUNCTION_31_0(v295);
      OUTLINED_FUNCTION_32(&v298);
      v235 = v188;
      v236 = &v300;
      goto LABEL_33;
    case 0x14u:
      v322 = 11;
      sub_197997970();
      OUTLINED_FUNCTION_31_0(&v301);
      OUTLINED_FUNCTION_32(&v304);
      v235 = v188;
      v236 = &v305;
      goto LABEL_33;
    case 0x15u:
      v322 = 17;
      sub_197997778();
      OUTLINED_FUNCTION_31_0(&v316);
      OUTLINED_FUNCTION_32(v319);
      v235 = v188;
      v236 = v321;
      goto LABEL_33;
    case 0x16u:
      v322 = 18;
      sub_197997724();
      OUTLINED_FUNCTION_31_0(&v323);
      OUTLINED_FUNCTION_32(&v326);
      v235 = v188;
      v236 = &v327;
      goto LABEL_33;
    case 0x17u:
      v322 = 19;
      sub_1979976D0();
      OUTLINED_FUNCTION_31_0(&v328);
      OUTLINED_FUNCTION_32(&v329);
      v235 = v188;
      v236 = &v330;
LABEL_33:
      v243 = *(v236 - 32);
LABEL_34:
      v234(v235, v243);
      goto LABEL_35;
    case 0x18u:
      v322 = 20;
      sub_19799767C();
      v215 = v298;
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      (*(v299 + 8))(v215, v300);
LABEL_35:
      v253 = *(v316 + 8);
      v254 = OUTLINED_FUNCTION_63();
      result = v255(v254);
      break;
    default:
      sub_19799747C(v1, v170, type metadata accessor for InferenceError.Context);
      v322 = 1;
      sub_197997CB8();
      OUTLINED_FUNCTION_42_1(&v272);
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v192, v193);
      OUTLINED_FUNCTION_74_1(&v275);
      v194 = OUTLINED_FUNCTION_24_1(v274);
      v195(v194, v1);
      OUTLINED_FUNCTION_6_1();
      v197 = v170;
LABEL_15:
      sub_197990BD0(v197, v196);
      v228 = *(v316 + 8);
      v229 = OUTLINED_FUNCTION_61();
LABEL_29:
      result = v231(v229, v230);
      break;
  }

  return result;
}

void InferenceError.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v443 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D00, &qword_197A89750);
  OUTLINED_FUNCTION_2_1(v5, v451);
  v385 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v442 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D08, &qword_197A89758);
  OUTLINED_FUNCTION_2_1(v11, &v450);
  v384 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v441 = v16;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D10, &qword_197A89760);
  OUTLINED_FUNCTION_2(v444);
  v383 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v440 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D18, &qword_197A89768);
  OUTLINED_FUNCTION_2_1(v22, &v449);
  v382 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_30();
  v439 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D20, &qword_197A89770);
  OUTLINED_FUNCTION_2_1(v28, &v448);
  v415 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_30();
  v438 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D28, &qword_197A89778);
  OUTLINED_FUNCTION_2_1(v34, &v446);
  v413 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_30();
  v437 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D30, &qword_197A89780);
  OUTLINED_FUNCTION_2_1(v40, &v444);
  v411 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_30();
  v436 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D38, &qword_197A89788);
  OUTLINED_FUNCTION_2_1(v46, &v441);
  v408 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_30();
  v434 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D40, &qword_197A89790);
  OUTLINED_FUNCTION_2_1(v52, &v442);
  v381 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_30();
  v435 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D48, &qword_197A89798);
  OUTLINED_FUNCTION_2_1(v58, &v439);
  v380 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_30();
  v433 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D50, &qword_197A897A0);
  OUTLINED_FUNCTION_2_1(v64, &v438);
  v379 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_30();
  v432 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D58, &qword_197A897A8);
  OUTLINED_FUNCTION_2_1(v70, &v437);
  v378 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D60, &qword_197A897B0);
  OUTLINED_FUNCTION_2_1(v76, &v436);
  v377 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D68, &qword_197A897B8);
  OUTLINED_FUNCTION_2_1(v82, &v435);
  v402 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D70, &qword_197A897C0);
  OUTLINED_FUNCTION_2_1(v88, &v432);
  v399 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D78, &qword_197A897C8);
  OUTLINED_FUNCTION_2_1(v94, &v433);
  v376 = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D80, &qword_197A897D0);
  OUTLINED_FUNCTION_2_1(v100, v430);
  v375 = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D88, &qword_197A897D8);
  OUTLINED_FUNCTION_2_1(v106, v429);
  v374 = v107;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D90, &qword_197A897E0);
  OUTLINED_FUNCTION_2_1(v112, v428);
  v373 = v113;
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D98, &qword_197A897E8);
  OUTLINED_FUNCTION_2_1(v118, v427);
  v372 = v119;
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DA0, &qword_197A897F0);
  OUTLINED_FUNCTION_2_1(v124, v426);
  v371 = v125;
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_30();
  v448 = v129;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DA8, &qword_197A897F8);
  OUTLINED_FUNCTION_2_1(v130, v425);
  v370 = v131;
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DB0, &qword_197A89800);
  OUTLINED_FUNCTION_2_1(v136, v424);
  v369 = v137;
  v139 = *(v138 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_30();
  v447 = v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DB8, &qword_197A89808);
  OUTLINED_FUNCTION_2_1(v142, &v423);
  v368 = v143;
  v145 = *(v144 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DC0, &qword_197A89810);
  OUTLINED_FUNCTION_2_1(v148, v422);
  v389 = v149;
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v153);
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DC8, &qword_197A89818);
  OUTLINED_FUNCTION_2(v449);
  v445 = v154;
  v156 = *(v155 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_30();
  v451[1] = v158;
  v446 = type metadata accessor for InferenceError(0);
  v159 = OUTLINED_FUNCTION_6(v446);
  v161 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v165);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v172);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v173);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_77_1();
  v176 = MEMORY[0x1EEE9AC00](v175);
  v178 = &v360 - v177;
  v179 = MEMORY[0x1EEE9AC00](v176);
  v181 = &v360 - v180;
  v182 = MEMORY[0x1EEE9AC00](v179);
  v184 = &v360 - v183;
  MEMORY[0x1EEE9AC00](v182);
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v185);
  v187 = &v360 - v186;
  v188 = a1[3];
  v189 = a1[4];
  v450 = a1;
  v190 = OUTLINED_FUNCTION_63();
  __swift_project_boxed_opaque_existential_1(v190, v191);
  sub_1979974D8();
  v192 = v451[0];
  sub_197A883A8();
  if (v192)
  {
    goto LABEL_9;
  }

  v363 = v2;
  v364 = v184;
  v365 = v181;
  v366 = v178;
  v367 = v3;
  v193 = v447;
  v194 = v448;
  v195 = v446;
  v451[0] = v187;
  v196 = v449;
  v197 = sub_197A88028();
  sub_197952474(v197, 0);
  if (v200 == v201 >> 1)
  {
    goto LABEL_7;
  }

  v362 = 0;
  if (v200 >= (v201 >> 1))
  {
    __break(1u);
    return;
  }

  v361 = *(v199 + v200);
  sub_197953C00(v200 + 1, v201 >> 1, v198, v199, v200, v201);
  v203 = v202;
  v205 = v204;
  swift_unknownObjectRelease();
  if (v203 != v205 >> 1)
  {
LABEL_7:
    v211 = sub_197A87E88();
    swift_allocError();
    v213 = v212;
    v214 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820) + 48);
    *v213 = v195;
    sub_197A87F38();
    sub_197A87E78();
    v215 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_36_0(v211);
    (*(v216 + 104))(v213);
    swift_willThrow();
    swift_unknownObjectRelease();
    v217 = *(v445 + 8);
    v218 = OUTLINED_FUNCTION_49();
LABEL_8:
    v219(v218);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v450);
    return;
  }

  v206 = v444;
  switch(v361)
  {
    case 1:
      v452 = 1;
      sub_197997CB8();
      v249 = v421;
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v250, v251);
      v252 = v363;
      v253 = v391;
      sub_197A87FD8();
      if (v196)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_32(v392);
        v254(v249, v253);
        v218 = OUTLINED_FUNCTION_82_0();
        goto LABEL_8;
      }

      v362 = 0;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_32(v392);
      v328(v249, v253);
      v329 = OUTLINED_FUNCTION_82_0();
      v330(v329);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_1();
      v323 = v252;
      goto LABEL_65;
    case 2:
      v452 = 2;
      sub_197997C64();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v236, v237);
      OUTLINED_FUNCTION_42_1(v386);
      OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_32(v393);
      v312(v193, v194);
      v313 = OUTLINED_FUNCTION_39_1();
      v314(v313, v449);
      goto LABEL_56;
    case 3:
      v452 = 3;
      sub_197997C10();
      v240 = v423;
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v241, v242);
      OUTLINED_FUNCTION_42_1(v387);
      OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_32(v394);
      v319(v240, v194);
      v320 = OUTLINED_FUNCTION_39_1();
      v321(v320, v449);
LABEL_56:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_1();
      v323 = v193;
      goto LABEL_65;
    case 4:
      v452 = 4;
      sub_197997BBC();
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v229, v230);
      OUTLINED_FUNCTION_19_1(v388);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v231 = OUTLINED_FUNCTION_24_1(v395);
        v243(v231, v206);
        v244 = OUTLINED_FUNCTION_39_1();
        v246 = v449;
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_33_0();
      v297 = OUTLINED_FUNCTION_24_1(v395);
      v298(v297, v206);
      v299 = OUTLINED_FUNCTION_39_1();
      v300(v299, v449);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 5:
      v452 = 5;
      sub_197997B68();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v263, v264);
      OUTLINED_FUNCTION_19_1(&v389);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = v396;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v331 = OUTLINED_FUNCTION_9_0(v396);
      v332(v331);
      v333 = OUTLINED_FUNCTION_21_0();
      v334(v333);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 6:
      v452 = 6;
      sub_197997B14();
      OUTLINED_FUNCTION_12_1();
      type metadata accessor for InferenceError.Context(0);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v269, v270);
      OUTLINED_FUNCTION_19_1(v410);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_33_0();
      v343 = OUTLINED_FUNCTION_9_0(v397);
      v344(v343);
      v345 = OUTLINED_FUNCTION_11_0();
      v346(v345);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 7:
      v452 = 7;
      sub_197997AC0();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v247, v248);
      OUTLINED_FUNCTION_19_1(&v411);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = v398;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v324 = OUTLINED_FUNCTION_9_0(v398);
      v325(v324);
      v326 = OUTLINED_FUNCTION_21_0();
      v327(v326);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 8:
      v452 = 8;
      sub_197997A6C();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v279, v280);
      OUTLINED_FUNCTION_19_1(&v412);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = &v399;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v347 = OUTLINED_FUNCTION_9_0(&v399);
      v348(v347);
      v349 = OUTLINED_FUNCTION_21_0();
      v350(v349);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 9:
      v452 = 9;
      sub_197997A18();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v234, v235);
      OUTLINED_FUNCTION_19_1(&v413);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = &v400;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v305 = OUTLINED_FUNCTION_9_0(&v400);
      v306(v305);
      v307 = OUTLINED_FUNCTION_21_0();
      v308(v307);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 10:
      v452 = 10;
      sub_1979979C4();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_33_0();
      v275 = OUTLINED_FUNCTION_24_1(v431);
      v276(v275, v400);
      v277 = OUTLINED_FUNCTION_11_0();
      v278(v277);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_48;
    case 11:
      v452 = 11;
      sub_197997970();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_33_0();
      v225 = OUTLINED_FUNCTION_24_1(&v434);
      v226(v225, v403);
      v227 = OUTLINED_FUNCTION_11_0();
      v228(v227);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_48;
    case 12:
      v452 = 12;
      sub_19799791C();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v232, v233);
      OUTLINED_FUNCTION_19_1(&v414);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = v401;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v301 = OUTLINED_FUNCTION_9_0(v401);
      v302(v301);
      v303 = OUTLINED_FUNCTION_21_0();
      v304(v303);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 13:
      v452 = 13;
      sub_1979978C8();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v267, v268);
      OUTLINED_FUNCTION_19_1(&v415);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = &v402;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v339 = OUTLINED_FUNCTION_9_0(&v402);
      v340(v339);
      v341 = OUTLINED_FUNCTION_21_0();
      v342(v341);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 14:
      v452 = 14;
      sub_197997874();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v223, v224);
      OUTLINED_FUNCTION_19_1(&v416);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = &v403;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v293 = OUTLINED_FUNCTION_9_0(&v403);
      v294(v293);
      v295 = OUTLINED_FUNCTION_21_0();
      v296(v295);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 15:
      v452 = 15;
      sub_197997820();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v238, v239);
      OUTLINED_FUNCTION_19_1(v417);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = v404;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v315 = OUTLINED_FUNCTION_9_0(v404);
      v316(v315);
      v317 = OUTLINED_FUNCTION_21_0();
      v318(v317);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 16:
      v452 = 16;
      sub_1979977CC();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v220, v221);
      OUTLINED_FUNCTION_19_1(v418);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = v405;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v289 = OUTLINED_FUNCTION_9_0(v405);
      v290(v289);
      v291 = OUTLINED_FUNCTION_21_0();
      v292(v291);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 17:
      v452 = 17;
      sub_197997778();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_33_0();
      v255 = OUTLINED_FUNCTION_24_1(&v440);
      v256(v255, v409);
      v257 = OUTLINED_FUNCTION_11_0();
      v258(v257);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_48;
    case 18:
      v452 = 18;
      sub_197997724();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_33_0();
      v271 = OUTLINED_FUNCTION_24_1(&v443);
      v272(v271, v412);
      v273 = OUTLINED_FUNCTION_11_0();
      v274(v273);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_48;
    case 19:
      v452 = 19;
      sub_1979976D0();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_33_0();
      v285 = OUTLINED_FUNCTION_24_1(&v445);
      v286(v285, v414);
      v287 = OUTLINED_FUNCTION_11_0();
      v288(v287);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_48;
    case 20:
      v452 = 20;
      sub_19799767C();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_33_0();
      v259 = OUTLINED_FUNCTION_24_1(&v447);
      v260(v259, v416);
      v261 = OUTLINED_FUNCTION_11_0();
      v262(v261);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_48;
    case 21:
      v452 = 21;
      sub_197997628();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v265, v266);
      OUTLINED_FUNCTION_19_1(v419);
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = v406;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v335 = OUTLINED_FUNCTION_9_0(v406);
      v336(v335);
      v337 = OUTLINED_FUNCTION_21_0();
      v338(v337);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_64;
    case 22:
      v452 = 22;
      sub_1979975D4();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v281, v282);
      OUTLINED_FUNCTION_19_1(v420);
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v196)
      {
        swift_unknownObjectRelease();
        v222 = v407;
LABEL_45:
        v283 = OUTLINED_FUNCTION_9_0(v222);
        v284(v283);
        v244 = OUTLINED_FUNCTION_21_0();
LABEL_46:
        v245(v244, v246);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_33_0();
      v351 = OUTLINED_FUNCTION_9_0(v407);
      v352(v351);
      v353 = OUTLINED_FUNCTION_21_0();
      v354(v353);
      OUTLINED_FUNCTION_44_3();
LABEL_64:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_1();
      v323 = v194;
LABEL_65:
      v196 = v451[0];
      sub_19799747C(v323, v451[0], v322);
LABEL_66:
      v355 = v450;
      OUTLINED_FUNCTION_4_1();
      sub_19799747C(v196, v443, v356);
      __swift_destroy_boxed_opaque_existential_1Tm(v355);
      break;
    case 23:
      v452 = 23;
      sub_197997580();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_84(&v450);
      OUTLINED_FUNCTION_79_3();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_32(&v408);
      v357(0, v196);
      v358 = OUTLINED_FUNCTION_67_0();
      v359(v358);
      OUTLINED_FUNCTION_78_1(&v390);
      goto LABEL_67;
    case 24:
      v452 = 24;
      sub_19799752C();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_84(v451);
      OUTLINED_FUNCTION_79_3();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_32(&v409);
      v309(0, v196);
      v310 = OUTLINED_FUNCTION_67_0();
      v311(v310);
      OUTLINED_FUNCTION_78_1(&v391);
LABEL_67:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_1();
      v323 = 0;
      goto LABEL_65;
    default:
      v452 = 0;
      sub_197997D0C();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_33_0();
      v207 = OUTLINED_FUNCTION_24_1(&v421);
      v208(v207, v390);
      v209 = OUTLINED_FUNCTION_11_0();
      v210(v209);
      OUTLINED_FUNCTION_28_1();
LABEL_48:
      swift_storeEnumTagMultiPayload();
      goto LABEL_66;
  }
}

uint64_t sub_197997290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19798FA98(&qword_1ED87E448, type metadata accessor for InferenceError);

  return MEMORY[0x1EEDED5E0](a1, a2, a3, v6);
}

uint64_t sub_197997314(uint64_t a1)
{
  v2 = sub_19798FA98(&qword_1ED87E450, type metadata accessor for InferenceError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_197997380(uint64_t a1)
{
  v2 = sub_19798FA98(&qword_1ED87E450, type metadata accessor for InferenceError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void sub_1979973F8()
{
  sub_19798FA98(&qword_1ED87E448, type metadata accessor for InferenceError);

  JUMPOUT(0x19A8EA860);
}

uint64_t sub_19799747C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);
  return a2;
}

unint64_t sub_1979974D8()
{
  result = qword_1ED87F190;
  if (!qword_1ED87F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F190);
  }

  return result;
}

unint64_t sub_19799752C()
{
  result = qword_1EAF48C50;
  if (!qword_1EAF48C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C50);
  }

  return result;
}

unint64_t sub_197997580()
{
  result = qword_1EAF48C58;
  if (!qword_1EAF48C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C58);
  }

  return result;
}

unint64_t sub_1979975D4()
{
  result = qword_1EAF48C60;
  if (!qword_1EAF48C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C60);
  }

  return result;
}

unint64_t sub_197997628()
{
  result = qword_1ED87D608;
  if (!qword_1ED87D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D608);
  }

  return result;
}

unint64_t sub_19799767C()
{
  result = qword_1EAF48C68;
  if (!qword_1EAF48C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C68);
  }

  return result;
}

unint64_t sub_1979976D0()
{
  result = qword_1EAF48C70;
  if (!qword_1EAF48C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C70);
  }

  return result;
}

unint64_t sub_197997724()
{
  result = qword_1EAF48C78;
  if (!qword_1EAF48C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C78);
  }

  return result;
}

unint64_t sub_197997778()
{
  result = qword_1EAF48C80;
  if (!qword_1EAF48C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C80);
  }

  return result;
}

unint64_t sub_1979977CC()
{
  result = qword_1EAF48C88;
  if (!qword_1EAF48C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C88);
  }

  return result;
}

unint64_t sub_197997820()
{
  result = qword_1EAF48C90;
  if (!qword_1EAF48C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C90);
  }

  return result;
}

unint64_t sub_197997874()
{
  result = qword_1EAF48C98;
  if (!qword_1EAF48C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48C98);
  }

  return result;
}

unint64_t sub_1979978C8()
{
  result = qword_1EAF48CA0;
  if (!qword_1EAF48CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CA0);
  }

  return result;
}

unint64_t sub_19799791C()
{
  result = qword_1EAF48CA8;
  if (!qword_1EAF48CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CA8);
  }

  return result;
}

unint64_t sub_197997970()
{
  result = qword_1EAF48CB0;
  if (!qword_1EAF48CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CB0);
  }

  return result;
}

unint64_t sub_1979979C4()
{
  result = qword_1EAF48CB8;
  if (!qword_1EAF48CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CB8);
  }

  return result;
}

unint64_t sub_197997A18()
{
  result = qword_1EAF48CC0;
  if (!qword_1EAF48CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CC0);
  }

  return result;
}

unint64_t sub_197997A6C()
{
  result = qword_1ED87E468;
  if (!qword_1ED87E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E468);
  }

  return result;
}

unint64_t sub_197997AC0()
{
  result = qword_1EAF48CC8;
  if (!qword_1EAF48CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CC8);
  }

  return result;
}

unint64_t sub_197997B14()
{
  result = qword_1EAF48CD0;
  if (!qword_1EAF48CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CD0);
  }

  return result;
}

unint64_t sub_197997B68()
{
  result = qword_1ED87D180;
  if (!qword_1ED87D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D180);
  }

  return result;
}

unint64_t sub_197997BBC()
{
  result = qword_1EAF48CD8;
  if (!qword_1EAF48CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CD8);
  }

  return result;
}

unint64_t sub_197997C10()
{
  result = qword_1EAF48CE0;
  if (!qword_1EAF48CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CE0);
  }

  return result;
}

unint64_t sub_197997C64()
{
  result = qword_1EAF48CE8;
  if (!qword_1EAF48CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CE8);
  }

  return result;
}

unint64_t sub_197997CB8()
{
  result = qword_1EAF48CF0;
  if (!qword_1EAF48CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CF0);
  }

  return result;
}

unint64_t sub_197997D0C()
{
  result = qword_1EAF48CF8;
  if (!qword_1EAF48CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48CF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_197998144(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for InferenceError.Context.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1979982D0()
{
  result = qword_1EAF48DD8;
  if (!qword_1EAF48DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48DD8);
  }

  return result;
}

unint64_t sub_197998328()
{
  result = qword_1EAF48DE0;
  if (!qword_1EAF48DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48DE0);
  }

  return result;
}

unint64_t sub_197998380()
{
  result = qword_1EAF48DE8;
  if (!qword_1EAF48DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48DE8);
  }

  return result;
}

unint64_t sub_1979983D8()
{
  result = qword_1EAF48DF0;
  if (!qword_1EAF48DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48DF0);
  }

  return result;
}

unint64_t sub_197998430()
{
  result = qword_1EAF48DF8;
  if (!qword_1EAF48DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48DF8);
  }

  return result;
}

unint64_t sub_197998488()
{
  result = qword_1EAF48E00;
  if (!qword_1EAF48E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E00);
  }

  return result;
}

unint64_t sub_1979984E0()
{
  result = qword_1EAF48E08;
  if (!qword_1EAF48E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E08);
  }

  return result;
}

unint64_t sub_197998538()
{
  result = qword_1EAF48E10;
  if (!qword_1EAF48E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E10);
  }

  return result;
}

unint64_t sub_197998590()
{
  result = qword_1EAF48E18;
  if (!qword_1EAF48E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E18);
  }

  return result;
}

unint64_t sub_1979985E8()
{
  result = qword_1EAF48E20;
  if (!qword_1EAF48E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E20);
  }

  return result;
}

unint64_t sub_197998640()
{
  result = qword_1EAF48E28;
  if (!qword_1EAF48E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E28);
  }

  return result;
}

unint64_t sub_197998698()
{
  result = qword_1EAF48E30;
  if (!qword_1EAF48E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E30);
  }

  return result;
}

unint64_t sub_1979986F0()
{
  result = qword_1EAF48E38;
  if (!qword_1EAF48E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E38);
  }

  return result;
}

unint64_t sub_197998748()
{
  result = qword_1EAF48E40;
  if (!qword_1EAF48E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E40);
  }

  return result;
}

unint64_t sub_1979987A0()
{
  result = qword_1EAF48E48;
  if (!qword_1EAF48E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E48);
  }

  return result;
}

unint64_t sub_1979987F8()
{
  result = qword_1EAF48E50;
  if (!qword_1EAF48E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E50);
  }

  return result;
}

unint64_t sub_197998850()
{
  result = qword_1EAF48E58;
  if (!qword_1EAF48E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E58);
  }

  return result;
}

unint64_t sub_1979988A8()
{
  result = qword_1EAF48E60;
  if (!qword_1EAF48E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E60);
  }

  return result;
}

unint64_t sub_197998900()
{
  result = qword_1EAF48E68;
  if (!qword_1EAF48E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E68);
  }

  return result;
}

unint64_t sub_197998958()
{
  result = qword_1EAF48E70;
  if (!qword_1EAF48E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48E70);
  }

  return result;
}

unint64_t sub_1979989B0()
{
  result = qword_1ED87F130;
  if (!qword_1ED87F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F130);
  }

  return result;
}

unint64_t sub_197998A08()
{
  result = qword_1ED87F138;
  if (!qword_1ED87F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F138);
  }

  return result;
}

unint64_t sub_197998A60()
{
  result = qword_1ED87F100;
  if (!qword_1ED87F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F100);
  }

  return result;
}

unint64_t sub_197998AB8()
{
  result = qword_1ED87F108;
  if (!qword_1ED87F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F108);
  }

  return result;
}

unint64_t sub_197998B10()
{
  result = qword_1ED87F0E0;
  if (!qword_1ED87F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0E0);
  }

  return result;
}

unint64_t sub_197998B68()
{
  result = qword_1ED87F0E8;
  if (!qword_1ED87F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0E8);
  }

  return result;
}

unint64_t sub_197998BC0()
{
  result = qword_1ED87F070;
  if (!qword_1ED87F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F070);
  }

  return result;
}

unint64_t sub_197998C18()
{
  result = qword_1ED87F078;
  if (!qword_1ED87F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F078);
  }

  return result;
}

unint64_t sub_197998C70()
{
  result = qword_1ED87F080;
  if (!qword_1ED87F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F080);
  }

  return result;
}

unint64_t sub_197998CC8()
{
  result = qword_1ED87F088;
  if (!qword_1ED87F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F088);
  }

  return result;
}

unint64_t sub_197998D20()
{
  result = qword_1ED87F120;
  if (!qword_1ED87F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F120);
  }

  return result;
}

unint64_t sub_197998D78()
{
  result = qword_1ED87F128;
  if (!qword_1ED87F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F128);
  }

  return result;
}

unint64_t sub_197998DD0()
{
  result = qword_1ED87F170;
  if (!qword_1ED87F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F170);
  }

  return result;
}

unint64_t sub_197998E28()
{
  result = qword_1ED87F178;
  if (!qword_1ED87F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F178);
  }

  return result;
}

unint64_t sub_197998E80()
{
  result = qword_1ED87F150;
  if (!qword_1ED87F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F150);
  }

  return result;
}

unint64_t sub_197998ED8()
{
  result = qword_1ED87F158;
  if (!qword_1ED87F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F158);
  }

  return result;
}

unint64_t sub_197998F30()
{
  result = qword_1ED87F198;
  if (!qword_1ED87F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F198);
  }

  return result;
}

unint64_t sub_197998F88()
{
  result = qword_1ED87F1A0;
  if (!qword_1ED87F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1A0);
  }

  return result;
}

unint64_t sub_197998FE0()
{
  result = qword_1ED87F0C0;
  if (!qword_1ED87F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0C0);
  }

  return result;
}

unint64_t sub_197999038()
{
  result = qword_1ED87F0C8;
  if (!qword_1ED87F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0C8);
  }

  return result;
}

unint64_t sub_197999090()
{
  result = qword_1ED87F0D0;
  if (!qword_1ED87F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0D0);
  }

  return result;
}

unint64_t sub_1979990E8()
{
  result = qword_1ED87F0D8;
  if (!qword_1ED87F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0D8);
  }

  return result;
}

unint64_t sub_197999140()
{
  result = qword_1ED87F0A0;
  if (!qword_1ED87F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0A0);
  }

  return result;
}

unint64_t sub_197999198()
{
  result = qword_1ED87F0A8;
  if (!qword_1ED87F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0A8);
  }

  return result;
}

unint64_t sub_1979991F0()
{
  result = qword_1ED87F0F0;
  if (!qword_1ED87F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0F0);
  }

  return result;
}

unint64_t sub_197999248()
{
  result = qword_1ED87F0F8;
  if (!qword_1ED87F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0F8);
  }

  return result;
}

unint64_t sub_1979992A0()
{
  result = qword_1ED87F140;
  if (!qword_1ED87F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F140);
  }

  return result;
}

unint64_t sub_1979992F8()
{
  result = qword_1ED87F148;
  if (!qword_1ED87F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F148);
  }

  return result;
}

unint64_t sub_197999350()
{
  result = qword_1ED87F1A8;
  if (!qword_1ED87F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1A8);
  }

  return result;
}

unint64_t sub_1979993A8()
{
  result = qword_1ED87F1B0;
  if (!qword_1ED87F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1B0);
  }

  return result;
}

unint64_t sub_197999400()
{
  result = qword_1ED87F1B8;
  if (!qword_1ED87F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1B8);
  }

  return result;
}

unint64_t sub_197999458()
{
  result = qword_1ED87F1C0;
  if (!qword_1ED87F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1C0);
  }

  return result;
}

unint64_t sub_1979994B0()
{
  result = qword_1ED87F110;
  if (!qword_1ED87F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F110);
  }

  return result;
}

unint64_t sub_197999508()
{
  result = qword_1ED87F118;
  if (!qword_1ED87F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F118);
  }

  return result;
}

unint64_t sub_197999560()
{
  result = qword_1ED87F090;
  if (!qword_1ED87F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F090);
  }

  return result;
}

unint64_t sub_1979995B8()
{
  result = qword_1ED87F098;
  if (!qword_1ED87F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F098);
  }

  return result;
}

unint64_t sub_197999610()
{
  result = qword_1ED87F208;
  if (!qword_1ED87F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F208);
  }

  return result;
}

unint64_t sub_197999668()
{
  result = qword_1ED87F210;
  if (!qword_1ED87F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F210);
  }

  return result;
}

unint64_t sub_1979996C0()
{
  result = qword_1ED87F0B0;
  if (!qword_1ED87F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0B0);
  }

  return result;
}

unint64_t sub_197999718()
{
  result = qword_1ED87F0B8;
  if (!qword_1ED87F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F0B8);
  }

  return result;
}

unint64_t sub_197999770()
{
  result = qword_1ED87F1C8;
  if (!qword_1ED87F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1C8);
  }

  return result;
}

unint64_t sub_1979997C8()
{
  result = qword_1ED87F1D0;
  if (!qword_1ED87F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1D0);
  }

  return result;
}

unint64_t sub_197999820()
{
  result = qword_1ED87F160;
  if (!qword_1ED87F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F160);
  }

  return result;
}

unint64_t sub_197999878()
{
  result = qword_1ED87F168;
  if (!qword_1ED87F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F168);
  }

  return result;
}

unint64_t sub_1979998D0()
{
  result = qword_1ED87F1F8;
  if (!qword_1ED87F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1F8);
  }

  return result;
}

unint64_t sub_197999928()
{
  result = qword_1ED87F200;
  if (!qword_1ED87F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F200);
  }

  return result;
}

unint64_t sub_197999980()
{
  result = qword_1ED87F1E8;
  if (!qword_1ED87F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1E8);
  }

  return result;
}

unint64_t sub_1979999D8()
{
  result = qword_1ED87F1F0;
  if (!qword_1ED87F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1F0);
  }

  return result;
}

unint64_t sub_197999A30()
{
  result = qword_1ED87F1D8;
  if (!qword_1ED87F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1D8);
  }

  return result;
}

unint64_t sub_197999A88()
{
  result = qword_1ED87F1E0;
  if (!qword_1ED87F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F1E0);
  }

  return result;
}

unint64_t sub_197999AE0()
{
  result = qword_1ED87F180;
  if (!qword_1ED87F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F180);
  }

  return result;
}

unint64_t sub_197999B38()
{
  result = qword_1ED87F188;
  if (!qword_1ED87F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F188);
  }

  return result;
}

unint64_t sub_197999B90()
{
  result = qword_1ED87F058;
  if (!qword_1ED87F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F058);
  }

  return result;
}

unint64_t sub_197999BE8()
{
  result = qword_1ED87F060;
  if (!qword_1ED87F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F060);
  }

  return result;
}

uint64_t loadAssetBundle(_:)()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x1E69E9840];
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197999CF4()
{
  OUTLINED_FUNCTION_9();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  v0[15] = swift_initStackObject();
  v0[16] = sub_1979489D4("Loading asset bundle", 20, 2);
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_5_1(v2);
  v5 = *MEMORY[0x1E69E9840];

  return ModelXPCSender.loadAssetBundle(_:dynamicMode:)(v4, v3, 0);
}

uint64_t sub_197999E00()
{
  OUTLINED_FUNCTION_9();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 144) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t loadAssetBundleToDynamicMode(_:)()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x1E69E9840];
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197999FB0()
{
  OUTLINED_FUNCTION_9();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  v0[15] = swift_initStackObject();
  v0[16] = sub_1979489D4("Loading asset bundle to dynamic mode", 36, 2);
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_5_1(v2);
  v5 = *MEMORY[0x1E69E9840];

  return ModelXPCSender.loadAssetBundle(_:dynamicMode:)(v4, v3, 1);
}

uint64_t holdAssetBundle(_:)()
{
  OUTLINED_FUNCTION_9();
  v8 = *MEMORY[0x1E69E9840];
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19799A144()
{
  OUTLINED_FUNCTION_9();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  v0[15] = swift_initStackObject();
  v0[16] = sub_1979489D4("Holding asset bundle", 20, 2);
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_5_1(v2);
  v3 = *MEMORY[0x1E69E9840];

  return ModelXPCSender.holdAssetBundle(_:)();
}

uint64_t sub_19799A24C()
{
  OUTLINED_FUNCTION_9();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 144) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_19799A374()
{
  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_19799A414()
{
  OUTLINED_FUNCTION_9();
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_9_1();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 144);
  v4 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t forceAssetVersionSwitch()()
{
  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_19799A538()
{
  OUTLINED_FUNCTION_9();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  v0[13] = swift_initStackObject();
  v0[14] = sub_1979489D4("Forcing asset version switch", 28, 2);
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_19799A640;
  v3 = *MEMORY[0x1E69E9840];

  return ModelXPCSender.forceAssetVersionSwitch()();
}

uint64_t sub_19799A640()
{
  OUTLINED_FUNCTION_9();
  v15 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 128) = v0;

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_19799A768()
{
  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_19799A808()
{
  OUTLINED_FUNCTION_9();
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_9_1();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 128);
  v4 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_19799A8A8()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  v1 = *MEMORY[0x1E69E9840];

  return sub_19799A374();
}

uint64_t sub_19799A914()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  v1 = *MEMORY[0x1E69E9840];

  return sub_19799A414();
}

uint64_t sub_19799A9AC()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_19799A9E4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EAF48E80;
  swift_beginAccess();
  return sub_19799D3C8(v1 + v3, a1);
}

uint64_t sub_19799AA3C(uint64_t a1)
{
  v3 = qword_1EAF48E80;
  swift_beginAccess();
  sub_19799D358(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_19799AA9C()
{
  v1 = *(v0 + qword_1EAF48E90);
  v2 = *(v0 + qword_1EAF48E90 + 8);
  v3 = OUTLINED_FUNCTION_22();
  sub_197948F1C(v3);
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_19799AAE0()
{
  v1 = *(v0 + qword_1EAF48E98);
  v2 = *(v0 + qword_1EAF48E98 + 8);
  v3 = OUTLINED_FUNCTION_22();
  sub_197948F1C(v3);
  return OUTLINED_FUNCTION_22();
}

uint64_t *sub_19799AB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return sub_19799AB90(a1, a2, a3, a4, a5);
}

uint64_t *sub_19799AB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  swift_defaultActor_initialize();
  v11 = qword_1EAF48E80;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  __swift_storeEnumTagSinglePayload(v5 + v11, 1, 1, v12);
  v13 = (v5 + qword_1EAF48E90);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v5 + qword_1EAF48E98);
  *v14 = 0;
  v14[1] = 0;
  v15 = *(v10 + 80);
  type metadata accessor for BufferedStreamSequence.BufferValue();
  sub_197A87B38();
  swift_getWitnessTable();
  v5[14] = sub_197A87458();
  v16 = *v13;
  v17 = v13[1];
  *v13 = a2;
  v13[1] = a3;
  sub_197948F1C(a2);
  sub_197956214(v16);
  sub_197956214(a2);
  v18 = *v14;
  v19 = v14[1];
  *v14 = a4;
  v14[1] = a5;
  sub_197948F1C(a4);
  sub_197956214(v18);
  sub_197956214(a4);
  return v5;
}

uint64_t *BufferedStreamSequence.__allocating_init(onFirst:onCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 80);
  type metadata accessor for BufferedStreamSequence.BufferValue();
  v10 = sub_197A87B28();

  return sub_19799AB24(v10, a1, a2, a3, a4);
}

uint64_t *BufferedStreamSequence.__allocating_init(error:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for BufferedStreamSequence.BufferValue();
  sub_197A88158();
  v5 = *(*(v4 - 8) + 72);
  v6 = *(*(v4 - 8) + 80);
  swift_allocObject();
  v7 = sub_197A87B08();
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_197A87B38();

  return sub_19799AB24(v7, 0, 0, 0, 0);
}

uint64_t sub_19799AE74()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_2(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  swift_beginAccess();
  v17 = *(v1 + 80);
  type metadata accessor for BufferedStreamSequence.BufferValue();
  sub_197A87448();
  sub_197A873D8();
  swift_endAccess();
  sub_19799A9E4(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_19799C90C(v8);
  }

  else
  {
    (*(v11 + 32))(v16, v8, v9);
    sub_197A87B88();
    (*(v11 + 8))(v16, v9);
  }

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  return sub_19799AA3C(v6);
}

uint64_t sub_19799B088(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150) - 8) + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  result = sub_19799AAE0();
  if (result)
  {
    v8 = result;
    v9 = v7;
    sub_19799AB18(0, 0);
    v10 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v8;
    v11[5] = v9;
    v11[6] = a1;
    MEMORY[0x19A8EBBD0](a1);
    sub_19795CB2C();
  }

  return result;
}

uint64_t sub_19799B194(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_197960E38;

  return v11(a6);
}

uint64_t sub_19799B28C()
{
  OUTLINED_FUNCTION_7_2();
  v1 = *(v0 + 80);
  v2 = type metadata accessor for BufferedStreamSequence.BufferValue();
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_19799B088(0);
  swift_storeEnumTagMultiPayload();
  sub_19799AE74();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_19799B360()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_7_2();
  v1[4] = *(v3 + 80);
  v4 = type metadata accessor for BufferedStreamSequence.BufferValue();
  v1[5] = v4;
  OUTLINED_FUNCTION_10(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_78_0();
  v8 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_19799B418()
{
  v1 = v0[3];
  v2 = sub_19799AA9C();
  v0[8] = v2;
  if (v2)
  {
    v4 = v2;
    v5 = v0[3];
    v0[9] = v3;
    sub_19799AAD4(0, 0);
    v18 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_19799B5DC;
    v8 = v0[2];

    return v18(v8);
  }

  else
  {
    v10 = v0[6];
    v11 = v0[5];
    v12 = v0[3];
    (*(*(v0[4] - 8) + 16))(v0[7], v0[2]);
    OUTLINED_FUNCTION_60();
    swift_storeEnumTagMultiPayload();
    sub_19799AE74();
    v13 = *(v10 + 8);
    v14 = OUTLINED_FUNCTION_60();
    v15(v14);
    v16 = v0[7];

    OUTLINED_FUNCTION_13();

    return v17();
  }
}