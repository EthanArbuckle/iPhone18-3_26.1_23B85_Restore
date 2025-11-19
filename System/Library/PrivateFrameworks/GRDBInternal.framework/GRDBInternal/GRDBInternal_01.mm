void sub_1B2123768(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Configuration();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_projectBox();
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    swift_beginAccess();
    sub_1B212392C(v9, v8);
    v14[0] = 0x2E726564616572;
    v14[1] = 0xE700000000000000;
    v14[9] = v11;

    v12 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v12);

    type metadata accessor for SerializedDatabase();
    swift_allocObject();
    sub_1B2123A30();
    if (!v2)
    {
      *a2 = v13;
    }
  }
}

uint64_t sub_1B212392C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2123990(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B21239AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1B21239EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void sub_1B2123A30()
{
  sub_1B2111640();
  v2 = v0;
  v4 = v3;
  v40 = v5;
  v41 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v38 = *v2;
  v39 = v13;
  v15 = type metadata accessor for Configuration();
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - v21;
  sub_1B212392C(v10, &v38 - v21);
  v22[*(v16 + 88)] = 1;
  v2[3] = v14;
  v2[4] = v12;

  v23 = sub_1B2124064(v40, v8, v41, v4);
  v25 = v24;
  v26 = v23;

  sub_1B212392C(v22, v20);
  v27 = type metadata accessor for Database();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();

  sub_1B2123CC4(v39, v12, v26, v25, v20);
  if (v1)
  {

    sub_1B2133D70(v10);
    sub_1B2133D70(v22);
    v31 = v2[4];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[2] = v30;
    if (v22[1] == 1)
    {
      v32 = sub_1B2124C20();
    }

    else
    {
      v32 = sub_1B21571A4();
    }

    v33 = v32;

    v2[5] = v33;
    type metadata accessor for SchedulingWatchdog();
    v34 = v2[2];
    v35 = v33;

    sub_1B2124F54(v36);

    v37 = v2[5];
    sub_1B2252A50();

    sub_1B2133D70(v10);
    sub_1B2133D70(v22);
  }

  sub_1B2112FDC();
}

void sub_1B2123CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = *v5;
  v5[2] = 0;
  v12 = v5 + OBJC_IVAR____TtC12GRDBInternal8Database__lastSchemaVersion;
  *v12 = 0;
  v12[4] = 1;
  v13 = (v5 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
  sub_1B2124180();
  v14 = sub_1B2252190();
  *v13 = 0;
  v13[1] = v14;
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___authorizer) = 0;
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___observationBroker) = 0;
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion) = 0;
  v15 = OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion;
  sub_1B211B358();
  *(v5 + v15) = sub_1B2252190();
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 0;
  v16 = OBJC_IVAR____TtC12GRDBInternal8Database__isSuspended;
  sub_1B21619D8(&qword_1EB7A33C8, &qword_1B226B9F8);
  swift_allocObject();
  *(v5 + v16) = sub_1B2124274(0);
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database_journalModeCache);
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);
  sub_1B21131DC(OBJC_IVAR____TtC12GRDBInternal8Database_trace);
  v17 = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database_functions) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database_collations) = v17;
  *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth) = 0;
  if (*(a5 + 1))
  {
    v18 = 1;
  }

  else
  {
    v18 = 6;
  }

  v19 = type metadata accessor for Configuration();
  v20 = sub_1B21242B8(a1, a2, v18 | (*(a5 + *(v19 + 80)) << 15));

  if (v6)
  {

    sub_1B2133D70(a5);
    v22 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
    v21 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache + 8);

    v23 = sub_1B21260E0(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B2120024(v23, v24);
    v25 = sub_1B21260E0(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B2120024(v25, v26);
    v27 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___authorizer);

    v28 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___observationBroker);

    v29 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion);

    v30 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database__isSuspended);

    v31 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database_journalModeCache + 8);

    v32 = sub_1B21260E0(OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);
    sub_1B2112F4C(v32);
    v33 = sub_1B21260E0(OBJC_IVAR____TtC12GRDBInternal8Database_trace);
    sub_1B2112F4C(v33);
    v34 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database_functions);

    v35 = *(v7 + OBJC_IVAR____TtC12GRDBInternal8Database_collations);

    v36 = *(*v7 + 48);
    v37 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B21118B8();
    swift_beginAccess();
    v7[2] = v20;
    v38 = (v7 + OBJC_IVAR____TtC12GRDBInternal8Database_description);
    *v38 = a3;
    v38[1] = a4;
    sub_1B2124B1C(a5, v7 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration);
  }

  sub_1B2149864();
}

void sub_1B2124044(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  sub_1B2123768(v1[2], a1);
}

uint64_t sub_1B2124064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 16))
  {
    v7 = a1;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:

    v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_6;
  }

  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:

  MEMORY[0x1B2741EB0](a3, a4);
  v10 = 46;
  v9 = 0xE100000000000000;
LABEL_6:

  MEMORY[0x1B2741EB0](v10, v9);

  return v7;
}

uint64_t type metadata accessor for Database()
{
  result = qword_1ED85E670;
  if (!qword_1ED85E670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B2124180()
{
  result = qword_1ED85E6B0;
  if (!qword_1ED85E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E6B0);
  }

  return result;
}

void *sub_1B2124244(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char __src)
{

  return memcpy(a1, &__src, 0xA3uLL);
}

uint64_t sub_1B2124274(char a1)
{
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 16) = a1;
  return v1;
}

