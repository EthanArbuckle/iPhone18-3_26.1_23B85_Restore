uint64_t sub_1B64B2120(uint64_t *a1)
{
  v3 = *a1;

  *a1 = v1;
}

void sub_1B64B215C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    aBlock[4] = sub_1B64B2734;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B64B2AA0;
    aBlock[3] = &block_descriptor_34;
    v6 = _Block_copy(aBlock);
    v7 = v4;

    [v1 executeOnce_];
    _Block_release(v6);
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B64B2278()
{
  result = qword_1EDB1E630;
  if (!qword_1EDB1E630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB94B1F0, &qword_1B6810310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E630);
  }

  return result;
}

id sub_1B64B24E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1B64B2600()
{
  result = qword_1EB94B200;
  if (!qword_1EB94B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B200);
  }

  return result;
}

void sub_1B64B2734()
{
  v1 = *(v0 + 16);
  sub_1B64B27B4();
  v2 = swift_allocError();
  v3 = sub_1B67D854C();

  [v1 finishedPerformingOperationWithError_];
}

unint64_t sub_1B64B27B4()
{
  result = qword_1EDB1E670[0];
  if (!qword_1EDB1E670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB1E670);
  }

  return result;
}

uint64_t sub_1B64B2808(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B64B2854()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock + 8];
  (*&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock])();

  return [v1 finishedPerformingOperationWithError_];
}

uint64_t objectdestroy_36Tm()
{
  v1 = sub_1B67D90BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1B64B2970()
{
  v1 = sub_1B67D90BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  sub_1B64B2808(&qword_1EB94B2D8, MEMORY[0x1E6977D78]);
  v5 = swift_allocError();
  (*(v2 + 16))(v6, v0 + v3, v1);
  v7 = sub_1B67D854C();

  [v4 finishedPerformingOperationWithError_];
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B64B2B4C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B67D9C5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = sub_1B67D9C3C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URLResponsePayload.Kind(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B648CE30(a1 + OBJC_IVAR___FCURLResponsePayload_kind, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB78, &qword_1B6813230) + 48));
      sub_1B67D9C4C();
      a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B300, &qword_1B68151D8);
      a2[4] = sub_1B6413CCC(&qword_1EB94B308, &qword_1EB94B300, &qword_1B68151D8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
      sub_1B64B2FBC(&qword_1EB94AB80, MEMORY[0x1E6969E90]);
      sub_1B648D654(v15, v12, boxed_opaque_existential_0);

      v23 = sub_1B67D85FC();
      (*(*(v23 - 8) + 8))(v19, v23);
    }

    else
    {

      (*(v5 + 32))(v11, v19, v4);
      (*(v5 + 16))(v9, v11, v4);
      a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B2F0, &unk_1B68151C8);
      a2[4] = sub_1B6413CCC(&qword_1EB94B2F8, &qword_1EB94B2F0, &unk_1B68151C8);
      v27 = __swift_allocate_boxed_opaque_existential_0(a2);
      sub_1B64B2FBC(&qword_1EB94AB58, MEMORY[0x1E6969EA0]);
      sub_1B648D654(v9, v4, v27);
      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    v24 = *v19;
    v25 = v19[1];
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B310, &unk_1B68151E0);
    a2[4] = sub_1B6413CCC(&qword_1EB94B318, &qword_1EB94B310, &unk_1B68151E0);
    v26 = swift_allocObject();
    *a2 = v26;
    sub_1B648FFD4(v24, v25, v26 + 16);
  }
}

uint64_t sub_1B64B2FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B64B3054()
{
  result = sub_1B6490C88();
  byte_1EB955278 = result & 1;
  qword_1EB955280 = v1;
  return result;
}

uint64_t sub_1B64B3088()
{
  result = sub_1B6490C88();
  byte_1EB955290 = result & 1;
  qword_1EB955298 = v1;
  return result;
}

uint64_t sub_1B64B30BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ABE8, &qword_1B68134F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B6812A80;
  if (qword_1EB955270 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB955280;
  *(v0 + 32) = byte_1EB955278;
  *(v0 + 40) = v1;
  v2 = qword_1EB955288;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB955298;
  *(v0 + 48) = byte_1EB955290;
  *(v0 + 56) = v3;

  return v0;
}

uint64_t sub_1B64B31A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1B64B31D8(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8 & 1;
  }

  return result;
}

uint64_t sub_1B64B31D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB955270 != -1)
  {
    v13 = a3;
    swift_once();
    a3 = v13;
  }

  LOBYTE(v16) = byte_1EB955278;
  v17 = qword_1EB955280;
  v5 = a3 & 1;
  LOBYTE(v14) = a3 & 1;
  v15 = a4;
  sub_1B648D48C();
  if (sub_1B67D962C())
  {
    v6 = MEMORY[0x1E69B6FD8];
  }

  else
  {
    if (qword_1EB955288 != -1)
    {
      swift_once();
    }

    LOBYTE(v16) = byte_1EB955290;
    v17 = qword_1EB955298;
    LOBYTE(v14) = v5;
    v15 = a4;
    if ((sub_1B67D962C() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v6 = MEMORY[0x1E69B6D78];
  }

  v7 = objc_allocWithZone(v6);
  v8 = sub_1B67D864C();
  v9 = [v7 initWithData_];

  if (v9)
  {
    return v9;
  }

  v11 = 1;
LABEL_13:
  sub_1B64B33B4();
  swift_allocError();
  *v12 = v11;
  return swift_willThrow();
}

unint64_t sub_1B64B33B4()
{
  result = qword_1EB9552A0;
  if (!qword_1EB9552A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9552A0);
  }

  return result;
}

unint64_t sub_1B64B341C()
{
  result = qword_1EB9552A8[0];
  if (!qword_1EB9552A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9552A8);
  }

  return result;
}

uint64_t UserEventHistorySession.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___FCUserEventHistorySession_date;
  v4 = sub_1B67D877C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserEventHistorySession.ID.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B330, &unk_1B6815378);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - v8;
  v10 = sub_1B67D87BC();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B67D877C();
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v49 = a2;
  v46 = 45;
  v47 = 0xE100000000000000;
  sub_1B64B5234();
  v17 = sub_1B67D9E2C();
  v18 = v17;
  if (v17[2] != 6)
  {
    goto LABEL_6;
  }

  v41 = a3;
  v42 = v14;
  v20 = v17[4];
  v19 = v17[5];
  v48 = 0;

  v21 = sub_1B64B5488(v20, v19);

  if (v21)
  {
    v22 = v18[4];
    v23 = v18[5];

    v24 = sub_1B67D969C();

    if (__OFADD__(v24, 1))
    {
      __break(1u);
    }

    else
    {
      v26 = sub_1B67D96AC();
      v27 = sub_1B64B5580(v26, a1, a2);
      v29 = v28;
      v31 = v30;
      v33 = v32;

      MEMORY[0x1B8C948C0](v27, v29, v31, v33);

      v34 = v44;
      sub_1B67D868C();
      sub_1B67D878C();

      v35 = v43;
      if ((*(v43 + 48))(v9, 1, v10) == 1)
      {
        sub_1B6418AB4(v9, &unk_1EB94B330, &unk_1B6815378);
        sub_1B64B5288();
        swift_allocError();
        *v36 = 0;
        swift_willThrow();
        return (*(v45 + 8))(v34, v42);
      }

      else
      {
        v38 = *(v35 + 32);
        v38(v13, v9, v10);
        v39 = v41;
        v38(v41, v13, v10);
        v40 = type metadata accessor for UserEventHistorySession.ID(0);
        return (*(v45 + 32))(&v39[*(v40 + 20)], v34, v42);
      }
    }
  }

  else
  {
LABEL_6:

    sub_1B64B5288();
    swift_allocError();
    *v37 = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_1B64B3C98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B328, &qword_1B6815370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_1B67D877C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;

  UserEventHistorySession.ID.init(_:)(a1, a2, v11);
  v20 = type metadata accessor for UserEventHistorySession.ID(0);
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  (*(v13 + 16))(v17, &v11[*(v20 + 20)], v12);
  sub_1B646B8E8(v11);
  v21 = *(v13 + 32);
  v21(v19, v17, v12);
  v22 = &v4[OBJC_IVAR___FCUserEventHistorySession_sessionID];
  *v22 = a1;
  v22[1] = a2;
  v21(&v4[OBJC_IVAR___FCUserEventHistorySession_date], v19, v12);
  v23 = &v4[OBJC_IVAR___FCUserEventHistorySession_kind];
  *v23 = v26;
  *(v23 + 1) = a4;
  v23[16] = 0;
  v28.receiver = v4;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

id sub_1B64B4064(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v31 = a3;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B328, &qword_1B6815370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v12 = sub_1B67D877C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;

  v30 = a1;
  UserEventHistorySession.ID.init(_:)(a1, a2, v11);
  if (v5)
  {

    v20 = type metadata accessor for UserEventHistorySession.ID(0);
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_1B6418AB4(v11, &qword_1EB94B328, &qword_1B6815370);
    sub_1B64B5288();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();

    v22 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x30);
    v23 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x34);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = type metadata accessor for UserEventHistorySession.ID(0);
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
    (*(v13 + 16))(v17, &v11[*(v25 + 20)], v12);
    sub_1B646B8E8(v11);
    v26 = *(v13 + 32);
    v26(v19, v17, v12);
    v27 = &v4[OBJC_IVAR___FCUserEventHistorySession_sessionID];
    *v27 = v30;
    v27[1] = a2;
    v26(&v4[OBJC_IVAR___FCUserEventHistorySession_date], v19, v12);
    v28 = &v4[OBJC_IVAR___FCUserEventHistorySession_kind];
    v29 = v33;
    *v28 = v31;
    *(v28 + 1) = v29;
    v28[16] = 1;
    v34.receiver = v4;
    v34.super_class = ObjectType;
    return objc_msgSendSuper2(&v34, sel_init);
  }
}

id sub_1B64B43B8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___FCUserEventHistorySession_sessionID);
  v2 = *(a1 + OBJC_IVAR___FCUserEventHistorySession_sessionID + 8);

  v3 = sub_1B67D963C();

  return v3;
}

uint64_t UserEventHistorySession.fileName.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_sessionID);
  v2 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_sessionID + 8);

  return v1;
}

uint64_t UserEventHistorySession.path.getter()
{
  v1 = (v0 + OBJC_IVAR___FCUserEventHistorySession_kind);
  if (*(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 16))
  {
    result = sub_1B67DA07C();
    __break(1u);
  }

  else
  {
    v3 = *v1;
    v2 = v1[1];

    return v3;
  }

  return result;
}

uint64_t UserEventHistorySession.data.getter()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B67D8A9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UserEventHistorySession.compressedData.getter();
  if (v6 >> 60 != 15)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1B67D864C();
    v25[0] = 0;
    v10 = [v9 decompressedDataUsingAlgorithm:0 error:v25];

    v11 = v25[0];
    if (v10)
    {
      v12 = sub_1B67D866C();
      sub_1B6457448(v7, v8);

      result = v12;
    }

    else
    {
      v13 = v11;
      v14 = sub_1B67D855C();

      swift_willThrow();
      v15 = sub_1B6422D0C();
      (*(v1 + 16))(v4, v15, v0);
      v16 = v14;
      v17 = sub_1B67D8A7C();
      v18 = sub_1B67D9C8C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138543362;
        v21 = v14;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1B63EF000, v17, v18, "failed to decompress session data, error=%{public}@", v19, 0xCu);
        sub_1B6418AB4(v20, &qword_1EB94A780, &qword_1B6810140);
        MEMORY[0x1B8C96DF0](v20, -1, -1);
        MEMORY[0x1B8C96DF0](v19, -1, -1);
        sub_1B6457448(v7, v8);
      }

      else
      {
        sub_1B6457448(v7, v8);
      }

      (*(v1 + 8))(v4, v0);
      result = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t UserEventHistorySession.compressedData.getter()
{
  v1 = sub_1B67D8A9C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_kind);
  v3 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 8);
  if (*(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 16))
  {
    v5 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 8);

    sub_1B64251D4(&v10);
    sub_1B64B55CC(v4, v3, 1);
    return v10;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x1E695DEF0]);

    v7 = sub_1B67D963C();
    sub_1B64B55CC(v4, v3, 0);
    v8 = [v6 initWithContentsOfFile_];

    if (v8)
    {
      v10 = xmmword_1B6815360;
      sub_1B67D865C();
    }

    return 0;
  }
}

id sub_1B64B4B7C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1B67D864C();
    sub_1B6457448(v5, v7);
    v8 = v9;
  }

  return v8;
}

void UserEventHistorySession.size.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_kind);
  if ((*(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 16) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___FCUserEventHistorySession_kind + 8);
    v3 = [objc_opt_self() defaultManager];
    v4 = sub_1B67D963C();
    v5 = [v3 fc:v4 sizeOfItemAtPath:0 error:?];

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }
}

id UserEventHistorySession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserEventHistorySession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UserEventHistorySession.ID.rawValue.getter()
{
  v1 = v0 + *(type metadata accessor for UserEventHistorySession.ID(0) + 20);
  result = sub_1B67D869C();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    v5 = sub_1B67DA28C();
    MEMORY[0x1B8C94910](45, 0xE100000000000000);
    v4 = sub_1B67D879C();
    MEMORY[0x1B8C94910](v4);

    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t UserEventHistorySession.ID.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B67D87AC();
  v2 = a1 + *(type metadata accessor for UserEventHistorySession.ID(0) + 20);
  return sub_1B67D876C();
}

uint64_t UserEventHistorySession.ID.init(uuidString:date:)@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B330, &unk_1B6815378);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v19 - v6;
  v8 = sub_1B67D87BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D878C();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B6418AB4(v7, &unk_1EB94B330, &unk_1B6815378);
    sub_1B64B5288();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v14 = sub_1B67D877C();
    return (*(*(v14 - 8) + 8))(a1, v14);
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v12, v7, v8);
    v16(a2, v12, v8);
    v17 = *(type metadata accessor for UserEventHistorySession.ID(0) + 20);
    v18 = sub_1B67D877C();
    return (*(*(v18 - 8) + 32))(&a2[v17], a1, v18);
  }
}

unint64_t sub_1B64B5234()
{
  result = qword_1EDB1FBC0;
  if (!qword_1EDB1FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1FBC0);
  }

  return result;
}

unint64_t sub_1B64B5288()
{
  result = qword_1EB955430;
  if (!qword_1EB955430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB955430);
  }

  return result;
}

uint64_t UserEventHistorySession.ID.init(uuid:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B67D87BC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for UserEventHistorySession.ID(0) + 20);
  v8 = sub_1B67D877C();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t UserEventHistorySession.ID.init(uuid:timeIntervalSinceReferenceDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B67D87BC();
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v5 = a2 + *(type metadata accessor for UserEventHistorySession.ID(0) + 20);
  sub_1B67D868C();
  v6 = *(v8 + 8);

  return v6(a1, v4);
}

BOOL sub_1B64B5488(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1B67D9EEC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1B64B5580(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t sub_1B64B55CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B64B5604()
{
  result = sub_1B67D877C();
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

uint64_t sub_1B64B56E8()
{
  result = sub_1B67D87BC();
  if (v1 <= 0x3F)
  {
    result = sub_1B67D877C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B64B578C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B64B57D4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B64B5848()
{
  result = qword_1EB955440[0];
  if (!qword_1EB955440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955440);
  }

  return result;
}

_BYTE *sub_1B64B589C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

id sub_1B64B5924(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef__resolved;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B340, &qword_1B6815520);
  v6 = swift_allocObject();
  *(v6 + 28) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = -1;
  *&v4[v5] = v6;
  v7 = OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef_fileURL;
  v8 = sub_1B67D85FC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v4[v7], a1, v8);
  v12.receiver = v4;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t FeedItemDatabaseRef.resolve()()
{
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef__resolved);

  os_unfair_lock_lock(v3 + 7);
  sub_1B64B5D24(&v3[4], &v5);
  os_unfair_lock_unlock(v3 + 7);
  if (!v1)
  {
    v2 = v5;
  }

  return v2;
}

id sub_1B64B5AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v22 - v8;
  v10 = sub_1B67D85FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  if (v16 == 255)
  {
    v22[0] = type metadata accessor for FeedItemDatabase(0);
    (*(v11 + 16))(v14, a2 + OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef_fileURL, v10);
    v18 = sub_1B64713D0();
    v19 = sub_1B67D8A9C();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v9, v18, v19);
    (*(v20 + 56))(v9, 0, 1, v19);
    v21 = FeedItemDatabase.__allocating_init(fileURL:logger:)(v14, v9);
    *a1 = v21;
    *(a1 + 8) = 0;
    *a3 = v21;
  }

  else
  {
    if (v16)
    {
      v22[3] = *a1;
      sub_1B64B6D4C(v15, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
      return swift_willThrowTypedImpl();
    }

    *a3 = v15;
  }

  return sub_1B64B6D34(v15, v16);
}

Swift::Void __swiftcall FeedItemDatabaseRef.encode(with:)(NSCoder with)
{
  v2 = sub_1B67D858C();
  v3 = sub_1B67D963C();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id FeedItemDatabaseRef.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B67D85FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef__resolved;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B340, &qword_1B6815520);
  v11 = swift_allocObject();
  *(v11 + 28) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = -1;
  *(v2 + v10) = v11;
  sub_1B64B6090();
  v12 = sub_1B67D9D5C();
  if (v12)
  {
    v13 = v12;
    sub_1B67D85AC();

    (*(v6 + 32))(v2 + OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef_fileURL, v9, v5);
    v19.receiver = v2;
    v19.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v19, sel_init);
  }

  else
  {

    v15 = *(v2 + v10);

    v16 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

unint64_t sub_1B64B6090()
{
  result = qword_1EB94B348;
  if (!qword_1EB94B348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB94B348);
  }

  return result;
}

id FeedItemDatabaseRef.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedItemDatabaseRef.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B64B6264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B67DA2DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B64B62EC(uint64_t a1)
{
  v2 = sub_1B64B6A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64B6328(uint64_t a1)
{
  v2 = sub_1B64B6A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedItemDatabaseRef.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B350, &qword_1B6815528);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B6A68();
  sub_1B67DA47C();
  sub_1B67D85FC();
  sub_1B64B6CF0(&unk_1EB94B358);
  sub_1B67DA24C();
  return (*(v3 + 8))(v6, v2);
}

void *sub_1B64B64E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B64B672C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B64B6514(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B350, &qword_1B6815528);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B6A68();
  sub_1B67DA47C();
  sub_1B67D85FC();
  sub_1B64B6CF0(&unk_1EB94B358);
  sub_1B67DA24C();
  return (*(v4 + 8))(v7, v3);
}

