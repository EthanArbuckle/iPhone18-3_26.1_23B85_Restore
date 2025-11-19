uint64_t sub_1B0C4144C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_1B0C41D78(a1 + *(v8 + 20), v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v10 = *v7;
    v11 = *(v7 + 2);
  }

  else
  {
    result = sub_1B0439010(v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v11 = 0;
    v10 = 0uLL;
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1B0C41550@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = sub_1B0E429A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a2;
  v33 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E42988();
  sub_1B07C7F5C();
  v17 = sub_1B0E45F08();
  v19 = v18;
  (*(v8 + 8))(v11, v7);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    v17 = 0;
    v19 = 0;
  }

  if ((~a1 & 0xF000000000000007) != 0)
  {
    v23 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v23 > 12)
    {
      if (v23 != 13)
      {
        if (v23 != 17)
        {
          goto LABEL_22;
        }

        v24 = __ROR8__(a1 + 0x7FFFFFFFFFFFFFFCLL, 3);
        if (v24 > 0x1E || ((1 << v24) & 0x5FDFF9A7) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else if (v23 && v23 != 9)
    {
LABEL_22:
      sub_1B0447F00(a1);
      goto LABEL_6;
    }

    v32 = a1;
    v25 = sub_1B0E44BA8();
    v22 = v26;

    *v16 = v25;
    if (v19)
    {
      v16[1] = v22;
      v21 = 3;
      v22 = v19;
      v16[2] = v17;
    }

    else
    {
      v21 = 1;
    }

    goto LABEL_20;
  }

LABEL_6:

  if (v19)
  {
    *v16 = v17;
    v21 = 1;
    v22 = v19;
LABEL_20:
    v28 = v31;
    v16[v21] = v22;
    swift_storeEnumTagMultiPayload();
    sub_1B0C41DE0(v16, v28, type metadata accessor for ConnectionStatus.Error.Details);
    v27 = 0;
    return (*(v13 + 56))(v28, v27, 1, v12);
  }

  v27 = 1;
  v28 = v31;
  return (*(v13 + 56))(v28, v27, 1, v12);
}

uint64_t sub_1B0C41854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_1B0C41D78(a1 + *(v8 + 20), v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v9 = sub_1B0E441D8();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {
    sub_1B0439010(v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v12 = sub_1B0E441D8();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_1B0C41A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_1B0C41D78(a1 + *(v8 + 20), v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v9 = sub_1B0E441D8();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {
    sub_1B0439010(v7, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v12 = sub_1B0E441D8();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_1B0C41BC4(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = static CommandConnection.RecentErrors.Error.Kind.__derived_enum_equals(_:_:)(a1 + v6, v5);
  sub_1B0439010(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return a1 & 1;
}

BOOL sub_1B0C41C98(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_1B0C41D78(a1 + *(v6 + 20), v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v7 = swift_getEnumCaseMultiPayload() == 0;
  sub_1B0439010(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return v7;
}

uint64_t sub_1B0C41D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C41DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for CredentialsState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1B0C41F18()
{
  v1 = 1685024615;
  v2 = 0x6E6920656279616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x64696C61766E69;
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

uint64_t sub_1B0C41F94()
{
  v1 = 0xE400000000000000;
  v2 = 1685024615;
  v3 = 0xED000064696C6176;
  v4 = 0x6E6920656279616DLL;
  if (*v0 != 2)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*v0)
  {
    v2 = 0x64696C61766E69;
    v1 = 0xE700000000000000;
  }

  if (*v0 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v0 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1B2726E80](v5, v6);

  return 0;
}

unint64_t sub_1B0C42064()
{
  result = qword_1EB6E5AA8;
  if (!qword_1EB6E5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5AA8);
  }

  return result;
}

uint64_t sub_1B0C420B8()
{
  v1 = v0;
  v2 = sub_1B0E44238();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B0E44288();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v22 = OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer;
  v11 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  aBlock[4] = sub_1B0C425C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_31;
  v13 = _Block_copy(aBlock);
  swift_retain_n();
  v14 = v10;
  sub_1B0E44258();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1B039B924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039B9A4();
  sub_1B0E460A8();
  MEMORY[0x1B2727B00](0, v9, v5, v13);
  _Block_release(v13);

  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);

  v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_logger;
  v16 = sub_1B0E439A8();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler + 8);

  v18 = *(v1 + v22);

  return v1;
}

uint64_t sub_1B0C423C0()
{
  sub_1B0C420B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataTransferReportAccumulator()
{
  result = qword_1EB6DC240;
  if (!qword_1EB6DC240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0C4246C()
{
  result = sub_1B0E439A8();
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

uint64_t sub_1B0C42538(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C42554(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

BOOL sub_1B0C42584(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
}

void sub_1B0C425C4()
{
  if (*(v0 + 16))
  {
    RestartableTimer.stop()();
  }
}

uint64_t Engine.__allocating_init(configuration:windowOfInterestSizes:environment:workloop:sendAction:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, const char *a6, int a7, uint64_t (*a8)(uint64_t a1), __int128 a9, uint64_t a10)
{
  v11 = v10;
  v29 = a7;
  v28 = a6;
  v27 = a9;
  v18 = type metadata accessor for Configuration();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EngineTracingIDOwner();
  swift_allocObject();
  v22 = EngineTracingIDOwner.init()();
  sub_1B03903A8(a1, v21, type metadata accessor for Configuration);
  v23 = *(v11 + 48);
  v24 = *(v11 + 52);
  v25 = swift_allocObject();
  sub_1B0C42780(v22, v21, a2, a3, a4 & 1, a5 & 0x101FF, v28, v29, a8, v27, *(&v27 + 1), a10);
  sub_1B03C74B8(a1, type metadata accessor for Configuration);
  return v25;
}

uint64_t (**sub_1B0C42780(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, const char *a7, int a8, uint64_t (*a9)(uint64_t a1), uint64_t (*a10)(uint64_t a1), uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v13 = v12;
  LODWORD(v199) = a8;
  v198 = a7;
  LODWORD(v196) = a6;
  v178 = a5;
  v180 = a4;
  v179 = a3;
  v181 = a11;
  v188 = a10;
  v195 = a9;
  v191 = sub_1B0E44208();
  v190 = *(v191 - 8);
  v16 = v190[8];
  MEMORY[0x1EEE9AC00](v191);
  v193 = (&v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v192 = (&v173 - v19);
  v194 = type metadata accessor for ConnectionConfiguration();
  v20 = *(*(v194 - 1) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v189 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1B0E459C8();
  v186 = *(v187 - 8);
  v22 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1B0E45C58();
  v24 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B0E44288();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v182 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for StateWithTasks();
  v200 = *(v29 - 8);
  v201 = v29;
  v30 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v202 = &v173 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Engine.Logger(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v174 = &v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v173 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v173 - v39;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator) = 0;
  v41 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart;
  type metadata accessor for AtomicFlag.Storage();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v12 + v41) = v42;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_isProcessingUpdates) = 0;
  v43 = MEMORY[0x1E69E7CC0];
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates) = MEMORY[0x1E69E7CC0];
  v44 = v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState;
  v45 = type metadata accessor for Activity(0);
  (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
  *&v44[*(type metadata accessor for ExternalState() + 20)] = MEMORY[0x1E69E7CD0];
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer) = 0;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer) = 0;
  v46 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v12 + v46) = v47;
  v48 = v40;
  *(v12 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture) = v43;
  v49 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_lastLoggedSyncRequestsAt;
  *(v13 + v49) = static MonotonicTime.now()();
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection) = 0;
  v50 = (v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry);
  *v50 = 0u;
  v50[1] = 0u;
  v51 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  *(v13 + v51) = sub_1B0C3C84C(v43);
  v52 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  *(v13 + v52) = sub_1B0C3C978(v43);
  v203 = a1;
  LOBYTE(v52) = *(a1 + 16);
  sub_1B0E43998();
  v40[*(v32 + 20)] = v52;
  sub_1B03903A8(v40, v37, type metadata accessor for Engine.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v53 = sub_1B0E43988();
  v54 = sub_1B0E45908();
  v55 = os_log_type_enabled(v53, v54);
  v197 = v48;
  v173 = v32;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v32;
    v59 = v57;
    v210 = v57;
    *v56 = 68158210;
    *(v56 + 4) = 2;
    *(v56 + 8) = 256;
    v60 = v37[*(v58 + 20)];
    sub_1B03C74B8(v37, type metadata accessor for Engine.Logger);
    *(v56 + 10) = v60;
    *(v56 + 11) = 2082;
    LOWORD(aBlock) = v196 & 0x1FF;
    BYTE2(aBlock) = BYTE2(v196) & 1;
    *(&aBlock + 1) = v198;
    LOBYTE(v205) = v199;
    v206 = v195;
    v61 = sub_1B0E44BA8();
    v63 = sub_1B0399D64(v61, v62, &v210);
    v48 = v197;

    *(v56 + 13) = v63;
    _os_log_impl(&dword_1B0389000, v53, v54, "[%.*hhx] Created with environment %{public}s", v56, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x1B272C230](v59, -1, -1);
    MEMORY[0x1B272C230](v56, -1, -1);
  }

  else
  {
    sub_1B03C74B8(v37, type metadata accessor for Engine.Logger);
  }

  sub_1B03903A8(v48, v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, type metadata accessor for Engine.Logger);
  v64 = *a2;
  v65 = a2[1];
  v66 = (v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName);
  *v66 = *a2;
  v66[1] = v65;
  v67 = v64;
  v176 = v64;
  v177 = v65;
  v68 = v203;
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner) = v203;
  v69 = type metadata accessor for Configuration();
  v175 = a2 + v69[5];
  *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind) = *(v175 + *(v194 + 9));
  v70 = v69[7];
  v71 = *(a2 + v69[6]);
  v194 = a2;
  v72 = *(a2 + v70);
  v73 = *(v68 + 16);
  swift_bridgeObjectRetain_n();

  v172 = v67;
  v74 = v202;
  StateWithTasks.init(windowOfInterestSizes:environment:mailboxFilter:fetchedMessageMetadata:tracingID:logName:)(v179, v180, v178 & 1, v196 & 0x101FF, v198, v199, v195, v71, v202, v72, v73, v172, v65);
  (*(v200 + 16))(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state, v74, v201);
  v13[4] = v181;
  v13[5] = a12;
  v75 = sub_1B06FF124();
  v198 = "";
  v199 = v75;
  v196 = a12;

  sub_1B0E44278();
  *&aBlock = MEMORY[0x1E69E7CC0];
  v180 = sub_1B039E4B4(&qword_1EB6DA880, MEMORY[0x1E69E8120]);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E19E0, &qword_1B0E9ABD0);
  v181 = sub_1B039E3F8(&qword_1EB6DAF00, &qword_1EB6E19E0, &qword_1B0E9ABD0);
  sub_1B0E460A8();
  v178 = *MEMORY[0x1E69E8098];
  v186 = *(v186 + 104);
  v76 = v185;
  v77 = v187;
  (v186)(v185);
  v195 = v188;
  v13[2] = sub_1B0E45C68();
  v198 = "com.apple.email.imap.engine";
  sub_1B0E44278();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1B0E460A8();
  v78 = v203;
  (v186)(v76, v178, v77);
  v79 = v13;
  v13[3] = sub_1B0E45C68();
  v80 = StateWithTasks.runningSyncRequests.getter();
  RunningSyncRequests.kinds.getter(v80, &aBlock);

  v81 = sub_1B038E498(aBlock, *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind));

  v82 = v189;
  sub_1B03903A8(v175, v189, type metadata accessor for ConnectionConfiguration);
  v83 = v79[2];
  v84 = type metadata accessor for ConnectionPool();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  v87 = swift_allocObject();
  v88 = v83;

  v89 = sub_1B0C48730(v176, v177, v81, v82, v88, v79, v87);
  v90 = *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);
  *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections) = v89;

  v91 = v78;
  LOBYTE(v81) = *(v78 + 16);
  v92 = v79[2];
  type metadata accessor for BetterPathEvaluator();
  v93 = swift_allocObject();
  *(v93 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v93 + 48) = xmmword_1B0ECE570;
  *(v93 + 64) = 0;
  *(v93 + 80) = 0;
  *(v93 + 88) = 0;
  *(v93 + 72) = 0;
  *(v93 + 40) = &off_1F2721688;
  swift_unknownObjectWeakAssign();
  *(v93 + 16) = v92;
  *(v93 + 24) = v81;
  *(v93 + 104) = v89;
  *(v93 + 112) = 0x4000000000000000;
  *(v93 + 96) = sub_1B0C49810;
  v94 = *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator);
  *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator) = v93;
  v189 = v89;

  v95 = v92;

  v97 = *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName);
  v96 = *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v98 = sub_1B0E44AC8();
  v99 = sub_1B0E44AC8();
  v100 = PPSCreateTelemetryIdentifier();

  if (v100)
  {
    v101 = sub_1B0C496F8(8);
    v103 = v102;
    v105 = v104;
    v107 = v106;

    v108 = MEMORY[0x1B2726D00](v101, v103, v105, v107);
    v110 = v109;
  }

  else
  {

    v111 = v174;
    sub_1B03903A8(v197, v174, type metadata accessor for Engine.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v112 = sub_1B0E43988();
    v113 = sub_1B0E458E8();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 68157952;
      *(v114 + 4) = 2;
      *(v114 + 8) = 256;
      v115 = *(v111 + *(v173 + 20));
      sub_1B03C74B8(v111, type metadata accessor for Engine.Logger);
      *(v114 + 10) = v115;
      _os_log_impl(&dword_1B0389000, v112, v113, "[%.*hhx] Unable to create power telemetry id.", v114, 0xBu);
      MEMORY[0x1B272C230](v114, -1, -1);
    }

    else
    {
      sub_1B03C74B8(v111, type metadata accessor for Engine.Logger);
    }

    v100 = 0;
    v108 = 0;
    v110 = 0;
  }

  v116 = (v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry);
  swift_beginAccess();
  v117 = *v116;
  v118 = v116[1];
  v119 = v116[2];
  v120 = v116[3];
  *v116 = v100;
  v116[1] = v108;
  v116[2] = v110;
  v116[3] = 0;
  sub_1B0C47D58(v117, v118, v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1B0EDC2C0;
  *&aBlock = 0x2D6574617453;
  *(&aBlock + 1) = 0xE600000000000000;
  v209 = *(v91 + 16);
  sub_1B0BA1E94();
  v122 = sub_1B0E44E98();
  v124 = v123;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  type metadata accessor for StateCapture();
  MEMORY[0x1B2726E80](v122, v124);

  v125 = aBlock;
  v126 = v79[2];
  v127 = swift_allocObject();
  swift_weakInit();

  *(v121 + 32) = StateCapture.__allocating_init(title:queue:capture:)(v125, *(&v125 + 1), v126, sub_1B0C49860, v127);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1B0E46298();

  strcpy(&aBlock, "LocalSelected-");
  HIBYTE(aBlock) = -18;
  v209 = *(v91 + 16);
  v128 = sub_1B0E44E98();
  v130 = v129;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v128, v130);

  v131 = aBlock;
  v132 = v79[2];
  v133 = swift_allocObject();
  swift_weakInit();
  *(v121 + 40) = StateCapture.__allocating_init(title:queue:capture:)(v131, *(&v131 + 1), v132, sub_1B0C49868, v133);
  *&aBlock = 0x2D6C61636F4CLL;
  *(&aBlock + 1) = 0xE600000000000000;
  v209 = *(v91 + 16);
  v134 = sub_1B0E44E98();
  v136 = v135;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v134, v136);

  v137 = aBlock;
  v138 = v79[2];
  v139 = swift_allocObject();
  swift_weakInit();
  *(v121 + 48) = StateCapture.__allocating_init(title:queue:capture:)(v137, *(&v137 + 1), v138, sub_1B0C49870, v139);
  *&aBlock = 0x2D65746F6D6552;
  *(&aBlock + 1) = 0xE700000000000000;
  v209 = *(v91 + 16);
  v140 = sub_1B0E44E98();
  v142 = v141;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  MEMORY[0x1B2726E80](v140, v142);

  v143 = aBlock;
  v144 = v79[2];
  v145 = swift_allocObject();
  swift_weakInit();
  *(v121 + 56) = StateCapture.__allocating_init(title:queue:capture:)(v143, *(&v143 + 1), v144, sub_1B0C49878, v145);
  v146 = *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);
  *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture) = v121;

  v147 = v79[2];
  v148 = v192;
  *v192 = 500;
  v149 = *MEMORY[0x1E69E7F38];
  v150 = v190[13];
  v151 = v191;
  (v150)(v148, v149, v191);
  v152 = v193;
  *v193 = 250;
  (v150)(v152, v149, v151);
  v153 = swift_allocObject();
  swift_weakInit();
  v207 = sub_1B0C49880;
  v208 = v153;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v199 = &v205;
  v205 = sub_1B038C908;
  v206 = &block_descriptor_52;
  v154 = _Block_copy(&aBlock);
  v198 = type metadata accessor for RestartableTimer();
  swift_allocObject();
  v155 = v147;

  v156 = RestartableTimer.init(queue:repeating:leeway:closure:)(v155, v148, v152, v154);

  v157 = *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);
  *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer) = v156;

  v188 = v79[2];
  *v148 = 53;
  v158 = *MEMORY[0x1E69E7F48];
  v190 = v150;
  (v150)(v148, v158, v151);
  *v152 = 2;
  (v150)(v152, v158, v151);
  v159 = swift_allocObject();
  swift_weakInit();
  v207 = sub_1B0C498B0;
  v208 = v159;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v205 = sub_1B038C908;
  v206 = &block_descriptor_56;
  v160 = _Block_copy(&aBlock);
  swift_allocObject();
  v161 = v188;

  v162 = RestartableTimer.init(queue:repeating:leeway:closure:)(v161, v148, v152, v160);

  v163 = *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer);
  *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer) = v162;

  v164 = v79[2];
  *v148 = 300;
  v165 = v190;
  (v190)(v148, v158, v151);
  *v152 = 10;
  v165(v152, v158, v151);
  v166 = swift_allocObject();
  swift_weakInit();
  v167 = v164;

  v207 = sub_1B0C498E0;
  v208 = v166;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v205 = sub_1B038C908;
  v206 = &block_descriptor_60;
  v168 = _Block_copy(&aBlock);
  swift_allocObject();

  v169 = RestartableTimer.init(queue:repeating:leeway:closure:)(v167, v148, v152, v168);

  sub_1B03C74B8(v194, type metadata accessor for Configuration);
  (*(v200 + 8))(v202, v201);
  sub_1B03C74B8(v197, type metadata accessor for Engine.Logger);

  v170 = *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer);
  *(v79 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer) = v169;

  return v79;
}