sqlite3 *sub_1B21242B8(uint64_t a1, uint64_t a2, int a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v4 = sub_1B2252350();
  v5 = sqlite3_open_v2((v4 + 32), v13, a3, 0);

  result = v13[0];
  if (!v5)
  {
    if (v13[0])
    {
      goto LABEL_5;
    }

    sub_1B21AC298();
    swift_allocError();
    v8 = v12;
    v5 = 2;
    if (!sqlite3_errstr(2))
    {
      __break(1u);
    }

LABEL_3:
    v9 = sub_1B22523F0();
    *v8 = v5;
    *(v8 + 8) = v9;
    *(v8 + 16) = v10;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0;
    result = swift_willThrow();
LABEL_5:
    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  sqlite3_close(v13[0]);
  sub_1B21AC298();
  swift_allocError();
  v8 = v7;
  result = sqlite3_errstr(v5);
  if (result)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Configuration()
{
  result = qword_1ED85E8C8;
  if (!qword_1ED85E8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B2124438()
{
  type metadata accessor for DatabaseCollation();
  swift_initStaticObject();
  Database.add(collation:)();
  swift_initStaticObject();
  Database.add(collation:)();
  swift_initStaticObject();
  Database.add(collation:)();
  swift_initStaticObject();
  Database.add(collation:)();
  swift_initStaticObject();

  return Database.add(collation:)();
}

uint64_t Database.add(collation:)()
{
  sub_1B213CF68();
  sub_1B2117F5C();

  sub_1B2125808(v2, sub_1B2132630, sub_1B22474C8);
  swift_endAccess();

  sub_1B2117330();
  swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = v1[2];
  v5 = v1[3];
  v6 = sub_1B2252350();
  collation_v2 = sqlite3_create_collation_v2(v3, (v6 + 32), 1, v1, sub_1B2238684, 0);

  if (collation_v2)
  {
    v9 = Database.lastErrorMessage.getter();
    if (!v10)
    {
      if (!sqlite3_errstr(collation_v2))
      {
        __break(1u);
      }

      v9 = sub_1B22523F0();
    }

    LODWORD(v11) = collation_v2;
    *(&v11 + 1) = v9;
    v12 = v10;
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    sub_1B2202FD4(&v11);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1B2124614()
{
  sub_1B212D010();
  v5 = v0;
  sub_1B21181AC(v6);
  sub_1B21619D8(&qword_1EB7A34A8, &qword_1B226C250);
  sub_1B2115F64();
  sub_1B2252C70();
  sub_1B224B1C8();
  if (v7)
  {
    v8 = 0;
    v9 = *(v1 + 56);
    *(v1 + 32);
    sub_1B224B578();
    if (v0)
    {
      while (1)
      {
        sub_1B2125FF4();
LABEL_9:
        v14 = *(*(v1 + 48) + 8 * (v10 | (v8 << 6)));
        v15 = *(v2 + 40);
        sub_1B2253420();
        MEMORY[0x1B2742F10](0);
        sub_1B2253470();
        v16 = *(v2 + 32);
        sub_1B2124268();
        if (((-1 << v18) & ~*(v3 + 8 * v17)) == 0)
        {
          break;
        }

        sub_1B2112110();
LABEL_19:
        sub_1B2111AE8();
        sub_1B212D8C4();
        *(v23 + 8 * v22) = v14;
        sub_1B212D15C();

        if (!v5)
        {
          goto LABEL_4;
        }
      }

      sub_1B2114850();
      while (1)
      {
        sub_1B211FE98();
        if (v20)
        {
          if (v19)
          {
            break;
          }
        }

        sub_1B224B4EC();
        if (v20)
        {
          v21 = 0;
        }

        sub_1B2134C2C(v21);
        if (!v20)
        {
          sub_1B2118398();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v11 = v8;
      while (1)
      {
        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v8 >= v4)
        {

          v5 = v0;
          goto LABEL_23;
        }

        ++v11;
        if (*(v1 + 56 + 8 * v8))
        {
          sub_1B211667C();
          v5 = (v13 & v12);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v5 = v2;
    sub_1B212CE34();
  }
}

BOOL static DatabaseCollation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = sub_1B2252350();
  v7 = sub_1B2252350();
  LODWORD(v5) = sqlite3_stricmp((v6 + 32), (v7 + 32));

  return v5 == 0;
}

void sub_1B2124804()
{
  sub_1B212D010();
  v3 = v0;
  sub_1B21181AC(v4);
  sub_1B21619D8(&qword_1EB7A34A8, &qword_1B226C250);
  sub_1B2115F64();
  sub_1B2252C70();
  sub_1B224B1C8();
  if (!v5)
  {
LABEL_28:

    *v3 = v2;
    sub_1B212CE34();
    return;
  }

  v6 = 0;
  v7 = (v1 + 56);
  v8 = 1 << *(v1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v1 + 56);
  v11 = (v8 + 63) >> 6;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v13;
      if (v7[v6])
      {
        sub_1B211667C();
        v10 = v15 & v14;
        goto LABEL_12;
      }
    }

    sub_1B211DAB8();
    if (v26 != v27)
    {
      sub_1B2113B98();
      *v7 = v28;
    }

    else
    {
      v29 = sub_1B2122A88();
      sub_1B2148CEC(v29, v30, v1 + 56);
    }

    v3 = v0;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    sub_1B213CCE8();
LABEL_12:
    v16 = *(*(v1 + 48) + 8 * (v12 | (v6 << 6)));
    v17 = *(v2 + 40);
    sub_1B2253420();
    MEMORY[0x1B2742F10](0);
    sub_1B2253470();
    v18 = *(v2 + 32);
    sub_1B2124268();
    if (((-1 << v20) & ~*(v2 + 56 + 8 * v19)) == 0)
    {
      break;
    }

    sub_1B2112110();
LABEL_22:
    sub_1B2111AE8();
    sub_1B213CBD0();
    *(v25 + 8 * v24) = v16;
    sub_1B212D15C();
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v22)
    {
      if (v21)
      {
        break;
      }
    }

    sub_1B224B4EC();
    if (v22)
    {
      v23 = 0;
    }

    sub_1B212E31C(v23);
    if (!v22)
    {
      sub_1B2118398();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1B212499C()
{
  v1 = sub_1B211B888(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___authorizer, type metadata accessor for StatementAuthorizer, 66, sub_1B21254D0);

  swift_beginAccess();
  return sqlite3_set_authorizer(*(v0 + 16), sub_1B211BD4C, v1);
}

uint64_t sub_1B2124A30(uint64_t result)
{
  v3 = result;
  v4 = 0;
  v5 = *(v1 + 32);
  v6 = *(v5 + 16);
  v7 = (v5 + 40);
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = v3;

    v9(&v10);

    if (v2)
    {
      return result;
    }

    ++v4;
    v7 += 2;
  }

  return result;
}

uint64_t sub_1B2124ADC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1B2124B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2124B94()
{
  v2 = *(v0 + 16);

  return type metadata accessor for QueryInterfaceRequest();
}

void *sub_1B2124BD4()
{

  return memcpy((v0 + 3360), (v0 + 3536), 0xA3uLL);
}

uint64_t sub_1B2124BF0()
{
}

uint64_t sub_1B2124C08()
{
}

uint64_t sub_1B2124C20()
{
  v27 = sub_1B2252A10();
  v1 = sub_1B211280C(v27);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1B2111844();
  v8 = v7 - v6;
  v9 = sub_1B22529C0();
  v10 = sub_1B21118A0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = sub_1B2252120();
  v14 = sub_1B211280C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v21 = v20 - v19;
  v22 = type metadata accessor for Configuration();
  v23 = *(v0 + *(v22 + 68));
  sub_1B2111770();
  if (v23)
  {
    v24 = v23;

    sub_1B2252100();
    sub_1B2126274();
    sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
    sub_1B2124EF0();
    sub_1B2115144();
    sub_1B2252BC0();
    (*(v3 + 104))(v8, *MEMORY[0x1E69E8090], v27);
    sub_1B2115798();
    v25 = sub_1B2252A70();
  }

  else
  {
    (*(v16 + 16))(v21, v0 + *(v22 + 64), v13);
    sub_1B2126274();

    sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
    sub_1B2124EF0();
    sub_1B2115144();
    sub_1B2252BC0();
    (*(v3 + 104))(v8, *MEMORY[0x1E69E8090], v27);
    sub_1B2115798();
    return sub_1B2252A70();
  }

  return v25;
}

unint64_t sub_1B2124EF0()
{
  result = qword_1ED85E788;
  if (!qword_1ED85E788)
  {
    sub_1B2161A20(&qword_1EB7A21A0, &unk_1B225E830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E788);
  }

  return result;
}

uint64_t sub_1B2124F54(uint64_t a1)
{
  if (qword_1ED85E6E8 != -1)
  {
    sub_1B211788C();
  }

  sub_1B22529D0();
  if (v3)
  {

    __break(1u);
  }

  else
  {
    swift_allocObject();
    sub_1B2125020(a1);

    sub_1B22529F0();
  }

  return result;
}

uint64_t sub_1B2125020(uint64_t a1)
{
  *(v1 + 24) = 0;
  sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B2257570;
  *(v3 + 32) = a1;
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_1B212507C()
{
  sub_1B212425C();
  sub_1B21251D8();
  v2 = sub_1B2125374();
  result = sub_1B2125420(v2);
  if (!v0)
  {
    sub_1B2125680();
    sub_1B2124438();
    sub_1B212499C();
    v4 = v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration;
    if ((*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) & 1) == 0)
    {
      sub_1B211E54C();
      sub_1B211B888(v5, v6, 57, sub_1B212556C);
      sub_1B21574A4();
    }

    sub_1B2111BFC();
    sub_1B21261BC();
    sub_1B2124A30(v1);
    sub_1B2111BFC();
    sub_1B2126334();
    result = type metadata accessor for Configuration();
    v7 = v4 + *(result + 84);
    if (*v7)
    {
      v8 = *(v7 + 8);
      return (*v7)();
    }
  }

  return result;
}

uint64_t sub_1B212517C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1B212507C();
  if (v1)
  {
    sub_1B213410C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B21251D8()
{
  v1 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration;
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) != 1 || (v2 = v1[88], v2 == 255))
  {
    v3 = *(v1 + 6);
    v4 = *(v1 + 7);
    v2 = v1[64];
  }

  else
  {
    v3 = *(v1 + 9);
    v4 = *(v1 + 10);
  }

  result = sub_1B212535C(*&v3, v4, v2);
  if (!v2)
  {
    v9 = v3 * 1000.0;
    if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -2147483650.0)
    {
      if (v9 < 2147483650.0)
      {
        v10 = v9;
        swift_beginAccess();
        return sqlite3_busy_timeout(v0[2], v10);
      }

LABEL_15:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v6 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback;
    v7 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);
    v8 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback + 8);
    *v6 = v3;
    *(v6 + 1) = v4;
    sub_1B212535C(*&v3, v4, 1);

    sub_1B2112F4C(v7);
    swift_beginAccess();
    sqlite3_busy_handler(v0[2], sub_1B223853C, v0);
    sub_1B2151FF0(*&v3, v4, 1);
    return sub_1B2151FF0(*&v3, v4, 1);
  }

  return result;
}

uint64_t sub_1B212535C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1B2125374()
{
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 24) == 1)
  {
    swift_beginAccess();
    return sub_1B223C0F8(*(v0 + 16));
  }

  else
  {
    swift_beginAccess();
    return sub_1B21253DC(*(v0 + 16));
  }
}

uint64_t sub_1B21254D0(uint64_t a1)
{
  sub_1B211B358();
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = sub_1B2252190();
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 255;
  *(v1 + 16) = a1;
  swift_unownedRetain();

  return v1;
}

uint64_t sub_1B212556C(uint64_t a1)
{
  type metadata accessor for SavepointStack();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v4;
  *(v1 + 32) = 0;
  *(v1 + 40) = v4;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  swift_unownedRetain();

  return v1;
}

uint64_t Database.add(function:)()
{
  sub_1B213CF68();
  sub_1B211A33C();

  sub_1B2125808(v1, sub_1B21258C0, sub_1B2247318);
  swift_endAccess();

  return sub_1B2125CDC(v0);
}

uint64_t sub_1B2125680()
{
  if (qword_1ED85E8C0 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E738 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E728 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E740 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E760 != -1)
  {
    swift_once();
  }

  Database.add(function:)();
  if (qword_1ED85E750 != -1)
  {
    swift_once();
  }

  return Database.add(function:)();
}

uint64_t sub_1B2125808(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v7 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v11 = a1;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    v9 = *v3;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1B2252C20();
  if (!__OFADD__(result, 1))
  {
    v13 = a3(v9, result + 1);
    v11 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = a2(v11, isUniquelyReferenced_nonNull_native);
    *v5 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21258C0(uint64_t a1, char a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B2253420();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_1B2252370();
  sub_1B2253450();
  v9 = sub_1B2253470();
  v10 = ~(-1 << *(v4 + 32));
  v11 = 1;
  while (1)
  {
    v12 = v9 & v10;
    v13 = (v9 & v10) >> 6;
    v14 = 1 << (v9 & v10);
    v15 = v14 & *(v4 + 56 + 8 * v13);
    if (!v15)
    {
      break;
    }

    type metadata accessor for DatabaseFunction();
    if (static DatabaseFunction.== infix(_:_:)(*(*(v4 + 48) + 8 * v12), a1))
    {
      v11 = 0;
      break;
    }

    v9 = v12 + 1;
  }

  v16 = *(v4 + 16);
  v17 = v16 + v11;
  if (__OFADD__(v16, v11))
  {
    __break(1u);
  }

  else
  {
    v18 = *(v4 + 24);
    v19 = v34;
    if (v18 < v17 || (a2 & 1) == 0)
    {
      if (a2)
      {
        sub_1B2125E6C();
        goto LABEL_16;
      }

      if (v18 < v17)
      {
        sub_1B2125AE0();
LABEL_16:
        v20 = *v34;
        v21 = *(*v34 + 40);
        sub_1B2253420();
        v22 = *(a1 + 16);
        v23 = *(a1 + 24);
        v24 = *(a1 + 32);
        sub_1B2252370();
        sub_1B2253450();
        v25 = sub_1B2253470();
        v26 = ~(-1 << *(v20 + 32));
        while (1)
        {
          v12 = v25 & v26;
          v13 = (v25 & v26) >> 6;
          v14 = 1 << (v25 & v26);
          if ((v14 & *(v20 + 56 + 8 * v13)) == 0)
          {
            v19 = v34;
            if (v15)
            {
              goto LABEL_27;
            }

            goto LABEL_21;
          }

          type metadata accessor for DatabaseFunction();
          if (static DatabaseFunction.== infix(_:_:)(*(*(v20 + 48) + 8 * v12), a1))
          {
            break;
          }

          v25 = v12 + 1;
        }

        v19 = v34;
        if (!v15)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_1B22492CC();
    }

    if (v15)
    {
LABEL_24:
      v32 = *(*v19 + 48);
      result = *(v32 + 8 * v12);
      *(v32 + 8 * v12) = a1;
      return result;
    }

LABEL_21:
    v27 = *v19;
    *(*v19 + 8 * v13 + 56) |= v14;
    *(*(v27 + 48) + 8 * v12) = a1;
    v28 = *(v27 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      result = 0;
      *(v27 + 16) = v30;
      return result;
    }
  }

  __break(1u);
LABEL_27:
  type metadata accessor for DatabaseFunction();
  result = sub_1B2253380();
  __break(1u);
  return result;
}

void sub_1B2125AE0()
{
  sub_1B2122614();
  v2 = v0;
  v3 = *v0;
  if (*(*v0 + 24) > v4)
  {
    v5 = *(*v0 + 24);
  }

  sub_1B21619D8(&qword_1EB7A34B0, &qword_1B226C258);
  v6 = sub_1B2252C70();
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v9 = v3 + 56;
    v8 = *(v3 + 56);
    v10 = *(v3 + 32);
    sub_1B21154D4();
    sub_1B2125FE8();
    v12 = v11 >> 6;
    if (v1)
    {
      while (1)
      {
        sub_1B2149880();
LABEL_11:
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        sub_1B224B4B4();
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v20 = *(v17 + 32);

        sub_1B2252370();
        sub_1B2253450();
        v21 = sub_1B2253470();
        sub_1B211647C(v21);
        v23 = *(v6 + 56 + 8 * v22);
        sub_1B213CF74();
        if (v24)
        {
          break;
        }

        sub_1B2112110();
LABEL_21:
        sub_1B2111AE8();
        sub_1B213CBD0();
        *(v28 + 8 * v27) = v17;
        sub_1B212D15C();
        v3 = v30;
        if (!v1)
        {
          goto LABEL_6;
        }
      }

      sub_1B2114850();
      while (1)
      {
        sub_1B211FE98();
        if (v24)
        {
          if (v25)
          {
            break;
          }
        }

        sub_1B224B4EC();
        if (v24)
        {
          v26 = 0;
        }

        sub_1B212E31C(v26);
        if (!v24)
        {
          sub_1B2118398();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v29;
          goto LABEL_25;
        }

        ++v14;
        if (*(v9 + 8 * v7))
        {
          sub_1B211667C();
          v1 = v16 & v15;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v6;
    sub_1B2115CEC();
  }
}

uint64_t sub_1B2125C70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    type metadata accessor for DatabaseFunction.AggregateDefinition();
  }

  else
  {
    type metadata accessor for DatabaseFunction.FunctionDefinition();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1B2125E64();
  return v5;
}

uint64_t sub_1B2125CDC(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = sub_1B2125C70(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  if (*(v1 + 36))
  {
    v9 = 2049;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_1B2252350();
  v11 = v3 == 0;
  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1B224DD98;
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1B224E294;
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1B224E3D8;
  }

  swift_unknownObjectRetain();
  function_v2 = sqlite3_create_function_v2(v5, (v10 + 32), v8, v9, v4, v12, v13, v14, sub_1B2134398);

  if (!function_v2)
  {
    return swift_unknownObjectRelease();
  }

  v17 = Database.lastErrorMessage.getter();
  if (!v18)
  {
    if (!sqlite3_errstr(function_v2))
    {
      __break(1u);
    }

    v17 = sub_1B22523F0();
  }

  LODWORD(v31) = function_v2;
  sub_1B2112F20(v17, v18, v19, v20, v21, v22, v23, v24, xDestroy, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B2125E6C()
{
  sub_1B212D010();
  v5 = v0;
  sub_1B21181AC(v6);
  sub_1B21619D8(&qword_1EB7A34B0, &qword_1B226C258);
  sub_1B2115F64();
  sub_1B2252C70();
  sub_1B224B1C8();
  if (!v7)
  {
LABEL_25:

    *v5 = v2;
    sub_1B212CE34();
    return;
  }

  v8 = 0;
  v10 = (v1 + 56);
  v9 = *(v1 + 56);
  v11 = *(v1 + 32);
  sub_1B21154D4();
  sub_1B224B578();
  if (!v0)
  {
LABEL_4:
    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v8 >= v4)
      {
        break;
      }

      ++v13;
      if (v10[v8])
      {
        sub_1B211667C();
        v5 = (v15 & v14);
        goto LABEL_9;
      }
    }

    sub_1B211DAB8();
    if (v29 != v30)
    {
      sub_1B2113B98();
      *v10 = v31;
    }

    else
    {
      v32 = sub_1B2122A88();
      sub_1B2148CEC(v32, v33, v1 + 56);
    }

    v5 = v0;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_1B2125FF4();
LABEL_9:
    v16 = *(*(v1 + 48) + 8 * (v12 | (v8 << 6)));
    v17 = *(v2 + 40);
    sub_1B2253420();
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    sub_1B2252370();
    sub_1B2253450();
    v21 = sub_1B2253470();
    sub_1B211647C(v21);
    v23 = *(v3 + 8 * v22);
    sub_1B213CF74();
    if (v24)
    {
      break;
    }

    sub_1B2112110();
LABEL_19:
    sub_1B2111AE8();
    sub_1B212D8C4();
    *(v28 + 8 * v27) = v16;
    sub_1B212D15C();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1B2114850();
  while (1)
  {
    sub_1B211FE98();
    if (v24)
    {
      if (v25)
      {
        break;
      }
    }

    sub_1B224B4EC();
    if (v24)
    {
      v26 = 0;
    }

    sub_1B2134C2C(v26);
    if (!v24)
    {
      sub_1B2118398();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1B212601C()
{
}

void *sub_1B2126034(void *a1)
{

  return memcpy(a1, &STACK[0x3F8], 0xA3uLL);
}

void sub_1B212604C(uint64_t a1@<X8>)
{
  v2 = -1;
  if (a1 < 64)
  {
    v2 = ~(-1 << a1);
  }

  v3 = v2 & *(v1 + 56);
}

uint64_t sub_1B21260E0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

BOOL static DatabaseFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return v2 == v3;
  }

  v5 = sub_1B22531F0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1B212614C()
{
  sub_1B211D64C();
  sub_1B2118060();
  result = v1();
  if (!v0)
  {
    return v3;
  }

  return result;
}

const char *sub_1B21261BC()
{
  swift_beginAccess();
  result = sqlite3_extended_result_codes(*(v0 + 16), 1);
  if (result)
  {
    v2 = result;
    result = sqlite3_errmsg(*(v0 + 16));
    if (result)
    {
      v3 = sub_1B22523F0();
      v5 = v4;
      sub_1B21AC298();
      swift_allocError();
      *v6 = v2;
      *(v6 + 8) = v3;
      *(v6 + 16) = v5;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1B2126274()
{
  result = qword_1ED85E780;
  if (!qword_1ED85E780)
  {
    sub_1B22529C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E780);
  }

  return result;
}

uint64_t sub_1B21262E4()
{
  v2 = *(v0 - 144);
  v3 = v2[5];
  v4 = v2[6];
  v5 = v2[2];
}

uint64_t sub_1B2126304()
{

  return sub_1B22524A0();
}

uint64_t sub_1B2126334()
{
  result = sub_1B212641C(0xD000000000000023, 0x80000001B2270FB0, 0);
  if (!v0)
  {
    v2[0] = 0;
    v2[1] = 0;
    sub_1B2133AC8(v2);

    sub_1B2133BF0();
  }

  return result;
}

uint64_t sub_1B21263D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 + a2);
  v7 = *(v2 + a2);
  v6 = v5[1];
  *v5 = v3;
  v5[1] = a1;

  return sub_1B2120024(v7, v6);
}

uint64_t sub_1B21263F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{

  return sub_1B2127DC0(&a50, &a29);
}

uint64_t sub_1B212641C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  type metadata accessor for SQLStatementCursor();
  v21[0] = 0;
  v21[1] = 0;
  swift_initStackObject();

  sub_1B211B748(v8, a1, a2, v21, a3);
  v9 = sub_1B211B804();
  if (!v3)
  {
    v4 = v9;
    if (v9)
    {
      if (sub_1B211B804())
      {

        sub_1B21AC298();
        v12 = sub_1B21152FC();
        sub_1B2112244(v12, v13);
        *(v14 + 8) = 0xD00000000000007ELL;
        *(v14 + 16) = 0x80000001B22701A0;
        sub_1B2112DE8(v15, v14);

        sub_1B21AC298();
        v16 = sub_1B21152FC();
        sub_1B2112244(v16, v17);
        *(v18 + 8) = 0xD00000000000007ELL;
        *(v18 + 16) = 0x80000001B22701A0;
        sub_1B2112DE8(v19, v18);
      }
    }

    else
    {
      sub_1B21AC298();
      v10 = sub_1B21152FC();
      *v11 = 1;
      *(v11 + 8) = xmmword_1B2265CF0;
      sub_1B2112DE8(v10, v11);
    }
  }

  return v4;
}

uint64_t RowCursor._isDone.setter(char a1)
{
  sub_1B2116AD0();
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t Data.databaseValue.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
  return sub_1B2126638(a1, a2);
}

uint64_t sub_1B2126638(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B2126690(uint64_t a1)
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

uint64_t sub_1B21266AC(uint64_t a1, uint64_t a2, int a3, sqlite3_stmt *a4, int a5)
{
  LODWORD(v7) = a3;
  v10 = sub_1B2251BC0();
  if (!v10)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = sub_1B2251BD0();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v10)
      {
        v7 = v15;
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          if (qword_1ED85E010 == -1)
          {
            return sqlite3_bind_blob(a4, a5, v10, v7, qword_1ED861908);
          }

LABEL_18:
          swift_once();
          return sqlite3_bind_blob(a4, a5, v10, v7, qword_1ED861908);
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  result = sub_1B2251BE0();
  if (!__OFSUB__(a1, result))
  {
    v10 += a1 - result;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21267A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B2126864@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B2126824(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

unint64_t sub_1B21268B4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1B21268C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1B21268D4(unint64_t result, uint64_t a2, char a3, int64_t a4, unsigned int a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  if (a4 < result)
  {
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v10 = 0;
    v12 = a8 + 64;
    v23 = a8 + 72;
    while (!__OFADD__(v10++, 1))
    {
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v14 = 1 << *(a8 + 32);
      if (result >= v14)
      {
        goto LABEL_24;
      }

      v15 = result >> 6;
      v16 = *(v12 + 8 * (result >> 6));
      if (((v16 >> result) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a2)
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (result & 0x3F));
      if (v17)
      {
        result = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (v23 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1B21268C8(result, a2, 0);
            result = __clz(__rbit64(v21)) + v18;
            goto LABEL_20;
          }
        }

        sub_1B21268C8(result, a2, 0);
        result = v14;
      }

LABEL_20:
      if (*(a8 + 36) != a5)
      {
        goto LABEL_27;
      }

      a2 = a5;
      if (result == a4)
      {
        return v10;
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
    goto LABEL_29;
  }

  return 0;
}

double sub_1B2126A58()
{
  v3 = *(v0 + 16);
  v4 = sub_1B212EBC0();
  if (!v1)
  {
    sub_1B212D2E0(v4);
    v2 = v6;
  }

  return v2;
}

uint64_t DatabaseValueConvertible<>.databaseValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  sub_1B2252560();
  (*(a5 + 24))(AssociatedTypeWitness, a5);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t RowCursor._isDone.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1B2126C7C@<X0>(uint64_t *a1@<X8>)
{
  result = RowCursor._element(sqliteStatement:)();
  *a1 = result;
  return result;
}

Swift::Int32 __swiftcall Data.bind(to:at:)(Swift::OpaquePointer to, Swift::Int32 at)
{
  v16[3] = *MEMORY[0x1E69E9840];
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = v2 >> 32;
      if (v2 >> 32 < v2)
      {
        __break(1u);
      }

      v10 = v2;
      goto LABEL_12;
    case 2uLL:
      v10 = *(v2 + 16);
      v11 = *(v2 + 24);
LABEL_12:
      result = sub_1B21266AC(v10, v11, v3, to._rawValue, at);
      goto LABEL_13;
    case 3uLL:
      memset(v16, 0, 14);
      if (qword_1ED85E010 != -1)
      {
        sub_1B2117640();
        swift_once();
      }

      v7 = qword_1ED861908;
      rawValue = to._rawValue;
      v9 = at;
      v6 = 0;
      goto LABEL_9;
    default:
      v16[0] = v2;
      LOWORD(v16[1]) = v3;
      BYTE2(v16[1]) = BYTE2(v3);
      BYTE3(v16[1]) = BYTE3(v3);
      BYTE4(v16[1]) = BYTE4(v3);
      BYTE5(v16[1]) = BYTE5(v3);
      v6 = BYTE6(v3);
      if (qword_1ED85E010 != -1)
      {
        sub_1B2117640();
        v15 = v14;
        swift_once();
        v6 = v15;
      }

      v7 = qword_1ED861908;
      rawValue = to._rawValue;
      v9 = at;
LABEL_9:
      result = sqlite3_bind_blob(rawValue, v9, v16, v6, v7);
LABEL_13:
      v13 = *MEMORY[0x1E69E9840];
      return result;
  }
}

void Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)()
{
  sub_1B2111640();
  sub_1B224B23C();
  v1 = *(v0 + 64);
  sub_1B2117214();
  sub_1B214EC88();
  v2();
  sub_1B2112FDC();
}

void sub_1B2126F30()
{
  sub_1B2111640();
  v33 = v0;
  v2 = v1;
  v4 = v3;
  v32[0] = v5;
  v32[1] = v6;
  v8 = v7;
  v40 = v9;
  v10 = sub_1B2252B00();
  sub_1B211280C(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v32 - v16;
  v19 = *v8;
  v18 = v8[1];
  v20 = *(v8 + 16);
  v37 = v19;
  v38 = v18;
  v39 = v20;
  v21 = sub_1B211A314();
  v22(v21, v4, v2);
  if (sub_1B2122A98(v17, 1, v4) == 1)
  {
    (*(v12 + 8))(v17, v10);
    if (v20 != 4 || v18 | v19)
    {
      sub_1B211DA70();
      v28(v26, v27);
      v34 = v19;
      v35 = v18;
      v36 = v20;
      sub_1B21A2FC0();
      swift_allocError();
      sub_1B211D7D8();
      sub_1B2183238(v4, v29, v30, v31);
      sub_1B2111C54();
      swift_willThrow();
      goto LABEL_8;
    }

    v23 = 1;
    v24 = v40;
  }

  else
  {
    sub_1B2111808(v4);
    (*(v25 + 32))(v40, v17, v4);
    v23 = 0;
    v24 = v40;
  }

  sub_1B21117B4(v24, v23, 1, v4);
LABEL_8:
  sub_1B2112FDC();
}

uint64_t DatabaseValue.Storage.value.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  switch(a3)
  {
    case 1:
      v4 = MEMORY[0x1E69E63B0];
      v5 = &protocol witness table for Double;
      goto LABEL_7;
    case 2:
      *(a4 + 24) = MEMORY[0x1E69E6158];
      *(a4 + 32) = &protocol witness table for String;
      *a4 = result;
      *(a4 + 8) = a2;

      break;
    case 3:
      *(a4 + 24) = MEMORY[0x1E6969080];
      *(a4 + 32) = &protocol witness table for Data;
      *a4 = result;
      *(a4 + 8) = a2;
      result = sub_1B2126638(result, a2);
      break;
    case 4:
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      break;
    default:
      v4 = MEMORY[0x1E69E7360];
      v5 = &protocol witness table for Int64;
LABEL_7:
      *(a4 + 24) = v4;
      *(a4 + 32) = v5;
      *a4 = result;
      break;
  }

  return result;
}

uint64_t Row.scopes.getter()
{
  v1 = v0[6];
  sub_1B21139A0(v0 + 2, v0[5]);
  sub_1B21115FC();
  swift_beginAccess();
  v4 = v0[10];
  v5 = v0[11];
  v2 = *(v1 + 24);

  sub_1B224B54C();
  v2();
}

void *sub_1B212728C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  sub_1B21268B4(v3);
  sub_1B212AC5C((v0 + 6), &qword_1EB7A3258, &qword_1B226A770);
  v5 = v0[11];

  v6 = v0[12];

  return v0;
}

uint64_t sub_1B21272FC(void (*a1)(void))
{
  a1(*(v1 + 16));
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1B212735C()
{
  sub_1B2113A44(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B212739C()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B2127424()
{
  sub_1B2114864();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C(AssociatedTypeWitness);
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 48);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B21274EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B2127528(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  sub_1B2111904();

  return swift_deallocObject();
}

uint64_t sub_1B2127574()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1B21275B4()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4] >= 2uLL)
  {
    v3 = v0[5];
  }

  return swift_deallocObject();
}

_OWORD *sub_1B2127608(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1B2127620()
{
  v2 = *(v0 + 16);
  v3 = sub_1B212EBC0();
  if (!v1)
  {
    LOBYTE(v0) = sub_1B21322A0(v3, v4);
  }

  return v0 & 1;
}

uint64_t static FetchableRecord.fetchAll(_:arguments:adapter:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B2115D98(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  if (!v8)
  {
    v10 = sub_1B22526A0();
    type metadata accessor for RecordCursor();
    swift_getWitnessTable();
    sub_1B2111C38();
    swift_getWitnessTable();
    RangeReplaceableCollection.init<A>(_:)(v10, &v12);
    return v12;
  }

  return result;
}

uint64_t RecordCursor._isDone.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void sub_1B21277F4()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B211D518();
    sub_1B2127B64();
    *v0 = v4;
  }
}

void *SQLInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a3 + 40);
  v9 = *(*(*(a3 + 8) + 8) + 8);
  v14[0] = sub_1B2252490();
  v14[1] = v10;
  LOBYTE(v14[2]) = 2;
  sub_1B2127D7C(v14);
  memcpy(v15, v14, 0xA3uLL);
  sub_1B2127AE0(v15);
  sub_1B2127D18();
  v11 = *(*v3 + 16);
  sub_1B21277F4();
  v12 = *v3;
  *(v12 + 16) = v11 + 1;
  result = memcpy((v12 + 184 * v11 + 32), v15, 0xB8uLL);
  *v3 = v12;
  return result;
}

{
  v4 = sub_1B211822C(a1, a2, a3);
  v5(v4);
  sub_1B216ED58(v16);
  sub_1B2127D18();
  sub_1B212CF64();
  result = sub_1B21172D8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0]);
  *v3 = v3;
  return result;
}

{
  v4 = sub_1B211822C(a1, a2, a3);
  v5(v4);
  sub_1B216ED8C(v16);
  sub_1B2127D18();
  sub_1B212CF64();
  result = sub_1B21172D8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0]);
  *v3 = v3;
  return result;
}

{
  v4 = *(a3 + 16);
  v5 = sub_1B2117F4C(a1, a2);
  v6(v5);
  sub_1B216EDC0(v17);
  sub_1B2127D18();
  sub_1B212CF64();
  result = sub_1B21172D8(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
  *v3 = v3;
  return result;
}

void *sub_1B2127AE0(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xE000000000FFC1FFLL | 0x800000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

void sub_1B2127B64()
{
  sub_1B2114660();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2111EF8(v6);
    if (v3)
    {
      sub_1B2113B10(v9, v10, v11, v12, v13, v14);
      v15 = sub_1B21169D8();
      v16 = j__malloc_size(v15);
      sub_1B2117B94(v16);
      if (v2)
      {
LABEL_9:
        v17 = sub_1B2117B84();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v7)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

GRDBInternal::SQLInterpolation __swiftcall SQLInterpolation.init(literalCapacity:interpolationCount:)(GRDBInternal::SQLInterpolation literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  if (__OFADD__(interpolationCount, 1))
  {
    __break(1u);
  }

  else
  {
    v2->elements._rawValue = MEMORY[0x1E69E7CC0];
    sub_1B2127C14();
    v3->elements._rawValue = literalCapacity.elements._rawValue;
  }

  return literalCapacity;
}

Swift::Void __swiftcall SQLInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v3 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v3 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    __src = a1;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC8];
    sub_1B2114CC4(&__src);

    sub_1B2127D18();
    v4 = *(*v1 + 16);
    sub_1B21277F4();
    sub_1B2115E28(v5, v6, v7, v8, v9, v10, v11, v12, v13, __src._countAndFlagsBits);
    *v1 = v2;
  }
}

void sub_1B2127D18()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B2127B64();
    *v1 = v4;
  }
}

uint64_t sub_1B2127D7C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x100000u) >> 16;
  return result;
}

uint64_t sub_1B2127E1C(uint64_t a1)
{
  if ((*(a1 + 162) >> 3) <= 0x14u)
  {
    return *(a1 + 162) >> 3;
  }

  else
  {
    return (*a1 + 21);
  }
}

uint64_t sub_1B2127E38(uint64_t result)
{
  v1 = *(result + 160);
  *(result + 162) &= 7u;
  *(result + 160) = v1;
  return result;
}

__n128 sub_1B212A004(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t DatabaseValue.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B2113A20(v2, v3, v4);
}

uint64_t static StatementArguments.+= infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  if (*(StatementArguments.append(contentsOf:)(&v5) + 16))
  {
    *&v5 = 0;
    *(&v5 + 1) = 0xE000000000000000;
    sub_1B2252CD0();

    *&v5 = 0xD000000000000024;
    *(&v5 + 1) = 0x80000001B2270A30;

    v3 = sub_1B21619D8(&qword_1EB7A3310, &unk_1B226A9D0);
    v4 = sub_1B211AB74(&qword_1EB7A3318, &qword_1EB7A3310, &unk_1B226A9D0);
    sub_1B2156990();
    sub_1B211A328();
    sub_1B2252550();
    sub_1B21140B8();

    MEMORY[0x1B2741EB0](v4, v3);

    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t StatementArguments.append(contentsOf:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];

  v88 = sub_1B2252190();
  sub_1B212A518(v3);
  v5 = 0;
  v6 = *(v4 + 64);
  v92 = v4 + 64;
  v93 = v4;
  v7 = *(v4 + 32);
  sub_1B21115A0();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v91 = v13;
LABEL_2:
  v14 = v5;
  if (!v11)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v5 = v14;
LABEL_7:
    v15 = __clz(__rbit64(v11)) | (v5 << 6);
    v16 = (*(v93 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v93 + 56) + 24 * v15;
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    sub_1B2113A20(*v19, v20, *(v19 + 16));
    v94 = v20;
    HIDWORD(v97) = v22;
    sub_1B2113A20(v21, v20, v22);

    v23 = *(v2 + 8);
    swift_isUniquelyReferenced_nonNull_native();
    v98 = v17;
    v99 = *(v2 + 8);
    v24 = v99;
    sub_1B211E590();
    v25 = v24[2];
    sub_1B2118304();
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v30 = v26;
    v31 = v27;
    v32 = &v99;
    v90 = sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
    v33 = sub_1B2252E70();
    if (v33)
    {
      v32 = v99;
      v33 = sub_1B211E590();
      if ((v31 & 1) != (v34 & 1))
      {
        goto LABEL_30;
      }

      v30 = v33;
    }

    v11 &= v11 - 1;
    v41 = v99;
    if (v31)
    {
      v46 = v99[7] + 24 * v30;
      v47 = *v46;
      v48 = *(v46 + 8);
      v49 = *(v46 + 16);
      *v46 = v21;
      *(v46 + 8) = v94;
      *(v46 + 16) = BYTE4(v97);
      *(v2 + 8) = v41;
      v84 = v47;
      v86 = v48;
      HIDWORD(v87) = v49;
      v50 = sub_1B2113A20(v47, v48, v49);
      sub_1B21130F0(v50, v51, v52, v53, v54, v55, v56, v57, v84, v86, v87, v88);
      swift_isUniquelyReferenced_nonNull_native();
      v99 = v32;
      sub_1B211E590();
      v59 = v58;
      v60 = v32[2];
      sub_1B2118304();
      if (__OFADD__(v62, v63))
      {
        goto LABEL_28;
      }

      v64 = v61;
      v65 = sub_1B2252E70();
      if (v65)
      {
        v65 = sub_1B211E590();
        if ((v59 & 1) != (v66 & 1))
        {
          goto LABEL_30;
        }

        v64 = v65;
      }

      v73 = BYTE4(v87);
      if (v59)
      {

        v88 = v99;
        v74 = v99[7] + 24 * v64;
        v75 = *v74;
        v76 = *(v74 + 8);
        *v74 = v83;
        *(v74 + 8) = v85;
        v77 = *(v74 + 16);
        *(v74 + 16) = BYTE4(v87);
        sub_1B2113A44(v75, v76, v77);
        sub_1B2113A44(v83, v85, SBYTE4(v87));
        sub_1B2113A44(v21, v94, SBYTE4(v97));
      }

      else
      {
        v78 = v99;
        sub_1B21185BC(v65, v66, v67, v68, v69, v70, v71, v72, v83, v85, v87, v89, v90, v91, v92, v93, v94, v97, v98);
        *v79 = v83;
        *(v79 + 8) = v85;
        *(v79 + 16) = v73;
        sub_1B2113A44(v83, v85, v73);
        sub_1B2113A44(v21, v96, SBYTE4(v97));
        v80 = *(v78 + 16);
        v44 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v44)
        {
          goto LABEL_29;
        }

        v88 = v78;
        *(v78 + 16) = v81;
      }

      v13 = v91;
      v8 = v92;
      goto LABEL_2;
    }

    sub_1B21185BC(v33, v34, v35, v36, v37, v38, v39, v40, v83, v85, v87, v88, v90, v91, v92, v93, v94, v97, v98);
    *v42 = v21;
    *(v42 + 8) = v95;
    *(v42 + 16) = BYTE4(v97);
    sub_1B2113A44(v21, v95, SBYTE4(v97));
    v43 = v41[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_27;
    }

    v41[2] = v45;
    *(v2 + 8) = v41;
    v14 = v5;
    v13 = v91;
    v8 = v92;
    if (!v11)
    {
LABEL_4:
      while (1)
      {
        v5 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v5 >= v13)
        {

          return v88;
        }

        v11 = *(v8 + 8 * v5);
        ++v14;
        if (v11)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1B2253390();
  __break(1u);
  return result;
}

void sub_1B212A518(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B212A69C(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1B212A5EC()
{
  sub_1B2114660();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2111EF8(v6);
    if (v3)
    {
      sub_1B2113B10(v9, v10, v11, v12, v13, v14);
      v15 = sub_1B21169D8();
      v16 = j__malloc_size(v15);
      sub_1B2117B94(v16);
      if (v2)
      {
LABEL_9:
        v17 = sub_1B2117B84();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v7)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.setArguments(_:)(GRDBInternal::StatementArguments a1)
{
  v3 = v1;
  v5 = *a1.values._rawValue;
  v4 = *(a1.values._rawValue + 1);

  v6 = sub_1B211BF3C(v1, 0);

  if (!v2)
  {
    v7 = *(v1 + 104);
    v8 = *(v3 + 112);
    *(v3 + 104) = v5;
    *(v3 + 112) = v4;

    *(v3 + 96) = 0;
    sub_1B211A000();
    sub_1B212357C();
    v9 = 0;
    v10 = *(v6 + 16);
    v11 = (v6 + 48);
    while (v9 != 2147483646)
    {
      if (v10 == v9)
      {

        return;
      }

      if (v9 >= *(v6 + 16))
      {
        goto LABEL_10;
      }

      ++v9;
      v13 = *(v11 - 2);
      v12 = *(v11 - 1);
      v14 = *v11;
      v11 += 24;
      v15 = sub_1B2116444();
      sub_1B2113A20(v15, v16, v17);
      v18 = sub_1B2116444();
      sub_1B2123648(v18, v19, v20, v9);
      v21 = sub_1B2116444();
      sub_1B2113A44(v21, v22, v23);
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

unint64_t sub_1B212A8DC(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v9 = sub_1B211497C();
    Database.statementWillExecute(_:)(v9);
    v1 = v2;
    if (v2)
    {
      goto LABEL_12;
    }
  }

  if (sqlite3_step(v3) != 100)
  {
    sub_1B21122DC();
    if (!v4)
    {
      sub_1B2118184();
      sub_1B2122398();
LABEL_12:
    }

    sub_1B2118184();
    v5 = sub_1B211497C();
    Database.statementDidExecute(_:)(v5);
    sub_1B211DA88();

    if (v1)
    {
      return result;
    }

    v7 = 0;
    v8 = 1;
    return v7 | (v8 << 40);
  }

  v10 = sub_1B2115468();
  sub_1B2126898(v10, v11);
  if (!v2)
  {

    v8 = 0;
    v7 = v12 | (v13 << 32);
    return v7 | (v8 << 40);
  }
}

unint64_t sub_1B212A9D0(sqlite3_stmt *a1)
{
  v3 = *(v1 + 28);
  v4 = sqlite3_column_type(a1, v3);
  if (v4 == 5)
  {
    v5 = 0;
LABEL_5:
    LOBYTE(v40) = v4 == 5;
    return v5 | ((v4 == 5) << 32);
  }

  v6 = sqlite3_column_int64(a1, v3);
  if (v6 == v6)
  {
    v5 = v6;
    goto LABEL_5;
  }

  v8 = *(v1 + 16);
  v9 = v8[2];
  v10 = Statement.columnNames.getter();
  sub_1B2113624(v9, v10, v11, v12, v13, v14, v15, v16, v29, v30, v31, v32, v33, v34, SDWORD2(v34), SHIDWORD(v34), v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1));
  v18 = v17;
  v20 = v19;
  type metadata accessor for Row();
  v21 = swift_allocObject();
  v22 = sub_1B211EF2C(v18, v20, v21);
  v23 = Statement.sql.getter();
  v24 = v8[13];
  v25 = v8[14];
  *&v40 = v22;
  *(&v40 + 1) = v3;
  *&v41 = 0;
  BYTE8(v41) = 1;
  *&v42 = v23;
  *(&v42 + 1) = v26;
  *&v43 = v24;
  *(&v43 + 1) = v25;
  sub_1B21A2FC0();
  swift_allocError();
  v28 = v27;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;

  sub_1B21320F0(a1, v3, &v34);
  v31 = v34;
  LOBYTE(v32) = v35;
  sub_1B2183238(MEMORY[0x1E69E72F0], &v36, &v31, v28);
  sub_1B2113A44(v31, *(&v31 + 1), v32);
  sub_1B218450C(&v40);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B212AB84()
{
  sub_1B212D858();
  sub_1B212DAFC(0xD000000000000015, v2);
  if (!v1)
  {
    sub_1B2113180();
    v3 = sub_1B212D8D8();

    sub_1B212AC5C(&v5, &qword_1EB7A1370, &unk_1B2257580);
    v4 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database__lastSchemaVersion;
    if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__lastSchemaVersion + 4))
    {
      if ((v3 & 0x100000000) != 0)
      {
        return;
      }

LABEL_7:
      *v4 = v3;
      *(v4 + 4) = BYTE4(v3) & 1;
      Database.clearSchemaCache()();
      return;
    }

    if ((v3 & 0x100000000) != 0 || *v4 != v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1B212AC5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B21619D8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B212ACBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B212CFD8(a1, a2);
  v5 = sub_1B21619D8(v3, v4);
  sub_1B2111808(v5);
  (*(v6 + 8))(a1);
  return a1;
}

void sub_1B212AD14(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1B212AB84();
  if (!v2)
  {
    a2(a1);
  }
}

uint64_t sub_1B212AD64(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = sub_1B2252B00();
  v9 = sub_1B211280C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v18 - v15;
  a2(v14);
  if (!v4)
  {
    sub_1B21117B4(v16, 0, 1, a4);
    (*(v11 + 40))(a1, v16, v8);
  }

  return 0;
}

void sub_1B212AE6C(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v11 = *a1;
  Database.beginTransaction(_:)(&v11);
  if (!v5)
  {
    v6 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    v7 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock);
    *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) = 1;
    if (a3())
    {
      v8 = 0;
    }

    else
    {
      sub_1B2119EFC();
      *(a2 + v6) = v7;
      Database.commit()();
      if (!v10)
      {
        goto LABEL_9;
      }

      v8 = v10;
    }

    Database.rollback()();
    if (v9)
    {
      if (v8)
      {
      }
    }

    else if (!v8)
    {
LABEL_9:
      *(a2 + v6) = v7;
      return;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

uint64_t sub_1B212B00C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v29 = sub_1B2252B00();
  v10 = sub_1B211280C(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  v20 = sub_1B21117B4(&v27 - v18, 1, 1, a4);
  MEMORY[0x1EEE9AC00](v20);
  if (a1)
  {
    *(&v27 - 6) = a4;
    *(&v27 - 5) = v5;
    *(&v27 - 4) = v19;
    *(&v27 - 3) = a2;
    *(&v27 - 2) = a3;
    v21 = v28;
    sub_1B215256C(sub_1B2152704);
  }

  else
  {
    *(&v27 - 4) = a4;
    *(&v27 - 3) = v19;
    *(&v27 - 2) = a2;
    *(&v27 - 1) = a3;
    v21 = v28;
    Database.inSavepoint(_:)();
  }

  if (v21)
  {
    return (*(v12 + 8))(v19, v29);
  }

  v23 = *(v12 + 16);
  v24 = sub_1B2115B7C();
  v25 = v29;
  v26(v24);
  result = sub_1B2122A98(v17, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(a4 - 8) + 32))(v27, v17, a4);
    return (*(v12 + 8))(v19, v25);
  }

  return result;
}

void Database.inSavepoint(_:)()
{
  sub_1B21325E0();
  v3 = v1;
  v5 = v4;
  if (Database.isInsideTransaction.getter())
  {
    sub_1B211453C();
    sub_1B2116AE4();
    Database.execute(sql:arguments:)(v6, v7);
    sub_1B2124C08();

    if (!v3)
    {
      v9 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
      sub_1B2113BE8();
      v10 = v5();
      if (v8)
      {
        v11 = v8;
      }

      else if (v10)
      {
        v11 = 0;
      }

      else
      {
        sub_1B2115ADC();
        sub_1B21130FC();
        sub_1B2119EFC();
        *(v0 + v9) = v2;
        sub_1B21122F8();
        sub_1B213CEB0();
        Database.execute(sql:arguments:)(v19, v20);
        v3 = v21;
        if (!v21)
        {

          goto LABEL_13;
        }

        v11 = v21;
      }

      v15._countAndFlagsBits = sub_1B212CF30();
      Database.execute(sql:arguments:)(v15, v16);
      sub_1B2124C08();

      if (v3)
      {
        if (v11)
        {
        }
      }

      else
      {
        sub_1B21122F8();
        sub_1B2116AE4();
        Database.execute(sql:arguments:)(v17, v18);
        sub_1B2124C08();

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      swift_willThrow();
LABEL_13:
      *(v0 + v9) = v2;
    }
  }

  else
  {
    sub_1B223C224();
    sub_1B212AE6C(v12, v13, v14);
  }

  sub_1B213CD90();
}

uint64_t sub_1B212B3F8()
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v2 = sub_1B211A144(*(v0 + 16));

    return v2 & 1;
  }

  return result;
}

uint64_t sub_1B212B464(uint64_t *a1, void *a2)
{
  v3 = *a1;

  MEMORY[0x1B2742060](v4);
  sub_1B212B4C4(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1B2252630();
}

void *sub_1B212B4CC(void *a1)
{

  return memcpy(a1, &STACK[0x350], 0xA3uLL);
}

uint64_t sub_1B212B500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (sub_1B212B634(a1))
  {

    sub_1B2116728();
    sub_1B2112A88();
    sub_1B21144F4();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else if (*(v4 + 24))
  {
    MEMORY[0x1EEE9AC00](0);
    v11[2] = a3;
    v11[3] = a1;
    v11[4] = a2;

    sub_1B212B78C(a4, v11);
  }

  else
  {
    sub_1B21AC298();
    sub_1B2118078();
    swift_allocError();
    sub_1B21ABD9C(v10);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B212B634(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v6 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](a1);

    sub_1B212BA0C();
    result = sub_1B2116B08(v6);
    v3 = result;
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        return 0;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1B27427E0](i, v6);
        v5 = result;
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v6 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (sub_1B212B3F8())
      {

        return v5;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t (*sub_1B212B78C(uint64_t (*a1)(char *), uint64_t a2))()
{
  v15[1] = a2;
  v16 = a1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  result = sub_1B212BE94(v9);
  if (!v3)
  {
    v13 = result;
    (*(v5 + 32))(v11, v9, v4);
    v14 = v16(v11);
    (v13)(v14);

    return (*(v5 + 8))(v11, v4);
  }

  return result;
}

uint64_t sub_1B212B904(uint64_t a1, void (*a2)(uint64_t))
{
  result = sub_1B2116B08(a1);
  v6 = result;
  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B27427E0](i, a1);
      v8 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    a2(v8 + 16);

    if (v2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1B212BA0C()
{
  v1 = *(v0 + 32);

  sub_1B212BB58();
}

uint64_t sub_1B212BA8C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);

  a1(&v6);
}

void sub_1B212BB58()
{
  v1 = *(v0 + 24);
  sub_1B2252A50();
}

uint64_t sub_1B212BBDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v5 = *(*a2 + 80);
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v7);
  v20 = &v18 - v10;
  v11 = *v19;
  v22 = v5;
  v23 = v11;
  swift_getKeyPath();
  type metadata accessor for Pool.Item();
  sub_1B22526A0();

  swift_getWitnessTable();
  sub_1B2252510();

  v13 = v24;
  if (v24)
  {
    *(v24 + *(*v24 + 96)) = 0;
LABEL_3:
    *v21 = v13;
    return result;
  }

  v14 = v18;
  v15 = a2[2];
  v16 = a2[3];
  v17 = v20;
  result = v15(result);
  if (!v3)
  {
    (*(v14 + 16))(v9, v17, v5);
    v13 = sub_1B2133DCC(v9, 0);
    v24 = v13;

    sub_1B2252660();
    result = (*(v14 + 8))(v17, v5);
    goto LABEL_3;
  }

  return result;
}

uint64_t (*sub_1B212BE94(char *a1))()
{
  v4 = *(*v1 + 80);
  sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  v12 = v1[7];
  result = sub_1B2252A50();
  if (!v2)
  {
    v14 = *(TupleTypeMetadata2 + 48);
    v15 = *(*(v4 - 8) + 32);
    v15(v9, v11, v4);
    *(swift_allocObject() + 16) = *&v11[v14];
    v15(a1, v9, v4);
    return sub_1B212E030;
  }

  return result;
}

uint64_t sub_1B212C04C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1B212C084()
{
  result = qword_1ED85E0C0[0];
  if (!qword_1ED85E0C0[0])
  {
    sub_1B22520F0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85E0C0);
  }

  return result;
}

unint64_t sub_1B212C0DC()
{
  result = qword_1ED85E0B8;
  if (!qword_1ED85E0B8)
  {
    sub_1B2161A20(&qword_1EB7A27A8, &qword_1B225E820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E0B8);
  }

  return result;
}

uint64_t sub_1B212C140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*a1 + 80);
  sub_1B2161A20(&qword_1EB7A0F20, qword_1B2262540);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v21 - v8;
  v10 = a1[5];
  sub_1B2252A90();
  v11 = a1[6];
  dispatch_group_enter(v11);
  v12 = a1[4];
  sub_1B2117794();
  v13 = type metadata accessor for Pool.Item();
  sub_1B212C3F4(sub_1B212C6AC, a1, v13, &v23);

  if (v2)
  {
    sub_1B2252AA0();
    dispatch_group_leave(v11);
    return swift_willThrow();
  }

  else
  {
    v15 = v23;
    v22 = *(*v23 + 88);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v15;
    v17 = a2;
    v18 = *(v5 - 8);
    (*(v18 + 16))(v9, v15 + v22, v5);
    (*(v18 + 32))(v17, v9, v5);
    v19 = (v17 + *(TupleTypeMetadata2 + 48));
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B212E060;
    *(v20 + 24) = v16;
    *v19 = sub_1B212D718;
    v19[1] = v20;
  }
}

uint64_t sub_1B212C394()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1B212C3F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v5 = v4;
  v18 = a1;
  v19 = a2;
  v7 = sub_1B22520F0();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + *(*v5 + 96));
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v14 = *(v8 + 72);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B22546B0;
  v17 = v13;
  sub_1B22520E0();
  v25 = v16;
  sub_1B212C084();
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B212C0DC();
  sub_1B2252BC0();
  v21 = a3;
  v22 = v18;
  v23 = v19;
  v24 = v5;
  sub_1B2252A40();
  (*(v9 + 8))(v12, v7);
}

uint64_t sub_1B212C5FC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 88);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t sub_1B212C6C8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  sub_1B21115E0();
  v35 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v15 = v14 - v13;
  v17 = *(v16 + 16);
  sub_1B21115E0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1B2111844();
  v25 = v24 - v23;
  sub_1B21115E0();
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1B2111844();
  v31 = v30 - v29;
  (*(v32 + 16))(v30 - v29, v33);
  if (sub_1B2122A98(v31, 1, v17) == 1)
  {
    return sub_1B21117B4(a5, 1, 1, a3);
  }

  (*(v19 + 32))(v25, v31, v17);
  a1(v25, v15);
  result = (*(v19 + 8))(v25, v17);
  if (v5)
  {
    return (*(v35 + 32))(a4, v15, a2);
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fromDatabaseValue(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1B2252B00();
  v15 = sub_1B211280C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v24 - v20;
  LOBYTE(v20) = *(a1 + 16);
  v32 = *a1;
  v33 = v20;
  (*(a6 + 32))(&v32, AssociatedTypeWitness, a6);
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = v24;
  sub_1B212C6C8(sub_1B212CCEC, MEMORY[0x1E69E73E0], a2, v22, v25);
  return (*(v17 + 8))(v21, v14);
}

uint64_t sub_1B212CB00(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_1B2252570();
}

uint64_t sub_1B212CC08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static String.fromDatabaseValue(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static String.fromDatabaseValue(_:)(uint64_t *a1)
{
  v2 = sub_1B22522F0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  if (v6 == 3)
  {
    sub_1B22522E0();
    return sub_1B22522C0();
  }

  else
  {
    result = 0;
    if (v6 == 2)
    {
      v8 = a1[1];

      return v4;
    }
  }

  return result;
}

uint64_t sub_1B212CCEC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  return sub_1B212CB00(a1);
}

uint64_t sub_1B212CD20()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B212CD80()
{

  return swift_getWitnessTable();
}

uint64_t sub_1B212CDCC(uint64_t a1)
{

  return sub_1B212AC5C(a1, v1, v2);
}

void sub_1B212CDE4(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = *(a1 + 34);
}

__n128 sub_1B212CE50()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  result = *(v0 + 248);
  v10 = *(v0 + 264);
  v11 = *(v0 + 280);
  v12 = *(v0 + 296);
  v13 = *(v0 + 312);
  return result;
}

uint64_t sub_1B212CEAC()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1B212CECC()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B212CEE8()
{
}

void sub_1B212CF64()
{
  v2 = *(*v0 + 16);

  sub_1B21277F4();
}

uint64_t sub_1B212CFA0()
{

  return swift_allocObject();
}

uint64_t *sub_1B212D02C()
{
  result = sub_1B2127E38(v0 - 256);
  v2 = *result;
  return result;
}

uint64_t sub_1B212D05C()
{

  return sub_1B21FDE44(v0);
}

uint64_t sub_1B212D094()
{
  v1 = *(*(v0 - 200) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

uint64_t sub_1B212D0A4()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1B212D0C4()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B212D0E0()
{
  v2 = *(v0 + 16) + 1;

  sub_1B2162630(0, v2, 1, v0);
}

void sub_1B212D104()
{
  v2 = *(*(v0 + 80) + 16);

  sub_1B21616FC();
}

void sub_1B212D140(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X8>)
{

  sub_1B22341D4(v3, a1, a2, a3);
}

uint64_t sub_1B212D42C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1B22525E0();
  }

  return result;
}

uint64_t sub_1B212D478(uint64_t *a1)
{
  v3 = *a1;

  swift_getAtKeyPath();

  return v2;
}

uint64_t sub_1B212D4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[5] = a3;
  v6[2] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return sub_1B212B00C(0, sub_1B212D9C4, v6, a4, a5);
}

void sub_1B212D54C()
{

  JUMPOUT(0x1B2741EB0);
}

unint64_t sub_1B212D590()
{
  *(v1 - 96) = *v0;

  return sub_1B211E590();
}

void sub_1B212D5B4()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B212D5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{

  return sub_1B213A774(&STACK[0x2D0], &a53);
}

uint64_t sub_1B212D5F0()
{

  return swift_allocObject();
}

void sub_1B212D630()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void *sub_1B212D660(void *a1)
{

  return memcpy(a1, &STACK[0x4C0], 0xA3uLL);
}

void *sub_1B212D6D8(void *a1)
{

  return memcpy(a1, &STACK[0x560], 0xA3uLL);
}

void *sub_1B212D6F0(void *a1)
{

  return memcpy(a1, v1, 0xA3uLL);
}

uint64_t sub_1B212D720()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1B212D770(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  sub_1B2117794();
  sub_1B212C3F4(sub_1B212D800, a1, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);

  v5 = *(v2 + 40);
  sub_1B2252AA0();
  v6 = *(v2 + 48);

  dispatch_group_leave(v6);
}

void sub_1B212D820()
{
  *(v1 - 96) = v0;

  sub_1B2116B10();
}

uint64_t sub_1B212D870()
{

  return swift_getDynamicType();
}

uint64_t sub_1B212D890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  return sub_1B211EE68(v32, &a32);
}

