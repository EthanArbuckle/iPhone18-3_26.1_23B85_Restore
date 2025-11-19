uint64_t sub_25DDCC97C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25DDCC9E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25DDCCA44(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DDCCB3C;

  return v7(a1);
}

uint64_t sub_25DDCCB3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25DDCCC34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25DDC9384;

  return sub_25DDCCA44(a1, v5);
}

uint64_t sub_25DDCCCEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25DDB8C84;

  return sub_25DDCCA44(a1, v5);
}

uint64_t sub_25DDCCDA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25DDCCDF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25DDB8C84;

  return sub_25DDCAD18(v2, v3, v5, v4);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25DDCCEF8()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5A8, &qword_25DDDDB60);
  v3 = sub_25DDDCE48();
  MEMORY[0x25F8A4C20](v3);

  MEMORY[0x25F8A4C20](41, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

uint64_t sub_25DDCCFAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25DDDD0C8();

  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_9:
    v5 = sub_25DDDD178();
    MEMORY[0x25F8A4C20](v5);

    MEMORY[0x25F8A4C20](41, 0xE100000000000000);
    return 0xD00000000000002ALL;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDCD0A0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25DDDCAF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_25DDCCDA4(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_25DDCD534(v11, 0);
      v15 = sub_25DDDCAC8();
      sub_25DDCCDA4(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_25DDCD21C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25DDCD270(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_25DDCD2B8@<X0>(_BYTE *a1@<X0>, char *a2@<X8>)
{
  if (*a1 == 1)
  {
    result = nullsub_1(sub_25DDCB270);
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 16);
    nullsub_1(sub_25DDCB28C);
    result = [v7 suspend];
    v5 = 1;
    *a1 = 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25DDCD3A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasSuspendedURLSessionTask;
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_25DDC9AC8(sub_25DDCD460);
}

uint64_t sub_25DDCD494()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD000000000000041, 0x800000025DDDFDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  sub_25DDDD128();
  return 0;
}

void *sub_25DDCD534(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE7A8, &qword_25DDDE8B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_25DDCD60C()
{
  v0 = sub_25DDDD048();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_25DDDCDA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_25DDDD058();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDD3B60();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  sub_25DDDCD98();
  v10[1] = MEMORY[0x277D84F90];
  sub_25DDD3BAC(&qword_27FCCE970, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE978, ",\v");
  sub_25DDD3BF4(&qword_27FCCE980, &qword_27FCCE978, ",\v");
  sub_25DDDD098();
  result = sub_25DDDD078();
  qword_27FCD0040 = result;
  return result;
}

uint64_t *sub_25DDCD85C()
{
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  return &qword_27FCD0040;
}

id sub_25DDCD8AC()
{
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v0 = qword_27FCD0040;

  return v0;
}

unint64_t sub_25DDCD928(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = 0;
  v11[2] = 0xE000000000000000;
  sub_25DDDD0C8();

  v12 = 0xD000000000000029;
  v13 = 0x800000025DDE05D0;
  v7 = sub_25DDD2D50();
  MEMORY[0x25F8A4C20](v7);

  MEMORY[0x25F8A4C20](540945696, 0xE400000000000000);
  v8 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(a2 + v8, v6, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  v9 = sub_25DDD2D50();
  MEMORY[0x25F8A4C20](v9);

  sub_25DDCF3B0(v6, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  return v12;
}

uint64_t sub_25DDCDA70(uint64_t a1)
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(a1, v5, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_25DDCF3B0(v5, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
        v7 = 0xEA00000000007365;
        v8 = 0x7479426574697277;
      }

      else
      {
        v7 = 0x800000025DDE0230;
        sub_25DDCF3B0(v5, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
        v8 = 0xD00000000000001CLL;
      }

      goto LABEL_13;
    }

    sub_25DDCF3B0(v5, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    v9 = 0x656D75736572;
LABEL_10:
    v8 = v9 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
    v7 = 0xEE0072656375646FLL;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_25DDCF3B0(v5, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    v9 = 0x6C65636E6163;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v7 = 0xE400000000000000;
    v8 = 1701736302;
  }

  else
  {
    v7 = 0xEB000000006D6165;
    v8 = 0x72745365736F6C63;
  }

LABEL_13:
  MEMORY[0x25F8A4C20](v8, v7);
}

uint64_t sub_25DDCDC50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  return sub_25DDCE908(v1 + v3, a1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
}

uint64_t sub_25DDCDCDC(uint64_t a1)
{
  v3 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(v1 + v7, v6, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  swift_beginAccess();
  sub_25DDCDE24(a1, v1 + v7);
  swift_endAccess();
  v10 = v6;
  v11 = v1;
  nullsub_1(sub_25DDCDE88);
  sub_25DDCF3B0(a1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  return sub_25DDCF3B0(v6, type metadata accessor for HTTPBodyOutputStreamBridge.State);
}

uint64_t sub_25DDCDE24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_25DDCDED4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_httpBody] = a2;
  *&v2[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream] = a1;
  type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = v2;
  v14.super_class = ObjectType;

  v6 = a1;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream;
  v9 = *&v7[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream];
  v10 = v7;
  [v9 setDelegate_];
  v11 = qword_27FCCFC30;
  v12 = *&v7[v8];
  if (v11 != -1)
  {
    swift_once();
  }

  MEMORY[0x25F8A4FC0](v12, qword_27FCD0040);

  [*&v7[v8] open];

  return v10;
}

id sub_25DDCE020()
{
  ObjectType = swift_getObjectType();
  nullsub_1(sub_25DDCE0C8);
  [*&v0[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream] setDelegate_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_25DDCE200(uint64_t a1)
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v39 - v16);
  v18 = sub_25DDDCDB8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a1;
  nullsub_1(sub_25DDCE894);
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v23 = qword_27FCD0040;
  *v22 = qword_27FCD0040;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_25DDDCDC8();
  result = (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_25DDCE908(a1, v17, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (!result)
    {
      v28 = v42;
      v27 = v43;
      v29 = v10;
      (*(v42 + 32))(v10, v17, v43);
      v30 = v44;
      sub_25DDDCF28();
      v31 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      v32 = v40;
      sub_25DDCE908(v30 + v31, v40, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE970();
      v33 = v41;
      sub_25DDCE908(v30 + v31, v41, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v32, v30 + v31);
      v34 = swift_endAccess();
      MEMORY[0x28223BE20](v34);
      *(&v39 - 2) = v33;
      *(&v39 - 1) = v30;
      nullsub_1(sub_25DDD3C7C);
      sub_25DDCF3B0(v32, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCF3B0(v33, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE200(v15);
      sub_25DDCF3B0(v15, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
      return (*(v28 + 8))(v29, v27);
    }

    if (result == 1)
    {
      v26 = *v17;
      sub_25DDCEB68(v17[1], v17[2], v17[3]);
      return swift_unknownObjectRelease();
    }

    v36 = v42;
    v35 = v43;
    (*(v42 + 32))(v10, v17, v43);
    sub_25DDDCF48();
    sub_25DDD3BAC(&qword_27FCCE5A0, MEMORY[0x277D85678]);
    v38 = swift_allocError();
    sub_25DDDCDD8();
    v46 = v38;
    sub_25DDDCF18();
    [*(v44 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream) close];
    return (*(v36 + 8))(v10, v35);
  }

  if (result == 3)
  {
    v36 = v42;
    v35 = v43;
    (*(v42 + 32))(v10, v17, v43);
    sub_25DDDCF48();
    sub_25DDD3BAC(&qword_27FCCE5A0, MEMORY[0x277D85678]);
    v37 = swift_allocError();
    sub_25DDDCDD8();
    v46 = v37;
    sub_25DDDCF18();
    return (*(v36 + 8))(v10, v35);
  }

  if (result != 4)
  {
    return [*(v44 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream) close];
  }

  return result;
}

uint64_t sub_25DDCE894()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD00000000000003DLL, 0x800000025DDE0570);
  sub_25DDCDA70(v1);
  return 0;
}

uint64_t sub_25DDCE908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DDCE970()
{
  v1 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v0, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    sub_25DDCF3B0(v0, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v6 = *v4;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    *v0 = v6;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    swift_storeEnumTagMultiPayload();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    return (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  if (result > 2)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v9 = *(v4 + 1);
    swift_unknownObjectRelease();
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    result = (*(*(v11 - 8) + 8))(&v4[v10], v11);
    __break(1u);
LABEL_6:
    if (result == 3)
    {
      result = sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDCEB68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v7 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v45 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v45 - v18);
  v20 = sub_25DDDCDB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v25 = qword_27FCD0040;
  *v24 = qword_27FCD0040;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  v27 = sub_25DDDCDC8();
  result = (*(v21 + 8))(v24, v20);
  v29 = a3 >> 1;
  if (a3 >> 1 == a2 || (v27 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream];
  result = [v30 streamStatus];
  if (result != 2)
  {
    nullsub_1(sub_25DDD1694);
    v34 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
    swift_beginAccess();
    sub_25DDCE908(&v4[v34], v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    sub_25DDD16B0(0, 0, v19);
    v31 = v11;
    sub_25DDCE908(&v4[v34], v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    swift_beginAccess();
    sub_25DDCDE24(v13, &v4[v34]);
    v35 = swift_endAccess();
    MEMORY[0x28223BE20](v35);
    *(&v45 - 2) = v11;
    *(&v45 - 1) = v4;
    goto LABEL_11;
  }

  if (__OFSUB__(v29, a2))
  {
    goto LABEL_18;
  }

  v31 = v11;
  result = [v30 write:v46 + a2 maxLength:v29 - a2];
  if (result != -1)
  {
    if (!result)
    {
      nullsub_1(sub_25DDD1A58);
      v32 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      sub_25DDCE908(&v4[v32], v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDD1A74(v19);
      sub_25DDCE908(&v4[v32], v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v13, &v4[v32]);
      v33 = swift_endAccess();
      MEMORY[0x28223BE20](v33);
      *(&v45 - 2) = v11;
      *(&v45 - 1) = v4;
LABEL_11:
      nullsub_1(sub_25DDD3C7C);
LABEL_12:
      sub_25DDCF3B0(v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCF3B0(v31, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE200(v19);
      return sub_25DDCF3B0(v19, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    }

    if (result >= 1)
    {
      v40 = MEMORY[0x28223BE20](result);
      *(&v45 - 2) = v40;
      v41 = v40;
      nullsub_1(sub_25DDD39C8);
      v42 = [v30 hasSpaceAvailable];
      v43 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      sub_25DDCE908(&v4[v43], v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDD16B0(v41, v42, v19);
      sub_25DDCE908(&v4[v43], v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v13, &v4[v43]);
      v44 = swift_endAccess();
      MEMORY[0x28223BE20](v44);
      *(&v45 - 2) = v11;
      *(&v45 - 1) = v4;
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  MEMORY[0x28223BE20](-1);
  *(&v45 - 2) = v4;
  nullsub_1(sub_25DDD3A80);
  result = [v30 streamError];
  if (result)
  {
    v36 = result;
    v37 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
    swift_beginAccess();
    sub_25DDCE908(&v4[v37], v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v38 = v45;
    sub_25DDD1CF4(v36, v45);

    sub_25DDCE908(&v4[v37], v31, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    swift_beginAccess();
    sub_25DDCDE24(v13, &v4[v37]);
    v39 = swift_endAccess();
    MEMORY[0x28223BE20](v39);
    *(&v45 - 2) = v31;
    *(&v45 - 1) = v4;
    nullsub_1(sub_25DDD3C7C);
    v19 = v38;
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25DDCF3B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DDCF410()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v31 - v16;
  v18 = sub_25DDDCDB8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v23 = qword_27FCD0040;
  *v22 = qword_27FCD0040;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_25DDDCDC8();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v26 = sub_25DDDCF98();
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v1;
    v27[5] = ObjectType;
    v28 = v1;
    sub_25DDD1278(0, 0, v17, &unk_25DDDE8E8, v27);
    v29 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
    swift_beginAccess();
    sub_25DDCE908(v28 + v29, v9, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    sub_25DDD14E4();
    sub_25DDCE908(v28 + v29, v7, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    swift_beginAccess();
    sub_25DDCDE24(v9, v28 + v29);
    v30 = swift_endAccess();
    MEMORY[0x28223BE20](v30);
    v31[-2] = v7;
    v31[-1] = v28;
    nullsub_1(sub_25DDD3C7C);
    sub_25DDCF3B0(v9, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    sub_25DDCF3B0(v7, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    sub_25DDCE200(v13);

    return sub_25DDCF3B0(v13, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDCF830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_25DDDCD88();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = sub_25DDDCDA8();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v11 = *(v10 + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = sub_25DDDCD48();
  v5[22] = v12;
  v13 = *(v12 - 8);
  v5[23] = v13;
  v14 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v15 = sub_25DDDCDB8();
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDCFA04, 0, 0);
}

uint64_t sub_25DDCFA04()
{
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = qword_27FCD0040;
  v0[28] = qword_27FCD0040;
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D851F0], v3);
  v5 = v4;
  LOBYTE(v4) = sub_25DDDCDC8();
  v6 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v9 = v0[24];
    v10 = *(v0[14] + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_httpBody);
    sub_25DDDCD28();
    v11 = sub_25DDD3BAC(&qword_27FCCE948, MEMORY[0x277D37A28]);
    v12 = *(MEMORY[0x277D856D0] + 4);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_25DDCFBA0;
    v14 = v0[24];
    v7 = v0[22];
    v6 = (v0 + 8);
    v8 = v11;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200308](v6, v7, v8);
}

uint64_t sub_25DDCFBA0()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_25DDD0160;
  }

  else
  {
    v3 = sub_25DDCFCB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DDCFCB4()
{
  v1 = v0[5];
  *(v0 + 248) = v0[4];
  *(v0 + 264) = v1;
  return MEMORY[0x2822009F8](sub_25DDCFCE0, 0, 0);
}

uint64_t sub_25DDCFCE0()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v0[34];
    v26 = *(v0 + 16);
    v4 = v0[14];
    v3 = v0[15];
    v5 = swift_task_alloc();
    v0[35] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    *(v5 + 32) = v26;
    *(v5 + 48) = v2;
    *(v5 + 56) = v3;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    v0[36] = v7;
    *v7 = v0;
    v7[1] = sub_25DDD002C;
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000011, 0x800000025DDE03D0, sub_25DDD3940, v5, v8);
  }

  else
  {
    v23 = v0[28];
    v9 = v0[24];
    v27 = v0[27];
    v10 = v0[22];
    v11 = v0[20];
    v12 = v0[21];
    v13 = v0[18];
    v24 = v11;
    v25 = v0[19];
    v14 = v0[16];
    v22 = v0[17];
    v15 = v0[14];
    (*(v0[23] + 8))();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v0[6] = sub_25DDD3920;
    v0[7] = v16;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_25DDD0E2C;
    v0[5] = &block_descriptor;
    v17 = _Block_copy(v0 + 2);
    v18 = v15;
    sub_25DDDCD98();
    v0[13] = MEMORY[0x277D84F90];
    sub_25DDD3BAC(&qword_27FCCE950, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE958, "*\v");
    sub_25DDD3BF4(&qword_27FCCE960, &qword_27FCCE958, "*\v");
    sub_25DDDD098();
    MEMORY[0x25F8A4DE0](0, v12, v13, v17);
    _Block_release(v17);
    (*(v22 + 8))(v13, v14);
    (*(v24 + 8))(v12, v25);
    v19 = v0[7];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_25DDD002C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);

  if (v0)
  {
    v6 = sub_25DDD0388;
  }

  else
  {
    v6 = sub_25DDD02A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25DDD0160()
{
  *(v0 + 96) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_25DDD01F4, 0, 0);
}

uint64_t sub_25DDD01F4()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[18];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25DDD02A4()
{
  v1 = v0[31];
  swift_unknownObjectRelease();
  v2 = sub_25DDD3BAC(&qword_27FCCE948, MEMORY[0x277D37A28]);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_25DDCFBA0;
  v5 = v0[24];
  v6 = v0[22];

  return MEMORY[0x282200308](v0 + 8, v6, v2);
}

uint64_t sub_25DDD0388()
{
  v1 = v0[31];
  swift_unknownObjectRelease();
  v2 = v0[37];
  v3 = v0[27];
  v4 = v0[21];
  v5 = v0[18];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25DDD0440()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25DDB8C84;

  return sub_25DDCF830(v4, v5, v6, v2, v3);
}

uint64_t sub_25DDD04D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v32 = a2;
  v33 = a3;
  v7 = sub_25DDDCD88();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_25DDDCDA8();
  v31 = *(v34 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v27 = qword_27FCD0040;
  (*(v15 + 16))(v18, a1, v14);
  v19 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v22 = v32;
  v21 = v33;
  *(v20 + 2) = v32;
  *(v20 + 3) = v21;
  v23 = v29;
  *(v20 + 4) = v28;
  *(v20 + 5) = v23;
  *(v20 + 6) = v30;
  (*(v15 + 32))(&v20[v19], v18, v14);
  aBlock[4] = sub_25DDD3950;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25DDD0E2C;
  aBlock[3] = &block_descriptor_31;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  swift_unknownObjectRetain();
  sub_25DDDCD98();
  v36 = MEMORY[0x277D84F90];
  sub_25DDD3BAC(&qword_27FCCE950, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE958, "*\v");
  sub_25DDD3BF4(&qword_27FCCE960, &qword_27FCCE958, "*\v");
  sub_25DDDD098();
  MEMORY[0x25F8A4DE0](0, v13, v10, v24);
  _Block_release(v24);
  (*(v35 + 8))(v10, v7);
  (*(v31 + 8))(v13, v34);
}

uint64_t sub_25DDD08C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v10 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  nullsub_1(sub_25DDD0B28);
  v21 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(a1 + v21, v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDD0B44(a2, a3, a4, v23, v24, v20);
  sub_25DDCE908(a1 + v21, v14, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  swift_beginAccess();
  sub_25DDCDE24(v16, a1 + v21);
  swift_endAccess();
  v25 = v14;
  v26 = a1;
  nullsub_1(sub_25DDD3C7C);
  sub_25DDCF3B0(v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDCF3B0(v14, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDCE200(v20);
  return sub_25DDCF3B0(v20, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
}

uint64_t sub_25DDD0B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v14 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v7, v17, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 3)
    {
      sub_25DDCF3B0(v17, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
      (*(*(v19 - 8) + 16))(a6, a5, v19);
      type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (result != 2)
    {
      goto LABEL_13;
    }

    v23 = &unk_27FCCE898;
    v24 = 48;
    v25 = &unk_25DDDE8D0;
LABEL_12:
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v23, v25) + v24);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    result = (*(*(v28 - 8) + 8))(&v17[v27], v28);
LABEL_13:
    __break(1u);
    return result;
  }

  if (result)
  {
    v26 = *(v17 + 1);
    swift_unknownObjectRelease();
    v23 = &qword_27FCCE890;
    v24 = 64;
    v25 = &qword_25DDDE8C8;
    goto LABEL_12;
  }

  sub_25DDCF3B0(v7, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  v20 = *v17;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
  *v7 = v20;
  *(v7 + 8) = a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  (*(*(v22 - 8) + 16))(v7 + v21, a5, v22);
  swift_storeEnumTagMultiPayload();
  if (v20 == 1)
  {
    *a6 = a1;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = a4;
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain_n();
  }

  else
  {
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    swift_storeEnumTagMultiPayload();
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25DDD0E2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25DDD0E70(uint64_t a1)
{
  v2 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  nullsub_1(sub_25DDD10AC);
  v13 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(a1 + v13, v8, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDD10C8();
  sub_25DDCE908(a1 + v13, v6, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  swift_beginAccess();
  sub_25DDCDE24(v8, a1 + v13);
  swift_endAccess();
  v16 = v6;
  v17 = a1;
  nullsub_1(sub_25DDD3C7C);
  sub_25DDCF3B0(v8, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDCF3B0(v6, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  sub_25DDCE200(v12);
  return sub_25DDCF3B0(v12, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
}

uint64_t sub_25DDD10C8()
{
  v1 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v0, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25DDCF3B0(v0, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    *v0 = 0;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_9:
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    goto LABEL_10;
  }

  v7 = *(v4 + 1);
  swift_unknownObjectRelease();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
LABEL_10:
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  result = (*(*(v9 - 8) + 8))(&v4[v8], v9);
  __break(1u);
  return result;
}

uint64_t sub_25DDD1278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25DDD3848(a3, v24 - v10);
  v12 = sub_25DDDCF98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25DDD38B8(v11);
  }

  else
  {
    sub_25DDDCF88();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25DDDCF08();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25DDDCE58() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_25DDD38B8(a3);

      return v22;
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

  sub_25DDD38B8(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25DDD14E4()
{
  v1 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v0, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    sub_25DDCF3B0(v0, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    *v0 = 0;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result > 1)
  {
    if (result != 2)
    {
LABEL_9:
      result = sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      goto LABEL_10;
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
LABEL_8:
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v6 = *(v4 + 1);
    swift_unknownObjectRelease();
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25DDD16B0@<X0>(int64_t a1@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v45 = a2;
  v46 = a1;
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v3, v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  v44 = v10;
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
LABEL_14:
    if (result <= 2)
    {
      if (!result)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0);
      result = (*(v6 + 8))(&v13[*(v38 + 48)], v5);
      __break(1u);
    }

    if (result == 3)
    {
      result = sub_25DDCF3B0(v13, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      __break(1u);
    }

    goto LABEL_19;
  }

  sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  v15 = *v13;
  v16 = *(v13 + 1);
  v41 = *(v13 + 2);
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8);
  v20 = *(v19 + 64);
  v40 = v6;
  v21 = *(v6 + 32);
  v6 += 32;
  v42 = v21;
  result = (v21)(v9, &v13[v20], v5);
  if (__OFSUB__(v18 >> 1, v17))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v46;
  v22 = v15 ^ 1;
  if (((v18 >> 1) - v17) < v46)
  {
    v22 = 1;
  }

  if (v22)
  {
    goto LABEL_13;
  }

  v23 = v9;
  v24 = sub_25DDD2B80(v46, v16, v41, v17, v18);
  if (v26 == v27 >> 1)
  {
    swift_unknownObjectRelease();
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    *v4 = v45 & 1;
    (*(v40 + 16))(v4 + v28, v9, v5);
    swift_storeEnumTagMultiPayload();
    v42(v43, v9, v5);
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  }

  else
  {
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(v19 + 64);
    v33 = v23;
    v34 = v45;
    *v4 = v45 & 1;
    v35 = v24;
    *(v4 + 8) = v24;
    *(v4 + 16) = v29;
    *(v4 + 24) = v26;
    *(v4 + 32) = v27;
    v42((v4 + v32), v33, v5);
    swift_storeEnumTagMultiPayload();
    if (v34)
    {
      v36 = v35;
      v37 = v43;
      *v43 = v36;
      v37[1] = v29;
      v37[2] = v30;
      v37[3] = v31;
      type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    }

    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DDD1A74@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v1, v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      *v1 = 0;
      swift_storeEnumTagMultiPayload();
LABEL_8:
      type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v14 = *(v11 + 1);
    swift_unknownObjectRelease();
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
LABEL_7:
    v15 = *(v4 + 32);
    v15(v7, &v11[v13], v3);
    *v1 = 0;
    swift_storeEnumTagMultiPayload();
    v15(a1, v7, v3);
    goto LABEL_8;
  }

  if (result == 2)
  {
    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    goto LABEL_7;
  }

  if (result == 3)
  {
    result = sub_25DDCF3B0(v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  }

  __break(1u);
  return result;
}

id sub_25DDD1CF4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v3, v14, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      goto LABEL_4;
    }

    sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v16 = *(v14 + 1);
    swift_unknownObjectRelease();
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
LABEL_8:
    v18 = *(v7 + 32);
    v18(v10, &v14[v17], v6);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v18(a2, v10, v6);
    goto LABEL_9;
  }

  if (result == 2)
  {
    sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
    goto LABEL_8;
  }

  if (result == 4)
  {
LABEL_4:
    sub_25DDCF3B0(v3, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
LABEL_9:
    type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  __break(1u);
  return result;
}

id sub_25DDD1FA8(void *a1, uint64_t a2)
{
  v43 = a1;
  v4 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v42 - v9;
  v10 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = sub_25DDDCDB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v24 = qword_27FCD0040;
  *v23 = qword_27FCD0040;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_25DDDCDC8();
  result = (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  *(&v42 - 2) = a2;
  v27 = nullsub_1(sub_25DDD2BEC);
  if (a2 > 7)
  {
    if (a2 != 8)
    {
      if (a2 == 16)
      {
        v33 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
        swift_beginAccess();
        sub_25DDCE908(v2 + v33, v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
        v29 = v44;
        v34 = v2;
        sub_25DDD1A74(v44);
        v31 = v45;
        sub_25DDCE908(v34 + v33, v45, type metadata accessor for HTTPBodyOutputStreamBridge.State);
        swift_beginAccess();
        sub_25DDCDE24(v16, v34 + v33);
        v35 = swift_endAccess();
        MEMORY[0x28223BE20](v35);
        *(&v42 - 2) = v31;
        *(&v42 - 1) = v34;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    result = [v43 streamError];
    if (result)
    {
      v37 = result;
      v38 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      sub_25DDCE908(v2 + v38, v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      v39 = v2;
      sub_25DDD1CF4(v37, v8);

      v40 = v45;
      sub_25DDCE908(v39 + v38, v45, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v16, v39 + v38);
      v41 = swift_endAccess();
      MEMORY[0x28223BE20](v41);
      *(&v42 - 2) = v40;
      *(&v42 - 1) = v39;
      nullsub_1(sub_25DDD3C7C);
      sub_25DDCF3B0(v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCF3B0(v40, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE200(v8);
      return sub_25DDCF3B0(v8, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    }

    goto LABEL_19;
  }

  if (a2 != 1)
  {
    if (a2 == 4)
    {
      v28 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
      swift_beginAccess();
      sub_25DDCE908(v2 + v28, v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      v29 = v44;
      v30 = v2;
      sub_25DDD2730(v44);
      v31 = v45;
      sub_25DDCE908(v30 + v28, v45, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      swift_beginAccess();
      sub_25DDCDE24(v16, v30 + v28);
      v32 = swift_endAccess();
      MEMORY[0x28223BE20](v32);
      *(&v42 - 2) = v31;
      *(&v42 - 1) = v30;
LABEL_11:
      nullsub_1(sub_25DDD3C7C);
      sub_25DDCF3B0(v16, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCF3B0(v31, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      sub_25DDCE200(v29);
      return sub_25DDCF3B0(v29, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    }

LABEL_12:
    MEMORY[0x28223BE20](v27);
    *(&v42 - 2) = a2;
    return nullsub_1(sub_25DDD2C90);
  }

  v36 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_state;
  swift_beginAccess();
  sub_25DDCE908(v2 + v36, v18, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  LODWORD(v36) = swift_getEnumCaseMultiPayload();
  sub_25DDCF3B0(v18, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  if (v36 == 4)
  {
    return sub_25DDCF410();
  }

  else
  {
    return nullsub_1(sub_25DDD2714);
  }
}

uint64_t sub_25DDD2730@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v1, v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
      v14 = *(v11 + 1);
      v13 = *(v11 + 2);
      v15 = *(v11 + 4);
      v27 = *(v11 + 3);
      v28 = v13;
      v29 = v15;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8);
      v17 = *(v4 + 32);
      v17(v7, &v11[*(v16 + 64)], v3);
      v18 = *(v16 + 64);
      *v1 = 1;
      v20 = v27;
      v19 = v28;
      *(v1 + 8) = v14;
      *(v1 + 16) = v19;
      v21 = v29;
      *(v1 + 24) = v20;
      *(v1 + 32) = v21;
      v17((v1 + v18), v7, v3);
      swift_storeEnumTagMultiPayload();
      *a1 = v14;
      a1[1] = v19;
      v22 = v29;
      a1[2] = v20;
      a1[3] = v22;
      type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    }

    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    *v1 = 1;
    goto LABEL_9;
  }

  if (result == 2)
  {
    sub_25DDCF3B0(v1, type metadata accessor for HTTPBodyOutputStreamBridge.State);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0);
    v24 = *(v4 + 32);
    v24(v7, &v11[*(v23 + 48)], v3);
    v25 = *(v23 + 48);
    *v1 = 1;
    v24((v1 + v25), v7, v3);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

  if (result != 3)
  {
    __break(1u);
    return result;
  }

  sub_25DDCF3B0(v11, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  nullsub_1(sub_25DDD2D34);
LABEL_10:
  type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_25DDD2B80(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25DDD2BEC()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD000000000000027, 0x800000025DDE03A0);
  type metadata accessor for Event(0);
  sub_25DDDD128();
  MEMORY[0x25F8A4C20](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_25DDD2C90()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD00000000000001ELL, 0x800000025DDE0380);
  type metadata accessor for Event(0);
  sub_25DDDD128();
  MEMORY[0x25F8A4C20](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_25DDD2D50()
{
  v1 = type metadata accessor for HTTPBodyOutputStreamBridge.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DDCE908(v0, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v4;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25DDDD0C8();

      v32 = 0xD00000000000001BLL;
      v33 = 0x800000025DDE01C0;
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

      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE898, &unk_25DDDE8D0) + 48);
      MEMORY[0x25F8A4C20](v15, v16);

      MEMORY[0x25F8A4C20](694100012, 0xE400000000000000);
      v12 = v32;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
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
    sub_25DDDD0C8();

    v32 = 0x28206465736F6C63;
    v33 = 0xEF203A726F727265;
    v31 = v6;
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5A8, &qword_25DDDDB60);
    v8 = sub_25DDDCE48();
    MEMORY[0x25F8A4C20](v8);

    MEMORY[0x25F8A4C20](41, 0xE100000000000000);

    return v32;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = *v4;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_25DDDD0C8();

    v32 = 0xD000000000000020;
    v33 = 0x800000025DDE0200;
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

    MEMORY[0x25F8A4C20](v10, v11);

    MEMORY[0x25F8A4C20](41, 0xE100000000000000);
    return v32;
  }

  v19 = *v4;
  v20 = v4[1];
  v21 = v4[3];
  v22 = v4[4];
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_25DDDD0C8();

  v32 = 0xD00000000000001ALL;
  v33 = 0x800000025DDE01E0;
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

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE890, &qword_25DDDE8C8) + 64);
  MEMORY[0x25F8A4C20](v24, v25);

  result = MEMORY[0x25F8A4C20](5972012, 0xE300000000000000);
  if (!__OFSUB__(v22 >> 1, v21))
  {
    v31 = (v22 >> 1) - v21;
    v28 = sub_25DDDD178();
    MEMORY[0x25F8A4C20](v28);

    MEMORY[0x25F8A4C20](0x295D736574796220, 0xE800000000000000);
    swift_unknownObjectRelease();
    v12 = v32;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
    (*(*(v29 - 8) + 8))(v4 + v26, v29);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDD319C()
{
  v1 = type metadata accessor for HTTPBodyOutputStreamBridge.State.Action(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDCE908(v0, v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
        return 0x7479426574697277;
      }

      else
      {
        sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
        return 0xD00000000000001CLL;
      }
    }

    sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    v7 = 0x656D75736572;
    return v7 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_25DDCF3B0(v4, type metadata accessor for HTTPBodyOutputStreamBridge.State.Action);
    v7 = 0x6C65636E6163;
    return v7 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 1701736302;
  }

  else
  {
    return 0x72745365736F6C63;
  }
}

uint64_t sub_25DDD3398(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25DDD33D0()
{
  result = type metadata accessor for HTTPBodyOutputStreamBridge.State(319);
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

void sub_25DDD347C()
{
  sub_25DDD3518();
  if (v0 <= 0x3F)
  {
    sub_25DDD3548();
    if (v1 <= 0x3F)
    {
      sub_25DDD35DC();
      if (v2 <= 0x3F)
      {
        sub_25DDD3654();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25DDD3518()
{
  result = qword_27FCCE908;
  if (!qword_27FCCE908)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27FCCE908);
  }

  return result;
}

void sub_25DDD3548()
{
  if (!qword_27FCCE910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE688, &qword_25DDDE730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FCCE880, &qword_25DDDE8C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FCCE910);
    }
  }
}

void sub_25DDD35DC()
{
  if (!qword_27FCCE920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FCCE880, &qword_25DDDE8C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FCCE920);
    }
  }
}

void sub_25DDD3654()
{
  if (!qword_27FCCE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    v0 = sub_25DDDD088();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCE928);
    }
  }
}

void sub_25DDD36B8()
{
  sub_25DDD3758();
  if (v0 <= 0x3F)
  {
    sub_25DDD37F8(319, &unk_27FCCE938, MEMORY[0x277D84B78], MEMORY[0x277D83F98]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DDD3758()
{
  if (!qword_27FCCE930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    v0 = sub_25DDDCF38();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCE930);
    }
  }
}

void sub_25DDD37F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25DDD3848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DDD38B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25DDD3950()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_25DDD08C4(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_25DDD39C8()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();

  v2 = sub_25DDDD178();
  MEMORY[0x25F8A4C20](v2);

  MEMORY[0x25F8A4C20](0xD000000000000011, 0x800000025DDE0520);
  return 0xD00000000000001DLL;
}

id sub_25DDD3A80()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD00000000000003CLL, 0x800000025DDE04C0);
  result = [*(v1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream) streamError];
  if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDD128();

    MEMORY[0x25F8A4C20](46, 0xE100000000000000);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25DDD3B60()
{
  result = qword_27FCCE968;
  if (!qword_27FCCE968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCCE968);
  }

  return result;
}

uint64_t sub_25DDD3BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25DDD3BF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *sub_25DDD3C5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25DDD3C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68);
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v11 = sub_25DDDCAB8();
  v8[12] = v11;
  v12 = *(v11 - 8);
  v8[13] = v12;
  v13 = *(v12 + 64) + 15;
  v8[14] = swift_task_alloc();
  v14 = sub_25DDDCB88();
  v8[15] = v14;
  v15 = *(v14 - 8);
  v8[16] = v15;
  v16 = *(v15 + 64) + 15;
  v8[17] = swift_task_alloc();
  v17 = sub_25DDDC9F8();
  v8[18] = v17;
  v18 = *(v17 - 8);
  v8[19] = v18;
  v19 = *(v18 + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDD3E44, 0, 0);
}

uint64_t sub_25DDD3E44()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 32);
  (*(*(v0 + 128) + 16))(v2, *(v0 + 24), *(v0 + 120));
  (*(v5 + 16))(v3, v6, v4);
  sub_25DDD7778(v2, v3, v1);
  v7 = *(v0 + 160);
  v8 = *(v0 + 72);
  v21 = *(v0 + 40);
  v23 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = sub_25DDDC9A8();
  v11 = &selRef_dataTaskWithRequest_;
  if (v9)
  {
    v11 = &selRef_uploadTaskWithStreamedRequest_;
  }

  v12 = [v8 *v11];
  *(v0 + 168) = v12;

  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *(v13 + 16) = v22;
  *(v13 + 32) = v24;
  *(v13 + 48) = v12;
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *(v14 + 16) = v12;
  v15 = *(MEMORY[0x277D85A10] + 4);
  v16 = v12;
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_25DDD4088;
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);

  return MEMORY[0x282200830](v18, &unk_25DDDEA78);
}

uint64_t sub_25DDD4088()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v6 = sub_25DDD4304;
  }

  else
  {
    v6 = sub_25DDD41F4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25DDD41F4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v1, v2);
  v9 = *(v6 + *(v7 + 48));
  v10 = sub_25DDDCBD8();
  (*(*(v10 - 8) + 32))(v8, v6, v10);

  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t sub_25DDD4304()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25DDD43B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = sub_25DDDCD08();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = *(*(sub_25DDDCD38() - 8) + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDD44AC, 0, 0);
}

uint64_t sub_25DDD44AC()
{
  sub_25DDDCFA8();
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  type metadata accessor for BidirectionalStreamingURLSessionDelegate();

  v7 = sub_25DDCA290(v6, v4, v3, v1);
  v0[17] = v7;
  v8 = swift_task_alloc();
  v0[18] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[19] = v10;
  v11 = sub_25DDD4C94();
  *v10 = v0;
  v10[1] = sub_25DDD464C;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000068, 0x800000025DDE0620, sub_25DDD4C8C, v8, v11);
}

uint64_t sub_25DDD464C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_25DDD4938;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_25DDD4768;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DDD4768()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 40);
  sub_25DDDCD58();
  v8 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStream;
  swift_beginAccess();
  *(v0 + 48) = *(v2 + v8);

  v9 = v7;
  sub_25DDD6984(v9, v3);
  (*(v5 + 104))(v4, *MEMORY[0x277D379C8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9A0, &unk_25DDDEA80);
  sub_25DDD4CE0();
  v10 = sub_25DDDCD78();
  sub_25DDDCFA8();
  if (v1)
  {
    v11 = *(v0 + 136);

    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
  }

  else
  {
    sub_25DDD6A40(v9, *(v0 + 56));
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 56);

    *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68) + 48)) = v10;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25DDD4938()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 160);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25DDD49B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25DDB8C84;

  return sub_25DDD43B8(a1, v4, v5, v6, v7, v8);
}

id sub_25DDD4A7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE680, &qword_25DDDE728);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  swift_beginAccess();
  sub_25DDCA024(v9, a2 + v12);
  swift_endAccess();
  [a3 setDelegate_];
  return [a3 resume];
}

id sub_25DDD4BE0()
{
  v1 = *(v0 + 16);
  nullsub_1(sub_25DDD4C70);

  return [v1 cancel];
}

unint64_t sub_25DDD4C94()
{
  result = qword_27FCCE998;
  if (!qword_27FCCE998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCCE998);
  }

  return result;
}

unint64_t sub_25DDD4CE0()
{
  result = qword_27FCCE9A8;
  if (!qword_27FCCE9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE9A0, &unk_25DDDEA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCE9A8);
  }

  return result;
}

int64x2_t URLSessionTransport.Configuration.init(session:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(0x4000uLL);
  *(a2 + 8) = result;
  *(a2 + 24) = 0x8000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_25DDD4DCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_25DDD4DE0()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  return result;
}

uint64_t sub_25DDD4DF0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 8) = result;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4 & 1;
  return result;
}

id sub_25DDD4E04()
{
  v0 = [objc_opt_self() sharedSession];

  return v0;
}

id URLSessionTransport.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return v2;
}

__n128 URLSessionTransport.configuration.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *(a1 + 32);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

int64x2_t sub_25DDD4EE8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = [objc_opt_self() sharedSession];
  result = vdupq_n_s64(0x4000uLL);
  *(a1 + 8) = result;
  *(a1 + 24) = 0x8000;
  *(a1 + 32) = 0;
  return result;
}

__n128 URLSessionTransport.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  return result;
}

uint64_t URLSessionTransport.send(_:body:baseURL:operationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68);
  *(v5 + 56) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v8 = sub_25DDDCAB8();
  *(v5 + 72) = v8;
  v9 = *(v8 - 8);
  *(v5 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v11 = sub_25DDDCB88();
  *(v5 + 96) = v11;
  v12 = *(v11 - 8);
  *(v5 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v14 = sub_25DDDC9F8();
  *(v5 + 120) = v14;
  v15 = *(v14 - 8);
  *(v5 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v18 = *v4;
  *(v5 + 136) = v17;
  *(v5 + 144) = v18;
  *(v5 + 152) = *(v4 + 1);
  *(v5 + 168) = v4[3];
  *(v5 + 248) = *(v4 + 32);

  return MEMORY[0x2822009F8](sub_25DDD513C, 0, 0);
}

uint64_t sub_25DDD513C()
{
  if (*(v0 + 248))
  {
    sub_25DDDCFA8();
    v1 = *(v0 + 136);
    v2 = *(v0 + 112);
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 48);
    (*(*(v0 + 104) + 16))(v2, *(v0 + 32), *(v0 + 96));
    (*(v5 + 16))(v3, v6, v4);
    sub_25DDD7778(v2, v3, v1);
    v17 = *(v0 + 40);
    if (v17)
    {
      v18 = *(MEMORY[0x277D37950] + 4);
      v19 = *(v0 + 40);

      v20 = swift_task_alloc();
      *(v0 + 184) = v20;
      *v20 = v0;
      v20[1] = sub_25DDD5620;

      return MEMORY[0x282197EB8](v17, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      sub_25DDDCFA8();
      *(v0 + 16) = 0;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
      v28 = *(v0 + 136);
      v22 = sub_25DDC9A38(v0 + 16, v21);
      *(v0 + 216) = v22;
      v23 = swift_task_alloc();
      *(v0 + 224) = v23;
      v23[1] = vextq_s8(v28, v28, 8uLL);
      v23[2].i64[0] = v22;
      v24 = *(MEMORY[0x277D85A10] + 4);
      v25 = swift_task_alloc();
      *(v0 + 232) = v25;
      *v25 = v0;
      v25[1] = sub_25DDD59CC;
      v27 = *(v0 + 56);
      v26 = *(v0 + 64);

      return MEMORY[0x282200830](v26, &unk_25DDDEAB0);
    }
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_25DDD5498;
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);

    return sub_25DDD3C84(v14, v15, v12, v13, v10, v8, v9);
  }
}

uint64_t sub_25DDD5498(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;

  v7 = v4[17];
  v8 = v4[14];
  v9 = v4[11];
  v10 = v4[8];

  v12 = *(v6 + 8);
  if (!v1)
  {
    v11 = a1;
  }

  return v12(v11);
}

uint64_t sub_25DDD5620(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 184);
  v8 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v9 = sub_25DDD5924;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v9 = sub_25DDD5754;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25DDD5754()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[17];
  sub_25DDDC9E8();
  v4 = v0[24];
  sub_25DDDCFA8();
  if (v4)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    v5 = v0[17];
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[8];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v0[2] = 0;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
    v18 = *(v0 + 17);
    v12 = sub_25DDC9A38((v0 + 2), v11);
    v0[27] = v12;
    v13 = swift_task_alloc();
    v0[28] = v13;
    v13[1] = vextq_s8(v18, v18, 8uLL);
    v13[2].i64[0] = v12;
    v14 = *(MEMORY[0x277D85A10] + 4);
    v15 = swift_task_alloc();
    v0[29] = v15;
    *v15 = v0;
    v15[1] = sub_25DDD59CC;
    v17 = v0[7];
    v16 = v0[8];

    return MEMORY[0x282200830](v16, &unk_25DDDEAB0);
  }
}

uint64_t sub_25DDD5924()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25DDD59CC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_25DDD5BF8;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_25DDD5AE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DDD5AE8()
{
  v1 = v0[27];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[3];

  v8 = *(v5 + *(v6 + 48));
  v9 = sub_25DDDCBD8();
  (*(*(v9 - 8) + 32))(v7, v5, v9);
  (*(v3 + 8))(v2, v4);
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[8];

  v14 = v0[1];

  return v14(v8);
}

uint64_t sub_25DDD5BF8()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  (*(v4 + 8))(v3, v5);
  v6 = v0[30];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25DDD5CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68);
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = sub_25DDDCAB8();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = sub_25DDDCB88();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v13 = *(v12 + 64) + 15;
  v5[15] = swift_task_alloc();
  v14 = sub_25DDDC9F8();
  v5[16] = v14;
  v15 = *(v14 - 8);
  v5[17] = v15;
  v16 = *(v15 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDD5E74, 0, 0);
}

uint64_t sub_25DDD5E74()
{
  sub_25DDDCFA8();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[5];
  (*(v0[14] + 16))(v2, v0[4], v0[13]);
  (*(v5 + 16))(v3, v6, v4);
  sub_25DDD7778(v2, v3, v1);
  v7 = v0[6];
  if (v7)
  {
    v8 = *(MEMORY[0x277D37950] + 4);
    v9 = v0[6];

    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_25DDD6134;

    return MEMORY[0x282197EB8](v7, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_25DDDCFA8();
    v11 = v0[18];
    v12 = v0[7];
    v0[2] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
    v14 = sub_25DDC9A38((v0 + 2), v13);
    v0[23] = v14;
    v15 = swift_task_alloc();
    v0[24] = v15;
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = v14;
    v16 = *(MEMORY[0x277D85A10] + 4);
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v17[1] = sub_25DDD6430;
    v19 = v0[8];
    v18 = v0[9];

    return MEMORY[0x282200830](v18, &unk_25DDDEAC0);
  }
}

uint64_t sub_25DDD6134(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 152);
  v8 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v9 = sub_25DDD665C;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v9 = sub_25DDD6268;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25DDD6268()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  sub_25DDDC9E8();
  v4 = v0[20];
  sub_25DDDCFA8();
  if (v4)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v5 = v0[18];
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[9];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[18];
    v12 = v0[7];
    v0[2] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
    v14 = sub_25DDC9A38((v0 + 2), v13);
    v0[23] = v14;
    v15 = swift_task_alloc();
    v0[24] = v15;
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = v14;
    v16 = *(MEMORY[0x277D85A10] + 4);
    v17 = swift_task_alloc();
    v0[25] = v17;
    *v17 = v0;
    v17[1] = sub_25DDD6430;
    v19 = v0[8];
    v18 = v0[9];

    return MEMORY[0x282200830](v18, &unk_25DDDEAC0);
  }
}

uint64_t sub_25DDD6430()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_25DDD6704;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_25DDD654C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DDD654C()
{
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[3];

  v10 = *(v7 + *(v8 + 48));
  v11 = sub_25DDDCBD8();
  (*(*(v11 - 8) + 32))(v9, v7, v11);
  (*(v3 + 8))(v2, v4);

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_25DDD665C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25DDD6704()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  (*(v4 + 8))(v3, v5);
  v6 = v0[26];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25DDD67C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25DDD6884;

  return URLSessionTransport.send(_:body:baseURL:operationID:)(a1, a2, a3, a4);
}

uint64_t sub_25DDD6884(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_25DDD6984@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 expectedContentLength] == -1)
  {

    v5 = MEMORY[0x277D37A20];
  }

  else
  {
    v4 = [a1 expectedContentLength];

    *a2 = v4;
    v5 = MEMORY[0x277D37A18];
  }

  v6 = *v5;
  v7 = sub_25DDDCD38();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

void sub_25DDD6A40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25DDDCC88();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B8, &qword_25DDDEAC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v55 - v10;
  v11 = sub_25DDDCC28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = v55 - v17;
  v66 = sub_25DDDCB28();
  v18 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v19 = sub_25DDDCBB8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    goto LABEL_4;
  }

  v22 = v21;
  v62 = v12;
  v23 = a2;
  v24 = a1;
  if ([v22 statusCode] > 0x3E7)
  {

    a1 = v22;
LABEL_4:
    type metadata accessor for URLSessionTransportError();
    sub_25DDDC148(&qword_27FCCE9C0, type metadata accessor for URLSessionTransportError);
    swift_allocError();
    *v25 = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v61 = v24;
  MEMORY[0x25F8A4920]([v22 statusCode], 0, 0xE000000000000000);
  sub_25DDDCB18();
  sub_25DDDCBC8();
  v26 = [v22 allHeaderFields];
  v27 = sub_25DDDCDE8();

  v28 = sub_25DDD7094(v27);

  if (v28)
  {
    v59 = v16;
    v60 = v23;
    v64 = v11;
    v55[1] = v2;
    v29 = *(v28 + 16);
    v30 = sub_25DDDCB98();
    MEMORY[0x25F8A4880](v29);
    v30(v70, 0);
    v31 = 0;
    v65 = v28;
    v34 = *(v28 + 64);
    v33 = v28 + 64;
    v32 = v34;
    v35 = 1 << *(v33 - 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v32;
    v38 = (v35 + 63) >> 6;
    v63 = (v62 + 48);
    v57 = (v62 + 16);
    v58 = (v62 + 32);
    v56 = (v62 + 8);
    v39 = v68;
    v40 = v64;
    if ((v36 & v32) != 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    while (1)
    {
      v45 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v45 >= v38)
      {

        goto LABEL_19;
      }

      v37 = *(v33 + 8 * v45);
      ++v31;
      if (v37)
      {
        while (1)
        {
          v46 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
          v47 = (v45 << 10) | (16 * v46);
          v48 = (*(v65 + 48) + v47);
          v49 = *v48;
          v50 = v48[1];
          v51 = (*(v65 + 56) + v47);
          v53 = *v51;
          v52 = v51[1];

          sub_25DDDCC38();
          if ((*v63)(v39, 1, v40) == 1)
          {

            sub_25DDCC9E4(v39, &qword_27FCCE9B8, &qword_25DDDEAC8);
            v31 = v45;
            if (!v37)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v41 = *v58;
            v62 = v53;
            v42 = v69;
            v41();
            v43 = v59;
            (*v57)(v59, v42, v40);
            sub_25DDD7374(v43, v62, v52, v67);
            v62 = sub_25DDDCB98();
            v44 = MEMORY[0x277D0F9A8];
            sub_25DDDC148(&qword_27FCCE9C8, MEMORY[0x277D0F9A8]);
            sub_25DDDCFE8();
            sub_25DDDC148(&qword_27FCCE9D0, v44);
            v39 = v68;
            sub_25DDDD038();
            (v62)(v70, 0);
            (*v56)(v69, v40);
            v31 = v45;
            if (!v37)
            {
              goto LABEL_12;
            }
          }

LABEL_11:
          v45 = v31;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v54 = v61;
  }
}

unint64_t sub_25DDD7094(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA48, "|\t");
    v2 = sub_25DDDD168();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_25DDDC5C0(*(v1 + 48) + 40 * v17, v30);
    sub_25DDDC61C(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_25DDDC5C0(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_25DDCC9E4(v27, &qword_27FCCEA80, &qword_25DDDECD8);

      goto LABEL_22;
    }

    sub_25DDDC61C(v28 + 8, v26);
    sub_25DDCC9E4(v27, &qword_27FCCEA80, &qword_25DDDECD8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_25DDDAAB0(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_25DDD7374@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v40 = sub_25DDDCC88();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v39 = &v35 - v15;
  v16 = sub_25DDDCC28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25DDD9088(a2, a3))
  {
    (*(v17 + 16))(v20, a1, v16);
    sub_25DDDCC48();
    result = (*(v17 + 8))(a1, v16);
LABEL_11:
    v31 = *MEMORY[0x277D85DE8];
    return result;
  }

  v36 = 0;
  v37 = v16;
  v22 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v22 = a2;
  }

  v23 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v23 = 11;
  }

  isStackAllocationSafe = sub_25DDDC3B0(0xFuLL, v23 | (v22 << 16), a2, a3);
  if (isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v25 = isStackAllocationSafe;
  if (isStackAllocationSafe <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_25DDD9220(&v35 - v26, v25, a2, a3, a1);

    if (!v36)
    {
      v27 = *(v8 + 32);
      v28 = v38;
      v29 = v40;
      v27(v38, v12, v40);
      (*(v17 + 8))(a1, v37);
      v30 = v39;
      v27(v39, v28, v29);
      result = (v27)(a4, v30, v29);
      goto LABEL_11;
    }

    v34 = v36;
    swift_willThrow();

    __break(1u);
  }

  else
  {
    v16 = swift_slowAlloc();
    v32 = v39;
    sub_25DDD9220(v16, v25, a2, a3, a1);
    v33 = v36;
    if (!v36)
    {

      MEMORY[0x25F8A54E0](v16, -1, -1);
      (*(v17 + 8))(a1, v37);
      result = (*(v8 + 32))(a4, v32, v40);
      goto LABEL_11;
    }
  }

  result = MEMORY[0x25F8A54E0](v16, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_25DDD7778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v254 = a1;
  v241 = a3;
  v4 = sub_25DDDCC28();
  v262 = *(v4 - 8);
  v5 = *(v262 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v269 = &v237 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v248 = &v237 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v242 = &v237 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v263 = &v237 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v266 = (&v237 - v15);
  MEMORY[0x28223BE20](v14);
  v256 = &v237 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9D8, &qword_25DDDEAD0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v264 = &v237 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v265 = &v237 - v21;
  v267 = sub_25DDDCC88();
  v243 = *(v267 - 8);
  v22 = *(v243 + 64);
  v23 = MEMORY[0x28223BE20](v267);
  v257 = &v237 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v255 = &v237 - v25;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9E0, &qword_25DDDEAD8);
  v26 = *(*(v261 - 8) + 64);
  MEMORY[0x28223BE20](v261);
  v260 = &v237 - v27;
  v259 = sub_25DDDCB28();
  v250 = *(v259 - 8);
  v28 = *(v250 + 8);
  MEMORY[0x28223BE20](v259);
  v247 = (&v237 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v270 = sub_25DDDCB68();
  v246 = *(v270 - 8);
  v30 = *(v246 + 64);
  MEMORY[0x28223BE20](v270);
  v245 = &v237 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9E8, &qword_25DDDEAE0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v276 = (&v237 - v34);
  v252 = sub_25DDDCAB8();
  v251 = *(v252 - 8);
  v35 = *(v251 + 64);
  v36 = MEMORY[0x28223BE20](v252);
  v244 = &v237 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v240 = &v237 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9F0, &qword_25DDDEAE8);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v43 = &v237 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v237 - v44;
  v46 = sub_25DDDCA68();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v237 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v253 = &v237 - v52;
  v249 = a2;
  sub_25DDDCAA8();
  sub_25DDDCA58();

  v53 = *(v47 + 48);
  if (v53(v45, 1, v46) == 1)
  {
    v43 = v45;
    v54 = v254;
LABEL_5:
    sub_25DDCC9E4(v43, &qword_27FCCE9F0, &qword_25DDDEAE8);
    type metadata accessor for URLSessionTransportError();
    sub_25DDDC148(&qword_27FCCE9C0, type metadata accessor for URLSessionTransportError);
    swift_allocError();
    v58 = v57;
    v59 = MEMORY[0x25F8A48C0]();
    v61 = 0x3E6C696E3CLL;
    if (v60)
    {
      v61 = v59;
    }

    v62 = 0xE500000000000000;
    if (v60)
    {
      v62 = v60;
    }

    *v58 = v61;
    v58[1] = v62;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9F8, &qword_25DDDEAF0);
    v64 = *(v63 + 64);
    v65 = v58 + *(v63 + 48);
    MEMORY[0x25F8A48F0]();
    v66 = v251;
    v67 = v249;
    v68 = v252;
    (*(v251 + 16))(v58 + v64, v249, v252);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v66 + 8))(v67, v68);
    v69 = sub_25DDDCB88();
    return (*(*(v69 - 8) + 8))(v54, v69);
  }

  v271 = v51;
  v268 = v4;
  v55 = *(v47 + 32);
  v56 = v55(v253, v45, v46);
  v54 = v254;
  MEMORY[0x25F8A48C0](v56);
  sub_25DDDCA58();

  if (v53(v43, 1, v46) == 1)
  {
    (*(v47 + 8))(v253, v46);
    goto LABEL_5;
  }

  v239 = v47;
  v55(v271, v43, v46);
  v71 = sub_25DDDCA18();
  v73 = v72;
  v74 = v46;
  v75 = sub_25DDDCA08();
  MEMORY[0x25F8A4C20](v71, v73);
  v75(&v274, 0);
  sub_25DDDCA28();
  sub_25DDDCA38();
  v76 = v276;
  sub_25DDDCA48();
  v77 = v251;
  v78 = v252;
  if ((*(v251 + 48))(v76, 1, v252) == 1)
  {
    sub_25DDCC9E4(v76, &qword_27FCCE9E8, &qword_25DDDEAE0);
    type metadata accessor for URLSessionTransportError();
    sub_25DDDC148(&qword_27FCCE9C0, type metadata accessor for URLSessionTransportError);
    swift_allocError();
    v80 = v79;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9F8, &qword_25DDDEAF0);
    v82 = *(v81 + 48);
    v83 = *(v81 + 64);
    *v80 = v71;
    v80[1] = v73;
    v84 = v77;
    v85 = v254;
    MEMORY[0x25F8A48F0]();
    v86 = v249;
    (*(v84 + 16))(v80 + v83, v249, v78);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v84 + 8))(v86, v78);
    v87 = sub_25DDDCB88();
    (*(*(v87 - 8) + 8))(v85, v87);
    v88 = *(v239 + 8);
    v88(v271, v74);
    return (v88)(v253, v74);
  }

  v238 = v74;

  v89 = v240;
  (*(v77 + 32))(v240, v76, v78);
  (*(v77 + 16))(v244, v89, v78);
  v90 = sub_25DDDC9C8();
  v91 = v245;
  v92 = MEMORY[0x25F8A48F0](v90);
  MEMORY[0x25F8A48D0](v92);
  (*(v246 + 8))(v91, v270);
  v93 = sub_25DDDC998();
  v94 = v247;
  MEMORY[0x25F8A48B0](v93);
  v95 = sub_25DDDC148(&qword_27FCCE9C8, MEMORY[0x277D0F9A8]);
  v96 = v259;
  sub_25DDDCFC8();
  sub_25DDDCFE8();
  v97 = sub_25DDDCFD8();
  v98 = v250;
  v99 = *(v250 + 1);
  v99(v94, v96);
  v100 = sub_25DDDC148(&qword_27FCCEA00, MEMORY[0x277D0F9F8]);
  v270 = MEMORY[0x25F8A4B70](v97, v268, MEMORY[0x277D837D0], v100);
  MEMORY[0x25F8A48B0]();
  v101 = v260;
  (*(v98 + 2))(v260, v94, v96);
  v102 = *(v261 + 36);
  sub_25DDDCFC8();
  v99(v94, v96);
  v103 = v95;
  sub_25DDDCFE8();
  if (*&v102[v101] != v274)
  {
    v247 = (v243 + 16);
    v246 = v243 + 32;
    v261 = v262 + 8;
    v243 += 8;
    v163 = v257;
    v245 = v103;
    v244 = v102;
    while (1)
    {
      v172 = sub_25DDDD028();
      v173 = v255;
      v174 = v267;
      (*v247)(v255);
      v172(&v274, 0);
      sub_25DDDCFF8();
      v175 = (*v246)(v163, v173, v174);
      v176 = v256;
      MEMORY[0x25F8A49E0](v175);
      v177 = v270;
      if (!*(v270 + 16))
      {
        break;
      }

      v178 = sub_25DDDAB28(v176);
      if ((v179 & 1) == 0)
      {
        break;
      }

      v180 = (*(v177 + 56) + 16 * v178);
      v182 = *v180;
      v181 = v180[1];
      v183 = *v261;

      v184 = v268;
      v185 = (v183)(v176, v268);
      v186 = v263;
      v187 = MEMORY[0x25F8A49E0](v185);
      v188 = v242;
      MEMORY[0x25F8A4990](v187);
      v189 = MEMORY[0x25F8A4980](v186, v188);
      (v183)(v188, v184);
      v276 = v183;
      v190 = (v183)(v186, v184);
      if (v189)
      {
        v191 = 8251;
      }

      else
      {
        v191 = 8236;
      }

      MEMORY[0x25F8A49E0](v190);
      v274 = v182;
      v275 = v181;
      MEMORY[0x25F8A4C20](v191, 0xE200000000000000);

      v193 = MEMORY[0x25F8A49F0](v192);
      v195 = v193;
      v196 = v194;
      if ((v194 & 0x2000000000000000) != 0)
      {
        v197 = HIBYTE(v194) & 0xF;
      }

      else
      {
        v197 = v193 & 0xFFFFFFFFFFFFLL;
      }

      v198 = (v193 >> 59) & 1;
      if ((v194 & 0x1000000000000000) == 0)
      {
        LOBYTE(v198) = 1;
      }

      v199 = 4 << v198;
      v200 = v194 & 0xFFFFFFFFFFFFFFLL;
      v201 = (v194 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v202 = 15;
      do
      {
        while (1)
        {
          if (4 * v197 == v202 >> 14)
          {

            v163 = v257;
            v227 = MEMORY[0x25F8A49F0](v226);
            v229 = v228;
            goto LABEL_102;
          }

          v203 = v202 & 0xC;
          v204 = v202;
          if (v203 == v199)
          {
            v208 = v202;
            v204 = sub_25DDDBB80(v202, v195, v196);
            v202 = v208;
          }

          v205 = v204 >> 16;
          if (v204 >> 16 >= v197)
          {
            goto LABEL_106;
          }

          if ((v196 & 0x1000000000000000) != 0)
          {
            break;
          }

          if ((v196 & 0x2000000000000000) != 0)
          {
            v272 = v195;
            v273 = v200;
            v206 = &v272;
          }

          else
          {
            v206 = v201;
            if ((v195 & 0x1000000000000000) == 0)
            {
              v250 = v202;
              v206 = sub_25DDDD0F8();
              v202 = v250;
            }
          }

          v207 = *(v206 + v205);
          if (v203 == v199)
          {
            goto LABEL_72;
          }

LABEL_67:
          if ((v196 & 0x1000000000000000) != 0)
          {
            goto LABEL_68;
          }

LABEL_56:
          v202 = (v202 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v207 < 0)
          {
            goto LABEL_101;
          }
        }

        v250 = v202;
        v207 = sub_25DDDCED8();
        v202 = v250;
        if (v203 != v199)
        {
          goto LABEL_67;
        }

LABEL_72:
        v202 = sub_25DDDBB80(v202, v195, v196);
        if ((v196 & 0x1000000000000000) == 0)
        {
          goto LABEL_56;
        }

LABEL_68:
        if (v197 <= v202 >> 16)
        {
          goto LABEL_107;
        }

        v202 = sub_25DDDCEB8();
      }

      while ((v207 & 0x80) == 0);
LABEL_101:

      v163 = v257;
      v230 = v258;
      sub_25DDDCBE8();
      v258 = v230;
      v227 = v272;
      v229 = v273;
LABEL_102:
      MEMORY[0x25F8A4C20](v227, v229);

      v231 = v274;
      v232 = v275;
      v233 = v270;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = v233;
      v235 = v231;
      v236 = v248;
      sub_25DDDB4E0(v235, v232, v248, isUniquelyReferenced_nonNull_native);
      v276(v236, v268);
      v270 = v274;
      (*v243)(v163, v267);
LABEL_44:
      v104 = v271;
      v101 = v260;
      sub_25DDDCFE8();
      if (*&v244[v101] == v274)
      {
        goto LABEL_14;
      }
    }

    v250 = *v261;
    v209 = (v250)(v176, v268);
    v210 = MEMORY[0x25F8A49E0](v209);
    v211 = MEMORY[0x25F8A49F0](v210);
    v213 = v211;
    v214 = v212;
    if ((v212 & 0x2000000000000000) != 0)
    {
      v215 = HIBYTE(v212) & 0xF;
    }

    else
    {
      v215 = v211 & 0xFFFFFFFFFFFFLL;
    }

    v216 = (v211 >> 59) & 1;
    if ((v212 & 0x1000000000000000) == 0)
    {
      LOBYTE(v216) = 1;
    }

    v217 = 4 << v216;
    v276 = (v212 & 0xFFFFFFFFFFFFFFLL);
    v218 = (v212 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v219 = 15;
    while (1)
    {
      while (1)
      {
        if (4 * v215 == v219 >> 14)
        {

          v163 = v257;
          v165 = MEMORY[0x25F8A49F0](v164);
          v167 = v166;
LABEL_43:
          v168 = v270;
          v169 = swift_isUniquelyReferenced_nonNull_native();
          v274 = v168;
          v170 = v165;
          v171 = v266;
          sub_25DDDB4E0(v170, v167, v266, v169);
          (v250)(v171, v268);
          (*v243)(v163, v267);
          v270 = v274;
          goto LABEL_44;
        }

        v220 = v219 & 0xC;
        v221 = v219;
        if (v220 == v217)
        {
          v221 = sub_25DDDBB80(v219, v213, v214);
        }

        v222 = v221 >> 16;
        if (v221 >> 16 >= v215)
        {
          goto LABEL_104;
        }

        if ((v214 & 0x1000000000000000) == 0)
        {
          break;
        }

        v224 = sub_25DDDCED8();
        if (v220 == v217)
        {
          goto LABEL_97;
        }

LABEL_92:
        if ((v214 & 0x1000000000000000) == 0)
        {
          goto LABEL_80;
        }

LABEL_93:
        if (v215 <= v219 >> 16)
        {
          goto LABEL_105;
        }

        v219 = sub_25DDDCEB8();
        if (v224 < 0)
        {
LABEL_99:

          v163 = v257;
          v225 = v258;
          sub_25DDDCBE8();
          v258 = v225;
          v165 = v274;
          v167 = v275;
          goto LABEL_43;
        }
      }

      if ((v214 & 0x2000000000000000) != 0)
      {
        v274 = v213;
        v275 = v276;
        v224 = *(&v274 + v222);
        if (v220 == v217)
        {
          goto LABEL_97;
        }

        goto LABEL_92;
      }

      v223 = v218;
      if ((v213 & 0x1000000000000000) == 0)
      {
        v223 = sub_25DDDD0F8();
      }

      v224 = *(v223 + v222);
      if (v220 != v217)
      {
        goto LABEL_92;
      }

LABEL_97:
      v219 = sub_25DDDBB80(v219, v213, v214);
      if ((v214 & 0x1000000000000000) != 0)
      {
        goto LABEL_93;
      }

LABEL_80:
      v219 = (v219 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v224 < 0)
      {
        goto LABEL_99;
      }
    }
  }

  v104 = v271;
LABEL_14:
  sub_25DDCC9E4(v101, &qword_27FCCE9E0, &qword_25DDDEAD8);
  v105 = v270;
  v106 = *(v270 + 16);

  v107 = MEMORY[0x25F8A4B70](v106, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v108 = 0;
  v109 = *(v105 + 64);
  v257 = (v105 + 64);
  v110 = 1 << *(v105 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & v109;
  v113 = (v110 + 63) >> 6;
  v259 = v262 + 16;
  v260 = v113;
  v266 = (v262 + 32);
  v261 = v262 + 8;
  v114 = v268;
  while (1)
  {
    v276 = v107;
    if (!v112)
    {
      break;
    }

    v118 = v108;
LABEL_28:
    v121 = __clz(__rbit64(v112));
    v112 &= v112 - 1;
    v122 = v121 | (v118 << 6);
    v123 = v270;
    v125 = v262;
    v124 = v263;
    (*(v262 + 16))(v263, *(v270 + 48) + *(v262 + 72) * v122, v114);
    v126 = (*(v123 + 56) + 16 * v122);
    v127 = v126[1];
    v267 = *v126;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA08, &qword_25DDDEAF8);
    v129 = v264;
    v130 = &v264[*(v128 + 48)];
    (*(v125 + 32))(v264, v124, v114);
    *v130 = v267;
    v130[1] = v127;
    (*(*(v128 - 8) + 56))(v129, 0, 1, v128);

    v120 = v118;
    v131 = v129;
    v104 = v271;
LABEL_29:
    v132 = v265;
    sub_25DDDBC60(v131, v265, &qword_27FCCE9D8, &qword_25DDDEAD0);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA08, &qword_25DDDEAF8);
    if ((*(*(v133 - 8) + 48))(v132, 1, v133) == 1)
    {

      sub_25DDDC9B8();
      v158 = *(v251 + 8);
      v159 = v252;
      v158(v249, v252);
      v160 = sub_25DDDCB88();
      (*(*(v160 - 8) + 8))(v254, v160);
      v158(v240, v159);
      v161 = *(v239 + 8);
      v162 = v238;
      v161(v104, v238);
      v161(v253, v162);
    }

    v108 = v120;
    v134 = (v132 + *(v133 + 48));
    v135 = *v134;
    v267 = v134[1];
    v136 = (*v266)(v269, v132, v114);
    v137 = MEMORY[0x25F8A4970](v136);
    v139 = v138;
    v140 = v276;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v274 = v140;
    v143 = sub_25DDDAAB0(v137, v139);
    v144 = *(v140 + 2);
    v145 = (v142 & 1) == 0;
    v146 = v144 + v145;
    if (__OFADD__(v144, v145))
    {
      goto LABEL_108;
    }

    v147 = v142;
    if (*(v140 + 3) >= v146)
    {
      if ((v141 & 1) == 0)
      {
        sub_25DDDB77C();
      }
    }

    else
    {
      sub_25DDDAE38(v146, v141);
      v148 = sub_25DDDAAB0(v137, v139);
      if ((v147 & 1) != (v149 & 1))
      {
        goto LABEL_110;
      }

      v143 = v148;
    }

    if (v147)
    {

      v107 = v274;
      v115 = (*(v274 + 7) + 16 * v143);
      v116 = v115[1];
      v117 = v267;
      *v115 = v135;
      v115[1] = v117;

      v114 = v268;
      (*v261)(v269, v268);
    }

    else
    {
      v107 = v274;
      *&v274[8 * (v143 >> 6) + 64] |= 1 << v143;
      v150 = (*(v107 + 6) + 16 * v143);
      *v150 = v137;
      v150[1] = v139;
      v151 = (*(v107 + 7) + 16 * v143);
      v152 = v267;
      v114 = v268;
      *v151 = v135;
      v151[1] = v152;
      (*v261)(v269, v114);
      v153 = *(v107 + 2);
      v154 = __OFADD__(v153, 1);
      v155 = v153 + 1;
      if (v154)
      {
        goto LABEL_109;
      }

      *(v107 + 2) = v155;
    }

    v104 = v271;
    v113 = v260;
  }

  if (v113 <= v108 + 1)
  {
    v119 = v108 + 1;
  }

  else
  {
    v119 = v113;
  }

  v120 = v119 - 1;
  while (1)
  {
    v118 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      break;
    }

    if (v118 >= v113)
    {
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA08, &qword_25DDDEAF8);
      v157 = v264;
      (*(*(v156 - 8) + 56))(v264, 1, 1, v156);
      v131 = v157;
      v112 = 0;
      goto LABEL_29;
    }

    v112 = *&v257[8 * v118];
    ++v108;
    if (v112)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  result = sub_25DDDD1C8();
  __break(1u);
  return result;
}

unint64_t sub_25DDD9088(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result >> 14;
    if (result >> 14 == v5)
    {
      return v10 == v5;
    }

    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = sub_25DDDBB80(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_25DDDCED8();
      result = v18;
      if (v11 != v7)
      {
        goto LABEL_18;
      }

LABEL_23:
      result = sub_25DDDBB80(result, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_19;
      }

LABEL_7:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_25DDDD0F8();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 == v7)
      {
        goto LABEL_23;
      }

LABEL_18:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (v4 <= result >> 16)
      {
        goto LABEL_27;
      }

      result = sub_25DDDCEB8();
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25DDD9220(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_25DDDCC28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HIBYTE(a4) & 0xF;
  v21 = a3;
  v22 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v23 = 0;
  v24 = v15;
  v25 = 0;
  for (i = sub_25DDD93CC(); (v17 & 0x100000000) == 0; i = sub_25DDD93CC())
  {
    if ((v17 & 0xFFFFFF00) != 0)
    {
      v18 = 32;
    }

    else
    {
      v18 = v17;
    }

    *(a1 + i) = v18;
  }

  (*(v11 + 16))(v14, a5, v10);
  v21 = a1;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA70, &qword_25DDDECD0);
  sub_25DDCD270(&qword_27FCCEA78, &qword_27FCCEA70, &qword_25DDDECD0);
  return sub_25DDDCC58();
}

uint64_t sub_25DDD93CC()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 >= v2)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v3 = v0[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    sub_25DDDD0B8();
    goto LABEL_10;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v14[0] = *v0;
    v14[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v5 = v14 + v1;
    goto LABEL_8;
  }

  if ((*v0 & 0x1000000000000000) == 0)
  {
    goto LABEL_22;
  }

  for (i = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = sub_25DDDD0F8())
  {
    v5 = (i + v1);
LABEL_8:
    v6 = *v5;
    if ((*v5 & 0x80000000) == 0)
    {
LABEL_9:
      v7 = 1;
      goto LABEL_10;
    }

    v10 = (__clz(v6 ^ 0xFF) - 24);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v12 = ((v6 & 0xF) << 12) | ((v5[1] & 0x3F) << 6) | v5[2] & 0x3F;
        v7 = 3;
      }

      else
      {
        v13 = ((v6 & 0xF) << 18) | ((v5[1] & 0x3F) << 12) | ((v5[2] & 0x3F) << 6) | v5[3] & 0x3F;
        v7 = 4;
      }
    }

    else
    {
      if (v10 == 1)
      {
        goto LABEL_9;
      }

      v7 = 2;
      v11 = v5[1] & 0x3F | ((v6 & 0x1F) << 6);
    }

LABEL_10:
    v0[2] = v7 + v1;
    v8 = v0[4];
    if (!__OFADD__(v8, 1))
    {
      break;
    }

    __break(1u);
LABEL_22:
    ;
  }

  v0[4] = v8 + 1;
LABEL_12:
  LOBYTE(v14[0]) = v1 >= v2;
  return v8;
}

uint64_t sub_25DDD952C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA58, &qword_25DDDECC8);
  sub_25DDCD270(&qword_27FCCEA60, &qword_27FCCEA58, &qword_25DDDECC8);
  result = sub_25DDDCE88();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_25DDD9600()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9E8, &qword_25DDDEAE0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  v8 = sub_25DDDCAB8();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25DDDCB68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URLSessionTransportError();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDDBBFC(v0, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v26 = *v20;
      v25 = *(v20 + 1);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9F8, &qword_25DDDEAF0);
      v28 = *(v27 + 64);
      (*(v13 + 32))(v16, &v20[*(v27 + 48)], v12);
      v29 = v40;
      (*(v40 + 32))(v11, &v20[v28], v8);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_25DDDD0C8();
      MEMORY[0x25F8A4C20](0xD000000000000027, 0x800000025DDE0820);
      MEMORY[0x25F8A4C20](v26, v25);

      MEMORY[0x25F8A4C20](0x646F6874656D202CLL, 0xEA0000000000203ALL);
      sub_25DDDC148(&qword_27FCCEA18, MEMORY[0x277D0F9D8]);
      v30 = sub_25DDDD178();
      MEMORY[0x25F8A4C20](v30);

      MEMORY[0x25F8A4C20](0xD000000000000018, 0x800000025DDE0850);
      v31 = sub_25DDDCAA8();
      MEMORY[0x25F8A4C20](v31);

      v32 = v42;
      (*(v29 + 8))(v11, v8);
      (*(v13 + 8))(v16, v12);
      return v32;
    }

    v35 = *v20;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_25DDDD0C8();

    v42 = 0xD000000000000027;
    v43 = 0x800000025DDE07F0;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA10, &unk_25DDDEB00);
    v36 = sub_25DDDCE48();
    MEMORY[0x25F8A4C20](v36);

    return v42;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = *v20;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_25DDDD0C8();
    MEMORY[0x25F8A4C20](0xD000000000000034, 0x800000025DDE07B0);
    ObjectType = [v33 statusCode];
    v34 = sub_25DDDD178();
    MEMORY[0x25F8A4C20](v34);

    MEMORY[0x25F8A4C20](41, 0xE100000000000000);

    return v42;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return 0xD00000000000002BLL;
  }

  sub_25DDDBC60(v20, v7, &qword_27FCCE9E8, &qword_25DDDEAE0);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_25DDDD0C8();

  v42 = 0xD00000000000001CLL;
  v43 = 0x800000025DDE0790;
  sub_25DDDBCC8(v7, v5);
  v22 = v40;
  if ((*(v40 + 48))(v5, 1, v8) == 1)
  {
    sub_25DDCC9E4(v5, &qword_27FCCE9E8, &qword_25DDDEAE0);
    v23 = 0xE90000000000003ELL;
    v24 = 0x4C5255206C696E3CLL;
  }

  else
  {
    v37 = sub_25DDDCAA8();
    v23 = v38;
    (*(v22 + 8))(v5, v8);
    v24 = v37;
  }

  MEMORY[0x25F8A4C20](v24, v23);

  v32 = v42;
  sub_25DDCC9E4(v7, &qword_27FCCE9E8, &qword_25DDDEAE0);
  return v32;
}

uint64_t sub_25DDD9C28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA40, "z\t");
  result = sub_25DDC949C();
  qword_27FCCFE78 = result;
  return result;
}

uint64_t sub_25DDD9C78()
{
  if (qword_27FCCFE70 != -1)
  {
    swift_once();
  }

  sub_25DDC9788(sub_25DDD9D0C);
  return v1;
}

pthread_mutex_t *sub_25DDD9D18(uint64_t a1)
{
  if (qword_27FCCFE70 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x28223BE20](a1);
  return sub_25DDC9788(sub_25DDDBD38);
}

uint64_t sub_25DDD9DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_25DDDCD08();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_25DDDCD38();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDD9F04, 0, 0);
}

uint64_t sub_25DDD9F04()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA88, &qword_25DDDECE0);
  *v4 = v0;
  v4[1] = sub_25DDDA014;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000029, 0x800000025DDE0890, sub_25DDDC678, v2, v5);
}