void *sub_1B64B672C(uint64_t *a1)
{
  v3 = sub_1B67D85FC();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v22 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B3D0, &qword_1B68156E0);
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v22 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B6A68();
  sub_1B67DA46C();
  if (!v1)
  {
    v25 = v9;
    v15 = v27;
    sub_1B64B6CF0(&qword_1EB94B3D8);
    v16 = v26;
    sub_1B67DA1CC();
    v24 = *(v15 + 16);
    v24(v7, v29, v3);
    v18 = type metadata accessor for FeedItemDatabaseRef();
    v19 = objc_allocWithZone(v18);
    v23 = OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef__resolved;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B340, &qword_1B6815520);
    v20 = swift_allocObject();
    *(v20 + 28) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = -1;
    *&v19[v23] = v20;
    v24(&v19[OBJC_IVAR____TtC8NewsCore19FeedItemDatabaseRef_fileURL], v7, v3);
    v28.receiver = v19;
    v28.super_class = v18;
    v14 = objc_msgSendSuper2(&v28, sel_init);
    v21 = *(v27 + 8);
    v21(v7, v3);
    v21(v29, v3);
    (*(v25 + 8))(v12, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

unint64_t sub_1B64B6A68()
{
  result = qword_1EB9555D0[0];
  if (!qword_1EB9555D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9555D0);
  }

  return result;
}

uint64_t type metadata accessor for FeedItemDatabaseRef()
{
  result = qword_1EDB24600;
  if (!qword_1EDB24600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B64B6B10()
{
  result = sub_1B67D85FC();
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

unint64_t sub_1B64B6BEC()
{
  result = qword_1EB9557E0[0];
  if (!qword_1EB9557E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9557E0);
  }

  return result;
}

unint64_t sub_1B64B6C44()
{
  result = qword_1EB9558F0;
  if (!qword_1EB9558F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9558F0);
  }

  return result;
}

unint64_t sub_1B64B6C9C()
{
  result = qword_1EB9558F8[0];
  if (!qword_1EB9558F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9558F8);
  }

  return result;
}

uint64_t sub_1B64B6CF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B67D85FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1B64B6D34(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1B64B6D4C(result, a2 & 1);
  }

  return result;
}

id sub_1B64B6D4C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1B64B6D58()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1B64B6E8C;
  }

  else
  {
    v3 = sub_1B64B6E6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64B6EA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a5;
  v9[3] = a6;
  v9[4] = a7;
  v9[5] = a8;
  v9[6] = a1;
  v9[7] = a2;
  return sub_1B64B6EE8(sub_1B64B70F0, v9, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B64B6EE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a3;
  v24 = a1;
  v25 = a2;
  v14 = sub_1B67D8C1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 >> 62)
  {
    v23[1] = v23;
    MEMORY[0x1EEE9AC00](v17);
    v23[0] = v8;
    v23[-8] = a5;
    v23[-7] = a6;
    v23[-6] = a7;
    v23[-5] = a8;
    v22 = v25;
    v23[-4] = v24;
    v23[-3] = v22;
    v23[-2] = v30;
    v23[-1] = a4;
    (*(v15 + 104))(v19, *MEMORY[0x1E69D6188], v14);

    sub_1B67D8F4C();
    (*(v15 + 8))(v19, v14);
  }

  else
  {
    v26 = a5;
    v27 = a6;
    v28 = a7;
    v29 = a8;
    _s11AccessModelO6ErrorsOMa();
    swift_getWitnessTable();
    swift_allocError();
    *v20 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1B64B711C()
{
  v2 = v0;
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  result = sub_1B6426BC0(v2[8], v3, v4);
  if (!v1)
  {
    v5();
  }

  return result;
}

uint64_t sub_1B64B7198()
{

  sub_1B67D8F2C();
}

uint64_t sub_1B64B7208(char a1)
{
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](a1 & 1);
  return sub_1B67DA41C();
}

uint64_t sub_1B64B726C()
{
  sub_1B67DA3DC();
  sub_1B64B71E0(v2, *v0);
  return sub_1B67DA41C();
}

uint64_t sub_1B64B72AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B64B7324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B64B73A0(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1B64B73B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B64B7428(uint64_t a1)
{
  v2 = sub_1B64B7754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64B7464(uint64_t a1)
{
  v2 = sub_1B64B7754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64B74A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B450, &qword_1B68158C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B7754();
  sub_1B67DA46C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_1B67DA1DC();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  return result;
}

unint64_t sub_1B64B7754()
{
  result = qword_1EB955B00[0];
  if (!qword_1EB955B00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955B00);
  }

  return result;
}

uint64_t sub_1B64B77A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B458, &qword_1B68158C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B7754();
  sub_1B67DA47C();
  sub_1B67DA25C();
  return (*(v4 + 8))(v7, v3);
}

void type metadata accessor for FCFeedFilterOptions()
{
  if (!qword_1EB94B460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB94B460);
    }
  }
}

unint64_t sub_1B64B7A74()
{
  result = qword_1EB955D10[0];
  if (!qword_1EB955D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955D10);
  }

  return result;
}

unint64_t sub_1B64B7ACC()
{
  result = qword_1EB955E20;
  if (!qword_1EB955E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB955E20);
  }

  return result;
}

unint64_t sub_1B64B7B24()
{
  result = qword_1EB955E28[0];
  if (!qword_1EB955E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955E28);
  }

  return result;
}

NewsCore::FeedItemOrder_optional __swiftcall FeedItemOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B67DA12C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FeedItemOrder.rawValue.getter()
{
  v1 = *v0;
  v2 = 7958113;
  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B64B7C58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  if (a1 > 1u)
  {
    v3 = 0x80000001B68299D0;
    v4 = 0x80000001B68299F0;
    v5 = a1 == 2;
    if (a1 == 2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000015;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0x80000001B68299B0;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 7958113;
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

  v8 = 0x80000001B68299D0;
  if (a2 == 2)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (a2 != 2)
  {
    v8 = 0x80000001B68299F0;
  }

  if (a2)
  {
    v10 = 0x80000001B68299B0;
  }

  else
  {
    v2 = 7958113;
    v10 = 0xE300000000000000;
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
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B67DA2DC();
  }

  return v13 & 1;
}

uint64_t sub_1B64B7D68()
{
  v1 = *v0;
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

uint64_t sub_1B64B7E28()
{
  *v0;
  *v0;
  sub_1B67D967C();
}

uint64_t sub_1B64B7ED4()
{
  v1 = *v0;
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

void sub_1B64B7F9C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  v5 = 0x80000001B68299D0;
  if (v2 == 2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v2 != 2)
  {
    v5 = 0x80000001B68299F0;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001B68299B0;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FeedItemDatabase.__allocating_init(fileURL:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  FeedItemDatabase.init(fileURL:logger:)(a1, a2);
  return v7;
}

uint64_t FeedItemDatabase.init(fileURL:logger:)(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1B67D8A9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B468, &unk_1B6815A70);
  v14 = swift_allocObject();
  *(v14 + 52) = 0;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = -1;
  *(v2 + v13) = v14;
  v15 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL;
  v16 = sub_1B67D85FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v25 = v2;
  v18(v2 + v15, a1, v16);
  v19 = v24;
  sub_1B6415FF0(v24, v7, &unk_1EB94B3E0, &qword_1B68165A0);
  v20 = *(v9 + 48);
  if (v20(v7, 1, v8) == 1)
  {
    v21 = sub_1B64713D0();
    (*(v9 + 16))(v12, v21, v8);
    sub_1B6418AB4(v19, &unk_1EB94B3E0, &qword_1B68165A0);
    (*(v17 + 8))(a1, v16);
    if (v20(v7, 1, v8) != 1)
    {
      sub_1B6418AB4(v7, &unk_1EB94B3E0, &qword_1B68165A0);
    }
  }

  else
  {
    sub_1B6418AB4(v19, &unk_1EB94B3E0, &qword_1B68165A0);
    (*(v17 + 8))(a1, v16);
    (*(v9 + 32))(v12, v7, v8);
  }

  v22 = v25;
  (*(v9 + 32))(v25 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_logger, v12, v8);
  return v22;
}

void FeedItemDatabase.toReference()()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v11 = v2;
  v12 = v3;
  os_unfair_lock_lock(v9 + 13);
  sub_1B64BC9B8(&v9[4], &v13);
  os_unfair_lock_unlock(v9 + 13);
  if (!v1)
  {

    type metadata accessor for FeedItemDatabaseRef();
    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL, v4);
    sub_1B64B5924(v8);
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemDatabase.tokenForCoordinatedRead()(FCFileAccessToken *__return_ptr retstr)
{
  v3 = v1;
  v4 = *v1;
  v5 = sub_1B67D85FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v13 = v3;
  v14 = v4;
  os_unfair_lock_lock(v10 + 13);
  sub_1B64C2DD8(&v10[4], &v15);
  os_unfair_lock_unlock(v10 + 13);
  if (!v2)
  {

    (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL, v5);
    v11 = objc_allocWithZone(FCFileAccessToken);
    sub_1B64BE94C(v9, &selRef_initForReadingURL_error_);
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemDatabase.tokenForCoordinatedWrite()(FCFileAccessToken *__return_ptr retstr)
{
  v3 = v1;
  v4 = *v1;
  v5 = sub_1B67D85FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v13 = v3;
  v14 = v4;
  os_unfair_lock_lock(v10 + 13);
  sub_1B64C2DD8(&v10[4], &v15);
  os_unfair_lock_unlock(v10 + 13);
  if (!v2)
  {

    (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL, v5);
    v11 = objc_allocWithZone(FCFileAccessToken);
    sub_1B64BE94C(v9, &selRef_initForWritingURL_error_);
  }
}

void FeedItemDatabase.allFeedItems(order:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34[-v16];
  v18 = *a1;
  v19 = *(v2 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v38 = v2;
  v39 = v6;
  os_unfair_lock_lock(v19 + 13);
  sub_1B64C2DD8(&v19[4], &v40);
  os_unfair_lock_unlock(v19 + 13);
  if (!v3)
  {
    v20 = v40;
    v44 = v41;
    v21 = v42;
    v37 = v43;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v23 = sub_1B6496910();
      }

      else
      {
        v23 = sub_1B649693C();
      }
    }

    else
    {
      if (!v18)
      {
        v22 = sub_1B67D8E4C();
        (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
LABEL_10:
        v28 = sub_1B67D8B1C();
        (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
        sub_1B6415FF0(v17, v15, &qword_1EB94B510, &unk_1B68102C0);
        KeyPath = swift_getKeyPath();
        v40 = v20;
        v41 = v21;
        v42 = KeyPath;
        v43 = 0;
        MEMORY[0x1EEE9AC00](KeyPath);
        *&v34[-32] = v10;
        *&v34[-24] = &v40;
        *&v34[-16] = v21;
        *&v34[-8] = v15;
        swift_retain_n();

        sub_1B67D8F1C();

        sub_1B6418AB4(v17, &qword_1EB94B510, &unk_1B68102C0);
        v30 = v43;
        v31 = v40;
        v32 = v41;
        v33 = v42;

        sub_1B6418AB4(v15, &qword_1EB94B510, &unk_1B68102C0);
        sub_1B6418AB4(v10, &qword_1EB94B470, &unk_1B6815A80);

        *a2 = v31;
        a2[1] = v32;
        a2[2] = v33;
        a2[3] = v30;
        return;
      }

      v23 = sub_1B64968E4();
    }

    v24 = *v23;
    v36 = *(v23 + 1);
    v25 = v36;
    *v17 = v24;
    v17[1] = v25;
    v35 = *MEMORY[0x1E69D6220];
    v26 = sub_1B67D8E4C();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v17, v35, v26);
    (*(v27 + 56))(v17, 0, 1, v26);

    goto LABEL_10;
  }
}

void sub_1B64B8D94(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  sub_1B64969A8();
  *a2 = v3;
}

uint64_t sub_1B64B8DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (*a5 + *MEMORY[0x1E69E77B0]);
  v9 = *v7;
  v10 = v7[1];

  sub_1B67D8F1C();

  sub_1B6418AB4(a4, &qword_1EB94B510, &unk_1B68102C0);
  sub_1B6418AB4(a3, &qword_1EB94B470, &unk_1B6815A80);

  return a1;
}

void FeedItemDatabase.allFeedItemEntities<A>(_:order:)(unsigned __int8 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v56 = a3;
  v52 = a2;
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v45 - v18);
  v20 = *a1;
  v21 = *(v4 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v53 = v4;
  v54 = v8;
  os_unfair_lock_lock(v21 + 13);
  sub_1B64C2DD8(&v21[4], v55);
  os_unfair_lock_unlock(v21 + 13);
  if (!v5)
  {
    v50 = v17;
    v51 = a4;
    v22 = v56;
    v48 = v55[2];
    v49 = v55[1];
    v46 = v55[0];
    v47 = v55[3];
    if (v20 > 1)
    {
      v23 = v52;
      if (v20 == 2)
      {
        v25 = sub_1B6496910();
      }

      else
      {
        v25 = sub_1B649693C();
      }
    }

    else
    {
      v23 = v52;
      if (!v20)
      {
        v24 = sub_1B67D8E4C();
        (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
LABEL_10:
        v30 = v12;
        v31 = v50;
        v32 = sub_1B67D8B1C();
        (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
        v33 = sub_1B6415FF0(v19, v31, &qword_1EB94B510, &unk_1B68102C0);
        MEMORY[0x1EEE9AC00](v33);
        *(&v45 - 2) = v23;
        *(&v45 - 1) = v22;
        KeyPath = swift_getKeyPath();
        v35 = *(v22 + 8);
        v36 = v48;

        v37 = sub_1B64B8DE0(v46, v36, v30, v31, KeyPath);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        sub_1B6418AB4(v19, &qword_1EB94B510, &unk_1B68102C0);
        v44 = v51;
        *v51 = v37;
        v44[1] = v39;
        v44[2] = v41;
        v44[3] = v43;
        return;
      }

      v25 = sub_1B64968E4();
    }

    v26 = *(v25 + 1);
    *v19 = *v25;
    v19[1] = v26;
    v27 = *MEMORY[0x1E69D6220];
    v28 = sub_1B67D8E4C();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v19, v27, v28);
    (*(v29 + 56))(v19, 0, 1, v28);

    goto LABEL_10;
  }
}

void FeedItemDatabase.allFeedItemEntities<A>(_:where:order:)(uint64_t a1@<X1>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v61 = a1;
  v9 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v49[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49[-v19];
  v21 = *a2;
  v22 = *(v5 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v58 = v5;
  v59 = v9;
  os_unfair_lock_lock(v22 + 13);
  sub_1B64C2DD8(&v22[4], v60);
  os_unfair_lock_unlock(v22 + 13);
  if (!v6)
  {
    v23 = v18;
    v24 = v20;
    v26 = v56;
    v25 = v57;
    v54 = v60[1];
    v55 = a5;
    v53 = v60[2];
    v51 = v60[0];
    v52 = v60[3];
    if (v21 > 1)
    {
      v27 = v13;
      if (v21 == 2)
      {
        v30 = sub_1B6496910();
      }

      else
      {
        v30 = sub_1B649693C();
      }
    }

    else
    {
      v27 = v13;
      if (!v21)
      {
        v28 = sub_1B67D8E4C();
        v29 = v24;
        (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
LABEL_10:
        v34 = v61;
        v35 = sub_1B67D8B1C();
        v36 = *(v35 - 8);
        (*(v36 + 16))(v27, v34, v35);
        (*(v36 + 56))(v27, 0, 1, v35);
        v37 = sub_1B6415FF0(v29, v23, &qword_1EB94B510, &unk_1B68102C0);
        MEMORY[0x1EEE9AC00](v37);
        *&v49[-16] = v26;
        *&v49[-8] = v25;
        KeyPath = swift_getKeyPath();
        v39 = *(v25 + 8);
        v40 = v53;

        v41 = sub_1B64B8DE0(v51, v40, v27, v23, KeyPath);
        v43 = v42;
        v45 = v44;
        v47 = v46;

        sub_1B6418AB4(v29, &qword_1EB94B510, &unk_1B68102C0);
        v48 = v55;
        *v55 = v41;
        v48[1] = v43;
        v48[2] = v45;
        v48[3] = v47;
        return;
      }

      v30 = sub_1B64968E4();
    }

    v31 = *(v30 + 1);
    v29 = v24;
    *v24 = *v30;
    v24[1] = v31;
    v50 = *MEMORY[0x1E69D6220];
    v32 = sub_1B67D8E4C();
    v33 = *(v32 - 8);
    (*(v33 + 104))(v29, v50, v32);
    (*(v33 + 56))(v29, 0, 1, v32);

    goto LABEL_10;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemDatabase.saveFeedItems(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_1B67D8C1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1._rawValue >> 62)
  {
    v11 = sub_1B67DA04C();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  v20 = v7;
  v12 = *(v3 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  MEMORY[0x1EEE9AC00](v11);
  v18[-2] = v3;
  v18[-1] = v5;
  os_unfair_lock_lock(v12 + 13);
  sub_1B64C2DD8(&v12[4], v19);
  os_unfair_lock_unlock(v12 + 13);
  if (!v2)
  {
    v15 = v19[2];
    v14 = v19[3];
    MEMORY[0x1EEE9AC00](v13);
    v18[-4] = a1._rawValue;
    v18[-3] = v16;
    v18[1] = v16;
    v18[-2] = v15;
    v18[-1] = v14;
    v17 = v20;
    (*(v20 + 104))(v10, *MEMORY[0x1E69D6188], v6);
    sub_1B67D8F4C();
    (*(v17 + 8))(v10, v6);
  }
}

void FeedItemDatabase.modifyBatchesOfFeedItems<A>(_:batchSize:modifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v30 = *v6;
  os_unfair_lock_lock(v13 + 13);
  sub_1B64C2DD8(&v13[4], v31);
  os_unfair_lock_unlock(v13 + 13);
  if (!v7)
  {
    v25 = a2;
    v28 = a3;
    v29 = a4;
    v32 = a5;
    v15 = v31[0];
    v16 = v31[1];
    v17 = v31[2];
    v18 = v31[3];
    MEMORY[0x1EEE9AC00](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B478, &qword_1B6815AD8);
    sub_1B67D8F1C();
    if (v25 < 0)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v26 = v17;
    v27 = v16;
    sub_1B6413CCC(&qword_1EB94B480, &qword_1EB94B478, &qword_1B6815AD8);
    v19 = sub_1B67D9B3C();

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = a6;
      v22 = 0;
      while (v22 < *(v19 + 16))
      {
        v23 = *(v19 + 8 * v22 + 32);

        v24 = objc_autoreleasePoolPush();
        sub_1B64B9C84(v15, v23, v27, v26, v18, v28, v29, v32, v21, v31);
        ++v22;
        objc_autoreleasePoolPop(v24);

        if (v20 == v22)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_10;
    }

LABEL_7:
  }
}

uint64_t sub_1B64B9C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v23 = a6;
  v24 = a7;
  v25 = a1;
  v15 = sub_1B67D8C1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a8;
  v27 = a9;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = v23;
  v33 = v24;
  (*(v16 + 104))(v19, *MEMORY[0x1E69D6188], v15);
  v20 = v34;
  sub_1B67D8F4C();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    *a10 = v20;
  }

  return result;
}

uint64_t sub_1B64B9E14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v12 = *(a5 - 8);
  v58 = v6;
  v59 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v14;
  v63 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v55 = &v51 - v17;
  v18 = sub_1B67D8B1C();
  v56 = *(v18 - 8);
  v57 = v18;
  v19 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v22 = *(a1 + 16);
  v61 = a6;
  v53 = a4;
  v54 = a3;
  if (v22)
  {
    v52 = v21;
    v60 = a2;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v22, 0);
    v23 = v66;
    v24 = (a1 + 32);
    do
    {
      v64 = *v24;

      swift_getAtKeyPath();

      v25 = v65[0];
      v26 = v65[1];
      v66 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1B6456B24((v27 > 1), v28 + 1, 1);
        v23 = v66;
      }

      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      ++v24;
      --v22;
    }

    while (v22);

    a2 = v60;
    a6 = v61;
    v21 = v52;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(a6 + 8);
  v31 = v62;
  sub_1B67D8D9C();
  v32 = swift_allocObject();
  v33 = sub_1B64968B8();
  v35 = *v33;
  v34 = v33[1];
  v32[2] = v35;
  v32[3] = v34;

  v36 = sub_1B64503A4(v23);

  v32[4] = v36;
  *v21 = v32;
  v38 = v56;
  v37 = v57;
  (*(v56 + 104))(v21, *MEMORY[0x1E69D6138], v57);
  v39 = sub_1B67D8E4C();
  v40 = v55;
  (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
  v41 = v58;
  v42 = sub_1B67D8FEC();
  if (v41)
  {

    sub_1B6418AB4(v40, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v38 + 8))(v21, v37);
  }

  v44 = v42;

  sub_1B6418AB4(v40, &qword_1EB94B510, &unk_1B68102C0);
  (*(v38 + 8))(v21, v37);
  v54(v44);
  if (!sub_1B67D984C())
  {
LABEL_20:
  }

  v60 = a2;
  v45 = 0;
  v58 = (v59 + 16);
  v46 = (v59 + 8);
  while (1)
  {
    v47 = sub_1B67D982C();
    sub_1B67D97EC();
    if (v47)
    {
      (*(v59 + 16))(v63, v44 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v45, v31);
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    result = sub_1B67D9F1C();
    if (v51 != 8)
    {
      break;
    }

    v65[0] = result;
    (*v58)(v63, v65, v31);
    swift_unknownObjectRelease();
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_14:
    sub_1B67D8D8C();
    v31 = v62;
    v49 = *(v61 + 16);
    v50 = v63;
    sub_1B67D8E3C();
    (*v46)(v50, v31);

    ++v45;
    if (v48 == sub_1B67D984C())
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64BA3AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B646D2FC();
  *a2 = result;
  return result;
}

uint64_t sub_1B64BA3D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B646D320();
}

void FeedItemDatabase.allFeedContext.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v4 = *v0;
  os_unfair_lock_lock(v2 + 13);
  sub_1B64C2DD8(&v2[4], &v5);
  os_unfair_lock_unlock(v2 + 13);
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B488, &qword_1B6815AE0);
    sub_1B67D8F1C();
  }
}

uint64_t sub_1B64BA55C()
{
  v1 = v0;
  v2 = v0[1];
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v16 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v16;
  }

  v4 = v1[2];
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v16 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v16;
  }

  v6 = v1[3];
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v16 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v16;
  }

  v8 = v1[4];
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if ((v16 & 0x100) != 0)
  {
    __break(1u);
    return result;
  }

  if (v3)
  {
    v10 = sub_1B67D963C();
    sub_1B64C25CC(v15, v16);
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_16:
    v11 = 0;
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v10 = 0;
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_13:
  v11 = sub_1B67D963C();
  sub_1B64C25CC(v15, v16);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_14:
  v12 = sub_1B67D963C();
  sub_1B64C25CC(v15, v16);
LABEL_18:
  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v13 = v15;
  }

  v14 = [objc_allocWithZone(FCFeedContext) initWithChannelID:v10 sectionID:v11 topicID:v12 flags:v13];

  return v14;
}

void FeedItemDatabase.feedContextForFeedIDs(_:)()
{
  v2 = *(v0 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v4 = *v0;
  os_unfair_lock_lock(v2 + 13);
  sub_1B64C2DD8(&v2[4], &v5);
  os_unfair_lock_unlock(v2 + 13);
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B488, &qword_1B6815AE0);
    sub_1B67D8F1C();
  }
}

uint64_t sub_1B64BA880@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_1B67D8B1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B67D8D5C();
  v14 = swift_allocObject();
  v14[2] = 25705;
  v14[3] = 0xE200000000000000;
  v14[4] = sub_1B64503A4(a1);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D6138], v9);
  v15 = sub_1B67D8E4C();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = sub_1B67D8D2C();
  if (v2)
  {

    sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v18 = v16;
    v31 = 0;

    sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
    result = (*(v10 + 8))(v13, v9);
    v34 = *(v18 + 16);
    if (v34)
    {
      v19 = 0;
      v20 = (v18 + 64);
      v21 = MEMORY[0x1E69E7CC8];
      v32 = v18;
      v33 = a2;
      while (v19 < *(v18 + 16))
      {
        v37 = v21;
        v22 = *(v20 - 3);
        v23 = *(v20 - 2);
        v24 = *(v20 - 1);
        v25 = *v20;
        v40 = *(v20 - 4);
        v41 = v22;
        v42 = v23;
        v43 = v24;
        v44 = v25;

        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v26 = v39;
        if (!v39)
        {
          goto LABEL_13;
        }

        v35 = v38;
        v36 = v19 + 1;
        v27 = sub_1B64BA55C();
        v28 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v28;
        v30 = v27;
        v19 = v36;
        sub_1B64BFACC(v30, v35, v26, isUniquelyReferenced_nonNull_native);

        v21 = v45;
        v20 += 5;
        a2 = v33;
        v18 = v32;
        if (v34 == v19)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC8];
LABEL_10:

      *a2 = v21;
    }
  }

  return result;
}