unint64_t sub_1B212D8D8()
{
  sub_1B2117340();
  sub_1B2117F74(&qword_1EB7A1370, &unk_1B2257580, v1, v7);
  sub_1B21619D8(&qword_1EB7A1380, &qword_1B2257E18);
  sub_1B2111904();
  swift_allocObject();
  sub_1B21118E8();

  result = sub_1B2112894(v2, v3);
  if (!v0)
  {
    sub_1B212216C();
    v5 = sub_1B212DD5C();

    v6 = v5;
    if ((v5 & 0x10000000000) != 0)
    {
      v6 = 0;
    }

    return v6 | (((v5 & 0x10100000000) != 0) << 32);
  }

  return result;
}

void sub_1B212D9C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_1B212AD14(*(v0 + 24), *(v0 + 32));
}

uint64_t sub_1B212D9E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1B21159FC();
  if (*(v8 + 16))
  {
    v9 = sub_1B211E590();
    if (v10)
    {
      v5 = *(*(v4 + 56) + 8 * v9);

LABEL_7:
      sub_1B2122344();
      return v5;
    }
  }

  swift_unownedRetainStrong();
  v11 = sub_1B212641C(a1, a2, 1);
  if (!v3)
  {
    v5 = v11;

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B2133EB0();
    goto LABEL_7;
  }

  sub_1B2122344();
  return v5;
}