uint64_t sub_25DDDA014()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_25DDDA378;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_25DDDA130;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DDDA130()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v0[5] = v2;
    v0[6] = v3;
    v30 = v2;
    sub_25DDDC698(v2, v3);
    v5 = v1;
    v6 = [v5 expectedContentLength];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v29 = v1;
    if (v6 == -1)
    {

      v11 = MEMORY[0x277D37A20];
    }

    else
    {
      v10 = [v5 expectedContentLength];

      *v7 = v10;
      v11 = MEMORY[0x277D37A18];
    }

    (*(v8 + 104))(v7, *v11, v9);
    v13 = v0[16];
    v12 = v0[17];
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    sub_25DDDCD58();
    (*(v14 + 32))(v12, v13, v15);
    (*(v16 + 104))(v17, *MEMORY[0x277D379D0], v18);
    sub_25DDDC6AC();
    v4 = sub_25DDDCD68();
    v1 = v29;
    v2 = v30;
  }

  v19 = v0[20];
  sub_25DDD6A40(v1, v0[7]);
  if (v19)
  {

    sub_25DDDC684(v2, v3);
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[13];
  }

  else
  {
    v25 = v0[16];
    v24 = v0[17];
    v26 = v0[13];
    v27 = v0[7];
    sub_25DDDC684(v2, v3);
    *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE990, &qword_25DDDEA68) + 48)) = v4;
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_25DDDA378()
{
  v1 = v0[18];

  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25DDDA400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DDC9384;

  return sub_25DDD9DD8(a1, v4, v5, v6);
}

