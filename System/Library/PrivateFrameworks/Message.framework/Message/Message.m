uint64_t sub_1B038C248(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1B038C2A8()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v10 = *(v0 + v9);
    if (!(v10 >> 62))
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
      {

        RestartableTimer.stop()();
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1B0E46138();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = static MonotonicTime.now()();
  result = sub_1B038C460(v12);
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B03E9BB4();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B038C460(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v7 = *(v1 + v7);
      v10 = v7 >> 62 ? sub_1B0E46138() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {
          goto LABEL_21;
        }

        if ((v7 & 0xC000000000000001) == 0)
        {
          break;
        }

        v1 = MEMORY[0x1B2728410](i, v7);
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:

          return 1;
        }

LABEL_12:
        (*(*v1 + 304))();
        if (swift_getEnumCaseMultiPayload() == 2)
        {

          sub_1B038C824(v6, type metadata accessor for ConnectionState);
          return 0;
        }

        v13 = sub_1B038C824(v6, type metadata accessor for ConnectionState);
        v14 = (*(*v1 + 440))(v13);

        if (v14 <= a1)
        {
          v12 = a1 - v14;
          if (__OFSUB__(a1, v14))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (__OFSUB__(v14, a1))
          {
            goto LABEL_27;
          }

          v12 = a1 - v14;
          if (__OFSUB__(0, v14 - a1))
          {
            goto LABEL_29;
          }
        }

        if (v12 / 1000000000.0 < 60.0)
        {

          return 0;
        }
      }

      if (i < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_1B0E46138();
      if (!result)
      {
        return result;
      }
    }

    v1 = *(v7 + 8 * i + 32);

    if (__OFADD__(i, 1))
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B038C704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038C764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038C7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038C824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CommandConnection.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  return sub_1B038C9A4(v1 + v3, a1, type metadata accessor for ConnectionState);
}