uint64_t sub_1B212DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *v4;
  *(v4 + 24) = 0;
  v4[2] = a1;
  v12 = v11;
  sub_1B211E17C(a4, &v20, &qword_1EB7A1370, &unk_1B2257580);
  if (!v21)
  {

    sub_1B2122400(&v20, &qword_1EB7A1370, &unk_1B2257580);
    *(v6 + 7) = 0;
    goto LABEL_8;
  }

  v26 = v12;
  sub_1B21217FC(&v20, v23);
  v13 = v24;
  v14 = v25;
  sub_1B21139A0(v23, v24);
  v21 = type metadata accessor for Statement();
  v22 = &protocol witness table for Statement;
  *&v20 = a1;
  swift_retain_n();
  v15 = sub_1B21B2B3C(0, &v20, v13, v14);
  if (v5)
  {
    sub_1B211A378(a2);

    sub_1B2122400(a4, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(&v20);
    sub_1B2113208(v23);
    v16 = v6[2];

    swift_deallocPartialClassInstance();
    return v6;
  }

  v17 = v15;
  result = sub_1B2113208(&v20);
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v17 <= 0x7FFFFFFF)
  {
    *(v6 + 7) = v17;
    sub_1B2113208(v23);
LABEL_8:
    v23[0] = a2;
    v23[1] = a3;
    sub_1B2114290();
    sub_1B2119E50(v19);
    sub_1B2122400(a4, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(a2);
    if (v5)
    {
    }

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B212DD5C()
{
  v2 = 1;
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    result = 0;
    return result & 0xFFFFFFFFFFLL | (v2 << 40);
  }

  sub_1B2131988();
  v4 = sub_1B2122D50();
  result = sub_1B212A8DC(v4);
  if (!v1)
  {
    if ((result & 0x10000000000) != 0)
    {
      v2 = 1;
      *(v0 + 24) = 1;
    }

    else
    {
      v2 = 0;
    }

    return result & 0xFFFFFFFFFFLL | (v2 << 40);
  }

  return result;
}

uint64_t sub_1B212DDF0()
{

  return type metadata accessor for QueryInterfaceRequest();
}

uint64_t sub_1B212DE24@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 16);
  *(v3 - 136) = a1;
  v5 = *(v3 - 72);
  *(v3 - 96) = v1;
  *(v3 - 88) = v2;
  return v1;
}

void sub_1B212DE50()
{
  v2 = *(v0 + 16) + 1;

  sub_1B216270C(0, v2, 1, v0);
}

uint64_t sub_1B212DE74()
{

  return sub_1B2252250();
}

uint64_t sub_1B212DE98()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_1B212DEB4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v2[1] = v1;
  v4 = *v2;
}

uint64_t sub_1B212DF3C()
{

  return swift_getAssociatedTypeWitness();
}

void sub_1B212DF68()
{

  JUMPOUT(0x1B2741EB0);
}

id sub_1B212DF90()
{

  return sub_1B21FE21C(v2, v1, v0);
}

void sub_1B212DFC0()
{
  v2 = *(*(v0 + 56) + 16);

  sub_1B21616FC();
}

uint64_t sub_1B212DFE0()
{

  return sub_1B2252F00();
}

uint64_t sub_1B212E038()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1B212E060()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1B212D770(v1);
}

uint64_t sub_1B212E088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 40);

  v7(v13, a3, a4);
  v8 = v13[0];
  v9 = v13[1];
  v13[3] = type metadata accessor for _RowDecoder();
  v13[4] = swift_getWitnessTable();
  v10 = swift_allocObject();
  v13[0] = v10;
  v11 = MEMORY[0x1E69E7CC0];
  v10[2] = a2;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v9;
  return sub_1B22527E0();
}

uint64_t sub_1B212E184(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = *(a2 + 24);
  v9[0] = *(a2 + 16);
  type metadata accessor for _RowDecoder.KeyedContainer();
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v6;
  v9[3] = v5;

  sub_1B212E5CC(v6);
  v9[0] = sub_1B212E590(v9);
  swift_getWitnessTable();
  return sub_1B2252F70();
}

uint64_t sub_1B212E25C()
{

  return swift_allocObject();
}

uint64_t sub_1B212E2C8()
{

  return sub_1B2127DC0(&STACK[0x608], &STACK[0x4B8]);
}

void *sub_1B212E2E0(void *a1)
{

  return memcpy(a1, v1, 0xA3uLL);
}

uint64_t sub_1B212E32C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B21619D8(a2, a3);
  sub_1B21118A0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t RecordCursor._element(sqliteStatement:)()
{
  v1 = *(*v0 + 80);
  v2 = v0[4];
  v3 = *(*v0 + 88);
  v4 = *(v3 + 8);

  return v4(v5, v1, v3);
}

uint64_t FetchableRecord<>.init(row:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RowDecoder();
  inited = swift_initStackObject();
  sub_1B212E088(inited, a1, a2, a3);
}