uint64_t Engine.Logger.init(engineID:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1B0E43998();
  result = type metadata accessor for Engine.Logger(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1B0C43EAC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF0, &qword_1B0EDC3D8);
    *(a1 + 32) = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v15 = *(v13 + 16);
    *v11 = v15;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
    v16 = v15;
    LOBYTE(v15) = sub_1B0E44488();
    result = (*(v8 + 8))(v11, v7);
    if (v15)
    {
      v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v3 + 16))(v6, v13 + v17, v2);
      v18 = StateWithTasks.stateCaptureValue(logName:)(*(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName), *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8), boxed_opaque_existential_1);
      (*(v3 + 8))(v6, v2, v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0C44134@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AE0, &qword_1B0EDC3C8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v29 - v17);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v30 = a1;
    v21 = *(Strong + 16);
    *v11 = v21;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
    v22 = v21;
    LOBYTE(v21) = sub_1B0E44488();
    result = (*(v8 + 8))(v11, v7);
    if ((v21 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v3 + 16))(v6, v20 + v24, v2);
    StateWithTasks.localSelectedMailboxesCaptureValue()(v18);

    (*(v3 + 8))(v6, v2);
    a1 = v30;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AE8, &qword_1B0EDC3D0);
    (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  }

  sub_1B0502100(v18, v15);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AE8, &qword_1B0EDC3D0);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v15, 1, v26) == 1)
  {
    sub_1B0502170(v18);
    result = sub_1B0502170(v15);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v26;
    *(a1 + 32) = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v27 + 32))(boxed_opaque_existential_1, v15, v26);
    return sub_1B0502170(v18);
  }

  return result;
}

uint64_t sub_1B0C44500@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(result + 16);
    *v11 = v14;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
    v15 = v14;
    LOBYTE(v14) = sub_1B0E44488();
    result = (*(v8 + 8))(v11, v7);
    if (v14)
    {
      v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v3 + 16))(v6, v13 + v16, v2);
      StateWithTasks.localDeselectedMailboxesCaptureValue()(a1);

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0C44738@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateWithTasks();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AD8, &qword_1B0EDC3C0);
    *(a1 + 32) = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v15 = *(v13 + 16);
    *v11 = v15;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
    v16 = v15;
    LOBYTE(v15) = sub_1B0E44488();
    result = (*(v8 + 8))(v11, v7);
    if (v15)
    {
      v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v3 + 16))(v6, v13 + v17, v2);
      StateWithTasks.remoteMailboxesCaptureValue()(boxed_opaque_existential_1);

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0C449B0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1B0C44A10()
{
  v0 = type metadata accessor for StateWithTasks();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + 16);
    *v9 = v12;
    (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
    v13 = v12;
    LOBYTE(v12) = sub_1B0E44488();
    result = (*(v6 + 8))(v9, v5);
    if (v12)
    {
      v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      v15 = v1[2];
      v15(v4, v11 + v14, v0);
      v16 = static MonotonicTime.now()();
      StateWithTasks.logLongRunningSyncRequests(now:)(v16);
      v17 = v1[1];
      v17(v4, v0);
      v15(v4, v11 + v14, v0);
      v18 = static MonotonicTime.now()();
      StateWithTasks.logLongRunningTasks(now:)(v18);

      return (v17)(v4, v0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall Engine.start()()
{
  v1 = sub_1B0E44238();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E44288();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart);
  v12 = atomicFlag_testAndSet.unsafeMutableAddressor();
  if (((*v12)(v11 + 16) & 1) == 0)
  {
    v16 = *(v0 + 16);
    aBlock[4] = sub_1B0C44FFC;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_32;
    v13 = _Block_copy(aBlock);

    sub_1B0E44258();
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B039E4B4(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B039E3F8(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B0E460A8();
    MEMORY[0x1B2727B00](0, v10, v5, v13);
    _Block_release(v13);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v15);
  }
}

uint64_t sub_1B0C44F34(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(a1 + 32))(0xB000000000000000);
  result = sub_1B0C458C4(&unk_1F27210B8, &unk_1F27210D8);
  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);

  RestartableTimer.start()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer);

  RestartableTimer.start()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer);

  RestartableTimer.start()();
}

Swift::Void __swiftcall Engine.tearDown()()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown);
  v7 = atomicFlag_testAndSet.unsafeMutableAddressor();
  if (((*v7)(v6 + 16) & 1) == 0)
  {
    v8 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v5, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v9 = sub_1B0E43988();
    v10 = sub_1B0E439A8();
    (*(*(v10 - 8) + 8))(v5, v10);
    v11 = sub_1B0E45908();
    if (os_log_type_enabled(v9, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68157952;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      *(v12 + 10) = *(v8 + *(v2 + 20));

      _os_log_impl(&dword_1B0389000, v9, v11, "[%.*hhx] Tearing down.", v12, 0xBu);
      MEMORY[0x1B272C230](v12, -1, -1);
    }

    else
    {
    }

    v13 = *(v1 + 16);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1B0C47D50;
    *(v14 + 24) = v1;
    aBlock[4] = sub_1B04020B8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B0402058;
    aBlock[3] = &block_descriptor_3_2;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v13, v15);
    _Block_release(v15);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }
  }
}