void FeedItemDatabase.feedContextForTagIDs(_:)()
{
  v2 = *(v0 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v4 = *v0;
  os_unfair_lock_lock(v2 + 13);
  sub_1B64C2DD8(&v2[4], &v5);
  os_unfair_lock_unlock(v2 + 13);
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B490, &qword_1B6815AE8);
    sub_1B67D8F1C();
  }
}

uint64_t sub_1B64BAD68@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = v42 - v5;
  v6 = sub_1B67D8B1C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (v42 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v47 = v42 - v15;
  v48 = sub_1B67D8D5C();
  v16 = swift_allocObject();
  v16[2] = 0x496C656E6E616843;
  v16[3] = 0xE900000000000044;
  v16[4] = sub_1B64503A4(a1);
  *v14 = v16;
  v17 = *MEMORY[0x1E69D6138];
  v18 = v7[13];
  v18(v14, v17, v6);
  v19 = swift_allocObject();
  v19[2] = 0x44496369706F54;
  v19[3] = 0xE700000000000000;
  v19[4] = sub_1B64503A4(a1);
  *v11 = v19;
  v18(v11, v17, v6);
  v20 = v47;
  sub_1B67D8CBC();
  v21 = v7[1];
  v21(v11, v6);
  v22 = v14;
  v23 = v49;
  v21(v22, v6);
  v24 = sub_1B67D8E4C();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = v59;
  v45 = sub_1B67D8D2C();
  if (v25)
  {

    sub_1B6418AB4(v23, &qword_1EB94B510, &unk_1B68102C0);
    return v21(v20, v6);
  }

  else
  {
    v42[1] = 0;

    sub_1B6418AB4(v23, &qword_1EB94B510, &unk_1B68102C0);
    result = v21(v20, v6);
    v43 = *(v45 + 16);
    if (v43)
    {
      v27 = 0;
      v28 = (v45 + 64);
      v29 = MEMORY[0x1E69E7CC8];
      while (v27 < *(v45 + 16))
      {
        v30 = *(v28 - 3);
        v32 = *(v28 - 2);
        v31 = *(v28 - 1);
        v33 = *v28;
        v54 = *(v28 - 4);
        v55 = v30;
        v56 = v32;
        v57 = v31;
        v58 = v33;

        v59 = v33;

        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v34 = v53;
        if (v53 == 1)
        {
          sub_1B67D8B4C();
          sub_1B67D8DCC();

          v34 = v51;
          if (v51 == 1)
          {
            goto LABEL_20;
          }

          v35 = v50;
        }

        else
        {
          v35 = v52;
        }

        v48 = v31;
        v49 = v35;
        if (!v34)
        {
          goto LABEL_18;
        }

        v47 = v30;
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v36 = v53;
        if (!v53)
        {
          goto LABEL_19;
        }

        v46 = v27 + 1;
        v37 = v52;
        v38 = sub_1B64BA55C();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v29;
        v40 = v37;
        v27 = v46;
        sub_1B64BFC44(v40, v36, v38, v49, v34, isUniquelyReferenced_nonNull_native);

        v29 = v50;
        v28 += 5;
        v41 = v44;
        if (v43 == v27)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC8];
      v41 = v44;
LABEL_15:

      *v41 = v29;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemDatabase.saveFeedContext(_:)(Swift::OpaquePointer a1)
{
  v4 = *v1;
  v5 = sub_1B67D8C1C();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1._rawValue + 2))
  {
    v20 = v8;
    v11 = *(v1 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
    MEMORY[0x1EEE9AC00](v7);
    *(&v17 - 2) = v1;
    *(&v17 - 1) = v4;
    os_unfair_lock_lock(v11 + 13);
    sub_1B64C2DD8(&v11[4], v19);
    os_unfair_lock_unlock(v11 + 13);
    if (!v2)
    {
      v12 = v19[1];
      v14 = v19[2];
      v13 = v19[3];
      v15 = objc_autoreleasePoolPush();
      v17 = &v17;
      v18 = v15;
      MEMORY[0x1EEE9AC00](v15);
      *(&v17 - 4) = a1._rawValue;
      *(&v17 - 3) = v12;
      *(&v17 - 2) = v14;
      *(&v17 - 1) = v13;
      v16 = v20;
      (*(v20 + 104))(v10, *MEMORY[0x1E69D6188], v5);
      sub_1B67D8F4C();
      (*(v16 + 8))(v10, v5);
      objc_autoreleasePoolPop(v18);
    }
  }
}

void FeedItemDatabase.sidecar<A>()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v13 = *v2;
  os_unfair_lock_lock(v6 + 13);
  sub_1B64C2DD8(&v6[4], &v14);
  if (v3)
  {
    os_unfair_lock_unlock(v6 + 13);
  }

  else
  {
    v16 = a2;
    os_unfair_lock_unlock(v6 + 13);
    MEMORY[0x1EEE9AC00](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B498, &qword_1B6815AF0);
    sub_1B67D8F1C();
    if (v14)
    {
      v8 = sub_1B67D83AC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_1B67D839C();
      sub_1B67D8B4C();
      sub_1B67D8DCC();

      v11 = v15;
      if (v15 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {
        v12 = v14;
        sub_1B67D838C();

        sub_1B6457448(v12, v11);
        (*(*(a1 - 8) + 56))(v16, 0, 1, a1);
      }
    }

    else
    {
      (*(*(a1 - 8) + 56))(v16, 1, 1, a1);
    }
  }
}

void FeedItemDatabase.saveSidecar<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v24 = a1;
  v8 = *v4;
  v9 = sub_1B67D8C1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v21 = v4;
  v22 = v8;
  os_unfair_lock_lock(v14 + 13);
  sub_1B64C2DD8(&v14[4], &v23);
  os_unfair_lock_unlock(v14 + 13);
  if (!v5)
  {
    v19 = &v19;
    MEMORY[0x1EEE9AC00](v15);
    *(&v19 - 8) = a2;
    *(&v19 - 7) = a3;
    *(&v19 - 6) = v20;
    *(&v19 - 5) = v16;
    *(&v19 - 4) = v17;
    *(&v19 - 3) = v18;
    *(&v19 - 2) = v24;
    (*(v10 + 104))(v13, *MEMORY[0x1E69D6188], v9);
    sub_1B67D8F4C();
    (*(v10 + 8))(v13, v9);
  }
}

void FeedItemDatabase.prune(policy:)(uint64_t a1)
{
  v52 = a1;
  v2 = *v1;
  v49 = sub_1B67D8C1C();
  v47 = *(v49 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D877C();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedItemPruningPolicy(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D8B1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);
  v53 = v1;
  v54 = v2;
  os_unfair_lock_lock(v18 + 13);
  v19 = v58;
  sub_1B64C2DD8(&v18[4], v55);
  os_unfair_lock_unlock(v18 + 13);
  if (!v19)
  {
    v20 = v50;
    v21 = v51;
    v45 = v14;
    v46 = v17;
    v44 = v13;
    v22 = v55[0];
    v23 = v55[1];
    v24 = v55[2];
    v58 = v56;
    sub_1B64BF250(v52, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v43 = v22;
      v52 = 0;
      v26 = v20;
      v32 = *(v20 + 32);
      v29 = v8;
      v33 = v8;
      v30 = v21;
      v32(v33, v12, v21);
      v31 = sub_1B64968E4();
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v43 = v22;
      v52 = 0;
      v26 = v20;
      v27 = *(v20 + 32);
      v28 = v8;
      v29 = v8;
      v30 = v21;
      v27(v28, v12, v21);
      v31 = sub_1B6496968();
LABEL_6:
      v34 = *v31;
      v35 = *(v31 + 1);
      v56 = v21;
      v57 = MEMORY[0x1E69D6130];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
      (*(v26 + 16))(boxed_opaque_existential_0, v29, v21);

      v37 = v46;
      sub_1B67D8C5C();

      (*(v26 + 8))(v29, v30);
      v38 = __swift_destroy_boxed_opaque_existential_1(v55);
      v51 = &v43;
      MEMORY[0x1EEE9AC00](v38);
      *(&v43 - 4) = v23;
      *(&v43 - 3) = v24;
      *(&v43 - 2) = v58;
      *(&v43 - 1) = v37;
      v39 = v47;
      v40 = v48;
      v41 = v49;
      (*(v47 + 104))(v48, *MEMORY[0x1E69D6188], v49);
      sub_1B67D8F4C();
      v42 = v44;
      (*(v39 + 8))(v40, v41);

      (*(v45 + 8))(v46, v42);
      return;
    }
  }
}

uint64_t sub_1B64BBE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B67D8B1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D8D7C();
  sub_1B67D8E2C();

  if (!v2)
  {
    sub_1B649AEE8();
    sub_1B67D8D9C();
    v10 = sub_1B67D8F9C();

    v30 = 0;
    v31 = v8;
    v32 = v5;
    v33 = v4;
    result = swift_getKeyPath();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v29 = v11 - 1;
      v38 = MEMORY[0x1E69E7CC0];
      do
      {
        v13 = v12;
        while (1)
        {
          if (v13 >= *(v10 + 16))
          {
            __break(1u);
            return result;
          }

          v14 = a2;
          v12 = v13 + 1;
          v34 = *(v10 + 32 + 16 * v13);
          v35 = v34;

          swift_getAtKeyPath();

          v15 = v37;
          if (v37)
          {
            break;
          }

          ++v13;
          a2 = v14;
          if (v11 == v12)
          {
            goto LABEL_16;
          }
        }

        v16 = v36;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v34 = v16;
        if ((result & 1) == 0)
        {
          result = sub_1B646A2E0(0, *(v38 + 2) + 1, 1, v38);
          v38 = result;
        }

        v18 = *(v38 + 2);
        v17 = *(v38 + 3);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          v28 = v18 + 1;
          result = sub_1B646A2E0((v17 > 1), v18 + 1, 1, v38);
          v19 = v28;
          v38 = result;
        }

        v20 = v38;
        *(v38 + 2) = v19;
        v21 = &v20[16 * v18];
        *(v21 + 4) = v34;
        *(v21 + 5) = v15;
        a2 = v14;
      }

      while (v29 != v13);
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:

    sub_1B67D8D7C();
    v22 = swift_allocObject();
    v22[2] = 25705;
    v22[3] = 0xE200000000000000;
    v23 = sub_1B64503A4(v38);

    v22[4] = v23;
    v24 = v31;
    v25 = v32;
    *v31 = v22;
    v26 = v24;
    v27 = v33;
    (*(v25 + 104))(v24, *MEMORY[0x1E69D6150], v33);
    sub_1B67D8E2C();
    (*(v25 + 8))(v26, v27);
  }

  return result;
}

uint64_t sub_1B64BC19C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B6499B48();
  *a2 = result;
  return result;
}

uint64_t sub_1B64BC1CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];

  return sub_1B6499B6C();
}