unint64_t sub_1B212E5CC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1B212E5E0(uint64_t *a1)
{
  v62 = *v1;
  v3 = *(v62 + 88);
  v60 = sub_1B2252B00();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v60);
  v8 = &v50 - v7;
  v63 = v3;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - v11;
  v13 = *a1;
  v12 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  v1[12] = 0;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  v1[10] = 0;
  v1[2] = v13;
  v1[3] = v12;
  v1[4] = v15;
  v1[5] = v14;
  if (!v15)
  {
    v48 = 0;
LABEL_16:
    v1[11] = v48;
    return v1;
  }

  v56 = v1;
  v16 = v12;

  v55 = v16;

  sub_1B212E5CC(v15);
  v17 = sub_1B2252190();
  v69 = v13;
  v70[0] = 0;
  v70[1] = sub_1B2240670;
  v70[2] = 0;
  v58 = v17;
  v59 = (v4 + 8);
  v53 = (v9 + 8);
  v54 = (v9 + 32);

  v61 = v8;
  while (1)
  {
    while (1)
    {
      if (v70[0] == *(v13 + 72))
      {

        sub_1B21268B4(v15);

        v1 = v56;
        v48 = v58;
        goto LABEL_16;
      }

      Row.subscript.getter();
      v19 = v18;
      v21 = v20;
      v64 = v18;
      v65 = v20;
      v22 = v15;
      v23 = v14;
      v24 = v66;
      v25 = v67;
      v26 = v68;

      sub_1B2113A20(v24, v25, v26);

      sub_1B2113A44(v24, v25, v26);
      sub_1B2151DE0(v70, v70[0]);
      v27 = v25;
      v14 = v23;
      v15 = v22;
      sub_1B2113A44(v24, v27, v26);
      v64 = v22;
      v65 = v14;
      sub_1B212E5CC(v22);
      v28 = v61;
      v29 = *(v62 + 104);
      v30 = v63;
      sub_1B22262BC();
      sub_1B21268B4(v64);
      if (sub_1B2122A98(v28, 1, v30) != 1)
      {
        break;
      }

      (*v59)(v28, v60);
    }

    (*v54)(v57, v28, v63);
    v31 = sub_1B22534D0();
    v33 = v32;
    v34 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v34;
    v51 = v31;
    v35 = sub_1B211E590();
    if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
    {
      break;
    }

    v37 = v35;
    LODWORD(v58) = v36;
    sub_1B21619D8(&qword_1EB7A1D30, &qword_1B225A790);
    if (sub_1B2252E70())
    {
      v38 = sub_1B211E590();
      if ((v58 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v37 = v38;
      if (v58)
      {
        goto LABEL_13;
      }

LABEL_10:
      v40 = v64;
      v64[(v37 >> 6) + 8] |= 1 << v37;
      v41 = (v40[6] + 16 * v37);
      *v41 = v51;
      v41[1] = v33;
      v42 = (v40[7] + 16 * v37);
      *v42 = v19;
      v42[1] = v21;
      (*v53)(v57, v63);
      v43 = v40[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_18;
      }

      v58 = v40;
      v40[2] = v45;
    }

    else
    {
      if ((v58 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_13:

      v58 = v64;
      v46 = (v64[7] + 16 * v37);
      v47 = v46[1];
      *v46 = v19;
      v46[1] = v21;

      (*v53)(v57, v63);
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B2253390();
  __break(1u);
  return result;
}

uint64_t sub_1B212EB04()
{
  sub_1B211D7E8();
  if (!v1)
  {
    sub_1B211689C();
    v0 = v2();
  }

  return v0;
}

uint64_t sub_1B212EBC0()
{
  v1 = *v0;
  v2 = v0[11];
  if (v2)
  {
    v3 = v0;
    v4 = *(v1 + 88);
    v5 = *(v1 + 104);
    v6 = sub_1B22534D0();
    v8 = sub_1B21C9090(v6, v7, v2);
    v10 = v9;

    if (!v10)
    {
      if (v3[4] == 1)
      {
        v11 = sub_1B22534D0();
        v13 = v12;
        v14 = sub_1B2190834(v11, v12);
        v16 = v15;
        sub_1B2226394();
        v19 = v16;
        if (v14 != v11 || v16 != v13)
        {
          v21 = v17;
          v22 = v18;
          v60 = v19;
          if ((sub_1B22531F0() & 1) == 0)
          {
            v42 = v21 == v11 && v22 == v13;
            if (v42 || (sub_1B22531F0() & 1) != 0)
            {

              v52 = 0;
              v53 = 0xE000000000000000;
              sub_1B2252CD0();
              v43 = *(v5 + 16);
              sub_1B22531D0();
              MEMORY[0x1B2741EB0](2238496, 0xE300000000000000);
              MEMORY[0x1B2741EB0](v11, v13);

              v44 = 0x80000001B2270920;
              v45 = 0xD000000000000011;
            }

            else
            {
              v52 = 0;
              v53 = 0xE000000000000000;
              sub_1B2252CD0();
              v46 = *(v5 + 16);
              sub_1B22531D0();
              MEMORY[0x1B2741EB0](2238496, 0xE300000000000000);
              MEMORY[0x1B2741EB0](v11, v13);

              MEMORY[0x1B2741EB0](0xD000000000000022, 0x80000001B22708F0);
              MEMORY[0x1B2741EB0](v21, v22);

              v45 = 0x7265766E6F63202CLL;
              v44 = 0xEF206F7420646574;
            }

            MEMORY[0x1B2741EB0](v45, v44);
            MEMORY[0x1B2741EB0](v14, v60);

            goto LABEL_13;
          }
        }

        v52 = 0;
        v53 = 0xE000000000000000;
        v23 = *(v5 + 16);
        sub_1B22531D0();
        MEMORY[0x1B2741EB0](2238496, 0xE300000000000000);
        MEMORY[0x1B2741EB0](v11, v13);
      }

      else
      {
        v52 = 0;
        v53 = 0xE000000000000000;
        v26 = *(v5 + 16);
        sub_1B22531D0();
        MEMORY[0x1B2741EB0](2238496, 0xE300000000000000);
        v27 = sub_1B22534D0();
        MEMORY[0x1B2741EB0](v27);
      }

      MEMORY[0x1B2741EB0](10530, 0xE200000000000000);
LABEL_13:
      v28 = v52;
      v29 = v53;
      v60 = sub_1B22534D0();
      v49 = v30;
      v50 = 0uLL;
      v31 = v3[2];
      v51 = -1;

      RowDecodingContext.init(row:key:)(v32, &v50, &v52);
      *&v50 = 0;
      *(&v50 + 1) = 0xE000000000000000;
      sub_1B2252CD0();

      *&v50 = 0x20746F6E2079656BLL;
      *(&v50 + 1) = 0xEF203A646E756F66;
      MEMORY[0x1B2741EB0](v28, v29);

      v47 = *(&v50 + 1);
      v48 = v50;

      v33 = sub_1B2183FE0();
      v8 = v53;
      v34 = v54;
      v35 = v56;
      v36 = v57;
      v37 = v58;
      v38 = v59;
      v39 = v55;
      sub_1B21841CC(v53, v54, v55);

      sub_1B211CF8C(v37);
      sub_1B218450C(&v52);
      LOBYTE(v50) = 0;
      sub_1B21A2FC0();
      swift_allocError();
      *v40 = v60;
      *(v40 + 8) = v49;
      *(v40 + 16) = 0;
      *(v40 + 24) = v48;
      *(v40 + 32) = v47;
      *(v40 + 40) = v33;
      *(v40 + 48) = v8;
      *(v40 + 56) = v34;
      *(v40 + 64) = v39;
      *(v40 + 72) = v35;
      *(v40 + 80) = v36;
      *(v40 + 88) = v37;
      *(v40 + 96) = v38;
      *(v40 + 104) = v50;
      swift_willThrow();
    }
  }

  else
  {
    v24 = *(v1 + 88);
    v25 = *(v1 + 104);
    return sub_1B22534D0();
  }

  return v8;
}

uint64_t sub_1B212F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    v6 = sub_1B211E590();
    if (v7)
    {
      return *(*(a5 + 56) + 8 * v6);
    }
  }

  v9 = sub_1B2252220();
  v8 = sub_1B212F2CC(v9, v10, a5);

  return v8;
}

uint64_t sub_1B212F2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B211E590();
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B212F324(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1B212F3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a4;
  v89 = a5;
  v9 = *v5;
  v91 = a3;
  v92 = v9;
  v10 = sub_1B2251E90();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5[2];
  v93 = a2;
  v90 = v5;
  v15 = sub_1B212EBC0();
  v85 = v14;
  if (v6)
  {
    v84 = a1;

    v88 = 0;
    goto LABEL_5;
  }

  v17 = v15;
  v18 = v16;
  v19 = v14;
  v20 = *(v14 + 40);
  v21 = *(v14 + 48);
  sub_1B21139A0((v19 + 16), v20);
  v22 = (*(v21 + 88))(v17, v18, v20, v21);
  LOBYTE(v17) = v23;

  if (v17)
  {
    v84 = a1;
    v88 = 0;
LABEL_5:
    Row.scopes.getter();
    v24 = v94;
    v26 = v95;
    v25 = v96;
    v27 = *(v92 + 88);
    v86 = *(v92 + 104);
    sub_1B22534D0();
    v94 = v24;
    v95 = v26;
    v96 = v25;
    v28 = Row.ScopesTreeView.subscript.getter();

    if (v28)
    {
      v29 = sub_1B211FEA4();
      sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B22546B0;
      v31 = v86;
      *(inited + 56) = v27;
      *(inited + 64) = v31;
      v32 = sub_1B212FF14((inited + 32));
      (*(*(v27 - 8) + 16))(v32, v93, v27);
      *&v94 = v29;
      sub_1B2130EC8(inited);
      sub_1B222A2B8(v84, v28, v94, v91);

LABEL_7:

      return;
    }

    v33 = v85;
    swift_beginAccess();
    v34 = *(v33 + 80);
    v35 = *(v33 + 88);

    v36 = v93;
    sub_1B22534D0();
    *&v94 = v34;
    *(&v94 + 1) = v35;
    v37 = Row.PrefetchedRowsView.subscript.getter();

    if (v37)
    {
      v38 = sub_1B211FEA4();
      v39 = *(v92 + 80);
      v40 = *(v92 + 96);
      v96 = type metadata accessor for PrefetchedRowsDecoder();
      WitnessTable = swift_getWitnessTable();
      *&v94 = v37;
      *(&v94 + 1) = v38;
      v97 = WitnessTable;
      v95 = 0;
      sub_1B22527E0();
      return;
    }

    v59 = v90;
    swift_beginAccess();
    sub_1B222ED34((v59 + 6), &v99);
    if (!v101)
    {
      sub_1B212AC5C(&v99, &qword_1EB7A3258, &qword_1B226A770);
      v78 = v86;
      v96 = v27;
      v97 = v86;
      v79 = sub_1B212FF14(&v94);
      v92 = *(*(v27 - 8) + 16);
      (v92)(v79, v36, v27);
      swift_beginAccess();
      sub_1B222EDA4(&v94, (v59 + 6));
      swift_endAccess();
      v80 = sub_1B211FEA4();
      sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      v81 = swift_initStackObject();
      *(v81 + 16) = xmmword_1B22546B0;
      *(v81 + 56) = v27;
      *(v81 + 64) = v78;
      v82 = sub_1B212FF14((v81 + 32));
      (v92)(v82, v36, v27);
      *&v94 = v80;
      sub_1B2130EC8(v81);
      sub_1B222A2B8(v84, v33, v94, v91);
      goto LABEL_7;
    }

    sub_1B21217FC(&v99, &v94);
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1B225B140;
    sub_1B21139A0(&v94, v96);
    *(v60 + 32) = sub_1B22534D0();
    *(v60 + 40) = v61;
    v62 = v27;
    v63 = v86;
    *(v60 + 48) = sub_1B22534D0();
    *(v60 + 56) = v64;
    *&v99 = v60;

    v6 = v88;
    sub_1B222EB88(&v99);
    if (!v6)
    {

      v65 = v99;
      v66 = sub_1B2252D40();
      swift_allocError();
      v68 = v67;
      v92 = *(sub_1B21619D8(&qword_1EB7A3260, &qword_1B226A778) + 48);
      v68[3] = v62;
      v68[4] = v63;
      v69 = sub_1B212FF14(v68);
      (*(*(v62 - 8) + 16))(v69, v36, v62);
      sub_1B211FEA4();
      strcpy(&v99, "No such key: ");
      HIWORD(v99) = -4864;
      v102 = v65;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
      v70 = sub_1B2252250();
      v72 = v71;

      MEMORY[0x1B2741EB0](v70, v72);

      sub_1B2252D30();
      (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69E6AF0], v66);
      swift_willThrow();
      sub_1B2113208(&v94);
      return;
    }

    goto LABEL_35;
  }

  v42 = v91;
  if (v10 == a1)
  {
    v73 = *(v92 + 80);
    (*(*(v92 + 96) + 32))(&v94);
    v99 = v94;
    v100 = v95;
    sub_1B2229E00(v85, v22, v13);
    sub_1B2187B6C(v99, *(&v99 + 1), v100);
LABEL_32:
    swift_dynamicCast();
    return;
  }

  v43 = sub_1B212F324(v91);
  v46 = v85;
  if (!v43)
  {
    v74 = sub_1B212FED0(v42);
    if (!v74)
    {
      sub_1B2130C20(a1, v46, v22, v93);
      return;
    }

    v96 = v74;
    v97 = v75;
    sub_1B212FF14(&v94);
    static DatabaseValueConvertible.decode(fromRow:atUncheckedIndex:)();
    v76 = &unk_1EB7A1290;
    v77 = &unk_1B226A750;
    goto LABEL_31;
  }

  v47 = v43;
  v48 = v45;
  v93 = v22;
  v88 = 0;
  v96 = v43;
  v97 = v44;
  v98 = v45;
  v49 = sub_1B212FF14(&v94);
  v50 = *(v46 + 64);
  if (!v50)
  {
    v83 = v88;
    Row.fastDecode<A>(_:atUncheckedIndex:)();
    if (v83)
    {
      goto LABEL_27;
    }

LABEL_30:
    v76 = &unk_1EB7A3250;
    v77 = &unk_1B226A758;
LABEL_31:
    sub_1B21619D8(v76, v77);
    goto LABEL_32;
  }

  v51 = v93;
  if (v93 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v92 = v49;
    if (v93 <= 0x7FFFFFFF)
    {
      MEMORY[0x1EEE9AC00](v49);
      v52 = &v84 - 4;
      *(&v84 - 2) = v46;
      *(&v84 - 1) = v51;
      v53 = sqlite3_column_type(v50, v51);
      if (v53 == 5)
      {
LABEL_18:
        MEMORY[0x1EEE9AC00](v53);
        *(&v84 - 2) = sub_1B222EEE8;
        *(&v84 - 1) = v52;
        static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v50, v51, sub_1B222EEEC, (&v84 - 4), v47);
LABEL_27:
        sub_1B21C80D0(&v94);
        return;
      }

      v87 = &v84 - 4;
      v90 = &v84;
      v54 = sub_1B2252B00();
      v86 = &v84;
      v55 = *(v54 - 8);
      v56 = *(v55 + 64);
      MEMORY[0x1EEE9AC00](v54);
      v58 = &v84 - v57;
      (*(v48 + 8))(v50, v51, v47, v48);
      if (sub_1B2122A98(v58, 1, v47) == 1)
      {
        v53 = (*(v55 + 8))(v58, v54);
        v52 = v87;
        LODWORD(v51) = v93;
        goto LABEL_18;
      }

      (*(*(v47 - 8) + 32))(v92, v58, v47);
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_35:

  __break(1u);
}

uint64_t sub_1B212FED0(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1B212FF14(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1B212FF74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v97 = a4;
  v101 = a3;
  v95 = a1;
  v100 = a5;
  v102 = *v5;
  v8 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v95 - v10;
  v12 = sub_1B2251E90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v5[2];
  v112 = a2;
  v96 = v5;
  v18 = sub_1B212EBC0();
  v99 = v17;
  if (v6)
  {

    v98 = 0;
    goto LABEL_5;
  }

  v20 = v18;
  v21 = v19;
  v22 = v17;
  v24 = *(v17 + 40);
  v23 = *(v17 + 48);
  sub_1B21139A0((v22 + 16), v24);
  v25 = (*(v23 + 88))(v20, v21, v24, v23);
  LOBYTE(v20) = v26;

  if ((v20 & 1) == 0)
  {
    v54 = v95;
    if (v12 == v95)
    {
      v70 = *(v102 + 80);
      (*(*(v102 + 96) + 32))(&v108);
      v103 = v108;
      v104 = v109;
      sub_1B2229AB0(v99, v25, v11);
      sub_1B2187B6C(v103, *(&v103 + 1), v104);
      if (sub_1B2122A98(v11, 1, v12) != 1)
      {
        (*(v13 + 32))(v16, v11, v12);
        v89 = v100;
        v90 = v101;
        swift_dynamicCast();
        v51 = v89;
        v52 = 0;
        v53 = v90;
        goto LABEL_14;
      }

      sub_1B212AC5C(v11, &qword_1EB7A1330, &unk_1B226A760);
      goto LABEL_13;
    }

    v55 = v25;
    v56 = v101;
    v57 = sub_1B212F324(v101);
    if (!v57)
    {
      v71 = sub_1B212FED0(v56);
      if (!v71)
      {
        v84 = v99;
        v86 = v99[5];
        v85 = v99[6];
        sub_1B21139A0(v99 + 2, v86);
        v87 = v55;
        if ((*(v85 + 40))(v55, v86, v85))
        {
          goto LABEL_40;
        }

        v88 = v100;
        sub_1B2130C20(v54, v84, v87, v112);
LABEL_43:
        v51 = v88;
        v52 = 0;
        goto LABEL_44;
      }

      v73 = v71;
      v74 = v72;
      v75 = sub_1B2252B00();
      v76 = *(v75 - 8);
      v77 = *(v76 + 64);
      MEMORY[0x1EEE9AC00](v75);
      v79 = &v95 - v78;
      static DatabaseValueConvertible.decodeIfPresent(fromRow:atUncheckedIndex:)();
      if (sub_1B2122A98(v79, 1, v73) == 1)
      {
        (*(v76 + 8))(v79, v75);
        goto LABEL_40;
      }

      v105 = v73;
      v106 = v74;
      v94 = sub_1B212FF14(&v103);
      (*(*(v73 - 8) + 32))(v94, v79, v73);
      sub_1B21217FC(&v103, &v108);
      v92 = &unk_1EB7A1290;
      v93 = &unk_1B226A750;
LABEL_42:
      sub_1B21619D8(v92, v93);
      v88 = v100;
      swift_dynamicCast();
      goto LABEL_43;
    }

    v60 = v57;
    v97 = v58;
    v102 = v59;
    v61 = sub_1B2252B00();
    v62 = *(v61 - 8);
    v63 = *(v62 + 64);
    v64 = MEMORY[0x1EEE9AC00](v61);
    v66 = &v95 - v65;
    v67 = v99[8];
    v112 = v68;
    v96 = v64;
    if (v67)
    {
      if (v55 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v55 <= 0x7FFFFFFF)
      {
        MEMORY[0x1EEE9AC00](v64);
        *(&v95 - 2) = v99;
        *(&v95 - 1) = v55;
        v69 = sqlite3_column_type(v67, v55);
        if (v69 == 5)
        {
          sub_1B21117B4(v66, 1, 1, v60);
          v56 = v101;
LABEL_23:
          (*(v62 + 8))(v66, v96);
LABEL_40:
          v51 = v100;
          v52 = 1;
LABEL_44:
          v53 = v56;
          goto LABEL_14;
        }

        v99 = &v95;
        v98 = 0;
        v95 = &v95;
        MEMORY[0x1EEE9AC00](v69);
        v82 = &v95 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
        v81 = v102;
        (*(v102 + 8))(v67, v55, v60, v102);
        if (sub_1B2122A98(v82, 1, v60) == 1)
        {
          v83 = (*(v62 + 8))(v82, v96);
          MEMORY[0x1EEE9AC00](v83);
          *(&v95 - 2) = sub_1B21B6634;
          *(&v95 - 1) = (&v95 - 4);
          static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v67, v55, sub_1B21B663C, (&v95 - 4), v60);
          return;
        }

        (*(*(v60 - 8) + 32))(v66, v82, v60);
        sub_1B21117B4(v66, 0, 1, v60);
        v56 = v101;
        v80 = v97;
        goto LABEL_37;
      }

      __break(1u);
      return;
    }

    v80 = v97;
    v81 = v102;
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    if (sub_1B2122A98(v66, 1, v60) == 1)
    {
      goto LABEL_23;
    }

LABEL_37:
    v105 = v60;
    v106 = v80;
    v107 = v81;
    v91 = sub_1B212FF14(&v103);
    (*(*(v60 - 8) + 32))(v91, v66, v60);
    sub_1B2127608(&v103, &v108);
    v92 = &unk_1EB7A3250;
    v93 = &unk_1B226A758;
    goto LABEL_42;
  }

  v98 = 0;
LABEL_5:
  Row.scopes.getter();
  v27 = v108;
  v29 = v109;
  v28 = v110;
  v30 = *(v102 + 88);
  v31 = *(v102 + 104);
  sub_1B22534D0();
  v108 = v27;
  v109 = v29;
  v110 = v28;
  v32 = Row.ScopesTreeView.subscript.getter();

  if (v32)
  {
    Row.containsNonNullValue.getter();
    v33 = v98;
    if (v34)
    {
      v35 = sub_1B211FEA4();
      sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B22546B0;
      *(inited + 56) = v30;
      *(inited + 64) = v31;
      v37 = sub_1B212FF14((inited + 32));
      (*(*(v30 - 8) + 16))(v37, v112, v30);
      *&v108 = v35;
      sub_1B2130EC8(inited);
      v38 = v100;
      v39 = v101;
      sub_1B222A2B8(v95, v32, v108, v101);
      if (v33)
      {

        return;
      }

      v51 = v38;
      v52 = 0;
      v53 = v39;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v40 = v99;
  swift_beginAccess();
  v41 = *(v40 + 80);
  v42 = *(v40 + 88);

  sub_1B22534D0();
  *&v108 = v41;
  *(&v108 + 1) = v42;
  v43 = Row.PrefetchedRowsView.subscript.getter();

  v44 = v98;
  if (!v43)
  {
LABEL_13:
    v51 = v100;
    v52 = 1;
    v53 = v101;
    goto LABEL_14;
  }

  v45 = sub_1B211FEA4();
  v46 = *(v102 + 80);
  v47 = *(v102 + 96);
  v110 = type metadata accessor for PrefetchedRowsDecoder();
  WitnessTable = swift_getWitnessTable();
  *&v108 = v43;
  *(&v108 + 1) = v45;
  v111 = WitnessTable;
  v109 = 0;
  v49 = v100;
  v50 = v101;
  sub_1B22527E0();
  if (v44)
  {
    return;
  }

  v51 = v49;
  v52 = 0;
  v53 = v50;
LABEL_14:
  sub_1B21117B4(v51, v52, 1, v53);
}

const void *sub_1B2130BA0@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = Data.init(sqliteStatement:index:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

const void *Data.init(sqliteStatement:index:)(sqlite3_stmt *a1, int a2)
{
  result = sqlite3_column_blob(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sqlite3_column_bytes(a1, a2);
    return MEMORY[0x1B27418E0](v5, v6);
  }

  return result;
}

void sub_1B2130C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  sub_1B211FEA4();
  sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  v9 = v7[11];
  *(inited + 56) = v9;
  *(inited + 64) = v7[13];
  v10 = sub_1B212FF14((inited + 32));
  (*(*(v9 - 8) + 16))(v10, a4, v9);

  sub_1B2130EC8(inited);
  v11 = v7[10];
  v12 = v7[12];
  type metadata accessor for ColumnDecoder();
  swift_getWitnessTable();
  sub_1B22527E0();
  if (v19)
  {
    v13 = v19;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    if (swift_dynamicCast())
    {

      v14 = sub_1B223EBCC(a3);
      v16 = v15;
      v18 = v14;
      v17 = sub_1B22534D0();
      (*(v12 + 24))(v17);

      sub_1B2251A20();

      sub_1B21267A8(v18, v16);
    }
  }
}

uint64_t sub_1B2130F08(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  v7 = *(*v4 + 16);
  result = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = a2(result, 1);
  v11 = *v4;
  if (!*(a1 + 16))
  {

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v11 + 24) >> 1) - *(v11 + 16) < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B21619D8(a3, a4);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_8:
    *v4 = v11;
    return result;
  }

  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, v6);
  v14 = v12 + v6;
  if (!v13)
  {
    *(v11 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B2130FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1B213106C()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B224B154(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0DD8, &qword_1B22544F0);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2131144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[3] = type metadata accessor for ColumnDecoder();
  a4[4] = swift_getWitnessTable();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

sqlite3_int64 sub_1B21312A4(uint64_t a1, unint64_t iCol, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t), uint64_t a7)
{
  if ((iCol & 0x8000000000000000) != 0 || *(a1 + 72) <= iCol)
  {
    goto LABEL_10;
  }

  v8 = *(a1 + 64);
  if (!v8)
  {
    return a6(iCol);
  }

  if (iCol >> 31)
  {
    __break(1u);
LABEL_10:
    sub_1B2122384();
    result = sub_1B2115A74();
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a1 + 64), iCol) != 5)
  {
    return sqlite3_column_int64(v8, iCol);
  }

  v35 = iCol;
  v36 = 1;

  RowDecodingContext.init(row:key:)(v10, &v35, v37);
  sub_1B21A2FC0();
  swift_allocError();
  v11 = sub_1B2111C78();
  sub_1B21320F0(v11, iCol, v12);
  sub_1B2116424(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v29, v31, v33, v34);
  sub_1B2183238(a7, v21, v22, v23);
  sub_1B2113A44(v28, v30, v32);
  sub_1B218450C(v37);
  return swift_willThrow();
}

uint64_t sub_1B21313F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  type metadata accessor for _RowDecoder.KeyedContainer();
  return sub_1B2253290();
}

uint64_t sub_1B2131478()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[11];
  if (v3)
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 104);
    v6 = sub_1B22534D0();
    sub_1B21C9090(v6, v7, v3);
    v9 = v8;

    if (v9)
    {
LABEL_8:

      return 1;
    }
  }

  else
  {
    v10 = *(v1 + 88);
    v11 = *(v1 + 104);
    v12 = sub_1B22534D0();
    v14 = v13;
    v15 = v2[5];
    v16 = v2[6];
    sub_1B21139A0(v2 + 2, v15);
    (*(v16 + 88))(v12, v14, v15, v16);
    LOBYTE(v12) = v17;

    if ((v12 & 1) == 0)
    {
      return 1;
    }
  }

  Row.scopes.getter();
  sub_1B22534D0();
  v18 = Row.ScopesTreeView.subscript.getter();

  if (!v18)
  {
    swift_beginAccess();
    v20 = v2[10];
    v19 = v2[11];

    sub_1B22534D0();
    v21 = Row.PrefetchedRowsView.subscript.getter();

    if (!v21)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1B2131688()
{
  v2 = *v0;
  v3 = v0[2];
  sub_1B212EBC0();
  if (v1)
  {
  }

  else
  {
    Row.subscript.getter(&v15);

    v10 = v18;
    sub_1B212AC5C(&v15, &qword_1EB7A0E30, &unk_1B2259360);
    if (v10)
    {
      return 0;
    }
  }

  Row.scopes.getter();
  v4 = v15;
  v5 = v16;
  v7 = v17;
  v6 = v18;
  v8 = *(v2 + 104);
  v21 = *(v2 + 88);
  sub_1B22534D0();
  v15 = v4;
  v16 = v5;
  v17 = v7;
  v18 = v6;
  v9 = Row.ScopesTreeView.subscript.getter();

  if (v9)
  {

    return 0;
  }

  swift_beginAccess();
  v11 = *(v3 + 80);
  v12 = *(v3 + 88);

  sub_1B22534D0();
  v19 = v11;
  v20 = v12;
  v13 = Row.PrefetchedRowsView.subscript.getter();

  if (v13)
  {

    return 0;
  }

  return 1;
}

uint64_t Row.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  sub_1B21139A0(v1 + 2, v1[5]);
  v4 = *(v3 + 88);
  sub_1B2138D84();
  result = v5();
  if (v7)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v8 = v1[5];
    v9 = v1[6];
    sub_1B21139A0(v1 + 2, v8);
    v10 = *(v9 + 48);
    v11 = sub_1B224B2B4();
    v12(v11, v8, v9);
    v13 = sub_1B2114748();
    DatabaseValue.Storage.value.getter(v13, v14, v15, v16);
    v17 = sub_1B2114748();

    return sub_1B2113A44(v17, v18, v19);
  }

  return result;
}

uint64_t sub_1B2131988()
{
  v2 = *(v0 + 16);
}

uint64_t sub_1B21319A0@<X0>(uint64_t result@<X0>, sqlite3_stmt *a2@<X2>, uint64_t a3@<X8>)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return sub_1B21320F0(a2, result, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21319CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  return sub_1B21319A0(a1, v2[1], a2);
}

uint64_t sub_1B21319D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Row();
  v2 = swift_allocObject();
  v3 = sub_1B2131A6C(v2);
  sub_1B21619D8(&qword_1EB7A2158, &qword_1B225AD70);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1B2252190();
  result = sub_1B211DF80(v4);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = result;
  a1[3] = v7;
  return result;
}

uint64_t sub_1B2131A6C(uint64_t a1)
{
  v6[3] = &type metadata for EmptyRowImpl;
  v6[4] = &off_1F2977698;
  v2 = sub_1B211DF80(MEMORY[0x1E69E7CC0]);
  sub_1B2111910(v2, v3, v4);
  *(a1 + 72) = 0;
  sub_1B2113208(v6);
  return a1;
}