void sub_1B0C452CC(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);

  RestartableTimer.stop()();

  if (!*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer);

  RestartableTimer.stop()();

  if (*(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer))
  {
    v4 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer);

    RestartableTimer.stop()();

    sub_1B0C4536C();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1B0C4536C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);
    }

    v3 = sub_1B0E46138();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2728410](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    StateCapture.tearDown()();
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
  {
    v7 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);

    sub_1B0C4BE10();

    v8 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

uint64_t Engine.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E439A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  (*(v7 + 16))(v11, v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v6, v9);
  sub_1B03903A8(v1 + v12, v5, type metadata accessor for Engine.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E45908();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 68157952;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    v16 = v5[*(v2 + 20)];
    sub_1B03C74B8(v5, type metadata accessor for Engine.Logger);
    *(v15 + 10) = v16;
    _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx] Deinit.", v15, 0xBu);
    MEMORY[0x1B272C230](v15, -1, -1);
  }

  else
  {
    sub_1B03C74B8(v5, type metadata accessor for Engine.Logger);
  }

  (*(v7 + 8))(v11, v6);
  v17 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didTearDown);
  v18 = atomicFlag_testAndSet.unsafeMutableAddressor();
  result = (*v18)(v17 + 16);
  if (result)
  {

    v20 = *(v1 + 40);

    sub_1B03C74B8(v1 + v12, type metadata accessor for Engine.Logger);
    v21 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logName + 8);

    v22 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner);

    v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    v24 = type metadata accessor for StateWithTasks();
    (*(*(v24 - 8) + 8))(v1 + v23, v24);
    v25 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);

    v26 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_betterPathEvaluator);

    v27 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_didStart);

    v28 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingUpdates);

    sub_1B03C74B8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_externalState, type metadata accessor for ExternalState);
    v29 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer);

    v30 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_inSyncMailboxesDidSyncTimer);

    v31 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_checkForLongSyncsTimer);

    v32 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_stateCapture);

    v33 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 24);
    sub_1B0C47D58(*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 8), *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_powerTelemetry + 16));
    v34 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests);

    v35 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Engine.__deallocating_deinit()
{
  Engine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C458C4(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v3 = sub_1B0E44468();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  v9 = *MEMORY[0x1E69E8020];
  v10 = v4[13];
  v10(v7, v9, v3);
  v11 = v8;
  v12 = sub_1B0E44488();
  v13 = v4[1];
  result = v13(v7, v3);
  if (v12)
  {
    *v7 = v11;
    v10(v7, v9, v3);
    v15 = sub_1B0E44488();
    result = v13(v7, v3);
    if (v15)
    {
      sub_1B038DED0();
      return sub_1B0425738(v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C45A44(uint64_t a1, char a2)
{
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v2;
  v11 = *(v2 + 16);
  *v10 = v11;
  v12 = *MEMORY[0x1E69E8020];
  v13 = v6[13];
  v13(v10, v12, v5, v8);
  v26 = v11;
  v14 = sub_1B0E44488();
  v15 = v6[1];
  result = v15(v10, v5);
  if (v14)
  {
    v17 = swift_allocObject();
    v18 = a2;
    v19 = a1;
    *(v17 + 16) = a1;
    v20 = v18 & 1;
    *(v17 + 24) = v18 & 1;
    *v10 = v26;
    (v13)(v10, v12, v5);
    sub_1B0390664(v19, v20);
    v21 = sub_1B0E44488();
    result = v15(v10, v5);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AB8, "<z\b");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC1E70;
      *(inited + 32) = v17 | 0x4000000000000000;

      sub_1B038DED0();

      swift_setDeallocating();
      v23 = *(inited + 16);
      return swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C45C68()
{
  v1 = v0;
  v2 = type metadata accessor for Engine.Logger(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E44468();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1B0E44488();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v5, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = sub_1B0E43988();
    v16 = sub_1B0E439A8();
    (*(*(v16 - 8) + 8))(v5, v16);
    v17 = sub_1B0E458E8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 68157952;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      *(v18 + 10) = *(v14 + *(v2 + 20));

      _os_log_impl(&dword_1B0389000, v15, v17, "[%.*hhx] Credentials are invalid.", v18, 0xBu);
      MEMORY[0x1B272C230](v18, -1, -1);
    }

    else
    {
    }

    v19 = *(v1 + 40);
    return (*(v1 + 32))(0xB000000000000018);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0C45EFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Engine.Logger(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = v11(0xB000000000000020, v8);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  swift_beginAccess();

  v16 = *(v3 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + v15);
  *(v3 + v15) = 0x8000000000000000;
  sub_1B0C48308(sub_1B0C49794, v14, v13, isUniquelyReferenced_nonNull_native);
  *(v3 + v15) = v27;
  swift_endAccess();
  v18 = v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v10, type metadata accessor for Engine.Logger);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v19 = sub_1B0E43988();
  v20 = sub_1B0E439A8();
  (*(*(v20 - 8) + 8))(v10, v20);
  v21 = sub_1B0E458D8();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 68158210;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    *(v22 + 10) = *(v18 + *(v6 + 20));

    *(v22 + 11) = 2080;
    LODWORD(v27) = v13;
    sub_1B07467B8();
    v24 = sub_1B0E44E98();
    v26 = sub_1B0399D64(v24, v25, &v28);

    *(v22 + 13) = v26;
    _os_log_impl(&dword_1B0389000, v19, v21, "[%.*hhx] Did send action %s: request push registration info.", v22, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x1B272C230](v23, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {
  }
}

void sub_1B0C461D0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Engine.Logger(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 32);
  v14 = *(v4 + 40);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = v15(v16 | 0x1000000000000002);

  v18 = v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v13, type metadata accessor for Engine.Logger);
  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v19 = sub_1B0E43988();
  v20 = sub_1B0E439A8();
  (*(*(v20 - 8) + 8))(v13, v20);
  v21 = sub_1B0E45908();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v24 = *(v18 + *(v10 + 20));

    *(v22 + 10) = v24;

    *(v22 + 11) = 2080;
    v29[1] = v17;
    sub_1B07467B8();
    v25 = sub_1B0E44E98();
    v27 = sub_1B0399D64(v25, v26, &v30);

    *(v22 + 13) = v27;
    *(v22 + 21) = 2048;
    v28 = *(a4 + 16);

    *(v22 + 23) = v28;

    _os_log_impl(&dword_1B0389000, v19, v21, "[%.*hhx] Did send action %s: did complete push registration (%ld mailbox(es)).", v22, 0x1Fu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x1B272C230](v23, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1B0C464D4(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v16 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections;
    v4 = (result + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 >> 62 == 1)
      {
        v7 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          v8 = (v7 >> 59) & 0x1E | (v7 >> 2) & 1;
          if (v8 == 1)
          {
            v14 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v15 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

            sub_1B0390664(v7, 1);
            sub_1B0C466C8(v15, v14);
          }

          else
          {
            if (v8 != 7)
            {
              v9 = v8 == 22 && v7 == 0xB000000000000000;
              if (!v9 || !*(v3 + v16))
              {
                goto LABEL_4;
              }

              swift_beginAccess();
              v10 = StateWithTasks.appState.getter();
              swift_endAccess();

              sub_1B0390664(0xB000000000000000, 1);

              sub_1B0C4C6B4(v10 & 1);

              v11 = 0xB000000000000000;
              goto LABEL_19;
            }

            v12 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
            v18[0] = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            v18[1] = v12;
            v13 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
            v18[2] = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
            v18[3] = v13;

            sub_1B0390664(v7, 1);
            sub_1B0A1C2CC(v18, v17);
            sub_1B0C46AB0(v18);

            sub_1B0A1C37C(v18);
          }

          v11 = v7;
LABEL_19:
          result = sub_1B0390678(v11, 1);
          goto LABEL_4;
        }

        sub_1B03A22C4(v7);
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1B0C466C8(uint64_t a1, int a2)
{
  v3 = v2;
  v32 = a1;
  v5 = type metadata accessor for Engine.Logger(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30[-v10];
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingCredentialsRequests;
  swift_beginAccess();
  v13 = *(v3 + v12);
  v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = a2;
  v15 = sub_1B0C46DB0(v14, a2);
  v17 = v16;
  v19 = v18;
  v20 = ~v18;

  v21 = v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  if (v20)
  {
    sub_1B03903A8(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v11, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = sub_1B0E43988();
    v23 = sub_1B0E439A8();
    (*(*(v23 - 8) + 8))(v11, v23);
    v24 = sub_1B0E458D8();
    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 68158208;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      *(v25 + 10) = *(v21 + *(v5 + 20));

      *(v25 + 11) = 1024;
      *(v25 + 13) = v31;
      _os_log_impl(&dword_1B0389000, v22, v24, "[%.*hhx] Did receive credentials %u.", v25, 0x11u);
      MEMORY[0x1B272C230](v25, -1, -1);
    }

    else
    {
    }

    sub_1B0C46F3C(v33, v15, v17, v19 & 1, *(v3 + v12));
    v34(v32);

    swift_beginAccess();
    sub_1B0C48650(v33, v15, v17);
    swift_endAccess();
    sub_1B0C497F8(v15, v17, v19);
  }

  else
  {
    sub_1B03903A8(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v26 = sub_1B0E43988();
    v27 = sub_1B0E439A8();
    (*(*(v27 - 8) + 8))(v9, v27);
    v28 = sub_1B0E458E8();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 68158208;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      *(v29 + 10) = *(v21 + *(v5 + 20));

      *(v29 + 11) = 1024;
      *(v29 + 13) = v31;
      _os_log_impl(&dword_1B0389000, v26, v28, "[%.*hhx] Did receive credentials %u for, but the request is unknown.", v29, 0x11u);
      MEMORY[0x1B272C230](v29, -1, -1);

      return;
    }
  }
}

uint64_t sub_1B0C46AB0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v30 = *a1;
  v31 = v4;
  v5 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v5;
  v6 = type metadata accessor for Engine.Logger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
  sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v9, type metadata accessor for Engine.Logger);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0A1C2CC(a1, v29);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E439A8();
  (*(*(v12 - 8) + 8))(v9, v12);
  v13 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 68158208;
    *(v14 + 4) = 2;
    *(v14 + 8) = 256;
    *(v14 + 10) = *(v10 + *(v6 + 20));

    *(v14 + 11) = 2048;
    *(v14 + 13) = *(*(a1 + 56) + 16);
    sub_1B0A1C37C(a1);
    _os_log_impl(&dword_1B0389000, v11, v13, "[%.*hhx] Did receive push registration info (%ld mailbox(es)).", v14, 0x15u);
    MEMORY[0x1B272C230](v14, -1, -1);
  }

  else
  {
    sub_1B0A1C37C(a1);
  }

  v15 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_pendingPushRegistrationRequests;
  swift_beginAccess();
  v16 = *(v2 + v15);
  *(v2 + v15) = MEMORY[0x1E69E7CC8];
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  v20 = (v17 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v19; result = )
  {
    v23 = i;
LABEL_12:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(v16 + 56) + ((v23 << 10) | (16 * v24));
    v27 = *v25;
    v26 = *(v25 + 8);
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    v29[3] = v33;

    v27(v29);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
    }

    v19 = *(v16 + 64 + 8 * v23);
    ++i;
    if (v19)
    {
      i = v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C46DB0(uint64_t a1, int a2)
{
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = 1 << *(a1 + 32);
  if (result == v7)
  {
    return 0;
  }

  while ((result & 0x8000000000000000) == 0 && result < v7)
  {
    v8 = result >> 6;
    v9 = *(v4 + 8 * (result >> 6));
    if (((v9 >> result) & 1) == 0)
    {
      goto LABEL_19;
    }

    v10 = *(a1 + 36);
    if (*(*(a1 + 56) + 24 * result) == a2)
    {
      return result;
    }

    v11 = v9 & (-2 << (result & 0x3F));
    if (v11)
    {
      v7 = __clz(__rbit64(v11)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v12 = v8 << 6;
      v13 = v8 + 1;
      v14 = (a1 + 72 + 8 * v8);
      while (v13 < (v7 + 63) >> 6)
      {
        v16 = *v14++;
        v15 = v16;
        v12 += 64;
        ++v13;
        if (v16)
        {
          sub_1B0425168(result, v10, 0);
          v7 = __clz(__rbit64(v15)) + v12;
          goto LABEL_5;
        }
      }

      sub_1B0425168(result, v10, 0);
    }

LABEL_5:
    result = v7;
    v7 = 1 << *(a1 + 32);
    if (result == v7)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1B0C46F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 4 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v9 = *(v6 + 8);
    v8 = *(v6 + 16);
    *result = v7;
    *(result + 8) = v9;
    *(result + 16) = v8;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B0C46FC8()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = sub_1B0E44488();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_beginAccess();
    v10 = StateWithTasks.runningSyncRequests.getter();
    swift_endAccess();
    RunningSyncRequests.kinds.getter(v10, v13);

    v11 = sub_1B038E498(v13[0], *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_sourceApplicationKind));

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0C47144(uint64_t a1)
{
  v2 = v1;
  v4 = *tracingLog.unsafeMutableAddressor();
  v5 = sub_1B0E45D38();

  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 32);
      do
      {
        v8 = *v7++;
        v9 = v8;

        sub_1B0C473D8(&v9, v2);

        --v6;
      }

      while (v6);
    }
  }
}

void sub_1B0C471DC(unint64_t a1)
{
  v2 = v1;
  v4 = *tracingLog.unsafeMutableAddressor();
  v5 = sub_1B0E45D38();

  if ((v5 & 1) != 0 && ((a1 >> 58) & 0x3C | (a1 >> 1) & 3) == 1)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    swift_bridgeObjectRetain_n();
    v12 = 0;
    if (v9)
    {
      while (1)
      {
        v13 = v12;
LABEL_11:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = *(*(v6 + 48) + ((v13 << 8) | (4 * v14)));
        sub_1B0C478A8(&v15, v2);
        if (!v9)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = *(v6 + 56 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }
  }
}

uint64_t sub_1B0C47344(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  result = sub_1B0C48468(0x100000000uLL, v5, v6, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return result;
}

uint64_t sub_1B0C473D8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B0E43868();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43828();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - v16;
  v18 = *a1;
  if (*a1 >> 62 == 1)
  {
    v19 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    v20 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (*(v19 + 24) == 1 && ((v20 >> 59) & 0x1E | (v20 >> 2) & 1) == 2)
    {
      v60 = result;
      v22 = v20 & 0xFFFFFFFFFFFFFFBLL;
      v23 = v5;
      v24 = *(v22 + 24);
      v55 = *(v22 + 16);
      v56 = v24;
      v25 = *(v22 + 32);
      v26 = ((v55 & 0xFFFFFF) << 35) | (*(*(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner) + 16) << 59);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0E43838();
      v27 = tracingSignposter.unsafeMutableAddressor();
      v59 = v23;
      (*(v23 + 16))(v8, v27, v4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v28 = sub_1B0E43858();
      v57 = sub_1B0E45AD8();

      if (sub_1B0E45D38())
      {
        v52 = v25;
        v54 = v28;
        v29 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v61 = v53;
        *v29 = 67109890;
        *(v29 + 4) = v55;
        v58 = v29;
        *(v29 + 8) = 2082;
        v30 = sub_1B0E462C8();
        v32 = sub_1B0399D64(v30, v31, &v61);

        v33 = v58;
        *(v58 + 10) = v32;
        *(v33 + 18) = 2048;
        if (v52)
        {
          v34 = *(v52 + 16);
        }

        else
        {
          v34 = 0;
        }

        v35 = v58;
        *(v58 + 20) = v34;
        v36 = v35;

        *(v36 + 28) = 2082;
        swift_beginAccess();
        LODWORD(v36) = StateWithTasks.environment.getter();
        v38 = v37;
        v56 = v39;
        swift_endAccess();
        v40 = Environment.description.getter(v36 & 0x101FF, v38, v56);
        v42 = sub_1B0399D64(v40, v41, &v61);

        v43 = v58;
        *(v58 + 30) = v42;
        v44 = sub_1B0E43818();
        v45 = v54;
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v54, v57, v44, "SyncRequest", "Begin syncRequestId: #%u, kind: %{public}s, mailboxes: %ld, %{public}s", v43, 0x26u);
        v46 = v53;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v46, -1, -1);
        MEMORY[0x1B272C230](v43, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v47 = v60;
      (*(v10 + 16))(v14, v17, v60);
      v48 = sub_1B0E43968();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      sub_1B0E43958();

      (*(v59 + 8))(v8, v4);
      return (*(v10 + 8))(v17, v47);
    }
  }

  return result;
}

uint64_t sub_1B0C478A8(int *a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_1B0E43878();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43868();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0E43828();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v22 = *(*(v44 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner) + 16);
  v39 = *a1;
  sub_1B0E43838();
  v23 = tracingSignposter.unsafeMutableAddressor();
  v43 = v7;
  v44 = v6;
  (*(v7 + 16))(v10, v23, v6);
  (*(v12 + 16))(v19, v21, v11);
  v24 = sub_1B0E43968();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1B0E43958();
  v27 = sub_1B0E43858();
  sub_1B0E43948();
  v28 = sub_1B0E45AC8();
  if (sub_1B0E45D38())
  {
    v38 = v28;

    v29 = v42;
    sub_1B0E43978();

    v30 = v40;
    v31 = v29;
    v32 = v41;
    if ((*(v40 + 88))(v31, v41) == *MEMORY[0x1E69E93E8])
    {
      v33 = 0;
      v42 = "[Error] Interval already ended";
    }

    else
    {
      (*(v30 + 8))(v42, v32);
      v42 = "End syncRequestId: #%u";
      v33 = 1;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    *(v34 + 1) = v33;
    *(v34 + 2) = 1024;
    *(v34 + 4) = v39;
    v35 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v27, v38, v35, "SyncRequest", v42, v34, 8u);
    MEMORY[0x1B272C230](v34, -1, -1);
  }

  v36 = *(v12 + 8);
  v36(v16, v11);
  (*(v43 + 8))(v10, v44);
  return (v36)(v21, v11);
}

uint64_t Engine.Logger.l.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E439A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B0C47D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B0C47DC4()
{
  result = type metadata accessor for Engine.Logger(319);
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for StateWithTasks();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ExternalState();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1B0C47F88(unint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = v3();
  sub_1B0C471DC(a1);
  return v5;
}

uint64_t sub_1B0C47FD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B0C48168(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 4 * v6);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 4 * v3);
        v15 = (v13 + 4 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B0C48308(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B03A2724(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B0C4A71C(v16, a4 & 1);
      v20 = *v5;
      result = sub_1B03A2724(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B0C4B21C();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 4 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_1B0C48468(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1B03B8A9C(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      sub_1B0B8D4FC();
      result = v23;
      goto LABEL_8;
    }

    sub_1B0B2F9F0(v20, a6 & 1);
    v24 = *v7;
    result = sub_1B03B8A9C(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_14:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * result;
    *v27 = a1;
    *(v27 + 4) = BYTE4(a1) & 1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3 & 1;
  }

  else
  {
    sub_1B0C485EC(result, a4, a5, a1 | ((HIDWORD(a1) & 1) << 32), a2, a3 & 1, v26);

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0C485EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 4) = BYTE4(a4) & 1;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1B0C48650(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_1B0C4B380();
    *v4 = v10;
  }

  if (a2 < 0 || 1 << *(v10 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v10 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 36) == a3)
  {
    v11 = *(*(v10 + 48) + 4 * a2);
    v12 = *(v10 + 56) + 24 * a2;
    *a1 = *v12;
    *(a1 + 8) = *(v12 + 8);
    sub_1B0C48168(a2, v10);
    *v4 = v10;
    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B0C48730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (**a6)(uint64_t a1), uint64_t a7)
{
  v120 = a6;
  v121 = a1;
  v125 = a2;
  v126 = a3;
  v117 = sub_1B0E44238();
  v116 = *(v117 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1B0E44288();
  v113 = *(v114 - 8);
  v12 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1B0E44208();
  v127 = *(v123 - 8);
  v14 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v124 = (&v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v122 = (&v108 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v108 - v20;
  v22 = sub_1B0E439A8();
  v23 = *(v22 - 8);
  v24 = v23;
  v128 = v22;
  v129 = v23;
  v25 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v108 - v29;
  v111 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v110 = *(v24 + 56);
  v110(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger, 1, 1, v28);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections) = MEMORY[0x1E69E7CC0];
  v32 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextConnectionID) = 0;
  v33 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffLoggingRateLimit;
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v34 + 16) = 2000000000;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer) = 0;
  v35 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
  v36 = type metadata accessor for ConnectionStatus.Error(0);
  (*(*(v36 - 8) + 56))(a7 + v35, 1, 1, v36);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionStateDidChange) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents) = 0;
  v37 = (a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);
  *v37 = sub_1B0C3CB30(v31);
  v37[1] = 0x4014000000000000;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer) = 0;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID) = 1;
  v38 = a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  v39 = static MonotonicTime.now()();
  *v38 = 0;
  *(v38 + 8) = v39;
  v40 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastLogAllConnectionStates;
  *(a7 + v40) = static MonotonicTime.now()();
  v41 = a5;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue) = a5;
  v42 = (a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName);
  v44 = v125;
  v43 = v126;
  *v42 = v121;
  v42[1] = v44;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits) = v43;
  v118 = a4;
  sub_1B03903A8(a4, a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, type metadata accessor for ConnectionConfiguration);
  v45 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner;
  v46 = v120;
  v47 = *(v120 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner);
  v109 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_tracingIDOwner;
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID) = *(v47 + 16);
  *(v32 + 8) = &off_1F2721698;
  swift_unknownObjectWeakAssign();
  v48 = v41;

  sub_1B0E43998();
  v49 = v128;
  v50 = *(v129 + 16);
  v50(v21, v30, v128);
  (v110)(v21, 0, 1, v49);
  v51 = v111;
  swift_beginAccess();
  sub_1B0C4994C(v21, a7 + v51);
  swift_endAccess();
  type metadata accessor for Timer();
  swift_allocObject();
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) = Timer.init(queue:)(v48);
  LOBYTE(v21) = (*(v46 + v45))[16];
  v52 = v119;
  v111 = v30;
  v50(v119, v30, v49);
  v53 = swift_allocObject();
  *(v53 + 24) = &off_1F2721698;
  swift_unknownObjectWeakInit();
  v54 = v48;

  v55 = type metadata accessor for DataTransferReportAccumulator();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  v59 = v58 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state;
  *v59 = 0;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  *(v58 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer) = 0;
  *(v58 + 16) = v54;
  *(v58 + 24) = v21;
  v50((v58 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_logger), v52, v49);
  v60 = (v58 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler);
  *v60 = sub_1B041AAC0;
  v60[1] = v53;
  v61 = v122;
  *v122 = 1;
  v63 = v127 + 104;
  v62 = *(v127 + 104);
  LODWORD(v126) = *MEMORY[0x1E69E7F48];
  v62(v61);
  v64 = v124;
  *v124 = 500;
  LODWORD(v121) = *MEMORY[0x1E69E7F38];
  v127 = v63;
  v110 = v62;
  v62(v64);
  v65 = swift_allocObject();
  swift_weakInit();
  v135 = sub_1B041AAB8;
  v136 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = sub_1B038C908;
  v134 = &block_descriptor_75;
  v66 = _Block_copy(&aBlock);
  v125 = type metadata accessor for RestartableTimer();
  swift_allocObject();
  v67 = v54;

  v68 = RestartableTimer.init(queue:repeating:leeway:closure:)(v67, v61, v64, v66);
  v69 = *(v129 + 8);
  v70 = v119;
  v71 = v120;
  v129 += 8;
  v119 = v69;
  (v69)(v70, v128);

  v72 = *(v58 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer);
  *(v58 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer) = v68;

  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator) = v58;
  aBlock = 0;
  v132 = 0xE000000000000000;
  sub_1B0E46298();

  aBlock = 0x697463656E6E6F43;
  v132 = 0xEF2D6C6F6F506E6FLL;
  LOBYTE(v130) = (*(v71 + v109))[16];
  sub_1B0BA1E94();
  v73 = sub_1B0E44E98();
  v75 = v74;
  if (sub_1B0E44CF8() <= 1)
  {
    MEMORY[0x1B2726E80](48, 0xE100000000000000);
  }

  type metadata accessor for StateCapture();
  MEMORY[0x1B2726E80](v73, v75);

  v76 = aBlock;
  v77 = v132;
  v78 = swift_allocObject();
  swift_weakInit();
  v79 = v67;

  v80 = StateCapture.__allocating_init(title:queue:capture:)(v76, v77, v79, sub_1B0C499BC, v78);
  v81 = *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture) = v80;

  v83 = v122;
  v82 = v123;
  *v122 = 2;
  v84 = v110;
  (v110)(v83, v126, v82);
  v85 = v124;
  *v124 = 100;
  (v84)(v85, v121, v82);
  v86 = swift_allocObject();
  swift_weakInit();
  v135 = sub_1B038C228;
  v136 = v86;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v120 = &v133;
  v133 = sub_1B038C908;
  v134 = &block_descriptor_82;
  v87 = _Block_copy(&aBlock);
  swift_allocObject();
  v88 = v79;

  v89 = RestartableTimer.init(queue:repeating:leeway:closure:)(v88, v83, v85, v87);

  v90 = *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer) = v89;

  *v83 = 2;
  (v84)(v83, v126, v82);
  *v85 = 100;
  (v84)(v85, v121, v82);
  v91 = swift_allocObject();
  swift_weakInit();
  v135 = sub_1B0C499C4;
  v136 = v91;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = sub_1B038C908;
  v134 = &block_descriptor_86;
  v92 = _Block_copy(&aBlock);
  swift_allocObject();
  v93 = v88;

  v94 = RestartableTimer.init(queue:repeating:leeway:closure:)(v93, v83, v85, v92);

  v95 = *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer) = v94;

  *v83 = 10;
  v96 = v126;
  (v84)(v83, v126, v82);
  *v85 = 1;
  (v84)(v85, v96, v82);
  v97 = swift_allocObject();
  swift_weakInit();
  v135 = sub_1B041A0E0;
  v136 = v97;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = sub_1B038C908;
  v134 = &block_descriptor_90_0;
  v98 = _Block_copy(&aBlock);
  swift_allocObject();
  v99 = v93;

  v100 = RestartableTimer.init(queue:repeating:leeway:closure:)(v99, v83, v85, v98);

  v101 = *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer);
  *(a7 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer) = v100;

  v102 = swift_allocObject();
  swift_weakInit();

  v135 = sub_1B0C499CC;
  v136 = v102;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = sub_1B038C908;
  v134 = &block_descriptor_94;
  v103 = _Block_copy(&aBlock);

  v104 = v112;
  sub_1B0E44258();
  v130 = MEMORY[0x1E69E7CC0];
  sub_1B039E4B4(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039E3F8(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
  v105 = v115;
  v106 = v117;
  sub_1B0E460A8();
  MEMORY[0x1B2727B00](0, v104, v105, v103);
  _Block_release(v103);

  sub_1B03C74B8(v118, type metadata accessor for ConnectionConfiguration);
  (*(v116 + 8))(v105, v106);
  (*(v113 + 8))(v104, v114);
  (v119)(v111, v128);

  return a7;
}

uint64_t sub_1B0C496F8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E44D28();

    return sub_1B0E44EE8();
  }

  return result;
}

uint64_t sub_1B0C49794(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return v2(v7);
}

uint64_t sub_1B0C497D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B0C497E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B0C497F8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B0425168(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B0C49810(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1B0C57EB4(a1, v2, ObjectType, a2);
}

uint64_t sub_1B0C498E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C4994C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B0C49A40()
{
  sub_1B0C49AC4();
  if (v0 <= 0x3F)
  {
    sub_1B0C49B1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0C49AC4()
{
  if (!qword_1EB6DC990)
  {
    type metadata accessor for Activity(255);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DC990);
    }
  }
}

void sub_1B0C49B1C()
{
  if (!qword_1EB6DADB8)
  {
    sub_1B0451F2C();
    v0 = sub_1B0E45588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DADB8);
    }
  }
}

char *sub_1B0C49BB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B20, &qword_1B0EDC470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B0C49CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B10, &qword_1B0EDC460);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1B0E46CB8();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B0C49FDC(uint64_t result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_1B0C49CF8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1B0C4A328();
      goto LABEL_47;
    }

    sub_1B0C4A468(v5 + 1);
  }

  v7 = 0x72657865646E69;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  result = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  v32 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = 0x6C69662D6B636162;
    v13 = 0x6369646F69726570;
    v14 = v8;
    do
    {
      v15 = *(*(v8 + 48) + a2);
      if (v15 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v16 = v12;
        }

        else
        {
          v16 = v7;
        }

        if (*(*(v8 + 48) + a2))
        {
          v17 = 0xE90000000000006CLL;
        }

        else
        {
          v17 = 0xE700000000000000;
        }
      }

      else if (v15 == 2)
      {
        v17 = 0xE800000000000000;
        v16 = 0x6574616E6F646572;
      }

      else
      {
        if (v15 == 3)
        {
          v16 = v13;
        }

        else
        {
          v16 = 1752397168;
        }

        if (v15 == 3)
        {
          v17 = 0xE800000000000000;
        }

        else
        {
          v17 = 0xE400000000000000;
        }
      }

      v18 = v13;
      if (v33 == 3)
      {
        v19 = v13;
      }

      else
      {
        v19 = 1752397168;
      }

      if (v33 == 3)
      {
        v20 = 0xE800000000000000;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      if (v33 == 2)
      {
        v19 = 0x6574616E6F646572;
        v20 = 0xE800000000000000;
      }

      v21 = v7;
      v22 = v12;
      if (!v33)
      {
        v12 = v7;
      }

      v23 = 0xE90000000000006CLL;
      if (!v33)
      {
        v23 = 0xE700000000000000;
      }

      v24 = v33 <= 1u ? v12 : v19;
      v25 = v33 <= 1u ? v23 : v20;
      if (v16 == v24 && v17 == v25)
      {
        goto LABEL_50;
      }

      v26 = sub_1B0E46A78();

      if (v26)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v11;
      v7 = v21;
      v12 = v22;
      v13 = v18;
      v8 = v14;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v33;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void *sub_1B0C4A328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B10, &qword_1B0EDC460);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1B0C4A468(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5B10, &qword_1B0EDC460);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1B0E46CB8();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B0C4A71C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A78, &qword_1B0EDBF48);
  result = sub_1B0E46698();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B0C4A9AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A80, &unk_1B0EDBF50);
  v37 = a2;
  result = sub_1B0E46698();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 16);
      v38 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v38;
      *(v17 + 16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B0C4AC60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A70, &qword_1B0EDBF40);
  result = sub_1B0E46698();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1B0C4AEE0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionStatus(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A68, &qword_1B0EDBF38);
  v44 = a2;
  result = sub_1B0E46698();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(v9 + 48) + 16 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1B03C7308(v31, v45);
      }

      else
      {
        sub_1B0C4B908(v31, v45);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      v32 = *(v12 + 40);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v29 | (v29 << 32));
      result = sub_1B0E46CB8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 16 * v20;
      *v21 = v28;
      *(v21 + 8) = v29;
      result = sub_1B03C7308(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_1B0C4B21C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A78, &qword_1B0EDBF48);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_1B0C4B380()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A80, &unk_1B0EDBF50);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v21 = *(v18 + 8);
        v20 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v21;
        *(v22 + 16) = v20;
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