id sub_1B64BC20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a2;
  v63 = a3;
  v4 = sub_1B67D8C1C();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B67D8E6C();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1B67D8F7C();
  v66 = *(v68 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D8E8C();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D8EDC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B67D8C4C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1B67D8F5C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *a1;
  v29 = *(a1 + 16);
  v74 = *(a1 + 8);
  v75 = v29;
  v76 = *(a1 + 24);
  v30 = *(a1 + 32);
  if (v30 != 255)
  {
    v31 = v28;
    v32 = *(a1 + 32);
    if ((v30 & 1) == 0)
    {
      v33 = v63;
      v35 = v74;
      v34 = v75;
      *v63 = v28;
      v33[1] = v35;
      v36 = v76;
      v33[2] = v34;
      v33[3] = v36;
    }

    goto LABEL_7;
  }

  v57 = v7;
  v58 = (a1 + 8);
  v78 = 255;
  v59 = v28;
  v60 = a1;
  *v27 = sub_1B67D85BC();
  v27[1] = v38;
  (*(v24 + 104))(v27, *MEMORY[0x1E69D6280], v23);
  sub_1B67D8C3C();
  (*(v17 + 104))(v20, *MEMORY[0x1E69D6270], v16);
  (*(v64 + 104))(v67, *MEMORY[0x1E69D6268], v65);
  (*(v66 + 104))(v70, *MEMORY[0x1E69D62A0], v68);
  (*(v71 + 104))(v73, *MEMORY[0x1E69D6250], v72);
  v39 = sub_1B67D8F8C();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v79 = 1;
  v42 = v77;
  v43 = sub_1B67D8F6C();
  if (v42)
  {
    v44 = v60;
    *v60 = v42;
    v52 = v58;
    v58[1] = 0;
    v52[2] = 0;
    *v52 = 0;
    *(v44 + 32) = 1;
    v53 = v42;
    v31 = v59;
    v32 = v78;
LABEL_7:
    swift_willThrow();
    return sub_1B64C2628(v31, v74, v75, v76, v32);
  }

  v45 = v43;
  sub_1B64BF734();
  v46 = sub_1B67D8F3C();
  v47 = v60;
  v48 = v46;
  sub_1B649B558();
  v49 = sub_1B67D8F3C();
  sub_1B64C26AC();
  v50 = sub_1B67D8F3C();
  v51 = sub_1B67D8E7C();
  if (v51 != (FCFeedItemVersion | 0x60000))
  {
    v73 = (FCFeedItemVersion | 0x60000);
    v77 = &v57;
    MEMORY[0x1EEE9AC00](v51);
    *(&v57 - 4) = v48;
    *(&v57 - 3) = v49;
    *(&v57 - 2) = v50;
    v55 = v61;
    v56 = v57;
    (*(v61 + 104))(v57, *MEMORY[0x1E69D6188], v62);
    sub_1B67D8F4C();
    (*(v55 + 8))(v56, v62);
    sub_1B67D8EEC();
  }

  *v47 = v45;
  v47[1] = v48;
  v47[2] = v49;
  v47[3] = v50;
  *(v47 + 32) = 0;
  v54 = v63;
  *v63 = v45;
  v54[1] = v48;
  v54[2] = v49;
  v54[3] = v50;
}

uint64_t FeedItemDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL;
  v2 = sub_1B67D85FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_logger;
  v4 = sub_1B67D8A9C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);

  return v0;
}

uint64_t FeedItemDatabase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_fileURL;
  v2 = sub_1B67D85FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_logger;
  v4 = sub_1B67D8A9C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsCore16FeedItemDatabase_storage);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B64BCB70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x496E6F6974636573;
  v4 = 0x44496369706F74;
  if (v1 != 3)
  {
    v4 = 0x7367616C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496C656E6E616863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B64BCC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B64C10E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B64BCC2C(uint64_t a1)
{
  v2 = sub_1B64C2C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64BCC68(uint64_t a1)
{
  v2 = sub_1B64C2C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64BCCA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B500, &qword_1B6816480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64C2C68();
  sub_1B67DA47C();
  v13 = *v3;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
    sub_1B6413CCC(&qword_1EB94AC80, &qword_1EB94AC38, &qword_1B6813DE0);
    sub_1B67DA24C();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1B67DA24C();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    sub_1B67DA24C();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E0, &qword_1B6816088);
    sub_1B6413CCC(&qword_1EB94B508, &qword_1EB94B4E0, &qword_1B6816088);
    sub_1B67DA24C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B64BCFAC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v6 = sub_1B67D8B8C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_1B67D8BCC();
}

uint64_t sub_1B64BD074(uint64_t a1)
{
  v2 = sub_1B64C26AC();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64BD0C0(uint64_t a1)
{
  v2 = sub_1B64C26AC();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64BD10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64C26AC();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B64BD170@<D0>(uint64_t a1@<X8>)
{
  sub_1B64C0B10(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1B64BD1B4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B64C1298(a1, v6);
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

uint64_t sub_1B64BD214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64C26AC();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64BD260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64C26AC();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64BD2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64C26AC();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64BD318(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4B8, &qword_1B6816010);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64C2524();
  sub_1B67DA47C();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
    sub_1B6413CCC(&qword_1EB94AC90, &qword_1EB94A640, &qword_1B6811470);
    sub_1B67DA24C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B64BD530()
{
  if (*v0)
  {
    result = 0x6465646F636E65;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1B64BD560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B67DA2DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465646F636E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B67DA2DC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B64BD634(uint64_t a1)
{
  v2 = sub_1B64C2524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64BD670(uint64_t a1)
{
  v2 = sub_1B64C2524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64BD6D0(uint64_t a1)
{
  v2 = sub_1B64BF734();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64BD71C(uint64_t a1)
{
  v2 = sub_1B64BF734();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64BD768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64BF734();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64BD7CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B64C1C8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B64BD7F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B64C1FD0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B64BD83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64BF734();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64BD888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64BF734();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64BD8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64BF734();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64BD940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v41 = a4;
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35 - v7;
  v9 = sub_1B67D8E4C();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v35 - v15;
  v17 = sub_1B67D8B1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v16, &qword_1EB94B470, &unk_1B6815A80);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_1B649AD64();
    sub_1B67D8D9C();
    v28 = v40;
    v29 = sub_1B67D8FEC();
    if (!v28)
    {
      v32 = v29;

      v27 = sub_1B64BE1E8(v32);
      (*(v18 + 8))(v21, v17);
      goto LABEL_12;
    }

    (*(v18 + 8))(v21, v17);
  }

  v22 = v40;
  sub_1B6418AB4(v16, &qword_1EB94B470, &unk_1B6815A80);
  sub_1B6415FF0(v41, v8, &qword_1EB94B510, &unk_1B68102C0);
  v24 = v37;
  v23 = v38;
  if ((*(v37 + 48))(v8, 1, v38) != 1)
  {
    (*(v24 + 32))(v12, v8, v23);
    sub_1B649AD64();
    sub_1B67D8D9C();
    v30 = sub_1B67D8FBC();
    if (!v22)
    {
      v33 = v30;

      v27 = sub_1B64BE1E8(v33);
      (*(v24 + 8))(v12, v23);
      goto LABEL_12;
    }

    (*(v24 + 8))(v12, v23);
  }

  sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
  sub_1B649AD64();
  sub_1B67D8D9C();
  v25 = sub_1B67D8F9C();
  if (v22)
  {
  }

  v26 = v25;

  v27 = sub_1B64BE1E8(v26);
LABEL_12:
  v34 = *(v36 + 24);
  *(v36 + 24) = v27;
}

uint64_t sub_1B64BDD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v41 = a4;
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35 - v7;
  v9 = sub_1B67D8E4C();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v35 - v15;
  v17 = sub_1B67D8B1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v16, &qword_1EB94B470, &unk_1B6815A80);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = v40;
    sub_1B6418AB4(v16, &qword_1EB94B470, &unk_1B6815A80);
    sub_1B6415FF0(v41, v8, &qword_1EB94B510, &unk_1B68102C0);
    v24 = v37;
    v23 = v38;
    if ((*(v37 + 48))(v8, 1, v38) == 1)
    {
      sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
      sub_1B649AD64();
      sub_1B67D8D9C();
      v25 = v22;
      v26 = sub_1B67D8F9C();

      if (v25)
      {
        return result;
      }

      v28 = sub_1B64BE1E8(v26);
      goto LABEL_12;
    }

    (*(v24 + 32))(v12, v8, v23);
    sub_1B649AD64();
    sub_1B67D8D9C();
    v31 = sub_1B67D8FBC();
    if (v22)
    {
      (*(v24 + 8))(v12, v23);
    }

    v33 = v31;

    v28 = sub_1B64BE1E8(v33);
    (*(v24 + 8))(v12, v23);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_1B649AD64();
    sub_1B67D8D9C();
    v29 = v40;
    v30 = sub_1B67D8FEC();
    if (v29)
    {
      (*(v18 + 8))(v21, v17);
    }

    v32 = v30;

    v28 = sub_1B64BE1E8(v32);
    (*(v18 + 8))(v21, v17);
  }

LABEL_12:
  v34 = *(v36 + 24);
  *(v36 + 24) = v28;
}

uint64_t sub_1B64BE1E8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v7 = *(v1 + 16);
    if (i - 4 >= v7)
    {
      break;
    }

    if (v4 - 4 >= v7)
    {
      goto LABEL_14;
    }

    v8 = *(v1 + 8 * i);
    v9 = *(v1 + 8 * v4);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1B64BFF84(v1);
    }

    v10 = *(v1 + 8 * i);
    *(v1 + 8 * i) = v9;

    if (v4 - 4 >= *(v1 + 16))
    {
      goto LABEL_15;
    }

    v6 = *(v1 + 8 * v4);
    *(v1 + 8 * v4) = v8;

LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1B64BE2DC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  sub_1B64BE344(v2, a1[2], a1[3], a2);

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1B64BE344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - v10;
  v12 = sub_1B67D8B1C();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D9DFC();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v51 = *(a2 - 8);
  v21 = *(v51 + 64);
  result = MEMORY[0x1EEE9AC00](v18);
  v52 = a1;
  v25 = *(a1 + 24);
  if (!v25)
  {
    goto LABEL_16;
  }

  if (!*(v25 + 16))
  {
    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }

  v43 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v24;
  v45 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  result = sub_1B64BFF84(v25);
  v25 = result;
  v26 = *(result + 16);
  if (!v26)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v47 = a4;
  v48 = a3;
  v27 = v26 - 1;
  v28 = *(v25 + 8 * v27 + 32);
  *(v25 + 16) = v27;
  v29 = v52;
  *(v52 + 24) = v25;
  v30 = *(v29 + 8);

  sub_1B67D8D9C();

  v31 = sub_1B64968B8();
  v33 = *v31;
  v32 = v31[1];

  v46 = v28;
  sub_1B646D2FC();
  sub_1B67D8DCC();

  if (!v54)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v55[3] = MEMORY[0x1E69E6158];
  v55[4] = MEMORY[0x1E69D62D8];
  v55[0] = v53;
  v55[1] = v54;
  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(v55);
  v34 = sub_1B67D8E4C();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  v35 = v55[6];
  sub_1B67D8FDC();
  if (v35)
  {

    sub_1B6418AB4(v11, &qword_1EB94B510, &unk_1B68102C0);
    (*(v49 + 8))(v15, v50);
    (*(v51 + 56))(v20, 1, 1, a2);
    v37 = v47;
    v36 = v48;
  }

  else
  {

    sub_1B6418AB4(v11, &qword_1EB94B510, &unk_1B68102C0);
    (*(v49 + 8))(v15, v50);
    v38 = v51;
    v39 = (*(v51 + 48))(v20, 1, a2);
    v37 = v47;
    v36 = v48;
    if (v39 != 1)
    {
      v40 = v43;
      (*(v38 + 32))(v43, v20, a2);
      v41 = *(v52 + 16);

      swift_getAtKeyPath();

      (*(v38 + 8))(v40, a2);
      return (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    }
  }

  (*(v44 + 8))(v20, v45);
  return (*(*(v36 - 8) + 56))(v37, 1, 1, v36);
}

uint64_t sub_1B64BE8CC()
{
  v1 = sub_1B64C2520();
  v2 = *v0;

  v3 = v0[1];

  v4 = v0[2];

  v5 = v0[3];

  return v1;
}

id sub_1B64BE94C(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B67D858C();
  v16[0] = 0;
  v7 = [v4 *a2];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_1B67D85FC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_1B67D855C();

    swift_willThrow();
    v13 = sub_1B67D85FC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B64BEAB8()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v11 = *(v0 + 32);
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B67DA04C())
  {
    for (j = 4; ; ++j)
    {
      v6 = j - 4;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8C95180](j - 4, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * j);
      }

      v8 = v7;
      v9 = j - 3;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = objc_autoreleasePoolPush();
      sub_1B67D8D4C();
      v10 = v8;
      sub_1B6496B74(v10, &v13);
      sub_1B67D8CDC();
      v14 = v2;
      if (v2)
      {

        objc_autoreleasePoolPop(v12);

        return;
      }

      objc_autoreleasePoolPop(v12);

      v2 = v14;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_1B64BECD0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  sub_1B649AD64();
  sub_1B67D8D9C();
  v5 = sub_1B67D8F9C();

  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1B64BED44@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 32);
  sub_1B67D8D5C();
  v5 = sub_1B67D8CEC();

  if (!v2)
  {
    v15 = *(v5 + 16);
    if (v15)
    {
      v7 = 0;
      v8 = (v5 + 64);
      v9 = MEMORY[0x1E69E7CC8];
      v14 = v5;
      while (v7 < *(v5 + 16))
      {
        v16 = v9;
        v10 = *(v8 - 4);
        v11 = *v8;
        v19 = *(v8 - 3);
        v20 = *(v8 - 2);
        v21 = *(v8 - 1);

        sub_1B67D8B4C();
        sub_1B67D8DCC();

        if (!v18)
        {
          goto LABEL_12;
        }

        ++v7;
        v12 = sub_1B64BA55C();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B64BFACC(v12, v17, v18, isUniquelyReferenced_nonNull_native);

        v9 = v16;
        v8 += 5;
        v5 = v14;
        if (v15 == v7)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC8];
LABEL_9:

      *a1 = v9;
    }
  }

  return result;
}

void sub_1B64BEF3C()
{
  v1 = *(v0 + 16);
  v17 = *(v0 + 40);
  v18 = v1;
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v5)) | (v8 << 6);
      v10 = *(v18 + 48) + 16 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(*(v18 + 56) + 8 * v9);

      v14 = v13;
      sub_1B67D8D4C();
      v15 = v14;
      sub_1B64BFF98(v11, v12, v15, &v19);
      v16 = v20;
      sub_1B67D8CDC();

      v20 = v16;
      if (v16)
      {
        break;
      }

      v5 &= v5 - 1;
      v7 = v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        return;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B64BF0F4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  sub_1B67D8D5C();
  v5 = sub_1B67D8CEC();

  if (!v2)
  {
    if (v5[2])
    {
      v7 = v5[4];
      v8 = v5[5];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    *a1 = v7;
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_1B64BF18C()
{
  v2 = v0[2];
  v3 = v0[4];
  v4 = v0[8];
  v5 = v0[5];
  sub_1B67D8D4C();
  sub_1B64C0734(v4, v2, v3);
  if (!v1)
  {
    sub_1B67D8CDC();
  }
}

uint64_t sub_1B64BF250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemPruningPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B64BF2D8()
{
  result = qword_1EB94B4A0;
  if (!qword_1EB94B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B4A0);
  }

  return result;
}

uint64_t sub_1B64BF38C()
{
  result = sub_1B67D877C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B64BF440()
{
  result = qword_1EB956140[0];
  if (!qword_1EB956140[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B4A8, &qword_1B6815C78);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956140);
  }

  return result;
}

uint64_t sub_1B64BF4BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B64BF524()
{
  result = qword_1EB9563D0;
  if (!qword_1EB9563D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9563D0);
  }

  return result;
}

unint64_t sub_1B64BF57C()
{
  result = qword_1EB9563D8;
  if (!qword_1EB9563D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9563D8);
  }

  return result;
}

unint64_t sub_1B64BF5D4()
{
  result = qword_1EB9563E0[0];
  if (!qword_1EB9563E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9563E0);
  }

  return result;
}

unint64_t sub_1B64BF62C()
{
  result = qword_1EB956470[0];
  if (!qword_1EB956470[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956470);
  }

  return result;
}

unint64_t sub_1B64BF684()
{
  result = qword_1EB956580;
  if (!qword_1EB956580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956580);
  }

  return result;
}

unint64_t sub_1B64BF6DC()
{
  result = qword_1EB956588[0];
  if (!qword_1EB956588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956588);
  }

  return result;
}

unint64_t sub_1B64BF734()
{
  result = qword_1EB956610;
  if (!qword_1EB956610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956610);
  }

  return result;
}

unint64_t sub_1B64BF78C()
{
  result = qword_1EB956618[0];
  if (!qword_1EB956618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956618);
  }

  return result;
}

uint64_t sub_1B64BF7FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E8, &unk_1B6816090);
  v40 = a2;
  result = sub_1B67DA0CC();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v41 = *v25;
      v42 = *v23;
      v27 = v25[2];
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v41;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
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

