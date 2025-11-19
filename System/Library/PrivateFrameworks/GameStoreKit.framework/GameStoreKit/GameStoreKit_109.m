uint64_t sub_24F12642C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239ED0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8);
  sub_24F923078();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t DebugMetricsEventRecorder.record(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F929758();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DebugMetricsEvent();
  MEMORY[0x28223BE20](v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(sub_24F929738() + 16);

  if (v15)
  {
    (*(v9 + 16))(v11, a1, v8);
    sub_24F91F6A8();
    *&v14[v12[5]] = sub_24F929738();
    v17 = sub_24F929748();
    (*(v9 + 8))(v11, v8);
    *&v14[v12[6]] = v17;
    v18 = &v14[v12[7]];
    *v18 = a2;
    v18[1] = a3;
    v19 = *(v4 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_stateLock);

    [v19 lock];
    sub_24F1267B0(v4, v14);
    [v19 unlock];
    return sub_24F126ACC(v14);
  }

  return result;
}

uint64_t sub_24F1267B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1278B4(a2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = sub_24F923088();
  v9 = v8;
  v10 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_24E619C3C(0, v10[2] + 1, 1, v10);
    *v9 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_24E619C3C(v12 > 1, v13 + 1, 1, v10);
    *v9 = v10;
  }

  v10[2] = v13 + 1;
  sub_24F127918(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
  v22(v21, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v14 = *(v21[0] + 16);

  v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_historySize);
  v17 = v14 - v16;
  if (__OFSUB__(v14, v16))
  {
    __break(1u);
  }

  else
  {
    if (v17 < 1)
    {
LABEL_9:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      sub_24F126B28(v21[0]);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_24F923088();
    if (*(*v18 + 16) >= v17)
    {
      v19 = result;
      sub_24F14A334(0, v17);
      v19(v21, 0);

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F126ACC(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24F126B28(uint64_t a1)
{
  v58[6] = *MEMORY[0x277D85DE8];
  v3 = sub_24F92B138();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for DebugMetricsEvent();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v17);
  v57 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) != 1)
  {
    return;
  }

  v54 = v9;
  v55 = v19;
  v56 = v18;
  v21 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath;
  swift_beginAccess();
  v22 = v1 + v21;
  v24 = v55;
  v23 = v56;
  sub_24E99091C(v22, v16);
  if ((*(v24 + 48))(v16, 1, v23) == 1)
  {
    sub_24E70E058(v16);
    return;
  }

  v52 = v6;
  v53 = v4;
  v25 = v57;
  (*(v24 + 32))(v57, v16, v23);
  v26 = *(a1 + 16);
  if (v26)
  {
    v51 = v3;
    v58[0] = MEMORY[0x277D84F90];
    sub_24F457900(0, v26, 0);
    v27 = v58[0];
    v28 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v29 = *(v11 + 72);
    do
    {
      sub_24F1278B4(v28, v13);
      v30 = *&v13[*(v10 + 20)];

      sub_24F126ACC(v13);
      v58[0] = v27;
      v32 = v27[2];
      v31 = v27[3];
      if (v32 >= v31 >> 1)
      {
        sub_24F457900((v31 > 1), v32 + 1, 1);
        v27 = v58[0];
      }

      v27[2] = v32 + 1;
      v27[v32 + 4] = v30;
      v28 += v29;
      --v26;
    }

    while (v26);
    v3 = v51;
    v25 = v57;
  }

  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  v34 = sub_24F92B588();
  v58[0] = 0;
  v35 = [v33 dataWithJSONObject:v34 options:0 error:v58];

  v36 = v58[0];
  v37 = v54;
  if (!v35)
  {
    v41 = v36;
    v37 = sub_24F91F278();

    swift_willThrow();
    __break(1u);
    goto LABEL_18;
  }

  v38 = sub_24F91F4E8();
  v40 = v39;

  sub_24F92B128();
  v41 = sub_24F92B0F8();
  v43 = v42;
  sub_24E627880(v38, v40);
  if (!v43)
  {
LABEL_18:
    __break(1u);

    (*(v53 + 8))(v41, v3);
    __break(1u);
    return;
  }

  v44 = [objc_opt_self() defaultManager];
  v45 = sub_24F91F3B8();
  v58[0] = 0;
  v46 = [v44 removeItemAtURL:v45 error:v58];

  if (v46)
  {
    v47 = v58[0];
  }

  else
  {
    v48 = v58[0];
    v49 = sub_24F91F278();

    swift_willThrow();
  }

  v58[0] = v41;
  v58[1] = v43;
  v50 = v52;
  sub_24F92B128();
  sub_24E600AEC();
  sub_24F92C5C8();

  (*(v53 + 8))(v50, v3);
  (*(v55 + 8))(v25, v56);
}

Swift::Void __swiftcall DebugMetricsEventRecorder.clear()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_stateLock);
  [v1 lock];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  [v1 unlock];
}

void DebugMetricsEventRecorder.startRecordingToDisk(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    v6 = sub_24F91F4A8();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, a1, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath;
    swift_beginAccess();
    sub_24EDA1F14(v5, v1 + v8);
    swift_endAccess();
    sub_24F1274DC();
  }
}

uint64_t DebugMetricsEventRecorder.deinit()
{
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath);
  v1 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder__events;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DebugMetricsEventRecorder.__deallocating_deinit()
{
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath);
  v1 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder__events;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1274DC()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v0 = sub_24F91F4A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F408();
  sub_24F91F458();
  (*(v1 + 8))(v3, v0);
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = sub_24F92B098();
  v7 = [v5 fileExistsAtPath_];

  if (v7)
  {
  }

  v8 = [v4 defaultManager];
  v9 = sub_24F92B098();
  v15[0] = 0;
  v10 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:v15];

  if (v10)
  {
    v11 = v15[0];
  }

  v13 = v15[0];
  sub_24F91F278();

  result = swift_willThrow();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DebugMetricsEventRecorder()
{
  result = qword_27F239EB8;
  if (!qword_27F239EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F127734()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    sub_24F127850();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F127850()
{
  if (!qword_27F239EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E90);
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F239EC8);
    }
  }
}

uint64_t sub_24F1278B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F127918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24F12797C(void **a1)
{
  v2 = *(type metadata accessor for LeaderboardEntry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E86178C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24F12ED2C(v5);
  *a1 = v3;
}

uint64_t sub_24F127A24()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24F127ADC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24F127B9C()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD78();
}

uint64_t sub_24F127C68()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  return *(v0 + 24);
}

uint64_t sub_24F127D08(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F127E18()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  return *(v0 + 25);
}

uint64_t sub_24F127EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_24F127F60(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F1280C4()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton);
}

uint64_t sub_24F12816C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton);
  return result;
}

uint64_t sub_24F128244(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F12835C()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex);
}

uint64_t sub_24F12840C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24F1284FC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex;
  if ((*(v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD78();
}

uint64_t sub_24F128660@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v7 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v9 + v7, a3, a2);
}

uint64_t sub_24F128740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F239F60);
}

uint64_t sub_24F128818(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F239F60);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F239F60);
}

uint64_t sub_24F128998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_24E9CBF30(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_24F128A18()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24F128AD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24F128BA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  if (sub_24EDD4FBC(*(v1 + v3), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
    sub_24F91FD78();
  }
}

uint64_t sub_24F128CE0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_24F128D50()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount);
}

uint64_t sub_24F128DF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount);
  return result;
}

uint64_t sub_24F128EA8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F128FB4()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange);
}

__n128 sub_24F129060@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  result = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange);
  *a2 = result;
  return result;
}

uint64_t sub_24F129110(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange);
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange) == result && *(v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange + 8) == a2)
  {
    *v3 = result;
    v3[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F129284(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  return *(v2 + *a2);
}

__n128 sub_24F12932C@<Q0>(uint64_t *a1@<X0>, void *a2@<X4>, __n128 *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v6 = (v5 + *a2);
  v7 = v6[1].n128_u8[0];
  result = *v6;
  *a3 = *v6;
  a3[1].n128_u8[0] = v7;
  return result;
}

uint64_t sub_24F129414(uint64_t result, uint64_t a2, char a3, void *a4)
{
  v5 = v4 + *a4;
  if ((*(v5 + 16) & 1) == 0)
  {
    if (a3)
    {
      goto LABEL_11;
    }

    if (*v5 != result || *(v5 + 8) != a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    *v5 = result;
    *(v5 + 8) = a2;
    *(v5 + 16) = a3 & 1;
    return result;
  }

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD78();
}

uint64_t sub_24F129554(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 256;
  v3 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerEntry;
  v4 = type metadata accessor for LeaderboardEntry();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
  v5 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent;
  v7 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager_pageSize) = 100;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange) = xmmword_24F9CBDB0;
  v8 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  sub_24F91FDB8();
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager_objectGraph) = a1;
  return v1;
}

uint64_t sub_24F1296D0()
{
  v1[38] = v0;
  v2 = type metadata accessor for LeaderboardEntry();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = type metadata accessor for LeaderboardEntriesResponse(0);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F60);
  v1[47] = swift_task_alloc();
  sub_24F92B7F8();
  v1[48] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v1[49] = v4;
  v1[50] = v3;

  return MEMORY[0x2822009F8](sub_24F12987C, v4, v3);
}

uint64_t sub_24F12987C()
{
  v1 = v0[47];
  v2 = v0[38];
  swift_getKeyPath();
  v0[17] = v2;
  v0[51] = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  v0[52] = sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent;
  swift_beginAccess();
  sub_24E60169C(v2 + v3, v1, &qword_27F239F60);
  v4 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1)
  {
    v5 = v0[47];

    sub_24E601704(v5, &qword_27F239F60);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[38];
    sub_24E601704(v0[47], &qword_27F239F60);
    if (*(v8 + 24) == 1)
    {
      *(v8 + 24) = 1;
    }

    else
    {
      v9 = v0[38];
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = 1;
      v0[33] = v9;
      sub_24F91FD78();
    }

    v11 = swift_task_alloc();
    v0[53] = v11;
    *v11 = v0;
    v11[1] = sub_24F129B84;
    v12 = v0[46];

    return sub_24F12D540(v12, 0);
  }
}

uint64_t sub_24F129B84()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_24F12AB90;
  }

  else
  {
    v5 = sub_24F129CC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F129CC0()
{
  v56 = v0;
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[38];
  v4 = *(v1 + *(v2 + 24));
  v49 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount;
  v50 = v3;
  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount) != v4)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v0[21] = v3;
    sub_24F91FD78();

    v1 = v0[46];
    v2 = v0[44];
  }

  v5 = v0[38];
  v7 = v0[43];
  v51 = v0[40];
  v52 = v0[42];
  v54 = v0[39];
  sub_24E60169C(v1 + *(v2 + 20), v7, &qword_27F21C820);
  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v0[18] = v5;
  sub_24F91FD78();

  sub_24E601704(v7, &qword_27F21C820);
  swift_getKeyPath();
  v0[19] = v5;
  sub_24F91FD88();

  v0[20] = v5;
  swift_getKeyPath();
  sub_24F91FDA8();

  v9 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  sub_24ED7F568(&v55, 0);
  swift_endAccess();
  v0[22] = v5;
  swift_getKeyPath();
  sub_24F91FD98();

  swift_getKeyPath();
  v0[23] = v5;
  sub_24F91FD88();

  v10 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerEntry;
  swift_beginAccess();
  sub_24E60169C(v5 + v10, v52, &qword_27F21C820);
  if ((*(v51 + 48))(v52, 1, v54) == 1)
  {
    v11 = v0[46];
    v12 = v0[42];
    v13 = v0[38];

    sub_24E601704(v12, &qword_27F21C820);
    v14 = *v11;
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v0[25] = v13;
    sub_24F91FD78();

    v16 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton;
    if (*(v13 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
    {
      v17 = v0[46];
      v18 = v0[38];
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      v0[27] = v18;
      sub_24F91FD78();

      sub_24F130800(v17, type metadata accessor for LeaderboardEntriesResponse);
    }

    else
    {
      sub_24F130800(v0[46], type metadata accessor for LeaderboardEntriesResponse);
      *(v13 + v16) = 0;
    }

    v34 = v0[38];
    if (*(v34 + 24) == 1)
    {
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      v0[26] = v34;
LABEL_30:
      sub_24F91FD78();

LABEL_32:

      v48 = v0[1];

      return v48();
    }

    goto LABEL_31;
  }

  v20 = v0[41];
  v21 = v0[39];
  result = sub_24F130860(v0[42], v20, type metadata accessor for LeaderboardEntry);
  v23 = *(v20 + *(v21 + 24));
  v24 = v23 - 1;
  if (v23 < 1)
  {
    goto LABEL_25;
  }

  v25 = 100 * (v24 / 0x64);
  if (__OFADD__(v25, 101))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v53 = v24 / 0x64;
  v26 = v0[38];
  swift_getKeyPath();
  v0[30] = v26;
  sub_24F91FD88();

  if (*(v50 + v49) >= v25 + 100)
  {
    v27 = v25 + 100;
  }

  else
  {
    v27 = *(v50 + v49);
  }

  if (v27 <= v25)
  {
    goto LABEL_36;
  }

  v28 = v25 | 1;
  v29 = v0[38];
  v30 = v29 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange;
  if ((*(v29 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange + 16) & 1) != 0 || *v30 != v28 || *(v30 + 8) != v27)
  {
    swift_getKeyPath();
    v36 = swift_task_alloc();
    *(v36 + 16) = v29;
    *(v36 + 24) = v28;
    *(v36 + 32) = v27;
    *(v36 + 40) = 0;
    v0[31] = v29;
    sub_24F91FD78();

    if (v23 >= 0x65)
    {
      goto LABEL_16;
    }

LABEL_25:
    v37 = v0[46];
    v38 = v0[38];

    v39 = *v37;
    swift_getKeyPath();
    v40 = swift_task_alloc();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    v0[28] = v38;
    sub_24F91FD78();

    v41 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton;
    if (*(v38 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
    {
      v42 = v0[46];
      v43 = v0[41];
      v44 = v0[38];
      swift_getKeyPath();
      v45 = swift_task_alloc();
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      v0[29] = v44;
      sub_24F91FD78();

      sub_24F130800(v43, type metadata accessor for LeaderboardEntry);
      sub_24F130800(v42, type metadata accessor for LeaderboardEntriesResponse);
    }

    else
    {
      v46 = v0[46];
      sub_24F130800(v0[41], type metadata accessor for LeaderboardEntry);
      sub_24F130800(v46, type metadata accessor for LeaderboardEntriesResponse);
      *(v38 + v41) = 0;
    }

    v34 = v0[38];
    if (*(v34 + 24) == 1)
    {
      swift_getKeyPath();
      v47 = swift_task_alloc();
      *(v47 + 16) = v34;
      *(v47 + 24) = 0;
      v0[24] = v34;
      goto LABEL_30;
    }

LABEL_31:
    *(v34 + 24) = 0;
    goto LABEL_32;
  }

  *v30 = v28;
  *(v30 + 8) = v27;
  *(v30 + 16) = 0;
  if (v23 < 0x65)
  {
    goto LABEL_25;
  }

LABEL_16:
  v31 = v0[38];
  swift_getKeyPath();
  v0[32] = v31;
  sub_24F91FD88();

  if (sub_24F4D95E4(v53, *(v5 + v9)))
  {
    goto LABEL_25;
  }

  v32 = swift_task_alloc();
  v0[55] = v32;
  *v32 = v0;
  v32[1] = sub_24F12A684;
  v33 = v0[45];

  return sub_24F12D540(v33, v53);
}

uint64_t sub_24F12A684()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_24F12AE04;
  }

  else
  {
    v5 = sub_24F12A7C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12A7C0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[38];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = *v1;
  *(inited + 40) = *v2;

  v5 = sub_24F13035C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78);
  swift_arrayDestroy();
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v0[34] = v3;
  sub_24F91FD78();

  v7 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton;
  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) == 1)
  {
    *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 1;
  }

  else
  {
    v8 = v0[38];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 1;
    v0[35] = v8;
    sub_24F91FD78();
  }

  v10 = v0[38];
  swift_getKeyPath();
  v0[36] = v10;
  sub_24F91FD88();

  v11 = *(v3 + v7);
  if (v11 == 1)
  {
    v12 = v0[38];
    swift_getKeyPath();
    v0[37] = v12;
    sub_24F91FD88();

    v13 = sub_24F12E4DC(*(v12 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange + 8));
  }

  else
  {
    v13 = 0;
  }

  v15 = v0[45];
  v14 = v0[46];
  v16 = v0[41];
  sub_24F1284FC(v13, v11 ^ 1);
  sub_24F130800(v15, type metadata accessor for LeaderboardEntriesResponse);
  sub_24F130800(v16, type metadata accessor for LeaderboardEntry);
  sub_24F130800(v14, type metadata accessor for LeaderboardEntriesResponse);
  v17 = v0[38];
  if (*(v17 + 24) == 1)
  {
    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    v0[24] = v17;
    sub_24F91FD78();
  }

  else
  {
    *(v17 + 24) = 0;
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_24F12AB90()
{

  v1 = v0[54];
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E880);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error loading entries: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[38];
  if (*(v10 + 24) == 1)
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[24] = v10;
    sub_24F91FD78();
  }

  else
  {
    *(v10 + 24) = 0;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_24F12AE04()
{
  v1 = v0[46];
  v2 = v0[41];

  sub_24F130800(v2, type metadata accessor for LeaderboardEntry);
  sub_24F130800(v1, type metadata accessor for LeaderboardEntriesResponse);
  v3 = v0[56];
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E880);
  v5 = v3;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "Error loading entries: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[38];
  if (*(v12 + 24) == 1)
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    v0[24] = v12;
    sub_24F91FD78();
  }

  else
  {
    *(v12 + 24) = 0;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F12B0B8(double a1)
{
  *(v2 + 224) = v1;
  *(v2 + 216) = a1;
  type metadata accessor for LeaderboardEntriesResponse(0);
  *(v2 + 232) = swift_task_alloc();
  sub_24F92B7F8();
  *(v2 + 240) = sub_24F92B7E8();
  v4 = sub_24F92B778();
  *(v2 + 248) = v4;
  *(v2 + 256) = v3;

  return MEMORY[0x2822009F8](sub_24F12B180, v4, v3);
}

uint64_t sub_24F12B180()
{
  v1 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 88) = v1;
  *(v0 + 264) = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  *(v0 + 272) = sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  if ((*(v1 + 24) & 1) != 0 || (v2 = *(v0 + 224), swift_getKeyPath(), *(v0 + 96) = v2, sub_24F91FD88(), , (*(v2 + 25) & 1) == 0) || *(v0 + 216) >= 200.0)
  {

    goto LABEL_14;
  }

  v3 = *(v0 + 224);
  KeyPath = swift_getKeyPath();
  *(v0 + 104) = v3;
  sub_24F91FD88();

  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = type metadata accessor for LeaderboardEntry();
    v6 = *(v5 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7 + *(v8 + 24));
  }

  v9 = __OFADD__(v6, 1);
  v10 = v6 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_28;
  }

  *(v0 + 280) = v10;
  v11 = v10 < 1;
  v12 = v10 - 1;
  if (v11)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = v12;
  KeyPath = v12 / 100;
  v14 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 112) = v14;
  sub_24F91FD88();

  v15 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  if (sub_24F4D95E4(v13 / 100, *(v14 + v15)))
  {

    if (qword_27F211410 == -1)
    {
LABEL_10:
      v16 = sub_24F9220D8();
      __swift_project_value_buffer(v16, qword_27F39E880);
      v17 = sub_24F9220B8();
      v18 = sub_24F92BD98();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = KeyPath;
        _os_log_impl(&dword_24E5DD000, v17, v18, "Page %ld already loaded, skipping duplicate load", v19, 0xCu);
        MEMORY[0x2530542D0](v19, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_29:
    swift_once();
    goto LABEL_10;
  }

  v22 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 120) = v22;
  sub_24F91FD88();

  v23 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount;
  *(v0 + 288) = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount;
  if (*(v22 + v23) <= 100 * KeyPath)
  {

    if (*(v2 + 25))
    {
      v24 = *(v0 + 224);
      swift_getKeyPath();
      v25 = swift_task_alloc();
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v0 + 208) = v24;
      sub_24F91FD78();
    }

    else
    {
      *(v2 + 25) = 0;
    }

LABEL_14:

    v20 = *(v0 + 8);

    return v20();
  }

  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 1;
  }

  else
  {
    v26 = *(v0 + 224);
    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v26;
    *(v27 + 24) = 1;
    *(v0 + 128) = v26;
    sub_24F91FD78();
  }

  v28 = swift_task_alloc();
  *(v0 + 296) = v28;
  *v28 = v0;
  v28[1] = sub_24F12B710;
  v29 = *(v0 + 232);

  return sub_24F12D540(v29, v13 / 100);
}