void sub_25DDDA4B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a4;
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v24 - v7;
  v8 = sub_25DDDC9F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = *(v9 + 16);
  v15(&v24 - v13, a3, v8);
  v26 = sub_25DDDC9A8();
  (*(v9 + 8))(v14, v8);
  v15(v14, a3, v8);
  v16 = v24;
  (*(v5 + 16))(v29, v25, v24);
  v17 = *(v9 + 32);
  v17(v12, v14, v8);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = (v6 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v18, v29, v16);
  v17((v20 + v19), v12, v8);
  aBlock[4] = sub_25DDDC700;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25DDDA81C;
  aBlock[3] = &block_descriptor_0;
  v21 = _Block_copy(aBlock);

  v22 = v26;
  v23 = [v27 dataTaskWithRequest:v26 completionHandler:v21];
  _Block_release(v21);

  v30 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9B0, &qword_25DDDEAA0);
  sub_25DDC9AC8(sub_25DDDC91C);
}

uint64_t sub_25DDDA81C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_25DDDCAE8();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_25DDDC684(v6, v11);
}

uint64_t sub_25DDDA964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DDB8C84;

  return sub_25DDD9DD8(a1, v4, v5, v6);
}

uint64_t type metadata accessor for URLSessionTransportError()
{
  result = qword_27FCD0000;
  if (!qword_27FCD0000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25DDDAA64(id *a1)
{
  v2 = *a1;
  [*a1 cancel];

  *a1 = 0;
}

unint64_t sub_25DDDAAB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25DDDD228();
  sub_25DDDCE98();
  v6 = sub_25DDDD238();

  return sub_25DDDABC0(a1, a2, v6);
}

unint64_t sub_25DDDAB28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25DDDCC28();
  sub_25DDDC148(&qword_27FCCEA00, MEMORY[0x277D0F9F8]);
  v5 = sub_25DDDCE08();

  return sub_25DDDAC78(a1, v5);
}