uint64_t sub_1B038C908(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t type metadata accessor for ConnectionState()
{
  result = qword_1EB6DCEF0;
  if (!qword_1EB6DCEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B038C9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B038CA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B038CA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__uint64_t static MonotonicTime.now()()
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s6LoggerVMa_0()
{
  result = qword_1EB6DCF80;
  if (!qword_1EB6DCF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B038CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B038CBB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B038CC24()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B038CC7C();
  }

  return result;
}

uint64_t sub_1B038CC7C()
{
  v1 = _s6LoggerVMa_0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConnectionState();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v0 + v15, v14, type metadata accessor for ConnectionState);
  sub_1B038C9A4(v14, v12, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1B038D690(v12, type metadata accessor for ConnectionState);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038D690(v14, type metadata accessor for ConnectionState);
    v17 = v12;
    return sub_1B038D690(v17, type metadata accessor for ConnectionState);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v17 = v14;
    return sub_1B038D690(v17, type metadata accessor for ConnectionState);
  }

LABEL_6:
  sub_1B038CB4C(v14, v9, type metadata accessor for ConnectionState);
  v18 = swift_getEnumCaseMultiPayload();
  result = sub_1B038D690(v9, type metadata accessor for ConnectionState);
  if (v18 == 5)
  {
    return result;
  }

  v20 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  sub_1B038C9A4(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v4, _s6LoggerVMa_0);
  v23 = v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
  result = swift_beginAccess();
  if (!*(v23 + 40))
  {
    __break(1u);
    return result;
  }

  v24 = static MonotonicTime.now()();
  v25 = *(v23 + 8);
  v27 = *(v23 + 16);
  v26 = *(v23 + 24);
  if (!*(v23 + 32))
  {
    *&v36 = *v23;
    *(&v36 + 1) = v25;
    LOBYTE(v37) = v27 & 1;
    *(&v37 + 1) = v26;
    if ((sub_1B0C095D8(v21, v22, v24) & 1) == 0)
    {
      sub_1B0BE1334();
    }

    v33 = v37;
    v34 = *(&v37 + 1);
    *v23 = v36;
    *(v23 + 16) = v33;
    *(v23 + 24) = v34;
    *(v23 + 32) = 0;
    if (v33)
    {
      goto LABEL_13;
    }

LABEL_19:
    v35 = *(v23 + 40);
    RestartableTimer.start()();
    goto LABEL_20;
  }

  if (*(v23 + 32) == 1)
  {
    *&v36 = *v23;
    BYTE8(v36) = v25 & 1;
    *&v37 = v27;
    *(&v37 + 1) = v26;
    v28 = MEMORY[0x1EEE9AC00](v24);
    *(&v36 - 2) = sub_1B038DCC8;
    *(&v36 - 1) = v0;
    MEMORY[0x1EEE9AC00](v28);
    *(&v36 - 2) = sub_1B0BE2B90;
    *(&v36 - 1) = v0;
    if ((sub_1B038D750(v21, v22, sub_1B038DCC0, v29, sub_1B0BE2B98, (&v36 - 2), v30, v4) & 1) == 0)
    {
      sub_1B0BE0B70();
    }

    v31 = BYTE8(v36);
    *v23 = v36;
    *(v23 + 8) = v31;
    *(v23 + 16) = v37;
    *(v23 + 32) = 1;
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  v32 = *(v23 + 40);
  RestartableTimer.stop()();
LABEL_20:
  sub_1B038D690(v4, _s6LoggerVMa_0);
  return swift_endAccess();
}

uint64_t sub_1B038D0D8()
{
  v0 = type metadata accessor for ConnectionState();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = static MonotonicTime.now()();
    v12 = *(v10 + 24);
    *v8 = v12;
    (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
    v13 = v12;
    LOBYTE(v12) = sub_1B0E44488();
    result = (*(v5 + 8))(v8, v4);
    if (v12)
    {
      v14 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
      swift_beginAccess();
      sub_1B038C9A4(v10 + v14, v3, type metadata accessor for ConnectionState);
      LOBYTE(v14) = ConnectionState.isClosedOrCancelled.getter();
      sub_1B038D690(v3, type metadata accessor for ConnectionState);
      if ((v14 & 1) == 0)
      {
        sub_1B0BE2170();
        sub_1B0BDFC1C(v11);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

BOOL ConnectionState.isClosedOrCancelled.getter()
{
  v1 = type metadata accessor for ConnectionState();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  sub_1B038CA0C(v0, &v11 - v6, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1B038C704(v7, type metadata accessor for ConnectionState);
    goto LABEL_5;
  }

  v9 = 1;
  if (EnumCaseMultiPayload == 3)
  {
LABEL_6:
    sub_1B038C704(v7, type metadata accessor for ConnectionState);
    return v9;
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_5:
    sub_1B038CA0C(v0, v5, type metadata accessor for ConnectionState);
    v9 = swift_getEnumCaseMultiPayload() == 5;
    v7 = v5;
    goto LABEL_6;
  }

  return v9;
}

uint64_t type metadata accessor for UnauthenticatedStateWithTasks()
{
  result = qword_1EB6DCDC0;
  if (!qword_1EB6DCDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B038D4B0(uint64_t a1, int a2)
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

uint64_t sub_1B038D4F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5490, &unk_1B0ED0480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall RestartableTimer.start()()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 32);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1B0E44488();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + 24) == 1)
    {
      v8 = *(v0 + 16);
      swift_getObjectType();
      sub_1B0E45AA8();
      *(v0 + 24) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B038D690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038D6F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B038D750(uint64_t a1, char a2, void *(*a3)(void *__return_ptr), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a8;
  v68 = a6;
  v14 = a2 & 1;
  v15 = _s6LoggerVMa_0();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v65 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = MEMORY[0x1EEE9AC00](v23);
  *v8 = a1;
  *(v8 + 8) = v14;
  if (a2)
  {
    return 1;
  }

  v28 = v26;
  v29 = &v65 - v25;
  v66 = v24;
  result = a3(v70);
  if (v70[1])
  {
    v22 = v70[0];
    v30 = v71;
    if (v71 <= a7)
    {
LABEL_15:
      v31 = a7 - v30;
      if (!__OFSUB__(a7, v30))
      {
LABEL_16:
        v33 = v31 / 1000000000.0;
        v34 = *(v8 + 24);
        if (v34 < v33)
        {
          sub_1B038D4F8(v70);
          return 0;
        }

        v35 = *(v8 + 16);
        if (v35 <= a7)
        {
          v36 = a7 - v35;
          if (!__OFSUB__(a7, v35))
          {
LABEL_26:
            if (v36 / 1000000000.0 <= 25.0)
            {
              sub_1B038D4F8(v70);
              return 1;
            }

            *(v8 + 16) = a7;
            v48 = v67;
            v49 = v29;
            sub_1B041C97C(v67, v29);
            v50 = v28;
            sub_1B041C97C(v48, v28);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v51 = sub_1B0E43988();
            v52 = sub_1B0E458D8();
            sub_1B038D4F8(v70);
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v69 = v54;
              *v53 = 68158978;
              *(v53 + 4) = 2;
              *(v53 + 8) = 256;
              v55 = v66;
              v56 = *(v50 + *(v66 + 20));
              sub_1B041C9E0(v50);
              *(v53 + 10) = v56;
              *(v53 + 11) = 2082;
              v57 = *(v49 + *(v55 + 20) + 4);
              sub_1B041C9E0(v49);
              v58 = ConnectionID.debugDescription.getter(v57);
              v60 = sub_1B0399D64(v58, v59, &v69);

              *(v53 + 13) = v60;
              *(v53 + 21) = 2082;
              sub_1B038D4F8(v70);
              v61 = Tag.debugDescription.getter(v22 & 0xFFFFFFFF000000FFLL);
              v63 = sub_1B0399D64(v61, v62, &v69);

              *(v53 + 23) = v63;
              *(v53 + 31) = 2048;
              *(v53 + 33) = v33;
              *(v53 + 41) = 2048;
              *(v53 + 43) = v34;
              _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx-%{public}s] %{public}s IDLE is %f seconds old (< %f). Not refreshing.", v53, 0x33u);
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v54, -1, -1);
              MEMORY[0x1B272C230](v53, -1, -1);

              return 1;
            }

            sub_1B041C9E0(v28);
            sub_1B038D4F8(v70);

            v64 = v49;
            goto LABEL_34;
          }

          goto LABEL_38;
        }

        if (!__OFSUB__(v35, a7))
        {
          v36 = a7 - v35;
          if (!__OFSUB__(0, v35 - a7))
          {
            goto LABEL_26;
          }

          __break(1u);
LABEL_23:
          v37 = v67;
          sub_1B041C97C(v67, v22);
          sub_1B041C97C(v37, v19);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v38 = sub_1B0E43988();
          v39 = sub_1B0E458D8();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v69 = v41;
            *v40 = 68158210;
            *(v40 + 4) = 2;
            *(v40 + 8) = 256;
            v42 = v66;
            v43 = v19[*(v66 + 20)];
            sub_1B041C9E0(v19);
            *(v40 + 10) = v43;
            *(v40 + 11) = 2082;
            v44 = *(v22 + *(v42 + 20) + 4);
            sub_1B041C9E0(v22);
            v45 = ConnectionID.debugDescription.getter(v44);
            v47 = sub_1B0399D64(v45, v46, &v69);

            *(v40 + 13) = v47;
            _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx-%{public}s] Not sending IDLE. No mailbox selected.", v40, 0x15u);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x1B272C230](v41, -1, -1);
            MEMORY[0x1B272C230](v40, -1, -1);

            return 1;
          }

          sub_1B041C9E0(v19);

          v64 = v22;
LABEL_34:
          sub_1B041C9E0(v64);
          return 1;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (__OFSUB__(v71, a7))
    {
      __break(1u);
      goto LABEL_36;
    }

    v31 = a7 - v71;
    if (!__OFSUB__(0, v71 - a7))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  result = a5(result);
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v32 = a7 - a1;
  if (a7 < a1)
  {
    if (__OFSUB__(a1, a7))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v32 = a7 - a1;
    if (!__OFSUB__(0, a1 - a7))
    {
      return v32 / 1000000000.0 <= 0.8;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (!__OFSUB__(a7, a1))
  {
    return v32 / 1000000000.0 <= 0.8;
  }

LABEL_40:
  __break(1u);
  return result;
}

double sub_1B038DCD0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1B038DD1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C27108(v7, v10);

  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v9;
  *(a2 + 32) = v11;
  return result;
}

char *sub_1B038DDA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t get_enum_tag_for_layout_string_13IMAP2Behavior6UpdateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1B038DED0()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039F32C(v10);
  result = swift_endAccess();
  v11 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates;
  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates))
  {
    return result;
  }

  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates) = 1;
  sub_1B038E158();
  sub_1B038F468();
  sub_1B038F66C();
  swift_beginAccess();
  v12 = StateWithTasks.environment.getter();
  result = swift_endAccess();
  if ((v12 & 0x100) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
    {
      v13 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);

      RestartableTimer.start()();

      if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
      {
        v14 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);

        sub_1B03C86BC();
      }

      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry;
  swift_beginAccess();
  if (*(v15 + 16))
  {
    swift_beginAccess();
    v16 = StateWithTasks.appState.getter();
    v17 = StateWithTasks.runningSyncRequests.getter();
    swift_endAccess();
    sub_1B03CEA90(v16 & 1, v17, v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger);
    swift_endAccess();
  }

  else
  {
    result = swift_endAccess();
  }

  *(v1 + v11) = 0;
  return result;
}

uint64_t sub_1B038E158()
{
  v1 = sub_1B0C46FC8();
  v2 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  v3 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v5 = sub_1B038F0C4(v4, v1), , , (v5 & 1) == 0) && *(v0 + v2))
  {

    sub_1B0C4CF04(v1);
  }

  else
  {
  }
}

uint64_t RunningSyncRequests.kinds.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B038E278(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B038E278(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1B04009C8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 56) + 32 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1B04009C8((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1B0425168(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B038E498(uint64_t a1, char a2)
{
  v78 = *(a1 + 16);
  if (!v78)
  {
    v3 = MEMORY[0x1E69E7CD0];
LABEL_99:
    if (a2)
    {
      v67 = *(v3 + 40);
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v68 = sub_1B0E46CB8();
      v69 = -1 << *(v3 + 32);
      v70 = v68 & ~v69;
      if ((*(v3 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
      {
        v71 = ~v69;
        while (1)
        {
          v72 = *(*(v3 + 48) + v70);
          if (v72 <= 2 && v72 != 1 && v72 != 2)
          {
            break;
          }

          v73 = sub_1B0E46A78();

          if (v73)
          {
            return v3;
          }

          v70 = (v70 + 1) & v71;
          if (((*(v3 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
          {
            goto LABEL_107;
          }
        }
      }

      else
      {
LABEL_107:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B0C49FDC(0, v70, isUniquelyReferenced_nonNull_native);
      }
    }

    return v3;
  }

  v2 = 0;
  v77 = a1 + 32;
  v3 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v7 = *(v77 + v2);
    if (v7 == 2)
    {
      break;
    }

    if (v7 == 3)
    {
      v15 = *(v3 + 40);
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v16 = sub_1B0E46CB8();
      v17 = -1 << *(v3 + 32);
      v18 = v16 & ~v17;
      if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
LABEL_24:
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v3 + 16);
        if (*(v3 + 24) > v23)
        {
          if ((v22 & 1) == 0)
          {
            sub_1B0C4A328();
          }
        }

        else
        {
          if (v22)
          {
            sub_1B0C49CF8(v23 + 1);
          }

          else
          {
            sub_1B0C4A468(v23 + 1);
          }

          v41 = *(v3 + 40);
          sub_1B0E46C28();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v42 = sub_1B0E46CB8();
          v43 = -1 << *(v3 + 32);
          v18 = v42 & ~v43;
          if ((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v44 = ~v43;
            do
            {
              v45 = *(*(v3 + 48) + v18);
              if (v45 >= 4)
              {
                goto LABEL_113;
              }

              v46 = sub_1B0E46A78();

              if (v46)
              {
                goto LABEL_114;
              }

              v18 = (v18 + 1) & v44;
            }

            while (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
          }
        }

        *(v3 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v18;
        *(*(v3 + 48) + v18) = 4;
        v4 = *(v3 + 16);
        v5 = __OFADD__(v4, 1);
        v6 = v4 + 1;
        if (v5)
        {
          goto LABEL_110;
        }

        goto LABEL_6;
      }

      v19 = ~v17;
      while (1)
      {
        v20 = *(*(v3 + 48) + v18);
        if (v20 >= 4)
        {
          break;
        }

        v21 = sub_1B0E46A78();

        if (v21)
        {
          goto LABEL_7;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_97:

      goto LABEL_7;
    }

    if (v7 == 4)
    {
      goto LABEL_7;
    }

    v8 = *(v3 + 40);
    v9 = v3 + 56;
    if (v7)
    {
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v10 = sub_1B0E46CB8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = v10 & v11; ((*(v9 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v11)
      {
        v13 = *(*(v3 + 48) + i);
        if (v13 > 1 && v13 != 3 && v13 != 4)
        {
          goto LABEL_97;
        }

        v14 = sub_1B0E46A78();

        if (v14)
        {
          goto LABEL_7;
        }
      }

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v3 + 16);
      if (*(v3 + 24) <= v38)
      {
        if (v37)
        {
          sub_1B0C49CF8(v38 + 1);
        }

        else
        {
          sub_1B0C4A468(v38 + 1);
        }

        v54 = *(v3 + 40);
        sub_1B0E46C28();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v55 = sub_1B0E46CB8();
        v56 = -1 << *(v3 + 32);
        i = v55 & ~v56;
        if ((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i))
        {
          v57 = ~v56;
          do
          {
            v58 = *(*(v3 + 48) + i);
            if (v58 > 1 && v58 != 3 && v58 != 4)
            {
              goto LABEL_113;
            }

            v59 = sub_1B0E46A78();

            if (v59)
            {
              goto LABEL_114;
            }

            i = (i + 1) & v57;
          }

          while (((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0);
        }
      }

      else if ((v37 & 1) == 0)
      {
        sub_1B0C4A328();
      }

      *(v3 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
      *(*(v3 + 48) + i) = 2;
      v60 = *(v3 + 16);
      v5 = __OFADD__(v60, 1);
      v6 = v60 + 1;
      if (v5)
      {
        goto LABEL_112;
      }
    }

    else
    {
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v33 = sub_1B0E46CB8();
      v34 = ~(-1 << *(v3 + 32));
      for (j = v33 & v34; ((*(v9 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) != 0; j = (j + 1) & v34)
      {
        if (*(*(v3 + 48) + j) <= 2u && *(*(v3 + 48) + j) && *(*(v3 + 48) + j) != 2)
        {
          goto LABEL_97;
        }

        v36 = sub_1B0E46A78();

        if (v36)
        {
          goto LABEL_7;
        }
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v3 + 16);
      if (*(v3 + 24) <= v40)
      {
        if (v39)
        {
          sub_1B0C49CF8(v40 + 1);
        }

        else
        {
          sub_1B0C4A468(v40 + 1);
        }

        v61 = *(v3 + 40);
        sub_1B0E46C28();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v62 = sub_1B0E46CB8();
        v63 = -1 << *(v3 + 32);
        j = v62 & ~v63;
        if ((*(v3 + 56 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j))
        {
          v64 = ~v63;
          while (*(*(v3 + 48) + j) > 2u || !*(*(v3 + 48) + j) || *(*(v3 + 48) + j) == 2)
          {
            v65 = sub_1B0E46A78();

            if (v65)
            {
              goto LABEL_114;
            }

            j = (j + 1) & v64;
            if (((*(v3 + 56 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_113;
        }
      }

      else if ((v39 & 1) == 0)
      {
        sub_1B0C4A328();
      }

LABEL_94:
      *(v3 + ((j >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << j;
      *(*(v3 + 48) + j) = 1;
      v66 = *(v3 + 16);
      v5 = __OFADD__(v66, 1);
      v6 = v66 + 1;
      if (v5)
      {
        goto LABEL_111;
      }
    }

LABEL_6:
    *(v3 + 16) = v6;
LABEL_7:
    if (++v2 == v78)
    {
      goto LABEL_99;
    }
  }

  v24 = *(v3 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v25 = sub_1B0E46CB8();
  v26 = -1 << *(v3 + 32);
  v27 = v25 & ~v26;
  if ((*(v3 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
  {
    v28 = ~v26;
    do
    {
      v29 = *(*(v3 + 48) + v27);
      if (v29 > 2 && v29 != 4)
      {
        goto LABEL_97;
      }

      v30 = sub_1B0E46A78();

      if (v30)
      {
        goto LABEL_7;
      }

      v27 = (v27 + 1) & v28;
    }

    while (((*(v3 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
  }

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v3 + 16);
  if (*(v3 + 24) > v32)
  {
    if ((v31 & 1) == 0)
    {
      sub_1B0C4A328();
    }

LABEL_65:
    *(v3 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v27;
    *(*(v3 + 48) + v27) = 3;
    v53 = *(v3 + 16);
    v5 = __OFADD__(v53, 1);
    v6 = v53 + 1;
    if (v5)
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    goto LABEL_6;
  }

  if (v31)
  {
    sub_1B0C49CF8(v32 + 1);
  }

  else
  {
    sub_1B0C4A468(v32 + 1);
  }

  v47 = *(v3 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v48 = sub_1B0E46CB8();
  v49 = -1 << *(v3 + 32);
  v27 = v48 & ~v49;
  if (((*(v3 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
    goto LABEL_65;
  }

  v50 = ~v49;
  while (1)
  {
    v51 = *(*(v3 + 48) + v27);
    if (v51 > 2 && v51 != 4)
    {
      break;
    }

    v52 = sub_1B0E46A78();

    if (v52)
    {
      goto LABEL_114;
    }

    v27 = (v27 + 1) & v50;
    if (((*(v3 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

LABEL_113:

LABEL_114:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

uint64_t sub_1B038F0C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v29 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v30 = v9;
  v31 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    v16 = *(a2 + 40);
    sub_1B0E46C28();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v17 = sub_1B0E46CB8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }

    v32 = v12;
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(a2 + 48) + v19);
      if (v21 <= 1)
      {
        break;
      }

      if (v21 == 2)
      {
        v23 = 0xE800000000000000;
        v22 = 0x6574616E6F646572;
        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = 0x6369646F69726570;
        }

        else
        {
          v22 = 1752397168;
        }

        if (v21 == 3)
        {
          v23 = 0xE800000000000000;
        }

        else
        {
          v23 = 0xE400000000000000;
        }

        if (v15 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_24:
      v24 = 0x6369646F69726570;
      if (v15 != 3)
      {
        v24 = 1752397168;
      }

      v25 = 0xE400000000000000;
      if (v15 == 3)
      {
        v25 = 0xE800000000000000;
      }

      if (v15 == 2)
      {
        v26 = 0x6574616E6F646572;
      }

      else
      {
        v26 = v24;
      }

      if (v15 == 2)
      {
        v27 = 0xE800000000000000;
      }

      else
      {
        v27 = v25;
      }

      if (v22 == v26)
      {
        goto LABEL_49;
      }

LABEL_50:
      v28 = sub_1B0E46A78();

      if (v28)
      {
        goto LABEL_54;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*(a2 + 48) + v19))
    {
      v22 = 0x6C69662D6B636162;
    }

    else
    {
      v22 = 0x72657865646E69;
    }

    if (*(*(a2 + 48) + v19))
    {
      v23 = 0xE90000000000006CLL;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

    if (v15 > 1)
    {
      goto LABEL_24;
    }

LABEL_43:
    if (!v15)
    {
      v27 = 0xE700000000000000;
      if (v22 == 0x72657865646E69)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    v27 = 0xE90000000000006CLL;
    if (v22 != 0x6C69662D6B636162)
    {
      goto LABEL_50;
    }

LABEL_49:
    if (v23 != v27)
    {
      goto LABEL_50;
    }

LABEL_54:
    v9 = v30;
    v3 = v31;
    v8 = v32;
  }

  while (v32);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v29 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_1B038F468()
{
  v1 = type metadata accessor for StateWithTasks();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static MonotonicTime.now()();
  v7 = result;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt;
  v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt);
  v10 = __OFSUB__(result, v9);
  v11 = result - v9;
  if (result >= v9)
  {
LABEL_6:
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v9, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(0, v9 - result);
  v11 = result - v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  if (v11 / 1000000000.0 > 20.0)
  {
    v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v2 + 16))(v5, v0 + v12, v1);
    StateWithTasks.logSyncRequests()();
    result = (*(v2 + 8))(v5, v1);
    *(v0 + v8) = v7;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Protocol9NamespaceVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for RunningTask()
{
  result = qword_1EB6DE030;
  if (!qword_1EB6DE030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B038F66C()
{
  v1 = v0;
  v2 = type metadata accessor for StateWithTasks();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  v6 = *&v0[OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections];
  if (!v6)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates;
  v45 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState;
  v51 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection;
  v52 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;

  swift_beginAccess();
  v8 = *&v1[v7];
  v50 = v7;
  *&v1[v7] = MEMORY[0x1E69E7CC0];
  sub_1B038FD58(v8);
  v9 = v8 + 16;
  v10 = *(v8 + 16);
  if (v10)
  {
    v42 = 0;
    v48 = (v44 + 16);
    v47 = (v44 + 8);
    v41 = v6;
    v43 = v2;
    do
    {
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v12 = *(v8 + 8 * v11 + 32);
        if (v12 >> 62 == 1)
        {
          v13 = v12 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(v13 + 24) == 1 && ((*(v13 + 16) >> 59) & 0x1E | (*(v13 + 16) >> 2) & 1) == 2)
          {
            break;
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_22;
        }
      }

      v14 = v45;
      swift_beginAccess();
      sub_1B0398EFC(&v1[v14], &qword_1EB6E5AB0, &unk_1B0EDC3F0);
      v15 = type metadata accessor for Activity(0);
      (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
      swift_endAccess();
      v16 = *&v1[v46];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v18 = *(v16 + v17);
      if (v18 >> 62)
      {
        if (v18 < 0)
        {
          v29 = *(v16 + v17);
        }

        v19 = sub_1B0E46138();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = v43;
      if (!v19)
      {
        goto LABEL_22;
      }

      if (v19 < 1)
      {
        goto LABEL_55;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      for (i = 0; i != v19; ++i)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1B2728410](i, v18);
        }

        else
        {
          v21 = *(v18 + 8 * i + 32);
        }

        (*(*v21 + 592))();
      }

      v6 = v41;
      v2 = v43;
LABEL_22:
      v22 = *v9;
      v23 = 32;
      while (1)
      {
        if (!v22)
        {
          __break(1u);
          goto LABEL_53;
        }

        v24 = *(v8 + v23);
        if (v24 >> 62 == 1)
        {
          v25 = v24 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(v25 + 24))
          {
            v26 = *(v25 + 16);
            if (((v26 >> 59) & 0x1E | (v26 >> 2) & 1) == 3 && *((v26 & 0xFFFFFFFFFFFFFFBLL) + 0x14) == 1)
            {
              break;
            }
          }
        }

        --v22;
        v23 += 8;
        if (!--v10)
        {
          goto LABEL_30;
        }
      }

      v42 = 1;
LABEL_30:
      sub_1B0C47144(v8);

      sub_1B0C464D4(v8);
      swift_beginAccess();

      StateWithTasks.update(updates:send:persist:)(v8, sub_1B03C7F74, v6, sub_1B0C47F88, v1);
      swift_endAccess();

      if (v1[v51] == 1)
      {
        v27 = v52;
        v1[v51] = 0;
        v28 = v49;
        (*v48)(v49, &v1[v27], v2);
        StateWithTasks.logForDidCreateFirstConnection()();
        (*v47)(v28, v2);
      }

      v8 = *&v1[v50];
      *&v1[v50] = MEMORY[0x1E69E7CC0];
      sub_1B038FD58(v8);
      v9 = v8 + 16;
      v10 = *(v8 + 16);
    }

    while (v10);

    if (v42)
    {
      v30 = static MonotonicTime.now()();
      sub_1B0C4D04C(v30);
    }
  }

  else
  {
  }

  v31 = v52;
  swift_beginAccess();
  v32 = v44;
  v33 = &v1[v31];
  v34 = v49;
  (*(v44 + 16))(v49, v33, v2);
  StateWithTasks.connectionLimitsAndUsage.getter(v53);
  (*(v32 + 8))(v34, v2);
  sub_1B03CC120();
  v35 = v55;
  v57 = v54;
  sub_1B03CE028(&v57);
  v56 = v35;
  sub_1B03CE07C(&v56);
  v36 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v9 = *(v6 + v36);
  if (v9 >> 62)
  {
LABEL_56:
    v37 = sub_1B0E46138();
  }

  else
  {
    v37 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v37)
  {
    goto LABEL_50;
  }

  v38 = 0;
  while ((v9 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1B2728410](v38, v9);
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_49;
    }

LABEL_45:
    (*(*v39 + 584))();

    ++v38;
    if (v40 == v37)
    {
      goto LABEL_50;
    }
  }

  if (v38 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_54;
  }

  v39 = *(v9 + 8 * v38 + 32);

  v40 = v38 + 1;
  if (!__OFADD__(v38, 1))
  {
    goto LABEL_45;
  }

LABEL_49:
  __break(1u);
LABEL_50:
}

void sub_1B038FD58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Engine.Logger(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    if (v17 == v18)
    {
      v23 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
      switch(v19)
      {
        case 3:
          sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v11, type metadata accessor for Engine.Logger);

          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v24 = sub_1B0E43988();
          v30 = sub_1B0E439A8();
          (*(*(v30 - 8) + 8))(v11, v30);
          v26 = sub_1B0E458C8();
          if (os_log_type_enabled(v24, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 68158208;
            *(v27 + 4) = 2;
            *(v27 + 8) = 256;
            *(v27 + 10) = *(v23 + *(v4 + 20));

            *(v27 + 11) = 2048;
            *(v27 + 13) = v17;

            v28 = "[%.*hhx] Processing %ld update(s) from network and persistence";
            goto LABEL_20;
          }

          break;
        case 2:
          sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v14, type metadata accessor for Engine.Logger);

          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v24 = sub_1B0E43988();
          v29 = sub_1B0E439A8();
          (*(*(v29 - 8) + 8))(v14, v29);
          v26 = sub_1B0E458C8();
          if (os_log_type_enabled(v24, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 68158208;
            *(v27 + 4) = 2;
            *(v27 + 8) = 256;
            *(v27 + 10) = *(v23 + *(v4 + 20));

            *(v27 + 11) = 2048;
            *(v27 + 13) = v17;

            v28 = "[%.*hhx] Processing %ld update(s) from persistence";
            goto LABEL_20;
          }

          break;
        case 1:
          sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v16, type metadata accessor for Engine.Logger);

          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v24 = sub_1B0E43988();
          v25 = sub_1B0E439A8();
          (*(*(v25 - 8) + 8))(v16, v25);
          v26 = sub_1B0E458C8();
          if (os_log_type_enabled(v24, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 68158208;
            *(v27 + 4) = 2;
            *(v27 + 8) = 256;
            *(v27 + 10) = *(v23 + *(v4 + 20));

            *(v27 + 11) = 2048;
            *(v27 + 13) = v17;

            v28 = "[%.*hhx] Processing %ld update(s) from network";
LABEL_20:
            _os_log_impl(&dword_1B0389000, v24, v26, v28, v27, 0x15u);
            MEMORY[0x1B272C230](v27, -1, -1);

            return;
          }

          break;
        default:
          sub_1B03903A8(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v8, type metadata accessor for Engine.Logger);

          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v31 = sub_1B0E43988();
          v32 = sub_1B0E439A8();
          (*(*(v32 - 8) + 8))(v8, v32);
          v33 = sub_1B0E458C8();
          if (os_log_type_enabled(v31, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 68158208;
            *(v34 + 4) = 2;
            *(v34 + 8) = 256;
            *(v34 + 10) = *(v23 + *(v4 + 20));

            *(v34 + 11) = 2048;
            *(v34 + 13) = v17;

            _os_log_impl(&dword_1B0389000, v31, v33, "[%.*hhx] Processing %ld update(s)", v34, 0x15u);
            MEMORY[0x1B272C230](v34, -1, -1);

            return;
          }

          goto LABEL_25;
      }

LABEL_25:

      return;
    }

    if (v18 >= v17)
    {
      break;
    }

    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_28;
    }

    v21 = *(a1 + 8 * v18++ + 32) >> 62;
    if (v21 != 2)
    {
      v18 = v20;
      if (v21)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v19 |= v22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1B0390340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03903A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for StateWithTasks()
{
  result = qword_1EB6DDC50;
  if (!qword_1EB6DDC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0390488(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for State.Logger()
{
  result = qword_1EB6DD200;
  if (!qword_1EB6DD200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0390514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0390574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *tracingLog.unsafeMutableAddressor()
{
  if (qword_1EB6DEA98 != -1)
  {
    swift_once();
  }

  return &tracingLog;
}

uint64_t sub_1B0390664(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B0390678(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B03906B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0390720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t tracingSignposter.unsafeMutableAddressor()
{
  if (qword_1EB6DEA80 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E43868();

  return __swift_project_value_buffer(v0, tracingSignposter);
}

void sub_1B03907EC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v100 = a2;
  v90 = a1;
  v89 = type metadata accessor for State.Logger();
  v4 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v98 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 184);
  v7 = *(v2 + 216);
  v111 = *(v2 + 200);
  v112[0] = v7;
  *(v112 + 12) = *(v2 + 228);
  v109 = *(v2 + 168);
  v110 = v6;
  v99 = sub_1B03A47F4();
  memcpy(v108, v2, sizeof(v108));
  v8 = LOBYTE(v108[3]);
  v9 = BYTE1(v108[3]);
  v10 = v108[4];
  v11 = LOBYTE(v108[5]);
  v12 = BYTE2(v108[2]);
  v13 = v108[6];
  v14 = v108[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = sub_1B0397D14();
  v16 = v15;
  v102 = v12;
  if (v10 != 3 && v10 != 2)
  {
    v18 = sub_1B0BAE1A4(v15);
    if ((v9 & 1) == 0)
    {
      if (v10 == 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v19 = 0;
            v97 = 0x100000000;
            v20 = 512;
LABEL_163:
            v96 = v20;
            goto LABEL_19;
          }

LABEL_162:
          v19 = 0;
          v97 = 0;
          v8 = 1;
          v20 = 256;
          goto LABEL_163;
        }
      }

      else if (!v10 && v8)
      {
        if (v8 != 1)
        {
          v8 = 0;
          v96 = 0;
          v97 = 0;
          v19 = 0;
          goto LABEL_19;
        }

        goto LABEL_162;
      }
    }

    v8 = (v18 & 1) == 0;
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0x100000000;
    }

    v22 = 512;
    if (v18)
    {
      v22 = 0;
    }

    v96 = v22;
    v97 = v21;
    v19 = (v18 & 1) == 0;
LABEL_19:
    v23 = sub_1B0397E04(&unk_1F2710548, v14);
    if (v23)
    {
      v24 = v8;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v95) = v24;
    v25 = (v23 & 1) == 0 || v19;
    LODWORD(v94) = v25;
    v26 = sub_1B0BAE1A4(v16);
    v27 = sub_1B039109C(v14);

    v28 = v27 ^ 1;
    if (v27 & 1) == 0 && (v9)
    {
      v28 = sub_1B0BAE1A4(v16);
      v27 = v28 ^ 1;
    }

    v29 = *(v16 + 16);

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v35 = 0x10000;
        if ((v28 & 1) == 0)
        {
          v35 = 0;
        }

        v30 = 0x20000;
        if (v27)
        {
          v30 = v35;
        }

        v34 = v96;
        if (v13 >= 3989)
        {
          v34 = 512;
        }

        if (((v29 == 0) & v9) != 0)
        {
          v31 = 0x100000000000000;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v32 = 0;
        }

        if ((v94 & 1) == 0)
        {
          v36 = 0;
          v17 = v90;
          v33 = v95;
          goto LABEL_71;
        }

        v17 = v90;
        v33 = v95;
      }

      else
      {
        if (v28)
        {
          v30 = 0x10000;
        }

        else
        {
          v30 = 0;
        }

        v34 = v96;
        if (v13 >= 3989)
        {
          v34 = 512;
        }

        if (((v29 == 0) & v9) != 0)
        {
          v31 = 0x100000000000000;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v32 = 0;
        }

        v17 = v90;
        v33 = v95;
        if ((v94 & 1) == 0)
        {
          v36 = 0;
          goto LABEL_71;
        }
      }
    }

    else
    {
      v30 = 0;
      if (v11)
      {
        v36 = 0;
        v34 = v96;
        if (v13 >= 3989)
        {
          v34 = 512;
        }

        if (((v29 == 0) & v9) != 0)
        {
          v31 = 0x100000000000000;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v32 = 0;
        }

        v17 = v90;
        v33 = v95;
        if ((v94 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (((v29 == 0) & v9) != 0)
        {
          v31 = 0x100000000000000;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x10000000000;
        if ((v26 & 1) == 0)
        {
          v32 = 0;
        }

        v33 = 1;
        v34 = 512;
        v17 = v90;
      }
    }

    v36 = 0x1000000;
LABEL_71:
    v92 = v36;
    v93 = v32;
    v94 = v34;
    v95 = v31;
    v96 = v30;
    v91 = v33;
    goto LABEL_72;
  }

  v95 = 0x100000000000000;
  v96 = 0;
  v97 = 0x100000000;
  v92 = 0x1000000;
  v93 = 0;
  v94 = 512;
  v91 = 1;
  v17 = v90;
LABEL_72:
  LODWORD(v90) = v102;
  sub_1B0397EC0(v17, v100);
  memcpy(v107, v3, sizeof(v107));
  v37 = LOBYTE(v107[3]);
  v38 = BYTE1(v107[3]);
  v39 = v107[4];
  v40 = LOBYTE(v107[5]);
  v41 = BYTE2(v107[2]);
  v42 = v107[6];
  v43 = v107[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = sub_1B0397D14();
  v45 = v44;
  v101 = v41;
  if (v39 == 2 || v39 == 3)
  {

    v46 = 0;
    v47 = 0;
    v48 = 0x100000000000000;
    v49 = 0x100000000;
    v50 = 0x1000000;
    v51 = 512;
    v52 = 1;
    v53 = v97;
    v54 = v98;
    v55 = v99;
    v56 = v95;
    v57 = v96;
    v58 = v93;
    v59 = v94;
    v61 = v91;
    v60 = v92;
    v62 = v90;
    goto LABEL_143;
  }

  v63 = sub_1B0BAE1A4(v44);
  if ((v38 & 1) == 0)
  {
    if (v39 == 1)
    {
      if (v37)
      {
        if (v37 == 1)
        {
          v64 = 0;
          v49 = 0x100000000;
          v65 = 512;
LABEL_165:
          v87 = v65;
          goto LABEL_90;
        }

LABEL_164:
        v64 = 0;
        v49 = 0;
        v37 = 1;
        v65 = 256;
        goto LABEL_165;
      }
    }

    else if (!v39 && v37)
    {
      if (v37 != 1)
      {
        v37 = 0;
        v87 = 0;
        v64 = 0;
        v49 = 0;
        goto LABEL_90;
      }

      goto LABEL_164;
    }
  }

  v37 = (v63 & 1) == 0;
  if (v63)
  {
    v49 = 0;
  }

  else
  {
    v49 = 0x100000000;
  }

  v66 = 512;
  if (v63)
  {
    v66 = 0;
  }

  v87 = v66;
  v64 = (v63 & 1) == 0;
LABEL_90:
  v67 = sub_1B0397E04(&unk_1F2710548, v43);
  if (v67)
  {
    v68 = v37;
  }

  else
  {
    v68 = 1;
  }

  v69 = (v67 & 1) == 0 || v64;
  v85 = v69;
  v86 = v68;
  v88 = sub_1B0BAE1A4(v45);
  v70 = sub_1B039109C(v43);

  v71 = v70 ^ 1;
  if (v70 & 1) == 0 && (v38)
  {
    v71 = sub_1B0BAE1A4(v45);
    v70 = v71 ^ 1;
  }

  v72 = *(v45 + 16);

  v73 = (v72 == 0) & v38;
  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v46 = 0x10000;
      if ((v71 & 1) == 0)
      {
        v46 = 0;
      }

      if ((v70 & 1) == 0)
      {
        v46 = 0x20000;
      }

      v51 = v87;
      if (v42 >= 3989)
      {
        v51 = 512;
      }

      v74 = v73 == 0;
      v48 = 0x100000000000000;
      if (v74)
      {
        v48 = 0;
      }

      v47 = 0x10000000000;
      if ((v88 & 1) == 0)
      {
        v47 = 0;
      }

      v55 = v99;
      if ((v85 & 1) == 0)
      {
        v50 = 0;
        v53 = v97;
        v54 = v98;
        v56 = v95;
        v57 = v96;
        v58 = v93;
        v59 = v94;
        v61 = v91;
        v60 = v92;
        v62 = v90;
        LODWORD(v52) = v86;
        goto LABEL_142;
      }

      v53 = v97;
      v54 = v98;
      v56 = v95;
      v57 = v96;
      v58 = v93;
      v59 = v94;
      v61 = v91;
      v60 = v92;
      v62 = v90;
      LODWORD(v52) = v86;
    }

    else
    {
      v46 = 0x10000;
      if ((v71 & 1) == 0)
      {
        v46 = 0;
      }

      v51 = v87;
      if (v42 >= 3989)
      {
        v51 = 512;
      }

      v74 = v73 == 0;
      v48 = 0x100000000000000;
      if (v74)
      {
        v48 = 0;
      }

      v47 = 0x10000000000;
      if ((v88 & 1) == 0)
      {
        v47 = 0;
      }

      v55 = v99;
      v57 = v96;
      v53 = v97;
      v59 = v94;
      v56 = v95;
      v60 = v92;
      v58 = v93;
      v61 = v91;
      v62 = v90;
      LODWORD(v52) = v86;
      if ((v85 & 1) == 0)
      {
        v50 = 0;
        v54 = v98;
        goto LABEL_142;
      }

      v54 = v98;
    }
  }

  else
  {
    v46 = 0;
    if (v40)
    {
      v50 = 0;
      v51 = v87;
      if (v42 >= 3989)
      {
        v51 = 512;
      }

      v74 = v73 == 0;
      v48 = 0x100000000000000;
      if (v74)
      {
        v48 = 0;
      }

      v47 = 0x10000000000;
      if ((v88 & 1) == 0)
      {
        v47 = 0;
      }

      v53 = v97;
      v54 = v98;
      v55 = v99;
      v56 = v95;
      v57 = v96;
      v58 = v93;
      v59 = v94;
      v61 = v91;
      v60 = v92;
      v62 = v90;
      LODWORD(v52) = v86;
      if ((v85 & 1) == 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v74 = v73 == 0;
      v48 = 0x100000000000000;
      if (v74)
      {
        v48 = 0;
      }

      v47 = 0x10000000000;
      if ((v88 & 1) == 0)
      {
        v47 = 0;
      }

      LODWORD(v52) = 1;
      v51 = 512;
      v53 = v97;
      v54 = v98;
      v55 = v99;
      v56 = v95;
      v57 = v96;
      v58 = v93;
      v59 = v94;
      v61 = v91;
      v60 = v92;
      v62 = v90;
    }
  }

  v50 = 0x1000000;
LABEL_142:
  v52 = v52;
LABEL_143:
  if (v62)
  {
    v75 = 0x1000000000000;
  }

  else
  {
    v75 = 0;
  }

  v76 = v57 | v59 | v61 | v60 | v53 | v58 | v56;
  if (v101)
  {
    v77 = 0x1000000000000;
  }

  else
  {
    v77 = 0;
  }

  if (!sub_1B03A5B78(v76 | v75, v46 | v51 | v52 | v50 | v49 | v47 | v48 | v77))
  {
    sub_1B039C290(v76 | v75);
    sub_1B039C7FC(v100, v3);
  }

  if (v55)
  {
    v78 = *(v3 + 184);
    v79 = *(v3 + 216);
    v105 = *(v3 + 200);
    v106[0] = v79;
    *(v106 + 12) = *(v3 + 228);
    v103 = *(v3 + 168);
    v104 = v78;
    if ((sub_1B03A47F4() & 1) == 0)
    {
      sub_1B03906B8(v100, v54, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v80 = sub_1B0E43988();
      v81 = sub_1B0E45908();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 68157952;
        *(v82 + 4) = 2;
        *(v82 + 8) = 256;
        v83 = *(v54 + *(v89 + 20));
        sub_1B0390514(v54, type metadata accessor for State.Logger);
        *(v82 + 10) = v83;
        _os_log_impl(&dword_1B0389000, v80, v81, "[%.*hhx] Resetting mailboxes-need-to-be-updated.", v82, 0xBu);
        MEMORY[0x1B272C230](v82, -1, -1);
      }

      else
      {
        sub_1B0390514(v54, type metadata accessor for State.Logger);
      }

      *(v3 + 137) = 0;
    }
  }
}

uint64_t sub_1B039109C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  v3 = sub_1B0E46CB8() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3) & 1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

id sub_1B0391210(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v6 = *(a1 + 32);
  v14 = *(a1 + 40);

  swift_unknownObjectRetain();
  v12 = v16;
  v6(v13);
  v10 = v17;
  v2 = __swift_project_boxed_opaque_existential_0(v16, v17);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v11 = &v6 - v7;
  (*(v8 + 16))(v3);
  v15 = sub_1B0E46A58();
  (*(v8 + 8))(v11, v10);
  __swift_destroy_boxed_opaque_existential_0(v12);
  swift_unknownObjectRelease();

  v4 = v15;

  return v4;
}

uint64_t sub_1B0391370@<X0>(void *a1@<X8>)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AC0, &qword_1B0E9AE88);
  swift_dynamicCast();
  sub_1B0E453A8();
  objc_opt_self();
  v25 = swift_dynamicCastObjCClassUnconditional();
  [v25 floatValue];
  v26 = v1;
  MEMORY[0x1E69E5920](v25);
  sub_1B0E453A8();
  objc_opt_self();
  v27 = swift_dynamicCastObjCClassUnconditional();
  v28 = [v27 BOOLValue];
  MEMORY[0x1E69E5920](v27);
  sub_1B0E453A8();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClassUnconditional();
  [v23 integerValue];
  MEMORY[0x1E69E5920](v23);
  sub_1B0391B00();
  if (v2)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v21 = EFProtectedDataAvailableInState() ^ 1;
  sub_1B0E453A8();
  objc_opt_self();
  v22 = swift_dynamicCastObjCClassUnconditional();
  [v22 integerValue];
  MEMORY[0x1E69E5920](v22);
  sub_1B0391B00();
  sub_1B0E453A8();
  objc_opt_self();
  v18 = swift_dynamicCastObjCClassUnconditional();
  v19 = sub_1B0E42F38();
  v20 = v3;
  sub_1B0E42F08();
  sub_1B0391D50(v19, v20);
  MEMORY[0x1E69E5920](v18);
  sub_1B0E453A8();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  [v12 integerValue];
  MEMORY[0x1E69E5920](v12);
  Environment.AvailableFileSystemSpace.init(availableByteCount:bytesForOpportunisticUsage:)(v32, v33);
  v13 = _s7WrappedCMa();
  sub_1B0E453A8();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  inLowPowerMode = [v14 0x1FAA23478];
  MEMORY[0x1E69E5920](v14);
  sub_1B0E453A8();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClassUnconditional();
  isPluggedIn = [v16 0x1FAA23478];
  MEMORY[0x1E69E5920](v16);
  if (v26 == -1.0)
  {
    v10 = 0.0;
    v11 = 1;
  }

  else
  {
    v10 = v26;
    v11 = 0;
  }

  *&v31 = v10;
  BYTE4(v31) = v11 & 1;
  v4 = Environment.Power.init(inLowPowerMode:isPluggedIn:batteryPercentage:)(inLowPowerMode, isPluggedIn, v31);
  v30 = Environment.init(power:appState:isLocked:thermalState:availableFileSystemSpace:unreconciledMessageCount:)(v4, (v28 & 1) == 0, v21);
  LOWORD(v29) = v30;
  BYTE2(v29) = BYTE2(v30);
  sub_1B0391EC0(v29, v5, v6, v7);
  a1[3] = v13;
  *a1 = v8;
}

uint64_t *sub_1B0391AD4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void sub_1B0391B24(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1B0E450E8() == 16)
  {
    if (a1)
    {
      if (a2)
      {
        v5 = a2 - a1;
      }

      else
      {
        __break(1u);
      }

      if (v5 / 16 < 0)
      {
        sub_1B0E466C8();
        __break(1u);
      }

      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    if (sub_1B0E44A58() <= 0)
    {
      sub_1B0E466C8();
      __break(1u);
    }

    if (v6)
    {
      *a3 = *v6;
      return;
    }

    __break(1u);
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(1000000000);
  *a3 = v3;
  *(a3 + 8) = v4;
}

uint64_t sub_1B0391D50(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

IMAP2Persistence::Environment::AvailableFileSystemSpace __swiftcall Environment.AvailableFileSystemSpace.init(availableByteCount:bytesForOpportunisticUsage:)(Swift::Int availableByteCount, Swift::Int bytesForOpportunisticUsage)
{
  if (bytesForOpportunisticUsage <= 0x4650FFFFFLL && availableByteCount <= 1888485375)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (bytesForOpportunisticUsage <= 0x9C3FFFFFFLL)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (availableByteCount <= 0x270FFFFFFLL)
  {
    v5 = v4;
  }

  else
  {
    v5 = IMAP2Persistence_Environment_AvailableFileSystemSpace_abundant;
  }

  if (availableByteCount <= 105906175 && bytesForOpportunisticUsage < 1049624576)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

IMAP2Persistence::Environment::Power __swiftcall Environment.Power.init(inLowPowerMode:isPluggedIn:batteryPercentage:)(Swift::Bool inLowPowerMode, Swift::Bool isPluggedIn, Swift::Float_optional *batteryPercentage)
{
  if (inLowPowerMode)
  {
    return 0;
  }

  v4 = (batteryPercentage >> 32) & 1;
  if (*&batteryPercentage >= 0.2)
  {
    LODWORD(v4) = 1;
  }

  if (isPluggedIn)
  {
    v5 = IMAP2Persistence_Environment_Power_pluggedIn;
  }

  else
  {
    v5 = IMAP2Persistence_Environment_Power_onBattery;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t Environment.init(power:appState:isLocked:thermalState:availableFileSystemSpace:unreconciledMessageCount:)(unsigned __int8 a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return a1 | ((a2 & 1) << 8) | v3;
}

double sub_1B0391EC0(int a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  v6 = BYTE1(a1);
  v7 = BYTE2(a1);
  swift_allocObject();
  LOBYTE(v11) = v5;
  BYTE1(v11) = v6;
  BYTE2(v11) = v7;
  return sub_1B0391F88(v11, a2, a3, a4);
}

double sub_1B0391F88(int a1, uint64_t a2, char a3, uint64_t a4)
{
  result = 0.0;
  *(v4 + 16) = a1;
  *(v4 + 18) = BYTE2(a1);
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_1B03920B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  v3(a2);
}

uint64_t sub_1B039211C(int a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v91 = 0u;
  v92 = 0u;
  v90 = 0;
  v78 = 0;
  v93 = a1;
  v94 = a2;
  v95 = a3;
  v96 = a4;
  v48 = a1;
  v49 = BYTE1(a1);
  v51 = BYTE2(a1);
  v52 = a2;
  v53 = a3;
  v50 = a4;
  v57 = sub_1B0E44468();
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v5 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v58 = (&v20 - v6);
  LOBYTE(v91) = v7;
  BYTE1(v91) = v8;
  BYTE2(v91) = v51;
  *(&v91 + 1) = v52;
  LOBYTE(v92) = v53;
  *(&v92 + 1) = v9;
  v90 = v4;

  v54 = *(v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v54);
  v10 = v55;
  *v58 = v54;
  v11 = *MEMORY[0x1E69E8020];
  (*(v10 + 104))();
  v59 = sub_1B0E44488();
  (*(v55 + 8))(v58, v57);
  result = v59;
  if ((v59 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v42 = v48 | ((v49 & 1) << 8) | ((v51 & 1) << 16);
  v40 = (v47 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  v41 = &v89;
  swift_beginAccess();
  v43 = *v40;
  v44 = v40[1];
  v45 = v40[2];
  v46 = v40[3];
  result = swift_endAccess();
  v81 = v42;
  v82 = v52;
  v83 = v53;
  v84 = v50;
  v85 = v43;
  v86 = v44;
  v87 = v45;
  v88 = v46;
  if ((v42 & 0xFF00) != 0x200)
  {
    v68 = v42;
    v69 = v52;
    v70 = v53;
    v71 = v50;
    if ((v85 & 0xFF00) != 0x200)
    {
      LOWORD(v64) = v68;
      BYTE2(v64) = BYTE2(v68);
      v65 = v69;
      v66 = v70;
      v67 = v71;
      LOWORD(v60) = v85;
      BYTE2(v60) = BYTE2(v85);
      v61 = v86;
      v62 = v87;
      v63 = v88;
      result = static Environment.__derived_struct_equals(_:_:)(v64, v69, v70, v71, v60, v86, v87, v88);
      v39 = result;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((v85 & 0xFF00) != 0x200)
  {
LABEL_10:
    v39 = 0;
    goto LABEL_8;
  }

  v39 = 1;
LABEL_8:
  if (v39)
  {
    return result;
  }

  v38 = v47 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment;
  swift_beginAccess();
  if ((*v38 & 0xFF00) == 0x200)
  {
    swift_endAccess();
    v37 = 2;
  }

  else
  {
    v36 = *(v38 + 2);
    swift_endAccess();
    v37 = v36 & 1;
  }

  v79 = v51;
  v80 = v37;
  if (v51 == 2)
  {
    if (v80 == 2)
    {
      v35 = 1;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v72 = v51;
  if (v80 == 2)
  {
LABEL_22:
    v35 = 0;
    goto LABEL_20;
  }

  v35 = (v72 & 1) == (v80 & 1);
LABEL_20:
  if (v35)
  {
    v34 = 0;
  }

  else
  {
    v34 = v51 ^ 1;
  }

  v26 = v34;
  v78 = v34 & 1;
  v27 = v48 | ((v49 & 1) << 8) | ((v51 & 1) << 16);
  v28 = (v47 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  v29 = &v77;
  v30 = 0;
  swift_beginAccess();
  v13 = v52;
  v14 = v53;
  v15 = v28;
  v16 = v50;
  *v28 = v27;
  v15[1] = v13;
  v15[2] = v14;
  v15[3] = v16;
  swift_endAccess();
  v31 = v47 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState;
  v32 = &v76;
  swift_beginAccess();
  v33 = *(v31 + 8);
  swift_endAccess();
  if (v33)
  {
    if (v49)
    {
      v17 = v47;
      v23 = static MonotonicTime.now()();
      v24 = (v17 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState);
      v25 = &v73;
      swift_beginAccess();
      v18 = v24;
      *v24 = v23;
      *(v18 + 8) = 0;
      swift_endAccess();
      sub_1B09BC240();
    }
  }

  else if ((v49 & 1) == 0)
  {
    v21 = (v47 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState);
    v22 = &v74;
    swift_beginAccess();
    v19 = v21;
    *v21 = 0;
    *(v19 + 8) = 1;
    swift_endAccess();
  }

  result = sub_1B0392878();
  if (v26)
  {
    v20 = &v75;
    swift_beginAccess();
    sub_1B041AEB8();
    return swift_endAccess();
  }

  return result;
}

__n128 sub_1B0392800(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

BOOL sub_1B0392830(int a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, char a7, uint64_t a8)
{
  v8 = a5 ^ a1;
  if (a5 != a1)
  {
    return 0;
  }

  v9 = (v8 >> 8) & 1;
  v10 = HIWORD(v8) & 1;
  v13 = a2 == a6 && a3 == a7 && a4 == a8;
  v14 = (v10 & 1) == 0 && v13;
  return (v9 & 1) == 0 && v14;
}

uint64_t sub_1B0392878()
{
  v190 = 0;
  v156 = sub_1B039BBE8;
  v157 = sub_1B0399938;
  v158 = sub_1B0394C30;
  v159 = sub_1B0394C24;
  v160 = sub_1B039BA2C;
  v161 = sub_1B039BA88;
  v162 = sub_1B039BB94;
  v163 = sub_1B0394C24;
  v164 = sub_1B039BBA0;
  v165 = sub_1B039BC08;
  v166 = sub_1B0399460;
  v167 = sub_1B039BCF8;
  v168 = sub_1B0398F5C;
  v169 = sub_1B0398F5C;
  v170 = sub_1B0399178;
  v171 = sub_1B0398F5C;
  v172 = sub_1B0398F5C;
  v173 = sub_1B039BA94;
  v174 = sub_1B0398F5C;
  v175 = sub_1B0398F5C;
  v176 = sub_1B0399178;
  v177 = sub_1B0398F5C;
  v178 = sub_1B0398F5C;
  v179 = sub_1B03991EC;
  v180 = sub_1B0398F5C;
  v181 = sub_1B0398F5C;
  v182 = sub_1B039BCEC;
  v210 = 0;
  v207 = 0u;
  v208 = 0u;
  v183 = 0;
  v184 = 0;
  v185 = sub_1B0E439A8();
  v186 = *(v185 - 8);
  v187 = v185 - 8;
  v188 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v189 = v78 - v188;
  v191 = _s6LoggerVMa();
  v192 = (*(*(v191 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v191);
  v193 = v78 - v192;
  v194 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v195 = v78 - v194;
  v210 = v0;
  v196 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  v197 = &v209;
  swift_beginAccess();
  v201 = *v196;
  v198 = v196[1];
  v199 = v196[2];
  v200 = v196[3];
  result = swift_endAccess();
  if ((v201 & 0xFF00) != 0x200)
  {
    v149 = v201;
    v150 = v201 >> 8;
    v151 = v201 >> 16;
    v152 = v198;
    v153 = v199;
    v154 = v200;
    v4 = v189;
    v113 = v200;
    v112 = v199;
    v111 = v198;
    v110 = v151;
    v108 = v150;
    v107 = v201;
    LOWORD(v207) = v201 & 0x1FF;
    v116 = 1;
    v109 = 1;
    BYTE2(v207) = BYTE2(v201) & 1;
    *(&v207 + 1) = v198;
    LOBYTE(v208) = v199;
    *(&v208 + 1) = v200;
    v102 = &unk_1EB737000;
    sub_1B0394784(v155 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v195);
    (*(v186 + 16))(v4, v195, v185);
    sub_1B039480C(v195);

    sub_1B0394784(v155 + v102[314], v193);
    v5 = (v193 + *(v191 + 20));
    v104 = *v5;
    v105 = *(v5 + 1);
    sub_1B039480C(v193);

    v103 = 24;
    v126 = 7;
    v6 = swift_allocObject();
    v7 = v105;
    v117 = v6;
    *(v6 + 16) = v104;
    *(v6 + 20) = v7;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v8 = swift_allocObject();
    v9 = v105;
    v106 = v8;
    *(v8 + 16) = v104;
    *(v8 + 20) = v9;

    v125 = 32;
    v10 = swift_allocObject();
    v11 = v106;
    v122 = v10;
    *(v10 + 16) = v156;
    *(v10 + 24) = v11;
    sub_1B0394868();
    sub_1B0394868();

    v12 = swift_allocObject();
    v13 = v108;
    v14 = v109;
    v15 = v110;
    v16 = v111;
    v17 = v112;
    v18 = v113;
    v114 = v12;
    *(v12 + 16) = v107;
    *(v12 + 17) = v13 & v14;
    *(v12 + 18) = v15 & v14;
    *(v12 + 24) = v16;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;

    v19 = swift_allocObject();
    v20 = v114;
    v127 = v19;
    *(v19 + 16) = v157;
    *(v19 + 24) = v20;

    v147 = sub_1B0E43988();
    v148 = sub_1B0E45908();
    v124 = 17;
    v129 = swift_allocObject();
    v119 = 16;
    *(v129 + 16) = 16;
    v130 = swift_allocObject();
    v121 = 4;
    *(v130 + 16) = 4;
    v21 = swift_allocObject();
    v115 = v21;
    *(v21 + 16) = v158;
    *(v21 + 24) = 0;
    v22 = swift_allocObject();
    v23 = v115;
    v131 = v22;
    *(v22 + 16) = v159;
    *(v22 + 24) = v23;
    v132 = swift_allocObject();
    *(v132 + 16) = 0;
    v133 = swift_allocObject();
    *(v133 + 16) = v116;
    v24 = swift_allocObject();
    v25 = v117;
    v118 = v24;
    *(v24 + 16) = v160;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v118;
    v134 = v26;
    *(v26 + 16) = v161;
    *(v26 + 24) = v27;
    v135 = swift_allocObject();
    *(v135 + 16) = v119;
    v136 = swift_allocObject();
    *(v136 + 16) = v121;
    v28 = swift_allocObject();
    v120 = v28;
    *(v28 + 16) = v162;
    *(v28 + 24) = 0;
    v29 = swift_allocObject();
    v30 = v120;
    v137 = v29;
    *(v29 + 16) = v163;
    *(v29 + 24) = v30;
    v138 = swift_allocObject();
    *(v138 + 16) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = v121;
    v31 = swift_allocObject();
    v32 = v122;
    v123 = v31;
    *(v31 + 16) = v164;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v123;
    v140 = v33;
    *(v33 + 16) = v165;
    *(v33 + 24) = v34;
    v141 = swift_allocObject();
    *(v141 + 16) = 34;
    v142 = swift_allocObject();
    *(v142 + 16) = 8;
    v35 = swift_allocObject();
    v36 = v127;
    v128 = v35;
    *(v35 + 16) = v166;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v128;
    v144 = v37;
    *(v37 + 16) = v167;
    *(v37 + 24) = v38;
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v143 = sub_1B0E46A48();
    v145 = v39;

    v40 = v129;
    v41 = v145;
    *v145 = v168;
    v41[1] = v40;

    v42 = v130;
    v43 = v145;
    v145[2] = v169;
    v43[3] = v42;

    v44 = v131;
    v45 = v145;
    v145[4] = v170;
    v45[5] = v44;

    v46 = v132;
    v47 = v145;
    v145[6] = v171;
    v47[7] = v46;

    v48 = v133;
    v49 = v145;
    v145[8] = v172;
    v49[9] = v48;

    v50 = v134;
    v51 = v145;
    v145[10] = v173;
    v51[11] = v50;

    v52 = v135;
    v53 = v145;
    v145[12] = v174;
    v53[13] = v52;

    v54 = v136;
    v55 = v145;
    v145[14] = v175;
    v55[15] = v54;

    v56 = v137;
    v57 = v145;
    v145[16] = v176;
    v57[17] = v56;

    v58 = v138;
    v59 = v145;
    v145[18] = v177;
    v59[19] = v58;

    v60 = v139;
    v61 = v145;
    v145[20] = v178;
    v61[21] = v60;

    v62 = v140;
    v63 = v145;
    v145[22] = v179;
    v63[23] = v62;

    v64 = v141;
    v65 = v145;
    v145[24] = v180;
    v65[25] = v64;

    v66 = v142;
    v67 = v145;
    v145[26] = v181;
    v67[27] = v66;

    v68 = v144;
    v69 = v145;
    v145[28] = v182;
    v69[29] = v68;
    sub_1B0394964();

    if (os_log_type_enabled(v147, v148))
    {
      v70 = v183;
      v95 = sub_1B0E45D78();
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v96 = sub_1B03949A8(0);
      v97 = sub_1B03949A8(1);
      v98 = &v206;
      v206 = v95;
      v99 = &v205;
      v205 = v96;
      v100 = &v204;
      v204 = v97;
      sub_1B0394A48(2, &v206);
      sub_1B0394A48(5, v98);
      v202 = v168;
      v203 = v129;
      sub_1B03949FC(&v202, v98, v99, v100);
      v101 = v70;
      if (v70)
      {

        __break(1u);
      }

      else
      {
        v202 = v169;
        v203 = v130;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v93 = 0;
        v202 = v170;
        v203 = v131;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v92 = 0;
        v202 = v171;
        v203 = v132;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v91 = 0;
        v202 = v172;
        v203 = v133;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v90 = 0;
        v202 = v173;
        v203 = v134;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v89 = 0;
        v202 = v174;
        v203 = v135;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v88 = 0;
        v202 = v175;
        v203 = v136;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v87 = 0;
        v202 = v176;
        v203 = v137;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v86 = 0;
        v202 = v177;
        v203 = v138;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v85 = 0;
        v202 = v178;
        v203 = v139;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v84 = 0;
        v202 = v179;
        v203 = v140;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v83 = 0;
        v202 = v180;
        v203 = v141;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v82 = 0;
        v202 = v181;
        v203 = v142;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        v81 = 0;
        v202 = v182;
        v203 = v144;
        sub_1B03949FC(&v202, &v206, &v205, &v204);
        _os_log_impl(&dword_1B0389000, v147, v148, "[%.*hhx-%.*X] Environment changed. %{public}s", v95, 0x21u);
        sub_1B03998A8(v96);
        sub_1B03998A8(v97);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v147);
    (*(v186 + 8))(v189, v185);
    v78[1] = *(v155 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper);

    v79 = 1;
    sub_1B06EAFDC(v108 & 1);

    sub_1B0399F08(v110 & 1);
    sub_1B039AA18();
    v71 = swift_allocObject();
    v72 = v108;
    v73 = v79;
    v74 = v110;
    v75 = v111;
    v76 = v112;
    v77 = v113;
    *(v71 + 16) = v107;
    *(v71 + 17) = v72 & v73;
    *(v71 + 18) = v74 & v73;
    *(v71 + 24) = v75;
    *(v71 + 32) = v76;
    *(v71 + 40) = v77;
    v80 = v71;
    sub_1B039C1F8(v71);
  }

  return result;
}

uint64_t sub_1B0394200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B039426C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0394304()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0394344()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03943DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B039441C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03944B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03944F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B039458C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03945CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0394664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03946A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s6LoggerVMa()
{
  v1 = qword_1EB6DBD90;
  if (!qword_1EB6DBD90)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B0394784(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = _s6LoggerVMa();
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1B039480C(uint64_t a1)
{
  v1 = sub_1B0E439A8();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_1B0394874()
{
  v2 = qword_1EB6DEEC0;
  if (!qword_1EB6DEEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03948EC()
{
  v2 = qword_1EB6DEF00;
  if (!qword_1EB6DEF00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03949A8(uint64_t a1)
{
  if (a1)
  {
    return sub_1B0E45D78();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0394A48(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1B0394A68(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B0394A7C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  if (result >= 0xFFFFFFFF80000000)
  {
    if (result <= 0x7FFFFFFF)
    {
      *a2 = result;
      return result;
    }

    sub_1B0E465A8();
    __break(1u);
  }

  result = sub_1B0E465A8();
  __break(1u);
  return result;
}

unint64_t sub_1B0394BAC()
{
  v2 = qword_1EB6DED70;
  if (!qword_1EB6DED70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0394C3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1B0394E2C(char *a1, unint64_t a2, int a3)
{
  LODWORD(v467) = a3;
  v470 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v449 = &v438 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v450 = &v438 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v463 = &v438 - v11;
  v464.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = *(*(v464.i64[0] - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v464.i64[0]);
  v448 = &v438 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v461 = (&v438 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v446 = &v438 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v451 = &v438 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v447 = &v438 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v466 = (&v438 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v445 = &v438 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v460 = (&v438 - v27);
  v28 = sub_1B0E43868();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v459 = &v438 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v465 = &v438 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v457 = &v438 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v455 = &v438 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v462 = &v438 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v454 = &v438 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v456 = &v438 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v458 = &v438 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v444 = &v438 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v453 = &v438 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v452 = &v438 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v442 = &v438 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v441 = &v438 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v439 = &v438 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v443 = &v438 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v438 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v440 = &v438 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v438 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = &v438 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v438 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72);
  v77 = &v438 - v76;
  v78 = MEMORY[0x1EEE9AC00](v75);
  v80 = &v438 - v79;
  MEMORY[0x1EEE9AC00](v78);
  v82 = &v438 - v81;
  v83 = sub_1B0E43828();
  v468 = *(v83 - 8);
  v469 = v83;
  v84 = *(v468 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v470 = &v438 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E43838();
  if (v467)
  {
    v467 = v28;
    v438 = v29;
    v87 = v465;
    v86 = v466;
    switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
    {
      case 1uLL:
        v246 = tracingSignposter.unsafeMutableAddressor();
        v247 = v438;
        v248 = v467;
        (*(v438 + 16))(v77, v246, v467);
        v249 = sub_1B0E43858();
        v250 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v251 = swift_slowAlloc();
          *v251 = 0;
          v96 = v470;
          v252 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v249, v250, v252, "PersistenceEvent.update.credentials", "", v251, 2u);
          MEMORY[0x1B272C230](v251, -1, -1);

          (*(v247 + 8))(v77, v248);
          goto LABEL_9;
        }

        (*(v247 + 8))(v77, v248);
        goto LABEL_99;
      case 2uLL:
        v202 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v203 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v204 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v205 = tracingSignposter.unsafeMutableAddressor();
        v206 = v438;
        v207 = v440;
        v208 = v467;
        (*(v438 + 16))(v440, v205, v467);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v209 = sub_1B0E43858();
        v210 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {

          goto LABEL_84;
        }

        v211 = swift_slowAlloc();
        *v211 = 67109632;
        *(v211 + 4) = v202;
        *(v211 + 8) = 256;
        v212 = 0x403010505uLL >> (8 * v203);
        if (v203 >= 5)
        {
          LOBYTE(v212) = 5;
        }

        *(v211 + 10) = v212;
        *(v211 + 11) = 2048;
        v96 = v470;
        if (v204)
        {
          v213 = *(v204 + 16);
        }

        else
        {
          v213 = 0;
        }

        *(v211 + 13) = v213;
        v436 = v211;

        v437 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v209, v210, v437, "PersistenceEvent.update.sync", "%u %hhu %ld", v436, 0x15u);
        MEMORY[0x1B272C230](v436, -1, -1);

        goto LABEL_103;
      case 3uLL:
        v230 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v231 = tracingSignposter.unsafeMutableAddressor();
        v232 = v438;
        v233 = v467;
        (*(v438 + 16))(v63, v231, v467);
        v234 = sub_1B0E43858();
        v235 = sub_1B0E45AE8();
        v236 = sub_1B0E45D38();
        v96 = v470;
        if (v236)
        {
          v237 = swift_slowAlloc();
          *v237 = 67109120;
          *(v237 + 4) = v230;
          v238 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v234, v235, v238, "PersistenceEvent.update.sync", "%u", v237, 8u);
          MEMORY[0x1B272C230](v237, -1, -1);
        }

        (*(v232 + 8))(v63, v233);
        goto LABEL_9;
      case 4uLL:
        v155 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v156 = tracingSignposter.unsafeMutableAddressor();
        v157 = v438;
        v158 = v467;
        (*(v438 + 16))(v68, v156, v467);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v159 = sub_1B0E43858();
        v160 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v161 = swift_slowAlloc();
          *v161 = 134217984;
          *(v161 + 4) = *(v155 + 16);
          swift_bridgeObjectRelease_n();
          v162 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v159, v160, v162, "PersistenceEvent.update.setLocalMailboxes", "count %ld", v161, 0xCu);
          MEMORY[0x1B272C230](v161, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v106 = v468;
        v404 = v469;
        (*(v157 + 8))(v68, v158);
        v105 = v404;
        v96 = v470;
        return (*(v106 + 8))(v96, v105);
      case 5uLL:
        v286 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v287 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v288 = tracingSignposter.unsafeMutableAddressor();
        v206 = v438;
        v207 = v443;
        v208 = v467;
        (*(v438 + 16))(v443, v288, v467);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v289 = sub_1B0E43858();
        v290 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v291 = swift_slowAlloc();
          *v291 = 134218240;
          *(v291 + 4) = *(v286 + 16);
          *(v291 + 12) = 2048;
          *(v291 + 14) = *(v287 + 16);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v96 = v470;
          v292 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v289, v290, v292, "PersistenceEvent.update.setUserVisibleMailboxes", "%ld %ld", v291, 0x16u);
          MEMORY[0x1B272C230](v291, -1, -1);

LABEL_103:
          v106 = v468;
          v405 = v469;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
LABEL_84:
          v106 = v468;
          v405 = v469;
          v96 = v470;
        }

        (*(v206 + 8))(v207, v208);
        v105 = v405;
        return (*(v106 + 8))(v96, v105);
      case 6uLL:
        v333 = tracingSignposter.unsafeMutableAddressor();
        v334 = v438;
        v335 = v439;
        v336 = v467;
        (*(v438 + 16))(v439, v333, v467);
        v337 = sub_1B0E43858();
        v338 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v339 = swift_slowAlloc();
          *v339 = 0;
          v96 = v470;
          v340 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v337, v338, v340, "PersistenceEvent.update.temporarilyGrowWindowOfInterest", "", v339, 2u);
          MEMORY[0x1B272C230](v339, -1, -1);

          (*(v334 + 8))(v335, v336);
          goto LABEL_9;
        }

        (*(v334 + 8))(v335, v336);
        goto LABEL_99;
      case 7uLL:
        v239 = tracingSignposter.unsafeMutableAddressor();
        v240 = v438;
        v241 = v467;
        (*(v438 + 16))(v71, v239, v467);
        v242 = sub_1B0E43858();
        v243 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v244 = swift_slowAlloc();
          *v244 = 0;
          v96 = v470;
          v245 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v242, v243, v245, "PersistenceEvent.update.pushRegistrationInfo", "", v244, 2u);
          MEMORY[0x1B272C230](v244, -1, -1);

          (*(v240 + 8))(v71, v241);
          goto LABEL_9;
        }

        (*(v240 + 8))(v71, v241);
        goto LABEL_99;
      case 8uLL:
        v372 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v373 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v374 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v375 = tracingSignposter.unsafeMutableAddressor();
        v376 = v438;
        v377 = v453;
        v378 = v467;
        (*(v438 + 16))(v453, v375, v467);
        swift_bridgeObjectRetain_n();
        v379 = sub_1B0E43858();
        v380 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v381 = swift_slowAlloc();
          v382 = swift_slowAlloc();
          v472 = v382;
          *v381 = 136315394;
          v383 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v384 = OpaqueMailboxID.description.getter(v383);
          v386 = v385;

          v387 = sub_1B0399D64(v384, v386, &v472);

          *(v381 + 4) = v387;
          *(v381 + 12) = 2082;
          v474 = v374;
          v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
          v389 = MessageIdentifierRange.debugDescription.getter(v388);
          v391 = sub_1B0399D64(v389, v390, &v472);

          *(v381 + 14) = v391;
          swift_bridgeObjectRelease_n();
          v96 = v470;
          v392 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v379, v380, v392, "PersistenceEvent.update.didFindWindowOfInterest", "mailbox %s, UID range %{public}s", v381, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v382, -1, -1);
          MEMORY[0x1B272C230](v381, -1, -1);

          (*(v376 + 8))(v453, v378);
          goto LABEL_9;
        }

        swift_bridgeObjectRelease_n();
        (*(v376 + 8))(v377, v378);
        goto LABEL_99;
      case 9uLL:
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3630, &unk_1B0EC2AE0);
        v181 = swift_projectBox();
        v182 = *v181;
        v183 = v181[1];
        v184 = *(v181 + *(v180 + 64));
        v185 = v460;
        sub_1B03B5C80(v181 + *(v180 + 48), v460, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v186 = tracingSignposter.unsafeMutableAddressor();
        v187 = v438;
        v188 = v444;
        v189 = v467;
        (*(v438 + 16))(v444, v186, v467);
        v190 = v445;
        sub_1B03B5C80(v185, v445, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRetain_n();
        v191 = sub_1B0E43858();
        LODWORD(v466) = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v192 = swift_slowAlloc();
          v465 = v184;
          v193 = v192;
          v194 = swift_slowAlloc();
          v472 = v194;
          *v193 = 136315650;
          v195 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v196 = OpaqueMailboxID.description.getter(v195);
          v198 = v197;

          v199 = sub_1B0399D64(v196, v198, &v472);

          *(v193 + 4) = v199;
          *(v193 + 12) = 2048;
          v200 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v190, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v193 + 14) = v200;
          *(v193 + 22) = 2048;
          *(v193 + 24) = v465;
          swift_bridgeObjectRelease_n();
          v96 = v470;
          v201 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v191, v466, v201, "PersistenceEvent.update.didFindMessageBatches", "mailbox %s, UID range count %ld, message count: %ld", v193, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v194);
          MEMORY[0x1B272C230](v194, -1, -1);
          MEMORY[0x1B272C230](v193, -1, -1);

          (*(v187 + 8))(v188, v189);
          v154 = v460;
          goto LABEL_64;
        }

        sub_1B0398EFC(v190, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();

        (*(v187 + 8))(v188, v189);
        v403 = v185;
        goto LABEL_88;
      case 0xAuLL:
        v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
        v347 = swift_projectBox();
        v348 = *v347;
        v465 = v347[1];
        v349 = *(v346 + 64);
        sub_1B03B5C80(v347 + *(v346 + 48), v86, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v350 = v86;
        v351 = v463;
        sub_1B03B5C80(v347 + v349, v463, &unk_1EB6E26C0, &unk_1B0E9DE10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v352 = tracingSignposter.unsafeMutableAddressor();
        v353 = v438;
        v354 = v458;
        (*(v438 + 16))(v458, v352, v467);
        v355 = v350;
        v356 = v447;
        sub_1B03B5C80(v355, v447, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v357 = v450;
        sub_1B03B5C80(v351, v450, &unk_1EB6E26C0, &unk_1B0E9DE10);
        swift_bridgeObjectRetain_n();
        v358 = sub_1B0E43858();
        v359 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v360 = swift_slowAlloc();
          LODWORD(v462) = v359;
          v361 = v360;
          v362 = swift_slowAlloc();
          v472 = v362;
          *v361 = 136315650;
          v363 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v364 = OpaqueMailboxID.description.getter(v363);
          v366 = v365;

          v367 = sub_1B0399D64(v364, v366, &v472);

          *(v361 + 4) = v367;
          *(v361 + 12) = 2048;
          v368 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v356, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v361 + 14) = v368;
          *(v361 + 22) = 2048;
          v369 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v357, &unk_1EB6E26C0, &unk_1B0E9DE10);
          *(v361 + 24) = v369;
          swift_bridgeObjectRelease_n();
          v370 = v470;
          v371 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v358, v462, v371, "PersistenceEvent.update.didFindMessageUIDs", "mailbox %s, UID count %ld range UID count %ld)", v361, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v362);
          MEMORY[0x1B272C230](v362, -1, -1);
          MEMORY[0x1B272C230](v361, -1, -1);

          (*(v353 + 8))(v458, v467);
          v96 = v370;
          sub_1B0398EFC(v463, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v154 = v466;
          goto LABEL_64;
        }

        sub_1B0398EFC(v357, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v356, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();

        (*(v353 + 8))(v354, v467);
        sub_1B0398EFC(v351, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v403 = v466;
        goto LABEL_88;
      case 0xBuLL:
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F0, &unk_1B0EA2050);
        v132 = swift_projectBox();
        v133 = *v132;
        v134 = v132[1];
        v135 = *(v132 + *(v131 + 64));
        v136 = v451;
        sub_1B03B5C80(v132 + *(v131 + 48), v451, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v137 = tracingSignposter.unsafeMutableAddressor();
        v138 = v438;
        v139 = v456;
        v140 = v467;
        (*(v438 + 16))(v456, v137, v467);
        v141 = v446;
        sub_1B03B5C80(v136, v446, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRetain_n();
        v142 = sub_1B0E43858();
        LODWORD(v466) = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v143 = swift_slowAlloc();
          v465 = v135;
          v144 = v143;
          v145 = swift_slowAlloc();
          v472 = v145;
          *v144 = 136315650;
          v146 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v147 = OpaqueMailboxID.description.getter(v146);
          v149 = v148;

          v150 = sub_1B0399D64(v147, v149, &v472);

          *(v144 + 4) = v150;
          v151 = v136;
          *(v144 + 12) = 2048;
          v152 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v141, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v144 + 14) = v152;
          *(v144 + 22) = 2048;
          *(v144 + 24) = v465;
          swift_bridgeObjectRelease_n();
          v96 = v470;
          v153 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v142, v466, v153, "PersistenceEvent.update.didFindNewestMessageUIDs", "mailbox %s, UID count %ld, limit %ld", v144, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v145);
          MEMORY[0x1B272C230](v145, -1, -1);
          MEMORY[0x1B272C230](v144, -1, -1);

          (*(v138 + 8))(v456, v140);
          v154 = v151;
          goto LABEL_64;
        }

        sub_1B0398EFC(v141, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();

        (*(v138 + 8))(v139, v140);
        v403 = v136;
        goto LABEL_88;
      case 0xCuLL:
        v163 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v164 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v165 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v166 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v167 = tracingSignposter.unsafeMutableAddressor();
        v118 = v438;
        v119 = v454;
        v120 = v467;
        (*(v438 + 16))(v454, v167, v467);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v121 = sub_1B0E43858();
        v168 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {
          goto LABEL_74;
        }

        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        LODWORD(v466) = v168;
        v171 = v170;
        v472 = v170;
        *v169 = 136315650;
        v172 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v173 = OpaqueMailboxID.description.getter(v172);
        v175 = v174;

        v176 = sub_1B0399D64(v173, v175, &v472);

        *(v169 + 4) = v176;
        *(v169 + 12) = 256;
        if (v165)
        {
          v177 = 2;
        }

        else
        {
          v177 = 1;
        }

        *(v169 + 14) = v177;
        *(v169 + 15) = 2048;
        v178 = *(v166 + 16);

        *(v169 + 17) = v178;

        swift_bridgeObjectRelease_n();
        v96 = v470;
        v179 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v121, v466, v179, "PersistenceEvent.update.downloadSectionsInMessages", "mailbox %s, downloadPass %hhu, messageCount %ld", v169, 0x19u);
        __swift_destroy_boxed_opaque_existential_0(v171);
        MEMORY[0x1B272C230](v171, -1, -1);
        MEMORY[0x1B272C230](v169, -1, -1);

        (*(v118 + 8))(v454, v120);
        goto LABEL_9;
      case 0xDuLL:
        v306 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v307 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v308 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
        v309 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v310 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v311 = tracingSignposter.unsafeMutableAddressor();
        v312 = v438;
        v313 = v462;
        v314 = v467;
        (*(v438 + 16))(v462, v311, v467);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v315 = sub_1B0E43858();
        v316 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          (*(v312 + 8))(v313, v314);
          goto LABEL_99;
        }

        v464.i32[0] = v316;
        v466 = v315;
        v317 = swift_slowAlloc();
        v318 = swift_slowAlloc();
        v474 = v318;
        *v317 = 141559043;
        *(v317 + 4) = 0x786F626C69616DLL;
        *(v317 + 12) = 2085;
        v472 = v306;
        v473 = v307;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v319 = sub_1B0E44BA8();
        v321 = sub_1B0399D64(v319, v320, &v474);

        *(v317 + 14) = v321;
        *(v317 + 22) = 256;
        if (v308)
        {
          v322 = 2;
        }

        else
        {
          v322 = 1;
        }

        *(v317 + 24) = v322;
        *(v317 + 25) = 1024;
        *(v317 + 27) = v309;
        *(v317 + 31) = 2080;
        v323 = *(v310 + 2);
        v324 = v310;
        v325 = MEMORY[0x1E69E7CC0];
        v465 = v324;
        if (v323)
        {
          v461 = v318;
          v463 = v306;
          v472 = MEMORY[0x1E69E7CC0];
          sub_1B041D32C(0, v323, 0);
          v325 = v472;
          v326 = (v324 + 32);
          do
          {
            v471 = *v326;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v327 = sub_1B0E44B88();
            v329 = v328;
            v472 = v325;
            v331 = *(v325 + 16);
            v330 = *(v325 + 24);
            if (v331 >= v330 >> 1)
            {
              sub_1B041D32C((v330 > 1), v331 + 1, 1);
              v325 = v472;
            }

            *(v325 + 16) = v331 + 1;
            v332 = v325 + 16 * v331;
            *(v332 + 32) = v327;
            *(v332 + 40) = v329;
            ++v326;
            --v323;
          }

          while (v323);
          v318 = v461;
        }

        v472 = v325;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B03B11C4();
        v430 = sub_1B0E448E8();
        v432 = v431;

        v433 = sub_1B0399D64(v430, v432, &v474);

        *(v317 + 33) = v433;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v96 = v470;
        v434 = sub_1B0E43818();
        v435 = v466;
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v466, v464.i8[0], v434, "PersistenceEvent.update.downloadSectionData", "mailbox %{sensitive,mask.mailbox}s, downloadPass %hhu, UID %u, sections, %s", v317, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v318, -1, -1);
        MEMORY[0x1B272C230](v317, -1, -1);

        (*(v438 + 8))(v462, v467);
        goto LABEL_9;
      case 0xEuLL:
        v113 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v114 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v115 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v116 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v117 = tracingSignposter.unsafeMutableAddressor();
        v118 = v438;
        v119 = v455;
        v120 = v467;
        (*(v438 + 16))(v455, v117, v467);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v121 = sub_1B0E43858();
        v122 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {
          goto LABEL_74;
        }

        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        LODWORD(v466) = v122;
        v125 = v124;
        v474 = v124;
        *v123 = 141558787;
        *(v123 + 4) = 0x786F626C69616DLL;
        *(v123 + 12) = 2085;
        v472 = v113;
        v473 = v114;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v126 = sub_1B0E44BA8();
        v128 = sub_1B0399D64(v126, v127, &v474);

        *(v123 + 14) = v128;
        *(v123 + 22) = 2048;
        v129 = *(v115 + 16);

        *(v123 + 24) = v129;
        *(v123 + 32) = 1024;
        *(v123 + 34) = v116;
        swift_bridgeObjectRelease_n();

        v96 = v470;
        v130 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v121, v466, v130, "PersistenceEvent.update.uploadMessages", "mailbox %{sensitive,mask.mailbox}s, count %ld, isLast: %{BOOL}d", v123, 0x26u);
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x1B272C230](v125, -1, -1);
        MEMORY[0x1B272C230](v123, -1, -1);

        (*(v118 + 8))(v455, v120);
        goto LABEL_9;
      case 0xFuLL:
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E0, &unk_1B0EE3170);
        v215 = swift_projectBox();
        v216 = *v215;
        v217 = *(v215 + 8);
        v218 = *(v215 + 16);
        v219 = *(v215 + 24);
        v220 = *(v215 + 36);
        v221 = *(v215 + 37);
        LODWORD(v466) = *(v215 + 38);
        LODWORD(v465) = *(v215 + 40);
        v222 = *(v214 + 80);
        v223 = (v215 + *(v214 + 96));
        v224.i32[0] = *(v215 + 32);
        v464 = vmovl_u8(v224);
        v225 = *v223;
        v226 = v223[1];
        v227 = v449;
        v228 = sub_1B03B5C80(v215 + v222, v449, &unk_1EB6E2990, &qword_1B0E9B060);
        v467 = &v438;
        MEMORY[0x1EEE9AC00](v228);
        v229 = v470;
        *(&v438 - 8) = v470;
        *(&v438 - 7) = v216;
        *(&v438 - 12) = v217;
        v96 = v229;
        *(&v438 - 11) = vuzp1_s8((v464.i64[0] & 0xFF01FF01FF01FF01), (v464.i64[0] & 0xFF01FF01FF01FF01)).u32[0];
        *(&v438 - 40) = v220 & 1;
        *(&v438 - 39) = v221 & 1;
        *(&v438 - 19) = v466;
        *(&v438 - 36) = v465 & 1;
        *(&v438 - 4) = v227;
        *(&v438 - 3) = v225;
        *(&v438 - 2) = v226;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v218, v219);
        sub_1B03B2000(v225, v226);
        sub_1B0BB5F90(sub_1B0BB7028, (&v438 - 10), v218, v219);

        sub_1B0391D50(v225, v226);
        sub_1B0391D50(v218, v219);
        sub_1B0398EFC(v227, &unk_1EB6E2990, &qword_1B0E9B060);
        goto LABEL_9;
      case 0x10uLL:
        v108 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v109 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v110 = *(v109 + 16);
        if (v110)
        {
          v111 = *(v109 + 32);
          v112 = *(v109 + 32 * v110);
        }

        else
        {
          v112 = 0;
          v111 = 0;
        }

        v119 = v457;
        v406 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        LODWORD(v466) = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v407 = tracingSignposter.unsafeMutableAddressor();
        v118 = v438;
        v120 = v467;
        (*(v438 + 16))(v119, v407, v467);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v408 = sub_1B0E43858();
        LODWORD(v465) = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {
          goto LABEL_97;
        }

        v409 = swift_slowAlloc();
        v410 = swift_slowAlloc();
        v464.i32[0] = v112;
        v411 = v410;
        v472 = v410;
        *v409 = 136316162;
        v412 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v413 = OpaqueMailboxID.description.getter(v412);
        v415 = v414;

        v416 = sub_1B0399D64(v413, v415, &v472);

        *(v409 + 4) = v416;
        *(v409 + 12) = 2048;
        v417 = *(v109 + 16);

        *(v409 + 14) = v417;
        *(v409 + 22) = 1024;
        *(v409 + 24) = v111;
        *(v409 + 28) = 1024;
        *(v409 + 30) = v464.i32[0];
        *(v409 + 34) = 1024;
        *(v409 + 36) = v466;
        swift_bridgeObjectRelease_n();

        v96 = v470;
        v418 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v408, v465, v418, "PersistenceEvent.update.uploadChangedFlags", "mailbox %s, message count %ld, {%u %u}, isLast: %{BOOL}d", v409, 0x28u);
        __swift_destroy_boxed_opaque_existential_0(v411);
        MEMORY[0x1B272C230](v411, -1, -1);
        MEMORY[0x1B272C230](v409, -1, -1);

        (*(v118 + 8))(v457, v120);
        goto LABEL_9;
      case 0x11uLL:
        v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A8, &unk_1B0ECD730);
        v254 = swift_projectBox();
        v255 = *v254;
        v256 = v254[1];
        v257 = v461;
        sub_1B03B5C80(v254 + *(v253 + 48), v461, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v258 = tracingSignposter.unsafeMutableAddressor();
        v259 = v438;
        v260 = v87;
        v261 = v87;
        v262 = v467;
        (*(v438 + 16))(v260, v258, v467);
        v263 = v448;
        sub_1B03B5C80(v257, v448, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRetain_n();
        v264 = sub_1B0E43858();
        v265 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v266 = swift_slowAlloc();
          LODWORD(v466) = v265;
          v267 = v266;
          v268 = swift_slowAlloc();
          v472 = v268;
          *v267 = 136315394;
          v269 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v270 = OpaqueMailboxID.description.getter(v269);
          v272 = v271;

          v273 = sub_1B0399D64(v270, v272, &v472);

          *(v267 + 4) = v273;
          *(v267 + 12) = 2048;
          v274 = MessageIdentifierSet.count.getter();
          sub_1B0398EFC(v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          *(v267 + 14) = v274;
          swift_bridgeObjectRelease_n();
          v96 = v470;
          v275 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v264, v466, v275, "PersistenceEvent.update.uploadMessagesWithChangedFlagAfterCopy", "mailbox %s, message count %ld", v267, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v268);
          MEMORY[0x1B272C230](v268, -1, -1);
          MEMORY[0x1B272C230](v267, -1, -1);

          (*(v259 + 8))(v261, v262);
          v154 = v461;
LABEL_64:
          sub_1B0398EFC(v154, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          goto LABEL_9;
        }

        sub_1B0398EFC(v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();

        (*(v259 + 8))(v261, v262);
        v403 = v257;
LABEL_88:
        sub_1B0398EFC(v403, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_99;
      case 0x12uLL:
        v341 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v342 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v343 = *(v342 + 16);
        if (v343)
        {
          v344 = *(v342 + 36);
          v345 = *(v342 + 40 * v343 - 4);
        }

        else
        {
          v345 = 0;
          v344 = 0;
        }

        v119 = v459;
        v419 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        LODWORD(v466) = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v420 = tracingSignposter.unsafeMutableAddressor();
        v118 = v438;
        v120 = v467;
        (*(v438 + 16))(v119, v420, v467);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v408 = sub_1B0E43858();
        LODWORD(v465) = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v421 = swift_slowAlloc();
          v422 = swift_slowAlloc();
          v464.i32[0] = v345;
          v423 = v344;
          v424 = v422;
          v474 = v422;
          *v421 = 141559299;
          *(v421 + 4) = 0x786F626C69616DLL;
          *(v421 + 12) = 2085;
          v472 = v341;
          v473 = v419;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v425 = sub_1B0E44BA8();
          v427 = sub_1B0399D64(v425, v426, &v474);

          *(v421 + 14) = v427;
          *(v421 + 22) = 2048;
          v428 = *(v342 + 16);

          *(v421 + 24) = v428;
          *(v421 + 32) = 1024;
          *(v421 + 34) = v423;
          *(v421 + 38) = 1024;
          *(v421 + 40) = v464.i32[0];
          *(v421 + 44) = 1024;
          *(v421 + 46) = v466;
          swift_bridgeObjectRelease_n();

          v96 = v470;
          v429 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v408, v465, v429, "PersistenceEvent.update.moveOrCopyMessages", "mailbox %{sensitive,mask.mailbox}s, moves count %ld, {%u %u}, isLast: %{BOOL}d", v421, 0x32u);
          __swift_destroy_boxed_opaque_existential_0(v424);
          MEMORY[0x1B272C230](v424, -1, -1);
          MEMORY[0x1B272C230](v421, -1, -1);

          (*(v118 + 8))(v459, v120);
          goto LABEL_9;
        }

LABEL_97:

        swift_bridgeObjectRelease_n();
        goto LABEL_98;
      case 0x13uLL:
        v400 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v401 = tracingSignposter.unsafeMutableAddressor();
        v278 = v438;
        v279 = v441;
        v280 = v467;
        (*(v438 + 16))(v441, v401, v467);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v281 = sub_1B0E43858();
        v282 = sub_1B0E45AE8();
        if ((sub_1B0E45D38() & 1) == 0)
        {
          goto LABEL_72;
        }

        v283 = swift_slowAlloc();
        *v283 = 134217984;
        *(v283 + 4) = *(v400 + 16);
        swift_bridgeObjectRelease_n();
        v96 = v470;
        v284 = sub_1B0E43818();
        v285 = "PersistenceEvent.update.setSearchRequests";
        goto LABEL_71;
      case 0x14uLL:
        v276 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v277 = tracingSignposter.unsafeMutableAddressor();
        v278 = v438;
        v279 = v442;
        v280 = v467;
        (*(v438 + 16))(v442, v277, v467);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v281 = sub_1B0E43858();
        v282 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v283 = swift_slowAlloc();
          *v283 = 134217984;
          *(v283 + 4) = *(v276 + 16);
          swift_bridgeObjectRelease_n();
          v96 = v470;
          v284 = sub_1B0E43818();
          v285 = "PersistenceEvent.update.setDownloadRequests";
LABEL_71:
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v281, v282, v284, v285, "count %ld", v283, 0xCu);
          MEMORY[0x1B272C230](v283, -1, -1);

          v106 = v468;
          v402 = v469;
        }

        else
        {
LABEL_72:

          swift_bridgeObjectRelease_n();
          v106 = v468;
          v402 = v469;
          v96 = v470;
        }

        (*(v278 + 8))(v279, v280);
        v105 = v402;
        return (*(v106 + 8))(v96, v105);
      case 0x15uLL:
        v293 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v294 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v295 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v296 = tracingSignposter.unsafeMutableAddressor();
        v118 = v438;
        v119 = v452;
        v120 = v467;
        (*(v438 + 16))(v452, v296, v467);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v121 = sub_1B0E43858();
        v297 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v298 = swift_slowAlloc();
          v299 = swift_slowAlloc();
          LODWORD(v466) = v297;
          v300 = v299;
          v474 = v299;
          *v298 = 141558531;
          *(v298 + 4) = 0x786F626C69616DLL;
          *(v298 + 12) = 2085;
          v472 = v293;
          v473 = v294;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v301 = sub_1B0E44BA8();
          v303 = sub_1B0399D64(v301, v302, &v474);

          *(v298 + 14) = v303;
          *(v298 + 22) = 2048;
          v304 = *(v295 + 16);

          *(v298 + 24) = v304;

          swift_bridgeObjectRelease_n();
          v96 = v470;
          v305 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v121, v466, v305, "PersistenceEvent.update.setUIDsForDownloadRequests", "mailbox %{sensitive,mask.mailbox}s, UID count %ld", v298, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v300);
          MEMORY[0x1B272C230](v300, -1, -1);
          MEMORY[0x1B272C230](v298, -1, -1);

          (*(v118 + 8))(v452, v120);
          goto LABEL_9;
        }

LABEL_74:

        swift_bridgeObjectRelease_n();
LABEL_98:
        swift_bridgeObjectRelease_n();
        (*(v118 + 8))(v119, v120);
        goto LABEL_99;
      case 0x16uLL:
        v393 = tracingSignposter.unsafeMutableAddressor();
        v394 = v438;
        v395 = v467;
        (*(v438 + 16))(v74, v393, v467);
        v396 = sub_1B0E43858();
        v397 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v398 = swift_slowAlloc();
          *v398 = 0;
          v96 = v470;
          v399 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v396, v397, v399, "PersistenceEvent.update.credentialsDidChange", "", v398, 2u);
          MEMORY[0x1B272C230](v398, -1, -1);

          (*(v394 + 8))(v74, v395);
          goto LABEL_9;
        }

        (*(v394 + 8))(v74, v395);
LABEL_99:
        v106 = v468;
        v105 = v469;
        v96 = v470;
        break;
      default:
        v88 = *(a2 + 16);
        v89 = *(a2 + 17);
        v90 = *(a2 + 18);
        v91 = *(a2 + 24);
        v92 = tracingSignposter.unsafeMutableAddressor();
        (*(v438 + 16))(v80, v92, v467);
        v93 = sub_1B0E43858();
        v94 = sub_1B0E45AE8();
        v95 = sub_1B0E45D38();
        v96 = v470;
        if (v95)
        {
          v97 = swift_slowAlloc();
          *v97 = 16778240;
          *(v97 + 4) = v88 + 1;
          *(v97 + 5) = 1024;
          *(v97 + 7) = v89 ^ 1;
          *(v97 + 11) = 1024;
          *(v97 + 13) = v90;
          *(v97 + 17) = 2048;
          *(v97 + 19) = v91;
          v98 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v93, v94, v98, "PersistenceEvent.update.environmentDidChange", "power %hhu, app visible %{BOOL}d, locked %{BOOL}d, thermals %ld", v97, 0x1Bu);
          MEMORY[0x1B272C230](v97, -1, -1);
        }

        (*(v438 + 8))(v80, v467);
        goto LABEL_9;
    }
  }

  else
  {
    v99 = tracingSignposter.unsafeMutableAddressor();
    (*(v29 + 16))(v82, v99, v28);
    v100 = sub_1B0E43858();
    v101 = sub_1B0E45AE8();
    v102 = sub_1B0E45D38();
    v96 = v470;
    if (v102)
    {
      v103 = swift_slowAlloc();
      *v103 = 67109120;
      *(v103 + 4) = a2;
      v104 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v100, v101, v104, "PersistenceEvent.actionDidComplete", "ID %u", v103, 8u);
      MEMORY[0x1B272C230](v103, -1, -1);
    }

    (*(v29 + 8))(v82, v28);
LABEL_9:
    v106 = v468;
    v105 = v469;
  }

  return (*(v106 + 8))(v96, v105);
}

uint64_t sub_1B0397D14()
{
  v1 = *(v0 + 64);
  v11 = MEMORY[0x1E69E7CD0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v4; result = sub_1B03FFC1C(&v10, *(*(v1 + 56) + ((v8 << 11) | (32 * v9)))))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v11;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0397E04(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v5 = *(a2 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      v6 = sub_1B0E46CB8() & ~(-1 << *(a2 + 32));
      if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
      {
        break;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0397EC0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UntaggedResponse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for State.Logger();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v66 - v16;
  v18 = a1 >> 62;
  if (a1 >> 62)
  {
    if (v18 == 1 && (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) & 1) != 0)
    {
      v19 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = (v19 >> 59) & 0x1E | (v19 >> 2) & 1;
      if (v20)
      {
        if (v20 == 19)
        {
          v75 = v15;
          v48 = *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B03906B8(a2, &v66 - v16, type metadata accessor for State.Logger);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v49 = sub_1B0E43988();
          LODWORD(v74) = sub_1B0E458C8();
          if (os_log_type_enabled(v49, v74))
          {
            v50 = swift_slowAlloc();
            v73 = v49;
            v51 = v50;
            *v50 = 68158208;
            *(v50 + 4) = 2;
            *(v50 + 8) = 256;
            LODWORD(v75) = v17[*(v75 + 20)];
            sub_1B0390514(v17, type metadata accessor for State.Logger);
            *(v51 + 10) = v75;
            *(v51 + 11) = 2048;
            *(v51 + 13) = v48[2];

            v52 = v73;
            _os_log_impl(&dword_1B0389000, v73, v74, "[%.*hhx] Setting %ld search requests.", v51, 0x15u);
            MEMORY[0x1B272C230](v51, -1, -1);
          }

          else
          {
            sub_1B0390514(v17, type metadata accessor for State.Logger);
          }

          if (*(v3 + 120))
          {
            v63 = *(v3 + 120);
          }

          else
          {
            v63 = sub_1B0BAB530(MEMORY[0x1E69E7CC0]);
          }

          v104[0] = v63;
          v104[1] = sub_1B0B87EC0;
          v104[2] = 0;
          v104[3] = sub_1B03AAF98;
          v104[4] = 0;
          v104[5] = sub_1B0B94AEC;
          v104[6] = 0;
          *&v93 = MEMORY[0x1E69E7CC8];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B8CA40(v104, 1, &v93);
          sub_1B0B28040(v48, v93);
        }

        else if (v20 == 2)
        {
          sub_1B03FDD40(*((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x20), *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x28), a2);
        }
      }

      else
      {
        v53 = v15;
        LODWORD(v75) = *(v19 + 16);
        v54 = *(v19 + 18);
        v70 = *(v19 + 17);
        v71 = v54;
        v74 = *(v19 + 24);
        LODWORD(v73) = *(v19 + 32);
        v72 = *(v19 + 40);
        sub_1B03906B8(a2, v14, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v55 = sub_1B0E43988();
        v68 = sub_1B0E45908();
        v69 = v55;
        if (os_log_type_enabled(v55, v68))
        {
          v56 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v76[0] = v67;
          *v56 = 68158210;
          *(v56 + 4) = 2;
          *(v56 + 8) = 256;
          v57 = v14[*(v53 + 20)];
          sub_1B0390514(v14, type metadata accessor for State.Logger);
          *(v56 + 10) = v57;
          *(v56 + 11) = 2082;
          LOBYTE(v93) = v75;
          BYTE1(v93) = v70;
          BYTE2(v93) = v71;
          *(&v93 + 1) = v74;
          LOBYTE(v94) = v73;
          *(&v94 + 1) = v72;
          v58 = sub_1B0E44BA8();
          v60 = sub_1B0399D64(v58, v59, v76);

          *(v56 + 13) = v60;
          v61 = v69;
          _os_log_impl(&dword_1B0389000, v69, v68, "[%.*hhx] Received environment update: %{public}s", v56, 0x15u);
          v62 = v67;
          __swift_destroy_boxed_opaque_existential_0Tm(v67);
          MEMORY[0x1B272C230](v62, -1, -1);
          MEMORY[0x1B272C230](v56, -1, -1);
        }

        else
        {
          sub_1B0390514(v14, type metadata accessor for State.Logger);
        }

        *(v3 + 24) = v75;
        v64 = v71;
        *(v3 + 25) = v70;
        *(v3 + 26) = v64;
        *(v3 + 32) = v74;
        *(v3 + 40) = v73;
        *(v3 + 48) = v72;
      }
    }
  }

  else
  {
    v21 = a1[3];
    if (v21 >> 60 == 6)
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *(v3 + 56);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      *(v3 + 56) = v22;
    }
  }

  v24 = *(v3 + 72);
  if (v24 == 2)
  {
    v25 = ServerID.empty.unsafeMutableAddressor();
    v27 = v25[1];
    v26 = v25[2];
    v93 = *v25;
    v94 = v27;
    v95 = v26;
    v28 = v25[6];
    v30 = v25[3];
    v29 = v25[4];
    v98 = v25[5];
    v99 = v28;
    v96 = v30;
    v97 = v29;
    v31 = v25[10];
    v33 = v25[7];
    v32 = v25[8];
    v102 = v25[9];
    v103 = v31;
    v100 = v33;
    v101 = v32;
    sub_1B039F420(&v93, v76);
    sub_1B039F4CC(MEMORY[0x1E69E7CD0], &v93, &v83);
    v24 = v83;
    v34 = v84;
    v35 = v85;
    v36 = v86 | (v87 << 16);
  }

  else
  {
    v36 = *(v3 + 112) | (*(v3 + 114) << 16);
    v34 = *(v3 + 80);
    v35 = *(v3 + 96);
  }

  v88 = v24;
  v89 = v34;
  v90 = v35;
  v91 = v36;
  v92 = BYTE2(v36);
  sub_1B0B2C294(a1, &v88, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 120), a2);
  result = sub_1B03A53FC(a1, a2);
  if (!v18)
  {
    v38 = a1[3];
    if (v38 >> 60 == 3)
    {
      v39 = a1[5];
      v40 = a1[6];
      v41 = swift_projectBox();
      sub_1B03906B8(v41, v9, type metadata accessor for UntaggedResponse);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v42 = *v9;
        v43 = *(v9 + 2);
        v44 = *(v9 + 6);
        v79 = *(v9 + 5);
        v80 = v44;
        v45 = *(v9 + 8);
        v81 = *(v9 + 7);
        v82 = v45;
        v46 = *(v9 + 2);
        v76[0] = *(v9 + 1);
        v76[1] = v46;
        v47 = *(v9 + 4);
        v77 = *(v9 + 3);
        v78 = v47;
        if (BYTE8(v76[0]) & 1) != 0 || (v77 & 1) != 0 || (BYTE8(v77))
        {

          return sub_1B0B11B9C(v76);
        }

        else
        {
          v65 = v42;
          sub_1B044CD04(v38);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B11B9C(v76);
          sub_1B0B368C4(v65, v43, (v3 + 168), v78, SBYTE8(v78));

          sub_1B044CEF8(v38);
        }
      }

      else
      {
        return sub_1B0390514(v9, type metadata accessor for UntaggedResponse);
      }
    }
  }

  return result;
}

uint64_t sub_1B039868C(unint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for State.Logger();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v48 - v13;
  if (a2)
  {
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 3uLL:
        v27 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        return sub_1B0B2A948(v27);
      case 5uLL:
        v28 = result;
        v29 = v3;
        v30 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v31 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v32 = sub_1B03B1374(v30, v31);

        sub_1B03B1BD0(a3, v11, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v33 = sub_1B0E43988();
        v34 = sub_1B0E45908();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 68158208;
          *(v35 + 4) = 2;
          *(v35 + 8) = 256;
          v36 = v11[*(v28 + 20)];
          sub_1B03B1DC0(v11, type metadata accessor for State.Logger);
          *(v35 + 10) = v36;
          *(v35 + 11) = 2048;
          *(v35 + 13) = *(v32 + 16);

          _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx] Updating mailbox priorities (%ld).", v35, 0x15u);
          MEMORY[0x1B272C230](v35, -1, -1);
        }

        else
        {
          sub_1B03B1DC0(v11, type metadata accessor for State.Logger);
        }

        v47 = *(v29 + 40);

        *(v29 + 40) = v32;
        return result;
      case 6uLL:
        v43 = a1 & 0xFFFFFFFFFFFFFFBLL;
        v44 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v45 = *(v43 + 24);
        MEMORY[0x1EEE9AC00](result);
        *(&v48 - 2) = a3;
        v46 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B25DE4(v46, v45, sub_1B0B37AD0);

      case 8uLL:
      case 0xCuLL:
      case 0x10uLL:
        v22 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 16);
        v23 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 24);
        goto LABEL_7;
      case 9uLL:
      case 0xAuLL:
      case 0x11uLL:
        v22 = swift_projectBox();
        v23 = v22 + 1;
LABEL_7:
        v24 = *v22;
        v25 = *v23;
        v26 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1EEE9AC00](v26);
        *(&v48 - 2) = a1;
        v18 = *v3;
        v20 = (v3 + 8);
        v19 = *(v3 + 8);
        v21 = *(v3 + 16);
        if ((*(v3 + 24) & 1) == 0)
        {
          goto LABEL_10;
        }

        v49 = *v3;
        sub_1B03B9A2C(v18, v19, v21, 1);
        sub_1B0B2AB20(&v49, v24, v25, 1, sub_1B0B37CA8);
        goto LABEL_9;
      case 0xDuLL:
      case 0xEuLL:
      case 0x12uLL:
        v15 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v16 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1EEE9AC00](v17);
        *(&v48 - 2) = a1;
        v18 = *v3;
        v20 = (v3 + 8);
        v19 = *(v3 + 8);
        v21 = *(v3 + 16);
        if (*(v3 + 24))
        {
          v49 = *v3;
          sub_1B03B9A2C(v18, v19, v21, 1);
          sub_1B0B2B484(&v49, v15, v16, 1, sub_1B0B37AD8);
LABEL_9:

          result = sub_1B03BB638(v18, v19, v21, 1);
          *v3 = v49;
          *v20 = 0;
          v20[1] = 0;
          *(v3 + 24) = 1;
        }

        else
        {
LABEL_10:
          sub_1B03B9A2C(v18, v19, v21, 0);
        }

        break;
      case 0x14uLL:
        v37 = result;
        v38 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B03B1BD0(a3, &v48 - v13, type metadata accessor for State.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v39 = sub_1B0E43988();
        v40 = sub_1B0E458C8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 68158208;
          *(v41 + 4) = 2;
          *(v41 + 8) = 256;
          v42 = v14[*(v37 + 20)];
          sub_1B03B1DC0(v14, type metadata accessor for State.Logger);
          *(v41 + 10) = v42;
          *(v41 + 11) = 2048;
          *(v41 + 13) = *(v38 + 16);

          _os_log_impl(&dword_1B0389000, v39, v40, "[%.*hhx] Setting %ld download requests.", v41, 0x15u);
          MEMORY[0x1B272C230](v41, -1, -1);
        }

        else
        {
          sub_1B03B1DC0(v14, type metadata accessor for State.Logger);
        }

        sub_1B0B284C8(v38, a3);

      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B0398D1C()
{
  v1 = *(v0 + 72);
  if (v1 == 2)
  {
    result = 3;
  }

  else
  {
    result = *(v0 + 81) + 1;
  }

  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 114);
  v6 = *(v0 + 112);
  v13 = *(v0 + 200);
  *v14 = *(v0 + 216);
  *&v14[12] = *(v0 + 228);
  v12 = *(v0 + 168);
  if (!*(*(v0 + 64) + 16) && (*(v0 + 137) & 1) == 0)
  {
    if ((*(v0 + 200) >> 64))
    {
      v7 = (v12 + 176);
      v8 = *(v12 + 16) + 1;
      while (--v8)
      {
        v9 = *v7;
        v7 += 22;
        if (*(v9 + 16))
        {
          return result;
        }
      }
    }

    v10 = result;
    v11 = *(sub_1B0398E54() + 16);

    if (((v11 == 0) & v4) == 1)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_1B0398E54()
{
  result = MEMORY[0x1E69E7CD0];
  if (v0[3])
  {
    v2 = *v0;
    v8 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 184;
      do
      {
        if (*(*v4 + 16))
        {
          v5 = *(v4 - 128);
          v6 = *(v4 - 136);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v7, v6, v5);
        }

        v4 += 176;
        --v3;
      }

      while (v3);
      return v8;
    }
  }

  return result;
}

uint64_t sub_1B0398EFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B0398F64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = sub_1B0E46548() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = MEMORY[0x1EEE9AC00](v23);
    v16 = v29;
    v17 = v11;
    sub_1B0394C3C(v10, sub_1B0399430, v15, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v13, MEMORY[0x1E69E7CA8]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_1B0399178(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B0394BAC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B03991EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B0394874();
  v5 = MEMORY[0x1E69E7668];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B0399260(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B039A4F8();
  v5 = MEMORY[0x1E69E6530];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B03992D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B06BCD98();
  v5 = MEMORY[0x1E69E7360];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B0399348(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B06D4E14();
  v5 = MEMORY[0x1E69E75F8];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B03993BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B0694488();
  v5 = MEMORY[0x1E69E76D8];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_1B0399430()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B0394E04();
}

uint64_t sub_1B03994F0(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1B06BCAAC(v22, v17, v16);
        sub_1B0E45EB8();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1B03B7980(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1B0E46368();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1B0E465A8();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03998A8(uint64_t result)
{
  if (result)
  {
    sub_1B0E45D68();
    return sub_1B0E45D58();
  }

  return result;
}

uint64_t sub_1B0399938()
{
  LOWORD(v2) = *(v0 + 16);
  BYTE2(v2) = *(v0 + 18);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return sub_1B0399984(v2);
}

uint64_t sub_1B0399984(int a1)
{
  LOWORD(v2) = a1;
  BYTE2(v2) = BYTE2(a1);
  return v2;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B03999F4()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return Environment.description.getter(v2 | v3, *(v0 + 1), v0[16]);
}

uint64_t Environment.description.getter(int a1, uint64_t a2, unsigned __int8 a3)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v5 = 0xE800000000000000;
        v6 = 0x6C61636974697263;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = 0xE700000000000000;
    v6 = 0x73756F69726573;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v5 = 0xE400000000000000;
        v6 = 1919508838;
        goto LABEL_11;
      }

LABEL_8:
      v6 = sub_1B0E469C8();
      v5 = v7;
      goto LABEL_11;
    }

    v5 = 0xE700000000000000;
    v6 = 0x6C616E696D6F6ELL;
  }

LABEL_11:
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0x203A7265776F70, 0xE700000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x7265747461426E6FLL;
    }

    else
    {
      v8 = 0x4964656767756C70;
    }

    if (a1 == 1)
    {
      v9 = 0xE900000000000079;
    }

    else
    {
      v9 = 0xE90000000000006ELL;
    }
  }

  else
  {
    v8 = 0x7265776F50776F6CLL;
    v9 = 0xE800000000000000;
  }

  MEMORY[0x1B2726E80](v8, v9);

  MEMORY[0x1B2726E80](8236, 0xE200000000000000);
  if ((a1 & 0x100) != 0)
  {
    v10 = 0x756F72676B636162;
  }

  else
  {
    v10 = 0x656C6269736976;
  }

  if ((a1 & 0x100) != 0)
  {
    v11 = 0xEC0000006465646ELL;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  MEMORY[0x1B2726E80](v10, v11);

  MEMORY[0x1B2726E80](8236, 0xE200000000000000);
  if ((a1 & 0x10000) != 0)
  {
    v12 = 0x64656B636F6CLL;
  }

  else
  {
    v12 = 0x64656B636F6C6E75;
  }

  if ((a1 & 0x10000) != 0)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  MEMORY[0x1B2726E80](v12, v13);

  MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F2F090);
  MEMORY[0x1B2726E80](v6, v5);

  MEMORY[0x1B2726E80](0x73206B736964202CLL, 0xEE00203A65636170);
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 0x80000001B0F2F040;
      v15 = 0xD00000000000001DLL;
    }

    else
    {
      v14 = 0xE800000000000000;
      v15 = 0x746E61646E756261;
    }
  }

  else if (a3)
  {
    v14 = 0x80000001B0F2F060;
    v15 = 0xD000000000000022;
  }

  else
  {
    v14 = 0xE300000000000000;
    v15 = 7827308;
  }

  MEMORY[0x1B2726E80](v15, v14);

  return 0;
}

uint64_t sub_1B0399D64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B03994F0(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1B039AEC8(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1B039AEC8(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t sub_1B0399F08(char a1)
{
  swift_beginAccess();
  v1 = sub_1B039AA00();
  sub_1B0399F8C(a1 & 1, v1);
  return swift_endAccess();
}

uint64_t sub_1B0399F8C(uint64_t result, uint64_t a2)
{
  if (*(v2 + 8))
  {
    if (result)
    {
      *v3 = a2;
      *(v3 + 8) = 0;
    }
  }

  else if ((result & 1) == 0)
  {
    *v3 = 0;
    *(v3 + 8) = 1;
  }

  return result;
}

uint64_t sub_1B039A040(uint64_t a1)
{
  v4 = swift_allocObject();

  swift_weakInit();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = a1;
  sub_1B039A170(sub_1B039D3F4, v3);
}

uint64_t sub_1B039A128()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B039A170(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v16 = sub_1B039CA7C;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v23 = sub_1B0E44468();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v19 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = (v10 - v19);
  v28 = MEMORY[0x1EEE9AC00](v18);
  v29 = v3;
  v27 = v2;

  v20 = *(v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v20);
  v4 = v21;
  *v24 = v20;
  v5 = *MEMORY[0x1E69E8020];
  (*(v4 + 104))();
  v25 = sub_1B0E44488();
  (*(v21 + 8))(v24, v23);
  result = v25;
  if (v25)
  {

    v10[0] = v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes;
    v10[1] = &v26;
    v10[2] = 32;
    swift_beginAccess();
    v14 = *v10[0];

    swift_endAccess();
    v13 = *(v15 + 112);
    MEMORY[0x1E69E5928](v13);
    v12 = *(v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
    MEMORY[0x1E69E5928](v12);

    v7 = swift_allocObject();
    v8 = v17;
    v11 = v7;
    *(v7 + 16) = v18;
    *(v7 + 24) = v8;
    v9 = sub_1B039AA00();
    sub_1B039AF3C(v13, v9, v12, v16, v11);

    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B039A404()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1B039A494()
{
  v2 = qword_1EB6DA5B0;
  if (!qword_1EB6DA5B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B039A4F8()
{
  v2 = qword_1EB6DEE30;
  if (!qword_1EB6DEE30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039A570@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v36 = v17 - v32;
  sub_1B039A874(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      return v17[0];
    }
  }

  return result;
}

void *sub_1B039A874(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t *sub_1B039A984@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*result <= 0)
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v2 = *result;
    v3 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B039AA18()
{
  v6 = *(v0 + 112);
  MEMORY[0x1E69E5928](v6);
  v7 = sub_1B039AB2C();
  v8 = v1;
  MEMORY[0x1E69E5920](v6);
  result = v7;
  if ((v8 & 1) == 0)
  {
    v3 = (v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
    swift_beginAccess();
    v4 = *v3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B039A040(v4);
  }

  return result;
}

id sub_1B039AB2C()
{
  v28[4] = 0;
  v20 = 0;
  v21 = 0;
  v14 = 0;
  v13 = 0;
  MEMORY[0x1E69E5928](@"NumberOfDaysToKeepTrash");
  sub_1B0E44AD8();
  v10 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](@"NumberOfDaysToKeepTrash");
  v11 = [v9 _objectForAccountInfoKey_];
  MEMORY[0x1E69E5920](v10);
  if (v11)
  {
    sub_1B0E45FE8();
    sub_1B0392800(v12, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v26, 0, sizeof(v26));
    v27 = 0;
  }

  if (v27)
  {
    sub_1B0392800(v26, v28);
    sub_1B039AEC8(v28, v25);
    sub_1B039A494();
    if (swift_dynamicCast())
    {
      v7 = v24;
      v14 = v24;
      v8 = [v24 integerValue];
      v13 = v8;
      if (v8 <= 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = v8;
      }

      MEMORY[0x1E69E5920](v7);
      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v28);
      return v6;
    }

    else if (swift_dynamicCast())
    {
      v20 = v22;
      v21 = v23;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039A4F8();
      v3 = MEMORY[0x1E69E6530];
      sub_1B0E46598();
      v15 = v17;
      v16 = v18 & 1;
      v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CE8, &qword_1B0E9B0E8);
      sub_1B039A570(sub_1B039A984, 0, v0, MEMORY[0x1E69E73E0], v3, v4, &v19);
      v2 = v19;

      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v28);
      return v2;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v28);
      return 0;
    }
  }

  else
  {
    sub_1B041C0EC(v26);
    return 0;
  }
}

uint64_t sub_1B039AEC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B039AF3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v39 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v29 = sub_1B0A21088;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v47 = 0;
  v48 = 0;
  v30 = 0;
  v31 = sub_1B0E44238();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = &v16 - v34;
  v40 = sub_1B0E44288();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v16 - v43;
  v61 = v6;
  v60 = v7;
  v59 = v8;
  v57 = v9;
  v58 = v10;
  v56 = v5;
  MEMORY[0x1E69E5928](v6);
  v46 = [v45 identifier];
  if (v46)
  {
    v28 = v46;
    v23 = v46;
    v24 = sub_1B0E44AD8();
    v25 = v11;
    MEMORY[0x1E69E5920](v23);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v21 = v27;
  v22 = v26;
  if (v27)
  {
    v19 = v22;
    v20 = v21;
    v18 = v21;
    v17 = v22;
    v47 = v22;
    v48 = v21;
    MEMORY[0x1E69E5920](v45);
    sub_1B039B3DC(v17, v18, v39, v36, v37, v38);
  }

  else
  {
    MEMORY[0x1E69E5920](v45);

    v13 = swift_allocObject();
    v14 = v38;
    v15 = v29;
    *(v13 + 16) = v37;
    *(v13 + 24) = v14;
    v54 = v15;
    v55 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = 0;
    v52 = sub_1B038C908;
    v53 = &block_descriptor_18;
    v16 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v44, v35, v16);
    (*(v32 + 8))(v35, v31);
    (*(v41 + 8))(v44, v40);
    _Block_release(v16);
  }
}

uint64_t sub_1B039B38C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B039B3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = sub_1B039EACC;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v33 = 0;
  v37 = sub_1B0E44238();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v23 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = &v23 - v23;
  v41 = sub_1B0E44288();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v24 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v32);
  v40 = &v23 - v24;
  v56 = v7;
  v57 = v8;
  v55 = v9;
  v54 = v10;
  v52 = v11;
  v53 = v12;
  v51 = v6;
  v43 = *(v6 + 48);
  MEMORY[0x1E69E5928](v43);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v28);

  v13 = swift_allocObject();
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v20 = v13;
  v21 = v32;
  v20[2] = v25;
  v20[3] = v21;
  v20[4] = v14;
  v20[5] = v15;
  v20[6] = v16;
  v20[7] = v17;
  v20[8] = v18;
  v49 = v19;
  v50 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = 0;
  v47 = sub_1B038C908;
  v48 = &block_descriptor_9_2;
  v42 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v33, v40, v36, v42);
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  _Block_release(v42);

  return MEMORY[0x1E69E5920](v43);
}

uint64_t sub_1B039B71C()
{
  v1 = v0[2];

  v2 = v0[4];

  MEMORY[0x1E69E5920](v0[6]);
  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1B039B77C()
{
  sub_1B039B834(0);
  sub_1B0E44238();
  sub_1B039B924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039B9A4();
  return sub_1B0E460A8();
}

uint64_t sub_1B039B834(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_1B0E44238();
      v3 = sub_1B0E45278();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1B0E44238();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

unint64_t sub_1B039B924()
{
  v2 = qword_1EB6DEE50;
  if (!qword_1EB6DEE50)
  {
    sub_1B0E44238();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B039B9A4()
{
  v2 = qword_1EB6DEE20;
  if (!qword_1EB6DEE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039BA2C()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  return sub_1B039BB08(v2);
}

uint64_t sub_1B039BA4C@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B039BA94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B039BB1C();
  v5 = MEMORY[0x1E69E7508];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B039BB1C()
{
  v2 = qword_1EB6DA360;
  if (!qword_1EB6DA360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA360);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039BBAC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B039BBE8()
{
  LOBYTE(v2) = *(v0 + 16);
  HIDWORD(v2) = *(v0 + 20);
  return sub_1B039BC3C(v2);
}

void *sub_1B039BC50(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_1B0399D64(v4, v5, a3);
  v8 = *a1;

  sub_1B0E45E48();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_7_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t mailboxUIDTypeFromECMailboxType(uint64_t a1)
{
  v1 = -500;
  if (a1 == 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = -500;
  }

  if (a1 == 7)
  {
    v2 = 7;
  }

  if (a1 == 6)
  {
    v2 = 6;
  }

  if (a1 == 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = -500;
  }

  if (a1 == 4)
  {
    v3 = 4;
  }

  if (a1 <= 5)
  {
    v2 = v3;
  }

  if (a1 == 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = -500;
  }

  if (a1 == 2)
  {
    v4 = 2;
  }

  if (a1 == 1)
  {
    v4 = 1;
  }

  if (!a1)
  {
    v1 = 0;
  }

  if (a1 == -100)
  {
    v1 = -100;
  }

  if (a1 > 0)
  {
    v1 = v4;
  }

  if (a1 <= 3)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B039BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  v19 = 0;
  v17 = a1;
  v14 = a1;
  sub_1B039C030(&v14, sub_1B03B1F98, 0, MEMORY[0x1E69E7360], MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], a8, &v15);
  v10 = v15;
  v11 = v16;
  sub_1B03B2000(v15, v16);
  v13 = OpaqueMailboxID.init(_:)(v10, v11);
  v12 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = v13;
  v19 = v12;
  sub_1B0391D50(v10, v11);
  sub_1B039E440(&v18);
  return v13;
}

uint64_t sub_1B039C030@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1B039C1F8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);

  v3(a1);
  sub_1B0390678(a1, 1);
}

uint64_t sub_1B039C290(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_1B039C754();
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v54 = result;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v10 = v3;
LABEL_8:
      v11 = *(v54 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8))));
      v12 = *v11;
      v55 = *(v11 + 8);
      memcpy(v60, __src, sizeof(v60));
      v13 = LOBYTE(v60[3]);
      v14 = BYTE1(v60[3]);
      v15 = v60[4];
      v53 = LOBYTE(v60[5]);
      v16 = BYTE2(v60[2]);
      v17 = v60[7];
      v52 = v60[6];
      v57 = v12;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = sub_1B0397D14();
      v19 = v18;
      v59 = v16;
      if (v15 != 3 && v15 != 2)
      {
        break;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0x100000000000000;
      v23 = 0x100000000;
      v24 = 1;
      v25 = 512;
      v26 = 0x1000000;
      v27 = v57;
LABEL_82:
      v8 &= v8 - 1;
      if (v60[24])
      {
        v42 = v60[22];
        v41 = v60[23];
        v43 = v60[21];
        v58 = v60[21];
        if (v59)
        {
          v44 = 0x1000000000000;
        }

        else
        {
          v44 = 0;
        }

        v45 = v20 | v25 | v24 | v26 | v23 | v21 | v22;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B2BAD4(&v58, v27, v55, 0, a1 & 0x101010101FFFF01, v45 | v44);

        result = sub_1B03BB638(v43, v42, v41, 1);
        v46 = v58;
        *(__src + 22) = 0;
        *(__src + 23) = 0;
        *(__src + 21) = v46;
        *(__src + 192) = 1;
        v3 = v10;
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      else
      {

        v3 = v10;
        if (!v8)
        {
          goto LABEL_5;
        }
      }
    }

    v28 = sub_1B0BAE1A4(v18);
    if ((v14 & 1) == 0)
    {
      if (v15 == 1)
      {
        if (v13)
        {
          if (v13 == 1)
          {
            v29 = 0;
            v30 = 0x100000000;
            v31 = 512;
LABEL_91:
            v47 = v31;
            goto LABEL_26;
          }

LABEL_90:
          v29 = 0;
          v30 = 0;
          v13 = 1;
          v31 = 256;
          goto LABEL_91;
        }
      }

      else if (!v15 && v13)
      {
        if (v13 != 1)
        {
          v13 = 0;
          v47 = 0;
          v29 = 0;
          v30 = 0;
          goto LABEL_26;
        }

        goto LABEL_90;
      }
    }

    v13 = (v28 & 1) == 0;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = 0x100000000;
    }

    v32 = 512;
    if (v28)
    {
      v32 = 0;
    }

    v47 = v32;
    v29 = (v28 & 1) == 0;
LABEL_26:
    v33 = sub_1B0397E04(&unk_1F2710548, v17);
    if (v33)
    {
      v34 = v13;
    }

    else
    {
      v34 = 1;
    }

    v35 = (v33 & 1) == 0 || v29;
    v48 = v35;
    v49 = v34;
    v50 = sub_1B0BAE1A4(v19);
    v36 = sub_1B039109C(v17);

    v37 = v36 ^ 1;
    if (v36 & 1) == 0 && (v14)
    {
      v37 = sub_1B0BAE1A4(v19);
      v36 = v37 ^ 1;
    }

    v38 = *(v19 + 16);

    v39 = (v38 == 0) & v14;
    if (v53 <= 1)
    {
      v23 = v30;
      if (v53)
      {
        v20 = 0;
        v26 = 0;
        v25 = v47;
        if (v52 >= 3989)
        {
          v25 = 512;
        }

        v40 = v39 == 0;
        v22 = 0x100000000000000;
        if (v40)
        {
          v22 = 0;
        }

        LODWORD(v24) = v49;
        v21 = 0x10000000000;
        if ((v50 & 1) == 0)
        {
          v21 = 0;
        }

        v27 = v57;
        if ((v48 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v20 = 0;
        v40 = v39 == 0;
        v22 = 0x100000000000000;
        if (v40)
        {
          v22 = 0;
        }

        v21 = 0x10000000000;
        if ((v50 & 1) == 0)
        {
          v21 = 0;
        }

        LODWORD(v24) = 1;
        v25 = 512;
        v27 = v57;
      }

      goto LABEL_77;
    }

    v23 = v30;
    if (v53 == 2)
    {
      v20 = 0x10000;
      if ((v37 & 1) == 0)
      {
        v20 = 0;
      }

      if ((v36 & 1) == 0)
      {
        v20 = 0x20000;
      }

      v25 = v47;
      if (v52 >= 3989)
      {
        v25 = 512;
      }

      v40 = v39 == 0;
      v22 = 0x100000000000000;
      if (v40)
      {
        v22 = 0;
      }

      v21 = 0x10000000000;
      if ((v50 & 1) == 0)
      {
        v21 = 0;
      }

      if (v48)
      {
        v27 = v57;
LABEL_76:
        LODWORD(v24) = v49;
LABEL_77:
        v26 = 0x1000000;
LABEL_81:
        v24 = v24;
        goto LABEL_82;
      }

      v26 = 0;
      v27 = v57;
    }

    else
    {
      v20 = 0x10000;
      if ((v37 & 1) == 0)
      {
        v20 = 0;
      }

      v25 = v47;
      if (v52 >= 3989)
      {
        v25 = 512;
      }

      v40 = v39 == 0;
      v22 = 0x100000000000000;
      if (v40)
      {
        v22 = 0;
      }

      v21 = 0x10000000000;
      if ((v50 & 1) == 0)
      {
        v21 = 0;
      }

      v27 = v57;
      if (v48)
      {
        goto LABEL_76;
      }

      v26 = 0;
    }

    LODWORD(v24) = v49;
    goto LABEL_81;
  }

  while (1)
  {
LABEL_5:
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1B039C754()
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v10 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 128);
      v5 = v4;
      do
      {
        v6 = *v5;
        v5 += 22;
        if (v6)
        {
          v7 = *(v4 - 18);
          v8 = *(v4 - 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v9, v8, v7);
        }

        v4 = v5;
        --v3;
      }

      while (v3);
      return v10;
    }
  }

  return result;
}

uint64_t sub_1B039C7FC(uint64_t a1, void *a2)
{
  memcpy(v10, a2, sizeof(v10));
  v11 = v10[32];
  v3 = BYTE1(v10[3]);
  v4 = v10[4];
  v5 = v10[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0397D14();
  v7 = v6;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
  }

  else
  {
    sub_1B0BAE1A4(v6);
    sub_1B0397E04(&unk_1F2710548, v5);
    sub_1B0BAE1A4(v7);
    v8 = sub_1B039109C(v5);

    if (v8 & 1) == 0 && (v3)
    {
      sub_1B0BAE1A4(v7);
    }
  }

  result = sub_1B0398EFC(&v11, &qword_1EB6E18F0, qword_1B0E99F10);
  a2[32] = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1B039C900(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_1B039C970(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3460, &qword_1B0EA1F70);
  v2 = sub_1B039D36C();
  v7 = sub_1B039CA88(sub_1B09C1DF8, 0, v5, &type metadata for OpaqueMailboxID, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v6);

  a2(v7);
}

uint64_t sub_1B039CA88(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v62 = a3;
  v52 = a4;
  v39 = a5;
  v61 = a6;
  v41 = a8;
  v42 = "Fatal error";
  v43 = "Range requires lowerBound <= upperBound";
  v44 = "Swift/Range.swift";
  v45 = "Index out of range";
  v46 = "invalid Collection: count differed in successive traversals";
  v47 = "Swift/ArrayShared.swift";
  v72[3] = a3;
  v72[2] = a4;
  v72[1] = a5;
  v48 = *(a5 - 8);
  v49 = a5 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v18 - v50;
  v9 = *(v8 + 8);
  v53 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v18 - v57;
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v18 - v59;
  v63 = swift_getAssociatedTypeWitness();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v18 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v18 - v68;
  v70 = sub_1B0E45698();
  if (!v70)
  {
    goto LABEL_24;
  }

  v72[0] = sub_1B0E46488();
  v36 = sub_1B0E46498();
  sub_1B0E463E8();
  result = sub_1B0E45668();
  if (v70 < 0)
  {
    sub_1B0E465A8();
    __break(1u);
LABEL_24:
    v20 = sub_1B0E45258();
    v21 = v40;
    return v20;
  }

  if (!v70)
  {
LABEL_19:
    v26 = v40;
LABEL_20:
    v22 = v26;
    sub_1B0E456C8();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = sub_1B0E44A28();
    v23 = *(v64 + 8);
    v24 = v64 + 8;
    v23(v67, v63);
    if ((v25 & 1) == 0)
    {
      sub_1B0E466C8();
      __break(1u);
    }

    v23(v69, v63);
    v19 = v72[0];

    v20 = v19;
    v21 = v22;
    return v20;
  }

  v34 = 0;
  for (i = v40; ; i = v30)
  {
    v32 = i;
    v33 = v34;
    if (v34 < 0 || v33 >= v70)
    {
      goto LABEL_18;
    }

    if (v70 < 0)
    {
      sub_1B0E465A8();
      __break(1u);
LABEL_18:
      sub_1B0E466C8();
      __break(1u);
      goto LABEL_19;
    }

    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v29 = &v71;
    v28 = sub_1B0E457B8();
    (*(v55 + 16))(v58);
    v28();
    v16 = v32;
    v37(v58, v51);
    v30 = v16;
    if (v16)
    {
      (*(v55 + 8))(v58, AssociatedTypeWitness);
      (*(v64 + 8))(v69, v63);
      sub_1B0391AD4(v72);
      (*(v48 + 32))(v41, v51, v39);
      return v27;
    }

    (*(v55 + 8))(v58, AssociatedTypeWitness);
    sub_1B0E46468();
    sub_1B0E456D8();
    if (v31 == v70)
    {
      v26 = v30;
      goto LABEL_20;
    }

    result = v30;
    v34 = v31;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B039D36C()
{
  v2 = qword_1EB6DB2A8;
  if (!qword_1EB6DB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3460, &qword_1B0EA1F70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039D400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[6] = a1;
  v6[5] = a2 + 16;
  v6[4] = a3;
  swift_beginAccess();
  v6[0] = swift_weakLoadStrong();
  if (v6[0])
  {

    sub_1B0391AD4(v6);
    swift_endAccess();
    sub_1B039D4D0(a3, a1);
  }

  else
  {
    sub_1B0391AD4(v6);
    return swift_endAccess();
  }
}

uint64_t *sub_1B039D4D0(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v32 = a2;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v38 = sub_1B0E44468();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = (&v9 - v34);
  v47 = MEMORY[0x1EEE9AC00](v33);
  v46 = v3;
  v45 = v2;

  v35 = *(v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v35);
  v4 = v36;
  *v39 = v35;
  v5 = *MEMORY[0x1E69E8020];
  (*(v4 + 104))();
  v40 = sub_1B0E44488();
  (*(v36 + 8))(v39, v38);
  result = v40;
  if (v40)
  {

    v30 = v31 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment;
    swift_beginAccess();
    if ((*v30 & 0xFF00) == 0x200)
    {
      swift_endAccess();
      v29 = 2;
    }

    else
    {
      v28 = *(v30 + 1);
      swift_endAccess();
      v29 = v28 & 1;
    }

    v27 = v29;
    if (v29 == 2)
    {
      goto LABEL_15;
    }

    v26 = v27;
    if (v26)
    {
      goto LABEL_15;
    }

    v23 = *(v31 + 112);
    MEMORY[0x1E69E5928](v23);
    v24 = sub_1B039AB2C();
    v25 = v7;
    MEMORY[0x1E69E5920](v23);
    v41 = v24;
    v42 = v25 & 1;
    v22 = (v25 & 1) == 0;
    if (v25)
    {
LABEL_15:
      v43 = 0;
      v44 = 0;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v20 = *(v31 + 112);
      MEMORY[0x1E69E5928](v20);
      v21 = [v20 mailboxForType_];
      MEMORY[0x1E69E5920](v20);
      if (v21)
      {
        v19 = v21;
        v14 = v21;
        v15 = sub_1B039BEE0();
        v16 = v8;
        MEMORY[0x1E69E5920](v14);
        v17 = v15;
        v18 = v16;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v11 = v18;
      v10 = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = v10;
      v44 = v11;
      v12 = v10;
      v13 = v11;
    }

    v9 = v12;
    sub_1B03B21F8(v33, v32, v12, v13);

    return sub_1B039E440(&v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Engine.persistenceDidSend(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1B0E44238();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B0E44288();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v3 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = a1;
  v16 = a2 & 1;
  *(v15 + 32) = a2 & 1;
  aBlock[4] = sub_1B039F2E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_9_4;
  v17 = _Block_copy(aBlock);

  sub_1B0390664(a1, v16);
  sub_1B0E44258();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B039E4B4(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039E3F8(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B0E460A8();
  MEMORY[0x1B2727B00](0, v14, v10, v17);
  _Block_release(v17);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_1B039E3B4()
{
  v1 = *(v0 + 16);

  sub_1B0390678(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1B039E3F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *sub_1B039E440(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B039E46C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B039E4B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B039E4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v43 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v27 = sub_1B039C8F0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v60 = 0;
  v33 = 0;
  v28 = sub_1B0E44238();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v32 = &v21 - v31;
  v34 = sub_1B0E44288();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v21 - v37;
  v49 = sub_1B0E44468();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v45 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v44);
  v50 = (&v21 - v45);
  v66 = v7;
  v67 = v8;
  v65 = v9;
  v64 = v10;
  v62 = v11;
  v63 = v12;
  v61 = v6;

  v46 = *(v6 + 48);
  MEMORY[0x1E69E5928](v46);
  v13 = v47;
  *v50 = v46;
  v14 = *MEMORY[0x1E69E8020];
  (*(v13 + 104))();
  v51 = sub_1B0E44488();
  (*(v47 + 8))(v50, v49);
  result = v51;
  if (v51)
  {

    if (sub_1B039EB7C(v39))
    {
      sub_1B0A212AC(v44, v43, v40, v41, v42);
      v23 = &v52;
      swift_beginAccess();
      v24 = *(v26 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3860, &unk_1B0EA2E80);
      v25 = sub_1B0E452A8();

      result = v25;
      if (v25 == 1)
      {
        return sub_1B0A21444(v39);
      }
    }

    else
    {
      v22 = sub_1B039ED78(v44, v43);
      v60 = v22;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v16 = swift_allocObject();
      v17 = v42;
      v18 = v27;
      v19 = v16;
      v20 = v22;
      v19[2] = v41;
      v19[3] = v17;
      v19[4] = v20;
      v58 = v18;
      v59 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = 0;
      v56 = sub_1B038C908;
      v57 = &block_descriptor_15_0;
      v21 = _Block_copy(&aBlock);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](0, v38, v32, v21);
      (*(v29 + 8))(v32, v28);
      (*(v35 + 8))(v38, v34);
      _Block_release(v21);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B039EA84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B039EB7C(uint64_t a1)
{
  v12 = a1;
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v17 = sub_1B0E44468();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v13 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (&v6 - v13);
  v23 = MEMORY[0x1EEE9AC00](v12);
  v22 = v1;

  v14 = *(v1 + 48);
  MEMORY[0x1E69E5928](v14);
  v2 = v15;
  *v18 = v14;
  v3 = *MEMORY[0x1E69E8020];
  (*(v2 + 104))();
  v19 = sub_1B0E44488();
  (*(v15 + 8))(v18, v17);
  result = v19;
  if (v19)
  {

    v8 = &v21;
    swift_beginAccess();
    v9 = *(v11 + 24);
    v10 = *(v11 + 32);
    swift_endAccess();
    HIDWORD(v6) = (v10 & 1) != 0 || (v7 = v9, v20 = v9, MonotonicTime.seconds(since:)(v9, v12), v5 >= *(v11 + 88));
    return BYTE4(v6) & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B039ED78(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v7 = v2;
  swift_beginAccess();
  v5 = *(v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v6 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E38C0, &qword_1B0EA2EE0);
  sub_1B039EEE8();
  v4 = sub_1B0E44F58();

  sub_1B039E440(&v6);
  return v4;
}

uint64_t MonotonicTime.seconds(since:)(uint64_t result, uint64_t a2)
{
  v2 = __OFSUB__(a2, result);
  if (a2 < result)
  {
    if (__OFSUB__(result, a2))
    {
      __break(1u);
      goto LABEL_9;
    }

    v2 = __OFSUB__(0, result - a2);
    if (!v2)
    {
      return result;
    }

    __break(1u);
  }

  if (v2)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B039EEE8()
{
  v2 = qword_1EB6DB268;
  if (!qword_1EB6DB268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E38C0, &qword_1B0EA2EE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB268);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B039EF70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B039F088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_13_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B039F2E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  return sub_1B0C45A44(v1, v2);
}

uint64_t sub_1B039F32C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B039F310(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__int128 *ServerID.empty.unsafeMutableAddressor()
{
  if (qword_1EB6DD0B8 != -1)
  {
    swift_once();
  }

  return &static ServerID.empty;
}

uint64_t sub_1B039F4CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = Capability.move.unsafeMutableAddressor();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B039F8EC(v7, v8, v9, v10, a1);

  v12 = Capability.gmailExtensions.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = *(v12 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B039F8EC(v13, v14, v15, v16, a1);

  v18 = Capability.condStore.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = *(v18 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v19) = sub_1B039F8EC(v19, v20, v21, v22, a1);

  if (v19)
  {
    v76 = 0;
    v23 = a2[9];
    if (!v23)
    {
LABEL_12:
      v75 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v24 = Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor();
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = *(v24 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v25) = sub_1B039F8EC(v25, v26, v27, v28, a1);

    if (v25)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v76 = v29;
    v23 = a2[9];
    if (!v23)
    {
      goto LABEL_12;
    }
  }

  if ((a2[8] != 0x4920216F6F686159 || v23 != 0xEB000000002E636ELL) && (sub_1B0E46A78() & 1) == 0)
  {
    goto LABEL_12;
  }

  v75 = 1;
LABEL_13:
  v74 = (v17 & 1) == 0;
  v73 = (v11 & 1) == 0;
  v30 = Capability.partial.unsafeMutableAddressor();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = *(v30 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v31) = sub_1B039F8EC(v31, v32, v33, v34, a1);

  v35 = Capability.extendedSearch.unsafeMutableAddressor();
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v39 = *(v35 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v36) = sub_1B039F8EC(v36, v37, v38, v39, a1);

  v72 = (v31 & 1) == 0;
  v71 = (v36 & 1) == 0;
  v40 = Capability.namespace.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  LOBYTE(v38) = *(v40 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v41) = sub_1B039F8EC(v41, v42, v43, v38, a1);

  v70 = (v41 & 1) == 0;
  v44 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v69 = sub_1B039FC78(v44);
  v45 = Capability.specialUse.unsafeMutableAddressor();
  v46 = *v45;
  v47 = v45[1];
  v48 = v45[2];
  v49 = *(v45 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v46) = sub_1B039F8EC(v46, v47, v48, v49, a1);

  v68 = (v46 & 1) == 0;
  v67 = sub_1B039FE38(a2);
  v50 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51 = sub_1B039FF68(v50);
  v78 = v52 & 1;
  v53 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v54 = sub_1B03A0454(v53);
  v77 = v55 & 1;
  v56 = Capability.idle.unsafeMutableAddressor();
  v57 = *v56;
  v58 = v56[1];
  v59 = v56[2];
  v60 = *(v56 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v57) = sub_1B039F8EC(v57, v58, v59, v60, a1);

  LOBYTE(v41) = (v57 & 1) == 0;
  v61 = Capability.uidBatches.unsafeMutableAddressor();
  v62 = *v61;
  v63 = v61[1];
  v64 = v61[2];
  v65 = *(v61 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v62) = sub_1B039F8EC(v62, v63, v64, v65, a1);

  *a3 = v73;
  *(a3 + 1) = v74;
  *(a3 + 2) = v76;
  *(a3 + 3) = v75;
  *(a3 + 4) = v72;
  *(a3 + 5) = v71;
  *(a3 + 6) = v70;
  *(a3 + 7) = v69;
  *(a3 + 8) = v68;
  *(a3 + 9) = v67;
  *(a3 + 16) = v51;
  *(a3 + 24) = v78;
  *(a3 + 32) = v54;
  *(a3 + 40) = v77;
  *(a3 + 41) = v41;
  *(a3 + 42) = (v62 & 1) == 0;
  return result;
}

uint64_t sub_1B039F8EC(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v10 = *(a5 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a3 >> 14);
  }

  v12 = sub_1B0E46CB8();
  v13 = a5 + 56;
  v14 = -1 << *(a5 + 32);
  v15 = v12 & ~v14;
  if ((*(a5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(a5 + 48);
    do
    {
      v18 = v17 + 32 * v15;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *v18 == a1 && *(v18 + 8) == a2;
      if (v21 || (sub_1B0E46A78() & 1) != 0)
      {
        if (v20)
        {
          if (a4)
          {
            return 1;
          }
        }

        else if ((a4 & 1) == 0 && !((v19 ^ a3) >> 14))
        {
          return 1;
        }
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return 0;
}

uint64_t *Capability.move.unsafeMutableAddressor()
{
  if (qword_1EB6DEA18 != -1)
  {
    swift_once();
  }

  return &static Capability.move;
}

uint64_t *Capability.condStore.unsafeMutableAddressor()
{
  if (qword_1EB6DE9E8 != -1)
  {
    swift_once();
  }

  return &static Capability.condStore;
}

uint64_t *Capability.gmailExtensions.unsafeMutableAddressor()
{
  if (qword_1EB6DEA40 != -1)
  {
    swift_once();
  }

  return &static Capability.gmailExtensions;
}

uint64_t *Capability.namespace.unsafeMutableAddressor()
{
  if (qword_1EB6DE9E0 != -1)
  {
    swift_once();
  }

  return &static Capability.namespace;
}

uint64_t *Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor()
{
  if (qword_1EB6DEA28 != -1)
  {
    swift_once();
  }

  return &static Capability.yahooMailHighestModificationSequence;
}

uint64_t *Capability.extendedSearch.unsafeMutableAddressor()
{
  if (qword_1EB6DEA48 != -1)
  {
    swift_once();
  }

  return &static Capability.extendedSearch;
}

uint64_t *Capability.partial.unsafeMutableAddressor()
{
  if (qword_1EB6DE9F8 != -1)
  {
    swift_once();
  }

  return &static Capability.partial;
}

uint64_t sub_1B039FC78(uint64_t a1)
{
  v2 = Capability.listStatus.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v3) = sub_1B039F8EC(v3, v4, v5, v6, a1);

  if (v3)
  {
    v7 = Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor();
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v8) = sub_1B039F8EC(v8, v9, v10, v11, a1);

    if (v8)
    {

      return 2;
    }

    else
    {
      v13 = Capability.condStore.unsafeMutableAddressor();
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = *(v13 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v14) = sub_1B039F8EC(v14, v15, v16, v17, a1);

      if (v14)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {

    return 0;
  }
}

uint64_t *Capability.specialUse.unsafeMutableAddressor()
{
  if (qword_1EB6DEA70 != -1)
  {
    swift_once();
  }

  return &static Capability.specialUse;
}

uint64_t *Capability.listStatus.unsafeMutableAddressor()
{
  if (qword_1EB6DEA78 != -1)
  {
    swift_once();
  }

  return &static Capability.listStatus;
}

uint64_t sub_1B039FE38(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    v2 = a1[8] == 0x4920216F6F686159 && v1 == 0xEB000000002E636ELL;
    if (v2 || (v3 = a1, v4 = a1[8], v5 = sub_1B0E46A78(), a1 = v3, (v5 & 1) != 0))
    {
      sub_1B039FF14(a1);
      return 0;
    }
  }

  v7 = a1[1];
  if (!v7)
  {
    sub_1B039FF14(a1);
    return 2;
  }

  if (*a1 != 0x70616D4947 || v7 != 0xE500000000000000)
  {
    v9 = a1;
    v10 = *a1;
    v11 = sub_1B0E46A78();
    sub_1B039FF14(v9);
    if (v11)
    {
      return 1;
    }

    return 2;
  }

  sub_1B039FF14(a1);
  return 1;
}

unsigned __int8 *sub_1B039FF68(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = 0;
  if (!v4)
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        goto LABEL_19;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_90:
    v25 = sub_1B0B6CEA8(v7, v1, 10);
    v43 = v44;
    goto LABEL_86;
  }

  while (1)
  {
    v7 = v6;
LABEL_8:
    v8 = *(a1 + 48) + ((v7 << 11) | (32 * __clz(__rbit64(v4))));
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45 = v11;
    v46 = v10;
    if (v12)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v13 = sub_1B0E44EE8();
      MEMORY[0x1B2726D00](v13);
    }

    v14 = sub_1B0E44BB8();
    v16 = v15;

    if (v14 == 0x4C4547415353454DLL && v16 == 0xEC00000054494D49)
    {

      goto LABEL_23;
    }

    v18 = sub_1B0E46A78();

    if (v18)
    {
      break;
    }

    v4 &= v4 - 1;

    v6 = v7;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

LABEL_23:

  v7 = Capability.value.getter(v46, v9, v45, v12);
  v1 = v20;

  if (!v1)
  {
    return 0;
  }

  v21 = HIBYTE(v1) & 0xF;
  v22 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v23 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_19:

    return 0;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_90;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v48[0] = v7;
    v48[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v21)
      {
        if (--v21)
        {
          v25 = 0;
          v35 = v48 + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v21)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

LABEL_95:
      __break(1u);
      return result;
    }

    if (v7 != 45)
    {
      if (v21)
      {
        v25 = 0;
        v40 = v48;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          ++v40;
          if (!--v21)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    if (v21)
    {
      if (--v21)
      {
        v25 = 0;
        v29 = v48 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v31 - v30;
          if (__OFSUB__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v21)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    goto LABEL_93;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    result = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B0E46368();
  }

  v24 = *result;
  if (v24 == 43)
  {
    if (v22 < 1)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v21 = v22 - 1;
    if (v22 != 1)
    {
      v25 = 0;
      if (result)
      {
        v32 = result + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            goto LABEL_84;
          }

          v34 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            goto LABEL_84;
          }

          v25 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_84;
          }

          ++v32;
          if (!--v21)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_76;
    }

LABEL_84:
    v25 = 0;
    LOBYTE(v21) = 1;
    goto LABEL_85;
  }

  if (v24 != 45)
  {
    if (v22)
    {
      v25 = 0;
      if (result)
      {
        while (1)
        {
          v38 = *result - 48;
          if (v38 > 9)
          {
            goto LABEL_84;
          }

          v39 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            goto LABEL_84;
          }

          v25 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            goto LABEL_84;
          }

          ++result;
          if (!--v22)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_84;
  }

  if (v22 < 1)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v21 = v22 - 1;
  if (v22 == 1)
  {
    goto LABEL_84;
  }

  v25 = 0;
  if (result)
  {
    v26 = result + 1;
    while (1)
    {
      v27 = *v26 - 48;
      if (v27 > 9)
      {
        goto LABEL_84;
      }

      v28 = 10 * v25;
      if ((v25 * 10) >> 64 != (10 * v25) >> 63)
      {
        goto LABEL_84;
      }

      v25 = v28 - v27;
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_84;
      }

      ++v26;
      if (!--v21)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_76:
  LOBYTE(v21) = 0;
LABEL_85:
  v49 = v21;
  v43 = v21;
LABEL_86:

  if (v43)
  {
    return 0;
  }

  result = v25;
  if ((v25 - 1000000) < 0xFFFFFFFFFFF0BDC1)
  {
    return 0;
  }

  return result;
}