uint64_t Row.ScopesTreeView.subscript.getter()
{
  sub_1B211D530();
  v3 = v1[2];
  v4 = v1[3];
  v5 = sub_1B2131C40(*v1, v1[1]);
  v6 = v5[2];
  if (v6)
  {
    while (1)
    {
      v8 = v5[4];
      v7 = v5[5];
      v9 = v5[6];

      if (!swift_isUniquelyReferenced_nonNull_native() || (v6 - 1) > v5[3] >> 1)
      {
        sub_1B2126410();
        sub_1B2162F80();
        v5 = v10;
      }

      sub_1B212ACBC((v5 + 4), &qword_1EB7A0E40);
      v11 = v5[2];
      memmove(v5 + 4, v5 + 7, 24 * v11 - 24);
      v5[2] = v11 - 1;
      if (v8 == v2 && v7 == v0)
      {
        break;
      }

      sub_1B2117214();
      if (sub_1B224B474())
      {
        break;
      }

      Row.scopes.getter();

      sub_1B216D2EC(v14, v15, v16);

      v6 = v5[2];
      if (!v6)
      {

        return 0;
      }
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

const void *sub_1B2131C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B2131DCC(a2);
  v6 = v5;
  v8 = v7;
  v9 = sub_1B21268D4(v4, v5, v7 & 1, 1 << *(a2 + 32), *(a2 + 36), 0, a1, a2);
  sub_1B21268C8(v4, v6, v8 & 1);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1B219DF88();

  sub_1B21A0210();
  v12 = v11;

  sub_1B21268C8(v14, v15, v16);
  if (v12 != v9)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

uint64_t sub_1B2131D90(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_1B2113B98();
  result = sub_1B2252BD0();
  v4 = *(a1 + 36);
  return result;
}

uint64_t Row.PrefetchedRowsView.subscript.getter()
{
  sub_1B211D530();
  v3 = sub_1B2131F80(*v1, v1[1]);
  v4 = v3[2];
  if (v4)
  {
    while (1)
    {
      v6 = v3[4];
      v5 = v3[5];
      v7 = v3[6];
      v8 = v3[7];
      v9 = v3[8];

      if (!swift_isUniquelyReferenced_nonNull_native() || (v4 - 1) > v3[3] >> 1)
      {
        sub_1B2162EC0();
        v3 = v10;
      }

      sub_1B212ACBC((v3 + 4), &qword_1EB7A0E50);
      v11 = v3[2];
      memmove(v3 + 4, v3 + 9, 40 * v11 - 40);
      v3[2] = v11 - 1;
      if (v6 == v2 && v5 == v0)
      {

        goto LABEL_16;
      }

      sub_1B2111658();
      v13 = sub_1B224B474();

      if (v13)
      {
        break;
      }

      v14 = sub_1B2117214();
      sub_1B216D048(v14, v15);

      v4 = v3[2];
      if (!v4)
      {

        return 0;
      }
    }

LABEL_16:
  }

  else
  {

    return 0;
  }

  return v7;
}

void *sub_1B2131F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(a1 + 16);
  v6 = sub_1B219E21C();

  v7 = sub_1B21A13E4(&v9, v6 + 4, v2, a1, a2);

  if (v7 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t RecordCursor.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1B211A000();

  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return v1;
}

uint64_t RecordCursor.__deallocating_deinit()
{
  RecordCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B21320C0()
{
  v0 = sub_1B212728C();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1B21320F0@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = sqlite3_column_type(a1, a2) - 1;
  result = 0;
  v6 = 0;
  v7 = 4;
  switch(v4)
  {
    case 0:
      v8 = sub_1B2112864();
      result = sqlite3_column_int64(v8, v9);
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    case 1:
      v16 = sub_1B2112864();
      *&v18 = sqlite3_column_double(v16, v17);
      v6 = 0;
      result = v18;
      v7 = 1;
      goto LABEL_9;
    case 2:
      v19 = sub_1B2112864();
      if (!sqlite3_column_text(v19, v20))
      {
        __break(1u);
LABEL_11:
        sub_1B2252CD0();

        v21 = sub_1B2252FD0();
        MEMORY[0x1B2741EB0](v21);

        sub_1B2252EC0();
        __break(1u);
        JUMPOUT(0x1B213228CLL);
      }

      result = sub_1B2252400();
      v7 = 2;
LABEL_9:
      *a3 = result;
      *(a3 + 8) = v6;
      *(a3 + 16) = v7;
      return result;
    case 3:
      v10 = sub_1B2112864();
      result = sqlite3_column_blob(v10, v11);
      if (result)
      {
        v12 = result;
        v13 = sub_1B2112864();
        v15 = sqlite3_column_bytes(v13, v14);
        result = MEMORY[0x1B27418E0](v12, v15);
        v7 = 3;
      }

      else
      {
        v7 = 3;
        v6 = 0xC000000000000000;
      }

      goto LABEL_9;
    case 4:
      goto LABEL_9;
    default:
      goto LABEL_11;
  }
}

uint64_t sub_1B21323E0()
{
  sub_1B2114774();
  sub_1B21320F0(v0, v1, v6);
  v2 = v6[0];
  v3 = v6[1];
  v4 = v7;
  sub_1B2113284();
  return sub_1B2113A44(v2, v3, v4);
}

uint64_t sub_1B2132494()
{
  v2 = *(v0 + 16);
  v3 = sub_1B212EBC0();
  if (!v1)
  {
    v0 = sub_1B212D190(v3, v4);
  }

  return v0;
}

uint64_t sub_1B2132550()
{

  return sub_1B2252B00();
}

uint64_t sub_1B2132598()
{

  return sub_1B2127B14(v0 + 3536, v0 + 2088);
}

uint64_t sub_1B21325B0()
{
}

uint64_t sub_1B21325C8()
{

  return swift_allocObject();
}

uint64_t sub_1B2132630(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  v5 = sub_1B2253470();
  v6 = ~(-1 << *(v3 + 32));
  v7 = 1;
  while (1)
  {
    v8 = v5 & v6;
    v9 = (v5 & v6) >> 6;
    v10 = 1 << (v5 & v6);
    v11 = v10 & *(v3 + 56 + 8 * v9);
    if (!v11)
    {
      break;
    }

    type metadata accessor for DatabaseCollation();
    v12 = *(*(v3 + 48) + 8 * v8);

    v14 = static DatabaseCollation.== infix(_:_:)(v13, a1);

    if (v14)
    {
      v7 = 0;
      break;
    }

    v5 = v8 + 1;
  }

  v15 = *(v3 + 16);
  v16 = v15 + v7;
  if (__OFADD__(v15, v7))
  {
    __break(1u);
  }

  else
  {
    v17 = *(v3 + 24);
    v18 = v33;
    if (v17 < v16 || (a2 & 1) == 0)
    {
      if (a2)
      {
        sub_1B2124804();
        goto LABEL_16;
      }

      if (v17 < v16)
      {
        sub_1B2124614();
LABEL_16:
        v19 = *v33;
        v20 = *(*v33 + 40);
        sub_1B2253420();
        MEMORY[0x1B2742F10](0);
        v21 = sub_1B2253470();
        v22 = ~(-1 << *(v19 + 32));
        while (1)
        {
          v8 = v21 & v22;
          v9 = (v21 & v22) >> 6;
          v10 = 1 << (v21 & v22);
          if ((v10 & *(v19 + 56 + 8 * v9)) == 0)
          {
            v18 = v33;
            if (v11)
            {
              goto LABEL_27;
            }

            goto LABEL_21;
          }

          type metadata accessor for DatabaseCollation();
          v23 = *(*(v19 + 48) + 8 * v8);

          v25 = static DatabaseCollation.== infix(_:_:)(v24, a1);

          if (v25)
          {
            break;
          }

          v21 = v8 + 1;
        }

        v18 = v33;
        if (!v11)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_1B22492E0();
    }

    if (v11)
    {
LABEL_24:
      v31 = *(*v18 + 48);
      result = *(v31 + 8 * v8);
      *(v31 + 8 * v8) = a1;
      return result;
    }

LABEL_21:
    v26 = *v18;
    *(*v18 + 8 * v9 + 56) |= v10;
    *(*(v26 + 48) + 8 * v8) = a1;
    v27 = *(v26 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      result = 0;
      *(v26 + 16) = v29;
      return result;
    }
  }

  __break(1u);
LABEL_27:
  type metadata accessor for DatabaseCollation();
  result = sub_1B2253380();
  __break(1u);
  return result;
}

uint64_t sub_1B213285C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  result = sub_1B2252C90();
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
    sub_1B2253420();

    sub_1B2252370();
    result = sub_1B2253470();
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
      if (v17 || (sub_1B22531F0() & 1) != 0)
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

void sub_1B21329EC()
{
  sub_1B2111830();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v8 == v9)
  {
LABEL_7:
    sub_1B2111EF8(v7);
    if (v4)
    {
      sub_1B2113B10(v10, v11, v12, v13, v14, v15);
      v16 = sub_1B211A23C();
      j__malloc_size(v16);
      sub_1B211F5F8();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1B2117B84();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v8)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2132AA0()
{
  v1 = *v0;
  sub_1B21329EC();
  *v0 = v2;
}

uint64_t sub_1B2132AF4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1B2252BD0();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1B2132B34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B211B358();
  result = MEMORY[0x1B27422D0](v2, &type metadata for CaseInsensitiveIdentifier, v3);
  v5 = 0;
  v12 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);

    sub_1B2132C1C();
  }

  __break(1u);
  return result;
}

void sub_1B2132C1C()
{
  sub_1B2122614();
  v28 = v1;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = *(*v0 + 40);
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253470();
  v11 = *(v9 + 32);
  sub_1B2113B98();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    if (((1 << (v12 & v14)) & *(v9 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v16 = (*(v9 + 48) + 32 * v15);
    v17 = *v16 == v6 && v16[1] == v4;
    if (v17 || (sub_1B22531F0() & 1) != 0)
    {

      v18 = (*(v9 + 48) + 32 * v15);
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v8 = *v18;
      v8[1] = v19;
      v8[2] = v20;
      v8[3] = v21;

      goto LABEL_11;
    }

    v12 = v15 + 1;
  }

  v22 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v0;

  sub_1B211F200();
  sub_1B2132D80(v24, v25, v26, v27, v15, isUniquelyReferenced_nonNull_native);
  *v0 = v30;
  *v8 = v6;
  v8[1] = v4;
  v8[2] = v28;
  v8[3] = v29;
LABEL_11:
  sub_1B2115CEC();
}

uint64_t sub_1B2132D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1B224767C(v12 + 1);
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      sub_1B21335E8(v12 + 1);
LABEL_10:
      v19 = *v6;
      v20 = *(*v6 + 40);
      sub_1B2253420();
      sub_1B2252370();
      result = sub_1B2253470();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a5 = result & v21;
        if (((*(v19 + 56 + (((result & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v22 = (*(v19 + 48) + 32 * a5);
        v23 = *v22 == v11 && v22[1] == a2;
        if (v23 || (sub_1B22531F0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a5 + 1;
      }
    }

    result = sub_1B2133960();
  }

LABEL_7:
  v14 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v15 = (*(v14 + 48) + 32 * a5);
  *v15 = v11;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_19:
    result = sub_1B2253380();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

__n128 sub_1B2132EFC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MetalDatabaseEventImpl(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B2132F14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B2253420();
  sub_1B2252370();
  return sub_1B2253470();
}

GRDBInternal::DatabaseRegion __swiftcall DatabaseRegion.union(_:)(GRDBInternal::DatabaseRegion a1)
{
  sub_1B212D010();
  v4 = *v1;
  if (!v4 || (v5 = *v2) == 0)
  {
    v6 = 0;
LABEL_45:
    *v3 = v6;
    sub_1B212CE34();
    goto LABEL_51;
  }

  v53 = v3;
  sub_1B211B358();
  v6 = sub_1B2252190();

  sub_1B2133390(v7);
  v9 = v8;

  sub_1B2133390(v10);
  v12 = sub_1B21334C0(v11, v9);
  v14 = v12 + 56;
  v13 = *(v12 + 56);
  v15 = *(v12 + 32);
  sub_1B21115A0();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v57 = v21;

  v22 = 0;
  v55 = v4;
  v56 = v5;
  v54 = v20;
  if (!v18)
  {
    goto LABEL_5;
  }

  do
  {
    v23 = v22;
LABEL_8:
    v24 = (*(v57 + 48) + ((v23 << 11) | (32 * __clz(__rbit64(v18)))));
    v59 = v24[2];
    v60 = v24[3];
    v61 = v24[1];
    v58 = *v24;
    if (*(v4 + 16))
    {

      sub_1B2113060();
      v25 = sub_1B2133834();
      if ((v26 & 1) == 0)
      {
        v29 = 0;
        v28 = 1;
        goto LABEL_14;
      }

      v27 = (*(v4 + 56) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
    }

    else
    {
      v29 = 0;
      v28 = 1;
    }

LABEL_14:
    if (*(v5 + 16) && (v30 = sub_1B2133834(), (v31 & 1) != 0))
    {
      v32 = (*(v5 + 56) + 16 * v30);
      v33 = *v32;
      v34 = v32[1];
    }

    else
    {
      v34 = 0;
      v33 = 1;
    }

    if (v28 == 1)
    {
      if (v33 == 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v33 == 1)
      {
        v33 = v28;
        v34 = v29;
        goto LABEL_32;
      }

      v35 = 0;
      if (v28 && v33)
      {

        v35 = sub_1B21334C0(v33, v28);
      }

      if (v29)
      {
        if (v34)
        {

          v36 = sub_1B21C9C40(v34, v29);

          v33 = v35;
          v34 = v36;
          goto LABEL_32;
        }
      }

      else
      {

        v34 = 0;
      }

      v33 = v35;
    }

LABEL_32:
    swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_1B2133834();
    if (__OFADD__(v6[2], (v38 & 1) == 0))
    {
      goto LABEL_47;
    }

    v39 = v37;
    v40 = v38;
    sub_1B21619D8(&qword_1EB7A1D10, &unk_1B225BB40);
    if (sub_1B2252E70())
    {
      v41 = sub_1B2133834();
      v5 = v56;
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_50;
      }

      v39 = v41;
    }

    else
    {
      v5 = v56;
    }

    v18 &= v18 - 1;
    if (v40)
    {

      v43 = (v6[7] + 16 * v39);
      v44 = *v43;
      v45 = v43[1];
      *v43 = v33;
      v43[1] = v34;
    }

    else
    {
      v6[(v39 >> 6) + 8] |= 1 << v39;
      v46 = (v6[6] + 32 * v39);
      *v46 = v58;
      v46[1] = v61;
      v46[2] = v59;
      v46[3] = v60;
      v47 = (v6[7] + 16 * v39);
      *v47 = v33;
      v47[1] = v34;
      v48 = v6[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_48;
      }

      v6[2] = v50;
    }

    v22 = v23;
    v20 = v54;
    v4 = v55;
  }

  while (v18);
LABEL_5:
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      v3 = v53;
      goto LABEL_45;
    }

    v18 = *(v14 + 8 * v23);
    ++v22;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v51 = sub_1B2253390();
  __break(1u);
LABEL_51:
  result.tableRegions.value._rawValue = v51;
  result.tableRegions.is_nil = v52;
  return result;
}

void sub_1B2133390(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B211B358();
  v4 = 0;
  MEMORY[0x1B27422D0](v2, &type metadata for CaseInsensitiveIdentifier, v3);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  sub_1B21115A0();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  if ((v8 & v7) != 0)
  {
    do
    {
      v12 = v4;
LABEL_7:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a1 + 48) + ((v12 << 11) | (32 * v13)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];

      sub_1B2132C1C();
    }

    while (v9);
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v12);
    ++v4;
    if (v9)
    {
      v4 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1B21334C0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 11) | (32 * v10)));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];

    sub_1B2132C1C();
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21335E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B21619D8(&qword_1EB7A2340, qword_1B225D9B0);
  result = sub_1B2252C70();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[3];
        v33 = v17[2];
        v21 = *(v6 + 40);
        sub_1B2253420();

        sub_1B2252370();
        result = sub_1B2253470();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v6 + 48) + 32 * v25);
        *v30 = v18;
        v30[1] = v19;
        v3 = v32;
        v30[2] = v33;
        v30[3] = v20;
        ++*(v6 + 16);
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_1B2133834()
{
  sub_1B2111FC0();
  sub_1B21224DC();
  sub_1B212CF80();
  sub_1B2252370();
  sub_1B2253470();
  sub_1B211314C();

  return sub_1B21338AC(v1, v2, v3, v0, v4);
}

unint64_t sub_1B21338AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = ~(-1 << *(v5 + 32));
  for (i = a5 & v8; ((1 << i) & *(v5 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    v10 = (*(v5 + 48) + 32 * i);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_1B2133960()
{
  v1 = v0;
  sub_1B21619D8(&qword_1EB7A2340, qword_1B225D9B0);
  v2 = *v0;
  v3 = sub_1B2252C60();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B2133AC8(uint64_t *a1)
{
  v1 = a1[1];
  v5 = *a1;
  type metadata accessor for StatementCursor();
  v2 = swift_allocObject();
  sub_1B211CF8C(v5);

  sub_1B2133B68(v3, &v5);
  return v2;
}

uint64_t sub_1B2133B68(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(v2 + 24) = 0;
  *(v2 + 16) = a1;
  v7[0] = v4;
  v7[1] = v5;

  sub_1B2119E50(v7);

  if (v3)
  {
  }

  sub_1B211A378(v4);
  return v2;
}

uint64_t sub_1B2133BF0()
{
  v2 = 1;
  sub_1B2116AD0();
  swift_beginAccess();
  if ((*(v0 + 24) & 1) == 0)
  {
    sub_1B2131988();
    v3 = sub_1B2122D50();
    v4 = sub_1B2133C60(v3);
    if (!v1)
    {
      if (v4)
      {
        v2 = 1;
        *(v0 + 24) = 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1B2133C60(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v7 = sub_1B211497C();
    Database.statementWillExecute(_:)(v7);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v8 = sub_1B2115468();
    nullsub_1(v8);
    if (!v2)
    {

      return 0;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5);
  sub_1B211DA88();

  if (!v1)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B2133D38()
{
  _s12GRDBInternal23FastDatabaseValueCursorCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

uint64_t sub_1B2133D70(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2133DCC(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1B2133E18(a1, a2);
}

uint64_t sub_1B2133E18(uint64_t a1, char a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  *(v2 + *(*v2 + 96)) = a2;
  return v2;
}

uint64_t sub_1B2133EB0()
{
  sub_1B2122548();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1B211D630(v5, v3);
  v7 = sub_1B211E590();
  sub_1B211744C(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_1B21619D8(&qword_1EB7A1CF8, &qword_1B225A760);
  if ((sub_1B21165F8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v0;
  v15 = sub_1B211E590();
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_1B2253390();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v0;
  if (v13)
  {
    v18 = *(v17 + 56);
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v6;
    sub_1B2115ED4();
  }

  else
  {
    sub_1B2133FBC(v12, v4, v2, v6, v17);
    sub_1B2115ED4();
  }
}

void sub_1B2133FBC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2117584(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_1B2111AD4(v6, v11);
  }
}

uint64_t sub_1B2133FE8()
{
  v0 = sub_1B2134848();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B213403C()
{
  sub_1B21348B8(v0);
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

void sub_1B2134088()
{
  sub_1B2111640();
  sub_1B2115410(v3);
  v4 = sub_1B2115A24();
  v1(v4);
  if ((v2 & 1) == 0)
  {
    v5 = sub_1B211790C();
    sub_1B21343E4(v5, v6, v7, v8, v9, v0);
  }

  sub_1B2112FDC();
}

void sub_1B21340E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1B2134088();
}

uint64_t sub_1B213410C()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if ((sub_1B2117B40(v1) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1B21118B8();
  result = swift_beginAccess();
  v3 = *(v0 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration;
  v5 = type metadata accessor for Configuration();
  v6 = v4 + *(v5 + 88);
  if (*v6)
  {
    v7 = *(v6 + 8);
    (*v6)(v3);
  }

  v8 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  sub_1B21140E4(v8, v9);

  type metadata accessor for Statement();
  v10 = sub_1B213CCC8();
  v11 = sub_1B211499C(v10, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  sub_1B2120024(v11, v12);
  v13 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  sub_1B21140E4(v13, v14);

  v15 = sub_1B213CCC8();
  v16 = sub_1B211499C(v15, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  sub_1B2120024(v16, v17);
  result = sqlite3_close_v2(v3);
  if (result)
  {
    v18 = result;
    sub_1B21115FC();
    result = swift_beginAccess();
    v19 = off_1EB7A3328;
    if (off_1EB7A3328)
    {

      if (sqlite3_errmsg(v3))
      {
        v20 = sub_1B22523F0();
        v22 = v21;
        v26 = v18;
        sub_1B2252CD0();

        MEMORY[0x1B2741EB0](v20, v22);

        v19(&v26, 0xD00000000000001ALL, 0x80000001B2270ED0);
        v23 = sub_1B2112F9C();
        sub_1B2112F4C(v23);

        goto LABEL_9;
      }

      __break(1u);
LABEL_13:
      sub_1B2112A88();
      result = sub_1B2252EC0();
      __break(1u);
      return result;
    }
  }

LABEL_9:
  *(v0 + 16) = 0;
  v24 = v4 + *(v5 + 92);
  if (*v24)
  {
    v25 = *(v24 + 8);
    return (*v24)(result);
  }

  return result;
}

uint64_t sub_1B213439C(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21343AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B21343E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(*(a6 + 16) + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0 && (Database.isInsideTransaction.getter())
  {
    sub_1B2112A88();
    sub_1B211492C();
    __break(1u);
  }
}

uint64_t sub_1B213447C()
{
  sub_1B21344B0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B21344B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t Database.deinit()
{
  sub_1B2133D70(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration);
  v1 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_description + 8);

  v3 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
  v2 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache + 8);

  v4 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
  sub_1B2120024(v4, v5);
  v6 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  sub_1B2120024(v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___authorizer);

  v9 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___observationBroker);

  v10 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion);

  v11 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__isSuspended);

  v12 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_journalModeCache + 8);

  v13 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database_busyCallback);
  sub_1B2112F4C(v13);
  v14 = sub_1B2121264(OBJC_IVAR____TtC12GRDBInternal8Database_trace);
  sub_1B2112F4C(v14);
  v15 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_functions);

  v16 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_collations);

  return v0;
}

uint64_t sub_1B21345EC()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_1B211BD38(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t sub_1B2134628()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1B2134650()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

Swift::Void __swiftcall Database.clearSchemaCache()()
{
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B2117B40(v0))
  {
    v1 = (v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
    swift_beginAccess();
    v2 = *v1;
    *v1 = 0;

    sub_1B21619D8(&qword_1EB7A21A8, &unk_1B226AE60);
    sub_1B22521C0();
    swift_endAccess();
    sub_1B212DAF0();

    type metadata accessor for Statement();
    sub_1B2113B50();
    v3 = sub_1B2252190();
    sub_1B21263D8(v3, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B212A5AC();

    sub_1B2113B50();
    v4 = sub_1B2252190();
    sub_1B21263D8(v4, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
  }

  else
  {
    sub_1B2111608();
    sub_1B2112A88();
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t sub_1B21348B8(uint64_t a1)
{
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B21114CC())
  {
    v2 = *(a1 + 16);
    v3 = sub_1B211A144(v2);
    if (v3)
    {
      v4 = Database.isInsideTransaction.getter();
      sub_1B213410C();
      if ((v4 & 1) == 0)
      {
        sub_1B21343E4(v2, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 172, a1);
      }
    }

    else
    {
      v7 = *(a1 + 40);
      MEMORY[0x1EEE9AC00](v3);
      sub_1B2252A50();
    }
  }

  else
  {
    v6 = *(a1 + 40);
    MEMORY[0x1EEE9AC00](0);
    return sub_1B2252A50();
  }
}

uint64_t sub_1B2134A58()
{
  sub_1B213403C();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t Database.__deallocating_deinit()
{
  Database.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B2134AE4()
{
  sub_1B21345EC();

  return MEMORY[0x1EEE6BDC0](v0, 66, 7);
}

uint64_t sub_1B2134B18()
{
  sub_1B2134B4C();

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

uint64_t sub_1B2134B4C()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();
  v2 = *(v0 + 24);

  sub_1B211C6D8(*(v0 + 32));
  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return v0;
}

uint64_t sub_1B2134B8C()
{
  sub_1B2134628();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B2134BC0()
{
  sub_1B2134650();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t FilteredRequest.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1B2134CAC(a1, a2, a3, &unk_1F2972590, sub_1B2134D5C, sub_1B213B33C);
}

{
  return sub_1B2134CAC(a1, a2, a3, &unk_1F29726F8, sub_1B2134D5C, sub_1B21EDB7C);
}

uint64_t sub_1B2134C70()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B2134CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *, uint64_t), uint64_t a6)
{
  sub_1B211EE68(a1, v12);
  v10 = swift_allocObject();
  a5(v12, v10 + 16);
  (*(a3 + 8))(a6, v10, a2, a3);
}

uint64_t sub_1B2134D64@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1B2114F78();
  memcpy(v4, v5, v6);
  v8 = *(a1 + 16);
  return sub_1B2111F70(a2);
}

uint64_t == infix(_:_:)()
{
  sub_1B21131D0();
  v3 = v2[4];
  sub_1B211592C(v2, v2[3]);
  v4 = sub_1B212DFB4();
  v5(v4);
  sub_1B2134FB0(v1, v20);
  if (v20[3])
  {
    v6 = v20[4];
    sub_1B211FE78(v20);
    v7 = sub_1B2116AC4();
    v8(v7, v6);
    sub_1B2113208(v20);
  }

  else
  {
    sub_1B214BF9C(v20);
    *v19 = 0;
    *&v19[8] = 0;
    v19[16] = 4;
    sub_1B2127D7C(v19);
    sub_1B2124244(__src, v9, v10, v11, v12, v13, v14, v15, v17, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], v19[0]);
  }

  sub_1B2135088(v0);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21356F8(__dst);
  memcpy(v19, v21, 0xA3uLL);
  return sub_1B21356F8(v19);
}

{
  sub_1B21131D0();
  sub_1B2134FB0(v2, v23);
  if (v24)
  {
    v3 = v25;
    sub_1B21139A0(v23, v24);
    v4 = *(v3 + 8);
    v5 = sub_1B212DFB4();
    v6(v5, v3);
    sub_1B2113208(v23);
  }

  else
  {
    v7 = sub_1B214BF9C(v23);
    sub_1B2121244(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v20[14], v20[15], v20[16], v20[17], v20[18], v20[19], v20[20], v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14], v21[15], v21[16], v21[17], v21[18], v21[19], v21[20], __src[0], __src[1], __src[2]);
    memcpy(__dst, __src, sizeof(__dst));
  }

  v15 = v1[4];
  sub_1B211592C(v1, v1[3]);
  v16 = sub_1B212DFB4();
  v17(v16);
  sub_1B2135088(v0);
  memcpy(v21, v20, 0xA3uLL);
  sub_1B21356F8(v21);
  memcpy(__src, __dst, 0xA3uLL);
  return sub_1B21356F8(__src);
}

uint64_t sub_1B2134F14(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  v2 = sub_1B2134F5C(v4);
  sub_1B21D0A74(v2, v4);
}

uint64_t sub_1B2134F5C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = BYTE2(v3) & 1;
  return result;
}

uint64_t sub_1B2134F98()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1B2134FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A10F0, &qword_1B225D320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2135030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(a3, __src, 0xA3uLL);
}

uint64_t sub_1B2135088@<X0>(uint64_t a1@<X8>)
{
  sub_1B212E2E0(__src);
  sub_1B2111ADC();
  memcpy(v2, v3, v4);
  sub_1B212E2E0(v66);
  sub_1B2111ADC();
  memcpy(v5, v6, v7);
  sub_1B2111ADC();
  memcpy(v8, v9, v10);
  if (sub_1B2127E1C(v67) == 2)
  {
    v11 = sub_1B2127E38(v67);
    if (*(v11 + 16) == 4 && *v11 == 0)
    {
      v37 = sub_1B21262D8();
      sub_1B2127DC0(v37, v38);
      v39 = sub_1B212D864();
      sub_1B2127DC0(v39, v40);
      v41 = sub_1B2111670();
      sub_1B2113A44(v41, v42, v43);
      v44 = sub_1B2111670();
      sub_1B2113A44(v44, v45, v46);
      v36 = __src;
      goto LABEL_13;
    }

    v13 = sub_1B212D864();
    sub_1B2127DC0(v13, v14);
    v15 = sub_1B21262D8();
    sub_1B2127DC0(v15, v16);
    v17 = sub_1B212D864();
    sub_1B2127DC0(v17, v18);
    v19 = sub_1B2111670();
    sub_1B2113A44(v19, v20, v21);
    v22 = sub_1B2114748();
    sub_1B2113A44(v22, v23, v24);
  }

  else
  {
    v25 = sub_1B21262D8();
    sub_1B2127DC0(v25, v26);
    v27 = sub_1B212D864();
    sub_1B2127DC0(v27, v28);
  }

  sub_1B2126034(v62);
  if (sub_1B2127E1C(v62) == 2)
  {
    v29 = sub_1B2127E38(v62);
    if (*(v29 + 16) == 4 && *v29 == 0)
    {
      v30 = sub_1B2111670();
      sub_1B2113A44(v30, v31, v32);
      v33 = sub_1B2111670();
      sub_1B2113A44(v33, v34, v35);
      v36 = &v65;
LABEL_13:
      memcpy(__dst, v36, 0xA3uLL);
      sub_1B2127B14(__dst, v62);
      sub_1B212AC5C(v66, &qword_1EB7A1CE0, &qword_1B225BAB0);
      sub_1B212B4CC(v59);
      v60[0] = 0;
      v60[1] = 0;
      LOBYTE(v60[2]) = 4;
      sub_1B2127D7C(v60);
      memcpy(v58, v60, sizeof(v58));
      sub_1B21353B0(2, v59, a1);
      memcpy(v61, v58, 0xA3uLL);
      sub_1B21356F8(v61);
      memcpy(v62, v59, 0xA3uLL);
      return sub_1B21356F8(v62);
    }

    v48 = sub_1B2114748();
    sub_1B2113A20(v48, v49, v50);
    v51 = sub_1B2111670();
    sub_1B2113A44(v51, v52, v53);
    v54 = sub_1B2114748();
    sub_1B2113A44(v54, v55, v56);
  }

  sub_1B212AC5C(v66, &qword_1EB7A1CE0, &qword_1B225BAB0);
  sub_1B2126034(__dst);
  v57 = sub_1B213532C(v61);
  return sub_1B21352D4(v57, __dst);
}

uint64_t sub_1B21352D4(uint64_t a1, uint64_t a2)
{

  return sub_1B21353B0(0, a2, v2);
}

void sub_1B21352FC()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B2135314()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

void *sub_1B213532C(void *a1)
{

  return memcpy(a1, &STACK[0x4A0], 0xA3uLL);
}

void *sub_1B2135370(uint64_t *a1)
{
  v2 = *a1;

  return memcpy(&STACK[0x2B8], (v2 + 16), 0xB8uLL);
}

uint64_t sub_1B21353B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, a2, 0xA3uLL);
  sub_1B212E2E0(v68);
  sub_1B212D6F0(v69);
  if (sub_1B2127E1C(v69) == 16)
  {
    v6 = sub_1B2127E38(v69);
    sub_1B21D0A24(v6);
    v7 = v64;
    v8 = v65;
    memcpy(v66, (a2 + 16), 0xA3uLL);
    v9 = sub_1B212D660(v62);
    sub_1B215433C(v9, v10, &qword_1EB7A22B8, &qword_1B225D308, v11, v12, v13, v14, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
    sub_1B21353B0(v61, a1, v66, v62);
    v66[0] = v7;
    v66[1] = v8;
    sub_1B21CF728(v66, a3);
    sub_1B21356F8(v63);
    v15 = v60;
    v16 = v61;
LABEL_5:
    memcpy(v15, v16, 0xA3uLL);
    sub_1B21356F8(v60);
  }

  sub_1B212D660(v66);
  if (sub_1B2127E1C(v66) == 16)
  {
    v17 = sub_1B2127E38(v66);
    sub_1B21D0A24(v17);
    v18 = v64;
    v19 = v65;
    sub_1B2146FF4(v62);
    v20 = memcpy(v61, (a2 + 16), 0xA3uLL);
    sub_1B215433C(v20, v21, &qword_1EB7A22B8, &qword_1B225D308, v22, v23, v24, v25, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
    sub_1B21353B0(&v39, a1, v62, v61);
    v62[0] = v18;
    v62[1] = v19;
    sub_1B21CF728(v62, a3);
    v26 = sub_1B21356F8(v63);
    v15 = sub_1B21D09F8(v26, v27, v28, v29, v30, v31, v32, v33, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0]);
    goto LABEL_5;
  }

  v35 = swift_allocObject();
  v35[16] = a1;
  sub_1B2146FF4(v35 + 24);
  sub_1B212D660(v35 + 192);
  v63[0] = v35;
  v36 = sub_1B21356B4(v63);
  sub_1B211A2B4(v36, v63);
  sub_1B2127DC0(__dst, v60);
  return sub_1B2127DC0(v68, v60);
}

uint64_t sub_1B21355A4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1B211668C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 184) | (*(v0 + 186) << 16), *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152));
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  sub_1B211668C(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 352) | (*(v0 + 354) << 16), *(v0 + 256), *(v0 + 272), *(v0 + 288), *(v0 + 304), *(v0 + 320));

  return swift_deallocObject();
}

void *sub_1B2135658(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

uint64_t sub_1B2135670()
{

  return sub_1B22531F0();
}

uint64_t sub_1B2135690()
{
  *(v0 + 2096) = 0;
  *(v0 + 2088) = 0;
  *(v0 + 2104) = 4;

  return sub_1B2127D7C(v0 + 2088);
}

uint64_t sub_1B21356B4(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x680000u) >> 16;
  return result;
}

double sub_1B213574C()
{
  sub_1B212CF58();
  v4 = v3;
  v6 = (*(v5 + 8))();
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v1;
  v9[4] = v0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B213A0B8;
  *(v10 + 24) = v9;

  v11 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v13 = v12;
  v15 = v14;
  sub_1B21359AC();
  v17 = v16;
  v19 = v18;

  *v4 = v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = 0;
  *(v4 + 24) = sub_1B2139E34;
  *(v4 + 32) = v10;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v11;
  *(v4 + 64) = 0;
  *(v4 + 72) = v13;
  *(v4 + 80) = v15;
  *(v4 + 88) = v17;
  *(v4 + 96) = v19;
  *(v4 + 104) = 0;
  result = 0.0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  *(v4 + 161) = 1;
  return result;
}

uint64_t sub_1B21358A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t static TableRecord.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B2111814(a1, a2, a3, a4, a5, a6, a7, a8, v32);
  sub_1B211D53C();
  v8 = sub_1B21115BC();
  v11 = FilteredRequest.filter(_:)(v8, v9, v10);
  sub_1B2116508(v11, v12, v13, v14, v15, v16, v17, v18, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  sub_1B211283C();
  v20 = *(v19 + 8);
  v29 = sub_1B2118220(v21, v22, v23, v24, v25, v26, v27, v28, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
  return v30(v29);
}

void sub_1B21359AC()
{
  sub_1B2111F14();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_1B212D820();
    v4 = v13;
    v5 = (v2 + 48);
    do
    {
      memcpy(__dst, v5 - 16, 0xE2uLL);
      v7 = __dst[0];
      v6 = __dst[1];
      memcpy(v12, v5, 0xD2uLL);
      sub_1B211E17C(__dst, v10, &qword_1EB7A1BE0, &qword_1B2259960);
      sub_1B2181728(&__dst[2], v10);
      sub_1B218179C(v12);

      sub_1B2122400(__dst, &qword_1EB7A1BE0, &qword_1B2259960);
      sub_1B212D630();
      if (v8)
      {
        sub_1B211F354();
        v4 = v13;
      }

      *(v4 + 16) = v0;
      v9 = v4 + 16 * v2;
      *(v9 + 32) = v7;
      *(v9 + 40) = v6;
      v5 += 232;
      --v3;
    }

    while (v3);
  }

  sub_1B2116938(v2, &qword_1EB7A1BE8, &qword_1B226C280, sub_1B2135AE0);
  sub_1B2117220();
  sub_1B2111588();
}

void sub_1B2135AE0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v25 = a1 + 32;
  while (1)
  {
    if (v5 == v6)
    {
      sub_1B2135E64(__src);
      memcpy(__dst, __src, 0xE2uLL);
      v5 = v6;
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v5 >= *(a1 + 16))
      {
        goto LABEL_25;
      }

      memcpy(__src, (v25 + 232 * v5), 0xE2uLL);
      memcpy(__dst, (v25 + 232 * v5++), 0xE2uLL);
      nullsub_1(__dst);
      sub_1B211E17C(__src, v27, &qword_1EB7A1BE0, &qword_1B2259960);
    }

    memcpy(__src, __dst, 0xE2uLL);
    if (sub_1B2117000(__src) == 1)
    {

      return;
    }

    v7 = __dst[0];
    v8 = __dst[1];
    memcpy(v27, &__dst[2], 0xD2uLL);
    v9 = *a3;
    v11 = sub_1B211E590();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1B2253390();
      __break(1u);
      goto LABEL_27;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      sub_1B2252E80();
      if (v14)
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v8;
    memcpy((v18[7] + 216 * v11), v27, 0xD2uLL);
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_23;
    }

    v18[2] = v22;
    a2 = 1;
  }

  sub_1B2245EB4();
  v15 = *a3;
  v16 = sub_1B211E590();
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_26;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v23 = swift_allocError();
  swift_willThrow();
  v30 = v23;
  v24 = v23;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B218179C(v27);

    return;
  }

LABEL_27:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2135E94@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *(a2 - 8);
  (*(v8 + 16))(a3, v3);
  result = a1(a3);
  if (v4)
  {
    return (*(v8 + 8))(a3, a2);
  }

  return result;
}

uint64_t sub_1B2135F74(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B2135F8C(char *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0xA2uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = __dst[5];
  if (__dst[5])
  {
    v8 = __dst[6];
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = sub_1B213B0F4;
    v9[5] = v6;
    v10 = sub_1B213B044;
    v6 = v9;
  }

  else
  {
    v10 = sub_1B213B0F4;
  }

  v11 = *(__src + 1);
  v17 = *__src;
  v18 = v11;
  v19 = *(__src + 4);
  memcpy(__srca, __src + 56, sizeof(__srca));
  memcpy(v20, __src, 0xA2uLL);

  sub_1B2136148(__dst, v15);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  (*(*(InterfaceRequest - 8) + 8))(v20, InterfaceRequest);
  v13 = v18;
  *__src = v17;
  *(__src + 1) = v13;
  *(__src + 4) = v19;
  *(__src + 5) = v10;
  *(__src + 6) = v6;
  return memcpy(__src + 56, __srca, 0x6AuLL);
}

void *FetchRequest<>.fetchOne(_:)()
{
  sub_1B211543C();
  sub_1B21130B8();
  v0 = sub_1B2115A3C();
  return static FetchableRecord.fetchOne<A>(_:_:)(v0, v1, v2, v3, v4, v5);
}

uint64_t QueryInterfaceRequest.makePreparedRequest(_:forSingleResult:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1B2114F78();
  memcpy(v7, v8, v9);
  sub_1B2136148(v22, __src);
  sub_1B21366E4(v22, __src);
  sub_1B2137278();
  v11 = v10;
  memcpy(__dst, __src, sizeof(__dst));
  v24 = a2;
  v25 = v11;
  v12 = sub_1B2137488(a1);
  if (v3)
  {
    return sub_1B2142BCC(__dst);
  }

  v14 = v12;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();

  v15 = sub_1B2114D98(0);
  type metadata accessor for SQLGenerationContext();
  swift_initStackObject();

  v17 = sub_1B2117164(v16, v15, MEMORY[0x1E69E7CC0]);
  sub_1B21425A4(v17, __src);

  *(a3 + 40) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *a3 = v14;
  sub_1B2142B5C(__src, a3 + 8);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  sub_1B2137278();
  v19 = v18;
  sub_1B2142BCC(__dst);
  if (!*(v19 + 16))
  {
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  memcpy((v20 + 24), v22, 0xA2uLL);
  *(a3 + 48) = sub_1B2181204;
  *(a3 + 56) = v20;
  return sub_1B2136148(v22, __src);
}

uint64_t sub_1B2136440()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  if (v0[8])
  {
    v5 = v0[9];
  }

  v6 = v0[10];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  if (v0[17])
  {
    v11 = v0[18];
  }

  if (v0[19])
  {
    v12 = v0[20];
  }

  return swift_deallocObject();
}

void *static FetchableRecord.fetchOne<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = (*(a5 + 32))(&v32, a1, 1, a3, a5);
  if (!v6)
  {
    v19 = v34;
    if (v34)
    {
      type metadata accessor for Row();
      v20 = v32;
      v31 = 0uLL;

      v21 = static Row.fetchOne(_:arguments:adapter:)(v20, &v31, &v33);
      v28 = v21;
      if (v21)
      {
        sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1B2257570;
        *(v29 + 32) = v28;

        v19(a1, v29);

        (*(a4 + 8))(v28, a2, a4);
        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      sub_1B2112F4C(v19);
      sub_1B2142D18(&v32);
      return sub_1B21117B4(a6, v30, 1, a2);
    }

    else
    {
      v22 = sub_1B2117FCC(result, v12, v13, v14, v15, v16, v17, v18, v31, *(&v31 + 1), v32);
      static FetchableRecord.fetchOne(_:arguments:adapter:)(v22, v23, v24, a2, a4, v25, v26, v27, a6);
      return sub_1B2142D18(&v32);
    }
  }

  return result;
}

__n128 sub_1B21366E4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v46 = *a1;
  v47 = v5;
  if (*(a1 + 16))
  {
    v6 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for TableAlias();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 48) = 1;
  }

  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1B2113B74();
  v9 = swift_allocObject();
  v9[2] = sub_1B213A564;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = v7;
  v45 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v10)
  {
    sub_1B2113B74();
    v12 = swift_allocObject();
    v12[2] = sub_1B213C95C;
    v12[3] = v6;
    v12[4] = v10;
    v12[5] = v11;
    v44 = v12;

    v43 = sub_1B213AF30;
  }

  else
  {
    v43 = 0;
    v44 = *(a1 + 48);
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);

  swift_retain_n();

  sub_1B2112328(v10);
  sub_1B21369F0();
  v42 = v15;
  v17 = v16;
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  if (v18)
  {
    sub_1B2113B74();
    v20 = swift_allocObject();
    v20[2] = sub_1B215677C;
    v20[3] = v6;
    v20[4] = v18;
    v20[5] = v19;

    v41 = sub_1B2139E14;
  }

  else
  {
    v41 = 0;
    v20 = *(a1 + 120);
  }

  v22 = *(a1 + 128);
  v21 = *(a1 + 136);
  if (v22)
  {
    sub_1B2113B74();
    v23 = swift_allocObject();
    v23[2] = sub_1B2251998;
    v23[3] = v6;
    v23[4] = v22;
    v23[5] = v21;

    v40 = sub_1B213AF48;
  }

  else
  {
    v40 = 0;
    v23 = *(a1 + 136);
  }

  HIDWORD(v38) = v17 & 1;
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  sub_1B2112328(v18);
  sub_1B2112328(v22);
  sub_1B2136B54(v24, v25, v26, v27, v28, v29, v30, v31, v37, v38);
  v33 = v32;
  v35 = v34;
  v48 = *(a1 + 144);
  v49 = *(a1 + 160);
  LOBYTE(v25) = *(a1 + 104);
  sub_1B2136FBC();
  sub_1B21159FC();

  sub_1B2137224(a1);
  a2->n128_u64[0] = v46;
  a2->n128_u64[1] = v47;
  a2[1].n128_u64[0] = v6;
  a2[1].n128_u64[1] = sub_1B2139E14;
  a2[2].n128_u64[0] = v45;
  a2[2].n128_u8[8] = v25;
  a2[3].n128_u64[0] = v43;
  a2[3].n128_u64[1] = v44;
  a2[4].n128_u64[0] = v42;
  a2[4].n128_u8[8] = v39;
  a2[5].n128_u64[0] = v33;
  a2[5].n128_u64[1] = v35;
  a2[6].n128_u64[0] = v41;
  a2[6].n128_u64[1] = v20;
  a2[7].n128_u64[0] = v40;
  a2[7].n128_u64[1] = v23;
  result = v48;
  a2[9].n128_u16[0] = v49;
  a2[8] = v48;
  a2[9].n128_u64[1] = v24;
  a2[10].n128_u64[0] = v22;
  return result;
}

void sub_1B21369F0()
{
  sub_1B211AD88();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = v0;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B214C924();
    v5 = (v3 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      if (*v5)
      {
        v9 = *(v5 - 2);

        v10 = sub_1B21369F0(v4, v7, v6 & 1);
        v12 = v11;
        v13 = sub_1B212D004();
        sub_1B214DCD8(v13, v14, 1);
        v15 = v12 & 1;
      }

      else
      {
        sub_1B2113B74();
        v15 = swift_allocObject();
        *(v15 + 16) = sub_1B214D93C;
        *(v15 + 24) = v4;
        *(v15 + 32) = v7;
        *(v15 + 40) = v6;
        v16 = sub_1B212D004();
        sub_1B214C970(v16, v17, 0);

        v10 = sub_1B214D6E8;
      }

      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B211156C(v18);
        sub_1B214C924();
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 24 * v19;
      *(v20 + 32) = v10;
      *(v20 + 40) = v15;
      *(v20 + 48) = v8;
      v5 += 24;
      --v2;
    }

    while (v2);
  }

  sub_1B21119F0();
}

void sub_1B2136B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1B2111640();
  v11 = v10;
  v13 = v12;
  v63 = MEMORY[0x1E69E7CC0];
  v14 = sub_1B2252190();
  v15 = 0;
  v16 = *(v13 + 16);
  v17 = v13 + 40;
  for (i = v13 + 40; ; v17 = i)
  {
    for (j = v17 + 16 * v15; ; j += 16)
    {
      if (v16 == v15)
      {
        sub_1B2112FDC();
        return;
      }

      if (v15 >= v16)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (!*(v11 + 16))
      {
        goto LABEL_24;
      }

      v19 = *(j - 8);
      v20 = *j;

      sub_1B2111664();
      v21 = sub_1B211E590();
      if ((v22 & 1) == 0)
      {
        goto LABEL_25;
      }

      v23 = v11;
      v24 = *(v11 + 56) + 216 * v21;
      sub_1B21165CC();
      memcpy(v25, v26, v27);
      sub_1B21165CC();
      memcpy(v28, v29, v30);
      sub_1B21165CC();
      memmove(v31, v32, v33);
      v69[0] = v19;
      v69[1] = v20;
      memcpy(v70, __src, sizeof(v70));

      sub_1B2181728(v67, __dst);
      sub_1B2181728(v68, __dst);
      sub_1B212AC5C(v69, &qword_1EB7A13A8, &qword_1B2257E40);
      memcpy(v72, v68, 0xD2uLL);
      v71[0] = v19;
      v71[1] = v20;
      v34 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      if (LOBYTE(v72[0]) - 2 >= 2)
      {
        break;
      }

      sub_1B212AC5C(v71, &qword_1EB7A13A8, &qword_1B2257E40);
      ++v15;
    }

    v60 = LOBYTE(v72[0]) != 0;
    v62 = v72[1];
    v35 = v72[2];
    j = v72[3];
    v59 = v72[4];
    memcpy(v74, &v68[48], 0xA2uLL);
    v36 = v72[5];
    sub_1B2181640(v72[1], v72[2], v72[3], v72[4], v72[5]);
    sub_1B2136148(&v72[6], __dst);
    sub_1B21366E4(v73, v74);
    memcpy(&v66[7], v73, 0xA8uLL);
    LOBYTE(__src[0]) = v60;
    __src[1] = v62;
    __src[2] = v35;
    __src[3] = j;
    __src[4] = v59;
    LOBYTE(__src[5]) = v36;
    memcpy(&__src[5] + 1, v66, 0xAFuLL);
    sub_1B21A63AC(__src, __dst);
    swift_isUniquelyReferenced_nonNull_native();
    a10 = v14;
    sub_1B2111664();
    sub_1B211E590();
    v37 = *(v14 + 16);
    sub_1B2118304();
    if (__OFADD__(v40, v41))
    {
      goto LABEL_27;
    }

    j = v38;
    v42 = v39;
    sub_1B21619D8(&qword_1EB7A1CC0, &qword_1B225A4C8);
    if (sub_1B2252E70())
    {
      sub_1B2111664();
      v43 = sub_1B211E590();
      v45 = v63;
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_29;
      }

      j = v43;
    }

    else
    {
      v45 = v63;
    }

    if (v42)
    {
      goto LABEL_30;
    }

    v14 = a10;
    sub_1B21129C8(&a10[j >> 6]);
    v46 = (a10[6] + 16 * j);
    *v46 = v19;
    v46[1] = v20;
    memcpy((a10[7] + 216 * j), __src, 0xD8uLL);
    v47 = a10[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      break;
    }

    a10[2] = v49;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = *(v45 + 16);
      sub_1B21150D0();
      sub_1B214400C();
      v45 = v54;
    }

    v51 = *(v45 + 16);
    v50 = *(v45 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_1B211156C(v50);
      sub_1B214400C();
      v45 = v55;
    }

    *(v45 + 16) = v51 + 1;
    v63 = v45;
    v52 = v45 + 16 * v51;
    *(v52 + 32) = v19;
    *(v52 + 40) = v20;
    sub_1B21A6464(__src);
    sub_1B212AC5C(v71, &qword_1EB7A13A8, &qword_1B2257E40);
    v15 = v34;
    v11 = v23;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  sub_1B2253390();
  __break(1u);
LABEL_30:
  sub_1B2115C3C(a10);
  v58 = (v56 + j * v57);
  memcpy(__dst, v58, sizeof(__dst));
  memcpy(v58, __src, 0xD8uLL);
  sub_1B21A6464(__dst);
  sub_1B2115700();
  sub_1B2117408();
  __break(1u);
}

uint64_t sub_1B2136FBC()
{
  sub_1B21370F0(v0[11], v0[12]);
  v2 = v1;
  v3 = v0[9];
  v13 = v0[10];
  v14 = v3;
  v11 = v3;
  v12 = v13;
  v4 = *(v1 + 16);
  sub_1B2122B00(&v14, __dst, &qword_1EB7A0DA0, &qword_1B2254340);
  result = sub_1B2122B00(&v13, __dst, &qword_1EB7A2220, &qword_1B225BB08);
  v6 = 0;
  for (i = (v2 + 80); ; i += 216)
  {
    if (v4 == v6)
    {

      return v11;
    }

    if (v6 >= *(v2 + 16))
    {
      break;
    }

    result = memcpy(__dst, i - 48, 0xD2uLL);
    if (__dst[0] < 2u)
    {
      memcpy(v15, i, sizeof(v15));
      v8 = sub_1B2181728(__dst, v9);
      sub_1B2136FBC(v8);
      sub_1B21A6528();

      result = sub_1B218179C(__dst);
    }

    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1B21370F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B216EBEC();
    v5 = v15;
    v6 = (a1 + 40);
    while (*(a2 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = sub_1B211E590();
      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }

      memcpy(__dst, (*(a2 + 56) + 216 * v9), 0xD2uLL);
      sub_1B2181728(__dst, v13);

      v15 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B211156C(v11);
        sub_1B216EBEC();
        v5 = v15;
      }

      *(v5 + 16) = v12 + 1;
      memcpy((v5 + 216 * v12 + 32), __dst, 0xD2uLL);
      v6 += 2;
      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_1B2137278()
{
  sub_1B2111F14();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v1 + 16);
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    while (*(v2 + 16))
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      v8 = sub_1B211E590();
      if ((v9 & 1) == 0)
      {
        goto LABEL_17;
      }

      v10 = (*(v2 + 56) + 216 * v8);
      memcpy(__dst, v10, 0xD2uLL);
      memcpy(__src, v10, 0xD2uLL);
      memmove(v31, v10, 0xD2uLL);
      v32[0] = v6;
      v32[1] = v7;
      memcpy(v33, __src, sizeof(v33));

      sub_1B2181728(__dst, v29);
      sub_1B2181728(v31, v29);
      sub_1B212AC5C(v32, &qword_1EB7A13A8, &qword_1B2257E40);
      sub_1B213CB94(&v29[16], v11, v12, v13, v14, v15, v16, v17, *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], *&v29[40], *&v29[48], *&v29[56], *&v29[64], *&v29[72], *&v29[80], *&v29[88], *&v29[96], *&v29[104], *&v29[112], *&v29[120], *&v29[128], *&v29[136], *&v29[144], *&v29[152], *&v29[160], *&v29[168], *&v29[176], *&v29[184], *&v29[192], *&v29[200], *&v29[208], *&v29[216], *&v29[224], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25]);
      *v29 = v6;
      *&v29[8] = v7;
      sub_1B21C3FEC();
      v19 = v18;
      memcpy(__src, v29, 0xE2uLL);
      sub_1B212AC5C(__src, &qword_1EB7A13A8, &qword_1B2257E40);
      v20 = *(v19 + 16);
      v21 = *(v5 + 16);
      if (__OFADD__(v21, v20))
      {
        goto LABEL_18;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v21 + v20 > *(v5 + 24) >> 1)
      {
        sub_1B2161FB4();
        v5 = v22;
      }

      if (*(v19 + 16))
      {
        v23 = *(v5 + 16);
        v24 = *(v5 + 24);
        sub_1B2116A58();
        if (v25 != v26)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v27 = *(v5 + 16);
          v26 = __OFADD__(v27, v20);
          v28 = v27 + v20;
          if (v26)
          {
            goto LABEL_21;
          }

          *(v5 + 16) = v28;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_19;
        }
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1B2111588();
  }
}