uint64_t sub_24F12B710()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_24F12BD40;
  }

  else
  {
    v5 = sub_24F12B84C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12B84C()
{
  v1 = v0[29];

  v2 = *v1;
  if (!*(*v1 + 16))
  {
    v16 = v0[28];
    if ((*(v16 + 25) & 1) == 0)
    {
      *(v16 + 25) = 0;
      goto LABEL_22;
    }

    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    v0[25] = v16;
    goto LABEL_16;
  }

  v3 = v0[28];
  v4 = 100 * ((v0[35] - 1) / 100);
  swift_getKeyPath();
  v0[19] = v3;

  sub_24F91FD88();

  v0[20] = v3;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24EA0C158(v2);
  swift_endAccess();
  v0[21] = v3;
  swift_getKeyPath();
  sub_24F91FD98();

  v6 = v4 | 1;
  v7 = *(v2 + 16);
  v8 = (v4 | 1) + v7;
  if (__OFADD__(v4 | 1, v7))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 <= 100 * ((v0[35] - 1) / 100))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = v0[28];
  v11 = v10 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange;
  if ((*(v10 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange + 16) & 1) == 0 && *v11 == v6 && *(v11 + 8) == v9)
  {
    *v11 = v6;
    *(v11 + 8) = v9;
    *(v11 + 16) = 0;
    if (v7 == 100)
    {
      goto LABEL_18;
    }

LABEL_12:
    LOBYTE(v13) = 0;
    v14 = v0[28];
    if ((*(v14 + 25) & 1) == 0)
    {
LABEL_20:
      *(v14 + 25) = v13;
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v10;
  *(v18 + 24) = v6;
  *(v18 + 32) = v9;
  *(v18 + 40) = 0;
  v0[22] = v10;
  sub_24F91FD78();

  if (v7 != 100)
  {
    goto LABEL_12;
  }

LABEL_18:
  v19 = (v0[35] - 1) / 100 + 1;
  v20 = 100 * v19;
  if ((v19 * 100) >> 64 != (100 * v19) >> 63)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v21 = v0[36];
  v22 = v0[28];
  swift_getKeyPath();
  v0[24] = v22;
  sub_24F91FD88();

  v13 = *(v22 + v21) > v20;
  v14 = v0[28];
  if (((*(v22 + 25) ^ v13) & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v0[23] = v14;
LABEL_16:
  sub_24F91FD78();

LABEL_22:
  sub_24F130800(v0[29], type metadata accessor for LeaderboardEntriesResponse);
  v23 = v0[28];
  if (*(v23 + 24) == 1)
  {
    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    v0[17] = v23;
    sub_24F91FD78();
  }

  else
  {
    *(v23 + 24) = 0;
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_24F12BD40()
{
  v1 = *(v0 + 224);

  if (*(v1 + 25))
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 224);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v0 + 144) = v3;
    sub_24F91FD78();
  }

  else
  {
    v5 = *(v0 + 224);

    *(v5 + 25) = 0;
  }

  v6 = *(v0 + 224);
  if (*(v6 + 24) == 1)
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v0 + 136) = v6;
    sub_24F91FD78();
  }

  else
  {
    *(v6 + 24) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F12BEF0()
{
  v1[28] = v0;
  type metadata accessor for LeaderboardEntriesResponse(0);
  v1[29] = swift_task_alloc();
  sub_24F92B7F8();
  v1[30] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[31] = v3;
  v1[32] = v2;

  return MEMORY[0x2822009F8](sub_24F12BFB4, v3, v2);
}

uint64_t sub_24F12BFB4()
{
  v1 = v0[28];
  swift_getKeyPath();
  v0[8] = v1;
  v0[33] = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  v0[34] = sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  if (*(v1 + 24))
  {

    goto LABEL_18;
  }

  v2 = v0[28];
  KeyPath = swift_getKeyPath();
  v0[9] = v2;
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange;
  v0[35] = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange;
  v5 = v2 + v4;
  v6 = *(v2 + v4 + 8);
  v7 = v6 + 1;
  v0[36] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (__OFSUB__(v7, 1))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 < 1 || v6 < -99)
  {
    goto LABEL_30;
  }

  v29 = v5;
  v8 = v6;
  KeyPath = v6 / 100;
  v9 = v0[28];
  swift_getKeyPath();
  v0[10] = v9;
  sub_24F91FD88();

  v10 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  if (sub_24F4D95E4(v8 / 100, *(v9 + v10)))
  {

    if (qword_27F211410 == -1)
    {
LABEL_9:
      v11 = sub_24F9220D8();
      __swift_project_value_buffer(v11, qword_27F39E880);
      v12 = sub_24F9220B8();
      v13 = sub_24F92BD98();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = KeyPath;
        _os_log_impl(&dword_24E5DD000, v12, v13, "Page %ld already loaded, skipping duplicate load", v14, 0xCu);
        MEMORY[0x2530542D0](v14, -1, -1);
      }

      v15 = v0[28];

      swift_getKeyPath();
      v0[26] = v15;
      sub_24F91FD88();

      v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton);
      if (v16 == 1)
      {
        v17 = v0[28];
        swift_getKeyPath();
        v0[27] = v17;
        sub_24F91FD88();

        v18 = sub_24F12E4DC(*(v29 + 8));
      }

      else
      {
        v18 = 0;
      }

      sub_24F1284FC(v18, v16 ^ 1);
      goto LABEL_18;
    }

LABEL_31:
    swift_once();
    goto LABEL_9;
  }

  v19 = v0[28];
  swift_getKeyPath();
  v0[11] = v19;
  sub_24F91FD88();

  if (*(v19 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount) <= 100 * KeyPath)
  {
    v22 = v0[28];

    if (*(v22 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
    {
      v23 = v0[28];
      swift_getKeyPath();
      v24 = swift_task_alloc();
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      v0[25] = v23;
      sub_24F91FD78();
    }

    else
    {
      *(v22 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
    }

LABEL_18:

    v20 = v0[1];

    return v20();
  }

  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 1;
  }

  else
  {
    v25 = v0[28];
    swift_getKeyPath();
    v26 = swift_task_alloc();
    *(v26 + 16) = v25;
    *(v26 + 24) = 1;
    v0[12] = v25;
    sub_24F91FD78();
  }

  v27 = swift_task_alloc();
  v0[37] = v27;
  *v27 = v0;
  v27[1] = sub_24F12C534;
  v28 = v0[29];

  return sub_24F12D540(v28, v8 / 100);
}

uint64_t sub_24F12C534()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_24F12CBA8;
  }

  else
  {
    v5 = sub_24F12C670;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12C670()
{
  v1 = v0[29];

  v2 = *v1;
  if (*(*v1 + 16))
  {
    v27 = v0[36];
    v3 = v0[28];
    v4 = sub_24F12E4DC(v27);
    swift_getKeyPath();
    v0[15] = v3;

    sub_24F91FD88();

    v0[16] = v3;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24F14A690(v4, v4, v2);
    swift_endAccess();

    v0[17] = v3;
    swift_getKeyPath();
    sub_24F91FD98();

    v6 = *(v2 + 16);
    v7 = __OFADD__(v27, v6);
    v8 = v27 + v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = v8 - 1;
      if (!__OFSUB__(v8, 1))
      {
        v10 = v0[35];
        v11 = v0[28];
        swift_getKeyPath();
        v0[18] = v11;
        sub_24F91FD88();

        v12 = *(v11 + v10);
        if (v9 >= v12)
        {
          v13 = v0[28];
          if (*(v13 + v0[35] + 8) != v9)
          {
            swift_getKeyPath();
            v14 = swift_task_alloc();
            v14[2] = v13;
            v14[3] = v12;
            v14[4] = v9;
            v0[19] = v13;
            sub_24F91FD78();

            v13 = v0[28];
          }

          swift_getKeyPath();
          v0[20] = v13;
          sub_24F91FD88();

          if ((*(v13 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange + 16) & 1) != 0 || v9 < *(v13 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange))
          {
            v15 = v0[28];
            swift_getKeyPath();
            v0[21] = v15;
            sub_24F91FD88();

            v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton);
            if (v16 == 1)
            {
              v17 = v0[28];
              v18 = v17 + v0[35];
              swift_getKeyPath();
              v0[22] = v17;
              sub_24F91FD88();

              v19 = sub_24F12E4DC(*(v18 + 8));
            }

            else
            {
              v19 = 0;
            }

            sub_24F1284FC(v19, v16 ^ 1);
            goto LABEL_20;
          }

          v22 = v0[28];
          if ((*(v22 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) & 1) == 0)
          {
            *(v22 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
            goto LABEL_20;
          }

          swift_getKeyPath();
          v23 = swift_task_alloc();
          *(v23 + 16) = v22;
          *(v23 + 24) = 0;
          v0[23] = v22;
          goto LABEL_18;
        }

LABEL_28:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v20 = v0[28];
  if (*(v20 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
  {
    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    v0[24] = v20;
LABEL_18:
    sub_24F91FD78();

    goto LABEL_20;
  }

  *(v20 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
LABEL_20:
  sub_24F130800(v0[29], type metadata accessor for LeaderboardEntriesResponse);
  v24 = v0[28];
  if (*(v24 + 24) == 1)
  {
    swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    v0[13] = v24;
    sub_24F91FD78();
  }

  else
  {
    *(v24 + 24) = 0;
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_24F12CBA8()
{
  v1 = *(v0 + 224);

  v2 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
  {
    v3 = *(v0 + 304);
    v4 = *(v0 + 224);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    *(v0 + 112) = v4;
    sub_24F91FD78();
  }

  else
  {

    *(v1 + v2) = 0;
  }

  v6 = *(v0 + 224);
  if (*(v6 + 24) == 1)
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v0 + 104) = v6;
    sub_24F91FD78();
  }

  else
  {
    *(v6 + 24) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F12CD5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  swift_getKeyPath();
  v23 = v0;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v23 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];

  v22 = v0;
  swift_getKeyPath();
  sub_24F91FD98();

  if (*(v0 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v21 - 2) = v0;
    *(&v21 - 8) = 0;
    v22 = v0;
    sub_24F91FD78();
  }

  else
  {
    *(v0 + 24) = 0;
  }

  if (*(v0 + 25) == 1)
  {
    *(v0 + 25) = 1;
  }

  else
  {
    v6 = swift_getKeyPath();
    MEMORY[0x28223BE20](v6);
    *(&v21 - 2) = v0;
    *(&v21 - 8) = 1;
    v22 = v0;
    sub_24F91FD78();
  }

  v7 = type metadata accessor for LeaderboardEntry();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_getKeyPath();
  MEMORY[0x28223BE20](v8);
  *(&v21 - 2) = v0;
  *(&v21 - 1) = v4;
  v22 = v0;
  sub_24F91FD78();

  sub_24E601704(v4, &qword_27F21C820);
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    *(&v21 - 2) = v0;
    *(&v21 - 8) = 0;
    v22 = v0;
    sub_24F91FD78();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
  }

  v10 = v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex + 8) == 1)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
  }

  else
  {
    v11 = swift_getKeyPath();
    MEMORY[0x28223BE20](v11);
    *(&v21 - 4) = v0;
    *(&v21 - 3) = 0;
    *(&v21 - 16) = 1;
    v22 = v0;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v22 = v0;
  sub_24F91FD88();

  v22 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  v12 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  *(v1 + v12) = MEMORY[0x277D84FA0];

  v21 = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount))
  {
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14);
    *(&v21 - 2) = v1;
    *(&v21 - 1) = 0;
    v21 = v1;
    sub_24F91FD78();
  }

  v15 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange) == 1 && *(v15 + 8) == 100)
  {
    *v15 = xmmword_24F9CBDB0;
  }

  else
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    *(&v21 - 4) = v1;
    *(&v21 - 3) = xmmword_24F9CBDB0;
    v21 = v1;
    sub_24F91FD78();
  }

  v17 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange + 16))
  {
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 1;
  }

  else
  {
    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18);
    *(&v21 - 3) = 0;
    *(&v21 - 2) = 0;
    *(&v21 - 4) = v1;
    *(&v21 - 8) = 1;
    v21 = v1;
    sub_24F91FD78();
  }

  v19 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange + 16))
  {
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
  }

  else
  {
    v20 = swift_getKeyPath();
    MEMORY[0x28223BE20](v20);
    *(&v21 - 3) = 0;
    *(&v21 - 2) = 0;
    *(&v21 - 4) = v1;
    *(&v21 - 8) = 1;
    v21 = v1;
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F12D540(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  type metadata accessor for LeaderboardEntriesDataIntent(0);
  v3[13] = swift_task_alloc();
  sub_24F92B7F8();
  v3[14] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x2822009F8](sub_24F12D608, v5, v4);
}

