id sub_24DD4728C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v3, v14, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
      *v3 = a1;
      swift_storeEnumTagMultiPayload();
      v16 = 2;
      goto LABEL_10;
    }

    sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
    v17 = *(v14 + 1);
    swift_unknownObjectRelease();
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
LABEL_9:
    v19 = *(v7 + 32);
    v19(v10, &v14[v18], v6);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v19(a2, v10, v6);
    v16 = 0;
    goto LABEL_10;
  }

  if (result == 2)
  {
    sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
    goto LABEL_9;
  }

  if (result == 4)
  {
    sub_24DD48FE0(v3, type metadata accessor for RequestPartOutputStreamBridge.State);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v16 = 1;
LABEL_10:
    (*(v7 + 56))(a2, v16, 2, v6);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD47548@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v2, v12, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      sub_24DD48FE0(v2, type metadata accessor for RequestPartOutputStreamBridge.State);
      *v2 = 0;
      swift_storeEnumTagMultiPayload();
      v14 = 2;
      return (*(v5 + 56))(a1, v14, 2, v4);
    }

    sub_24DD48FE0(v2, type metadata accessor for RequestPartOutputStreamBridge.State);
    v15 = *(v12 + 1);
    swift_unknownObjectRelease();
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
LABEL_9:
    v17 = *(v5 + 32);
    v17(v8, &v12[v16], v4);
    *v2 = 0;
    swift_storeEnumTagMultiPayload();
    v17(a1, v8, v4);
    v14 = 0;
    return (*(v5 + 56))(a1, v14, 2, v4);
  }

  if (result == 2)
  {
    sub_24DD48FE0(v2, type metadata accessor for RequestPartOutputStreamBridge.State);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
    goto LABEL_9;
  }

  if (result == 3)
  {
    sub_24DD48FE0(v12, type metadata accessor for RequestPartOutputStreamBridge.State);
    v14 = 1;
    return (*(v5 + 56))(a1, v14, 2, v4);
  }

  __break(1u);
  return result;
}

id RequestPartOutputStreamBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall RequestPartOutputStreamBridge.stream(_:handle:)(NSStream _, NSStreamEvent handle)
{
  isa = _.super.isa;
  v4 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = sub_24DD4B0E4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F1AF290 != -1)
  {
    swift_once();
  }

  v19 = qword_27F1B0990;
  *v18 = qword_27F1B0990;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_24DD4B0F4();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (handle > 7)
  {
    if (handle != 8)
    {
      if (handle == 16)
      {
        sub_24DD47E6C(0x756F636E45646E65, 0xEE0064657265746ELL, v2);
        sub_24DD4666C();
        return;
      }

      goto LABEL_12;
    }

    sub_24DD47E6C(0x63634F726F727265, 0xED00006465727275, v2);
    v32 = [(objc_class *)isa streamError];
    if (v32)
    {
      v33 = v32;
      sub_24DD46AA4(v32);
LABEL_19:

      return;
    }

LABEL_22:
    __break(1u);
    return;
  }

  if (handle == 1)
  {
    sub_24DD47E6C(0x706D6F436E65706FLL, 0xED0000646574656CLL, v2);
    v31 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
    swift_beginAccess();
    sub_24DD48F78(v2 + v31, v13, type metadata accessor for RequestPartOutputStreamBridge.State);
    LODWORD(v31) = swift_getEnumCaseMultiPayload();
    sub_24DD48FE0(v13, type metadata accessor for RequestPartOutputStreamBridge.State);
    if (v31 == 4)
    {
      sub_24DD43298();
      return;
    }

    v34 = v2;
    v33 = sub_24DD4B084();
    v35 = sub_24DD4B424();

    if (os_log_type_enabled(v33, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 136315138;
      v38 = *&v34[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
      v39 = *&v34[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
      v48 = v37;
      v49 = 0;
      v50 = 0xE000000000000000;
      v46 = 0x726F70736E617274;
      v47 = 0xEA00000000005F74;
      v45 = v38;
      v40 = sub_24DD4B624();
      MEMORY[0x253037C70](v40);

      MEMORY[0x253037C70](v46, v47);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v46 = v39;
      v41 = sub_24DD4B624();
      MEMORY[0x253037C70](v41);

      v42 = sub_24DD38DE0(v49, v50, &v48);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_24DD09000, v33, v35, "Output stream delegate ignoring duplicate openCompleted event for %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x253038870](v37, -1, -1);
      MEMORY[0x253038870](v36, -1, -1);
    }

    goto LABEL_19;
  }

  if (handle != 4)
  {
LABEL_12:
    v51 = handle;
    type metadata accessor for Event(0);
    v29 = sub_24DD4B184();
    sub_24DD47E6C(v29, v30, v2);

    return;
  }

  sub_24DD47E6C(0xD000000000000011, 0x800000024DD52760, v2);
  v21 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_state;
  swift_beginAccess();
  sub_24DD48F78(v2 + v21, v11, type metadata accessor for RequestPartOutputStreamBridge.State);
  v22 = sub_24DD480CC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24DD48F78(v2 + v21, v8, type metadata accessor for RequestPartOutputStreamBridge.State);
  swift_beginAccess();
  sub_24DD483CC(v11, v2 + v21);
  swift_endAccess();
  sub_24DD42B08(v8);
  sub_24DD48FE0(v8, type metadata accessor for RequestPartOutputStreamBridge.State);
  sub_24DD48FE0(v11, type metadata accessor for RequestPartOutputStreamBridge.State);
  if (v22)
  {
    sub_24DD4520C(v22, v24, v26, v28);
    swift_unknownObjectRelease();
  }
}

void sub_24DD47E6C(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;

  oslog = sub_24DD4B084();
  v6 = sub_24DD4B424();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    v9 = *&v5[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v10 = *&v5[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID + 8];
    v15 = v8;
    v11 = sub_24DD4B624();
    MEMORY[0x253037C70](v11);

    MEMORY[0x253037C70](0x726F70736E617274, 0xEA00000000005F74);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v12 = sub_24DD4B624();
    MEMORY[0x253037C70](v12);

    v13 = sub_24DD38DE0(0, 0xE000000000000000, &v15);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24DD38DE0(a1, a2, &v15);
    _os_log_impl(&dword_24DD09000, oslog, v6, "Output stream delegate received event for %s: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253038870](v8, -1, -1);
    MEMORY[0x253038870](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24DD480CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - v4;
  v6 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD48F78(v0, v9, type metadata accessor for RequestPartOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      sub_24DD48FE0(v0, type metadata accessor for RequestPartOutputStreamBridge.State);
      v12 = *(v9 + 1);
      v11 = *(v9 + 2);
      v13 = *(v9 + 4);
      v22 = *(v9 + 3);
      v23 = v11;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28);
      v15 = *(v2 + 32);
      v15(v5, &v9[*(v14 + 64)], v1);
      v16 = *(v14 + 64);
      *v0 = 1;
      v18 = v22;
      v17 = v23;
      *(v0 + 8) = v12;
      *(v0 + 16) = v17;
      *(v0 + 24) = v18;
      *(v0 + 32) = v13;
      v15((v0 + v16), v5, v1);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    }

    sub_24DD48FE0(v0, type metadata accessor for RequestPartOutputStreamBridge.State);
    *v0 = 1;
    goto LABEL_9;
  }

  if (result == 2)
  {
    sub_24DD48FE0(v0, type metadata accessor for RequestPartOutputStreamBridge.State);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20);
    v20 = *(v2 + 32);
    v20(v5, &v9[*(v19 + 48)], v1);
    v21 = *(v19 + 48);
    *v0 = 1;
    v20((v0 + v21), v5, v1);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    return 0;
  }

  if (result != 3)
  {
    __break(1u);
    return result;
  }

  sub_24DD48FE0(v9, type metadata accessor for RequestPartOutputStreamBridge.State);
  return 0;
}

uint64_t sub_24DD483CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DD484A0()
{
  v1 = type metadata accessor for RequestPartOutputStreamBridge.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DD48F78(v0, v4, type metadata accessor for RequestPartOutputStreamBridge.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v4;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_24DD4B534();

      v32 = 0xD00000000000001BLL;
      v33 = 0x800000024DD52850;
      v14 = v13 == 0;
      if (v13)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v14)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A80, &qword_24DD4DD20) + 48);
      MEMORY[0x253037C70](v15, v16);

      MEMORY[0x253037C70](694100012, 0xE400000000000000);
      v12 = v32;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      (*(*(v18 - 8) + 8))(v4 + v17, v18);
      return v12;
    }

    if (EnumCaseMultiPayload != 3)
    {
      return 0x6C616974696E69;
    }

    v6 = *v4;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_24DD4B534();

    v32 = 0x28206465736F6C63;
    v33 = 0xEF203A726F727265;
    v31 = v6;
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00D8, &unk_24DD4D290);
    v8 = sub_24DD4B184();
    MEMORY[0x253037C70](v8);

    MEMORY[0x253037C70](41, 0xE100000000000000);

    return v32;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = *v4;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_24DD4B534();

    v32 = 0xD000000000000020;
    v33 = 0x800000024DD52890;
    if (v9)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v9)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x253037C70](v10, v11);

    MEMORY[0x253037C70](41, 0xE100000000000000);
    return v32;
  }

  v19 = *v4;
  v20 = v4[1];
  v21 = v4[3];
  v22 = v4[4];
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_24DD4B534();

  v32 = 0xD00000000000001ALL;
  v33 = 0x800000024DD52870;
  v23 = v19 == 0;
  if (v19)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A88, &unk_24DD4DD28) + 64);
  MEMORY[0x253037C70](v24, v25);

  result = MEMORY[0x253037C70](5972012, 0xE300000000000000);
  if (!__OFSUB__(v22 >> 1, v21))
  {
    v31 = (v22 >> 1) - v21;
    v28 = sub_24DD4B624();
    MEMORY[0x253037C70](v28);

    MEMORY[0x253037C70](0x295D736574796220, 0xE800000000000000);
    swift_unknownObjectRelease();
    v12 = v32;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v29 - 8) + 8))(v4 + v26, v29);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD488EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24DD48944()
{
  result = type metadata accessor for RequestPartOutputStreamBridge.State(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24DD4B0A4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_24DD48A64()
{
  sub_24DD48B00();
  if (v0 <= 0x3F)
  {
    sub_24DD48B30();
    if (v1 <= 0x3F)
    {
      sub_24DD48BC4();
      if (v2 <= 0x3F)
      {
        sub_24DD48C3C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24DD48B00()
{
  result = qword_27F1B0A48;
  if (!qword_27F1B0A48)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27F1B0A48);
  }

  return result;
}

void sub_24DD48B30()
{
  if (!qword_27F1B0A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF2D8, &qword_24DD4C618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F1B0A50);
    }
  }
}

void sub_24DD48BC4()
{
  if (!qword_27F1B0A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1B0A68);
    }
  }
}