uint64_t sub_1B2137488(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for StatementArgumentsSink();
  sub_1B2111758();
  v4 = sub_1B2114D98(0);
  v5 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v7 = v6;
  type metadata accessor for SQLGenerationContext();
  v8 = sub_1B211AD64();

  sub_1B2117164(v9, v4, v5);
  sub_1B21225BC();
  sub_1B21376C4();
  if (v8)
  {
    goto LABEL_2;
  }

  v7 = sub_1B212641C(v10, v11, 0);

  sub_1B211B048(&v22);
  v21[0] = v22;
  Statement.arguments.setter(v21);
  swift_beginAccess();
  v23 = *(v7 + 32);

  sub_1B21225BC();
  sub_1B214179C(v12, v13, v14);

  v16 = *(v7 + 32);
  *(v7 + 32) = *&v21[0];

  v17 = *(v7 + 32);
  if (v17 && !*(v17 + 16))
  {
LABEL_2:
  }

  else
  {
    sub_1B21424C0(a1, v2[22], *v2, v2[1], v21);
    v18 = *&v21[0];
    swift_beginAccess();
    v19 = *(v7 + 32);
    v20[0] = v18;
    v20[1] = v19;
    v24.tableRegions.value._rawValue = v20;
    DatabaseRegion.union(_:)(v24);

    *(v7 + 32) = v23;
    swift_endAccess();
  }

  return v7;
}