unint64_t sub_25DDDABC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25DDDD198())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25DDDAC78(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25DDDCC28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_25DDDC148(&qword_27FCCEA68, MEMORY[0x277D0F9F8]);
      v16 = sub_25DDDCE38();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_25DDDAE38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA48, "|\t");
  v40 = a2;
  result = sub_25DDDD158();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25DDDD228();
      sub_25DDDCE98();
      result = sub_25DDDD238();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25DDDB0F8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25DDDCC28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA50, &qword_25DDDECC0);
  v48 = a2;
  result = sub_25DDDD158();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_25DDDC148(&qword_27FCCEA00, MEMORY[0x277D0F9F8]);
      result = sub_25DDDCE08();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25DDDB4E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_25DDDCC28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_25DDDAB28(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_25DDDB8F4();
      goto LABEL_9;
    }

    sub_25DDDB0F8(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_25DDDAB28(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_25DDDD1C8();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_25DDDB6BC(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_25DDDB6BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_25DDDCC28();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_25DDDB77C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA48, "|\t");
  v2 = *v0;
  v3 = sub_25DDDD148();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_25DDDB8F4()
{
  v1 = v0;
  v36 = sub_25DDDCC28();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA50, &qword_25DDDECC0);
  v4 = *v0;
  v5 = sub_25DDDD148();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_25DDDBB80(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25DDDCEE8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8A4C40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25DDDBBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLSessionTransportError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DDDBC60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25DDDBCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE9E8, &qword_25DDDEAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_25DDDBDB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DDDBE00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for URLSessionTransport.Configuration.Implementation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for URLSessionTransport.Configuration.Implementation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for URLSessionTransport.Configuration.Implementation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_25DDDBED8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DDDBEF4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

void sub_25DDDBF28()
{
  sub_25DDDBFE4();
  if (v0 <= 0x3F)
  {
    sub_25DDDC060(319, &qword_27FCCE998, 0x277CCAD28);
    if (v1 <= 0x3F)
    {
      sub_25DDDC060(319, &qword_27FCCEA28, 0x277CCAA40);
      if (v2 <= 0x3F)
      {
        sub_25DDDC0A8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_25DDDBFE4()
{
  if (!qword_27FCCEA20)
  {
    sub_25DDDCB68();
    sub_25DDDCAB8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FCCEA20);
    }
  }
}

uint64_t sub_25DDDC060(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_25DDDC0A8()
{
  if (!qword_27FCCEA30)
  {
    sub_25DDDC0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCEA30);
    }
  }
}

void sub_25DDDC0F0()
{
  if (!qword_27FCCEA38)
  {
    sub_25DDDCAB8();
    v0 = sub_25DDDD088();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCEA38);
    }
  }
}

uint64_t sub_25DDDC148(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25DDDC190(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25DDDC228(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25DDDC29C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25DDDC228(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25DDDBB80(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25DDDC29C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25DDDD0F8();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_25DDDC3B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_25DDDC190(a1, a3, a4);
  v8 = sub_25DDDC190(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_25DDDCE68();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_25DDDD0F8();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_25DDDCE78();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_25DDDD0F8();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t sub_25DDDC61C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25DDDC684(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25DDCCDA4(a1, a2);
  }

  return a1;
}

uint64_t sub_25DDDC698(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25DDCD21C(a1, a2);
  }

  return a1;
}

unint64_t sub_25DDDC6AC()
{
  result = qword_27FCCEA90;
  if (!qword_27FCCEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCEA90);
  }

  return result;
}

uint64_t sub_25DDDC700(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25DDDC9F8() - 8);
  if (a4)
  {
    v12 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
    return sub_25DDDCF18();
  }

  if (!a3)
  {
    v15 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
    type metadata accessor for URLSessionTransportError();
    sub_25DDDC148(&qword_27FCCE9C0, type metadata accessor for URLSessionTransportError);
    swift_allocError();
    sub_25DDDC9D8();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
    return sub_25DDDCF18();
  }

  v14 = a3;
  sub_25DDDC698(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
  return sub_25DDDCF28();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25DDDC91C(id *a1)
{
  v3 = *(v1 + 16);
  result = [v3 state];
  if (result == 1)
  {

    [v3 resume];
    *a1 = v3;
    return v3;
  }

  return result;
}