uint64_t sub_24F12D608()
{
  sub_24F12DBA8(v0[11], v0[13]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_24F12D704;
  v2 = v0[13];
  v3 = v0[10];

  return sub_24F12DEB0(v3, v2);
}

uint64_t sub_24F12D704()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_24F12DB20;
  }

  else
  {
    v5 = sub_24F12D840;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12D840()
{
  v15 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  swift_getKeyPath();
  v0[5] = v2;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v0[6] = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24ED7F568(&v14, v1);
  swift_endAccess();
  v0[7] = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  v4 = *(v3 + *(type metadata accessor for LeaderboardEntriesResponse(0) + 24));
  if (v4 < 1)
  {
    sub_24F130800(v0[13], type metadata accessor for LeaderboardEntriesDataIntent);
  }

  else
  {
    v5 = v0[12];
    swift_getKeyPath();
    v0[8] = v5;
    sub_24F91FD88();

    v6 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount;
    v7 = *(v5 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount);
    if (v4 <= v7)
    {
      v8 = *(v5 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount);
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= v4)
    {
      sub_24F130800(v0[13], type metadata accessor for LeaderboardEntriesDataIntent);
      *(v5 + v6) = v8;
    }

    else
    {
      v9 = v0[12];
      v13 = v0[13];
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      v0[9] = v9;
      sub_24F91FD78();

      sub_24F130800(v13, type metadata accessor for LeaderboardEntriesDataIntent);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F12DB20()
{
  v1 = *(v0 + 104);

  sub_24F130800(v1, type metadata accessor for LeaderboardEntriesDataIntent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F12DBA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v2;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  sub_24F91FD88();

  v12 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent;
  swift_beginAccess();
  sub_24E60169C(v3 + v12, v7, &qword_27F239F60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &qword_27F239F60);
    sub_24F12EC0C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_24F130860(v7, v11, type metadata accessor for LeaderboardEntriesDataIntent);
    sub_24F12EC60(&v11[v8[5]], a2 + v8[5], type metadata accessor for Game);
    sub_24F12EC60(&v11[v8[6]], a2 + v8[6], type metadata accessor for Leaderboard);
    sub_24F12EC60(&v11[v8[7]], a2 + v8[7], type metadata accessor for Player);
    v14 = v11[v8[8]];
    v15 = v11[v8[9]];
    result = sub_24F130800(v11, type metadata accessor for LeaderboardEntriesDataIntent);
    *a2 = 100;
    *(a2 + v8[8]) = v14;
    *(a2 + v8[9]) = v15;
    v16 = a2 + v8[10];
    *v16 = v19;
    v16[8] = 0;
  }

  return result;
}

uint64_t sub_24F12DEB0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_24F92B7F8();
  v3[10] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_24F12DF4C, v5, v4);
}

uint64_t sub_24F12DF4C()
{
  v0[13] = *(v0[9] + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager_objectGraph);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_24F12E018;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24F12E018()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24F12E3A0;
  }

  else
  {
    v5 = sub_24F12E154;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12E154()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v5 = sub_24F12FF88(&qword_27F21C800, type metadata accessor for LeaderboardEntriesDataIntent);
  *v3 = v0;
  v3[1] = sub_24F12E264;
  v6 = v0[13];
  v7 = v0[7];
  v8 = v0[8];

  return MEMORY[0x28217F4B0](v7, v8, v6, v4, v5, v1, v2);
}

uint64_t sub_24F12E264()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24F12E470;
  }

  else
  {
    v5 = sub_24F12E404;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12E3A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F12E404()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F12E470()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F12E4DC(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = (v29 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F58);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (v29 - v10);
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  v35 = v2;
  v29[0] = sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);
  v29[1] = v12;
  sub_24F91FD88();

  swift_beginAccess();
  v30 = v2;
  v13 = *(v2 + 16);
  v14 = *(v13 + 16);
  v15 = (v4 + 56);
  v16 = (v4 + 48);

  v18 = 0;
  v33 = v13;
  while (1)
  {
    if (v18 == v14)
    {
      v19 = 1;
      v18 = v14;
      goto LABEL_7;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *(v13 + 16))
    {
      goto LABEL_13;
    }

    v20 = *(type metadata accessor for LeaderboardEntry() - 8);
    v21 = v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18;
    v22 = *(v3 + 48);
    v23 = v31;
    *v31 = v18;
    sub_24F12EC60(v21, v23 + v22, type metadata accessor for LeaderboardEntry);
    sub_24E6009C8(v23, v8, &qword_27F239F50);
    v19 = 0;
    ++v18;
LABEL_7:
    (*v15)(v8, v19, 1, v3);
    sub_24E6009C8(v8, v11, &qword_27F239F58);
    if ((*v16)(v11, 1, v3) == 1)
    {

      swift_getKeyPath();
      v28 = v30;
      v34 = v30;
      sub_24F91FD88();

      return *(*(v28 + 16) + 16);
    }

    v24 = *v11;
    v25 = v11 + *(v3 + 48);
    v26 = *(v25 + *(type metadata accessor for LeaderboardEntry() + 24));
    result = sub_24F130800(v25, type metadata accessor for LeaderboardEntry);
    v27 = v26 < v32;
    v13 = v33;
    if (!v27)
    {

      return v24;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_24F12E890()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerEntry, &qword_27F21C820);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent, &qword_27F239F60);

  v1 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardEntriesPaginationManager()
{
  result = qword_27F239F38;
  if (!qword_27F239F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F12E9E8()
{
  sub_24F12EB8C(319, &qword_27F234AD8, type metadata accessor for LeaderboardEntry);
  if (v0 <= 0x3F)
  {
    sub_24F12EB8C(319, &qword_27F239F48, type metadata accessor for LeaderboardEntriesDataIntent);
    if (v1 <= 0x3F)
    {
      sub_24F91FDC8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F12EB8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F12EC0C()
{
  result = qword_27F239F68;
  if (!qword_27F239F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239F68);
  }

  return result;
}

uint64_t sub_24F12EC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_24F12ED2C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LeaderboardEntry();
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LeaderboardEntry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24F12F0BC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24F12EE58(0, v2, 1, a1);
  }
}

void sub_24F12EE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for LeaderboardEntry();
  MEMORY[0x28223BE20](v8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    while (1)
    {
      sub_24F12EC60(v21, v16, type metadata accessor for LeaderboardEntry);
      sub_24F12EC60(v19, v12, type metadata accessor for LeaderboardEntry);
      v22 = *(v8 + 24);
      v23 = v8;
      v24 = *&v16[v22];
      v25 = *&v12[v22];
      sub_24F130800(v12, type metadata accessor for LeaderboardEntry);
      sub_24F130800(v16, type metadata accessor for LeaderboardEntry);
      v26 = v24 < v25;
      v8 = v23;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_24F130860(v21, v38, type metadata accessor for LeaderboardEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_24F130860(v27, v19, type metadata accessor for LeaderboardEntry);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24F12F0BC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for LeaderboardEntry();
  v9 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v115 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v123 = &v107 - v12;
  MEMORY[0x28223BE20](v13);
  v125 = &v107 - v14;
  MEMORY[0x28223BE20](v15);
  v124 = &v107 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
LABEL_99:
      v127 = v102;
      a4 = *(v102 + 2);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *&v102[16 * a4];
          v105 = v102;
          v9 = *&v102[16 * a4 + 24];
          sub_24F12FA1C(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *&v102[16 * a4 + 16], *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_24E86164C(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[16 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          sub_24E8615C0(a4 - 1);
          v102 = v127;
          a4 = *(v127 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v102 = sub_24E86164C(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v116 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v109 = v6;
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v124;
      sub_24F12EC60(v5, v124, type metadata accessor for LeaderboardEntry);
      v25 = v125;
      sub_24F12EC60(v22 + v23 * v20, v125, type metadata accessor for LeaderboardEntry);
      v26 = *(v126 + 24);
      v27 = *(v24 + v26);
      v119 = *(v25 + v26);
      v120 = v27;
      sub_24F130800(v25, type metadata accessor for LeaderboardEntry);
      sub_24F130800(v24, type metadata accessor for LeaderboardEntry);
      v110 = v20;
      v28 = v20 + 2;
      v121 = v23;
      v29 = v22 + v23 * v28;
      while (v17 != v28)
      {
        LODWORD(v122) = v120 < v119;
        v30 = v124;
        sub_24F12EC60(v29, v124, type metadata accessor for LeaderboardEntry);
        v31 = v125;
        sub_24F12EC60(v5, v125, type metadata accessor for LeaderboardEntry);
        v32 = *(v126 + 24);
        v33 = *(v30 + v32);
        v34 = *(v31 + v32);
        sub_24F130800(v31, type metadata accessor for LeaderboardEntry);
        sub_24F130800(v30, type metadata accessor for LeaderboardEntry);
        ++v28;
        v29 += v121;
        v5 += v121;
        if (((v122 ^ (v33 >= v34)) & 1) == 0)
        {
          v17 = v28 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v20 = v110;
      a4 = v111;
      if (v120 < v119)
      {
        if (v17 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v17)
        {
          v35 = v121 * (v17 - 1);
          v36 = v17 * v121;
          v120 = v17;
          v37 = v17;
          v38 = v110;
          v39 = v110 * v121;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              sub_24F130860(v40 + v39, v115, type metadata accessor for LeaderboardEntry);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_24F130860(v115, v40 + v35, type metadata accessor for LeaderboardEntry);
            }

            ++v38;
            v35 -= v121;
            v36 -= v121;
            v39 += v121;
          }

          while (v38 < v37);
          a3 = v113;
          v9 = v108;
          v20 = v110;
          a4 = v111;
          v17 = v120;
        }
      }
    }

    v41 = a3[1];
    if (v17 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v17, v20))
    {
      goto LABEL_126;
    }

    if (v17 - v20 >= a4)
    {
LABEL_32:
      v43 = v17;
      if (v17 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v41)
    {
      v42 = a3[1];
    }

    else
    {
      v42 = v20 + a4;
    }

    if (v42 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v17 == v42)
    {
      goto LABEL_32;
    }

    v88 = *a3;
    v89 = *(v9 + 72);
    v90 = *a3 + v89 * (v17 - 1);
    v91 = v20;
    v92 = -v89;
    v109 = v6;
    v110 = v91;
    v93 = v91 - v17;
    v122 = v88;
    v114 = v89;
    v5 = v88 + v17 * v89;
    v94 = v126;
    v117 = v42;
LABEL_86:
    v119 = v93;
    v120 = v17;
    v118 = v5;
    v121 = v90;
    v95 = v90;
LABEL_87:
    a4 = v124;
    sub_24F12EC60(v5, v124, type metadata accessor for LeaderboardEntry);
    v96 = v125;
    sub_24F12EC60(v95, v125, type metadata accessor for LeaderboardEntry);
    v97 = *(v94 + 24);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97);
    sub_24F130800(v96, type metadata accessor for LeaderboardEntry);
    sub_24F130800(a4, type metadata accessor for LeaderboardEntry);
    if (v98 < v99)
    {
      break;
    }

    v94 = v126;
LABEL_85:
    v17 = v120 + 1;
    v90 = v121 + v114;
    v93 = v119 - 1;
    v5 = v118 + v114;
    v43 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v20 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v116;
    }

    else
    {
      v19 = sub_24E615ED8(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_24E615ED8((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v19[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v19[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v19[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v19[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v19[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v19 + 4);
            v49 = *(v19 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v19[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v19[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        sub_24F12FA1C(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_24E86164C(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v127 = v85;
        sub_24E8615C0(v47);
        v19 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v117;
    a4 = v111;
    if (v117 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v100 = v123;
    sub_24F130860(v5, v123, type metadata accessor for LeaderboardEntry);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_24F130860(v100, v95, type metadata accessor for LeaderboardEntry);
    v95 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_24F12FA1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LeaderboardEntry();
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v40 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v53 = a1;
  v52 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v44 = a4;
      v45 = a1;
      v48 = v8;
      v43 = -v13;
      do
      {
        v41 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = a2;
        v47 = a2 + v26;
        while (1)
        {
          if (v28 <= a1)
          {
            v53 = v28;
            v51 = v41;
            goto LABEL_60;
          }

          v31 = a3;
          v42 = v25;
          a3 += v26;
          v32 = v27 + v26;
          v33 = v49;
          sub_24F12EC60(v27 + v26, v49, type metadata accessor for LeaderboardEntry);
          v34 = v50;
          sub_24F12EC60(v29, v50, type metadata accessor for LeaderboardEntry);
          v35 = *(v8 + 24);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35);
          sub_24F130800(v34, type metadata accessor for LeaderboardEntry);
          sub_24F130800(v33, type metadata accessor for LeaderboardEntry);
          if (v36 < v37)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || a3 >= v27)
          {
            v30 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v47;
            v8 = v30;
            v26 = v43;
          }

          else
          {
            v29 = v47;
            v8 = v48;
            v26 = v43;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v32;
          a1 = v45;
          v28 = v46;
          if (v32 <= v44)
          {
            a2 = v46;
            goto LABEL_59;
          }
        }

        v38 = v44;
        if (v31 < v46 || a3 >= v46)
        {
          a2 = v47;
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
          v26 = v43;
        }

        else
        {
          v39 = v31 == v46;
          a2 = v47;
          v8 = v48;
          v25 = v42;
          v26 = v43;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v45;
      }

      while (v27 > v38);
    }

LABEL_59:
    v53 = a2;
    v51 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v51 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = a3;
      v48 = v8;
      do
      {
        v19 = v49;
        sub_24F12EC60(a2, v49, type metadata accessor for LeaderboardEntry);
        v20 = v50;
        sub_24F12EC60(a4, v50, type metadata accessor for LeaderboardEntry);
        v21 = *(v8 + 24);
        v22 = *(v19 + v21);
        v23 = *(v20 + v21);
        sub_24F130800(v20, type metadata accessor for LeaderboardEntry);
        sub_24F130800(v19, type metadata accessor for LeaderboardEntry);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            v8 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v46;
          }

          else
          {
            v24 = v46;
            v8 = v48;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v46;
        }

        else
        {
          v24 = v46;
          v8 = v48;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v53 = a1;
      }

      while (a4 < v47 && a2 < v24);
    }
  }

LABEL_60:
  sub_24F8FB008(&v53, &v52, &v51);
}

uint64_t sub_24F12FF88(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_24F13007C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange) = result;
  return result;
}

__n128 sub_24F1300D4()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

__n128 sub_24F130170()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_24F1301CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_24F130238(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LeaderboardEntry() + 20));
  v3 = *v1;
  v2 = v1[1];
  v4 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v5 = sub_24F92B098();
  LOBYTE(v4) = [v4 availableForPlayerID_];

  if ((v4 & 1) == 0)
  {
    MEMORY[0x253050C20](58, 0xE100000000000000);
    v6 = sub_24F92CD88();
    MEMORY[0x253050C20](v6);
  }

  MEMORY[0x253050C20](v3, v2);

  return 0x5F7972746E65;
}

void *sub_24F13035C(uint64_t a1)
{
  v2 = type metadata accessor for LeaderboardEntry();
  v44 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_19:
    v19 = sub_24E6106D4(MEMORY[0x277D84F90]);
    v43 = v9[2];
    if (v43)
    {
      v20 = 0;
      v8 = &v6[*(v2 + 20)];
      v42 = v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      while (1)
      {
        if (v20 >= v9[2])
        {
          goto LABEL_41;
        }

        v22 = *(v44 + 72);
        sub_24F12EC60(&v42[v22 * v20], v6, type metadata accessor for LeaderboardEntry);
        v24 = *v8;
        v23 = v8[1];
        sub_24F130860(v6, v45, type metadata accessor for LeaderboardEntry);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v19;
        v26 = sub_24E76D644(v24, v23);
        v28 = v19[2];
        v29 = (v27 & 1) == 0;
        v17 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v17)
        {
          goto LABEL_42;
        }

        v31 = v27;
        if (v19[3] < v30)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_29;
        }

        v36 = v26;
        sub_24E8B5DB0();
        v26 = v36;
        if (v31)
        {
LABEL_21:
          v21 = v26;

          v19 = v46;
          sub_24E6C2EAC(v45, v46[7] + v21 * v22);
          goto LABEL_22;
        }

LABEL_30:
        v19 = v46;
        v46[(v26 >> 6) + 8] |= 1 << v26;
        v33 = (v19[6] + 16 * v26);
        *v33 = v24;
        v33[1] = v23;
        sub_24F130860(v45, v19[7] + v26 * v22, type metadata accessor for LeaderboardEntry);
        v34 = v19[2];
        v17 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v17)
        {
          goto LABEL_44;
        }

        v19[2] = v35;
LABEL_22:
        if (v43 == ++v20)
        {
          goto LABEL_34;
        }
      }

      sub_24E8A7BA8(v30, isUniquelyReferenced_nonNull_native);
      v26 = sub_24E76D644(v24, v23);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_46;
      }

LABEL_29:
      if (v31)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

LABEL_34:

    v37 = v19[2];
    if (v37)
    {
      v38 = sub_24EAE686C(v19[2], 0);
      sub_24EAE9418(&v46, v38 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v37, v19);
      v40 = v39;

      sub_24E6586B4();
      if (v40 == v37)
      {
LABEL_38:
        v46 = v38;

        sub_24F12797C(&v46);

        return v46;
      }

      __break(1u);
    }

    v38 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v8 = (a1 + 32);
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v8;
    v11 = *(*v8 + 16);
    v12 = v9[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    v14 = swift_isUniquelyReferenced_nonNull_native();
    if (v14 && v13 <= v9[3] >> 1)
    {
      if (!*(v10 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v9 = sub_24E6168F0(v14, v15, 1, v9);
      if (!*(v10 + 16))
      {
LABEL_3:

        if (v11)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    if ((v9[3] >> 1) - v9[2] < v11)
    {
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();

    if (v11)
    {
      v16 = v9[2];
      v17 = __OFADD__(v16, v11);
      v18 = v16 + v11;
      if (v17)
      {
        goto LABEL_45;
      }

      v9[2] = v18;
    }

LABEL_4:
    ++v8;
    if (!--v7)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_24F92CF88();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24F130800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F130860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F1308F8()
{
  result = qword_27F239F80;
  if (!qword_27F239F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239F80);
  }

  return result;
}

uint64_t sub_24F130A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F929058();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F130B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F929058();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for JSRequestIntentFetchError()
{
  result = qword_27F239F88;
  if (!qword_27F239F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F130C0C()
{
  result = sub_24F929058();
  if (v1 <= 0x3F)
  {
    result = sub_24F0ABFD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F130C90()
{
  v8 = *(v0 + *(type metadata accessor for JSRequestIntentFetchError() + 20));
  v1 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_24F130FF0(v6);
    swift_getErrorValue();
    return sub_24F92CFE8();
  }
}

uint64_t sub_24F130DA8(void (*a1)(uint64_t, unint64_t, __int128 *), uint64_t a2)
{
  v5 = sub_24F929058();
  MEMORY[0x25304DE70](v16, v5, MEMORY[0x277D21DD0]);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v6 = sub_24F9284D8();
  *(&v13 + 1) = MEMORY[0x277D837D0];
  *&v12 = v6;
  *(&v12 + 1) = v7;
  a1(1684957547, 0xE400000000000000, &v12);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v15 = *(v2 + *(type metadata accessor for JSRequestIntentFetchError() + 20));
  v8 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0);
  if (swift_dynamicCast())
  {
    sub_24E612E28(&v12, v16);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v10 + 24))(a1, a2, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_24F130FF0(&v12);
  }
}

unint64_t sub_24F130F6C(uint64_t a1)
{
  result = sub_24F130F94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24F130F94()
{
  result = qword_27F239F98;
  if (!qword_27F239F98)
  {
    type metadata accessor for JSRequestIntentFetchError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239F98);
  }

  return result;
}

uint64_t sub_24F130FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InAppPurchaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_24F131144(a1, a7 + 200);
  sub_24E615E00(a2, a7);
  sub_24E615E00(a3, a7 + 40);
  sub_24E90E558(a4, a7 + 80);
  sub_24E615E00(a5, a7 + 120);
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_24F922268();
  __swift_destroy_boxed_opaque_existential_1(a5);
  sub_24E90ED10(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_24F13117C(a1);
  return __swift_destroy_boxed_opaque_existential_1(a6);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.init(iconSize:iconMargin:titlePrimaryLineSpace:titleSecondaryLineSpace:subtitleLineSpace:descriptionPrimaryLineSpace:descriptionSecondaryLineSpace:offerButtonMargin:offerButtonSize:isHeightConstrained:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12)
{
  *a9 = *a1;
  sub_24E612C80(a2, a9 + 8);
  sub_24E612C80(a3, a9 + 48);
  sub_24E612C80(a4, a9 + 88);
  sub_24E612C80(a5, a9 + 128);
  sub_24E612C80(a6, a9 + 168);
  sub_24E612C80(a7, a9 + 208);
  result = sub_24E612C80(a8, a9 + 248);
  *(a9 + 288) = a10;
  *(a9 + 296) = a11;
  *(a9 + 304) = a12;
  return result;
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.iconSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.iconMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);

  return sub_24E612C80(a1, v1 + 8);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.titlePrimaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);

  return sub_24E612C80(a1, v1 + 48);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.titleSecondaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 88);

  return sub_24E612C80(a1, v1 + 88);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.subtitleLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 128);

  return sub_24E612C80(a1, v1 + 128);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.descriptionPrimaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 168);

  return sub_24E612C80(a1, v1 + 168);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.descriptionSecondaryLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 208);

  return sub_24E612C80(a1, v1 + 208);
}

uint64_t InAppPurchaseLockupViewLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 248);

  return sub_24E612C80(a1, v1 + 248);
}

uint64_t InAppPurchaseLockupViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v130 = a2;
  v124 = sub_24F922938();
  v121 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v120 = &v101 - v7;
  v125 = sub_24F922998();
  v122 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v119 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9227B8();
  v113 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v114 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F9227C8();
  v117 = *(v11 - 8);
  v118 = v11;
  MEMORY[0x28223BE20](v11);
  v116 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F9227F8();
  v111 = *(v13 - 8);
  v112 = v13;
  MEMORY[0x28223BE20](v13);
  v109 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_24F922838();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F922868();
  v106 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v126 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F922888();
  v128 = *(v18 - 8);
  *&v129 = v18;
  MEMORY[0x28223BE20](v18);
  v127 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24F9228C8();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  v105 = sub_24F9228E8();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v25) = *(v3 + 504);
  v131 = a1;
  v115 = v9;
  if (v25 == 1)
  {
    v157[0] = 0;
    v27 = *(v3 + 64);
    v28 = *(v3 + 72);
    v29 = __swift_project_boxed_opaque_existential_1((v3 + 40), v27);
    *(&v133[0] + 1) = v27;
    *&v133[1] = *(v28 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v132);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v29, v27);
    v144 = 0u;
    v145 = 0u;
    v146 = 0;
    sub_24E615E00(&v132, &v140);
    sub_24E615E00(v3 + 248, v143);
    LOWORD(v142) = 1;
    v147 = 8;
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_24E9D682C(&v140, &v132);
    v31 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_24E617A24((v32 > 1), v33 + 1, 1, v31);
    }

    sub_24E9D6888(&v140);
    *(v31 + 2) = v33 + 1;
    v34 = &v31[136 * v33];
    v35 = v135;
    v36 = v133[1];
    v37 = v133[0];
    *(v34 + 5) = v134;
    *(v34 + 6) = v35;
    *(v34 + 3) = v37;
    *(v34 + 4) = v36;
    v38 = v138;
    v39 = v137;
    v40 = v136;
    *(v34 + 20) = v139;
    *(v34 + 8) = v39;
    *(v34 + 9) = v38;
    *(v34 + 7) = v40;
    *(v34 + 2) = v132;
    sub_24E90E558(v3 + 80, &v140);
    v101 = v16;
    if (v141)
    {
      sub_24E612C80(&v140, v148);
      v41 = v149;
      v42 = v150;
      v43 = __swift_project_boxed_opaque_existential_1(v148, v149);
      *(&v133[0] + 1) = v41;
      *&v133[1] = *(v42 + 8);
      v44 = __swift_allocate_boxed_opaque_existential_1(&v132);
      (*(*(v41 - 8) + 16))(v44, v43, v41);
      v144 = 0u;
      v145 = 0u;
      v146 = 0;
      sub_24E615E00(&v132, &v140);
      sub_24E615E00(v3 + 328, v143);
      LOWORD(v142) = 1;
      v147 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v132);
      sub_24E9D682C(&v140, &v132);
      v46 = *(v31 + 2);
      v45 = *(v31 + 3);
      if (v46 >= v45 >> 1)
      {
        v31 = sub_24E617A24((v45 > 1), v46 + 1, 1, v31);
      }

      sub_24E9D6888(&v140);
      *(v31 + 2) = v46 + 1;
      v47 = &v31[136 * v46];
      v48 = v135;
      v49 = v133[1];
      v50 = v133[0];
      *(v47 + 5) = v134;
      *(v47 + 6) = v48;
      *(v47 + 3) = v50;
      *(v47 + 4) = v49;
      v51 = v138;
      v52 = v137;
      v53 = v136;
      *(v47 + 20) = v139;
      *(v47 + 8) = v52;
      *(v47 + 9) = v51;
      *(v47 + 7) = v53;
      *(v47 + 2) = v132;
      __swift_destroy_boxed_opaque_existential_1(v148);
    }

    else
    {
      sub_24E90ED10(&v140);
    }

    v54 = *(v3 + 144);
    v55 = *(v3 + 152);
    v56 = __swift_project_boxed_opaque_existential_1((v3 + 120), v54);
    *(&v133[0] + 1) = v54;
    *&v133[1] = *(v55 + 8);
    v57 = __swift_allocate_boxed_opaque_existential_1(&v132);
    (*(*(v54 - 8) + 16))(v57, v56, v54);
    v144 = 0u;
    v145 = 0u;
    v146 = 0;
    sub_24E615E00(&v132, &v140);
    sub_24E615E00(v3 + 368, v143);
    LOWORD(v142) = 1;
    v147 = 8;
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_24E9D682C(&v140, &v132);
    v59 = *(v31 + 2);
    v58 = *(v31 + 3);
    if (v59 >= v58 >> 1)
    {
      v31 = sub_24E617A24((v58 > 1), v59 + 1, 1, v31);
      v60 = v157[0];
    }

    else
    {
      v60 = 0;
    }

    sub_24E9D6888(&v140);
    *(v31 + 2) = v59 + 1;
    v61 = &v31[136 * v59];
    v62 = v134;
    v63 = v135;
    v64 = v133[1];
    *(v61 + 3) = v133[0];
    *(v61 + 4) = v64;
    *(v61 + 5) = v62;
    *(v61 + 6) = v63;
    v65 = v138;
    v66 = v137;
    v67 = v136;
    *(v61 + 20) = v139;
    *(v61 + 8) = v66;
    *(v61 + 9) = v65;
    *(v61 + 7) = v67;
    *(v61 + 2) = v132;
    *&v141 = &type metadata for _VerticalFlowLayout;
    *(&v141 + 1) = sub_24EBA3CDC();
    v68 = sub_24F132CBC();
    LOBYTE(v140) = v60;
    v142 = v68;
    *(&v140 + 1) = v31;
    sub_24E615E00(v3 + 40, &v132);
    __swift_project_boxed_opaque_existential_1(&v132, *(&v133[0] + 1));
    sub_24E90E558(v3 + 80, v148);
    sub_24E90ED10(v148);
    sub_24F922478();
    __swift_destroy_boxed_opaque_existential_1(&v132);
    sub_24E90E558(v3 + 80, &v132);
    if (*(&v133[0] + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v132, *(&v133[0] + 1));
      sub_24F922478();
      __swift_destroy_boxed_opaque_existential_1(&v132);
    }

    else
    {
      sub_24E90ED10(&v132);
    }

    v16 = v101;
    __swift_project_boxed_opaque_existential_1((v3 + 120), *(v3 + 144));
    sub_24F922478();
    a1 = v131;
  }

  else
  {
    sub_24E615E00(v3 + 40, &v132);
    sub_24E90E558(v3 + 80, v148);
    sub_24E615E00(v3 + 120, v157);
    sub_24E615E00(v3 + 248, v156);
    sub_24E615E00(v3 + 288, v154);
    sub_24E615E00(v3 + 328, v153);
    sub_24E615E00(v3 + 368, &v152);
    sub_24E615E00(v3 + 408, &v151);
    *&v141 = sub_24F922B18();
    *(&v141 + 1) = MEMORY[0x277D229B8];
    v142 = MEMORY[0x277D229C0];
    __swift_allocate_boxed_opaque_existential_1(&v140);
    sub_24F922B08();
  }

  v69 = *(v3 + 200);
  v148[0] = a1;
  (*(*v69 + 104))(&v132, v148);
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
  sub_24F922268();
  v70 = [a1 traitCollection];
  v71 = sub_24F92BF98();

  if (v71)
  {
    v129 = v141;
    v72 = v141;
    v73 = __swift_project_boxed_opaque_existential_1(&v140, v141);
    *(v133 + 8) = v129;
    v74 = __swift_allocate_boxed_opaque_existential_1(&v132);
    (*(*(v72 - 8) + 16))(v74, v73, v72);
    sub_24E615E00(v157, v148);
    sub_24E615E00(v3 + 208, v156);
    sub_24E615E00(v3 + 160, v154);
    sub_24E615E00(v3 + 448, v153);
    v75 = *MEMORY[0x277D22898];
    v76 = *(v102 + 104);
    v77 = v104;
    v76(v24, v75, v104);
    v76(v21, v75, v77);
    sub_24F9228D8();
    sub_24F9228B8();
    (*(v103 + 8))(v26, v105);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v3 + 160), *(v3 + 184));
    sub_24F922298();
    v79 = v78;
    (*(v106 + 104))(v126, *MEMORY[0x277D22870], v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740);
    sub_24F922848();
    v80 = swift_allocObject();
    v81 = MEMORY[0x277D85048];
    *(v80 + 16) = xmmword_24F93DE60;
    *(&v133[0] + 1) = v81;
    *&v133[1] = MEMORY[0x277D225F8];
    *&v132 = v79;
    v82 = v107;
    v83 = v108;
    v84 = v110;
    (*(v108 + 104))(v107, *MEMORY[0x277D22848], v110);
    v148[0] = MEMORY[0x277D84F90];
    sub_24E8EF510();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
    sub_24E8EF568();
    v85 = v109;
    v86 = v112;
    sub_24F92C6A8();
    sub_24F922818();
    (*(v111 + 8))(v85, v86);
    (*(v83 + 8))(v82, v84);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    v87 = sub_24F922418();
    v88 = MEMORY[0x277D226F0];
    *(&v133[0] + 1) = v87;
    *&v133[1] = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v132);
    sub_24F922408();
    v89 = v127;
    sub_24F922878();
    v90 = v129;
    *(&v133[0] + 1) = v129;
    v133[1] = MEMORY[0x277D22878];
    v91 = __swift_allocate_boxed_opaque_existential_1(&v132);
    (*(v128 + 16))(v91, v89, v90);
    sub_24E8F997C(&v140, v148);
    (*(v113 + 104))(v114, *MEMORY[0x277D22828], v115);
    sub_24E615E00(v3 + 448, v156);
    v92 = v116;
    sub_24F9227A8();
    v93 = v118;
    *(&v133[0] + 1) = v118;
    *&v133[1] = MEMORY[0x277D22830];
    v94 = __swift_allocate_boxed_opaque_existential_1(&v132);
    v95 = v117;
    (*(v117 + 16))(v94, v92, v93);
    sub_24E615E00(v157, v148);
    sub_24E615E00(v3 + 208, v156);
    v155 = 0;
    memset(v154, 0, sizeof(v154));
    v153[3] = v87;
    v153[4] = v88;
    __swift_allocate_boxed_opaque_existential_1(v153);
    sub_24F922408();
    v96 = *MEMORY[0x277D228C8];
    v97 = *(v121 + 104);
    v98 = v124;
    v97(v120, v96, v124);
    v97(v123, v96, v98);
    v99 = v119;
    sub_24F922978();
    sub_24F922958();
    (*(v122 + 8))(v99, v125);
    (*(v95 + 8))(v92, v93);
    (*(v128 + 8))(v127, v129);
  }

  __swift_destroy_boxed_opaque_existential_1(v157);
  return __swift_destroy_boxed_opaque_existential_1(&v140);
}

uint64_t sub_24F1328C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24F132F80();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit29InAppPurchaseLockupViewLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t *a1, void *a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v17 = a2;
  (*(*v11 + 104))(&v18, &v17, v8);
  __swift_project_boxed_opaque_existential_1(a1 + 6, a1[9]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12 = *(v7 + 8);
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1(a1 + 21, a1[24]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1(a1 + 26, a1[29]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12(v10, v6);
  __swift_project_boxed_opaque_existential_1(a1 + 31, a1[34]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v12(v10, v6);
  v13 = [a2 traitCollection];
  v14 = sub_24F92BF98();

  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v12(v10, v6);
  }

  return a3;
}

unint64_t sub_24F132CBC()
{
  result = qword_27F239FA0;
  if (!qword_27F239FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239FA0);
  }

  return result;
}

unint64_t sub_24F132D14()
{
  result = qword_27F239FA8;
  if (!qword_27F239FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239FA8);
  }

  return result;
}

uint64_t sub_24F132D70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 505))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F132DB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 504) = 0;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 505) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 505) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F132E94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
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