void *sub_1B0C4B4F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A70, &qword_1B0EDBF40);
  v2 = *v0;
  v3 = sub_1B0E46688();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1B0C4B640()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A68, &qword_1B0EDBF38);
  v5 = *v0;
  v6 = sub_1B0E46688();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = *(v5 + 48) + 16 * v21;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1B0C4B908(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = *(v33 + 48) + v22;
        *v29 = v24;
        *(v29 + 8) = v25;
        sub_1B03C7308(v26, *(v28 + 56) + v27);
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B0C4B878(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1B03CDA0C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B0C4B908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (**static Engine.makeEngineAndPersistence<A>(configuration:windowOfInterestSizes:environment:makePersistence:)(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, const char *a6, int a7, uint64_t (*a8)(uint64_t a1), uint64_t (*a9)(void, uint64_t (*)(uint64_t a1, char a2), uint64_t), uint64_t a10, uint64_t a11, uint64_t a12))(uint64_t a1)
{
  v43 = a2;
  v44 = a8;
  v49 = a7;
  v47 = a3;
  v48 = a6;
  v45 = a4;
  v46 = a5;
  v40 = a11;
  v41 = a12;
  v38 = a9;
  v39 = a10;
  v13 = type metadata accessor for Configuration();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v37 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1B0E45BE8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1B0E459C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0A5E6BC();
  v23 = *a1;
  v24 = a1[1];
  v50 = 0xD00000000000001BLL;
  v51 = 0x80000001B0F2D940;
  MEMORY[0x1B2726E80](v23, v24);
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8098], v18);
  v50 = MEMORY[0x1E69E7CC0];
  sub_1B0A5F820();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3B90, &unk_1B0EDC490);
  sub_1B0A5F8A0();
  sub_1B0E460A8();
  v25 = sub_1B0E45BF8();
  type metadata accessor for EngineBox();
  v26 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for EngineTracingIDOwner();
  swift_allocObject();

  v27 = EngineTracingIDOwner.init()();
  v28 = v38(*(v27 + 16), sub_1B0C4BD94, v26);
  v29 = swift_allocObject();
  v30 = v41;
  v29[2] = v40;
  v29[3] = v30;
  v29[4] = v28;
  v31 = v37;
  sub_1B06D9B1C(a1, v37);
  v32 = *(v42 + 48);
  v33 = *(v42 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v34 = v43;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35 = sub_1B0C42780(v27, v31, v34, v47, v45 & 1, v46 & 0x101FF, v48, v49, v44, v25, sub_1B0C4BDA0, v29);

  swift_weakAssign();

  return v35;
}

uint64_t sub_1B0C4BD24(uint64_t a1, char a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    Engine.persistenceDidSend(_:)(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_1B0C4BDA0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1B0C4BDD8()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C4BE10()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1B0E44488();
  result = (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown))
  {
    return result;
  }

  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) = 1;
  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture))
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture);

  StateCapture.tearDown()();

  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

  RestartableTimer.stop()();

  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v13 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);

  RestartableTimer.stop()();

  v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v1 = *(v1 + v14);
  if (v1 >> 62)
  {
LABEL_22:
    v15 = sub_1B0E46138();
    goto LABEL_8;
  }

  v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v15)
  {
    v16 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1B2728410](v16, v1);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_17:
          __break(1u);
        }
      }

      else
      {
        if (v16 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v17 = *(v1 + 8 * v16 + 32);

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_17;
        }
      }

      (*(*v17 + 536))();

      ++v16;
    }

    while (v18 != v15);
  }
}

uint64_t sub_1B0C4C0B4(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  v10 = sub_1B0E44468();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  v17 = sub_1B0E44488();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v14, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v4 + v20, v9, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v21 = sub_1B0E439A8();
  v3 = *(v21 - 8);
  result = (*(v3 + 48))(v9, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_retain_n();

    v17 = sub_1B0E43988();
    v2 = sub_1B0E458C8();
    v23 = &qword_1EB6DC000;
    if (!os_log_type_enabled(v17, v2))
    {

      goto LABEL_8;
    }

    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v18 = 68158722;
    *(v18 + 4) = 2;
    *(v18 + 8) = 256;
    *(v18 + 10) = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v18 + 11) = 2048;
    v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v25 = *(v4 + v24);
    if (v25 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B0E46138())
    {

      *(v18 + 13) = i;

      *(v18 + 21) = 2082;
      v27 = ConnectionID.debugDescription.getter(*(a1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v29 = sub_1B0399D64(v27, v28, &v41);

      *(v18 + 23) = v29;
      *(v18 + 31) = 2048;
      v31 = (*(*a1 + 432))(v30);

      *(v18 + 33) = v31;

      _os_log_impl(&dword_1B0389000, v17, v2, "[%.*hhx] Received authenticated connection with better path. Cancelling all (%ld) existing connection and switching to the new connection %{public}s [C%llu].", v18, 0x29u);
      v32 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B272C230](v32, -1, -1);
      MEMORY[0x1B272C230](v18, -1, -1);

      v23 = &qword_1EB6DC000;
LABEL_8:
      v33 = *(v3 + 8);
      v3 += 8;
      v33(v9, v21);
      v18 = v23[101];
      swift_beginAccess();
      v9 = *(v4 + v18);
      if (v9 >> 62)
      {
LABEL_22:
        v21 = sub_1B0E46138();
        if (!v21)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_17;
        }
      }

      if (v21 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_25:
      ;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    for (j = 0; j != v21; ++j)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1B2728410](j, v9);
      }

      else
      {
        v35 = *(v9 + 8 * j + 32);
      }

      (*(*v35 + 536))();
    }

LABEL_17:
    swift_beginAccess();

    MEMORY[0x1B27272B0](v36);
    if (*((*(v4 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = *((*(v4 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B0E45218();
    }

    sub_1B0E45298();
    swift_endAccess();
    result = (*(*a1 + 624))(v4, &off_1F2721AA0);
    if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
    {
      v37 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

      RestartableTimer.start()();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C4C6B4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v47[-v10];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v47[-v13];
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47[-v16];
  v18 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) <= 1u)
  {
    if (!*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState))
    {
      return result;
    }

    v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v2 + v19, v17, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v20 = sub_1B0E439A8();
    v21 = *(v20 - 8);
    result = (*(v21 + 48))(v17, 1, v20);
    if (result == 1)
    {
      goto LABEL_29;
    }

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = sub_1B0E43988();
    v23 = sub_1B0E45908();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 68157952;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      *(v24 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx] Credentials were invalid. Credentials did change.", v24, 0xBu);
      MEMORY[0x1B272C230](v24, -1, -1);
    }

    else
    {
    }

    v36 = *(v21 + 8);
    v37 = v17;
    goto LABEL_19;
  }

  if (*(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 2)
  {
    v31 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v2 + v31, v11, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v20 = sub_1B0E439A8();
    v32 = *(v20 - 8);
    result = (*(v32 + 48))(v11, 1, v20);
    if (result == 1)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v33 = sub_1B0E43988();
    v34 = sub_1B0E45908();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 68157952;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      *(v35 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx] Credentials state was unknown. Credentials did change.", v35, 0xBu);
      MEMORY[0x1B272C230](v35, -1, -1);
    }

    else
    {
    }

    v36 = *(v32 + 8);
    v37 = v11;
LABEL_19:
    v36(v37, v20);
    goto LABEL_20;
  }

  v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v2 + v25, v14, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v26 = sub_1B0E439A8();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v14, 1, v26);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v28 = sub_1B0E43988();
  v29 = sub_1B0E45908();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 68157952;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    *(v30 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&dword_1B0389000, v28, v29, "[%.*hhx] Credentials were maybe invalid. Credentials did change.", v30, 0xBu);
    MEMORY[0x1B272C230](v30, -1, -1);
  }

  else
  {
  }

  (*(v27 + 8))(v14, v26);
LABEL_20:
  v38 = static MonotonicTime.now()();
  v39 = *v18;
  *v18 = 0;
  *(v18 + 8) = v38;
  sub_1B0C4D17C(v39);
  if ((a1 & 1) == 0)
  {
    v46 = v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
    swift_beginAccess();
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    sub_1B0C50C9C();
    return sub_1B041F1A8();
  }

  v40 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v2 + v40, v8, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v41 = sub_1B0E439A8();
  v42 = *(v41 - 8);
  result = (*(v42 + 48))(v8, 1, v41);
  if (result == 1)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v43 = sub_1B0E43988();
  v44 = sub_1B0E45908();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 68157952;
    *(v45 + 4) = 2;
    *(v45 + 8) = 256;
    *(v45 + 10) = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&dword_1B0389000, v43, v44, "[%.*hhx] Not resetting backoff timer.", v45, 0xBu);
    MEMORY[0x1B272C230](v45, -1, -1);
  }

  else
  {
  }

  return (*(v42 + 8))(v8, v41);
}

uint64_t sub_1B0C4CDE8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1B0E46138();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2728410](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1B0C4CF04(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits;
  v4 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);
  *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits) = a1;

  v5 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v7 < 0)
  {
    v14 = *(v2 + v5);
  }

  result = sub_1B0E46138();
  v8 = result;
  if (result)
  {
LABEL_3:
    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B2728410](v9, v7);
        }

        else
        {
          v10 = *(v7 + 8 * v9 + 32);
        }

        ++v9;
        v11 = *(v2 + v3);
        v12 = *(*v10 + 336);
        v13 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v12(v13);
      }

      while (v8 != v9);
    }
  }

  return result;
}

uint64_t sub_1B0C4D04C(_BOOL8 a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = MonotonicTime.rateLimit(now:seconds:)(a1, 1.0);
  result = swift_endAccess();
  if (v4)
  {
    v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    result = swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7 >> 62)
    {
      result = sub_1B0E46138();
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B2728410](i, v7);
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        CommandConnection.logState()();
      }
    }
  }

  return result;
}

uint64_t sub_1B0C4D17C(unsigned __int8 a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v25 - v6;
  v8 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState;
  v9 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
  if (v9 == v2)
  {
    return result;
  }

  if (v9 == 1)
  {
    if (v2 != 2)
    {
      goto LABEL_10;
    }

    v9 = 1;
LABEL_8:
    if (v9 == v2)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v9 != 2)
  {
    goto LABEL_8;
  }

  if (v2 == 1)
  {
    v9 = 2;
LABEL_13:
    v10 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v1 + v10, v7, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v11 = sub_1B0E439A8();
    v12 = *(v11 - 8);
    result = (*(v12 + 48))(v7, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v13 = v1;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v14 = sub_1B0E43988();
      v15 = sub_1B0E45908();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25 = v17;
        *v16 = 68158210;
        *(v16 + 4) = 2;
        *(v16 + 8) = 256;
        *(v16 + 10) = *(v13 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        v18 = 0xE400000000000000;
        *(v16 + 11) = 2082;
        v19 = 1685024615;
        v20 = 0xED000064696C6176;
        v21 = 0x6E6920656279616DLL;
        if (v9 != 2)
        {
          v21 = 0x6E776F6E6B6E75;
          v20 = 0xE700000000000000;
        }

        if (v9)
        {
          v19 = 0x64696C61766E69;
          v18 = 0xE700000000000000;
        }

        if (v9 <= 1)
        {
          v22 = v19;
        }

        else
        {
          v22 = v21;
        }

        if (v9 <= 1)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        v24 = sub_1B0399D64(v22, v23, &v25);

        *(v16 + 13) = v24;
        _os_log_impl(&dword_1B0389000, v14, v15, "[%.*hhx] Credentials state -> %{public}s", v16, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1B272C230](v17, -1, -1);
        MEMORY[0x1B272C230](v16, -1, -1);
      }

      else
      {
      }

      return (*(v12 + 8))(v7, v11);
    }

    return result;
  }

LABEL_10:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1B0C45C68();
    result = swift_unknownObjectRelease();
  }

  v9 = *(v1 + v8);
  if (v9 != v2)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1B0C4D4DC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    sub_1B0C4D594(v7);

    v3 = sub_1B0C5A240();
    result = swift_allocObject();
    v4 = v7[3];
    *(result + 48) = v7[2];
    *(result + 64) = v4;
    *(result + 80) = v8;
    v5 = v7[1];
    *(result + 16) = v7[0];
    *(result + 32) = v5;
    v6 = &type metadata for ConnectionPool.CapturedValue;
  }

  else
  {
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v6;
  a1[4] = v3;
  return result;
}

uint64_t sub_1B0C4D594@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v61 - v12;
  v13 = sub_1B0E44468();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v18 = v19;
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v13, v16);
  v20 = v19;
  v21 = sub_1B0E44488();
  v23 = *(v14 + 8);
  v22 = v14 + 8;
  v23(v18, v13);
  if (v21)
  {
    v69 = v5;
    v70 = v4;
    v22 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName);
    v18 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName + 8);
    *&v79[0] = 0;
    *(&v79[0] + 1) = 0xE000000000000000;
    v78 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
    sub_1B0BA1E94();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = sub_1B0E44E98();
    v26 = v25;
    if (sub_1B0E44CF8() <= 1)
    {
      MEMORY[0x1B2726E80](48, 0xE100000000000000);
    }

    MEMORY[0x1B2726E80](v24, v26);

    v4 = *(&v79[0] + 1);
    v19 = *&v79[0];
    v27 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v71 = v2;
    v5 = *(v2 + v27);
    if (!(v5 >> 62))
    {
      v28 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v28 = sub_1B0E46138();
LABEL_6:
  v29 = MEMORY[0x1E69E7CC0];
  v66 = v22;
  v67 = v4;
  v68 = v19;
  if (v28)
  {
    v63 = v18;
    v77 = MEMORY[0x1E69E7CC0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B0C57C18(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      __break(1u);
      return result;
    }

    v62 = a1;
    v31 = 0;
    v29 = v77;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B2728410](v31, v5);
      }

      else
      {
        v32 = *(v5 + 8 * v31 + 32);
      }

      CommandConnection.capturedValue.getter(v79);

      v77 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B0C57C18((v33 > 1), v34 + 1, 1);
        v29 = v77;
      }

      ++v31;
      *(v29 + 16) = v34 + 1;
      v35 = v29 + 216 * v34;
      v36 = v79[1];
      *(v35 + 32) = v79[0];
      *(v35 + 48) = v36;
      v37 = v79[2];
      v38 = v79[3];
      v39 = v79[5];
      *(v35 + 96) = v79[4];
      *(v35 + 112) = v39;
      *(v35 + 64) = v37;
      *(v35 + 80) = v38;
      v40 = v79[6];
      v41 = v79[7];
      v42 = v79[9];
      *(v35 + 160) = v79[8];
      *(v35 + 176) = v42;
      *(v35 + 128) = v40;
      *(v35 + 144) = v41;
      v43 = v79[10];
      v44 = v79[11];
      v45 = v79[12];
      *(v35 + 240) = v80;
      *(v35 + 208) = v44;
      *(v35 + 224) = v45;
      *(v35 + 192) = v43;
    }

    while (v28 != v31);

    a1 = v62;
    v18 = v63;
  }

  v46 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
  v47 = v71;
  swift_beginAccess();
  v48 = v72;
  sub_1B03B5C80(v47 + v46, v72, &qword_1EB6E35A0, &qword_1B0E99850);
  v49 = 0;
  v50 = 0;
  if ((*(v69 + 48))(v48, 1, v70) != 1)
  {
    v51 = v48;
    v52 = v65;
    sub_1B038CBB4(v51, v65, type metadata accessor for ConnectionStatus.Error);
    sub_1B03C623C(v52, v64, type metadata accessor for ConnectionStatus.Error);
    v49 = sub_1B0E44B88();
    v50 = v53;
    sub_1B038C824(v52, type metadata accessor for ConnectionStatus.Error);
  }

  v75 = 0;
  v76 = 0xE000000000000000;
  v54 = *(v47 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState);
  v73 = 0;
  v74 = 0xE000000000000000;
  if (v54 > 1)
  {
    v55 = v66;
    if (v54 == 2)
    {
      v56 = 0xED000064696C6176;
      v57 = 0x6E6920656279616DLL;
    }

    else
    {
      v56 = 0xE700000000000000;
      v57 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v55 = v66;
    if (v54)
    {
      v56 = 0xE700000000000000;
      v57 = 0x64696C61766E69;
    }

    else
    {
      v56 = 0xE400000000000000;
      v57 = 1685024615;
    }
  }

  MEMORY[0x1B2726E80](v57, v56);

  MEMORY[0x1B2726E80](v73, v74);

  v58 = v75;
  v59 = v76;
  *a1 = v55;
  a1[1] = v18;
  v60 = v67;
  a1[2] = v68;
  a1[3] = v60;
  a1[4] = v29;
  a1[5] = v49;
  a1[6] = v50;
  a1[7] = v58;
  a1[8] = v59;
  return result;
}

uint64_t sub_1B0C4DB9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v1 + v6, v5, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v7 = sub_1B0E439A8();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v10 = sub_1B0E43988();
    v11 = sub_1B0E45908();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68157952;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      *(v12 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx] Timer fired: checking for idle connections to cancel.", v12, 0xBu);
      MEMORY[0x1B272C230](v12, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v5, v7);
    v13 = static MonotonicTime.now()();
    return sub_1B0C51334(v13);
  }

  return result;
}