void sub_24DD48C3C()
{
  if (!qword_27F1B0A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    v0 = sub_24DD4B4B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1B0A70);
    }
  }
}

uint64_t sub_24DD48CA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24DD48CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24DD0D4B0;

  return sub_24DD4371C(a1, v4, v5, v7, v6);
}

uint64_t sub_24DD48DA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24DD48E04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24DD48EE4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_24DD449B4(v2, v3, v4, v5);
}

uint64_t sub_24DD48F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DD48FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_24DD49040(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24DD49060(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD0C914;

  return sub_24DD40834(a1, v1);
}

uint64_t sub_24DD4910C()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E0, &unk_24DD4D2A0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_24DD49498(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t sub_24DD491D0()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F8, &unk_24DD4D2C0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_24DD49380(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_24DD49274(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(v8 + 16);
  v11 = *(v9 - 8);
  v12 = *(v11 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(v11 + 72);
  v14 = swift_allocObject();
  v15 = *(v8 + 24);
  *(v14 + 16) = v10;
  *(v14 + 24) = v15;
  if (v15 >= 1)
  {
    sub_24DD495A8(v14 + 16, v14 + ((v12 + 40) & ~v12), (v8 + 16), v8 + ((v12 + 40) & ~v12), a1, a2);
  }

  *v4 = v14;
  return result;
}

uint64_t sub_24DD49380(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v9 = 0;
    v7 = 0;
    v10 = a3[1];
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *a3 - v4;
  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_24DD49498(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[8 * v4], &__src[8 * v4], 8 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_24DD495A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a3[2];
  v7 = *a3 - v6;
  if (__OFSUB__(*a3, v6))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = a3[1];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  if (v7 >= v11)
  {
    v14 = 0;
    v13 = 0;
    if (v11 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      v15 = a4 + *(v12 + 72) * v6;
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 72);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v11 - v7;
  if (__OFSUB__(v11, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = a4;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v7 < v11 && v13 >= 1)
  {
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

unint64_t sub_24DD49764()
{
  result = qword_27F1B0B70;
  if (!qword_27F1B0B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1B0B70);
  }

  return result;
}

uint64_t sub_24DD497B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DD497F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24DD499B0()
{
  sub_24DD3C5FC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24DD49A34()
{
  if (!qword_27F1B0BC8)
  {
    v0 = sub_24DD4B4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1B0BC8);
    }
  }
}

uint64_t sub_24DD49AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DD49BB0()
{
  v0 = sub_24DD4B564();
  v1 = (*(*v0 + 48) + 7) & 0x1FFFFFFF8;

  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  result = pthread_mutex_init((v0 + v1), &v3);
  if (result)
  {
    __break(1u);
  }

  else
  {

    return v0;
  }

  return result;
}

void sub_24DD49C68()
{
  if (pthread_mutex_destroy((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8))))
  {
    __break(1u);
  }

  JUMPOUT(0x253038010);
}

uint64_t sub_24DD49CCC()
{
  sub_24DD49C68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24DD49DC8(uint64_t a1, pthread_mutex_t *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = pthread_mutex_lock(a2);
  if (result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  a3(a1);
  if (v7)
  {
    result = pthread_mutex_unlock(a2);
    if (!result)
    {
      *a7 = v7;
      return result;
    }

    goto LABEL_8;
  }

  result = pthread_mutex_unlock(a2);
  if (result)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_24DD49F2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

int64_t _s31GRPCURLSessionTransportInternal17GRPCMessageFramerO5frame_10compressorSays5UInt8VGAA0aB5BytesV_AA10CompressorOSgtAA0J5ErrorOYKFZ(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, char *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *a2;
  if (v8 == 2)
  {
    v9 = *(v7 + 16);
    if (__OFADD__(v9, 5))
    {
      __break(1u);
    }

    else
    {
      a4 = sub_24DD391A8(0, v9 + 5, 0, MEMORY[0x277D84F90]);
      v6 = *(a4 + 2);
      v9 = *(a4 + 3);
      v4 = v6 + 1;
      if (v6 < v9 >> 1)
      {
LABEL_4:
        *(a4 + 2) = v4;
        a4[v6 + 32] = 0;
        v20 = a4;
        v11 = *(v7 + 16);
        v12 = HIDWORD(v11);
        if (!HIDWORD(v11))
        {
          LODWORD(v18) = bswap32(v11);
          sub_24DD0D86C(&v18, &v18 + 4);

LABEL_11:
          sub_24DD0D780(v7);
          result = v20;
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_16;
      }
    }

    a4 = sub_24DD391A8((v9 > 1), v4, 1, a4);
    goto LABEL_4;
  }

  v19 = v8 & 1;
  v18 = v7;
  result = _s31GRPCURLSessionTransportInternal10CompressorO8compressySays5UInt8VGAA0aB5BytesVAA0D5ErrorOYKF(&v18);
  if (!v5)
  {
    v7 = result;
    v4 = *(result + 16);
    if (!__OFADD__(v4, 5))
    {
      a4 = sub_24DD391A8(0, v4 + 5, 0, MEMORY[0x277D84F90]);
      v6 = *(a4 + 2);
      v10 = *(a4 + 3);
      v12 = v6 + 1;
      if (v6 < v10 >> 1)
      {
LABEL_9:
        *(a4 + 2) = v12;
        a4[v6 + 32] = 1;
        v20 = a4;
        if (HIDWORD(v4))
        {
          __break(1u);
        }

        LODWORD(v18) = bswap32(v4);
        sub_24DD0D86C(&v18, &v18 + 4);
        goto LABEL_11;
      }

LABEL_17:
      v17 = v4;
      v15 = v12;
      v16 = sub_24DD391A8((v10 > 1), v12, 1, a4);
      v12 = v15;
      v4 = v17;
      a4 = v16;
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_24DD4A19C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0CF0, &unk_24DD4DFA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_24DD4A2C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *GRPCURLSessionTransportBytes.init(repeating:count:)@<X0>(void *result@<X0>, size_t a2@<X1>, uint64_t *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v6 = sub_24DD4B2B4();
      *(v6 + 16) = a2;
      result = memset((v6 + 32), v4, a2);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    *a3 = v6;
  }

  return result;
}

uint64_t sub_24DD4A568(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_24DD4B2B4();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

uint64_t GRPCURLSessionTransportBytes.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = sub_24DD4B2E4();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t static GRPCURLSessionTransportBytes.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD4A7B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t GRPCURLSessionTransportBytes.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x253038190](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = sub_24DD4B704();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t GRPCURLSessionTransportBytes.hashValue.getter()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_24DD4B704();
      --v2;
    }

    while (v2);
  }

  return sub_24DD4B724();
}

uint64_t sub_24DD4A8D4@<X0>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24DD4A568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24DD4A940()
{
  v1 = *v0;
  result = MEMORY[0x253038190](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = sub_24DD4B704();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24DD4A994()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_24DD4B704();
      --v2;
    }

    while (v2);
  }

  return sub_24DD4B724();
}

unint64_t sub_24DD4AA04()
{
  result = qword_27F1B0D00;
  if (!qword_27F1B0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B0D00);
  }

  return result;
}