uint64_t sub_24F132EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 305) = 1;
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

    *(result + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F132F80()
{
  result = qword_27F239FB0;
  if (!qword_27F239FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239FB0);
  }

  return result;
}

uint64_t ShareSheetArticleMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetArticleMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ShareSheetArticleMetadata.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetArticleMetadata.text.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetArticleMetadata.subtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *ShareSheetArticleMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v47 = a2;
  v5 = *v2;
  v42 = v3;
  v43 = v5;
  v6 = sub_24F9285B8();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v17, v8);
  if (!v20)
  {
    v33 = 25705;
    v34 = 0xE200000000000000;
LABEL_6:
    v35 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v36 = v33;
    v36[1] = v34;
    v36[2] = v43;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v45 + 8))(v47, v46);
    v21(a1, v8);
    type metadata accessor for ShareSheetArticleMetadata();
    v26 = v44;
    swift_deallocPartialClassInstance();
    return v26;
  }

  v40 = v18;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v21(v15, v8);
  v25 = a1;
  if (!v24)
  {
    v33 = 1954047348;

    v34 = 0xE400000000000000;
    goto LABEL_6;
  }

  v26 = v44;
  v44[2] = v40;
  v26[3] = v20;
  v26[4] = v22;
  v26[5] = v24;
  v39 = v25;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v21(v12, v8);
  v26[6] = v27;
  v26[7] = v29;
  type metadata accessor for Artwork();
  sub_24F928398();
  v43 = v8;
  v31 = v45;
  v30 = v46;
  v32 = v47;
  (*(v45 + 16))(v41, v47, v46);
  sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  (*(v31 + 8))(v32, v30);
  v21(v39, v43);
  v26[8] = v48;
  return v26;
}

void *ShareSheetArticleMetadata.__allocating_init(id:text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

void *ShareSheetArticleMetadata.init(id:text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  return v7;
}

uint64_t ShareSheetArticleMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetArticleMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24F133698@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetArticleMetadata();
  v7 = swift_allocObject();
  result = ShareSheetArticleMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t AppSearchResult.__allocating_init(id:lockup:shouldDisplayMedia:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a5;
  v10 = a3;
  v11 = sub_24F91F6B8();
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = swift_allocObject();
  v31 = *a4;
  v18 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) = a2;
  swift_beginAccess();
  *(v17 + v18) = (v10 == 2) | a3 & 1;
  v19 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830);
  v20 = *(a2 + 264);
  if (v20)
  {
    v21 = type metadata accessor for Action();
    v22 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = v33;
  sub_24E60169C(v33, v16, &qword_27F213E68);
  *(v17 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v39, &v36, &qword_27F235830);
  if (*(&v37 + 1))
  {
    v24 = v37;
    *(v17 + 24) = v36;
    *(v17 + 40) = v24;
    *(v17 + 56) = v38;
  }

  else
  {

    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v30 + 8))(v13, v11);
    v34 = v25;
    v35 = v27;
    v23 = v33;
    v19 = a1;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  sub_24E601704(v23, &qword_27F213E68);
  sub_24E601704(v19, &qword_27F235830);
  sub_24E601704(v39, &qword_27F235830);
  *(v17 + 64) = v20;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0;
  *(v17 + 88) = v21;
  *(v17 + 96) = v22;
  sub_24E65E0D4(v16, v17 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v17 + 17) = 0;
  *(v17 + 16) = v31;
  v28 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v17 + v28) = v32;
  return v17;
}

uint64_t AppSearchResult.init(id:lockup:shouldDisplayMedia:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v37 = a6;
  v13 = a3;
  v14 = sub_24F91F6B8();
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v35 - v18;
  v36 = *a4;
  v20 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) = a2;
  swift_beginAccess();
  *(v7 + v20) = (v13 == 2) | a3 & 1;
  sub_24E60169C(a1, v46, &qword_27F235830);
  v21 = *(a2 + 264);
  if (v21)
  {
    v22 = type metadata accessor for Action();
    v23 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  sub_24E60169C(a5, v19, &qword_27F213E68);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v46, &v40, &qword_27F235830);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {

    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v14;
    v26 = v23;
    v27 = a5;
    v28 = a1;
    v29 = v22;
    v31 = v30;
    (*(v35 + 8))(v16, v25);
    v38 = v24;
    v39 = v31;
    v22 = v29;
    a1 = v28;
    a5 = v27;
    v23 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830);
  }

  sub_24E601704(a5, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v46, &qword_27F235830);
  v32 = v44;
  *(v7 + 24) = v43;
  *(v7 + 40) = v32;
  *(v7 + 56) = v45;
  *(v7 + 64) = v21;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = v22;
  *(v7 + 96) = v23;
  sub_24E65E0D4(v19, v7 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v7 + 17) = 0;
  *(v7 + 16) = v36;
  v33 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v7 + v33) = v37;

  return v7;
}

uint64_t sub_24F133EC4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F133F1C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

uint64_t AppSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t AppSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1340E4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