uint64_t sub_1B0C4DDA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

    if (v1)
    {
      RestartableTimer.start()();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0C4DE20()
{
  if (*(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_didTearDown) == 1)
  {
    sub_1B0398EFC(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger, &qword_1EB6E5AF8, &unk_1B0EDC3E0);

    v1 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logName + 8);

    sub_1B038C824(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_configuration, type metadata accessor for ConnectionConfiguration);
    v2 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections);

    sub_1B0BE2890(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engine);
    v3 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer);

    v4 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

    sub_1B0398EFC(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError, &qword_1EB6E35A0, &qword_1B0E99850);
    v5 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_stateCapture);

    v6 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents);

    v7 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);

    v8 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);

    v9 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer);

    v10 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_dataTransferReportAccumulator);

    v11 = *(v0 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connectionTraits);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C4DF88()
{
  sub_1B0C4DE20();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConnectionPool()
{
  result = qword_1EB6DC288;
  if (!qword_1EB6DC288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0C4E034()
{
  sub_1B0C4E230(319, &qword_1EB6DC1A8, MEMORY[0x1E69E9420]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ConnectionConfiguration();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B0C4E230(319, &qword_1EB6DCAC8, type metadata accessor for ConnectionStatus.Error);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B0C4E230(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B0E45D88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B0C4E284(uint64_t a1, NSObject *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = type metadata accessor for ClientCommand(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v71 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - v22;
  v24 = sub_1B0C4F800(a1, a2, a3, a4);
  if (v25)
  {
    return 0;
  }

  v26 = v24;
  v27 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v28 = *(v5 + v27);
  v74 = v27;
  if ((v28 & 0xC000000000000001) == 0)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v28 + 8 * v26 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_30;
  }

  v29 = MEMORY[0x1B2728410](v26);
LABEL_6:
  swift_endAccess();
  v75 = (*(*v29 + 560))(a1);
  v31 = v30;

  if (v31)
  {
    v32 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v5 + v32, v21, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v33 = sub_1B0E439A8();
    v23 = *(v33 - 8);
    result = (*(v23 + 6))(v21, 1, v33);
    if (result == 1)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B03C623C(a1, v14, type metadata accessor for ClientCommand);

    a2 = sub_1B0E43988();
    v35 = sub_1B0E458C8();

    if (!os_log_type_enabled(a2, v35))
    {

      sub_1B038C824(v14, type metadata accessor for ClientCommand);
      goto LABEL_22;
    }

    LODWORD(v73) = v35;
    v75 = v33;
    v16 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76 = v72;
    *v16 = 68158466;
    *(v16 + 1) = 2;
    *(v16 + 4) = 256;
    v36 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    v16[10] = v36;

    *(v16 + 11) = 2082;
    v37 = ClientCommand.logIdentifier.getter();
    v39 = v38;
    sub_1B038C824(v14, type metadata accessor for ClientCommand);
    v40 = sub_1B0399D64(v37, v39, &v76);

    *(v16 + 13) = v40;
    *(v16 + 21) = 2082;
    v41 = v74;
    result = swift_beginAccess();
    v42 = *(v5 + v41);
    if ((v42 & 0xC000000000000001) == 0)
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        if (v26 < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v43 = *(v42 + 8 * v26 + 32);

LABEL_13:
          swift_endAccess();
          v44 = *(v43 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

          v45 = ConnectionID.debugDescription.getter(v44);
          v47 = sub_1B0399D64(v45, v46, &v76);

          *(v16 + 23) = v47;
          _os_log_impl(&dword_1B0389000, a2, v73, "[%.*hhx] Failed to send command '%{public}s' on connection %{public}s", v16, 0x1Fu);
          v48 = v72;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v48, -1, -1);
          MEMORY[0x1B272C230](v16, -1, -1);

          v33 = v75;
LABEL_22:
          (*(v23 + 1))(v21, v33);
          return 0;
        }

        goto LABEL_34;
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_30:
    v43 = MEMORY[0x1B2728410](v26);
    goto LABEL_13;
  }

  v49 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v5 + v49, v23, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v50 = sub_1B0E439A8();
  v51 = *(v50 - 8);
  result = (*(v51 + 48))(v23, 1, v50);
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03C623C(a1, v16, type metadata accessor for ClientCommand);

  v52 = sub_1B0E43988();
  v53 = sub_1B0E458C8();

  if (os_log_type_enabled(v52, v53))
  {
    LODWORD(v72) = v53;
    v73 = v50;
    v54 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v76 = v71;
    *v54 = 68158722;
    *(v54 + 4) = 2;
    *(v54 + 8) = 256;
    v55 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v54 + 10) = v55;

    *(v54 + 11) = 2082;
    v56 = Tag.debugDescription.getter(v75 & 0xFFFFFFFF000000FFLL);
    v58 = sub_1B0399D64(v56, v57, &v76);

    *(v54 + 13) = v58;
    *(v54 + 21) = 2082;
    v59 = ClientCommand.logIdentifier.getter();
    v61 = v60;
    sub_1B038C824(v16, type metadata accessor for ClientCommand);
    v62 = sub_1B0399D64(v59, v61, &v76);

    *(v54 + 23) = v62;
    *(v54 + 31) = 2082;
    v63 = v74;
    result = swift_beginAccess();
    v64 = *(v5 + v63);
    if ((v64 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x1B2728410](v26);
      v50 = v73;
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      v50 = v73;
      if (v26 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v65 = *(v64 + 8 * v26 + 32);
    }

    swift_endAccess();
    v66 = *(v65 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    v67 = ConnectionID.debugDescription.getter(v66);
    v69 = sub_1B0399D64(v67, v68, &v76);

    *(v54 + 33) = v69;
    _os_log_impl(&dword_1B0389000, v52, v72, "[%.*hhx] Sent command '%{public}s %{public}s' on connection %{public}s", v54, 0x29u);
    v70 = v71;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v70, -1, -1);
    MEMORY[0x1B272C230](v54, -1, -1);
  }

  else
  {

    sub_1B038C824(v16, type metadata accessor for ClientCommand);
  }

  (*(v51 + 8))(v23, v50);
  return v75;
}

uint64_t sub_1B0C4EAFC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v47 - v7;
  v9 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v52 = v2;
  v10 = *(v2 + v9);
  if (v10 >> 62)
  {
    goto LABEL_44;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    return 0;
  }

  while (2)
  {
    v50 = v9;
    v51 = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B2728410](v8, v10);
      }

      else
      {
        if (v8 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v12 = *(v10 + 32 + 8 * v8);
      }

      v13 = (*(*v12 + 608))();
      if (!v13)
      {
        goto LABEL_22;
      }

      if (v14 != a2)
      {
        v9 = a2;

        goto LABEL_23;
      }

      v15 = *(v13 + 16);
      if (v15 == *(a1 + 16))
      {
        break;
      }

LABEL_21:

LABEL_22:

LABEL_23:
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_42;
      }

      if (v8 == v11)
      {

        return 0;
      }
    }

    if (v15)
    {
      v16 = v13 == a1;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = 32;
      while (v15)
      {
        if (*(v13 + v17) != *(a1 + v17))
        {
          goto LABEL_21;
        }

        ++v17;
        if (!--v15)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v11 = sub_1B0E46138();
      if (!v11)
      {
        return 0;
      }

      continue;
    }

    break;
  }

LABEL_27:

  v20 = v50;
  v21 = v52;
  swift_beginAccess();
  v22 = *(v21 + v20);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1B2728410](v8);
    v23 = v51;
LABEL_30:
    swift_endAccess();
    LODWORD(v51) = *(v24 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);

    v25 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v21 + v25, v23, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v26 = sub_1B0E439A8();
    v27 = *(v26 - 8);
    result = (*(v27 + 48))(v23, 1, v26);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28 = sub_1B0E43988();
      v29 = sub_1B0E45908();

      v49 = v29;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v48 = v26;
        v31 = a2;
        v32 = v30;
        v47 = swift_slowAlloc();
        v53[0] = v47;
        *v32 = 68158723;
        *(v32 + 4) = 2;
        *(v32 + 8) = 256;
        *(v32 + 10) = *(v21 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v32 + 11) = 2082;
        v33 = ConnectionID.debugDescription.getter(v51);
        v35 = sub_1B0399D64(v33, v34, v53);
        v21 = v52;

        *(v32 + 13) = v35;
        *(v32 + 21) = 2160;
        *(v32 + 23) = 0x786F626C69616DLL;
        *(v32 + 31) = 2085;
        v53[1] = a1;
        v54 = v31;
        v26 = v48;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v36 = sub_1B0E44BA8();
        v38 = sub_1B0399D64(v36, v37, v53);

        *(v32 + 33) = v38;
        _os_log_impl(&dword_1B0389000, v28, v49, "[%.*hhx] Closing connection %{public}s for mailbox '%{sensitive,mask.mailbox}s'.", v32, 0x29u);
        v39 = v47;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v39, -1, -1);
        MEMORY[0x1B272C230](v32, -1, -1);
      }

      else
      {
      }

      (*(v27 + 8))(v23, v26);
      result = swift_beginAccess();
      v40 = *(v21 + v20);
      if ((v40 & 0xC000000000000001) != 0)
      {
        goto LABEL_48;
      }

      if (v8 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v41 = *(v40 + 8 * v8 + 32);

        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    v23 = v51;
    if (v8 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v22 + 8 * v8 + 32);

      goto LABEL_30;
    }

    __break(1u);
LABEL_48:
    v41 = MEMORY[0x1B2728410](v8);
LABEL_37:
    v42 = swift_endAccess();
    v43 = (*(*v41 + 576))(v42);

    result = swift_beginAccess();
    v44 = *(v21 + v20);
    if ((v44 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x1B2728410](v8);
      goto LABEL_40;
    }

    if (v8 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v44 + 8 * v8 + 32);

LABEL_40:
      v46 = swift_endAccess();
      (*(*v45 + 536))(v46);

      return v43;
    }

LABEL_51:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C4F144(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - v8;
  v10 = sub_1B0E44468();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = sub_1B0E44488();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (!*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer))
  {
    __break(1u);
    goto LABEL_41;
  }

  v17 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_collectDataTransferTimer);

  RestartableTimer.start()();

  v18 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  LOBYTE(v18) = *(v18 + 17);
  result = static MonotonicTime.now()();
  if ((v18 & 1) != 0 || !(v20 & 1 | (result >= v19)))
  {
    v39 = v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffLoggingRateLimit;
    swift_beginAccess();
    v40 = static MonotonicTime.now()();
    if (*(v39 + 8))
    {
      goto LABEL_20;
    }

    v41 = *v39;
    v42 = __OFSUB__(v40, *v39);
    v43 = v40 - *v39;
    if (v40 >= *v39)
    {
LABEL_18:
      if (!v42)
      {
        goto LABEL_19;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!__OFSUB__(v41, v40))
    {
      v42 = __OFSUB__(0, v41 - v40);
      v43 = v40 - v41;
      if (!v42)
      {
LABEL_19:
        if (v43 < *(v39 + 16))
        {
          return swift_endAccess();
        }

LABEL_20:
        *v39 = v40;
        *(v39 + 8) = 0;
        sub_1B0C504B8(v4);
        return swift_endAccess();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 1)
  {
    result = sub_1B03C7FA8();
    if ((result & 1) == 0)
    {
      sub_1B0C4FB40();
      v3 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v22 = *(v4 + v3);
      if (!(v22 >> 62))
      {
        result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= a2)
        {
          return result;
        }

        goto LABEL_9;
      }

LABEL_34:
      result = sub_1B0E46138();
      if (result >= a2)
      {
        return result;
      }

LABEL_9:
      v23 = sub_1B041FB64(v4, v4);
      v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_1B03B5C80(v4 + v24, v9, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v25 = sub_1B0E439A8();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v9, 1, v25) != 1)
      {
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_retain_n();
        v27 = sub_1B0E43988();
        v28 = sub_1B0E45908();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v53 = v25;
          v30 = v29;
          v52 = swift_slowAlloc();
          v54 = v52;
          *v30 = 68158466;
          *(v30 + 4) = 2;
          *(v30 + 8) = 256;
          v31 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v30 + 10) = v31;

          *(v30 + 11) = 2082;
          v32 = ConnectionID.debugDescription.getter(*(v23 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
          v34 = sub_1B0399D64(v32, v33, &v54);

          *(v30 + 13) = v34;
          *(v30 + 21) = 2048;
          v36 = (*(*v23 + 432))(v35);

          *(v30 + 23) = v36;

          _os_log_impl(&dword_1B0389000, v27, v28, "[%.*hhx] Did create connection %{public}s [C%llu]", v30, 0x1Fu);
          v37 = v52;
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x1B272C230](v37, -1, -1);
          v38 = v30;
          v25 = v53;
          MEMORY[0x1B272C230](v38, -1, -1);
        }

        else
        {
        }

        (*(v26 + 8))(v9, v25);
        swift_beginAccess();

        MEMORY[0x1B27272B0](v44);
        if (*((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B0E45218();
        }

        sub_1B0E45298();
        v45 = swift_endAccess();
        (*(*v23 + 528))(v45);
        if (*(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer))
        {
          v46 = *(v4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_checkForStallTimer);

          RestartableTimer.start()();

          v47 = *(v4 + v3);
          if (v47 >> 62)
          {
            if (v47 < 0)
            {
              v50 = *(v4 + v3);
            }

            if (sub_1B0E46138() == 1)
            {
              goto LABEL_29;
            }
          }

          else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
          {
LABEL_29:
            Strong = swift_unknownObjectWeakLoadStrong();

            if (Strong)
            {
              *(Strong + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_shouldLogForFirstConnection) = 1;
              return swift_unknownObjectRelease();
            }

            return result;
          }
        }

LABEL_42:
        __break(1u);
        result = swift_endAccess();
        __break(1u);
        return result;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t sub_1B0C4F800(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v32 = a2;
  v33 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v31 - v10;
  sub_1B0C4FB40();
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v5 + v12, v11, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v13 = sub_1B0E439A8();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v11, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31[3] = a4;
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v16 = sub_1B0E43988();
    v17 = sub_1B0E458C8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = a3;
      v19 = swift_slowAlloc();
      *v19 = 68158208;
      *(v19 + 4) = 2;
      *(v19 + 8) = 256;
      v20 = *(v5 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v19 + 10) = v20;

      *(v19 + 11) = 2048;
      v21 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
      swift_beginAccess();
      v22 = *(v5 + v21);
      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          v30 = *(v5 + v21);
        }

        v23 = sub_1B0E46138();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 13) = v23;

      _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx] Pool has %ld connections.", v19, 0x15u);
      MEMORY[0x1B272C230](v19, -1, -1);

      a3 = v18;
    }

    else
    {
    }

    (*(v14 + 8))(v11, v13);
    v24 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    v25 = swift_beginAccess();
    v26 = *(v5 + v24);
    MEMORY[0x1EEE9AC00](v25);
    *&v31[-4] = v33;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = sub_1B0C4CDE8(sub_1B0C5A024, &v31[-8], v26);
    v29 = v28;

    if (v29)
    {
      sub_1B0C4F144(v32, a3);
    }

    return v27;
  }

  return result;
}

uint64_t sub_1B0C4FB40()
{
  v23 = type metadata accessor for ConnectionState();
  v1 = *(*(v23 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v23);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v24 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
LABEL_23:
    v9 = sub_1B0E46138();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v9)
  {
    v20 = v7;
    v21 = v0;
    v10 = 0;
    v22 = v8 & 0xC000000000000001;
    v7 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v22)
      {
        v11 = MEMORY[0x1B2728410](v10, v8);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v17 = v24;
          v7 = v20;
          v0 = v21;
          goto LABEL_21;
        }
      }

      else
      {
        if (v10 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v11 = *(v8 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_18;
        }
      }

      v0 = v11;
      (*(*v11 + 304))();
      sub_1B038CBB4(v6, v4, type metadata accessor for ConnectionState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if (EnumCaseMultiPayload == 3)
      {

        sub_1B038C824(v4, type metadata accessor for ConnectionState);
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }
      }

LABEL_6:
      ++v10;
      if (v12 == v9)
      {
        goto LABEL_19;
      }
    }

    sub_1B038C824(v4, type metadata accessor for ConnectionState);
LABEL_15:
    v0 = &v24;
    sub_1B0E463A8();
    v14 = v8;
    v15 = v9;
    v16 = *(v24 + 16);
    sub_1B0E46428();
    v9 = v15;
    v8 = v14;
    sub_1B0E46438();
    sub_1B0E463C8();
    goto LABEL_6;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v18 = *(v0 + v7);
  *(v0 + v7) = v17;
}

uint64_t sub_1B0C4FDEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v13 = *(a2 + v12);
  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v14 = *(v13 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_20;
  }

  v14 = MEMORY[0x1B2728410](a1);
LABEL_5:
  swift_endAccess();
  v15 = (*(*v14 + 616))(a3, a4);

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  result = swift_beginAccess();
  v17 = *(a2 + v12);
  if ((v17 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v18 = *(v17 + 8 * a1 + 32);

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_20:
  v18 = MEMORY[0x1B2728410](a1);
LABEL_10:
  swift_endAccess();
  v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(a2 + v19, v11, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v20 = sub_1B0E439A8();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v11, 1, v20);
  if (result != 1)
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v22 = sub_1B0E43988();
    v23 = sub_1B0E458C8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v24 = 68158723;
      *(v24 + 4) = 2;
      *(v24 + 8) = 256;
      *(v24 + 10) = *(a2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v24 + 11) = 2160;
      *(v24 + 13) = 0x786F626C69616DLL;
      *(v24 + 21) = 2085;
      v34 = a3;
      v35 = a4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = sub_1B0E44BA8();
      v27 = sub_1B0399D64(v25, v26, &v36);

      *(v24 + 23) = v27;
      *(v24 + 31) = 2082;
      v28 = ConnectionID.debugDescription.getter(*(v18 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v30 = sub_1B0399D64(v28, v29, &v36);

      *(v24 + 33) = v30;
      _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx] Will select mailbox '%{sensitive,mask.mailbox}s' on connection %{public}s for new mailbox affinity.", v24, 0x29u);
      v31 = v33;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v31, -1, -1);
      MEMORY[0x1B272C230](v24, -1, -1);
    }

    else
    {
    }

    (*(v21 + 8))(v11, v20);
    return v18;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0C50218@<X0>(uint64_t a1@<X1>, char a2@<W2>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v12 = sub_1B0E43108();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v30 - v22;
  if (a2)
  {
    (*(v13 + 56))(&v30 - v22, 1, 1, v12, v23);
LABEL_10:
    v28 = *v4;
    v29 = type metadata accessor for ConnectionStatus.Error(0);
    sub_1B03B5C80(&v4[*(v29 + 20)], v11, &qword_1EB6E39C0, &qword_1B0EA35E0);
    sub_1B03B5C80(v24, v20, &unk_1EB6E2990, &qword_1B0E9B060);
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(v28, v11, v20, a3);
    return sub_1B0398EFC(v24, &unk_1EB6E2990, &qword_1B0E9B060);
  }

  v25 = static MonotonicTime.now()();
  result = sub_1B0E430F8();
  if (v25 > a1)
  {
    if (__OFSUB__(v25, a1))
    {
      __break(1u);
      goto LABEL_12;
    }

    if (!__OFSUB__(0, v25 - a1))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!__OFSUB__(a1, v25))
  {
LABEL_9:
    sub_1B0E43058();
    (*(v13 + 8))(v16, v12);
    (*(v13 + 56))(v24, 0, 1, v12, v27);
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B0C504B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(a1 + v6, v5, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v7 = sub_1B0E439A8();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v10 = sub_1B0E43988();
    v11 = sub_1B0E45908();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 68158208;
      *(v12 + 4) = 2;
      *(v12 + 8) = 256;
      v13 = *(a1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v12 + 10) = v13;

      *(v12 + 11) = 2048;
      v14 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
      swift_beginAccess();
      *(v12 + 13) = *(a1 + v14);

      _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx] Backed off (failure count %ld). Not creating a new connection.", v12, 0x15u);
      MEMORY[0x1B272C230](v12, -1, -1);
    }

    else
    {
    }

    return (*(v8 + 8))(v5, v7);
  }

  return result;
}