uint64_t sub_1B64BFACC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6456E70(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B64817EC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B6456E70(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        v11 = sub_1B67DA34C();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v24);
      }
    }

    else
    {
      v19 = v11;
      sub_1B6481A90();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v24);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_1B64BFC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1B6456E70(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1B64BF7FC(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_1B6456E70(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1B67DA34C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1B64BFDF0();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v29 = v27[1];
    v28 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v26[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = (v26[7] + 24 * v15);
  *v32 = a1;
  v32[1] = a2;
  v32[2] = a3;
  v33 = v26[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v34;
}

id sub_1B64BFDF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E8, &unk_1B6816090);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;

        result = v25;
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

uint64_t sub_1B64BFF98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v80 = a3;
  v83 = a1;
  v84 = a2;
  v85 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4C8, &qword_1B6816070);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v80 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v24 = *(*(v23 - 8) + 56);
  v24(v22, 1, 1, v23);
  v24(v20, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1B67D8B3C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v33 = *(*(v32 - 8) + 56);
  v33(v15, 1, 1, v32);
  v33(v13, 1, 1, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_1B67D8B3C();
  v33(v15, 1, 1, v32);
  v33(v13, 1, 1, v32);
  v41 = *(v34 + 48);
  v42 = *(v34 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v43 = *(v37 + 48);
  v44 = *(v37 + 52);
  swift_allocObject();
  v45 = sub_1B67D8B3C();
  v33(v15, 1, 1, v32);
  v33(v13, 1, 1, v32);
  v46 = v31;
  v47 = v45;
  v48 = v80;
  v49 = *(v34 + 48);
  v50 = *(v34 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v51 = *(v37 + 48);
  v52 = *(v37 + 52);
  swift_allocObject();
  v53 = sub_1B67D8B3C();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D0, &qword_1B6816078);
  v55 = *(*(v54 - 8) + 56);
  v55(v81, 1, 1, v54);
  v55(v82, 1, 1, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D8, &qword_1B6816080);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E0, &qword_1B6816088);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = sub_1B67D8B3C();

  sub_1B67D8B4C();
  v86 = v83;
  v87 = v84;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v63 = [v48 channelID];
  if (v63)
  {
    v64 = v63;
    v65 = sub_1B67D964C();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v86 = v65;
  v87 = v67;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v68 = [v48 sectionID];
  if (v68)
  {
    v69 = v68;
    v70 = sub_1B67D964C();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  v86 = v70;
  v87 = v72;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v73 = [v48 topicID];
  if (v73)
  {
    v74 = v73;
    v75 = sub_1B67D964C();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  v86 = v75;
  v87 = v77;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v86 = [v48 flags];
  LOWORD(v87) = 0;
  sub_1B67D8DDC();

  v79 = v85;
  *v85 = v46;
  v79[1] = v40;
  v79[2] = v47;
  v79[3] = v53;
  v79[4] = v62;
  return result;
}

uint64_t sub_1B64C0734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v14, 1, 1, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1B67D8B3C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v27 = *(*(v26 - 8) + 56);
  v27(v9, 1, 1, v26);
  v27(v7, 1, 1, v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  sub_1B67D8B4C();
  v44 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v34 = sub_1B67D83FC();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D83EC();
  v37 = v45;
  v38 = sub_1B67D83DC();
  if (v37)
  {
  }

  else
  {
    v40 = v38;
    v41 = v39;

    *&v44 = v40;
    *(&v44 + 1) = v41;
    sub_1B67D8DDC();
  }

  return v25;
}

uint64_t sub_1B64C0B10@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4C8, &qword_1B6816070);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  v22(v18, 1, 1, v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v58 = sub_1B67D8B3C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v30 = *(*(v29 - 8) + 56);
  v30(v13, 1, 1, v29);
  v30(v11, 1, 1, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v57 = sub_1B67D8B3C();
  v30(v13, 1, 1, v29);
  v30(v11, 1, 1, v29);
  v37 = *(v31 + 48);
  v38 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v39 = *(v34 + 48);
  v40 = *(v34 + 52);
  swift_allocObject();
  v41 = sub_1B67D8B3C();
  v30(v13, 1, 1, v29);
  v30(v11, 1, 1, v29);
  v42 = *(v31 + 48);
  v43 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v44 = *(v34 + 48);
  v45 = *(v34 + 52);
  swift_allocObject();
  v46 = sub_1B67D8B3C();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D0, &qword_1B6816078);
  v48 = *(*(v47 - 8) + 56);
  v48(v59, 1, 1, v47);
  v48(v60, 1, 1, v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D8, &qword_1B6816080);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E0, &qword_1B6816088);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v56 = v57;
  *a1 = v58;
  a1[1] = v56;
  a1[2] = v41;
  a1[3] = v46;
  a1[4] = result;
  return result;
}

uint64_t sub_1B64C10E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496369706F74 && a2 == 0xE700000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B64C1298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v77 = a1;
  v67 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4F0, &qword_1B6816478);
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4C8, &qword_1B6816070);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v25 = *(*(v24 - 8) + 56);
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v70 = sub_1B67D8B3C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v33 = *(*(v32 - 8) + 56);
  v33(v16, 1, 1, v32);
  v33(v14, 1, 1, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v73 = sub_1B67D8B3C();
  v33(v16, 1, 1, v32);
  v33(v14, 1, 1, v32);
  v40 = *(v34 + 48);
  v41 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v42 = *(v37 + 48);
  v43 = *(v37 + 52);
  swift_allocObject();
  v71 = sub_1B67D8B3C();
  v33(v16, 1, 1, v32);
  v33(v14, 1, 1, v32);
  v44 = *(v34 + 48);
  v45 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v46 = *(v37 + 48);
  v47 = *(v37 + 52);
  swift_allocObject();
  v48 = sub_1B67D8B3C();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D0, &qword_1B6816078);
  v50 = *(*(v49 - 8) + 56);
  v50(v72, 1, 1, v49);
  v50(v74, 1, 1, v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4D8, &qword_1B6816080);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4E0, &qword_1B6816088);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_1B67D8B3C();
  v58 = v77[4];
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  sub_1B64C2C68();
  v59 = v75;
  sub_1B67DA46C();
  if (v59)
  {

    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    v74 = v57;
    v75 = v48;
    v78 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    sub_1B67DA1CC();

    v60 = v79;
    v78 = 1;
    sub_1B6413CCC(&qword_1EB94ACA0, &qword_1EB94AC38, &qword_1B6813DE0);
    sub_1B67DA1CC();

    v61 = v79;
    v78 = 2;
    sub_1B67DA1CC();

    v62 = v79;
    v78 = 3;
    sub_1B67DA1CC();

    v63 = v79;
    v78 = 4;
    sub_1B6413CCC(&qword_1EB94B4F8, &qword_1EB94B4E0, &qword_1B6816088);
    sub_1B67DA1CC();
    (*(v68 + 8))(v76, v69);

    v65 = v79;
    result = __swift_destroy_boxed_opaque_existential_1(v77);
    v66 = v67;
    *v67 = v60;
    v66[1] = v61;
    v66[2] = v62;
    v66[3] = v63;
    v66[4] = v65;
  }

  return result;
}

uint64_t sub_1B64C1C8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v24(v4, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v32 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  return v22;
}

uint64_t sub_1B64C1FD0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B4B0, &qword_1B6816008);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1B67D8B3C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v30 = *(*(v29 - 8) + 56);
  v30(v12, 1, 1, v29);
  v30(v10, 1, 1, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64C2524();
  v38 = v43;
  sub_1B67DA46C();
  if (v38)
  {
  }

  else
  {
    v44 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    v39 = v42;
    sub_1B67DA1CC();

    v28 = v45;
    v44 = 1;
    sub_1B6413CCC(&qword_1EB94ACB0, &qword_1EB94A640, &qword_1B6811470);
    sub_1B67DA1CC();
    (*(v41 + 8))(v5, v39);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28;
}

unint64_t sub_1B64C2524()
{
  result = qword_1EB9567A0[0];
  if (!qword_1EB9567A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9567A0);
  }

  return result;
}

unint64_t sub_1B64C2578()
{
  result = qword_1EB94B4C0;
  if (!qword_1EB94B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B4C0);
  }

  return result;
}

uint64_t sub_1B64C25CC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id sub_1B64C2628(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1B64C2640(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

id sub_1B64C2640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return a1;
  }

  else
  {
  }
}

unint64_t sub_1B64C26AC()
{
  result = qword_1EB9567B8[0];
  if (!qword_1EB9567B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9567B8);
  }

  return result;
}

uint64_t sub_1B64C2700()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  sub_1B67D8D3C();
  sub_1B67D8CCC();

  if (!v1)
  {
    sub_1B67D8D6C();
    sub_1B67D8DFC();

    sub_1B67D8D3C();
    sub_1B67D8CCC();

    sub_1B67D8D6C();
    sub_1B67D8DFC();

    sub_1B67D8D3C();
    sub_1B67D8CCC();

    sub_1B67D8D6C();
    sub_1B67D8DFC();
  }

  return result;
}

uint64_t sub_1B64C2834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B64C287C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B64C28F8()
{
  result = qword_1EB9568C0[0];
  if (!qword_1EB9568C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9568C0);
  }

  return result;
}

unint64_t sub_1B64C2950()
{
  result = qword_1EB956BD0;
  if (!qword_1EB956BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956BD0);
  }

  return result;
}

unint64_t sub_1B64C29A8()
{
  result = qword_1EB956BD8;
  if (!qword_1EB956BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956BD8);
  }

  return result;
}

unint64_t sub_1B64C2A00()
{
  result = qword_1EB956BE0[0];
  if (!qword_1EB956BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956BE0);
  }

  return result;
}

unint64_t sub_1B64C2A58()
{
  result = qword_1EB956C70[0];
  if (!qword_1EB956C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956C70);
  }

  return result;
}

unint64_t sub_1B64C2AB4()
{
  result = qword_1EB956D80[0];
  if (!qword_1EB956D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956D80);
  }

  return result;
}

unint64_t sub_1B64C2B0C()
{
  result = qword_1EB956E10;
  if (!qword_1EB956E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956E10);
  }

  return result;
}

unint64_t sub_1B64C2B64()
{
  result = qword_1EB956E18[0];
  if (!qword_1EB956E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956E18);
  }

  return result;
}

unint64_t sub_1B64C2BBC()
{
  result = qword_1EB956EA0;
  if (!qword_1EB956EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB956EA0);
  }

  return result;
}

unint64_t sub_1B64C2C14()
{
  result = qword_1EB956EA8[0];
  if (!qword_1EB956EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956EA8);
  }

  return result;
}

unint64_t sub_1B64C2C68()
{
  result = qword_1EB956F30[0];
  if (!qword_1EB956F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB956F30);
  }

  return result;
}

unint64_t sub_1B64C2CD0()
{
  result = qword_1EB957040[0];
  if (!qword_1EB957040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957040);
  }

  return result;
}

unint64_t sub_1B64C2D28()
{
  result = qword_1EB957150[0];
  if (!qword_1EB957150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957150);
  }

  return result;
}

unint64_t sub_1B64C2D80()
{
  result = qword_1EDB230E8;
  if (!qword_1EDB230E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB230E8);
  }

  return result;
}

id UserEventHistoryStorage.__allocating_init(privateZone:logger:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B64C6FE0(a1, a2);

  return v2;
}

id UserEventHistoryStorage.__allocating_init(context:location:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v23 - v7;
  v9 = type metadata accessor for PrivateZoneLocation();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 10);
  v14 = *(v3 + 11);
  v15 = sub_1B64C7024();
  v23[0] = v13;
  v23[1] = &type metadata for UserEventHistorySessionEntity;
  v23[2] = v14;
  v23[3] = v15;
  type metadata accessor for PrivateZone();
  sub_1B6418A50(a2, v12);
  v16 = sub_1B67D8A9C();
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 1, 1, v16);

  v19 = PrivateZone.__allocating_init(context:location:logger:)(v18, v12, v8);
  v17(v8, 1, 1, v16);
  v20 = objc_allocWithZone(v3);
  v21 = sub_1B641ABD4(v19, v8);

  sub_1B6416298(a2);
  return v21;
}

id sub_1B64C3000(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.sessionIDs.getter();

  if (v2)
  {
    v3 = sub_1B67D97AC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t UserEventHistoryStorage.sessionIDs.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v28 - v6);
  v28[5] = *(v1 + qword_1EB94B518);

  sub_1B64C3404(v7);
  v8 = sub_1B67D8E4C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = *((v3 & v2) + 0x50);
  v10 = *((v3 & v2) + 0x58);
  v11 = sub_1B64C7024();
  v28[0] = v9;
  v28[1] = &type metadata for UserEventHistorySessionEntity;
  v28[2] = v10;
  v28[3] = v11;
  v12 = type metadata accessor for PrivateZone();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B64C7078();
  v15 = PrivateZoneType.all<A>(_:orderBy:)(&type metadata for UserEventHistorySessionIDEntity, v7, v12, &type metadata for UserEventHistorySessionIDEntity, WitnessTable, v14);
  sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);

  v16 = v15[2];
  if (v16)
  {
    v28[0] = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v16, 0);
    v17 = v28[0];
    v18 = v15 + 5;
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;

      v21 = sub_1B646D344();
      v23 = v22;

      v28[0] = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B6456B24((v24 > 1), v25 + 1, 1);
        v17 = v28[0];
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v17;
}

uint64_t sub_1B64C3404@<X0>(void *a1@<X8>)
{
  v2 = sub_1B646A6E0();
  v3 = *(v2 + 1);
  *a1 = *v2;
  a1[1] = v3;
  v4 = *MEMORY[0x1E69D6220];
  v5 = sub_1B67D8E4C();
  (*(*(v5 - 8) + 104))(a1, v4, v5);
}

id sub_1B64C3494(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.sessions.getter();

  if (v2)
  {
    type metadata accessor for UserEventHistorySession(0);
    v3 = sub_1B67D97AC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t UserEventHistoryStorage.sessions.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v37 - v7);
  v49 = *(v1 + qword_1EB94B518);

  sub_1B64C3404(v8);
  v9 = sub_1B67D8E4C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = *((v4 & v2) + 0x50);
  v11 = *((v4 & v2) + 0x58);
  v12 = sub_1B64C7024();
  v45 = v10;
  v46 = &type metadata for UserEventHistorySessionEntity;
  v47 = v11;
  v48 = v12;
  v13 = type metadata accessor for PrivateZone();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1B64C70CC();
  v16 = PrivateZoneType.all<A>(_:orderBy:)(&type metadata for UserEventHistorySessionSizeEntity, v8, v13, &type metadata for UserEventHistorySessionSizeEntity, WitnessTable, v15);
  sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);

  v45 = MEMORY[0x1E69E7CC0];
  v40 = v16[2];
  if (v40)
  {
    v18 = 0;
    v19 = v16 + 6;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v16;
    v39 = v1;
    while (v18 < v16[2])
    {
      v44 = v18;
      v20 = *(v19 - 1);
      v21 = *v19;
      v22 = *(v19 - 2);

      v23 = *v1;
      v43 = 0;
      v24 = *v3;
      v41 = sub_1B646D344();
      v26 = v25;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B590, &qword_1B6816650);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v28[2] = *((v24 & v23) + 0x50);
      v28[3] = *((v24 & v23) + 0x58);
      v28[4] = v27;
      v29 = v41;
      v28[5] = v41;
      v28[6] = v26;

      v30 = sub_1B64160BC(sub_1B64C7270, v28);
      type metadata accessor for UserEventHistorySession(0);
      v31 = sub_1B646D394();
      v32 = v29;
      v33 = v43;
      v34 = sub_1B64B4000(v32, v26, v31, v30);
      if (v33)
      {

        v35 = 0;
      }

      else
      {
        v35 = v34;
      }

      v1 = v39;
      v3 = MEMORY[0x1E69E7D40];
      if (v35)
      {
        MEMORY[0x1B8C949F0](result);
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B67D97FC();
        }

        result = sub_1B67D983C();
        v37 = v45;
      }

      v18 = v44 + 1;
      v19 += 3;
      v16 = v38;
      if (v40 == v44 + 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v37;
  }

  return result;
}

uint64_t sub_1B64C3A14(uint64_t a1, ValueMetadata *a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v28 - v9;
  v29 = sub_1B67D8B1C();
  v28[0] = *(v29 - 8);
  v11 = *(v28[0] + 64);
  MEMORY[0x1EEE9AC00](v29);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v2 + qword_1EB94B518);

  v14 = sub_1B646A6D4();
  v15 = *v14;
  v16 = *(v14 + 1);
  v33 = MEMORY[0x1E69E6158];
  v34 = MEMORY[0x1E69D62D8];
  v30 = a1;
  v31 = a2;

  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(&v30);
  v17 = sub_1B67D8E4C();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = *((v6 & v5) + 0x50);
  v19 = *((v6 & v5) + 0x58);
  v20 = sub_1B64C7024();
  v30 = v18;
  v31 = &type metadata for UserEventHistorySessionEntity;
  v32 = v19;
  v33 = v20;
  v21 = type metadata accessor for PrivateZone();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_1B64C7380();
  v24 = v28[1];
  PrivateZoneType.first<A>(_:_:orderBy:)(&type metadata for UserEventHistorySessionDataEntity, v13, v10, v21, &type metadata for UserEventHistorySessionDataEntity, WitnessTable, v23);
  if (v24)
  {
    sub_1B6418AB4(v10, &qword_1EB94B510, &unk_1B68102C0);
    (*(v28[0] + 8))(v13, v29);
  }

  else
  {
    sub_1B6418AB4(v10, &qword_1EB94B510, &unk_1B68102C0);
    (*(v28[0] + 8))(v13, v29);

    v25 = v35;
    if (v35)
    {

      WitnessTable = sub_1B646D450();

      sub_1B64C73D4(v25);
    }

    else
    {
      type metadata accessor for UserEventHistoryStorage.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
    }
  }

  return WitnessTable;
}

BOOL sub_1B64C3DA8(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.isEmpty.getter();

  return v2;
}

BOOL UserEventHistoryStorage.isEmpty.getter()
{
  v0 = UserEventHistoryStorage.sessionIDs.getter();
  if (!v0)
  {
    return 1;
  }

  v1 = *(v0 + 16);

  return v1 == 0;
}

id sub_1B64C3E18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = a1;
  UserEventHistoryStorage.earliestSessionDate.getter(v5);

  v7 = sub_1B67D877C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1B67D86DC();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

uint64_t UserEventHistoryStorage.earliestSessionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1B67D8E4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23[5] = *(v1 + qword_1EB94B518);

  v10 = sub_1B646A6E0();
  v11 = *(v10 + 1);
  *v9 = *v10;
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6228], v5);
  v12 = *((v4 & v3) + 0x50);
  v13 = *((v4 & v3) + 0x58);
  v14 = sub_1B64C7024();

  v23[0] = v12;
  v23[1] = &type metadata for UserEventHistorySessionEntity;
  v23[2] = v13;
  v23[3] = v14;
  v15 = type metadata accessor for PrivateZone();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1B64C7120();
  PrivateZoneType.first<A>(_:orderBy:)(&type metadata for UserEventHistorySessionDateEntity, v9, v15, &type metadata for UserEventHistorySessionDateEntity, WitnessTable, v17);
  (*(v6 + 8))(v9, v5);

  v18 = v24;
  if (v24)
  {
    v19 = v25;

    sub_1B646D1B8(v19, a1);
    sub_1B64C73D4(v18);

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_1B67D877C();
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

void UserEventHistoryStorage.storeSessionID(_:sessionData:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v30[4] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = sub_1B67D864C();
  v30[0] = 0;
  v8 = [v7 compressedDataUsingAlgorithm:0 error:v30];

  v9 = v30[0];
  if (v8)
  {
    v10 = sub_1B67D866C();
    v12 = v11;

    UserEventHistorySessionEntity.init(sessionID:sessionData:)(a1, a2, v10, v12, &v29);
    v28 = *(v3 + qword_1EB94B518);
    v14 = *(v6 + 80);
    v13 = *(v6 + 88);
    v15 = sub_1B64C7024();
    v30[0] = v14;
    v30[1] = &type metadata for UserEventHistorySessionEntity;
    v30[2] = v13;
    v30[3] = v15;
    v16 = type metadata accessor for PrivateZone();
    WitnessTable = swift_getWitnessTable();
    PrivateZoneType.add(_:)(&v29, v16, WitnessTable);
  }

  else
  {
    v18 = v9;
    v19 = sub_1B67D855C();

    swift_willThrow();
    v20 = v19;
    v21 = sub_1B67D8A7C();
    v22 = sub_1B67D9C8C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      v25 = v19;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B63EF000, v21, v22, "failed to add session to storage, error=%{public}@", v23, 0xCu);
      sub_1B6418AB4(v24, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v24, -1, -1);
      MEMORY[0x1B8C96DF0](v23, -1, -1);
    }

    else
    {
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B64C45E0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B67D964C();
  v8 = v7;
  v9 = a4;
  v10 = a1;
  v11 = sub_1B67D866C();
  v13 = v12;

  UserEventHistoryStorage.storeSessionID(_:sessionData:)(v6, v8);
  sub_1B645745C(v11, v13);
}

Swift::Void __swiftcall UserEventHistoryStorage.clearAllSessions()()
{
  v11 = *(v0 + qword_1EB94B518);
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1B64C7024();
  type metadata accessor for PrivateZone();
  swift_getWitnessTable();
  PrivateZoneType.removeAll()();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B67D8A7C();
    v4 = sub_1B67D9C8C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_1B63EF000, v3, v4, "failed to clear all sessions in storage, error=%{public}@", v5, 0xCu);
      sub_1B6418AB4(v6, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v6, -1, -1);
      MEMORY[0x1B8C96DF0](v5, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B64C4850(void *a1)
{
  v1 = a1;
  UserEventHistoryStorage.clearAllSessions()();
}

void sub_1B64C48E4(int a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1B67DA07C();
  __break(1u);
}

uint64_t sub_1B64C4938(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.size.getter();

  return v2;
}

uint64_t UserEventHistoryStorage.size.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v32 - v6;
  v32[5] = *(v1 + qword_1EB94B518);
  v8 = sub_1B67D8E4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *((v3 & v2) + 0x50);
  v10 = *((v3 & v2) + 0x58);
  v11 = sub_1B64C7024();

  v32[0] = v9;
  v32[1] = &type metadata for UserEventHistorySessionEntity;
  v32[2] = v10;
  v32[3] = v11;
  v12 = type metadata accessor for PrivateZone();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B64C70CC();
  v15 = PrivateZoneType.all<A>(_:orderBy:)(&type metadata for UserEventHistorySessionSizeEntity, v7, v12, &type metadata for UserEventHistorySessionSizeEntity, WitnessTable, v14);
  sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);

  v16 = v15[2];
  if (!v16)
  {

    v17 = MEMORY[0x1E69E7CC0];
    v26 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  v32[0] = MEMORY[0x1E69E7CC0];
  sub_1B64C6EBC(0, v16, 0);
  v17 = v32[0];
  v18 = v15 + 6;
  do
  {
    v19 = *(v18 - 2);
    v20 = *(v18 - 1);
    v21 = *v18;

    v22 = sub_1B646D394();

    v32[0] = v17;
    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1B64C6EBC((v23 > 1), v24 + 1, 1);
      v17 = v32[0];
    }

    *(v17 + 16) = v24 + 1;
    *(v17 + 8 * v24 + 32) = v22 & ~(v22 >> 63);
    v18 += 3;
    --v16;
  }

  while (v16);

  v26 = *(v17 + 16);
  if (!v26)
  {
    goto LABEL_12;
  }

LABEL_7:
  v27 = 0;
  for (i = 32; ; i += 8)
  {
    v29 = *(v17 + i);
    v30 = __CFADD__(v27, v29);
    v27 += v29;
    if (v30)
    {
      break;
    }

    if (!--v26)
    {
      v31 = v27;

      return v31;
    }
  }

  __break(1u);
  return result;
}