uint64_t sub_24F134150(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = v54 - v7;
  v59 = sub_24F91F6B8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v54 - v13;
  v69 = sub_24F928388();
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v62 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = v54 - v17;
  MEMORY[0x28223BE20](v18);
  v60 = v54 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v54 - v21;
  v67 = a1;
  sub_24F928398();
  v23 = *(v10 + 16);
  (v23)(v14, a2, v9);
  type metadata accessor for MixedMediaLockup();
  swift_allocObject();
  v24 = v65;
  v25 = MixedMediaLockup.init(deserializing:using:)(v22, v14);
  if (v24)
  {
    (*(v10 + 8))(a2, v9);
    (*(v66 + 8))(v67, v69);
  }

  else
  {
    v26 = v25;
    v54[0] = v23;
    v54[1] = v10 + 16;
    v54[2] = 0;
    v55 = v10;
    v56 = v9;
    v65 = a2;
    v27 = v60;
    v28 = v67;
    sub_24F928398();
    v29 = sub_24F928348();
    if (v30)
    {
      v75 = v29;
      v76 = v30;
    }

    else
    {
      v31 = v57;
      sub_24F91F6A8();
      v32 = sub_24F91F668();
      v34 = v33;
      (*(v58 + 8))(v31, v59);
      v75 = v32;
      v76 = v34;
    }

    sub_24F92C7F8();
    v35 = *(v66 + 8);
    v36 = v69;
    v35(v27, v69);
    v37 = v62;
    v38 = v61;
    sub_24F928398();
    v39 = sub_24F928278();
    v40 = v38;
    LOBYTE(v38) = v39;
    LODWORD(v62) = v39;
    v35(v40, v36);
    sub_24F928398();
    sub_24EABA874();
    sub_24F928208();
    v67 = v35;
    v35(v37, v36);
    LODWORD(v66) = v78[63];
    sub_24E60169C(v26 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v68, &qword_27F213E68);
    type metadata accessor for SearchAdOpportunity();

    sub_24F928398();
    (v54[0])(v63, v65, v56);
    sub_24EE81B98(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
    sub_24F929548();
    v63 = v77;
    type metadata accessor for AppSearchResult();
    v23 = swift_allocObject();
    v41 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
    *(v23 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
    *(v23 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) = v26;
    LOBYTE(v36) = (v62 == 2) | v38;
    swift_beginAccess();
    *(v23 + v41) = v36 & 1;
    sub_24E60169C(v78, &v75, &qword_27F235830);
    v42 = *(v26 + 264);

    if (v42)
    {
      v43 = type metadata accessor for Action();
      v44 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    sub_24E60169C(v68, v64, &qword_27F213E68);
    *(v23 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_24E60169C(&v75, &v72, &qword_27F235830);
    v45 = v65;
    if (*(&v73 + 1))
    {
      v46 = v28;
      v47 = v73;
      *(v23 + 24) = v72;
      *(v23 + 40) = v47;
      *(v23 + 56) = v74;
    }

    else
    {
      v48 = v57;
      sub_24F91F6A8();
      v49 = sub_24F91F668();
      v51 = v50;
      (*(v58 + 8))(v48, v59);
      v70 = v49;
      v71 = v51;
      v45 = v65;
      v46 = v28;
      sub_24F92C7F8();
      sub_24E601704(&v72, &qword_27F235830);
    }

    (*(v55 + 8))(v45, v56);
    v67(v46, v69);
    sub_24E601704(&v75, &qword_27F235830);
    sub_24E601704(v68, &qword_27F213E68);
    sub_24E601704(v78, &qword_27F235830);
    *(v23 + 64) = v42;
    *(v23 + 72) = 0;
    *(v23 + 80) = 0;
    *(v23 + 88) = v43;
    *(v23 + 96) = v44;
    sub_24E65E0D4(v64, v23 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
    *(v23 + 17) = 0;
    *(v23 + 16) = v66;
    v52 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v23 + v52) = v63;
  }

  return v23;
}

uint64_t sub_24F134AB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24F134B0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t type metadata accessor for AppSearchResult()
{
  result = qword_27F239FC0;
  if (!qword_27F239FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Commerce.__allocating_init(objectGraph:intentDispatcher:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24F13BA90(a1, a2);

  return v4;
}

uint64_t Commerce.init(objectGraph:intentDispatcher:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F13BA90(a1, a2);

  return v2;
}

uint64_t sub_24F134D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = sub_24F929C38();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v11 = (*(a3 + 56))(ObjectType, a3);
  if (v11)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v15 = swift_getObjectType();
  v16 = *(a1 + 48);
  v54 = *(a1 + 40);
  v55 = v16;
  LOBYTE(v44) = *a1;
  v17 = v13;
  v18 = *(v14 + 64);

  v40 = v14;
  v18(&v54, &v44, v15, v14);

  v19 = *(a1 + 64);
  if (v19)
  {
    v54 = *(a1 + 56);
    v55 = v19;
    LOBYTE(v44) = 0;
    v18(&v54, &v44, v15, v40);
  }

  sub_24EB69CEC(a1, &v56);
  v54 = 0xD000000000000018;
  v55 = 0x800000024FA6D0C0;
  sub_24F929C28();

  sub_24F928FE8();
  v20 = v39;
  (*(v7 + 104))(v9, *MEMORY[0x277D220E8], v39);
  v21 = sub_24F929BD8();

  (*(v7 + 8))(v9, v20);
  sub_24EB46480(&v54, v21, "GameStoreKit/Commerce.swift", 27, 2);
  *(&v45 + 1) = sub_24F929638();
  *&v46 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v44);

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FD0);
  sub_24F13C0AC(&qword_27F239FD8, &qword_27F239FD0);
  v22 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  sub_24EB69CEC(a1, &v44);
  sub_24E615E00(v4 + 40, &v41);
  v23 = swift_allocObject();
  v24 = v51;
  *(v23 + 112) = v50;
  *(v23 + 128) = v24;
  v25 = v53;
  *(v23 + 144) = v52;
  *(v23 + 160) = v25;
  v26 = v47;
  *(v23 + 48) = v46;
  *(v23 + 64) = v26;
  v27 = v49;
  *(v23 + 80) = v48;
  *(v23 + 96) = v27;
  v28 = v45;
  *(v23 + 16) = v44;
  *(v23 + 32) = v28;
  sub_24E612C80(&v41, v23 + 176);
  v29 = v40;
  *(v23 + 216) = v17;
  *(v23 + 224) = v29;
  sub_24EB69CEC(a1, &v44);
  v30 = swift_allocObject();
  *(v30 + 16) = v17;
  *(v30 + 24) = v29;
  v31 = v51;
  *(v30 + 128) = v50;
  *(v30 + 144) = v31;
  v32 = v53;
  *(v30 + 160) = v52;
  *(v30 + 176) = v32;
  v33 = v47;
  *(v30 + 64) = v46;
  *(v30 + 80) = v33;
  v34 = v49;
  *(v30 + 96) = v48;
  *(v30 + 112) = v34;
  v35 = v45;
  *(v30 + 32) = v44;
  *(v30 + 48) = v35;
  v36 = sub_24E69A5C4(0, &qword_27F222300);
  swift_unknownObjectRetain_n();
  v37 = sub_24F92BEF8();
  v42 = v36;
  v43 = MEMORY[0x277D225C0];
  *&v41 = v37;
  sub_24F92A958();
  swift_unknownObjectRelease();

  sub_24F13BC3C(&v54);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  return v22;
}

uint64_t sub_24F1351EC(__int128 *a1, uint64_t a2)
{
  v4 = a1[11];
  v44 = a1[10];
  v45 = v4;
  v46 = a1[12];
  v47 = *(a1 + 26);
  v5 = a1[7];
  v40 = a1[6];
  v41 = v5;
  v6 = a1[9];
  v42 = a1[8];
  v43 = v6;
  v7 = a1[3];
  v36 = a1[2];
  v37 = v7;
  v8 = a1[5];
  v38 = a1[4];
  v39 = v8;
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  sub_24E69A5C4(0, &qword_27F239FE0);
  v10 = a1[11];
  v32[10] = a1[10];
  v32[11] = v10;
  v32[12] = a1[12];
  v33 = *(a1 + 26);
  v11 = a1[7];
  v32[6] = a1[6];
  v32[7] = v11;
  v12 = a1[9];
  v32[8] = a1[8];
  v32[9] = v12;
  v13 = a1[3];
  v32[2] = a1[2];
  v32[3] = v13;
  v14 = a1[5];
  v32[4] = a1[4];
  v32[5] = v14;
  v15 = a1[1];
  v32[0] = *a1;
  v32[1] = v15;
  sub_24E8B94D4(&v34, aBlock);
  sub_24EA3B690(v32);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FD0);
  v18 = sub_24F92A9E8();
  v19 = [objc_opt_self() sharedManager];
  sub_24E615E00(a2 + 80, v30);
  v20 = swift_allocObject();
  sub_24E612C80(v30, v20 + 16);
  v21 = v45;
  *(v20 + 232) = v44;
  *(v20 + 248) = v21;
  *(v20 + 264) = v46;
  v22 = v41;
  *(v20 + 168) = v40;
  *(v20 + 184) = v22;
  v23 = v43;
  *(v20 + 200) = v42;
  *(v20 + 216) = v23;
  v24 = v37;
  *(v20 + 104) = v36;
  *(v20 + 120) = v24;
  v25 = v39;
  *(v20 + 136) = v38;
  *(v20 + 152) = v25;
  v26 = v35;
  *(v20 + 72) = v34;
  *(v20 + 56) = v17;
  *(v20 + 64) = v18;
  *(v20 + 280) = v47;
  *(v20 + 88) = v26;
  aBlock[4] = sub_24F13C6CC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F13C6AC;
  aBlock[3] = &block_descriptor_107_1;
  v27 = _Block_copy(aBlock);
  sub_24E8B94D4(&v34, v32);
  v28 = v17;

  [v19 startPurchase:v28 withResultHandler:v27];
  _Block_release(v27);

  return v18;
}

uint64_t sub_24F135468(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = *(a1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v36 = v12;
  if (!v11)
  {
    if (qword_27F210588 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v11 != 1)
  {
    if (v10 | v9)
    {
      if (qword_27F210588 != -1)
      {
        swift_once();
      }

      goto LABEL_15;
    }

    if (qword_27F210588 == -1)
    {
LABEL_15:
      v23 = sub_24F92AAE8();
      __swift_project_value_buffer(v23, qword_27F39C3F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      *(&v38 + 1) = &type metadata for PurchaseIntent;
      *&v37 = swift_allocObject();
      sub_24EB69CEC(a2, v37 + 16);
      sub_24F9283B8();
      sub_24E601704(&v37, &qword_27F2129B0);
      sub_24F92A598();

      goto LABEL_16;
    }

LABEL_14:
    swift_once();
    goto LABEL_15;
  }

  *(v12 + 16) = BYTE1(v10) & 1;
  if (qword_27F210588 != -1)
  {
    swift_once();
  }

  v13 = sub_24F92AAE8();
  __swift_project_value_buffer(v13, qword_27F39C3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  *(&v38 + 1) = &type metadata for PurchaseIntent;
  *&v37 = swift_allocObject();
  sub_24EB69CEC(a2, v37 + 16);
  sub_24F9283B8();
  sub_24E601704(&v37, &qword_27F2129B0);
  sub_24F92A598();

  if (v10)
  {
    v14 = a3[3];
    v15 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v14);
    sub_24EB69CEC(a2, &v37);
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    v17 = v44;
    *(v16 + 128) = v43;
    *(v16 + 144) = v17;
    v18 = v46;
    *(v16 + 160) = v45;
    *(v16 + 176) = v18;
    v19 = v40;
    *(v16 + 64) = v39;
    *(v16 + 80) = v19;
    v20 = v42;
    *(v16 + 96) = v41;
    *(v16 + 112) = v20;
    v21 = v38;
    *(v16 + 32) = v37;
    *(v16 + 48) = v21;
    *(v16 + 192) = v36;
    v22 = *(v15 + 64);
    swift_unknownObjectRetain();

    v22(0, sub_24F13C4E4, v16, v14, v15);
  }

LABEL_16:
  ObjectType = swift_getObjectType();
  v25 = a2[6];
  v47[0] = a2[5];
  v47[1] = v25;
  sub_24EB69CEC(a2, &v37);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  v27 = v44;
  *(v26 + 128) = v43;
  *(v26 + 144) = v27;
  v28 = v46;
  *(v26 + 160) = v45;
  *(v26 + 176) = v28;
  v29 = v40;
  *(v26 + 64) = v39;
  *(v26 + 80) = v29;
  v30 = v42;
  *(v26 + 96) = v41;
  *(v26 + 112) = v30;
  v31 = v38;
  *(v26 + 32) = v37;
  *(v26 + 48) = v31;
  v32 = *(a5 + 24);
  swift_unknownObjectRetain();

  v32(v47, sub_24F13C4C0, v26, ObjectType, a5);

  v33 = a2[8];
  if (v33)
  {
    *&v37 = a2[7];
    *(&v37 + 1) = v33;
    v34.underlyingAdamID._countAndFlagsBits = &v37;
    v34.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v34);
  }
}

uint64_t sub_24F135BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = *(a4 + 48);
  v20[0] = *(a4 + 40);
  v20[1] = v10;
  sub_24EB69CEC(a4, v19);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = v19[7];
  *(v11 + 128) = v19[6];
  *(v11 + 144) = v12;
  v13 = v19[9];
  *(v11 + 160) = v19[8];
  *(v11 + 176) = v13;
  v14 = v19[3];
  *(v11 + 64) = v19[2];
  *(v11 + 80) = v14;
  v15 = v19[5];
  *(v11 + 96) = v19[4];
  *(v11 + 112) = v15;
  v16 = v19[1];
  *(v11 + 32) = v19[0];
  *(v11 + 48) = v16;
  *(v11 + 192) = a5;
  v17 = *(a3 + 24);

  swift_unknownObjectRetain();

  v17(v20, sub_24F13C57C, v11, ObjectType, a3);
}

void sub_24F135D04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = a3[6];
  v11 = a3[5];
  v12 = v8;
  swift_beginAccess();
  LOBYTE(a4) = *(a4 + 16);

  sub_24F135DB4(&v11, a4, ObjectType, a2);

  v9 = a3[8];
  if (v9)
  {
    v11 = a3[7];
    v12 = v9;
    v10.underlyingAdamID._countAndFlagsBits = &v11;
    v10.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v10);
  }
}

uint64_t sub_24F135DB4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  *&v22 = *a1;
  v7 = v22;
  *(&v22 + 1) = v8;
  (*(a4 + 72))(&v22, 0);
  *&v22 = v7;
  *(&v22 + 1) = v8;
  (*(a4 + 56))(&v22, a3, a4);
  v10 = v9;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  (*(a4 + 48))(&v22, &v18, a3, a4);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  *v16 = 4;
  memset(&v16[8], 0, 40);
  v17 = xmmword_24F966510;
  if (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v18, v16))
  {
    ObjectType = swift_getObjectType();
    *&v18 = a2 & 1;
    *&v21 = 0x1000000000000000;
    (*(v10 + 64))(&v18, ObjectType, v10);
  }

  else
  {
    *v16 = v22;
    *&v16[16] = v23;
    *&v16[32] = v24;
    v17 = v25;
    v12 = swift_getObjectType();
    (*(v10 + 16))(v15, v12, v10);
    v13 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(v16, v15);
    v18 = v15[0];
    v19 = v15[1];
    v20 = v15[2];
    v21 = v15[3];
    sub_24E88D2AC(&v18);
    if ((v13 & 1) == 0)
    {
      *v16 = v7;
      *&v16[8] = v8;
      (*(a4 + 40))(v16, a3, a4);
    }
  }

  sub_24E88D2AC(&v22);
  return swift_unknownObjectRelease();
}

void sub_24F135FA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = a4[6];
  v19[0] = a4[5];
  v19[1] = v8;
  sub_24EB69CEC(a4, v18);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = v18[7];
  *(v9 + 128) = v18[6];
  *(v9 + 144) = v10;
  v11 = v18[9];
  *(v9 + 160) = v18[8];
  *(v9 + 176) = v11;
  v12 = v18[3];
  *(v9 + 64) = v18[2];
  *(v9 + 80) = v12;
  v13 = v18[5];
  *(v9 + 96) = v18[4];
  *(v9 + 112) = v13;
  v14 = v18[1];
  *(v9 + 32) = v18[0];
  *(v9 + 48) = v14;
  v15 = *(a3 + 24);
  swift_unknownObjectRetain();

  v15(v19, sub_24F13C64C, v9, ObjectType, a3);

  v16 = a4[8];
  if (v16)
  {
    *&v18[0] = a4[7];
    *(&v18[0] + 1) = v16;
    v17.underlyingAdamID._countAndFlagsBits = v18;
    v17.underlyingAdamID._object = ObjectType;
    AppStateController.clearWaiting(for:)(v17);
  }
}

uint64_t sub_24F1360CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = *(a3 + 48);
  v8[0] = *(a3 + 40);
  v8[1] = v5;

  v6.underlyingAdamID._countAndFlagsBits = v8;
  v6.underlyingAdamID._object = ObjectType;
  AppStateController.clearWaiting(for:)(v6);
}

uint64_t sub_24F136140(__int128 *a1)
{
  v2 = v1;
  v4 = a1[11];
  v44 = a1[10];
  v45 = v4;
  v46 = a1[12];
  v47 = *(a1 + 26);
  v5 = a1[7];
  v40 = a1[6];
  v41 = v5;
  v6 = a1[9];
  v42 = a1[8];
  v43 = v6;
  v7 = a1[3];
  v36 = a1[2];
  v37 = v7;
  v8 = a1[5];
  v38 = a1[4];
  v39 = v8;
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  sub_24E69A5C4(0, &qword_27F239FE0);
  v10 = a1[11];
  v32[10] = a1[10];
  v32[11] = v10;
  v32[12] = a1[12];
  v33 = *(a1 + 26);
  v11 = a1[7];
  v32[6] = a1[6];
  v32[7] = v11;
  v12 = a1[9];
  v32[8] = a1[8];
  v32[9] = v12;
  v13 = a1[3];
  v32[2] = a1[2];
  v32[3] = v13;
  v14 = a1[5];
  v32[4] = a1[4];
  v32[5] = v14;
  v15 = a1[1];
  v32[0] = *a1;
  v32[1] = v15;
  sub_24E8B94D4(&v34, aBlock);
  sub_24EA3B690(v32);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FD0);
  v18 = sub_24F92A9E8();
  v19 = [objc_opt_self() sharedManager];
  sub_24E615E00(v2 + 80, v30);
  v20 = swift_allocObject();
  sub_24E612C80(v30, v20 + 16);
  v21 = v45;
  *(v20 + 232) = v44;
  *(v20 + 248) = v21;
  *(v20 + 264) = v46;
  v22 = v41;
  *(v20 + 168) = v40;
  *(v20 + 184) = v22;
  v23 = v43;
  *(v20 + 200) = v42;
  *(v20 + 216) = v23;
  v24 = v37;
  *(v20 + 104) = v36;
  *(v20 + 120) = v24;
  v25 = v39;
  *(v20 + 136) = v38;
  *(v20 + 152) = v25;
  v26 = v35;
  *(v20 + 72) = v34;
  *(v20 + 56) = v17;
  *(v20 + 64) = v18;
  *(v20 + 280) = v47;
  *(v20 + 88) = v26;
  aBlock[4] = sub_24F13BC90;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F13C6AC;
  aBlock[3] = &block_descriptor_119;
  v27 = _Block_copy(aBlock);
  sub_24E8B94D4(&v34, v32);
  v28 = v17;

  [v19 startPurchase:v28 withResultHandler:v27];
  _Block_release(v27);

  return v18;
}

void sub_24F1363BC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24F9299E8();

  if (a1)
  {
    v9 = a1;
    if ([v9 success])
    {
      sub_24F1365BC();
      v10 = *a6;
      v11 = a6[136];
      if (v11 != 1 || v10 == 3)
      {
        if (*a6)
        {
          v18 = v10 == 3;
        }

        else
        {
          v18 = 1;
        }

        v19 = v18;
        if (a6[89])
        {
          v12 = v19;
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
      }

      v20 = v10 == 3;
      v18 = v11 == 0;
      v21 = 0x10000;
      if (v18)
      {
        v21 = 0;
      }

      v23 = v21 | (v20 << 8) | v12;
      v17 = 1;
    }

    else
    {
      v14 = [v9 error];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 code];

        if (v16 == 511)
        {
          v25 = *(a6 + 8);
          v23 = v25;
          v24 = 0;
          sub_24F13C348(&v25, &v22);
          sub_24F92A9C8();

          sub_24F13C3A4(v23, *(&v23 + 1), v24);
          return;
        }
      }

      v23 = xmmword_24F950E90;
      v17 = 2;
    }

    v24 = v17;
    sub_24F92A9C8();
  }

  else if (a2)
  {
    v13 = a2;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

void sub_24F1365BC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27F2103A8 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22A8E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  sub_24F92C7F8();
  *(inited + 96) = sub_24E69A5C4(0, &qword_27F239FE0);
  *(inited + 72) = v0;
  v4 = v0;
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470);
  v5 = sub_24F92AE28();

  [v1 postNotificationName:v2 object:0 userInfo:v5];
}

uint64_t sub_24F136748(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  if (qword_27F210B70 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();

  (*(v4 + 8))(v6, v3);
  if (v12[7] == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24F13BCE8;
    *(v7 + 24) = v1;

    v8 = sub_24F136A04(a1, sub_24F1369BC, 0, sub_24F13BD24, v7);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_24F13BCB8;
    *(v9 + 24) = v1;

    v8 = sub_24F136F94(a1, sub_24F1369E0, 0, sub_24F13BCBC, v9);
  }

  v10 = v8;

  return v10;
}

uint64_t sub_24F1369BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000001DLL;
  a2[1] = 0x800000024FA6D340;
  a2[2] = a1;
}

uint64_t sub_24F1369E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000019;
  a2[1] = 0x800000024FA6D360;
  a2[2] = a1;
}

uint64_t sub_24F136A04(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v36[1] = a3;
  v37 = a2;
  v41 = sub_24F929C38();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  v38 = v5;
  sub_24F928FD8();
  sub_24F92A758();
  v8 = v50;
  v44 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v11 = *(*(&v8 + 1) + 64);
    v12 = v44 + 32;
    v13 = v9;
    do
    {
      sub_24EB69CEC(v12, &v50);
      v46[0] = v53;
      v46[1] = v54;
      v14 = v50;

      sub_24E95A048(&v50);
      LOBYTE(v47) = v14;
      v11(v46, &v47, ObjectType, *(&v8 + 1));

      v12 += 160;
      --v13;
    }

    while (v13);
  }

  v15 = v44;
  v37(&v47, v44);
  sub_24F929C28();

  sub_24F928FE8();
  v16 = v40;
  v17 = v39;
  v18 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277D220E8], v41);
  v19 = sub_24F929BD8();

  (*(v16 + 8))(v17, v18);
  v20 = v38;
  v41 = v48;
  v39 = v49;
  v40 = v19;
  sub_24EB494E0(v47, v48, v49, v19, "GameStoreKit/Commerce.swift", 27, 2);
  sub_24E615E00(v20 + 40, v46);
  v21 = MEMORY[0x277D84F90];
  if (v9)
  {
    v45 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v9, 0);
    v21 = v45;
    v22 = v15 + 32;
    do
    {
      sub_24EB69CEC(v22, &v50);
      v24 = v53;
      v23 = v54;

      sub_24E95A048(&v50);
      v45 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_24F45814C((v25 > 1), v26 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 160;
      --v9;
    }

    while (v9);
  }

  v28 = sub_24F45D9F8(v21);

  sub_24E615E00(v46, &v50);
  v29 = swift_allocObject();
  v30 = v43;
  *(v29 + 16) = v42;
  *(v29 + 24) = v30;
  sub_24E612C80(&v50, v29 + 32);
  *(v29 + 72) = v8;
  *(v29 + 88) = v28;
  v51 = sub_24F929638();
  v52 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v50);

  swift_unknownObjectRetain();

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A000);
  sub_24F13C0AC(&qword_27F23A008, &qword_27F23A000);
  v31 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v50);
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = v8;
  v33 = sub_24E69A5C4(0, &qword_27F222300);
  swift_unknownObjectRetain();
  v34 = sub_24F92BEF8();
  v51 = v33;
  v52 = MEMORY[0x277D225C0];
  *&v50 = v34;
  sub_24F92A958();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v46);

  __swift_destroy_boxed_opaque_existential_1(&v50);
  return v31;
}