void sub_1B21376C4()
{
  sub_1B2111640();
  v3 = v1;
  v4 = v0;
  memcpy(v112, v0, 0xA8uLL);
  v5 = sub_1B2138500();
  type metadata accessor for SQLGenerationContext();
  sub_1B211AD64();

  v7 = sub_1B2138A30(v6, v5);
  sub_1B21397D0(v7);
  v10 = v1;
  if (v1)
  {

LABEL_14:
    sub_1B2112FDC();
    return;
  }

  v111[27] = v8;
  v111[28] = v9;
  MEMORY[0x1B2741EB0](0x5443454C4553, 0xE600000000000000);
  if (v112[5])
  {
    MEMORY[0x1B2741EB0](0x434E495453494420, 0xE900000000000054);
  }

  v11 = sub_1B2139B70();
  sub_1B2139BC4(v11, v112, __dst);
  v102 = v4;

  v12 = *__dst;
  if (*(*__dst + 16))
  {
    MEMORY[0x1B2741EB0](32, 0xE100000000000000);
    v13 = *(v12 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v104 = v7;
      v108[0] = MEMORY[0x1E69E7CC0];
      sub_1B2111CD4();
      sub_1B2116B10();
      v16 = 0;
      v17 = 32;
      v14 = v108[0];
      while (v16 < *(v12 + 16))
      {
        v18 = v14;
        memcpy(__dst, (v12 + v17), 0xB8uLL);
        v19 = v12;
        memcpy(v111, (v12 + v17), 0xB8uLL);
        sub_1B213A774(__dst, v109);
        v20 = sub_1B213A7D0(v104);
        v2 = v21;
        v15 = sub_1B213A5CC(__dst);
        v14 = v18;
        v108[0] = v18;
        v3 = *(v18 + 16);
        v22 = *(v14 + 24);
        if (v3 >= v22 >> 1)
        {
          sub_1B211156C(v22);
          sub_1B212E024();
          sub_1B2116B10();
          v14 = v108[0];
        }

        ++v16;
        *(v14 + 16) = v3 + 1;
        v23 = v14 + 16 * v3;
        *(v23 + 32) = v20;
        *(v23 + 40) = v2;
        v17 += 184;
        v10 = 0;
        v12 = v19;
        if (v13 == v16)
        {
          v7 = v104;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      *__dst = v14;
      v24 = sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      v25 = sub_1B21179D8(qword_1ED85E790);
      sub_1B21164C8();
      sub_1B2252250();
      sub_1B21159FC();

      sub_1B2115DF4();

      MEMORY[0x1B2741EB0](0x204D4F524620, 0xE600000000000000);
      v26 = v112[2];
      v96 = v25;
      v97 = v24;
      v100 = v12;
      v27 = sub_1B213ACD0(v7, v112[0], v112[1], v112[2]);
      MEMORY[0x1B2741EB0](v27);

      v29 = *(v112[10] + 16);
      if (v29)
      {
        v30 = v112[11];
        v31 = (v112[10] + 40);
        while (*(v30 + 16))
        {
          v32 = v26;
          v33 = *(v31 - 1);
          v34 = *v31;

          v28 = sub_1B211E590();
          if ((v35 & 1) == 0)
          {
            goto LABEL_64;
          }

          v36 = (*(v30 + 56) + 216 * v28);
          memcpy(v108, v36, sizeof(v108));
          memcpy(__src, v36, sizeof(__src));
          memmove(v109, v36, 0xD8uLL);
          *__dst = v33;
          *&__dst[8] = v34;
          memcpy(&__dst[16], __src, 0xD8uLL);
          sub_1B21A63AC(v108, v106);
          sub_1B21A63AC(v109, v106);
          sub_1B212AC5C(__dst, &qword_1EB7A1CB8, &qword_1B225A4C0);
          memcpy(v111, v109, 0xD8uLL);
          MEMORY[0x1B2741EB0](32, 0xE100000000000000);
          memcpy(__src, v111, sizeof(__src));
          v26 = v32;
          sub_1B212E024();
          v40 = sub_1B2250D84(v37, v38, v39);
          MEMORY[0x1B2741EB0](v40);

          LOBYTE(v28) = sub_1B21A6464(v111);
          v31 += 2;
          if (!--v29)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_20:
      v104 = v7;
      v41 = v112[6];
      if (v112[6])
      {
        sub_1B2139B70();
        v41(v111);
        v42 = v100;

        memcpy(v108, v111, 0xA3uLL);
        memcpy(v109, v111, 0xA3uLL);
        nullsub_1(v109);
        sub_1B2127DC0(v108, __src);
        v45 = sub_1B2115828();
        MEMORY[0x1B2741EB0](v45, 0xE700000000000000);
        memcpy(__src, v108, 0xA3uLL);
        v46 = sub_1B2127E58(0, 0);
        MEMORY[0x1B2741EB0](v46);

        sub_1B21356F8(v108);
        memcpy(__dst, v109, 0xA3uLL);
      }

      else
      {
        sub_1B2179418(__dst);
        v42 = v100;
      }

      v43 = v112[12];
      v44 = MEMORY[0x1E69E7CC0];
      if (v112[12])
      {
        sub_1B2139B70();
        sub_1B211DACC();
        v43();
        v47 = v42;
        v48 = v44;

        v10 = v111[0];
      }

      else
      {
        v47 = v42;
        v48 = MEMORY[0x1E69E7CC0];
        v10 = MEMORY[0x1E69E7CC0];
      }

      v49 = v7;
      if (*(v10 + 16))
      {
        sub_1B2113134();
        v50 = *(v10 + 16);
        v51 = MEMORY[0x1E69E7CC0];
        if (v50)
        {
          __src[0] = MEMORY[0x1E69E7CC0];
          sub_1B2116B10();
          v52 = 0;
          v53 = 32;
          v51 = __src[0];
          v98 = v50;
          while (v52 < *(v10 + 16))
          {
            memcpy(v111, (v10 + v53), 0xA3uLL);
            v54 = v10;
            memcpy(v109, (v10 + v53), 0xA3uLL);
            sub_1B2127DC0(v111, v108);
            v55 = sub_1B2127E58(v49, 0);
            v57 = v56;
            sub_1B21356F8(v111);
            __src[0] = v51;
            v59 = *(v51 + 16);
            v58 = *(v51 + 24);
            v60 = v51;
            if (v59 >= v58 >> 1)
            {
              sub_1B211156C(v58);
              sub_1B212E024();
              sub_1B2116B10();
              v60 = __src[0];
            }

            ++v52;
            *(v60 + 16) = v59 + 1;
            v61 = v60 + 16 * v59;
            *(v61 + 32) = v55;
            *(v61 + 40) = v57;
            v53 += 168;
            v49 = v104;
            v10 = v54;
            v51 = v60;
            if (v50 == v52)
            {
              v12 = MEMORY[0x1E69E7CC0];
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_69;
        }

        v12 = v48;
LABEL_36:
        v111[0] = v51;
        sub_1B21164C8();
        sub_1B2252250();
        sub_1B21159FC();

        sub_1B2115DF4();

        v2 = v100;
      }

      else
      {
        v12 = v48;
        v2 = v47;
      }

      v62 = v112[14];
      if (!v112[14])
      {
        v3 = 0;
LABEL_40:
        sub_1B213D4F4();
        v64 = v63;
        v66 = v65;
        v67 = sub_1B2139B70();
        sub_1B213CF80(v67, v64, v66 & 1, v68, v69, v70, v71, v72, v92, v93, v94, v95, v96, v97, v98, v100, v102, v104, v106[0], v106[1]);
        if (v3)
        {

          sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);

          goto LABEL_14;
        }

        v74 = v73;

        if (*(v74 + 16))
        {
          sub_1B211551C();
          sub_1B2113134();
          v113 = v74;
          v75 = *(v74 + 16);
          if (v75)
          {
            __src[0] = v12;
            sub_1B2111CD4();
            sub_1B2116B10();
            v76 = 0;
            v77 = __src[0];
            v99 = v75 - 1;
            v78 = 32;
            for (i = v113; v76 < *(i + 16); i = v113)
            {
              memcpy(v111, (i + v78), 0xA3uLL);
              memcpy(v109, (i + v78), 0xA3uLL);
              sub_1B214D958(v111, v108);
              v80 = sub_1B214DCE8(v105);
              v82 = v81;
              sub_1B214DC54(v111);
              __src[0] = v77;
              v84 = *(v77 + 16);
              v83 = *(v77 + 24);
              if (v84 >= v83 >> 1)
              {
                sub_1B211156C(v83);
                sub_1B212E024();
                sub_1B2116B10();
                v77 = __src[0];
              }

              *(v77 + 16) = v84 + 1;
              v85 = v77 + 16 * v84;
              *(v85 + 32) = v80;
              *(v85 + 40) = v82;
              if (v99 == v76)
              {

                goto LABEL_55;
              }

              v78 += 168;
              ++v76;
            }

LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v77 = MEMORY[0x1E69E7CC0];
LABEL_55:
          v111[0] = v77;
          sub_1B21164C8();
          sub_1B2252250();
          sub_1B21159FC();

          sub_1B2115DF4();

          v2 = v101;
        }

        else
        {
        }

        if (BYTE1(v112[18]) != 1)
        {
          v88 = v112[16];
          v87 = v112[17];
          v89 = v112[18];

          goto LABEL_60;
        }

        if ((*(v103 + 168) & 1) == 0)
        {

LABEL_62:
          sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);
          goto LABEL_14;
        }

        v86 = sub_1B2139B70();
        memcpy(v111, __dst, 0xA3uLL);
        LOBYTE(v28) = sub_1B213D76C(v86, v2, v111, v10);
LABEL_65:
        v91 = v28;

        if (v91)
        {

          goto LABEL_62;
        }

        v87 = 0;
        v88 = 1;
        v89 = 1;
LABEL_60:
        MEMORY[0x1B2741EB0](0x2054494D494C20, 0xE700000000000000);
        v90 = sub_1B2154370(v88, v87, v89 & 1);
        MEMORY[0x1B2741EB0](v90);

        sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);

        goto LABEL_14;
      }

      sub_1B2139B70();
      sub_1B211DACC();
      v62();

      memcpy(v109, v111, 0xA3uLL);
      MEMORY[0x1B2741EB0](0x20474E4956414820, 0xE800000000000000);
      memcpy(v108, v109, 0xA3uLL);
      v15 = sub_1B21181C0();
      v3 = 0;
    }

    MEMORY[0x1B2741EB0](v15);

    sub_1B21356F8(v109);
    goto LABEL_40;
  }

LABEL_70:
  sub_1B2252EC0();
  __break(1u);
}