uint64_t UserEventHistoryStorage.prune(policy:)(void *a1)
{
  v2 = v1;
  v91 = (*MEMORY[0x1E69E7D40] & *v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v87 - v6);
  v8 = sub_1B67D8B1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EDB21EB0;
  v14 = a1;
  v15 = sub_1B67D8A7C();
  v16 = sub_1B67D9C9C();

  v17 = os_log_type_enabled(v15, v16);
  v92 = v12;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v89 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v90 = v2;
    v88 = v20;
    v96 = v20;
    *v19 = 136315138;
    v21 = v9;
    v22 = v8;
    v23 = v13;
    v24 = [v14 description];
    v25 = sub_1B67D964C();
    v27 = v26;

    v13 = v23;
    v8 = v22;
    v9 = v21;
    v28 = sub_1B6456540(v25, v27, &v96);

    *(v19 + 4) = v28;
    _os_log_impl(&dword_1B63EF000, v15, v16, "will prune sessions, policy=%s", v19, 0xCu);
    v29 = v88;
    __swift_destroy_boxed_opaque_existential_1(v88);
    v2 = v90;
    MEMORY[0x1B8C96DF0](v29, -1, -1);
    v30 = v19;
    v7 = v89;
    MEMORY[0x1B8C96DF0](v30, -1, -1);
  }

  v31 = sub_1B64C5624(v14);
  v88 = v13;
  v32 = *(v2 + qword_1EB94B518);
  v93 = v32;

  v33 = sub_1B646A6D4();
  v34 = *v33;
  v35 = *(v33 + 1);

  sub_1B64503A4(v31);
  v89 = v31;
  v36 = v92;
  sub_1B67D8C8C();

  sub_1B64C3404(v7);
  v37 = sub_1B67D8E4C();
  (*(*(v37 - 8) + 56))(v7, 0, 1, v37);
  v38 = v91[10];
  v39 = v91[11];
  v40 = sub_1B64C7024();
  v96 = v38;
  v97 = &type metadata for UserEventHistorySessionEntity;
  v98 = v39;
  v99 = v40;
  v41 = type metadata accessor for PrivateZone();
  WitnessTable = swift_getWitnessTable();
  v43 = sub_1B64C70CC();
  v44 = PrivateZoneType.where<A>(_:_:orderBy:)(&type metadata for UserEventHistorySessionSizeEntity, v36, v7, v41, &type metadata for UserEventHistorySessionSizeEntity, WitnessTable, v43);
  sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
  (*(v9 + 8))(v36, v8);

  swift_getKeyPath();
  v45 = v44[2];
  if (v45)
  {
    v87 = v32;
    v92 = 0;
    v90 = v2;
    rawValue = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v45, 0);
    v46._rawValue = rawValue;
    v91 = v44;
    v47 = v44 + 6;
    v48 = v45;
    do
    {
      v49 = *(v47 - 1);
      v50 = *v47;
      v96 = *(v47 - 2);
      v97 = v49;
      v98 = v50;

      swift_getAtKeyPath();

      v51 = v93;
      v52 = v94;
      rawValue = v46._rawValue;
      v54 = *(v46._rawValue + 2);
      v53 = *(v46._rawValue + 3);
      if (v54 >= v53 >> 1)
      {
        sub_1B6456B24((v53 > 1), v54 + 1, 1);
        v46._rawValue = rawValue;
      }

      *(v46._rawValue + 2) = v54 + 1;
      v55 = v46._rawValue + 16 * v54;
      *(v55 + 4) = v51;
      *(v55 + 5) = v52;
      v47 += 3;
      --v48;
    }

    while (v48);

    v2 = v90;
    v44 = v91;
  }

  else
  {

    v46._rawValue = MEMORY[0x1E69E7CC0];
  }

  PrivateZone.remove(_:)(v46);
  v57 = MEMORY[0x1E69E7CC0];
  if (v56)
  {

    v58 = v56;
    v59 = sub_1B67D8A7C();
    v60 = sub_1B67D9C8C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138543362;
      v63 = v56;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 4) = v64;
      *v62 = v64;
      _os_log_impl(&dword_1B63EF000, v59, v60, "failed to prune sessions, error=%{public}@", v61, 0xCu);
      sub_1B6418AB4(v62, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v62, -1, -1);
      MEMORY[0x1B8C96DF0](v61, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();

  sub_1B646A1EC(v66);
  swift_endAccess();
  if (v45)
  {
    v96 = v57;
    sub_1B64C6EBC(0, v45, 0);
    v67 = v96;
    v68 = v44 + 6;
    do
    {
      v69 = *(v68 - 2);
      v70 = *(v68 - 1);
      v71 = *v68;

      v72 = sub_1B646D394();

      if (v72 < 0)
      {
        __break(1u);
        goto LABEL_33;
      }

      v96 = v67;
      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1B64C6EBC((v73 > 1), v74 + 1, 1);
        v67 = v96;
      }

      *(v67 + 16) = v74 + 1;
      *(v67 + 8 * v74 + 32) = v72;
      v68 += 3;
      --v45;
    }

    while (v45);

    v75 = *(v67 + 16);
    if (!v75)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v67 = MEMORY[0x1E69E7CC0];
  v75 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v75)
  {
LABEL_21:
    v76 = 0;
    v77 = (v67 + 32);
    v78 = v89;
    while (1)
    {
      v79 = *v77++;
      v80 = __CFADD__(v76, v79);
      v76 += v79;
      if (v80)
      {
        break;
      }

      if (!--v75)
      {
        goto LABEL_27;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_26:
  v76 = 0;
  v78 = v89;
LABEL_27:

  v81 = qword_1EDB20468;
  result = swift_beginAccess();
  v82 = *(v2 + v81);
  v80 = __CFADD__(v82, v76);
  v83 = v82 + v76;
  if (v80)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  *(v2 + v81) = v83;

  v84 = sub_1B67D8A7C();
  v85 = sub_1B67D9C9C();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 134217984;
    *(v86 + 4) = v78[2];

    _os_log_impl(&dword_1B63EF000, v84, v85, "did prune sessions, count=%ld", v86, 0xCu);
    MEMORY[0x1B8C96DF0](v86, -1, -1);
  }

  else
  {
  }

  return v78;
}

unint64_t sub_1B64C5624(void *a1)
{
  v3 = v1;
  v89 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = sub_1B67D8B1C();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1B67D877C();
  v9 = *(v88 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v88);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v85 - v20);
  v22 = UserEventHistoryStorage.sessionIDs.getter();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v91 = a1;
  v24 = [a1 type];
  if (v24 <= 1)
  {
    if (v24 == 1)
    {

      v97 = *(v3 + qword_1EB94B518);

      sub_1B64C3404(v21);
      v25 = sub_1B67D8E4C();
      (*(*(v25 - 8) + 56))(v21, 0, 1, v25);
      v26 = *(v89 + 80);
      v27 = *(v89 + 88);
      v28 = sub_1B64C7024();
      v92 = v26;
      v93 = &type metadata for UserEventHistorySessionEntity;
      v94 = v27;
      v95 = v28;
      v29 = type metadata accessor for PrivateZone();
      WitnessTable = swift_getWitnessTable();
      v31 = sub_1B64C70CC();
      v23 = PrivateZoneType.all<A>(_:orderBy:)(&type metadata for UserEventHistorySessionSizeEntity, v21, v29, &type metadata for UserEventHistorySessionSizeEntity, WitnessTable, v31);
      sub_1B6418AB4(v21, &qword_1EB94B510, &unk_1B68102C0);

      if (v2)
      {
        return v23;
      }

      v32 = v23[2];
      if (v32)
      {
        v85 = 0;
        v33 = 0;
        v88 = v23;
        v34 = v23 + 6;
        v23 = MEMORY[0x1E69E7CC0];
        v35 = &selRef_value;
        v36 = v91;
        while (1)
        {
          v37 = *(v34 - 2);
          v38 = *(v34 - 1);
          v39 = *v34;

          result = sub_1B646D394();
          v41 = __OFADD__(v33, result);
          v33 += result;
          if (v41)
          {
            break;
          }

          v42 = [v36 *v35];
          if (v33 <= 0 || v42 >= v33)
          {
          }

          else
          {
            v43 = sub_1B646D344();
            v89 = v44;
            v90 = v43;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1B646A2E0(0, v23[2] + 1, 1, v23);
            }

            v46 = v23[2];
            v45 = v23[3];
            if (v46 >= v45 >> 1)
            {
              v23 = sub_1B646A2E0((v45 > 1), v46 + 1, 1, v23);
            }

            v23[2] = v46 + 1;
            v47 = &v23[2 * v46];
            v48 = v89;
            v47[4] = v90;
            v47[5] = v48;
            v36 = v91;
            v35 = &selRef_value;
          }

          v34 += 3;
          if (!--v32)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_43;
      }
    }

LABEL_32:

    return MEMORY[0x1E69E7CC0];
  }

  if (v24 != 2)
  {
    if (v24 == 3)
    {

      sub_1B67D876C();
      [v91 value];
      v55 = v90;
      sub_1B67D86CC();
      v56 = v13;
      v57 = v88;
      v91 = *(v9 + 8);
      (v91)(v56, v88);
      v97 = *(v3 + qword_1EB94B518);

      v58 = sub_1B646A6E0();
      v85 = v2;
      v59 = *v58;
      v60 = *(v58 + 1);
      v95 = v57;
      v96 = MEMORY[0x1E69D6130];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v92);
      v62 = v55;
      v63 = v57;
      (*(v9 + 16))(boxed_opaque_existential_0, v62, v57);

      sub_1B67D8C5C();

      __swift_destroy_boxed_opaque_existential_1(&v92);
      v64 = sub_1B67D8E4C();
      (*(*(v64 - 8) + 56))(v19, 1, 1, v64);
      v65 = *(v89 + 80);
      v66 = *(v89 + 88);
      v67 = sub_1B64C7024();
      v92 = v65;
      v93 = &type metadata for UserEventHistorySessionEntity;
      v94 = v66;
      v95 = v67;
      v68 = type metadata accessor for PrivateZone();
      v69 = swift_getWitnessTable();
      v70 = sub_1B64C7078();
      v23 = &v97;
      v71 = v85;
      v72 = PrivateZoneType.where<A>(_:_:orderBy:)(&type metadata for UserEventHistorySessionIDEntity, v8, v19, v68, &type metadata for UserEventHistorySessionIDEntity, v69, v70);
      v85 = v71;
      if (v71)
      {
        sub_1B6418AB4(v19, &qword_1EB94B510, &unk_1B68102C0);
        (*(v86 + 8))(v8, v87);

        (v91)(v90, v63);
      }

      else
      {
        v73 = v72;
        v89 = v9 + 8;
        sub_1B6418AB4(v19, &qword_1EB94B510, &unk_1B68102C0);
        (*(v86 + 8))(v8, v87);

        v74 = v73[2];
        if (v74)
        {
          v92 = MEMORY[0x1E69E7CC0];
          sub_1B6456B24(0, v74, 0);
          v23 = v92;
          v75 = v73 + 5;
          v76 = v90;
          do
          {
            v77 = *(v75 - 1);
            v78 = *v75;

            v79 = sub_1B646D344();
            v81 = v80;

            v92 = v23;
            v83 = v23[2];
            v82 = v23[3];
            if (v83 >= v82 >> 1)
            {
              sub_1B6456B24((v82 > 1), v83 + 1, 1);
              v23 = v92;
            }

            v23[2] = v83 + 1;
            v84 = &v23[2 * v83];
            v84[4] = v79;
            v84[5] = v81;
            v75 += 2;
            --v74;
          }

          while (v74);
          (v91)(v76, v88);
LABEL_39:
        }

        else
        {

          (v91)(v90, v63);
          return MEMORY[0x1E69E7CC0];
        }
      }

      return v23;
    }

    goto LABEL_32;
  }

  v49 = v23[2];
  v50 = v91;
  v51 = [v91 value];
  if (!v49 || v51 >= v49)
  {
    goto LABEL_32;
  }

  result = [v50 value];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v52 = v23[2];
  if (v52 >= result)
  {
    if (result)
    {
      sub_1B6456D98(v23, (v23 + 4), result, (2 * v52) | 1);
      v54 = v53;

      return v54;
    }

    return v23;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1B64C5ED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  result = sub_1B646D2FC();
  *a2 = result;
  return result;
}

uint64_t sub_1B64C5F0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];

  return sub_1B646D320();
}

id sub_1B64C5F5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UserEventHistoryStorage.prune(policy:)(v4);

  v6 = sub_1B67D97AC();

  return v6;
}

id sub_1B64C5FD8()
{
  sub_1B64C7174();

  v0 = sub_1B67D97AC();

  return v0;
}

uint64_t UserEventHistoryStorage.prunedSessionIDs.getter()
{
  sub_1B64C7174();
}

void sub_1B64C6058(void *a1)
{
  v2 = sub_1B67D97BC();
  v3 = a1;
  sub_1B64C60C0(v2);
}

uint64_t sub_1B64C60C0(uint64_t a1)
{
  v3 = qword_1EDB20470;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t UserEventHistoryStorage.prunedSessionSize.getter()
{
  v1 = qword_1EDB20468;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B64C61A8(uint64_t a1)
{
  v3 = qword_1EDB20468;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void UserEventHistoryStorage.readBaseDirectory(accessor:)(void (*a1)(char *), void *a2)
{
  v66 = a1;
  v65[1] = a2;
  v77 = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D87BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B67D85FC();
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v72 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v65 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v65 - v14;
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  v18 = [v17 temporaryDirectory];

  sub_1B67D85AC();
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1B67D9EFC();

  v75 = 0xD000000000000011;
  v76 = 0x80000001B6829A80;
  sub_1B67D87AC();
  v19 = sub_1B67D879C();
  v21 = v20;
  (*(v3 + 8))(v6, v2);
  v22 = v74;
  MEMORY[0x1B8C94910](v19, v21);

  sub_1B67D859C();

  v25 = *(v22 + 8);
  v23 = v22 + 8;
  v24 = v25;
  v25(v13, v7);
  v65[0] = v16;
  v26 = [v16 defaultManager];
  v27 = sub_1B67D858C();
  v75 = 0;
  LODWORD(v2) = [v26 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:&v75];

  if (v2)
  {
    v71 = v15;
    v28 = v75;
    v29 = UserEventHistoryStorage.sessions.getter();
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v70 = v7;
    if (v30 >> 62)
    {
      goto LABEL_19;
    }

    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v30; v31; i = v30)
    {
      v33 = 0;
      v73 = v31;
      v74 = i & 0xC000000000000001;
      v67 = i & 0xFFFFFFFFFFFFFF8;
      v68 = i;
      v69 = v24;
      while (1)
      {
        if (v74)
        {
          v34 = MEMORY[0x1B8C95180](v33, i);
        }

        else
        {
          if (v33 >= *(v67 + 16))
          {
            goto LABEL_18;
          }

          v34 = *(i + 8 * v33 + 32);
        }

        v30 = v34;
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        v36 = UserEventHistorySession.compressedData.getter();
        if (v37 >> 60 != 15)
        {
          v38 = v36;
          v39 = v37;
          v40 = v23;
          v41 = *(v30 + OBJC_IVAR___FCUserEventHistorySession_sessionID);
          v42 = *(v30 + OBJC_IVAR___FCUserEventHistorySession_sessionID + 8);

          v43 = v72;
          sub_1B67D859C();

          sub_1B67D867C();
          v44 = v43;
          v24 = v69;
          v23 = v40;
          v69(v44, v70);
          sub_1B6457448(v38, v39);
          i = v68;
        }

        ++v33;
        if (v35 == v73)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v31 = sub_1B67DA04C();
    }

LABEL_20:

    v50 = v71;
    v66(v71);
    v51 = [v65[0] defaultManager];
    v52 = sub_1B67D858C();
    v75 = 0;
    v53 = [v51 removeItemAtURL:v52 error:&v75];

    if (v53)
    {
      v54 = v75;
      v24(v50, v70);
      goto LABEL_26;
    }

    v55 = v75;
    v56 = sub_1B67D855C();

    swift_willThrow();
    v47 = v56;
    v48 = v50;
    v49 = v70;
  }

  else
  {
    v45 = v75;
    v46 = sub_1B67D855C();

    swift_willThrow();
    v47 = v46;
    v48 = v15;
    v49 = v7;
  }

  v24(v48, v49);
  v57 = v47;
  v58 = sub_1B67D8A7C();
  v59 = sub_1B67D9C8C();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138543362;
    v62 = v47;
    v63 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 4) = v63;
    *v61 = v63;
    _os_log_impl(&dword_1B63EF000, v58, v59, "failed to write sessions to temporary directory, error=%{public}@", v60, 0xCu);
    sub_1B6418AB4(v61, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v61, -1, -1);
    MEMORY[0x1B8C96DF0](v60, -1, -1);
  }

  else
  {
  }

LABEL_26:
  v64 = *MEMORY[0x1E69E9840];
}

void sub_1B64C68C4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v6[2] = v4;
  v5 = a1;
  UserEventHistoryStorage.readBaseDirectory(accessor:)(sub_1B64C7214, v6);
  _Block_release(v4);
}