uint64_t sub_24F136F94(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v43 = a4;
  v37 = a3;
  v38 = a2;
  v41 = sub_24F929C38();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  v42 = v5;
  sub_24F928FD8();
  sub_24F92A758();
  v8 = v50;
  v46 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v11 = *(*(&v8 + 1) + 64);
    v12 = v46 + 32;
    v13 = v9;
    do
    {
      sub_24EB69CEC(v12, &v50);
      v48[0] = v53;
      v48[1] = v54;
      v14 = v50;

      sub_24E95A048(&v50);
      LOBYTE(v49[0]) = v14;
      v11(v48, v49, ObjectType, *(&v8 + 1));

      v12 += 160;
      --v13;
    }

    while (v13);
  }

  v45 = *(&v8 + 1);
  v15 = v46;
  v38(v49, v46);
  sub_24F929C28();

  sub_24F928FE8();
  v16 = v40;
  v17 = v39;
  v18 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277D220E8], v41);
  v19 = sub_24F929BD8();

  (*(v16 + 8))(v17, v18);
  v20 = v42;
  sub_24EB49490(v49[0], v49[1], v49[2], v19, "GameStoreKit/Commerce.swift", 27, 2);
  sub_24E615E00(v20 + 40, v48);
  v21 = MEMORY[0x277D84F90];
  if (v9)
  {
    v47 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v9, 0);
    v21 = v47;
    v22 = v15 + 32;
    do
    {
      sub_24EB69CEC(v22, &v50);
      v24 = v53;
      v23 = v54;

      sub_24E95A048(&v50);
      v47 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_24F45814C((v25 > 1), v26 + 1, 1);
        v21 = v47;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 160;
      --v9;
    }

    while (v9);
  }

  v28 = sub_24F45D9F8(v21);

  sub_24E615E00(v48, &v50);
  v29 = swift_allocObject();
  v30 = v44;
  v29[2] = v43;
  v29[3] = v30;
  sub_24E612C80(&v50, (v29 + 4));
  v31 = v45;
  v29[9] = v8;
  v29[10] = v31;
  v29[11] = v28;
  v51 = sub_24F929638();
  v52 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v50);

  swift_unknownObjectRetain();

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A000);
  sub_24F13C0AC(&qword_27F23A008, &qword_27F23A000);
  v32 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v50);
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v8;
  v33[4] = v31;
  v34 = sub_24E69A5C4(0, &qword_27F222300);
  swift_unknownObjectRetain();
  v35 = sub_24F92BEF8();
  v51 = v34;
  v52 = MEMORY[0x277D225C0];
  *&v50 = v35;
  sub_24F92A958();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v48);

  __swift_destroy_boxed_opaque_existential_1(&v50);
  return v32;
}