uint64_t sub_1B0C50710(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v30 - v6;
  v7 = sub_1B0E44468();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v12 = v13;
  v14 = *MEMORY[0x1E69E8020];
  v15 = v8[13];
  v15(v12, v14, v7, v10);
  v16 = v13;
  v17 = sub_1B0E44488();
  v18 = v8[1];
  result = v18(v12, v7);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_credentialsState) != 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    *v12 = v16;
    (v15)(v12, v14, v7);
    v27 = v16;
    v28 = sub_1B0E44488();
    result = v18(v12, v7);
    if (v28)
    {
      v29 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID);
      *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_nextCredentialsRequestID) = v29 + 1;
      sub_1B044AFB0(v29, v31, v32);
      return swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v21 = v30;
  sub_1B03B5C80(v3 + v20, v30, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v22 = sub_1B0E439A8();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v21, 1, v22);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v24 = sub_1B0E43988();
  v25 = sub_1B0E458E8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 68157952;
    *(v26 + 4) = 2;
    *(v26 + 8) = 256;
    *(v26 + 10) = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx] Current credentials are invalid.", v26, 0xBu);
    MEMORY[0x1B272C230](v26, -1, -1);
  }

  else
  {
  }

  (*(v23 + 8))(v21, v22);
  return v31(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B0C50ABC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1B0E44488();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1B0C45EFC(a1, a2);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C50C08(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1B0C461D0(a1, a2, a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

int64_t sub_1B0C50C9C()
{
  v1 = v0;
  v2 = sub_1B0E44208();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B0E443F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v36 - v16);
  v18 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
  swift_beginAccess();
  v19 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  if (*(v18 + 16))
  {
    swift_beginAccess();
    sub_1B03B5C80(v1 + v19, v15, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v20 = sub_1B0E439A8();
    v2 = *(v20 - 8);
    result = (*(v2 + 48))(v15, 1, v20);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v17 = sub_1B0E43988();
      v22 = sub_1B0E45908();
      if (os_log_type_enabled(v17, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 68157952;
        *(v23 + 4) = 2;
        *(v23 + 8) = 256;
        *(v23 + 10) = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&dword_1B0389000, v17, v22, "[%.*hhx] Cancelling backoff timer.", v23, 0xBu);
        MEMORY[0x1B272C230](v23, -1, -1);

LABEL_13:
        (*(v2 + 8))(v15, v20);
        v29 = *(**(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer) + 208);

        v29(v30);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v38 = v8;
  v39 = v7;
  v40 = *(v18 + 8);
  swift_beginAccess();
  sub_1B03B5C80(v1 + v19, v17, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v24 = sub_1B0E439A8();
  v20 = *(v24 - 8);
  result = (*(v20 + 48))(v17, 1, v24);
  if (result != 1)
  {
    v37 = v3;
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v25 = sub_1B0E43988();
    v15 = sub_1B0E45908();
    if (!os_log_type_enabled(v25, v15))
    {

LABEL_17:
      (*(v20 + 8))(v17, v24);
      v31 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoffTimer);

      v32 = v41;
      DispatchTime.init(_:)(v40);
      v33 = swift_allocObject();
      swift_weakInit();
      *v6 = 100;
      v34 = v37;
      (*(v37 + 104))(v6, *MEMORY[0x1E69E7F38], v2);
      v35 = *(*v31 + 200);

      v35(v32, v6, sub_1B041EE00, v33);

      (*(v34 + 8))(v6, v2);
      (*(v38 + 8))(v32, v39);
    }

    v36 = v2;
    v26 = swift_slowAlloc();
    *v26 = 68158464;
    *(v26 + 4) = 2;
    *(v26 + 8) = 256;
    v27 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v26 + 10) = v27;

    *(v26 + 11) = 2048;
    result = static MonotonicTime.now()();
    v28 = v40 - result;
    if (v40 >= result)
    {
      v2 = v36;
      if (!__OFSUB__(v40, result))
      {
LABEL_16:
        *(v26 + 13) = v28 / 1000000000.0;
        *(v26 + 21) = 2048;
        *(v26 + 23) = *v18;

        _os_log_impl(&dword_1B0389000, v25, v15, "[%.*hhx] Setting up backoff timer for %f s (count %ld) from now.", v26, 0x1Fu);
        MEMORY[0x1B272C230](v26, -1, -1);

        goto LABEL_17;
      }
    }

    else
    {
      if (!__OFSUB__(result, v40))
      {
        v28 = v40 - result;
        v2 = v36;
        if (__OFSUB__(0, result - v40))
        {
          __break(1u);
          goto LABEL_12;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C51334(uint64_t a1)
{
  v2 = v1;
  v156 = type metadata accessor for ConnectionState();
  v4 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v6 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v152 = &v140 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v151 = &v140 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v161 = &v140 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v144 = &v140 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v143 = &v140 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v147 = &v140 - v22;
  v23 = sub_1B0E44468();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8020], v23);
  v29 = v28;
  v30 = sub_1B0E44488();
  (*(v24 + 8))(v27, v23);
  if ((v30 & 1) == 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v39 = sub_1B0E46138();
    goto LABEL_10;
  }

  v31 = (v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancel);
  result = swift_beginAccess();
  v33 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);
  if (*(*v31 + 16))
  {
    v30 = v161;
    if (!v33)
    {
      goto LABEL_80;
    }

    v34 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);

    RestartableTimer.start()();
  }

  else
  {
    v30 = v161;
    if (!v33)
    {
      goto LABEL_81;
    }

    v35 = *(v2 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_pendingCancelTimer);

    RestartableTimer.stop()();
  }

  v36 = *v31;
  v37 = *(v31 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = sub_1B03CDDDC(a1, v36, v37);

  if (!*(v28 + 16))
  {
  }

  v38 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v155 = *(v2 + v38);
  if (v155 >> 62)
  {
    goto LABEL_72;
  }

  v39 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  if (!v39)
  {
LABEL_68:

    return sub_1B0C4FB40();
  }

  v142 = v11;
  v40 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  v41 = v155;
  v160 = v155 & 0xC000000000000001;
  v149 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v159 = v40;
  swift_beginAccess();
  v11 = 0;
  v146 = v41 & 0xFFFFFFFFFFFFFF8;
  v145 = v41 + 32;
  v153 = v28 + 56;
  *&v42 = 68158210;
  v148 = v42;
  v154 = v2;
  v150 = v6;
  v157 = v28;
  v158 = v39;
  while (1)
  {
    if (v160)
    {
      v44 = MEMORY[0x1B2728410](v11, v155);
      v45 = __OFADD__(v11++, 1);
      if (v45)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v11 >= *(v146 + 16))
      {
        goto LABEL_70;
      }

      v44 = *(v145 + 8 * v11);

      v45 = __OFADD__(v11++, 1);
      if (v45)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    v46 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id;
    if (*(v28 + 16))
    {
      v47 = *(v44 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v48 = *(v28 + 40);
      sub_1B0E46C28();
      sub_1B0E46C88();
      v49 = sub_1B0E46CB8();
      v50 = -1 << *(v28 + 32);
      v51 = v49 & ~v50;
      if ((*(v153 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
      {
        break;
      }
    }

LABEL_27:
    (*(*v44 + 304))();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v65 = v152;
      v66 = v151;
      if (EnumCaseMultiPayload == 3)
      {
        sub_1B038C824(v6, type metadata accessor for ConnectionState);
        sub_1B03B5C80(v2 + v159, v66, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v103 = v66;
        v104 = sub_1B0E439A8();
        v105 = *(v104 - 8);
        result = (*(v105 + 48))(v103, 1, v104);
        if (result == 1)
        {
          goto LABEL_77;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v106 = sub_1B0E43988();
        v107 = sub_1B0E45908();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v162[0] = v109;
          *v108 = v148;
          *(v108 + 4) = 2;
          *(v108 + 8) = 256;
          *(v108 + 10) = *(v2 + v149);

          *(v108 + 11) = 2082;
          v110 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v112 = sub_1B0399D64(v110, v111, v162);

          *(v108 + 13) = v112;
          v2 = v154;
          _os_log_impl(&dword_1B0389000, v106, v107, "[%.*hhx] Connection %{public}s: authentication failed.", v108, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v109);
          MEMORY[0x1B272C230](v109, -1, -1);
          v113 = v108;
          v6 = v150;
          MEMORY[0x1B272C230](v113, -1, -1);
        }

        else
        {
        }

        v30 = v161;
        v43 = v158;
        (*(v105 + 8))(v151, v104);
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 4)
      {
        sub_1B03B5C80(v2 + v159, v152, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v67 = sub_1B0E439A8();
        v68 = *(v67 - 8);
        result = (*(v68 + 48))(v65, 1, v67);
        if (result == 1)
        {
          goto LABEL_75;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v69 = sub_1B0E43988();
        v70 = sub_1B0E45908();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v141 = v69;
          v73 = v72;
          v162[0] = v72;
          *v71 = v148;
          *(v71 + 4) = 2;
          *(v71 + 8) = 256;
          *(v71 + 10) = *(v2 + v149);

          *(v71 + 11) = 2082;
          v74 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v76 = sub_1B0399D64(v74, v75, v162);

          *(v71 + 13) = v76;
          v2 = v154;
          v77 = v70;
          v78 = v141;
          _os_log_impl(&dword_1B0389000, v141, v77, "[%.*hhx] Connection %{public}s failed.", v71, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v73);
          MEMORY[0x1B272C230](v73, -1, -1);
          v79 = v71;
          v6 = v150;
          MEMORY[0x1B272C230](v79, -1, -1);
        }

        else
        {
        }

        v30 = v161;
        v139 = v158;
        (*(v68 + 8))(v152, v67);
      }

      else
      {
        v124 = v142;
        sub_1B03B5C80(v2 + v159, v142, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v125 = sub_1B0E439A8();
        v126 = *(v125 - 8);
        result = (*(v126 + 48))(v124, 1, v125);
        if (result == 1)
        {
          goto LABEL_74;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v127 = sub_1B0E43988();
        v128 = sub_1B0E45908();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v141 = v127;
          v131 = v130;
          v162[0] = v130;
          *v129 = v148;
          *(v129 + 4) = 2;
          *(v129 + 8) = 256;
          *(v129 + 10) = *(v2 + v149);

          *(v129 + 11) = 2082;
          v132 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v134 = sub_1B0399D64(v132, v133, v162);

          *(v129 + 13) = v134;
          v2 = v154;
          v135 = v128;
          v136 = v141;
          _os_log_impl(&dword_1B0389000, v141, v135, "[%.*hhx] Connection %{public}s is cancelled.", v129, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v131);
          MEMORY[0x1B272C230](v131, -1, -1);
          v137 = v129;
          v6 = v150;
          MEMORY[0x1B272C230](v137, -1, -1);
        }

        else
        {
        }

        v30 = v161;
        v139 = v158;
        (*(v126 + 8))(v142, v125);
      }

LABEL_65:
      v28 = v157;
      if (v11 == v139)
      {
LABEL_66:

        goto LABEL_68;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v92 = v143;
        sub_1B03B5C80(v2 + v159, v143, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v93 = sub_1B0E439A8();
        v94 = *(v93 - 8);
        result = (*(v94 + 48))(v92, 1, v93);
        if (result == 1)
        {
          goto LABEL_76;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v95 = sub_1B0E43988();
        v96 = sub_1B0E45908();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v162[0] = swift_slowAlloc();
          v98 = v162[0];
          *v97 = v148;
          *(v97 + 4) = 2;
          *(v97 + 8) = 256;
          *(v97 + 10) = *(v2 + v149);

          *(v97 + 11) = 2082;
          v99 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v101 = sub_1B0399D64(v99, v100, v162);

          *(v97 + 13) = v101;
          v2 = v154;
          _os_log_impl(&dword_1B0389000, v95, v96, "[%.*hhx] Connection %{public}s is connecting.", v97, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v98);
          MEMORY[0x1B272C230](v98, -1, -1);
          v102 = v97;
          v6 = v150;
          MEMORY[0x1B272C230](v102, -1, -1);
        }

        else
        {
        }

        v30 = v161;
        v139 = v158;
        (*(v94 + 8))(v143, v93);
        sub_1B038C824(v6, type metadata accessor for ConnectionState);
        goto LABEL_65;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v54 = v144;
        sub_1B03B5C80(v2 + v159, v144, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v55 = sub_1B0E439A8();
        v56 = *(v55 - 8);
        result = (*(v56 + 48))(v54, 1, v55);
        if (result == 1)
        {
          goto LABEL_79;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v57 = sub_1B0E43988();
        v58 = sub_1B0E45908();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v162[0] = v60;
          *v59 = v148;
          *(v59 + 4) = 2;
          *(v59 + 8) = 256;
          *(v59 + 10) = *(v2 + v149);

          *(v59 + 11) = 2082;
          v61 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v63 = sub_1B0399D64(v61, v62, v162);

          *(v59 + 13) = v63;
          v2 = v154;
          _os_log_impl(&dword_1B0389000, v57, v58, "[%.*hhx] Connection %{public}s is unauthenticated.", v59, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x1B272C230](v60, -1, -1);
          v64 = v59;
          v6 = v150;
          MEMORY[0x1B272C230](v64, -1, -1);
        }

        else
        {
        }

        v30 = v161;
        v43 = v158;
        (*(v56 + 8))(v144, v55);
        sub_1B038C824(v6, type metadata accessor for ConnectionState);
      }

      else
      {
        sub_1B038C824(v6, type metadata accessor for ConnectionState);
        sub_1B03B5C80(v2 + v159, v30, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v114 = sub_1B0E439A8();
        v115 = *(v114 - 8);
        result = (*(v115 + 48))(v30, 1, v114);
        if (result == 1)
        {
          goto LABEL_78;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();

        v116 = sub_1B0E43988();
        v117 = sub_1B0E45908();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v162[0] = v119;
          *v118 = v148;
          *(v118 + 4) = 2;
          *(v118 + 8) = 256;
          *(v118 + 10) = *(v2 + v149);

          *(v118 + 11) = 2082;
          v120 = ConnectionID.debugDescription.getter(*(v44 + v46));
          v122 = sub_1B0399D64(v120, v121, v162);

          *(v118 + 13) = v122;
          v2 = v154;
          _os_log_impl(&dword_1B0389000, v116, v117, "[%.*hhx] Connection %{public}s is authenticated.", v118, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v119);
          MEMORY[0x1B272C230](v119, -1, -1);
          v123 = v118;
          v6 = v150;
          MEMORY[0x1B272C230](v123, -1, -1);
        }

        else
        {
        }

        v43 = v158;
        v30 = v161;
        (*(v115 + 8))(v161, v114);
      }

LABEL_14:
      v28 = v157;
LABEL_15:
      if (v11 == v43)
      {
        goto LABEL_66;
      }
    }
  }

  v52 = ~v50;
  while (*(*(v28 + 48) + 4 * v51) != v47)
  {
    v51 = (v51 + 1) & v52;
    if (((*(v153 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v80 = v147;
  sub_1B03B5C80(v2 + v159, v147, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v81 = sub_1B0E439A8();
  v82 = *(v81 - 8);
  result = (*(v82 + 48))(v80, 1, v81);
  if (result != 1)
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v83 = sub_1B0E43988();
    v84 = sub_1B0E45908();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v162[0] = v86;
      *v85 = v148;
      *(v85 + 4) = 2;
      *(v85 + 8) = 256;
      *(v85 + 10) = *(v154 + v149);

      *(v85 + 11) = 2082;
      v87 = ConnectionID.debugDescription.getter(*(v44 + v46));
      v89 = sub_1B0399D64(v87, v88, v162);
      v28 = v157;

      *(v85 + 13) = v89;
      _os_log_impl(&dword_1B0389000, v83, v84, "[%.*hhx] Cancelling idle connection %{public}s.", v85, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v86);
      v90 = v86;
      v2 = v154;
      MEMORY[0x1B272C230](v90, -1, -1);
      v91 = v85;
      v6 = v150;
      MEMORY[0x1B272C230](v91, -1, -1);
    }

    else
    {
    }

    v30 = v161;
    v43 = v158;
    v138 = (*(v82 + 8))(v147, v81);
    (*(*v44 + 536))(v138);

    goto LABEL_15;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1B0C52808(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30[-v5 - 8];
  v7 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_enqueuedEvents;
  swift_beginAccess();
  if (*(v1 + v7))
  {
    swift_beginAccess();
    v8 = *(v1 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B044CDD4(0, *(v8 + 2) + 1, 1, v8);
      *(v1 + v7) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B044CDD4((v10 > 1), v11 + 1, 1, v8);
    }

    v12 = *(a1 + 1);
    v13 = *(a1 + 4);
    v33 = *(a1 + 3);
    v34 = v12;
    v32 = v13;
    *(v8 + 2) = v11 + 1;
    v14 = &v8[40 * v11];
    v15 = *a1;
    v16 = a1[1];
    *(v14 + 8) = *(a1 + 4);
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    *(v1 + v7) = v8;
    swift_endAccess();
    sub_1B0C5A0E4(&v34, v31);
    sub_1B03B5C80(&v33, v31, &qword_1EB6E5B48, &qword_1B0EDC5D0);
    return sub_1B03B5C80(&v32, v31, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  }

  else
  {
    v18 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v1 + v18, v6, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v19 = sub_1B0E439A8();
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v6, 1, v19);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v21 = v1;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v22 = sub_1B0E43988();
      v23 = sub_1B0E458E8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 68157952;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        *(v24 + 10) = *(v21 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx] Trying to enqueue event outside withEnqueuedSend.", v24, 0xBu);
        MEMORY[0x1B272C230](v24, -1, -1);
      }

      else
      {
      }

      (*(v20 + 8))(v6, v19);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5460, "x(\t");
        inited = swift_initStackObject();
        v26 = *(a1 + 1);
        v27 = *(a1 + 4);
        v33 = *(a1 + 3);
        v34 = v26;
        v32 = v27;
        v28 = *a1;
        *(inited + 16) = xmmword_1B0EC1E70;
        *(inited + 32) = v28;
        *(inited + 48) = a1[1];
        *(inited + 64) = v27;
        sub_1B0C5A0E4(&v34, v30);
        sub_1B03B5C80(&v33, v30, &qword_1EB6E5B48, &qword_1B0EDC5D0);
        sub_1B03B5C80(&v32, v30, &qword_1EB6E5B48, &qword_1B0EDC5D0);
        sub_1B041F3D0(inited);
        swift_unknownObjectRelease();
        swift_setDeallocating();
        return sub_1B0C5A1EC(inited + 32);
      }
    }
  }

  return result;
}

int64_t sub_1B0C52BF4(unsigned int *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v54[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54[-v11];
  v13 = type metadata accessor for ConnectionStatus.Error(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a1 + 1);
  v66[0] = v19;
  if (v19 >> 60 != 1)
  {
    return result;
  }

  v56 = v10;
  v20 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v59 = a1;
  v21 = *a1;
  v60 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C536A0(v60, v21);
  v22 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
  swift_beginAccess();
  v61 = v1;
  v57 = v14;
  v58 = v22;
  v23 = *(v1 + v22);
  if (v23 >> 62)
  {
LABEL_29:
    v24 = sub_1B0E46138();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = 0;
  while (1)
  {
    if (v24 == v25)
    {

      v32 = v60;
      goto LABEL_24;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(*(v23 + 8 * v25 + 32) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == v21)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (__OFADD__(v25++, 1))
    {
      goto LABEL_28;
    }
  }

  v55 = *(MEMORY[0x1B2728410](v25, v23) + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  swift_unknownObjectRelease();
  if (v55 != v21)
  {
    goto LABEL_9;
  }

LABEL_13:

  v27 = v61;
  swift_beginAccess();
  v28 = sub_1B0BAFFF0(v25);
  v29 = swift_endAccess();
  v30 = (*(*v28 + 352))(v29);
  sub_1B0C3E354(v30, v12);

  v31 = v57;
  if ((*(v57 + 48))(v12, 1, v13) == 1)
  {
    sub_1B0398EFC(v12, &qword_1EB6E35A0, &qword_1B0E99850);
  }

  else
  {
    sub_1B038CBB4(v12, v18, type metadata accessor for ConnectionStatus.Error);
    v33 = v56;
    sub_1B038CBB4(v18, v56, type metadata accessor for ConnectionStatus.Error);
    (*(v31 + 56))(v33, 0, 1, v13);
    v34 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
    swift_beginAccess();
    sub_1B03DC928(v33, v27 + v34);
    swift_endAccess();
  }

  v35 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v36 = v62;
  sub_1B03B5C80(v27 + v35, v62, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v37 = sub_1B0E439A8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v57 = v37;
  result = v39(v36, 1);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v40 = *(v59 + 3);
  v64 = *(v59 + 4);
  v65 = v40;

  sub_1B0C5A0E4(v66, v63);
  sub_1B03B5C80(&v65, v63, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  sub_1B03B5C80(&v64, v63, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  v41 = sub_1B0E43988();
  v42 = sub_1B0E45908();
  sub_1B0C5A140(v66);
  sub_1B0398EFC(&v65, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  sub_1B0398EFC(&v64, &qword_1EB6E5B48, &qword_1B0EDC5D0);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v63[0] = v44;
    *v43 = 68158466;
    *(v43 + 4) = 2;
    *(v43 + 8) = 256;
    *(v43 + 10) = *(v27 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v43 + 11) = 2082;
    v45 = ConnectionID.debugDescription.getter(v21);
    v47 = sub_1B0399D64(v45, v46, v63);

    *(v43 + 13) = v47;
    *(v43 + 21) = 2048;
    v48 = *(v27 + v58);
    if (v48 >> 62)
    {
      if (v48 < 0)
      {
        v53 = *(v27 + v58);
      }

      v49 = sub_1B0E46138();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v59;
    v32 = v60;

    *(v43 + 23) = v49;

    _os_log_impl(&dword_1B0389000, v41, v42, "[%.*hhx] Closing connection %{public}s. Remaining connection count: %ld.", v43, 0x1Fu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B272C230](v44, -1, -1);
    MEMORY[0x1B272C230](v43, -1, -1);

    v36 = v62;
  }

  else
  {

    v50 = v59;
    v32 = v60;
  }

  v51 = (*(v38 + 8))(v36, v57);
  (*(*v28 + 536))(v51);
  sub_1B0C52808(v50);

LABEL_24:
  v52 = CommandConnection.RecentErrors.backOffBehavior.getter(v32);

  if (v52 != 3)
  {
    swift_beginAccess();
    sub_1B0C3C4F0(v52);
    swift_endAccess();
    return sub_1B0C50C9C();
  }

  return result;
}

uint64_t sub_1B0C53354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - v7;
  v9 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  sub_1B03B5C80(v3 + v9, v8, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v10 = sub_1B0E439A8();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v13 = sub_1B0E43988();
    v14 = sub_1B0E458C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v15 = 68158210;
      *(v15 + 4) = 2;
      *(v15 + 8) = 256;
      *(v15 + 10) = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

      *(v15 + 11) = 2082;
      v16 = ConnectionID.debugDescription.getter(a2);
      v18 = sub_1B0399D64(v16, v17, &v29);

      *(v15 + 13) = v18;
      _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx] Mailbox selection changed on %{public}s.", v15, 0x15u);
      v19 = v26;
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B272C230](v19, -1, -1);
      MEMORY[0x1B272C230](v15, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v8, v10);
    v20 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_connections;
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21 >> 62)
    {
LABEL_19:
      v22 = sub_1B0E46138();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v22)
    {
      v23 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1B2728410](v23, v21);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_16:
            __break(1u);
          }
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v24 = *(v21 + 8 * v23 + 32);

          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_16;
          }
        }

        v28 = v24;
        sub_1B0C55630(&v28, a2, v27, v3);

        ++v23;
      }

      while (v25 != v22);
    }
  }

  return result;
}

uint64_t sub_1B0C536A0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v293) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v281 = &v266 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v280 = &v266 - v9;
  v286 = sub_1B0E441D8();
  v291 = *(v286 - 8);
  v10 = v291[8];
  v11 = MEMORY[0x1EEE9AC00](v286);
  v289 = &v266 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v279 = &v266 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v271 = &v266 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v276 = &v266 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v266 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v277 = &v266 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v278 = &v266 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v288 = &v266 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v285 = (&v266 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v274 = &v266 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v275 = &v266 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v287 = (&v266 - v36);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v266 - v37;
  v284 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  v39 = *(*(v284 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v284);
  v273 = &v266 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v270 = &v266 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v290 = &v266 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v272 = &v266 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v283 = (&v266 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v282 = &v266 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v268 = &v266 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v266 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v269 = &v266 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v267 = &v266 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v266 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v266 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64);
  v69 = &v266 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67);
  v72 = &v266 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v266 - v73;
  v292 = *(v3 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);
  if (CommandConnection.RecentErrors.isEmpty.getter(a1))
  {
    v75 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v3 + v75, v22, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v76 = sub_1B0E439A8();
    v77 = *(v76 - 8);
    result = (*(v77 + 48))(v22, 1, v76);
    if (result != 1)
    {
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v79 = sub_1B0E43988();
      v80 = sub_1B0E45908();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v294[0] = v82;
        *v81 = 68158210;
        *(v81 + 4) = 2;
        *(v81 + 8) = 256;
        v83 = v293;
        *(v81 + 10) = v292;
        *(v81 + 11) = 2082;
        v84 = ConnectionID.debugDescription.getter(v83);
        v86 = sub_1B0399D64(v84, v85, v294);

        *(v81 + 13) = v86;
        _os_log_impl(&dword_1B0389000, v79, v80, "[%.*hhx-%{public}s] Connection did close.", v81, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x1B272C230](v82, -1, -1);
        MEMORY[0x1B272C230](v81, -1, -1);
      }

      return (*(v77 + 8))(v22, v76);
    }

    __break(1u);
    goto LABEL_53;
  }

  v87 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  CommandConnection.RecentErrors.Statistics.init(_:)(v87, v74);
  if (*v74 == 1)
  {
    v88 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(v3 + v88, v38, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v89 = sub_1B0E439A8();
    isa = v89[-1].isa;
    result = (*(isa + 6))(v38, 1, v89);
    if (result == 1)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v91 = v74;
    sub_1B03C623C(v74, v72, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    sub_1B03C623C(v74, v69, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    v92 = sub_1B0E43988();
    v93 = sub_1B0E458F8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v291 = swift_slowAlloc();
      v294[0] = v291;
      *v94 = 68158722;
      *(v94 + 4) = 2;
      *(v94 + 8) = 256;
      v95 = v293;
      *(v94 + 10) = v292;
      *(v94 + 11) = 2082;
      v96 = ConnectionID.debugDescription.getter(v95);
      v293 = v89;
      v98 = sub_1B0399D64(v96, v97, v294);

      *(v94 + 13) = v98;
      *(v94 + 21) = 2048;
      v99 = *(v72 + 1);
      sub_1B038C824(v72, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      *(v94 + 23) = v99;
      *(v94 + 31) = 2048;
      v100 = *(v69 + 2);
      sub_1B038C824(v69, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      *(v94 + 33) = v100;
      _os_log_impl(&dword_1B0389000, v92, v93, "[%.*hhx-%{public}s] Connection failed to parse server response. Failed commands: %ld. Network errors: %ld.", v94, 0x29u);
      v101 = v291;
      __swift_destroy_boxed_opaque_existential_0(v291);
      MEMORY[0x1B272C230](v101, -1, -1);
      MEMORY[0x1B272C230](v94, -1, -1);

      v102 = v91;
      v89 = v293;
    }

    else
    {
      sub_1B038C824(v69, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1B038C824(v72, type metadata accessor for CommandConnection.RecentErrors.Statistics);

      v102 = v91;
    }

    sub_1B038C824(v102, type metadata accessor for CommandConnection.RecentErrors.Statistics);
    return (*(isa + 1))(v38, v89);
  }

  else if (v74[1] == 1)
  {
    v103 = *(v74 + 6);
    if (v103)
    {
      v104 = *(v74 + 4);
      v289 = *(v74 + 5);
      v105 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v106 = v3 + v105;
      v107 = v287;
      sub_1B03B5C80(v106, v287, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v108 = sub_1B0E439A8();
      v109 = *(v108 - 8);
      result = (*(v109 + 48))(v107, 1, v108);
      if (result == 1)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v291 = v109;
      sub_1B04420D8(v104);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03C623C(v74, v66, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1B03C623C(v74, v63, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1B04420D8(v104);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v110 = sub_1B0E43988();
      v111 = sub_1B0E458E8();
      sub_1B0447F00(v104);

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v288 = v108;
        v113 = v112;
        v286 = swift_slowAlloc();
        v294[0] = v286;
        *v113 = 68158978;
        *(v113 + 4) = 2;
        *(v113 + 8) = 256;
        v114 = v293;
        *(v113 + 10) = v292;
        *(v113 + 11) = 2082;
        v115 = ConnectionID.debugDescription.getter(v114);
        v117 = sub_1B0399D64(v115, v116, v294);

        *(v113 + 13) = v117;
        *(v113 + 21) = 2048;
        v290 = v74;
        v118 = *(v66 + 1);
        sub_1B038C824(v66, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v113 + 23) = v118;
        *(v113 + 31) = 2048;
        v119 = *(v63 + 2);
        sub_1B038C824(v63, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v113 + 33) = v119;
        *(v113 + 41) = 2082;
        v120 = ResponseText.debugDescription.getter(v104, v289, v103);
        v122 = sub_1B0399D64(v120, v121, v294);

        *(v113 + 43) = v122;
        _os_log_impl(&dword_1B0389000, v110, v111, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld. '%{public}s'", v113, 0x33u);
        v123 = v286;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v123, -1, -1);
        v124 = v113;
        v108 = v288;
        MEMORY[0x1B272C230](v124, -1, -1);

        sub_1B0447F00(v104);

        v125 = v290;
        v107 = v287;
      }

      else
      {
        sub_1B038C824(v63, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B038C824(v66, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B0447F00(v104);

        v125 = v74;
      }

      sub_1B038C824(v125, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      return (v291[1])(v107, v108);
    }

    else
    {
      v171 = v280;
      sub_1B03B5C80(&v74[*(v284 + 48)], v280, &unk_1EB6E5A90, &unk_1B0EDC020);
      v172 = v291;
      v173 = v286;
      if ((v291[6])(v171, 1, v286) == 1)
      {
        sub_1B0398EFC(v171, &unk_1EB6E5A90, &unk_1B0EDC020);
        v174 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v175 = v274;
        sub_1B03B5C80(v3 + v174, v274, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v176 = sub_1B0E439A8();
        v177 = v176[-1].isa;
        result = (*(v177 + 6))(v175, 1, v176);
        if (result == 1)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B03C623C(v74, v56, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v178 = v268;
        sub_1B03C623C(v74, v268, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v179 = sub_1B0E43988();
        v180 = sub_1B0E458E8();
        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v294[0] = v182;
          *v181 = 68158722;
          *(v181 + 4) = 2;
          *(v181 + 8) = 256;
          v183 = v293;
          *(v181 + 10) = v292;
          *(v181 + 11) = 2082;
          v184 = ConnectionID.debugDescription.getter(v183);
          v293 = v176;
          v186 = sub_1B0399D64(v184, v185, v294);

          *(v181 + 13) = v186;
          *(v181 + 21) = 2048;
          v290 = v74;
          v187 = *(v56 + 1);
          sub_1B038C824(v56, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v181 + 23) = v187;
          *(v181 + 31) = 2048;
          v188 = v178;
          v189 = *(v178 + 16);
          sub_1B038C824(v188, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v181 + 33) = v189;
          _os_log_impl(&dword_1B0389000, v179, v180, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld.", v181, 0x29u);
          __swift_destroy_boxed_opaque_existential_0(v182);
          v190 = v182;
          v175 = v274;
          MEMORY[0x1B272C230](v190, -1, -1);
          MEMORY[0x1B272C230](v181, -1, -1);

          v191 = v290;
          v176 = v293;
        }

        else
        {
          sub_1B038C824(v178, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_1B038C824(v56, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v191 = v74;
        }

        sub_1B038C824(v191, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v177 + 1))(v175, v176);
      }

      else
      {
        v212 = v276;
        (v172[4])(v276, v171, v173);
        v213 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v214 = v3 + v213;
        v215 = v275;
        sub_1B03B5C80(v214, v275, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v216 = sub_1B0E439A8();
        v217 = *(v216 - 8);
        result = (*(v217 + 48))(v215, 1, v216);
        if (result == 1)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v288 = v217;
        v289 = v216;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v218 = v267;
        sub_1B03C623C(v74, v267, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v290 = v74;
        v219 = v269;
        sub_1B03C623C(v74, v269, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v220 = v271;
        v287 = v172[2];
        (v287)(v271, v212, v173);
        v221 = sub_1B0E43988();
        v222 = sub_1B0E458E8();
        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          LODWORD(v284) = v222;
          v224 = v223;
          v283 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          v294[0] = v285;
          *v224 = 68158978;
          *(v224 + 4) = 2;
          *(v224 + 8) = 256;
          v225 = v293;
          *(v224 + 10) = v292;
          *(v224 + 11) = 2082;
          v226 = ConnectionID.debugDescription.getter(v225);
          v228 = sub_1B0399D64(v226, v227, v294);
          v293 = v221;
          v229 = v172;
          v230 = v173;
          v231 = v228;

          *(v224 + 13) = v231;
          *(v224 + 21) = 2048;
          v232 = *(v218 + 8);
          sub_1B038C824(v218, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v224 + 23) = v232;
          v215 = v275;
          *(v224 + 31) = 2048;
          v233 = v219;
          v234 = *(v219 + 16);
          sub_1B038C824(v233, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v224 + 33) = v234;
          *(v224 + 41) = 2112;
          sub_1B0C5A194();
          swift_allocError();
          (v287)(v235, v220, v230);
          v236 = _swift_stdlib_bridgeErrorToNSError();
          v237 = v229[1];
          v237(v220, v230);
          *(v224 + 43) = v236;
          v238 = v283;
          *v283 = v236;
          v239 = v293;
          _os_log_impl(&dword_1B0389000, v293, v284, "[%.*hhx-%{public}s] Connection failed to authenticate. Failed commands: %ld. Network errors: %ld. %@", v224, 0x33u);
          sub_1B0398EFC(v238, &unk_1EB6E2630, &qword_1B0E97970);
          MEMORY[0x1B272C230](v238, -1, -1);
          v240 = v285;
          __swift_destroy_boxed_opaque_existential_0(v285);
          MEMORY[0x1B272C230](v240, -1, -1);
          MEMORY[0x1B272C230](v224, -1, -1);

          v237(v276, v230);
        }

        else
        {
          sub_1B038C824(v219, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_1B038C824(v218, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v264 = v172[1];
          v264(v220, v173);
          v264(v212, v173);
        }

        sub_1B038C824(v290, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v288 + 8))(v215, v289);
      }
    }
  }

  else
  {
    v126 = v290;
    v127 = v291;
    v128 = v289;
    if (v74[2] == 1)
    {
      v129 = v74;
      v130 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v131 = v3;
      v132 = v285;
      sub_1B03B5C80(v3 + v130, v285, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v133 = sub_1B0E439A8();
      v134 = *(v133 - 8);
      result = (*(v134 + 48))(v132, 1, v133);
      if (result == 1)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v135 = sub_1B0E43988();
      v136 = sub_1B0E458E8();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v296 = v138;
        *v137 = 68158210;
        *(v137 + 4) = 2;
        *(v137 + 8) = 256;
        v139 = v293;
        *(v137 + 10) = v292;
        *(v137 + 11) = 2082;
        v140 = ConnectionID.debugDescription.getter(v139);
        v142 = sub_1B0399D64(v140, v141, &v296);
        v132 = v285;

        *(v137 + 13) = v142;
        _os_log_impl(&dword_1B0389000, v135, v136, "[%.*hhx-%{public}s] Server is temporarily unavailable.", v137, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v138);
        v143 = v138;
        v127 = v291;
        MEMORY[0x1B272C230](v143, -1, -1);
        v144 = v137;
        v128 = v289;
        MEMORY[0x1B272C230](v144, -1, -1);
      }

      v126 = v290;
      (*(v134 + 8))(v132, v133);
      v3 = v131;
      v74 = v129;
    }

    v145 = *(v74 + 6);
    if (v145)
    {
      v146 = *(v74 + 4);
      v291 = *(v74 + 5);
      v147 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      v148 = v288;
      sub_1B03B5C80(v3 + v147, v288, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v149 = sub_1B0E439A8();
      v150 = *(v149 - 8);
      result = (v150[6].isa)(v148, 1, v149);
      if (result == 1)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      sub_1B04420D8(v146);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v151 = v282;
      sub_1B03C623C(v74, v282, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      v152 = v283;
      sub_1B03C623C(v74, v283, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      sub_1B04420D8(v146);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v153 = sub_1B0E43988();
      v154 = sub_1B0E458E8();
      sub_1B0447F00(v146);

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v289 = v149;
        v156 = v152;
        v157 = v155;
        v287 = swift_slowAlloc();
        v295 = v287;
        *v157 = 68158978;
        *(v157 + 4) = 2;
        *(v157 + 8) = 256;
        v158 = v293;
        *(v157 + 10) = v292;
        *(v157 + 11) = 2082;
        v159 = ConnectionID.debugDescription.getter(v158);
        v293 = v150;
        v161 = sub_1B0399D64(v159, v160, &v295);
        v290 = v74;
        v162 = v161;

        *(v157 + 13) = v162;
        *(v157 + 21) = 2048;
        v163 = *(v151 + 8);
        sub_1B038C824(v151, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v157 + 23) = v163;
        *(v157 + 31) = 2048;
        v164 = v156[2];
        v165 = v156;
        v149 = v289;
        sub_1B038C824(v165, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        *(v157 + 33) = v164;
        *(v157 + 41) = 2082;
        v166 = ResponseText.debugDescription.getter(v146, v291, v145);
        v168 = sub_1B0399D64(v166, v167, &v295);

        *(v157 + 43) = v168;
        _os_log_impl(&dword_1B0389000, v153, v154, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld. '%{public}s'", v157, 0x33u);
        v169 = v287;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v169, -1, -1);
        v148 = v288;
        MEMORY[0x1B272C230](v157, -1, -1);

        sub_1B0447F00(v146);

        v170 = v290;
        v150 = v293;
      }

      else
      {
        sub_1B038C824(v152, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B038C824(v151, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B0447F00(v146);

        v170 = v74;
      }

      sub_1B038C824(v170, type metadata accessor for CommandConnection.RecentErrors.Statistics);
      return (v150[1].isa)(v148, v149);
    }

    else
    {
      v192 = v281;
      sub_1B03B5C80(&v74[*(v284 + 48)], v281, &unk_1EB6E5A90, &unk_1B0EDC020);
      v193 = v286;
      if ((v127[6])(v192, 1, v286) == 1)
      {
        sub_1B0398EFC(v192, &unk_1EB6E5A90, &unk_1B0EDC020);
        v194 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v195 = v277;
        sub_1B03B5C80(v3 + v194, v277, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v196 = sub_1B0E439A8();
        v197 = v196[-1].isa;
        result = (*(v197 + 6))(v195, 1, v196);
        if (result == 1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v198 = v270;
        sub_1B03C623C(v74, v270, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v199 = v273;
        sub_1B03C623C(v74, v273, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v200 = sub_1B0E43988();
        v201 = sub_1B0E458E8();
        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v295 = v203;
          *v202 = 68158722;
          *(v202 + 4) = 2;
          *(v202 + 8) = 256;
          v204 = v293;
          *(v202 + 10) = v292;
          *(v202 + 11) = 2082;
          v205 = ConnectionID.debugDescription.getter(v204);
          v293 = v196;
          v207 = sub_1B0399D64(v205, v206, &v295);

          *(v202 + 13) = v207;
          *(v202 + 21) = 2048;
          v208 = v198;
          v209 = *(v198 + 8);
          sub_1B038C824(v208, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v202 + 23) = v209;
          *(v202 + 31) = 2048;
          v210 = *(v199 + 16);
          v196 = v293;
          sub_1B038C824(v199, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v202 + 33) = v210;
          _os_log_impl(&dword_1B0389000, v200, v201, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld.", v202, 0x29u);
          __swift_destroy_boxed_opaque_existential_0(v203);
          v211 = v203;
          v195 = v277;
          MEMORY[0x1B272C230](v211, -1, -1);
          MEMORY[0x1B272C230](v202, -1, -1);
        }

        else
        {
          sub_1B038C824(v199, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_1B038C824(v198, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        }

        sub_1B038C824(v74, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v197 + 1))(v195, v196);
      }

      else
      {
        v241 = v279;
        (v127[4])(v279, v192, v193);
        v242 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
        swift_beginAccess();
        v243 = v3 + v242;
        v244 = v278;
        sub_1B03B5C80(v243, v278, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
        v245 = sub_1B0E439A8();
        v288 = *(v245 - 1);
        v246 = *(v288 + 48);
        v291 = v245;
        result = v246(v244, 1);
        if (result == 1)
        {
LABEL_60:
          __break(1u);
          return result;
        }

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v247 = v272;
        sub_1B03C623C(v74, v272, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        sub_1B03C623C(v74, v126, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        v290 = v74;
        v248 = v127[2];
        v248(v128, v241, v193);
        v249 = sub_1B0E43988();
        LODWORD(v287) = sub_1B0E458E8();
        if (os_log_type_enabled(v249, v287))
        {
          v250 = swift_slowAlloc();
          v284 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          v295 = v285;
          *v250 = 68158978;
          *(v250 + 4) = 2;
          *(v250 + 8) = 256;
          v251 = v293;
          *(v250 + 10) = v292;
          *(v250 + 11) = 2082;
          v252 = ConnectionID.debugDescription.getter(v251);
          v254 = sub_1B0399D64(v252, v253, &v295);

          *(v250 + 13) = v254;
          *(v250 + 21) = 2048;
          v255 = v127;
          v256 = *(v247 + 8);
          sub_1B038C824(v247, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v250 + 23) = v256;
          *(v250 + 31) = 2048;
          v257 = *(v126 + 16);
          sub_1B038C824(v126, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          *(v250 + 33) = v257;
          *(v250 + 41) = 2112;
          sub_1B0C5A194();
          swift_allocError();
          v258 = v289;
          v248(v259, v289, v193);
          v260 = _swift_stdlib_bridgeErrorToNSError();
          v261 = v255[1];
          v261(v258, v193);
          *(v250 + 43) = v260;
          v262 = v284;
          *v284 = v260;
          _os_log_impl(&dword_1B0389000, v249, v287, "[%.*hhx-%{public}s] Connection failed. Failed commands: %ld. Network errors: %ld. %@", v250, 0x33u);
          sub_1B0398EFC(v262, &unk_1EB6E2630, &qword_1B0E97970);
          MEMORY[0x1B272C230](v262, -1, -1);
          v263 = v285;
          __swift_destroy_boxed_opaque_existential_0(v285);
          MEMORY[0x1B272C230](v263, -1, -1);
          MEMORY[0x1B272C230](v250, -1, -1);

          v261(v279, v193);
          v244 = v278;
        }

        else
        {
          sub_1B038C824(v126, type metadata accessor for CommandConnection.RecentErrors.Statistics);
          sub_1B038C824(v247, type metadata accessor for CommandConnection.RecentErrors.Statistics);

          v265 = v127[1];
          v265(v289, v193);
          v265(v241, v193);
        }

        sub_1B038C824(v290, type metadata accessor for CommandConnection.RecentErrors.Statistics);
        return (*(v288 + 8))(v244, v291);
      }
    }
  }
}

uint64_t sub_1B0C55630(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 48);
  v112 = *(a3 + 32);
  v113[0] = v8;
  *(v113 + 11) = *(a3 + 59);
  v9 = *(a3 + 16);
  v110 = *a3;
  v111 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v89 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v94 = &v89 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v89 - v21;
  v23 = *a1;
  v24 = (*(**a1 + 608))(v20);
  v26 = *(v23 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  v114 = v24;
  v115 = v25;
  *&v120[11] = *(v113 + 11);
  v119 = v112;
  *v120 = v113[0];
  v117 = v110;
  v118 = v111;
  LODWORD(v93) = a2;
  v116 = v26 == a2;
  if (v26 != a2)
  {
    if (v24)
    {
      v48 = v24;
      LODWORD(v94) = v26;
      v92 = v25;
      v49 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
      swift_beginAccess();
      sub_1B03B5C80(a4 + v49, v22, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
      v50 = sub_1B0E439A8();
      v93 = *(v50 - 8);
      result = (*(v93 + 48))(v22, 1, v50);
      if (result != 1)
      {
        swift_retain_n();
        sub_1B03B5C80(a3, &v105, &qword_1EB6E4580, &qword_1B0EC5720);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();

        v51 = sub_1B0E43988();
        v52 = sub_1B0E458C8();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v91 = v50;
          v54 = v53;
          v55 = swift_slowAlloc();
          *&v101[0] = v55;
          *v54 = 68158723;
          *(v54 + 4) = 2;
          *(v54 + 8) = 256;
          v56 = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

          *(v54 + 10) = v56;

          *(v54 + 11) = 2082;
          v57 = ConnectionID.debugDescription.getter(v94);
          v59 = sub_1B0399D64(v57, v58, v101);

          *(v54 + 13) = v59;
          *(v54 + 21) = 2160;
          *(v54 + 23) = 0x786F626C69616DLL;
          *(v54 + 31) = 2085;
          v105 = v48;
          LODWORD(v106) = v92;
          v60 = sub_1B0E44BA8();
          v62 = sub_1B0399D64(v60, v61, v101);

          *(v54 + 33) = v62;
          _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx] %{public}s: '%{sensitive,mask.mailbox}s'", v54, 0x29u);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v55, -1, -1);
          v63 = v54;
          v50 = v91;
          MEMORY[0x1B272C230](v63, -1, -1);

          sub_1B0398EFC(&v114, &qword_1EB6E5B58, &unk_1B0EDC5E8);
        }

        else
        {

          sub_1B0398EFC(&v114, &qword_1EB6E5B58, &unk_1B0EDC5E8);
        }

        return (*(v93 + 8))(v22, v50);
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_17:
    LODWORD(v94) = v26;
    v64 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    swift_beginAccess();
    sub_1B03B5C80(a4 + v64, v14, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v65 = sub_1B0E439A8();
    v66 = *(v65 - 8);
    result = (*(v66 + 48))(v14, 1, v65);
    if (result != 1)
    {
      sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
      sub_1B0398EFC(&v114, &qword_1EB6E5B58, &unk_1B0EDC5E8);

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();

      v67 = sub_1B0E43988();
      v68 = sub_1B0E45908();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v93 = v65;
        v71 = v70;
        *&v103[0] = v70;
        *v69 = 68158210;
        *(v69 + 4) = 2;
        *(v69 + 8) = 256;
        *(v69 + 10) = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v69 + 11) = 2082;
        v72 = ConnectionID.debugDescription.getter(v94);
        v74 = sub_1B0399D64(v72, v73, v103);

        *(v69 + 13) = v74;
        _os_log_impl(&dword_1B0389000, v67, v68, "[%.*hhx] %{public}s: -", v69, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v71);
        v75 = v71;
        v65 = v93;
        MEMORY[0x1B272C230](v75, -1, -1);
        MEMORY[0x1B272C230](v69, -1, -1);
      }

      else
      {
      }

      return (*(v66 + 8))(v14, v65);
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*a3)
  {
    v76 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
    v77 = a4;
    swift_beginAccess();
    sub_1B03B5C80(a4 + v76, v17, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
    v78 = sub_1B0E439A8();
    v79 = *(v78 - 8);
    result = (*(v79 + 48))(v17, 1, v78);
    if (result != 1)
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();

      v80 = sub_1B0E43988();
      v81 = sub_1B0E45908();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v94 = v78;
        v83 = v82;
        v84 = swift_slowAlloc();
        *&v103[0] = v84;
        *v83 = 68158210;
        *(v83 + 4) = 2;
        *(v83 + 8) = 256;
        *(v83 + 10) = *(v77 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

        *(v83 + 11) = 2082;
        v85 = ConnectionID.debugDescription.getter(v93);
        v87 = sub_1B0399D64(v85, v86, v103);

        *(v83 + 13) = v87;
        _os_log_impl(&dword_1B0389000, v80, v81, "[%.*hhx] %{public}s: - *", v83, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x1B272C230](v84, -1, -1);
        v88 = v83;
        v78 = v94;
        MEMORY[0x1B272C230](v88, -1, -1);
      }

      else
      {
      }

      sub_1B0398EFC(&v114, &qword_1EB6E5B58, &unk_1B0EDC5E8);
      return (*(v79 + 8))(v17, v78);
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v105 = *a3;
  v107 = *(a3 + 24);
  v108 = *(a3 + 40);
  *v109 = *(a3 + 56);
  *&v109[15] = *(a3 + 71);
  v106 = *(a3 + 8);
  if (!v24)
  {
    goto LABEL_17;
  }

  v27 = v24;
  v92 = v25;
  v28 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_logger;
  swift_beginAccess();
  v29 = v94;
  sub_1B03B5C80(a4 + v28, v94, &qword_1EB6E5AF8, &unk_1B0EDC3E0);
  v30 = sub_1B0E439A8();
  v90 = *(v30 - 8);
  v91 = v30;
  result = (*(v90 + 48))(v29, 1);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_retain_n();
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B5C80(a3, v103, &qword_1EB6E4580, &qword_1B0EC5720);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0394868();
  sub_1B0394868();
  v103[2] = v112;
  v104[0] = v113[0];
  *(v104 + 11) = *(v113 + 11);
  v103[0] = v110;
  v103[1] = v111;
  sub_1B03B5C80(a3, v101, &qword_1EB6E4580, &qword_1B0EC5720);
  sub_1B0B37A20(v103, v101);
  v32 = sub_1B0E43988();
  v33 = sub_1B0E45908();

  v89 = v32;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v99[0] = v35;
    *v34 = 68160003;
    *(v34 + 4) = 2;
    *(v34 + 8) = 256;
    v36 = *(a4 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_engineID);

    *(v34 + 10) = v36;

    *(v34 + 11) = 2082;
    v37 = ConnectionID.debugDescription.getter(v93);
    v39 = sub_1B0399D64(v37, v38, v99);

    *(v34 + 13) = v39;
    *(v34 + 21) = 2160;
    *(v34 + 23) = 0x786F626C69616DLL;
    *(v34 + 31) = 2085;
    *&v101[0] = v27;
    DWORD2(v101[0]) = v92;
    v40 = sub_1B0E44BA8();
    v42 = sub_1B0399D64(v40, v41, v99);

    *(v34 + 33) = v42;
    *(v34 + 41) = 2048;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v34 + 43) = v107;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v34 + 51) = 1024;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v43 = DWORD2(v107);
    if (BYTE12(v107))
    {
      v43 = 0;
    }

    *(v34 + 53) = v43;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v34 + 57) = 1024;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v44 = DWORD2(v108);
    if (BYTE12(v108))
    {
      v44 = 0;
    }

    *(v34 + 59) = v44;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v34 + 63) = 1024;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v45 = *v109;
    if (v109[4])
    {
      v45 = 0;
    }

    *(v34 + 65) = v45;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v34 + 69) = 1024;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    *(v34 + 71) = v109[18] & 1;
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v46 = v33;
    v47 = v89;
    _os_log_impl(&dword_1B0389000, v89, v46, "[%.*hhx] %{public}s: '%{sensitive,mask.mailbox}s' * messageCount %ld, firstUnseenMessage %u, nextUID %u, uidValidity 0x%x, isReadOnly %{BOOL}d", v34, 0x4Bu);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v35, -1, -1);
    MEMORY[0x1B272C230](v34, -1, -1);

    sub_1B0398EFC(&v114, &qword_1EB6E5B58, &unk_1B0EDC5E8);
  }

  else
  {
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v95[2] = v112;
    v96[0] = v113[0];
    *(v96 + 11) = *(v113 + 11);
    v95[0] = v110;
    v95[1] = v111;
    sub_1B0B37A7C(v95);
    v97[2] = v112;
    v98[0] = v113[0];
    *(v98 + 11) = *(v113 + 11);
    v97[0] = v110;
    v97[1] = v111;
    sub_1B0B37A7C(v97);
    v99[2] = v112;
    v100[0] = v113[0];
    *(v100 + 11) = *(v113 + 11);
    v99[0] = v110;
    v99[1] = v111;
    sub_1B0B37A7C(v99);

    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    sub_1B0398EFC(a3, &qword_1EB6E4580, &qword_1B0EC5720);
    v101[2] = v112;
    v102[0] = v113[0];
    *(v102 + 11) = *(v113 + 11);
    v101[0] = v110;
    v101[1] = v111;
    sub_1B0B37A7C(v101);
    sub_1B0B37A7C(&v105);
    sub_1B0B37A7C(&v105);

    sub_1B0398EFC(&v114, &qword_1EB6E5B58, &unk_1B0EDC5E8);
  }

  return (*(v90 + 8))(v94, v91);
}