void *UserEventHistoryStorage._metadata.getter()
{
  v1 = qword_1EDB20460;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void UserEventHistoryStorage._metadata.setter(uint64_t a1)
{
  v3 = qword_1EDB20460;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1B64C6A38(void *a1)
{
  v1 = a1;
  v2 = UserEventHistoryStorage.metadata.getter();

  return v2;
}

uint64_t UserEventHistoryStorage.metadata.getter()
{
  v1 = qword_1EDB20460;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v6 = v2;
    return v3;
  }

  v4 = objc_opt_self();
  result = UserEventHistoryStorage.size.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = [v4 emptyWithSessionsOnDiskSize_];
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UserEventHistoryStorage.setAggregateStoreMetadataWith(generationTime:aggregateTotalCount:meanCountOfEvents:standardDeviationOfEvents:totalEventsCount:headlineEventCount:headlinesWithValidTitleEmbeddingsEventCount:headlinesWithInvalidTitleEmbeddingsEventCount:headlinesWithValidBodyEmbeddingsEventCount:headlinesWithInvalidBodyEmbeddingsEventCount:eventCounts:aggregateStoreData:)(Swift::Int64 generationTime, Swift::Int64 aggregateTotalCount, Swift::Double meanCountOfEvents, Swift::Double standardDeviationOfEvents, Swift::Int64 totalEventsCount, Swift::Int64 headlineEventCount, Swift::Int64 headlinesWithValidTitleEmbeddingsEventCount, Swift::Int64 headlinesWithInvalidTitleEmbeddingsEventCount, Swift::Int64 headlinesWithValidBodyEmbeddingsEventCount, Swift::Int64 headlinesWithInvalidBodyEmbeddingsEventCount, FCUserEventHistoryEventCounts_optional *eventCounts, FCUserEventHistoryAggregateStoreData_optional *aggregateStoreData)
{
  v23 = UserEventHistoryStorage.size.getter();
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = [objc_allocWithZone(FCUserEventHistoryMetadata) initWithAggregateStoreGenerationTime:generationTime aggregateTotalCount:aggregateTotalCount meanCountOfEvents:v23 sessionsOnDiskSize:totalEventsCount standardDeviationOfEvents:headlineEventCount totalEventsCount:headlinesWithValidTitleEmbeddingsEventCount headlineEventCount:meanCountOfEvents headlinesWithValidTitleEmbeddingsEventCount:standardDeviationOfEvents headlinesWithInvalidTitleEmbeddingsEventCount:headlinesWithInvalidTitleEmbeddingsEventCount headlinesWithValidBodyEmbeddingsEventCount:headlinesWithValidBodyEmbeddingsEventCount headlinesWithInvalidBodyEmbeddingsEventCount:headlinesWithInvalidBodyEmbeddingsEventCount eventCounts:eventCounts aggregateStoreData:aggregateStoreData];
    v25 = qword_1EDB20460;
    swift_beginAccess();
    v26 = *(v12 + v25);
    *(v12 + v25) = v24;
  }
}

void sub_1B64C6C10(void *a1, Swift::Double a2, Swift::Double a3, uint64_t a4, Swift::Int64 a5, Swift::Int64 a6, Swift::Int64 a7, Swift::Int64 a8, Swift::Int64 a9, Swift::Int64 a10, Swift::Int64 a11, Swift::Int64 a12, FCUserEventHistoryEventCounts_optional *eventCounts, FCUserEventHistoryAggregateStoreData_optional *aggregateStoreData)
{
  v20 = eventCounts;
  v21 = aggregateStoreData;
  v22 = a1;
  UserEventHistoryStorage.setAggregateStoreMetadataWith(generationTime:aggregateTotalCount:meanCountOfEvents:standardDeviationOfEvents:totalEventsCount:headlineEventCount:headlinesWithValidTitleEmbeddingsEventCount:headlinesWithInvalidTitleEmbeddingsEventCount:headlinesWithValidBodyEmbeddingsEventCount:headlinesWithInvalidBodyEmbeddingsEventCount:eventCounts:aggregateStoreData:)(a5, a6, a2, a3, a7, a8, a9, a10, a11, a12, eventCounts, aggregateStoreData);
}

void sub_1B64C6CF0(void *a1)
{
  v1 = a1;
  UserEventHistoryStorage.clearHistory()();
}

id UserEventHistoryStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void UserEventHistoryStorage.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1B64C71B8();
}

void sub_1B64C6DA8(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1B64C71B8();
}

id UserEventHistoryStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B64C6E20(uint64_t a1)
{
  v2 = *(a1 + qword_1EB94B518);

  v3 = qword_1EDB21EB0;
  v4 = sub_1B67D8A9C();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = *(a1 + qword_1EDB20470);

  v6 = *(a1 + qword_1EDB20460);
}

char *sub_1B64C6EBC(char *a1, int64_t a2, char a3)
{
  result = sub_1B64C6EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B64C6EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B588, &qword_1B6816648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_1B64C7024()
{
  result = qword_1EDB1E7B8;
  if (!qword_1EDB1E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7B8);
  }

  return result;
}

unint64_t sub_1B64C7078()
{
  result = qword_1EDB1E7A0;
  if (!qword_1EDB1E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7A0);
  }

  return result;
}

unint64_t sub_1B64C70CC()
{
  result = qword_1EDB1E750;
  if (!qword_1EDB1E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E750);
  }

  return result;
}

unint64_t sub_1B64C7120()
{
  result = qword_1EDB1E768;
  if (!qword_1EDB1E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E768);
  }

  return result;
}

uint64_t sub_1B64C7174()
{
  v1 = qword_1EDB20470;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B64C7214()
{
  v1 = *(v0 + 16);
  v2 = sub_1B67D858C();
  (*(v1 + 16))(v1, v2);
}

void sub_1B64C7270(uint64_t *a1@<X8>)
{
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1B64C3A14(v6, v8);
    v13 = v12;

    if (!v2)
    {
      *a1 = v11;
      a1[1] = v13;
    }
  }

  else
  {
    type metadata accessor for UserEventHistoryStorage.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

unint64_t sub_1B64C7380()
{
  result = qword_1EDB1E788;
  if (!qword_1EDB1E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E788);
  }

  return result;
}

uint64_t sub_1B64C73D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemInventoryType.validateHasScoredItems()()
{
  LOBYTE(v10) = 3;
  (*(v0 + 16))(&v12, &v10);
  if (!v1)
  {
    v2 = v13;
    v3 = __swift_project_boxed_opaque_existential_1(&v12, v13);
    v4 = *(*(v2 - 8) + 64);
    MEMORY[0x1EEE9AC00](v3);
    (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(v14);
    sub_1B67D96FC();
    __swift_destroy_boxed_opaque_existential_1(&v12);
    __swift_mutable_project_boxed_opaque_existential_1(v14, AssociatedTypeWitness);
    sub_1B67D9E0C();
    v7 = v12;
    if (v12)
    {
      FeedItemAndScoreEntity.forYouScore.getter();
      sub_1B67D8DCC();

      if (v11)
      {
        __break(1u);
      }

      else
      {
        if (v10 <= 0.0)
        {
          sub_1B64C76D0();
          swift_allocError();
          *v9 = 5;
          swift_willThrow();
        }

        sub_1B649FFF8(v7);
        __swift_destroy_boxed_opaque_existential_1(v14);
      }
    }

    else
    {
      sub_1B64C76D0();
      swift_allocError();
      *v8 = 4;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }
}

unint64_t sub_1B64C76D0()
{
  result = qword_1EB957360[0];
  if (!qword_1EB957360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957360);
  }

  return result;
}

id FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_1B64CCE6C(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 10) - 8) + 8))(a1);
  return v13;
}

id FeedItemInventory.init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1B64CCE6C(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x50) - 8) + 8))(a1);
  return v9;
}

void FeedItemInventory.allFeedItems(order:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x78));
  v7 = *a1;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B608, &qword_1B6816728);
  a2[4] = swift_getOpaqueTypeConformance2();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  FeedItemDatabase.allFeedItems(order:)(&v7, boxed_opaque_existential_0);
  if (v3)
  {
    __swift_deallocate_boxed_opaque_existential_1(a2);
  }
}

void FeedItemInventory.allScoredFeedItems(order:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x78));
  v8 = *a1;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B610, &qword_1B6816730);
  v7 = sub_1B64CD22C();
  a2[4] = swift_getOpaqueTypeConformance2();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  FeedItemDatabase.allFeedItemEntities<A>(_:order:)(&v8, &type metadata for FeedItemAndScoreEntity, v7, boxed_opaque_existential_0);
  if (v3)
  {
    __swift_deallocate_boxed_opaque_existential_1(a2);
  }
}

uint64_t FeedItemInventory.refreshIfNeeded(policy:)(uint64_t *a1)
{
  *(v2 + 16) = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v6 = type metadata accessor for FeedItemInventory.Metadata();
  *(v2 + 24) = v6;
  v7 = *(v6 - 8);
  *(v2 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a1;
  *(v2 + 40) = v9;
  *(v2 + 48) = v10;
  *(v2 + 80) = *(a1 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1B64C7B18, 0, 0);
}

uint64_t sub_1B64C7B18()
{
  v20 = v0;
  v1 = *(v0 + 16);
  sub_1B64C7F50(*(v0 + 40));
  v2 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v18 = *(v0 + 48);
  v19 = v2;
  v5 = sub_1B64C83E0(&v18, v3);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = *(v0 + 16);
    v8 = *(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x88));
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v6;
    os_unfair_lock_lock((v8 + 24));
    sub_1B64CD298((v8 + 16), &v18);
    os_unfair_lock_unlock((v8 + 24));
    v12 = v18;
    *(v0 + 56) = v18;

    v13 = *(MEMORY[0x1E69E86A8] + 4);
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    *v14 = v0;
    v14[1] = sub_1B64C7D20;
    v16 = MEMORY[0x1E69E7288];
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v15, v12, v17, v15, v16);
  }

  else
  {
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B64C7D20()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1B64C7EBC;
  }

  else
  {
    v3 = sub_1B64C7E34;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64C7E34()
{
  v1 = v0[7];

  (*(v0[4] + 8))(v0[5], v0[3]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B64C7EBC()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  (*(v3 + 8))(v2, v4);
  v5 = v0[9];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B64C7F50@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v38 = a1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & v4) + 0x58);
  v7 = *((*MEMORY[0x1E69E7D40] & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B67D9DFC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - v13;
  v36 = v7;
  v37 = v6;
  v15 = type metadata accessor for FeedItemInventory.Metadata();
  v16 = sub_1B67D9DFC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = *(v3 + *((v5 & v4) + 0x78));
  swift_getWitnessTable();
  swift_getWitnessTable();
  FeedItemDatabase.sidecar<A>()(v15, v20);
  if (v2)
  {
    v22 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
    v23 = v2;
    v24 = sub_1B67D8A7C();
    v25 = sub_1B67D9C8C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1B63EF000, v24, v25, "failed to load metadata from database, error=%{public}@", v26, 0xCu);
      sub_1B6418AB4(v27, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v27, -1, -1);
      MEMORY[0x1B8C96DF0](v26, -1, -1);
    }

    else
    {
    }

    goto LABEL_7;
  }

  v30 = *(v15 - 8);
  if ((*(v30 + 48))(v20, 1, v15) == 1)
  {
    (*(v17 + 8))(v20, v16);
LABEL_7:
    v31 = sub_1B67D877C();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    v32 = v34;
    (*(*(AssociatedTypeWitness - 8) + 56))(v34, 1, 1);
    return sub_1B64CC0A8(v14, v32, v38);
  }

  return (*(v30 + 32))(v38, v20, v15);
}

uint64_t sub_1B64C83E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v98 - v8;
  v10 = sub_1B67D877C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v101 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v98 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v98 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v98 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v98 - v23;
  v102 = *a1;
  v25 = *(a1 + 8);
  v26 = a2;
  v28 = v27;
  v30 = v29;
  sub_1B6415FF0(v26, v9, &unk_1EB94A100, &qword_1B680FD50);
  if ((*(v30 + 48))(v9, 1, v28) != 1)
  {
    (*(v30 + 32))(v24, v9, v28);
    if (v25)
    {
      if (v102 == 0.0)
      {
        v76 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
        v77 = sub_1B67D8A7C();
        v78 = sub_1B67D9C9C();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = v24;
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *v80 = 136446210;
          v105 = 0;
          v106 = 0xE000000000000000;
          v107 = v81;
          v103 = 0;
          v31 = 1;
          v104 = 1;
          sub_1B67DA01C();
          v82 = sub_1B6456540(v105, v106, &v107);

          *(v80 + 4) = v82;
          _os_log_impl(&dword_1B63EF000, v77, v78, "should refresh inventory due to policy=%{public}s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v81);
          MEMORY[0x1B8C96DF0](v81, -1, -1);
          MEMORY[0x1B8C96DF0](v80, -1, -1);

          (*(v30 + 8))(v79, v28);
          return v31;
        }

        (*(v30 + 8))(v24, v28);
        return 1;
      }

      sub_1B67D872C();
      v34 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x80));
      v35 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
      v36 = *(v30 + 16);
      if (v34 > fabs(v33))
      {
        v37 = v19;
        v36(v19, v24, v28);
        v38 = v3;
        v39 = sub_1B67D8A7C();
        v40 = sub_1B67D9C9C();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 136446722;
          v105 = 0;
          v106 = 0xE000000000000000;
          v107 = v42;
          v103 = 1;
          v104 = 1;
          sub_1B67DA01C();
          v43 = sub_1B6456540(v105, v106, &v107);

          *(v41 + 4) = v43;
          *(v41 + 12) = 2082;
          sub_1B645C75C(&qword_1EDB1EF98);
          v44 = sub_1B67DA28C();
          v46 = v45;
          v100 = v24;
          v47 = *(v30 + 8);
          v47(v37, v28);
          v48 = sub_1B6456540(v44, v46, &v107);

          *(v41 + 14) = v48;
          *(v41 + 22) = 2050;
          *(v41 + 24) = v34;
          _os_log_impl(&dword_1B63EF000, v39, v40, "should not refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v41, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C96DF0](v42, -1, -1);
          v49 = v41;
LABEL_13:
          MEMORY[0x1B8C96DF0](v49, -1, -1);

          v47(v100, v28);
          return 0;
        }

        goto LABEL_23;
      }

      v16 = v22;
      v36(v22, v24, v28);
      v83 = v3;
      v84 = sub_1B67D8A7C();
      v85 = sub_1B67D9C9C();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = v28;
        v88 = swift_slowAlloc();
        *v86 = 136446722;
        v105 = 0;
        v106 = 0xE000000000000000;
        v107 = v88;
        v31 = 1;
        v103 = 1;
        v104 = 1;
        sub_1B67DA01C();
        v89 = sub_1B6456540(v105, v106, &v107);
        LODWORD(v102) = v85;
        v90 = v89;

        *(v86 + 4) = v90;
        *(v86 + 12) = 2082;
        sub_1B645C75C(&qword_1EDB1EF98);
        v91 = sub_1B67DA28C();
        v93 = v92;
        v100 = v24;
        v94 = *(v30 + 8);
        v94(v16, v87);
        v95 = sub_1B6456540(v91, v93, &v107);

        *(v86 + 14) = v95;
        *(v86 + 22) = 2050;
        *(v86 + 24) = v34;
        _os_log_impl(&dword_1B63EF000, v84, LOBYTE(v102), "should refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v86, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v88, -1, -1);
        MEMORY[0x1B8C96DF0](v86, -1, -1);

        v94(v100, v87);
        return v31;
      }
    }

    else
    {
      v50 = v102;
      sub_1B67D872C();
      v52 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
      v53 = *(v30 + 16);
      if (fabs(v51) < v50)
      {
        v19 = v101;
        v53(v101, v24, v28);
        v39 = sub_1B67D8A7C();
        v54 = sub_1B67D9C9C();
        if (os_log_type_enabled(v39, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v99 = v56;
          *v55 = 136446722;
          v105 = 0;
          v106 = 0xE000000000000000;
          v107 = v56;
          v57 = v102;
          v103 = *&v102;
          v104 = 0;
          sub_1B67DA01C();
          v58 = sub_1B6456540(v105, v106, &v107);

          *(v55 + 4) = v58;
          *(v55 + 12) = 2082;
          sub_1B645C75C(&qword_1EDB1EF98);
          v59 = sub_1B67DA28C();
          v61 = v60;
          v100 = v24;
          v47 = *(v30 + 8);
          v47(v19, v28);
          v62 = sub_1B6456540(v59, v61, &v107);

          *(v55 + 14) = v62;
          *(v55 + 22) = 2050;
          *(v55 + 24) = v57;
          _os_log_impl(&dword_1B63EF000, v39, v54, "should not refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v55, 0x20u);
          v63 = v99;
          swift_arrayDestroy();
          MEMORY[0x1B8C96DF0](v63, -1, -1);
          v49 = v55;
          goto LABEL_13;
        }

LABEL_23:

        v96 = *(v30 + 8);
        v96(v19, v28);
        v96(v24, v28);
        return 0;
      }

      v53(v16, v24, v28);
      v64 = sub_1B67D8A7C();
      v65 = sub_1B67D9C9C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v101 = v67;
        *v66 = 136446722;
        v105 = 0;
        v106 = 0xE000000000000000;
        v107 = v67;
        v68 = v102;
        v103 = *&v102;
        v104 = 0;
        sub_1B67DA01C();
        v69 = sub_1B6456540(v105, v106, &v107);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2082;
        sub_1B645C75C(&qword_1EDB1EF98);
        v70 = sub_1B67DA28C();
        v72 = v71;
        v100 = v24;
        v73 = *(v30 + 8);
        v73(v16, v28);
        v74 = sub_1B6456540(v70, v72, &v107);

        *(v66 + 14) = v74;
        *(v66 + 22) = 2050;
        *(v66 + 24) = v68;
        _os_log_impl(&dword_1B63EF000, v64, v65, "should refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v66, 0x20u);
        v75 = v101;
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v75, -1, -1);
        MEMORY[0x1B8C96DF0](v66, -1, -1);

        v73(v100, v28);
        return 1;
      }
    }

    v97 = *(v30 + 8);
    v97(v16, v28);
    v97(v24, v28);
    return 1;
  }

  sub_1B6418AB4(v9, &unk_1EB94A100, &qword_1B680FD50);
  return 1;
}