uint64_t sub_24F137518(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  a2(&v18);
  v11 = sub_24E69A5C4(0, &qword_27F222300);
  v12 = sub_24F92BEF8();
  v17[3] = v11;
  v17[4] = MEMORY[0x277D225C0];
  v17[0] = v12;
  sub_24E615E00(a4, v16);
  v13 = swift_allocObject();
  sub_24E612C80(v16, (v13 + 2));
  v13[7] = a5;
  v13[8] = a6;
  v13[9] = a7;
  swift_unknownObjectRetain();

  v14 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_24F137638(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a1;
  a2(&v18);
  v11 = sub_24E69A5C4(0, &qword_27F222300);
  v12 = sub_24F92BEF8();
  v17[3] = v11;
  v17[4] = MEMORY[0x277D225C0];
  v17[0] = v12;
  sub_24E615E00(a4, v16);
  v13 = swift_allocObject();
  sub_24E612C80(v16, (v13 + 2));
  v13[7] = a5;
  v13[8] = a6;
  v13[9] = a7;
  swift_unknownObjectRetain();

  v14 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_24F137758@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v150 = a5;
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = MEMORY[0x277D84F90];
  v130 = *a1;
  v127 = v7;
  if (v7)
  {
    *&v135 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v7, 0);
    v9 = v135;
    v10 = (v6 + 48);
    v11 = v7;
    do
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      *&v135 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_24F45814C((v14 > 1), v15 + 1, 1);
        v9 = v135;
      }

      *(v9 + 16) = v15 + 1;
      v17 = v9 + 16 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      v10 += 27;
      --v11;
    }

    while (v11);
    v6 = v130;
    v18 = *(v130 + 16);
    if (v18)
    {
      v19 = (v130 + 121);
      v20 = *(v130 + 16);
      do
      {
        v21 = *(v19 - 89);
        if (v19[47] != 1 || v21 == 3)
        {
          if (*v19 != 1 || (*(v19 - 89) ? (v23 = v21 == 3) : (v23 = 1), v23))
          {
            v132 = 0;
            goto LABEL_25;
          }
        }

        v19 += 216;
        --v20;
      }

      while (v20);
      v132 = 1;
LABEL_25:
      v25 = 0;
      v26 = v130 + 32;
      v27 = v18 - 1;
      v24 = MEMORY[0x277D84F90];
LABEL_26:
      v28 = *(v130 + 16);
      v29 = (v26 + 216 * v25);
      v30 = v25;
      while (v30 < v28)
      {
        v31 = v29[1];
        v135 = *v29;
        v136 = v31;
        v32 = v29[2];
        v33 = v29[3];
        v34 = v29[5];
        v139 = v29[4];
        v140 = v34;
        v137 = v32;
        v138 = v33;
        v35 = v29[6];
        v36 = v29[7];
        v37 = v29[9];
        v143 = v29[8];
        v144 = v37;
        v141 = v35;
        v142 = v36;
        v38 = v29[10];
        v39 = v29[11];
        v40 = v29[12];
        v148 = *(v29 + 26);
        v146 = v39;
        v147 = v40;
        v145 = v38;
        v25 = v30 + 1;
        if (v135 == 3)
        {
          v41 = v18;
          sub_24E8B94D4(&v135, v134);
          result = swift_isUniquelyReferenced_nonNull_native();
          v149 = v24;
          v126 = v26;
          if ((result & 1) == 0)
          {
            result = sub_24F458DA8(0, *(v24 + 16) + 1, 1);
            v24 = v149;
          }

          v43 = *(v24 + 16);
          v42 = *(v24 + 24);
          v18 = v41;
          if (v43 >= v42 >> 1)
          {
            result = sub_24F458DA8((v42 > 1), v43 + 1, 1);
            v18 = v41;
            v24 = v149;
          }

          *(v24 + 16) = v43 + 1;
          v44 = v24 + 216 * v43;
          v45 = v136;
          *(v44 + 32) = v135;
          *(v44 + 48) = v45;
          v46 = v137;
          v47 = v138;
          v48 = v140;
          *(v44 + 96) = v139;
          *(v44 + 112) = v48;
          *(v44 + 64) = v46;
          *(v44 + 80) = v47;
          v49 = v141;
          v50 = v142;
          v51 = v144;
          *(v44 + 160) = v143;
          *(v44 + 176) = v51;
          *(v44 + 128) = v49;
          *(v44 + 144) = v50;
          v52 = v145;
          v53 = v146;
          v54 = v147;
          *(v44 + 240) = v148;
          *(v44 + 208) = v53;
          *(v44 + 224) = v54;
          *(v44 + 192) = v52;
          v26 = v126;
          if (v27 == v30)
          {
LABEL_36:
            v125 = 0;
            v8 = MEMORY[0x277D84F90];
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v29 = (v29 + 216);
        ++v30;
        if (v18 == v25)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_80;
    }

    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v18 = 0;
  v24 = MEMORY[0x277D84F90];
  v132 = 1;
  v125 = 1;
LABEL_37:
  v123 = v18;
  v55 = *(v24 + 16);
  if (v55)
  {
    *&v135 = v8;
    v56 = v24;
    sub_24F45814C(0, v55, 0);
    v57 = v135;
    v58 = (v56 + 48);
    do
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      *&v135 = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);

      if (v62 >= v61 >> 1)
      {
        sub_24F45814C((v61 > 1), v62 + 1, 1);
        v57 = v135;
      }

      *(v57 + 16) = v62 + 1;
      v63 = v57 + 16 * v62;
      *(v63 + 32) = v59;
      *(v63 + 40) = v60;
      v58 += 27;
      --v55;
    }

    while (v55);

    v6 = v130;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v64 = sub_24F45D9F8(v57);

  if (v132)
  {

    v122 = v150 + 56;
    v65 = 1 << *(v150 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v150 + 56);
    v68 = (v65 + 63) >> 6;

    for (i = 0; v67; result = )
    {
      v70 = i;
LABEL_53:
      v71 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v72 = (*(v150 + 48) + ((v70 << 10) | (16 * v71)));
      v74 = *v72;
      v73 = v72[1];
      ObjectType = swift_getObjectType();
      *&v135 = v74;
      *(&v135 + 1) = v73;
      v75 = swift_allocObject();
      v75[2] = a3;
      v75[3] = a4;
      v75[4] = v74;
      v75[5] = v73;
      v76 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v76(&v135, sub_24F13C660, v75, ObjectType, a4);
    }

    while (1)
    {
      v70 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v70 >= v68)
      {

        v6 = v130;
        goto LABEL_57;
      }

      v67 = *(v122 + 8 * v70);
      ++i;
      if (v67)
      {
        i = v70;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_79;
  }

  v77 = a2[3];
  v78 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v77);
  v79 = swift_allocObject();
  v79[2] = v9;
  v79[3] = a3;
  v79[4] = a4;
  v80 = v150;
  v79[5] = v64;
  v79[6] = v80;
  v81 = *(v78 + 64);
  swift_unknownObjectRetain();

  v81(0, sub_24F13C18C, v79, v77, v78);

LABEL_57:
  v82 = MEMORY[0x277D84F90];
  v83 = v127;
  if (v127)
  {
    *&v135 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v127, 0);
    v82 = v135;
    v84 = (v6 + 48);
    do
    {
      v86 = *(v84 - 1);
      v85 = *v84;
      *&v135 = v82;
      v88 = *(v82 + 16);
      v87 = *(v82 + 24);

      if (v88 >= v87 >> 1)
      {
        sub_24F45814C((v87 > 1), v88 + 1, 1);
        v82 = v135;
      }

      *(v82 + 16) = v88 + 1;
      v89 = v82 + 16 * v88;
      *(v89 + 32) = v86;
      *(v89 + 40) = v85;
      v84 += 27;
      --v83;
    }

    while (v83);
    v6 = v130;
  }

  v90 = sub_24F45D9F8(v82);

  if ((v125 & 1) == 0)
  {
    v93 = 0;
    v94 = v6 + 32;
    v95 = v123;
    v91 = MEMORY[0x277D84F90];
LABEL_67:
    v96 = *(v6 + 16);
    v97 = (v94 + 216 * v93);
    v98 = v93;
    while (v98 < v96)
    {
      v99 = v97[1];
      v135 = *v97;
      v136 = v99;
      v100 = v97[2];
      v101 = v97[3];
      v102 = v97[5];
      v139 = v97[4];
      v140 = v102;
      v137 = v100;
      v138 = v101;
      v103 = v97[6];
      v104 = v97[7];
      v105 = v97[9];
      v143 = v97[8];
      v144 = v105;
      v141 = v103;
      v142 = v104;
      v106 = v97[10];
      v107 = v97[11];
      v108 = v97[12];
      v148 = *(v97 + 26);
      v146 = v107;
      v147 = v108;
      v145 = v106;
      v93 = v98 + 1;
      if (BYTE8(v143))
      {
        sub_24E8B94D4(&v135, v134);
        result = swift_isUniquelyReferenced_nonNull_native();
        v149 = v91;
        if ((result & 1) == 0)
        {
          result = sub_24F458DA8(0, *(v91 + 16) + 1, 1);
          v91 = v149;
        }

        v110 = *(v91 + 16);
        v109 = *(v91 + 24);
        v95 = v123;
        if (v110 >= v109 >> 1)
        {
          result = sub_24F458DA8((v109 > 1), v110 + 1, 1);
          v95 = v123;
          v91 = v149;
        }

        *(v91 + 16) = v110 + 1;
        v111 = v91 + 216 * v110;
        v112 = v136;
        *(v111 + 32) = v135;
        *(v111 + 48) = v112;
        v113 = v137;
        v114 = v138;
        v115 = v140;
        *(v111 + 96) = v139;
        *(v111 + 112) = v115;
        *(v111 + 64) = v113;
        *(v111 + 80) = v114;
        v116 = v141;
        v117 = v142;
        v118 = v144;
        *(v111 + 160) = v143;
        *(v111 + 176) = v118;
        *(v111 + 128) = v116;
        *(v111 + 144) = v117;
        v119 = v145;
        v120 = v146;
        v121 = v147;
        *(v111 + 240) = v148;
        *(v111 + 208) = v120;
        *(v111 + 224) = v121;
        *(v111 + 192) = v119;
        v6 = v130;
        if (v123 - 1 != v98)
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      v97 = (v97 + 216);
      ++v98;
      if (v95 == v93)
      {
        goto LABEL_65;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return result;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_65:
  v92 = *(v91 + 16);

  *a6 = v90;
  a6[1] = v92;
  return result;
}

uint64_t sub_24F137F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v10 = *(a4 + 24);
    v11 = (a2 + 40);
    do
    {
      v13 = *v11;
      v34 = *(v11 - 1);
      v12 = v34;
      v35 = v13;
      v14 = swift_allocObject();
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = v12;
      v14[5] = v13;
      v14[6] = a5;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();

      v10(&v34, sub_24F13C1E4, v14, ObjectType, a4);

      v11 += 2;
      --v8;
    }

    while (v8);
  }

  result = sub_24F7A79C0(a2, a6);
  v16 = 0;
  v17 = result + 56;
  v18 = 1 << *(result + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(result + 56);
  v21 = (v18 + 63) >> 6;
  v33 = result;
  if (v20)
  {
    while (1)
    {
      v22 = v16;
LABEL_12:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = (*(v33 + 48) + ((v22 << 10) | (16 * v23)));
      v25 = *v24;
      v26 = v24[1];
      v27 = swift_getObjectType();
      v34 = v25;
      v35 = v26;
      v28 = swift_allocObject();
      v28[2] = a3;
      v28[3] = a4;
      v28[4] = v25;
      v28[5] = v26;
      v29 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v29(&v34, sub_24F13C234, v28, v27, a4);

      if (!v20)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    if (v22 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v22);
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_12;
    }
  }
}

uint64_t sub_24F1381A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12[0] = a3;
  v12[1] = a4;
  v10 = sub_24F4D36F8(a3, a4, a5);
  return sub_24F135DB4(v12, v10 & 1, ObjectType, a2);
}

uint64_t sub_24F138224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = (*(a2 + 48) + ((v13 << 10) | (16 * v14)));
      v16 = *v15;
      v17 = v15[1];
      ObjectType = swift_getObjectType();
      v22[0] = v16;
      v22[1] = v17;
      v19 = swift_allocObject();
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = v16;
      v19[5] = v17;
      v20 = *(a4 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v20(v22, sub_24F13C660, v19, ObjectType, a4);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24F1383B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v158 = v1;
  if (v2)
  {
    v160[0] = MEMORY[0x277D84F90];
    sub_24F458DA8(0, v2, 0);
    v3 = v160[0];
    v4 = v1 + 32;
    do
    {
      v5 = *(v4 + 16);
      aBlock = *v4;
      v176 = v5;
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      v8 = *(v4 + 80);
      v179 = *(v4 + 64);
      v180 = v8;
      v177 = v6;
      v178 = v7;
      v9 = *(v4 + 96);
      v10 = *(v4 + 112);
      v11 = *(v4 + 144);
      v183 = *(v4 + 128);
      v184 = v11;
      v181 = v9;
      v182 = v10;
      v12 = *(v4 + 160);
      v13 = *(v4 + 176);
      v14 = *(v4 + 192);
      *&v188 = *(v4 + 208);
      v186 = v13;
      v187 = v14;
      v185 = v12;
      sub_24E8B94D4(&aBlock, &v161);
      v160[0] = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24F458DA8((v15 > 1), v16 + 1, 1);
        v3 = v160[0];
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 216 * v16;
      v18 = v176;
      *(v17 + 32) = aBlock;
      *(v17 + 48) = v18;
      v19 = v177;
      v20 = v178;
      v21 = v180;
      *(v17 + 96) = v179;
      *(v17 + 112) = v21;
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      v22 = v181;
      v23 = v182;
      v24 = v184;
      *(v17 + 160) = v183;
      *(v17 + 176) = v24;
      *(v17 + 128) = v22;
      *(v17 + 144) = v23;
      v25 = v185;
      v26 = v186;
      v27 = v187;
      *(v17 + 240) = v188;
      *(v17 + 208) = v26;
      *(v17 + 224) = v27;
      *(v17 + 192) = v25;
      v4 += 224;
      --v2;
    }

    while (v2);
  }

  v28 = sub_24E6108BC(MEMORY[0x277D84F90]);
  v156 = *(v3 + 16);
  if (v156)
  {
    v29 = 0;
    v30 = v3 + 32;
    while (1)
    {
      if (v29 >= *(v3 + 16))
      {
        goto LABEL_51;
      }

      v52 = *(v30 + 16);
      aBlock = *v30;
      v176 = v52;
      v53 = *(v30 + 32);
      v54 = *(v30 + 48);
      v55 = *(v30 + 80);
      v179 = *(v30 + 64);
      v180 = v55;
      v177 = v53;
      v178 = v54;
      v56 = *(v30 + 96);
      v57 = *(v30 + 112);
      v58 = *(v30 + 144);
      v183 = *(v30 + 128);
      v184 = v58;
      v181 = v56;
      v182 = v57;
      v59 = *(v30 + 160);
      v60 = *(v30 + 176);
      v61 = *(v30 + 192);
      *&v188 = *(v30 + 208);
      v186 = v60;
      v187 = v61;
      v185 = v59;
      v63 = *(&aBlock + 1);
      v62 = v176;
      sub_24E8B94D4(&aBlock, &v161);
      sub_24E8B94D4(&aBlock, &v161);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160[0] = v28;
      v65 = sub_24E7728F0(v63, v62);
      v67 = *(v28 + 16);
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_52;
      }

      v71 = v66;
      if (*(v28 + 24) < v70)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v87 = v65;
      sub_24E8B601C();
      v65 = v87;
      if (v71)
      {
LABEL_8:
        v28 = v160[0];
        v31 = *(v160[0] + 56) + 216 * v65;
        v32 = *(v31 + 16);
        v161 = *v31;
        v162 = v32;
        v33 = *(v31 + 80);
        v35 = *(v31 + 32);
        v34 = *(v31 + 48);
        v165 = *(v31 + 64);
        v166 = v33;
        v163 = v35;
        v164 = v34;
        v36 = *(v31 + 144);
        v38 = *(v31 + 96);
        v37 = *(v31 + 112);
        v169 = *(v31 + 128);
        v170 = v36;
        v167 = v38;
        v168 = v37;
        v40 = *(v31 + 176);
        v39 = *(v31 + 192);
        v41 = *(v31 + 160);
        v174 = *(v31 + 208);
        v172 = v40;
        v173 = v39;
        v171 = v41;
        v42 = v176;
        *v31 = aBlock;
        *(v31 + 16) = v42;
        v43 = v177;
        v44 = v178;
        v45 = v180;
        *(v31 + 64) = v179;
        *(v31 + 80) = v45;
        *(v31 + 32) = v43;
        *(v31 + 48) = v44;
        v46 = v181;
        v47 = v182;
        v48 = v184;
        *(v31 + 128) = v183;
        *(v31 + 144) = v48;
        *(v31 + 96) = v46;
        *(v31 + 112) = v47;
        v49 = v185;
        v50 = v186;
        v51 = v187;
        *(v31 + 208) = v188;
        *(v31 + 176) = v50;
        *(v31 + 192) = v51;
        *(v31 + 160) = v49;
        sub_24EA3BBAC(&v161);
        sub_24EA3BBAC(&aBlock);
        goto LABEL_9;
      }

LABEL_17:
      v28 = v160[0];
      *(v160[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v73 = (*(v28 + 48) + 16 * v65);
      *v73 = v63;
      v73[1] = v62;
      v74 = *(v28 + 56) + 216 * v65;
      v75 = v188;
      v77 = v186;
      v76 = v187;
      *(v74 + 160) = v185;
      *(v74 + 176) = v77;
      *(v74 + 192) = v76;
      *(v74 + 208) = v75;
      v79 = v183;
      v78 = v184;
      v80 = v182;
      *(v74 + 96) = v181;
      *(v74 + 112) = v80;
      *(v74 + 128) = v79;
      *(v74 + 144) = v78;
      v82 = v179;
      v81 = v180;
      v83 = v178;
      *(v74 + 32) = v177;
      *(v74 + 48) = v83;
      *(v74 + 64) = v82;
      *(v74 + 80) = v81;
      v84 = v176;
      *v74 = aBlock;
      *(v74 + 16) = v84;

      sub_24EA3BBAC(&aBlock);
      v85 = *(v28 + 16);
      v69 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v69)
      {
        goto LABEL_55;
      }

      *(v28 + 16) = v86;
LABEL_9:
      ++v29;
      v30 += 216;
      if (v156 == v29)
      {
        goto LABEL_21;
      }
    }

    sub_24E8A7F34(v70, isUniquelyReferenced_nonNull_native);
    v65 = sub_24E7728F0(v63, v62);
    if ((v71 & 1) != (v72 & 1))
    {
      goto LABEL_59;
    }

LABEL_16:
    if (v71)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_21:

  v88 = sub_24E610ADC(MEMORY[0x277D84F90]);
  v157 = *(v158 + 16);
  if (v157)
  {
    v89 = 0;
    v90 = (v158 + 32);
    while (1)
    {
      if (v89 >= *(v158 + 16))
      {
        goto LABEL_53;
      }

      v91 = v90[1];
      aBlock = *v90;
      v176 = v91;
      v92 = v90[2];
      v93 = v90[3];
      v94 = v90[5];
      v179 = v90[4];
      v180 = v94;
      v177 = v92;
      v178 = v93;
      v95 = v90[6];
      v96 = v90[7];
      v97 = v90[9];
      v183 = v90[8];
      v184 = v97;
      v181 = v95;
      v182 = v96;
      v98 = v90[10];
      v99 = v90[11];
      v100 = v90[13];
      v187 = v90[12];
      v188 = v100;
      v185 = v98;
      v186 = v99;
      v160[0] = *(&aBlock + 1);
      v160[1] = v176;
      sub_24F13BF0C(&aBlock, &v161);
      AdamId.numberValue.getter();
      if (!v101)
      {
        goto LABEL_58;
      }

      v102 = v101;
      v103 = *(&v188 + 1);

      v104 = swift_isUniquelyReferenced_nonNull_native();
      *&v161 = v88;
      v105 = sub_24E76E100(v102);
      v107 = v88[2];
      v108 = (v106 & 1) == 0;
      v69 = __OFADD__(v107, v108);
      v109 = v107 + v108;
      if (v69)
      {
        goto LABEL_54;
      }

      v110 = v106;
      if (v88[3] < v109)
      {
        break;
      }

      if (v104)
      {
        goto LABEL_32;
      }

      v114 = v105;
      sub_24E8B6008();
      v105 = v114;
      v88 = v161;
      if (v110)
      {
LABEL_23:
        *(v88[7] + 8 * v105) = v103;

        goto LABEL_24;
      }

LABEL_33:
      v88[(v105 >> 6) + 8] |= 1 << v105;
      *(v88[6] + 8 * v105) = v102;
      *(v88[7] + 8 * v105) = v103;
      v112 = v88[2];
      v69 = __OFADD__(v112, 1);
      v113 = v112 + 1;
      if (v69)
      {
        goto LABEL_56;
      }

      v88[2] = v113;
LABEL_24:
      ++v89;
      sub_24F13BF68(&aBlock);
      v90 += 14;
      if (v157 == v89)
      {
        goto LABEL_37;
      }
    }

    sub_24E8A7F20(v109, v104);
    v105 = sub_24E76E100(v102);
    if ((v110 & 1) != (v111 & 1))
    {
      goto LABEL_60;
    }

LABEL_32:
    v88 = v161;
    if (v110)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FE8);
  v115 = sub_24F92CB28();
  v116 = v115;
  v117 = 0;
  v118 = 1 << *(v28 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & *(v28 + 64);
  v121 = (v118 + 63) >> 6;
  v153 = v115 + 64;
  v154 = v115;
  if (v120)
  {
    while (1)
    {
      v122 = __clz(__rbit64(v120));
      v120 &= v120 - 1;
LABEL_46:
      v125 = v122 | (v117 << 6);
      v126 = (*(v28 + 48) + 16 * v125);
      v159 = *v126;
      v155 = v126[1];
      v127 = *(v28 + 56) + 216 * v125;
      v128 = *(v127 + 16);
      aBlock = *v127;
      v176 = v128;
      v129 = *(v127 + 80);
      v131 = *(v127 + 32);
      v130 = *(v127 + 48);
      v179 = *(v127 + 64);
      v180 = v129;
      v177 = v131;
      v178 = v130;
      v132 = *(v127 + 144);
      v134 = *(v127 + 96);
      v133 = *(v127 + 112);
      v183 = *(v127 + 128);
      v184 = v132;
      v181 = v134;
      v182 = v133;
      v136 = *(v127 + 176);
      v135 = *(v127 + 192);
      v137 = *(v127 + 160);
      *&v188 = *(v127 + 208);
      v186 = v136;
      v187 = v135;
      v185 = v137;
      sub_24E69A5C4(0, &qword_27F239FE0);
      v171 = *(v127 + 160);
      v172 = *(v127 + 176);
      v173 = *(v127 + 192);
      v174 = *(v127 + 208);
      v167 = *(v127 + 96);
      v168 = *(v127 + 112);
      v169 = *(v127 + 128);
      v170 = *(v127 + 144);
      v163 = *(v127 + 32);
      v164 = *(v127 + 48);
      v165 = *(v127 + 64);
      v166 = *(v127 + 80);
      v161 = *v127;
      v162 = *(v127 + 16);

      sub_24E8B94D4(&aBlock, v160);
      sub_24EA3B690(&v161);
      v116 = v154;
      *(v153 + ((v125 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v125;
      v138 = (v154[6] + 16 * v125);
      *v138 = v159;
      v138[1] = v155;
      *(v154[7] + 8 * v125) = v139;
      v140 = v154[2];
      v69 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v69)
      {
        break;
      }

      v154[2] = v141;
      if (!v120)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
LABEL_41:
    v123 = v117;
    while (1)
    {
      v117 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v117 >= v121)
      {
        v142 = v116;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FF0);
        v143 = sub_24F92A9E8();
        v144 = [objc_opt_self() sharedManager];
        sub_24E955290(v88);

        sub_24E69A5C4(0, &qword_27F22BD50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
        sub_24E9FB6C0();
        v145 = sub_24F92AE28();

        sub_24E954060(*(a1 + 24));
        v146 = sub_24F92AE28();

        sub_24E615E00(v152 + 80, &aBlock);
        v147 = swift_allocObject();
        sub_24E612C80(&aBlock, (v147 + 2));
        v147[7] = v142;
        v147[8] = 0xD000000000000020;
        v147[9] = 0x800000024FA6D310;
        v147[10] = v143;
        *&v177 = sub_24F13C6B0;
        *(&v177 + 1) = v147;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v176 = sub_24F13C6AC;
        *(&v176 + 1) = &block_descriptor_38_2;
        v148 = _Block_copy(&aBlock);

        [v144 purchaseBatchWithItemMetadata:v145 additionalBuyParams:v146 withResultHandler:v148];
        _Block_release(v148);

        *(swift_allocObject() + 16) = v28;
        *(&v176 + 1) = sub_24F929638();
        *&v177 = MEMORY[0x277D21FB0];
        __swift_allocate_boxed_opaque_existential_1(&aBlock);
        sub_24F929628();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A60);
        v149 = sub_24F92A938();

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        return v149;
      }

      v124 = *(v28 + 64 + 8 * v117);
      ++v123;
      if (v124)
      {
        v122 = __clz(__rbit64(v124));
        v120 = (v124 - 1) & v124;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_24F92CF88();
  __break(1u);
LABEL_60:
  sub_24E69A5C4(0, &qword_27F22BD50);
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F138E34(uint64_t a1)
{
  v2 = sub_24E6108BC(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      v26 = *(v4 + 176);
      v127 = *(v4 + 160);
      v128 = v26;
      v129 = *(v4 + 192);
      v130 = *(v4 + 208);
      v27 = *(v4 + 112);
      v123 = *(v4 + 96);
      v124 = v27;
      v28 = *(v4 + 144);
      v125 = *(v4 + 128);
      v126 = v28;
      v29 = *(v4 + 48);
      v119 = *(v4 + 32);
      v120 = v29;
      v30 = *(v4 + 80);
      v121 = *(v4 + 64);
      v122 = v30;
      v31 = *(v4 + 16);
      aBlock = *v4;
      v118 = v31;
      v33 = *(&aBlock + 1);
      v32 = v31;
      sub_24E8B94D4(&aBlock, &v103);
      sub_24E8B94D4(&aBlock, &v103);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102[0] = v2;
      v35 = sub_24E7728F0(v33, v32);
      v37 = *(v2 + 16);
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

      v41 = v36;
      if (*(v2 + 24) < v40)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v57 = v35;
      sub_24E8B601C();
      v35 = v57;
      if (v41)
      {
LABEL_3:
        v2 = v102[0];
        v5 = *(v102[0] + 56) + 216 * v35;
        v6 = *(v5 + 16);
        v103 = *v5;
        v104 = v6;
        v7 = *(v5 + 80);
        v9 = *(v5 + 32);
        v8 = *(v5 + 48);
        v107 = *(v5 + 64);
        v108 = v7;
        v105 = v9;
        v106 = v8;
        v10 = *(v5 + 144);
        v12 = *(v5 + 96);
        v11 = *(v5 + 112);
        v111 = *(v5 + 128);
        v112 = v10;
        v109 = v12;
        v110 = v11;
        v14 = *(v5 + 176);
        v13 = *(v5 + 192);
        v15 = *(v5 + 160);
        v116 = *(v5 + 208);
        v114 = v14;
        v115 = v13;
        v113 = v15;
        v16 = v118;
        *v5 = aBlock;
        *(v5 + 16) = v16;
        v17 = v119;
        v18 = v120;
        v19 = v122;
        *(v5 + 64) = v121;
        *(v5 + 80) = v19;
        *(v5 + 32) = v17;
        *(v5 + 48) = v18;
        v20 = v123;
        v21 = v124;
        v22 = v126;
        *(v5 + 128) = v125;
        *(v5 + 144) = v22;
        *(v5 + 96) = v20;
        *(v5 + 112) = v21;
        v23 = v127;
        v24 = v128;
        v25 = v129;
        *(v5 + 208) = v130;
        *(v5 + 176) = v24;
        *(v5 + 192) = v25;
        *(v5 + 160) = v23;
        sub_24EA3BBAC(&v103);
        sub_24EA3BBAC(&aBlock);
        goto LABEL_4;
      }

LABEL_11:
      v2 = v102[0];
      *(v102[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v43 = (*(v2 + 48) + 16 * v35);
      *v43 = v33;
      v43[1] = v32;
      v44 = *(v2 + 56) + 216 * v35;
      v45 = v130;
      v47 = v128;
      v46 = v129;
      *(v44 + 160) = v127;
      *(v44 + 176) = v47;
      *(v44 + 192) = v46;
      *(v44 + 208) = v45;
      v49 = v125;
      v48 = v126;
      v50 = v124;
      *(v44 + 96) = v123;
      *(v44 + 112) = v50;
      *(v44 + 128) = v49;
      *(v44 + 144) = v48;
      v52 = v121;
      v51 = v122;
      v53 = v120;
      *(v44 + 32) = v119;
      *(v44 + 48) = v53;
      *(v44 + 64) = v52;
      *(v44 + 80) = v51;
      v54 = v118;
      *v44 = aBlock;
      *(v44 + 16) = v54;

      sub_24EA3BBAC(&aBlock);
      v55 = *(v2 + 16);
      v39 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v39)
      {
        goto LABEL_33;
      }

      *(v2 + 16) = v56;
LABEL_4:
      v4 += 216;
      if (!--v3)
      {
        goto LABEL_15;
      }
    }

    sub_24E8A7F34(v40, isUniquelyReferenced_nonNull_native);
    v35 = sub_24E7728F0(v33, v32);
    if ((v41 & 1) != (v42 & 1))
    {
      goto LABEL_36;
    }

LABEL_10:
    if (v41)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FE8);
  v58 = sub_24F92CB28();
  v59 = v58;
  v60 = 0;
  v61 = 1 << *(v2 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v2 + 64);
  v64 = (v61 + 63) >> 6;
  v98 = v58 + 64;
  for (i = v58; v63; i[2] = v85)
  {
    v65 = __clz(__rbit64(v63));
    v63 &= v63 - 1;
LABEL_24:
    v68 = v65 | (v60 << 6);
    v69 = (*(v2 + 48) + 16 * v68);
    v70 = v69[1];
    v101 = *v69;
    v71 = *(v2 + 56) + 216 * v68;
    v72 = *(v71 + 16);
    aBlock = *v71;
    v118 = v72;
    v73 = *(v71 + 80);
    v75 = *(v71 + 32);
    v74 = *(v71 + 48);
    v121 = *(v71 + 64);
    v122 = v73;
    v119 = v75;
    v120 = v74;
    v76 = *(v71 + 144);
    v78 = *(v71 + 96);
    v77 = *(v71 + 112);
    v125 = *(v71 + 128);
    v126 = v76;
    v123 = v78;
    v124 = v77;
    v80 = *(v71 + 176);
    v79 = *(v71 + 192);
    v81 = *(v71 + 160);
    v130 = *(v71 + 208);
    v128 = v80;
    v129 = v79;
    v127 = v81;
    sub_24E69A5C4(0, &qword_27F239FE0);
    v113 = *(v71 + 160);
    v114 = *(v71 + 176);
    v115 = *(v71 + 192);
    v116 = *(v71 + 208);
    v109 = *(v71 + 96);
    v110 = *(v71 + 112);
    v111 = *(v71 + 128);
    v112 = *(v71 + 144);
    v105 = *(v71 + 32);
    v106 = *(v71 + 48);
    v107 = *(v71 + 64);
    v108 = *(v71 + 80);
    v103 = *v71;
    v104 = *(v71 + 16);

    sub_24E8B94D4(&aBlock, v102);
    sub_24EA3B690(&v103);
    v59 = i;
    *(v98 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
    v82 = (i[6] + 16 * v68);
    *v82 = v101;
    v82[1] = v70;
    *(i[7] + 8 * v68) = v83;
    v84 = i[2];
    v39 = __OFADD__(v84, 1);
    v85 = v84 + 1;
    if (v39)
    {
      goto LABEL_34;
    }
  }

  v66 = v60;
  while (1)
  {
    v60 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v60 >= v64)
    {
      break;
    }

    v67 = *(v2 + 64 + 8 * v60);
    ++v66;
    if (v67)
    {
      v65 = __clz(__rbit64(v67));
      v63 = (v67 - 1) & v67;
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FF0);
  v86 = sub_24F92A9E8();
  v87 = [objc_opt_self() sharedManager];
  v88 = v87;
  v89 = *(v59 + 16);
  if (v89)
  {
    v100 = v87;
    v90 = sub_24EAEACA0(v89, 0);
    v91 = sub_24EAE9640(&aBlock, (v90 + 32), v89, v59);

    sub_24E6586B4();
    if (v91 != v89)
    {
      goto LABEL_35;
    }

    v88 = v100;
  }

  sub_24E69A5C4(0, &qword_27F239FE0);
  v92 = sub_24F92B588();

  sub_24E615E00(v97 + 80, &aBlock);
  v93 = swift_allocObject();
  sub_24E612C80(&aBlock, (v93 + 2));
  v93[7] = i;
  v93[8] = 0xD000000000000023;
  v93[9] = 0x800000024FA6D170;
  v93[10] = v86;
  *&v119 = sub_24F13BED0;
  *(&v119 + 1) = v93;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v118 = sub_24F13C6AC;
  *(&v118 + 1) = &block_descriptor_28_3;
  v94 = _Block_copy(&aBlock);

  [v88 processPurchases:v92 withResponseHandler:v94];
  _Block_release(v94);

  *(swift_allocObject() + 16) = v2;
  *(&v118 + 1) = sub_24F929638();
  *&v119 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&aBlock);
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A60);
  v95 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  return v95;
}

uint64_t sub_24F139588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *a1 + 56;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
    v14 = v9;
LABEL_10:
    v9 = (v14 - 1) & v14;
    if (*(a2 + 16))
    {
      v16 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_24E7728F0(v17, v18);
      if (v20)
      {
        v21 = *(a2 + 56) + 216 * v19;
        v22 = *(v21 + 16);
        v47 = *v21;
        v48 = v22;
        v23 = *(v21 + 80);
        v25 = *(v21 + 32);
        v24 = *(v21 + 48);
        v51 = *(v21 + 64);
        v52 = v23;
        v49 = v25;
        v50 = v24;
        v26 = *(v21 + 144);
        v28 = *(v21 + 96);
        v27 = *(v21 + 112);
        v55 = *(v21 + 128);
        v56 = v26;
        v53 = v28;
        v54 = v27;
        v30 = *(v21 + 176);
        v29 = *(v21 + 192);
        v31 = *(v21 + 160);
        v60 = *(v21 + 208);
        v58 = v30;
        v59 = v29;
        v57 = v31;
        sub_24E8B94D4(&v47, v46);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24E619C64(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v33 = *(v13 + 16);
        v32 = *(v13 + 24);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          result = sub_24E619C64((v32 > 1), v33 + 1, 1, v13);
          v34 = v33 + 1;
          v13 = result;
        }

        *(v13 + 16) = v34;
        v35 = v13 + 216 * v33;
        v36 = v48;
        *(v35 + 32) = v47;
        *(v35 + 48) = v36;
        v37 = v49;
        v38 = v50;
        v39 = v52;
        *(v35 + 96) = v51;
        *(v35 + 112) = v39;
        *(v35 + 64) = v37;
        *(v35 + 80) = v38;
        v40 = v53;
        v41 = v54;
        v42 = v56;
        *(v35 + 160) = v55;
        *(v35 + 176) = v42;
        *(v35 + 128) = v40;
        *(v35 + 144) = v41;
        v43 = v57;
        v44 = v58;
        v45 = v59;
        *(v35 + 240) = v60;
        *(v35 + 208) = v44;
        *(v35 + 224) = v45;
        *(v35 + 192) = v43;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      *a3 = v13;
      return result;
    }

    v14 = *(v6 + 8 * v15);
    ++v12;
    if (v14)
    {
      v12 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_24F1397CC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = a7;
  *(&v95 + 1) = a6;
  *&v95 = a5;
  v96 = a4;
  v10 = sub_24F928418();
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v99 = sub_24F92AAE8();
  v12 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24F9299E8();

  if (!a1)
  {
    if (!a2)
    {
      if (qword_27F210588 == -1)
      {
LABEL_39:
        __swift_project_value_buffer(v99, qword_27F39C3F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F928408();
        sub_24F9283F8();
        *(&v103 + 1) = MEMORY[0x277D837D0];
        v102 = v95;

        sub_24F9283D8();
        sub_24E601704(&v102, &qword_27F2129B0);
        sub_24F9283F8();
        sub_24F928428();
        sub_24F92A5A8();

        *&v102 = MEMORY[0x277D84FA0];
        sub_24F92A9C8();
        return;
      }

LABEL_93:
      swift_once();
      goto LABEL_39;
    }

    v41 = a2;
    sub_24F92A9A8();
    v42 = a2;

    goto LABEL_32;
  }

  v14 = &selRef_buttonShapesDidChange;
  v86 = a1;
  if (([v86 success] & 1) == 0)
  {
    v43 = [v86 error];
    if (!v43)
    {
      if (qword_27F210588 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v99, qword_27F39C3F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      *(&v103 + 1) = MEMORY[0x277D837D0];
      v102 = v95;

      sub_24F9283D8();
      sub_24E601704(&v102, &qword_27F2129B0);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();

      *&v102 = MEMORY[0x277D84FA0];
      sub_24F92A9C8();
      goto LABEL_89;
    }

    v44 = v43;
    sub_24F92A9A8();

    v42 = v86;

LABEL_32:

    return;
  }

  v109 = MEMORY[0x277D84F90];
  v15 = [v86 items];
  sub_24E69A5C4(0, &qword_27F239FF8);
  v16 = sub_24F92B5A8();

  if (v16 >> 62)
  {
    v17 = sub_24F92C738();
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_5:
      v94 = v17;
      if (v17 >= 1)
      {
        v18 = 0;
        v98 = v16 & 0xC000000000000001;
        v92 = (v12 + 16);
        v91 = "s neither success nor error";
        v90 = (v12 + 8);
        v88 = MEMORY[0x277D84F90];
        v89 = xmmword_24F93DE60;
        v93 = v16;
        v19 = v94;
        while (1)
        {
          if (v98)
          {
            v20 = MEMORY[0x253052270](v18, v16);
          }

          else
          {
            v20 = *(v16 + 8 * v18 + 32);
          }

          v21 = v20;
          if ([v20 v14[407]] && (v22 = sub_24F13A844(v96)) != 0)
          {
            v23 = v22;
            MEMORY[0x253050F00]();
            if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
              v19 = v94;
            }

            sub_24F92B638();

            v88 = v109;
          }

          else
          {
            v24 = [v21 error];
            if (v24)
            {
              v25 = v24;
              v26 = [v21 purchase];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 itemID];

                v29 = [v28 stringValue];
                goto LABEL_21;
              }

              v29 = [v21 bundleID];
              if (v29)
              {
LABEL_21:
                v30 = sub_24F92B0D8();
                v32 = v31;
              }

              else
              {
                v30 = 0;
                v32 = 0;
              }

              if (qword_27F210588 != -1)
              {
                swift_once();
              }

              v33 = v99;
              v34 = __swift_project_value_buffer(v99, qword_27F39C3F8);
              (*v92)(v97, v34, v33);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
              sub_24F928468();
              *(swift_allocObject() + 16) = v89;
              sub_24F928408();
              sub_24F9283F8();
              v35 = MEMORY[0x277D837D0];
              *(&v103 + 1) = MEMORY[0x277D837D0];
              v102 = v95;

              sub_24F9283D8();
              sub_24E601704(&v102, &qword_27F2129B0);
              sub_24F9283F8();
              if (v32)
              {
                *(&v103 + 1) = v35;
                *&v102 = v30;
                *(&v102 + 1) = v32;
              }

              else
              {
                v103 = 0u;
                v102 = 0u;
              }

              sub_24F9283D8();
              sub_24E601704(&v102, &qword_27F2129B0);
              sub_24F9283F8();
              swift_getErrorValue();
              v36 = v100;
              v37 = v101;
              *(&v103 + 1) = v101;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v102);
              (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v36, v37);
              sub_24F9283E8();
              sub_24E601704(&v102, &qword_27F2129B0);
              sub_24F9283F8();
              sub_24F928428();
              v39 = v99;
              v40 = v97;
              sub_24F92A5A8();

              (*v90)(v40, v39);
              v14 = &selRef_buttonShapesDidChange;
              v19 = v94;
              v16 = v93;
              goto LABEL_8;
            }
          }

LABEL_8:
          if (v19 == ++v18)
          {

            v45 = v88;
            goto LABEL_45;
          }
        }
      }

      __break(1u);
      goto LABEL_91;
    }
  }

  v45 = MEMORY[0x277D84F90];
LABEL_45:
  v97 = (v45 >> 62);
  if (v45 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v47 = 0;
    v99 = v45 & 0xC000000000000001;
    v98 = v45 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v99)
      {
        v48 = MEMORY[0x253052270](v47, v45);
      }

      else
      {
        if (v47 >= *(v98 + 16))
        {
          goto LABEL_60;
        }

        v48 = *(v45 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v51 = [objc_opt_self() defaultCenter];
      if (qword_27F2103A8 != -1)
      {
        swift_once();
      }

      v52 = qword_27F22A8E0;
      *&v102 = 0x6573616863727570;
      *(&v102 + 1) = 0xE800000000000000;
      sub_24F92C7F8();
      v108 = sub_24E69A5C4(0, &qword_27F239FE0);
      v107 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135D8);
      v53 = sub_24F92CB58();
      v54 = v49;
      sub_24E60169C(v106, &v102, qword_27F23E470);
      v55 = sub_24E76D934(&v102);
      if (v56)
      {
        goto LABEL_61;
      }

      v53[(v55 >> 6) + 8] |= 1 << v55;
      v57 = v53[6] + 40 * v55;
      v58 = v102;
      v59 = v103;
      *(v57 + 32) = v104;
      *v57 = v58;
      *(v57 + 16) = v59;
      sub_24E612B0C(&v105, (v53[7] + 32 * v55));
      v60 = v53[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_62;
      }

      v53[2] = v62;
      sub_24E601704(v106, qword_27F23E470);
      v63 = v45;
      v64 = sub_24F92AE28();

      [v51 postNotificationName:v52 object:0 userInfo:v64];

      v45 = v63;
      ++v47;
      if (v50 == i)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

LABEL_64:
  if (v97)
  {
    v65 = sub_24F92C738();
  }

  else
  {
    v65 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = MEMORY[0x277D84F90];
  if (!v65)
  {
    v71 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_75;
    }

LABEL_86:
    v72 = sub_24F92C738();
    if (v72)
    {
      goto LABEL_76;
    }

    goto LABEL_87;
  }

  *&v102 = MEMORY[0x277D84F90];
  sub_24F92C978();
  if (v65 < 0)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v67 = 0;
  do
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x253052270](v67, v45);
    }

    else
    {
      v68 = *(v45 + 8 * v67 + 32);
    }

    v69 = v68;
    ++v67;
    v70 = [v68 itemID];

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (v65 != v67);
  v71 = v102;
  if (v102 >> 62)
  {
    goto LABEL_86;
  }

LABEL_75:
  v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v72)
  {
LABEL_76:
    *&v102 = v66;
    sub_24F45814C(0, v72 & ~(v72 >> 63), 0);
    if (v72 < 0)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v73 = 0;
    v74 = v102;
    do
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x253052270](v73, v71);
      }

      else
      {
        v75 = *(v71 + 8 * v73 + 32);
      }

      v76 = v75;
      v77 = [v75 stringValue];
      v78 = sub_24F92B0D8();
      v80 = v79;

      *&v102 = v74;
      v82 = *(v74 + 16);
      v81 = *(v74 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_24F45814C((v81 > 1), v82 + 1, 1);
        v74 = v102;
      }

      ++v73;
      *(v74 + 16) = v82 + 1;
      v83 = v74 + 16 * v82;
      *(v83 + 32) = v78;
      *(v83 + 40) = v80;
    }

    while (v72 != v73);

    goto LABEL_88;
  }

LABEL_87:

  v74 = MEMORY[0x277D84F90];
LABEL_88:
  v84 = sub_24F45D9F8(v74);

  *&v102 = v84;
  sub_24F92A9C8();

LABEL_89:
}

id sub_24F13A844(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F928418();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92AAE8();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 purchase];
  if (v12)
  {

    return [v2 purchase];
  }

  v66 = v6;
  v70 = v2;
  v14 = [v2 itemID];
  if (v14)
  {
    v15 = v14;
    v16 = [v15 stringValue];
    v17 = sub_24F92B0D8();
    v19 = v18;

    if (*(a1 + 16))
    {
      v20 = sub_24E7728F0(v17, v19);
      v22 = v21;

      if (v22)
      {
        v13 = *(*(a1 + 56) + 8 * v20);

        return v13;
      }
    }

    else
    {
    }
  }

  v67 = v11;
  v68 = v8;
  if (qword_27F210588 != -1)
  {
LABEL_46:
    swift_once();
  }

  v23 = __swift_project_value_buffer(v7, qword_27F39C3F8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v25 = *(sub_24F928468() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v60 = *(v25 + 80);
  v61 = v26;
  v62 = v24;
  v28 = swift_allocObject();
  v59 = xmmword_24F93DE60;
  *(v28 + 16) = xmmword_24F93DE60;
  v64 = v27;
  sub_24F9283A8();
  v65 = v7;
  v63 = v23;
  sub_24F92A5A8();

  v29 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a1 + 64);
  v7 = (v30 + 63) >> 6;

  v33 = 0;
  v34 = &off_279691000;
  v69 = a1;
  while (v32)
  {
    v36 = v70;
LABEL_23:
    v13 = *(*(a1 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
    v38 = [v13 v34[269]];
    if (v38)
    {
      v39 = v38;
      v40 = sub_24F92B0D8();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v32 &= v32 - 1;
    v43 = [v36 v34[269]];
    if (v43)
    {
      v44 = v43;
      v45 = sub_24F92B0D8();
      v47 = v46;

      if (!v42)
      {
        if (!v47)
        {
          goto LABEL_44;
        }

        goto LABEL_14;
      }

      if (v47)
      {
        if (v40 == v45 && v42 == v47)
        {

          return v13;
        }

        v35 = sub_24F92CE08();

        if (v35)
        {
LABEL_44:

          return v13;
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    else if (!v42)
    {
      goto LABEL_44;
    }

LABEL_15:
    a1 = v69;
    v34 = &off_279691000;
  }

  v36 = v70;
  while (1)
  {
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v37 >= v7)
    {
      break;
    }

    v32 = *(v29 + 8 * v37);
    ++v33;
    if (v32)
    {
      v33 = v37;
      goto LABEL_23;
    }
  }

  v48 = v65;
  (*(v68 + 16))(v67, v63, v65);
  *(swift_allocObject() + 16) = v59;
  sub_24F928408();
  sub_24F9283F8();
  v49 = [v36 itemID];
  v50 = v49;
  if (v49)
  {
    v49 = sub_24E69A5C4(0, &qword_27F22BD50);
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v71 = v50;
  v74 = v49;
  sub_24F9283D8();
  sub_24E601704(&v71, &qword_27F2129B0);
  sub_24F9283F8();
  v51 = [v36 v34 + 3960];
  if (v51)
  {
    v52 = v51;
    v53 = sub_24F92B0D8();
    v55 = v54;

    v56 = MEMORY[0x277D837D0];
  }

  else
  {
    v53 = 0;
    v55 = 0;
    v56 = 0;
    v73 = 0;
  }

  v71 = v53;
  v72 = v55;
  v74 = v56;
  sub_24F9283D8();
  sub_24E601704(&v71, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  v57 = v67;
  sub_24F92A5A8();

  (*(v68 + 8))(v57, v48);
  return 0;
}

uint64_t sub_24F13AEE0(uint64_t *a1, char a2)
{
  v5 = sub_24F929C38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2295C0);
  v11 = sub_24F92A9E8();
  v12 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v20[0] = v10;
  v20[1] = v9;
  v21 = 0;
  (*(v12 + 64))(v20, &v21, ObjectType, v12);
  sub_24F929C28();

  sub_24F928FE8();
  (*(v6 + 104))(v8, *MEMORY[0x277D220E8], v5);
  v14 = sub_24F929BD8();

  (*(v6 + 8))(v8, v5);
  sub_24EB496EC(v10, v9, a2, v14, "GameStoreKit/Commerce.swift", 27, 2);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = v10;
  v16[5] = v9;
  v17 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();

  v18 = sub_24F92BEF8();
  v20[3] = v17;
  v20[4] = MEMORY[0x277D225C0];
  v20[0] = v18;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v11;
}

uint64_t sub_24F13B1A4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    v16 = *a1;
    return sub_24F92A9C8();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = *(result + 32);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v12 = a4;
      v15[0] = a4;
      v15[1] = a5;
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = v12;
      *(v13 + 32) = a5;
      *(v13 + 40) = a2;
      *(v13 + 48) = 0;
      v14 = *(v10 + 24);

      v14(v15, sub_24F13C080, v13, ObjectType, v10);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24F13B2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 32);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    *&v61 = a2;
    *(&v61 + 1) = a3;
    (*(v9 + 72))(&v61, 0, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + 32);
    swift_unknownObjectRetain();

    v13 = swift_getObjectType();
    *&v61 = a2;
    *(&v61 + 1) = a3;
    v14 = (*(v12 + 56))(&v61, v13, v12);
    v42 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v42 = 0;
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  *&v41 = a2;
  *(&v41 + 1) = a3;
  if (!v16)
  {
    v19 = 0;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = xmmword_24F962330;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v20 = 0x3FFFFFEFELL;
    goto LABEL_12;
  }

  v17 = *(v16 + 32);
  swift_unknownObjectRetain();

  v18 = swift_getObjectType();
  *&v76 = a2;
  *(&v76 + 1) = a3;
  (*(v17 + 48))(&v61, &v76, v18, v17);
  swift_unknownObjectRelease();
  v78 = v63;
  v79 = v64;
  v76 = v61;
  v77 = v62;
  v19 = *(&v64 + 1);
  v20 = v64;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  if ((v64 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
LABEL_12:
    sub_24E60169C(&v76, &v61, &unk_27F22BE00);
    v61 = v73;
    v62 = v74;
    v63 = v75;
    *&v64 = v20;
    *(&v64 + 1) = v19;
    v65 = 1;
    v71 = 0x1000000000000000;
    sub_24E601704(&v61, &qword_27F222D38);
    goto LABEL_13;
  }

  v61 = v76;
  v62 = v77;
  v63 = v78;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v60 = v64;
  *&v53 = 1;
  *&v56 = 0x1000000000000000;
  sub_24E60169C(&v76, &v49, &unk_27F22BE00);
  sub_24E60169C(&v61, &v49, &unk_27F22BE00);
  v21 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v57, &v53);
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  sub_24E88D2AC(&v45);
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  sub_24E88D2AC(&v49);
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v56 = __PAIR128__(v19, v20);
  sub_24E601704(&v53, &unk_27F22BE00);
  if (v21)
  {
    if (v14)
    {
      v22 = a5;
      v23 = swift_getObjectType();
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = xmmword_24F966510;
      v24 = *(v42 + 64);
      swift_unknownObjectRetain();
      v25 = v23;
      a5 = v22;
      v24(&v61, v25, v42);
LABEL_25:
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    goto LABEL_26;
  }

LABEL_13:
  v44 = a5;
  if (v14)
  {
    v26 = swift_getObjectType();
    v27 = *(v42 + 16);
    swift_unknownObjectRetain();
    v27(&v61, v26, v42);
    swift_unknownObjectRelease();
    v29 = *(&v61 + 1);
    v28 = v61;
    v30 = *(&v62 + 1);
    v31 = v62;
    v14 = *(&v63 + 1);
    v32 = v63;
    v33 = *(&v64 + 1);
    v34 = v64;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0x3FFFFFEFELL;
  }

  v73 = v76;
  v74 = v77;
  v75 = v78;
  v35 = v79;
  if ((v79 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    if ((v34 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v61 = v76;
      v62 = v77;
      v63 = v78;
      v64 = v79;
      sub_24E60169C(&v76, &v57, &unk_27F22BE00);
      sub_24E601704(&v61, &unk_27F22BE00);
      a5 = v44;
      goto LABEL_26;
    }

    v43 = v33;
    sub_24E60169C(&v76, &v61, &unk_27F22BE00);
    goto LABEL_22;
  }

  v61 = v76;
  v62 = v77;
  v63 = v78;
  v64 = v79;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v60 = v79;
  if ((v34 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    v43 = v33;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    sub_24E60169C(&v76, &v49, &unk_27F22BE00);
    sub_24E60169C(&v61, &v49, &unk_27F22BE00);
    sub_24E88D2AC(&v53);
LABEL_22:
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v64 = v35;
    v65 = v28;
    v66 = v29;
    v67 = v31;
    v68 = v30;
    v69 = v32;
    v70 = v14;
    v71 = v34;
    v72 = v43;
    sub_24E601704(&v61, &qword_27F222D38);
    a5 = v44;
    goto LABEL_23;
  }

  *&v53 = v28;
  *(&v53 + 1) = v29;
  *&v54 = v31;
  *(&v54 + 1) = v30;
  *&v55 = v32;
  *(&v55 + 1) = v14;
  *&v56 = v34;
  *(&v56 + 1) = v33;
  sub_24E60169C(&v76, &v49, &unk_27F22BE00);
  sub_24E60169C(&v61, &v49, &unk_27F22BE00);
  v40 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v57, &v53);
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  sub_24E88D2AC(&v45);
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  sub_24E88D2AC(&v49);
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v56 = v35;
  sub_24E601704(&v53, &unk_27F22BE00);
  a5 = v44;
  if (v40)
  {
    goto LABEL_26;
  }

LABEL_23:
  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  if (v36)
  {
    v37 = *(v36 + 32);
    swift_unknownObjectRetain();

    v38 = swift_getObjectType();
    v57 = v41;
    (*(v37 + 40))(&v57, v38, v37);
    goto LABEL_25;
  }

LABEL_26:
  LOBYTE(v57) = a5;
  sub_24F92A9C8();
  swift_unknownObjectRelease();
  return sub_24E601704(&v76, &unk_27F22BE00);
}

uint64_t Commerce.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return v0;
}

uint64_t Commerce.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_24F13BA90(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F928FD8();

  sub_24F92A758();
  *(v2 + 24) = v5[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18);
  sub_24F92A758();
  sub_24E612C80(v5, v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260);
  sub_24F92A758();
  sub_24E612C80(v5, v2 + 80);
  *(v2 + 120) = a2;
  return v2;
}

uint64_t sub_24F13BB94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F13BCEC()
{

  return swift_deallocObject();
}

uint64_t sub_24F13BD50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F13BD88()
{

  return swift_deallocObject();
}

uint64_t dispatch thunk of Commerce.purchase(with:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 152))();
}

uint64_t sub_24F13BED4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F13C038()
{

  return swift_deallocObject();
}

uint64_t sub_24F13C0AC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F13C13C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F13C19C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_52Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_49Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_55Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F13C3A4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t objectdestroy_2Tm_3()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24F13C448()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_94Tm_0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

GameStoreKit::TextCardTitleStyle_optional __swiftcall TextCardTitleStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TextCardTitleStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x4373726F74696465;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_24F13C774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4373726F74696465;
  }

  else
  {
    v3 = 1954047348;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED00006563696F68;
  }

  if (*a2)
  {
    v5 = 0x4373726F74696465;
  }

  else
  {
    v5 = 1954047348;
  }

  if (*a2)
  {
    v6 = 0xED00006563696F68;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F13C820()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F13C8A8()
{
  sub_24F92B218();
}

uint64_t sub_24F13C91C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F13C9A0@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F13CA00(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (*v1)
  {
    v2 = 0x4373726F74696465;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00006563696F68;
  }

  *a1 = v2;
  a1[1] = v3;
}