void sub_1B64C8FD4(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  v34 = a4;
  v6 = (*MEMORY[0x1E69E7D40] & *a2);
  v7 = v6[10];
  v8 = v6[11];
  v9 = type metadata accessor for FeedItemInventory.Metadata();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v33 = a1;
  v18 = *a1;
  if (v18)
  {
    v19 = v34;
    v20 = v6[18];

    v21 = sub_1B67D8A7C();
    v22 = sub_1B67D9C9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B63EF000, v21, v22, "refresh is already in flight", v23, 2u);
      MEMORY[0x1B8C96DF0](v23, -1, -1);
    }

    *v19 = v18;
  }

  else
  {
    v31 = v6[12];
    v24 = sub_1B67D993C();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v17, &a2[v31], v24);
    (*(v25 + 56))(v17, 0, 1, v24);
    (*(v10 + 16))(v13, v32, v9);
    v26 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    *(v27 + 4) = v7;
    *(v27 + 5) = v8;
    *(v27 + 6) = a2;
    (*(v10 + 32))(&v27[v26], v13, v9);
    v28 = a2;
    v29 = sub_1B64CB48C(0, 0, v17, &unk_1B68168E8, v27);
    sub_1B6418AB4(v17, &unk_1EB94A300, &qword_1B68111C0);
    v30 = v34;
    *v33 = v29;
    *v30 = v29;
  }
}

uint64_t sub_1B64C9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1B64C93E8;

  return sub_1B64C9774(a5);
}

uint64_t sub_1B64C93E8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1B64C95A0;
  }

  else
  {
    v3 = sub_1B64C94FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64C94FC()
{
  v1 = *(*(v0 + 16) + *((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x88));
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B64C95A0()
{
  v1 = *(v0 + 32);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x90);
  v4 = v1;
  v5 = sub_1B67D8A7C();
  v6 = sub_1B67D9C9C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 32);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B63EF000, v5, v6, "failed to refresh inventory, error=%{public}@", v9, 0xCu);
    sub_1B6418AB4(v10, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(*(v0 + 16) + *((*v2 & **(v0 + 16)) + 0x88));
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  *(v13 + 16) = 0;
  os_unfair_lock_unlock((v13 + 24));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B64C9774(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v2[9] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v2[10] = *((v4 & v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B67D9DFC();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for FeedItemInventory.Metadata();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 8);
  v14 = *(AssociatedConformanceWitness + 16);
  v15 = type metadata accessor for FeedItemServiceResult();
  v2[18] = v15;
  v16 = *(v15 - 8);
  v2[19] = v16;
  v17 = *(v16 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64C99D8, 0, 0);
}

uint64_t sub_1B64C99D8()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + 176) = *((*MEMORY[0x1E69E7D40] & **(v0 + 64)) + 0x90);
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B63EF000, v2, v3, "refreshing inventory", v4, 2u);
    MEMORY[0x1B8C96DF0](v4, -1, -1);
  }

  v5 = sub_1B67D8A7C();
  v6 = sub_1B67D9C9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B63EF000, v5, v6, "will acquire write token", v7, 2u);
    MEMORY[0x1B8C96DF0](v7, -1, -1);
  }

  v8 = *(v0 + 64);

  v9 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  *(v0 + 184) = v9;
  v10 = *((*v1 & *v8) + 0x78);
  *(v0 + 192) = *(&v10->super.isa + v8);
  FeedItemDatabase.tokenForCoordinatedWrite()(v10);
  *(v0 + 200) = v11;
  if (v12)
  {

    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 136);
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = v9;
    v21 = sub_1B67D8A7C();
    v22 = sub_1B67D9C9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = [v20 fc_millisecondTimeIntervalUntilNow];

      _os_log_impl(&dword_1B63EF000, v21, v22, "did acquire write token, time=%{public}llums", v23, 0xCu);
      MEMORY[0x1B8C96DF0](v23, -1, -1);
    }

    else
    {

      v21 = v20;
    }

    v24 = *(v0 + 120);
    v25 = *(v0 + 64);
    v41 = *(v0 + 56);
    v42 = *(v0 + 72);

    v26 = swift_allocObject();
    *(v0 + 208) = v26;
    *(v26 + 16) = MEMORY[0x1E69E7CC0];
    v27 = swift_allocObject();
    *(v0 + 216) = v27;
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v0 + 224) = v28;
    *(v28 + 16) = 0;
    v29 = objc_allocWithZone(MEMORY[0x1E695DF00]);
    v30 = v25;

    *(v0 + 232) = [v29 init];
    v31 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x68);
    v32 = *(v24 + 36);
    v33 = swift_allocObject();
    *(v0 + 240) = v33;
    v33[2] = v28;
    v33[3] = v26;
    v33[4] = sub_1B64CE110;
    v33[5] = v27;
    v34 = *(v42 + 24);

    v40 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 248) = v36;
    *v36 = v0;
    v36[1] = sub_1B64C9EC4;
    v37 = *(v0 + 168);
    v39 = *(v0 + 72);
    v38 = *(v0 + 80);

    return (v40)(v37, v41 + v32, sub_1B64CE118, v33, v38, v39);
  }
}

uint64_t sub_1B64C9EC4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_1B64CAC14;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_1B64C9FE0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B64C9FE0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  sub_1B64CBED8(*(v0 + 64), *(v0 + 208));
  FeedItemDatabase.saveFeedContext(_:)(v3->_rawValue);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  if (v6)
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 168);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);

    (*(v12 + 8))(v10, v11);

    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 136);
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 176);
    v21 = *(v0 + 64);
    v22 = *(v0 + 224);

    v23 = v5;
    v24 = sub_1B67D8A7C();
    v25 = sub_1B67D9C9C();
    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    if (v26)
    {
      v29 = swift_slowAlloc();
      *v29 = 134349312;
      swift_beginAccess();
      *(v29 + 4) = *(v28 + 16);

      *(v29 + 12) = 2050;
      *(v29 + 14) = [v27 fc_millisecondTimeIntervalUntilNow];

      _os_log_impl(&dword_1B63EF000, v24, v25, "finished fetching and saving feed items, count=%{public}ld, time=%{public}llums", v29, 0x16u);
      MEMORY[0x1B8C96DF0](v29, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 64) + *(v0 + 176);
    v31 = sub_1B67D8A7C();
    v32 = sub_1B67D9C9C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B63EF000, v31, v32, "will score feed items", v33, 2u);
      MEMORY[0x1B8C96DF0](v33, -1, -1);
    }

    v34 = *(v0 + 64);

    *(v0 + 264) = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v35 = (v34 + *((*MEMORY[0x1E69E7D40] & *v34) + 0x70));
    v36 = v35[3];
    v37 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v38 = *(v37 + 8);
    v42 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    *(v0 + 272) = v40;
    *v40 = v0;
    v40[1] = sub_1B64CA3B4;
    v41 = *(v0 + 192);

    return v42(v41, 11, v36, v37);
  }
}

uint64_t sub_1B64CA3B4()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1B64CACEC;
  }

  else
  {
    v3 = sub_1B64CA4C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64CA4C8()
{
  v73 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 64);
  v3 = *(v0 + 264);
  v4 = sub_1B67D8A7C();
  v5 = sub_1B67D9C9C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 264);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = [v7 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v4, v5, "successfully scored feed items, time=%{public}llums", v8, 0xCu);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
  }

  else
  {
  }

  v68 = *(v0 + 192);
  v70 = *(v0 + 280);
  v9 = *(v0 + 168);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);
  v16 = *(v0 + 88);
  v66 = *(v0 + 80);
  v17 = *(v0 + 72);
  sub_1B67D876C();
  v18 = sub_1B67D877C();
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  (*(v14 + 16))(v15, v9 + *(v11 + 44), v16);
  sub_1B64CC0A8(v13, v15, v10);
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  FeedItemDatabase.saveSidecar<A>(_:)(v10, v12, WitnessTable, v20);
  if (v70)
  {
    v21 = *(v0 + 176);
    v22 = *(v0 + 64);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v23 = v70;
    v24 = sub_1B67D8A7C();
    v25 = sub_1B67D9C8C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v70;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1B63EF000, v24, v25, "failed to save metadata, error=%{public}@", v26, 0xCu);
      sub_1B6418AB4(v27, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v27, -1, -1);
      MEMORY[0x1B8C96DF0](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 64);
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v32 = sub_1B67D8A7C();
  v33 = sub_1B67D9C9C();
  v34 = os_log_type_enabled(v32, v33);
  v36 = *(v0 + 152);
  v35 = *(v0 + 160);
  v37 = *(v0 + 144);
  if (v34)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v72 = v39;
    *v38 = 136446210;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0xE000000000000000;
    v40 = *(v37 + 52);
    type metadata accessor for FeedItemPruningPolicy(0);
    sub_1B67DA01C();
    v41 = *(v0 + 40);
    v42 = *(v0 + 48);
    v71 = *(v36 + 8);
    v71(v35, v37);
    v43 = sub_1B6456540(v41, v42, &v72);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_1B63EF000, v32, v33, "will prune feed items, policy=%{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1B8C96DF0](v39, -1, -1);
    MEMORY[0x1B8C96DF0](v38, -1, -1);
  }

  else
  {

    v71 = *(v36 + 8);
    v71(v35, v37);
  }

  v44 = *(v0 + 192);
  FeedItemDatabase.prune(policy:)(*(v0 + 168) + *(*(v0 + 144) + 52));
  v45 = *(v0 + 176);
  v46 = *(v0 + 64);
  v47 = sub_1B67D8A7C();
  v48 = sub_1B67D9C9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1B63EF000, v47, v48, "did prune feed items", v49, 2u);
    MEMORY[0x1B8C96DF0](v49, -1, -1);
  }

  v50 = *(v0 + 64) + *(v0 + 176);
  v51 = sub_1B67D8A7C();
  v52 = sub_1B67D9C9C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1B63EF000, v51, v52, "finished refreshing inventory", v53, 2u);
    MEMORY[0x1B8C96DF0](v53, -1, -1);
  }

  v54 = *(v0 + 224);
  v55 = *(v0 + 232);
  v57 = *(v0 + 208);
  v56 = *(v0 + 216);
  v58 = *(v0 + 200);
  v59 = *(v0 + 168);
  v61 = *(v0 + 144);
  v60 = *(v0 + 152);
  v64 = *(v0 + 160);
  v65 = *(v0 + 136);
  v67 = *(v0 + 112);
  v69 = *(v0 + 104);

  v71(v59, v61);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1B64CAC14()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);

  v7 = *(v0 + 256);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 136);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1B64CACEC()
{
  v67 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 176);
  v3 = *(v0 + 64);

  v4 = v1;
  v5 = sub_1B67D8A7C();
  v6 = sub_1B67D9C9C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 280);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B63EF000, v5, v6, "failed to score feed items, error=%{public}@", v9, 0xCu);
    sub_1B6418AB4(v10, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 168);
  v14 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  v20 = *(v0 + 88);
  v62 = *(v0 + 80);
  v64 = *(v0 + 192);
  v21 = *(v0 + 72);
  sub_1B67D876C();
  v22 = sub_1B67D877C();
  (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  (*(v18 + 16))(v19, v13 + *(v15 + 44), v20);
  sub_1B64CC0A8(v17, v19, v14);
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  FeedItemDatabase.saveSidecar<A>(_:)(v14, v16, WitnessTable, v24);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v25 = *(v0 + 176);
  v26 = *(v0 + 64);
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v27 = sub_1B67D8A7C();
  v28 = sub_1B67D9C9C();
  v29 = os_log_type_enabled(v27, v28);
  v31 = *(v0 + 152);
  v30 = *(v0 + 160);
  v32 = *(v0 + 144);
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v66 = v34;
    *v33 = 136446210;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0xE000000000000000;
    v35 = *(v32 + 52);
    type metadata accessor for FeedItemPruningPolicy(0);
    sub_1B67DA01C();
    v36 = *(v0 + 40);
    v37 = *(v0 + 48);
    v65 = *(v31 + 8);
    v65(v30, v32);
    v38 = sub_1B6456540(v36, v37, &v66);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1B63EF000, v27, v28, "will prune feed items, policy=%{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1B8C96DF0](v34, -1, -1);
    MEMORY[0x1B8C96DF0](v33, -1, -1);
  }

  else
  {

    v65 = *(v31 + 8);
    v65(v30, v32);
  }

  v39 = *(v0 + 192);
  FeedItemDatabase.prune(policy:)(*(v0 + 168) + *(*(v0 + 144) + 52));
  v40 = *(v0 + 176);
  v41 = *(v0 + 64);
  v42 = sub_1B67D8A7C();
  v43 = sub_1B67D9C9C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1B63EF000, v42, v43, "did prune feed items", v44, 2u);
    MEMORY[0x1B8C96DF0](v44, -1, -1);
  }

  v45 = *(v0 + 64) + *(v0 + 176);
  v46 = sub_1B67D8A7C();
  v47 = sub_1B67D9C9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1B63EF000, v46, v47, "finished refreshing inventory", v48, 2u);
    MEMORY[0x1B8C96DF0](v48, -1, -1);
  }

  v49 = *(v0 + 224);
  v50 = *(v0 + 232);
  v52 = *(v0 + 208);
  v51 = *(v0 + 216);
  v53 = *(v0 + 200);
  v54 = *(v0 + 168);
  v56 = *(v0 + 144);
  v55 = *(v0 + 152);
  v59 = *(v0 + 160);
  v60 = *(v0 + 136);
  v61 = *(v0 + 112);
  v63 = *(v0 + 104);

  v65(v54, v56);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1B64CB48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1B6415FF0(a3, v24 - v10, &unk_1EB94A300, &qword_1B68111C0);
  v12 = sub_1B67D993C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B6418AB4(v11, &unk_1EB94A300, &qword_1B68111C0);
  }

  else
  {
    sub_1B67D992C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B67D989C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B67D965C() + 32;

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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t FeedItemInventory.lastRefreshDate.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v6 = type metadata accessor for FeedItemInventory.Metadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  result = sub_1B64C7F50(v12 - v9);
  if (!v2)
  {
    sub_1B6415FF0(v10, a1, &unk_1EB94A100, &qword_1B680FD50);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1B64CB890()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0[2] + *((*MEMORY[0x1E69E7D40] & *v0[2]) + 0x88));
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v0[3] = v3;

  os_unfair_lock_unlock((v2 + 24));
  v4 = v0[2];
  if (v3)
  {
    v0[4] = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v0[5] = *((*v1 & *v4) + 0x90);
    v5 = sub_1B67D8A7C();
    v6 = sub_1B67D9C9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B63EF000, v5, v6, "will wait for pending refresh before trying to acquire read token", v7, 2u);
      MEMORY[0x1B8C96DF0](v7, -1, -1);
    }

    v8 = *(MEMORY[0x1E69E86A8] + 4);
    v9 = swift_task_alloc();
    v0[6] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    *v9 = v0;
    v9[1] = sub_1B64CBAD4;
    v11 = MEMORY[0x1E69E7288];
    v12 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v10, v3, v12, v10, v11);
  }

  else
  {
    v13 = *((*v1 & *v4) + 0x78);
    v14 = *(&v13->super.isa + v4);
    FeedItemDatabase.tokenForCoordinatedRead()(v13);
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1B64CBAD4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    v3 = sub_1B64CBD68;
  }

  else
  {
    v3 = sub_1B64CBBF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64CBBF0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = sub_1B67D8A7C();
  v6 = sub_1B67D9C9C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  if (v7)
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = [v9 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v5, v6, "did wait for pending refresh before trying to acquire read token, time=%{public}llums", v10, 0xCu);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 16);
  v12 = *(&v11->super.isa + *((*MEMORY[0x1E69E7D40] & v11->super.isa) + 0x78));
  FeedItemDatabase.tokenForCoordinatedRead()(v11);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1B64CBD68()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = sub_1B67D8A7C();
  v5 = sub_1B67D9C9C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = [v8 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v4, v5, "did wait for pending refresh before trying to acquire read token, time=%{public}llums", v9, 0xCu);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 16);
  v11 = *(&v10->super.isa + *((*MEMORY[0x1E69E7D40] & v10->super.isa) + 0x78));
  FeedItemDatabase.tokenForCoordinatedRead()(v10);
  v12 = *(v0 + 8);

  return v12();
}

void sub_1B64CBED8(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x78));
  swift_beginAccess();
  v6 = *(a2 + 16);

  FeedItemDatabase.saveFeedItems(_:)(v7);

  if (v8)
  {
    v9 = *((*v4 & *a1) + 0x90);
    v10 = v8;
    v11 = sub_1B67D8A7C();
    v12 = sub_1B67D9C8C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1B63EF000, v11, v12, "failed to save feed items, error=%{public}@", v13, 0xCu);
      sub_1B6418AB4(v14, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v14, -1, -1);
      MEMORY[0x1B8C96DF0](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v17 = *(a2 + 16);
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B64CC0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B6404758(a1, a3);
  v5 = *(type metadata accessor for FeedItemInventory.Metadata() + 36);
  swift_getAssociatedTypeWitness();
  v6 = sub_1B67D9DFC();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

id FeedItemInventory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void FeedItemInventory.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1B64CD2C4();
}

void sub_1B64CC1DC(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1B64CD2C4();
}

id FeedItemInventory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B64CC254(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v6 = sub_1B67D993C();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x68)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x70)]);
  v7 = *&a1[*((*v3 & *a1) + 0x78)];

  v8 = *&a1[*((*v3 & *a1) + 0x88)];

  v9 = *((*v3 & *a1) + 0x90);
  v10 = sub_1B67D8A9C();
  v11 = *(*(v10 - 8) + 8);

  return v11(&a1[v9], v10);
}

uint64_t sub_1B64CC408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726665527473616CLL && a2 == 0xEB00000000687365;
  if (v4 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F73727563 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B64CC4D4(char a1)
{
  if (a1)
  {
    return 0x726F73727563;
  }

  else
  {
    return 0x726665527473616CLL;
  }
}

uint64_t sub_1B64CC558(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B642694C;

  return FeedItemInventory.refreshIfNeeded(policy:)(a1);
}