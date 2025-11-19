void sub_1D5B91BF8()
{
  if (!qword_1EDF04138)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04138);
    }
  }
}

uint64_t sub_1D5B91C58()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[1] = 0x4000000000000000;
  sub_1D5B6E12C(0, &qword_1EDF3C208);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF187A0 = result;
  return result;
}

uint64_t FeedHeadlineClusteringService.init(clusteringService:headlineService:feedPersonalizer:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  sub_1D5B7DDE8(a2, v3 + 24);
  *(v3 + 64) = a3;
  return v3;
}

char *FeedCursorFactory.init(emitterFactory:feedPoolManager:bundleSubscriptionManager:bundleSessionManager:offlineProvider:loggingChannel:feedContextFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;
  v13 = sub_1D5B82A64(a1, a2, a3, a4, a5, a6, a7, a8);

  (*(*(*(v12 + 88) - 8) + 8))(a2);
  (*(*(*(v12 + 80) - 8) + 8))(a1);
  return v13;
}

void *sub_1D5B9202C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1D725B42C();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1D5B7889C(&unk_1EDF3BAF0, 255, MEMORY[0x1E69D67A0]);
  sub_1D5B82958(0, &unk_1EDF1B590, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1D5B8192C();
  sub_1D7263B6C();
  sub_1D5B8B1A8();
  swift_allocObject();
  v3[4] = sub_1D725AD1C();
  sub_1D5B82958(0, &unk_1EDF17AA8, sub_1D5B92378, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v3[5] = sub_1D725B94C();
  swift_allocObject();
  v3[6] = sub_1D725B94C();
  swift_allocObject();
  v3[7] = sub_1D725B94C();
  swift_allocObject();
  v3[8] = sub_1D725B94C();
  swift_allocObject();
  v3[9] = sub_1D725B94C();
  swift_allocObject();
  v3[10] = sub_1D725B94C();
  v11 = 0;
  v12 = -1;
  swift_allocObject();
  v3[11] = sub_1D725B94C();
  v3[2] = a1;
  v3[3] = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1D5B7889C(&qword_1EDF09150, v9, type metadata accessor for SportsEmbedConfigurationManager);
  swift_unknownObjectRetain();

  sub_1D725B54C();

  __swift_destroy_boxed_opaque_existential_1(&v11);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v3;
}

void sub_1D5B92378()
{
  if (!qword_1EDF0B2C0)
  {
    sub_1D5B8D860(255, qword_1EDF0B2C8, type metadata accessor for ResourceConfigurationCache);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0B2C0);
    }
  }
}

uint64_t sub_1D5B92410@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17C98 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17CA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D5B924D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17D30 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17D38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D5B925C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17E08 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17E10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D5B9271C()
{
  v0 = sub_1D725ABEC();
  __swift_allocate_value_buffer(v0, qword_1EDF17DA8);
  __swift_project_value_buffer(v0, qword_1EDF17DA8);
  return sub_1D725ABDC();
}

uint64_t sub_1D5B92780@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF17DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725ABEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF17DA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1D5B92844()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    sub_1D725891C();
    if (v1 <= 0x3F)
    {
      sub_1D5B49F88(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D5B49F88(319, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5B929F8(void *a1)
{
  v2 = v1;
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1D5B92BEC();
  swift_allocObject();
  *(v1 + 16) = sub_1D725AEFC();
  v6 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  v7 = sub_1D725891C();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth) = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_lock;
  sub_1D5B8A99C();
  sub_1D5B92C40(0, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D5B89968();
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v2 + v8) = sub_1D725A7AC();
  *(v2 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_log) = a1;
  v9 = a1;
  sub_1D7262EDC();
  sub_1D725C30C();
  return v2;
}

void sub_1D5B92BEC()
{
  if (!qword_1EDF17C08)
  {
    v0 = sub_1D725AF0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C08);
    }
  }
}

void sub_1D5B92C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1D5B92CA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a6;
  v40 = a5;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v9 = *v6;
  v10 = *(*v6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BC0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = sub_1D726393C();
  v12 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v13);
  v15 = &v31 - v14;
  v16 = *a1;
  v32 = a1[1];
  v33 = v16;
  v34 = *(a1 + 32);
  v42 = 0;
  sub_1D5B582E8(0, &qword_1EDF17C50, &type metadata for FeedManagerLoadSource, MEMORY[0x1E69D6550]);
  swift_allocObject();
  v6[3] = sub_1D725AE2C();
  v17 = v7 + *(*v7 + 184);
  *v17 = 0;
  v17[8] = 1;
  v18 = *(*v6 + 192);
  v19 = *(*(TupleTypeMetadata2 - 8) + 56);
  v41 = *(a1 + 1);
  v19(v15, 1, 1, TupleTypeMetadata2);
  v20 = *(v9 + 88);
  v21 = sub_1D5B82CD8(v15);
  (*(v12 + 8))(v15, v35);
  *(v7 + v18) = v21;
  v22 = v32;
  v7[4] = v33;
  v7[5] = v22;
  *(v7 + 3) = v41;
  *(v7 + 64) = v34;
  v23 = *(*v7 + 152);
  v24 = sub_1D726393C();
  v25 = *(*(v24 - 8) + 16);
  v25(v7 + v23, v36, v24);
  v25(v7 + *(*v7 + 160), v37, v24);
  v26 = *(*(v20 - 8) + 16);
  v27 = v20;
  v28 = v39;
  v26(v7 + *(*v7 + 168), v38, v27);
  (*(*(v10 - 8) + 16))(v7 + *(*v7 + 176), v40, v10);
  if (!v28)
  {
    type metadata accessor for FeedLoadingGate(0);
    swift_allocObject();
    v29 = v41;
    v28 = sub_1D5B82EA8(1, v29);
  }

  v7[2] = v28;
  return v7;
}

uint64_t FeedRebuildPolicy.init(appConfigManager:groupLimitKeyPath:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = FCNewsAppConfigurationManager.accessor(for:)(a1, ObjectType);
  swift_unknownObjectRelease();

  *a2 = v5;
  return result;
}

void sub_1D5B9322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v12[4] = sub_1D6AEC014;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D5B6B06C;
  v12[3] = &block_descriptor_75;
  v11 = _Block_copy(v12);

  [v8 scheduleLowPriorityBlockForMainThread_];
  _Block_release(v11);
}

uint64_t sub_1D5B93364()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5B9339C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5B933F0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1D5B93430()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF3C228 = result;
  return result;
}

uint64_t sub_1D5B935DC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D726207C();
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v12[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF181D0 = result;
  return result;
}

void sub_1D5B937D4()
{
  if (!qword_1EDF1AD98)
  {
    v0 = sub_1D72629BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AD98);
    }
  }
}

uint64_t sub_1D5B93848@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_modificationDate;
  swift_beginAccess();
  v5 = sub_1D725891C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1D5B938D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_1D5B93910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v4[2] = (*(a3 + 16))(a2, a3);
  v4[3] = (*(a3 + 24))(a2, a3);
  v9 = *(v8 + 80);
  v4[4] = sub_1D5B8EF78(a1, v9, a2, a3);
  v4[5] = v10;
  v4[6] = sub_1D5B8FBA8(a1, v9, a2, a3);
  v4[7] = v11;
  v4[8] = sub_1D5B93A6C(a1, v9, a2, a3);
  v4[9] = v12;
  v4[10] = sub_1D71782BC(a1, v9, a2, a3);
  v4[11] = v13;
  v4[12] = sub_1D71783E8(a1, v9, a2, a3);
  v4[13] = v14;
  v4[14] = sub_1D7178514(a1, v9, a2, a3);
  v4[15] = v15;
  return v4;
}

uint64_t sub_1D5B93A38()
{
  sub_1D5B8EF68();
}

uint64_t (*sub_1D5B93A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1D7178ABC;
}

uint64_t sub_1D5B93BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725891C();
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

uint64_t FCNewsAppConfiguration.todayFeedEditionConfig.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D72620DC();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v4, v6).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 respondsToSelector_];
  if (result)
  {
    v11 = [v2 todayFeedEditionConfigJSON];
    if (!v11 || (v12 = v11, sub_1D726207C(), v12, sub_1D72620CC(), v13 = sub_1D726208C(), v15 = v14, , (*(v5 + 8))(v9, v4), v15 >> 60 == 15))
    {
      if (qword_1EDF38CD8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v16 = unk_1EDF38CE8;
      *a1 = qword_1EDF38CE0;
      a1[1] = v16;
    }

    else
    {
      sub_1D725781C();
      swift_allocObject();
      sub_1D725780C();
      sub_1D5B93F9C();
      sub_1D72577FC();

      return sub_1D5B952E4(v13, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5B93F9C()
{
  result = qword_1EDF14F08;
  if (!qword_1EDF14F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F08);
  }

  return result;
}

void sub_1D5B93FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5B94070()
{
  result = qword_1EDF14FA0[0];
  if (!qword_1EDF14FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF14FA0);
  }

  return result;
}

unint64_t sub_1D5B940C4()
{
  result = qword_1EDF14F90;
  if (!qword_1EDF14F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F90);
  }

  return result;
}

unint64_t sub_1D5B9411C()
{
  result = qword_1EDF14F98;
  if (!qword_1EDF14F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F98);
  }

  return result;
}

uint64_t sub_1D5B94170()
{
  if (*v0)
  {
    return 0x6E496C6F6F706572;
  }

  else
  {
    return 0x6E69576863746566;
  }
}

uint64_t sub_1D5B941C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1D5B93FF0(0, &qword_1EDF03C70, sub_1D5B944A0, &type metadata for FeedEditionConfig.FetchWindow.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B944A0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v16;
  sub_1D5B49714(0, &qword_1EDF05250);
  LOBYTE(v17) = 0;
  sub_1D5B945A4();
  sub_1D726431C();
  v12 = v20;
  v23 = 1;
  sub_1D5B94C20();
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v17 = v20;
  v18 = v21;
  v19[0] = v22[0];
  *(v19 + 9) = *(v22 + 9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12;
  v14 = v18;
  *(v11 + 8) = v17;
  *(v11 + 24) = v14;
  *(v11 + 40) = v19[0];
  *(v11 + 49) = *(v19 + 9);
  return result;
}

__n128 sub_1D5B9444C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B941C0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_1D5B944A0()
{
  result = qword_1EDF14F68;
  if (!qword_1EDF14F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F68);
  }

  return result;
}

unint64_t sub_1D5B944F8()
{
  result = qword_1EDF14F58;
  if (!qword_1EDF14F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F58);
  }

  return result;
}

unint64_t sub_1D5B94550()
{
  result = qword_1EDF14F60;
  if (!qword_1EDF14F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F60);
  }

  return result;
}

unint64_t sub_1D5B945A4()
{
  result = qword_1EDF05248;
  if (!qword_1EDF05248)
  {
    sub_1D5B49714(255, &qword_1EDF05250);
    sub_1D5B8F49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05248);
  }

  return result;
}

uint64_t sub_1D5B9462C()
{
  if (*v0)
  {
    return 0x746E65747865;
  }

  else
  {
    return 0x686374616DLL;
  }
}

uint64_t sub_1D5B94660@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  sub_1D5B93FF0(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v37 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1D7264B0C();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v10;
  v16 = v36;
  v15 = v37;
  v43[0] = 0;
  v17 = sub_1D726425C();
  v19 = v18;
  v20 = v17;
  v43[0] = 1;
  v21 = sub_1D726425C();
  v34 = v22;
  v35 = v21;
  v43[0] = 2;
  v23 = sub_1D726425C();
  v32 = v24;
  v33 = v23;
  v45 = 3;
  v25 = sub_1D726425C();
  v27 = v26;
  v28 = *(v14 + 8);
  v31 = v25;
  v28(v13, v15);
  v44 = v19 & 1;
  v42 = v34 & 1;
  v40 = v32 & 1;
  v38 = v27 & 1;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v16 = v20;
  *(v16 + 8) = v44;
  *(v16 + 9) = *v43;
  *(v16 + 12) = *&v43[3];
  *(v16 + 16) = v35;
  *(v16 + 24) = v42;
  *(v16 + 25) = *v41;
  *(v16 + 28) = *&v41[3];
  *(v16 + 32) = v33;
  *(v16 + 40) = v40;
  v30 = *v39;
  *(v16 + 44) = *&v39[3];
  *(v16 + 41) = v30;
  *(v16 + 48) = v31;
  *(v16 + 56) = v38;
  return result;
}

double sub_1D5B94934@<D0>(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, _OWORD *a6@<X8>)
{
  sub_1D5B94660(a1, a2, a3, a4, a5, v10);
  if (!v6)
  {
    v9 = v10[1];
    *a6 = v10[0];
    a6[1] = v9;
    a6[2] = v11[0];
    result = *(v11 + 9);
    *(a6 + 41) = *(v11 + 9);
  }

  return result;
}

unint64_t sub_1D5B949E0()
{
  result = qword_1EDF14F88;
  if (!qword_1EDF14F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F88);
  }

  return result;
}

unint64_t sub_1D5B94A38()
{
  result = qword_1EDF14F78;
  if (!qword_1EDF14F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F78);
  }

  return result;
}

unint64_t sub_1D5B94A90()
{
  result = qword_1EDF14F80;
  if (!qword_1EDF14F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F80);
  }

  return result;
}

uint64_t sub_1D5B94AE4()
{
  v1 = 0x6E694D72756F68;
  if (*v0 != 2)
  {
    v1 = 0x78614D72756F68;
  }

  if (*v0 <= 1u)
  {
    return 0x4D7961646B656577;
  }

  else
  {
    return v1;
  }
}

uint64_t storeEnumTagSinglePayload for FormatFontDesign(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

unint64_t sub_1D5B94C20()
{
  result = qword_1EDF14F38;
  if (!qword_1EDF14F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F38);
  }

  return result;
}

unint64_t sub_1D5B94CC4()
{
  result = qword_1EDF14F50;
  if (!qword_1EDF14F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F50);
  }

  return result;
}

unint64_t sub_1D5B94D1C()
{
  result = qword_1EDF14F40;
  if (!qword_1EDF14F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F40);
  }

  return result;
}

unint64_t sub_1D5B94D74()
{
  result = qword_1EDF14F48;
  if (!qword_1EDF14F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F48);
  }

  return result;
}

uint64_t sub_1D5B94DC8()
{
  v1 = 0x7961646B656577;
  v2 = 1920298856;
  if (*v0 != 2)
  {
    v2 = 0x6C65447372756F68;
  }

  if (*v0)
  {
    v1 = 0x746C654473796164;
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5B94E68()
{
  result = qword_1EDF05228;
  if (!qword_1EDF05228)
  {
    sub_1D5B49714(255, &qword_1EDF05230);
    sub_1D5B94EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05228);
  }

  return result;
}

unint64_t sub_1D5B94EF0()
{
  result = qword_1EDF14F10;
  if (!qword_1EDF14F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F10);
  }

  return result;
}

uint64_t sub_1D5B94F44(void *a1)
{
  sub_1D5B93FF0(0, &qword_1EDF03C60, sub_1D5B951A8, &type metadata for FeedEditionConfig.RepoolInterval.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D5B951A8();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D5B49714(0, &qword_1EDF05250);
    v11[15] = 0;
    sub_1D5B945A4();
    sub_1D726431C();
    v9 = v12;
    v11[14] = 1;
    sub_1D72642FC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1D5B9517C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5B94F44(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1D5B951A8()
{
  result = qword_1EDF14F28;
  if (!qword_1EDF14F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F28);
  }

  return result;
}

unint64_t sub_1D5B95200()
{
  result = qword_1EDF14F18;
  if (!qword_1EDF14F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F18);
  }

  return result;
}

unint64_t sub_1D5B95258()
{
  result = qword_1EDF14F20;
  if (!qword_1EDF14F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F20);
  }

  return result;
}

uint64_t sub_1D5B952AC()
{
  if (*v0)
  {
    return 0x6C61767265746E69;
  }

  else
  {
    return 0x686374616DLL;
  }
}

uint64_t sub_1D5B952E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D5B952F8(a1, a2);
  }

  return a1;
}

uint64_t sub_1D5B952F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id static FCDateRange.firstEdition(date:config:)(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for FeedEdition();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725891C();
  v10 = *(*(v9 - 8) + 16);
  v14[0] = *a2;
  v10(v8, a1, v9);
  v14[1] = v14[0];
  v11 = FeedEditionConfig.fetchWindow(for:)(a1);
  *&v8[*(v5 + 28)] = v11;
  v12 = v11;
  sub_1D5B96C78(v8, type metadata accessor for FeedEdition);
  return v12;
}

uint64_t FeedEditionConfig.fetchWindow(for:)(uint64_t a1)
{
  sub_1D5B7B2CC(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v51 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v58 = &v51 - v13;
  v59 = sub_1D725891C();
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v14);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D7258C0C();
  v16 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v17);
  v79 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D7258C2C();
  result = MEMORY[0x1EEE9AC00](v78, v19);
  v77 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v1;
  v61 = *(v62 + 16);
  if (!v61)
  {
LABEL_29:
    v42 = objc_allocWithZone(MEMORY[0x1E69B5250]);
    v43 = sub_1D725881C();
    v44 = [v42 initWithStartDate:v43 timeInterval:86400.0];

    result = v44;
    if (v44)
    {
      return result;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v23 = 0;
  v60 = v62 + 32;
  v65 = *MEMORY[0x1E6969AB0];
  v74 = (v16 + 8);
  v75 = (v16 + 104);
  v73 = (v21 + 8);
  v64 = *MEMORY[0x1E6969A58];
  v57 = (v56 + 48);
  v53 = (v56 + 32);
  v54 = (v56 + 8);
  v76 = a1;
  while (1)
  {
    if (v23 >= *(v62 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v63 = v23;
    v24 = v60 + 72 * v23;
    v82[0] = *v24;
    v25 = *(v24 + 16);
    v26 = *(v24 + 32);
    v27 = *(v24 + 48);
    v83 = *(v24 + 64);
    v82[2] = v26;
    v82[3] = v27;
    v82[1] = v25;
    v28 = *(*&v82[0] + 16);
    v68 = *&v82[0];

    v66 = v28;
    if (v28)
    {
      break;
    }

LABEL_27:
    result = sub_1D5B95BEC(v82);
LABEL_28:
    v23 = v63 + 1;
    if (v63 + 1 == v61)
    {
      goto LABEL_29;
    }
  }

  v29 = 0;
  v30 = v68 + 48;
  while (1)
  {
    if (v29 >= *(v68 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v3 = *(v30 - 16);
    v71 = *v30;
    v81 = *(v30 + 8);
    v69 = *(v30 + 16);
    v72 = *(v30 + 24);
    v67 = *(v30 + 32);
    v70 = *(v30 + 40);
    v31 = *(v30 - 8);
    v32 = v77;
    sub_1D7258BCC();
    v33 = *v75;
    v34 = v79;
    v35 = v80;
    (*v75)(v79, v65, v80);
    v2 = sub_1D7258C1C();
    v36 = *v74;
    (*v74)(v34, v35);
    v37 = *v73;
    (*v73)(v32, v78);
    if (v31)
    {
      if (v2 <= 0)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < v3)
    {
      goto LABEL_7;
    }

    if (v81)
    {
      if (v2 > 7)
      {
        goto LABEL_7;
      }
    }

    else if (v71 < v2)
    {
      goto LABEL_7;
    }

    v2 = v77;
    sub_1D7258BCC();
    v39 = v79;
    v38 = v80;
    v33(v79, v64, v80);
    v40 = sub_1D7258C1C();
    v36(v39, v38);
    v37(v2, v78);
    if (v72)
    {
      if (v40 < 0)
      {
        goto LABEL_7;
      }
    }

    else if (v40 < v69)
    {
      goto LABEL_7;
    }

    if (v70)
    {
      break;
    }

    if (v67 >= v40)
    {
      goto LABEL_23;
    }

LABEL_7:
    ++v29;
    v30 += 64;
    a1 = v76;
    if (v66 == v29)
    {
      goto LABEL_27;
    }
  }

  if (v40 > 23)
  {
    goto LABEL_7;
  }

LABEL_23:
  v41 = v58;
  a1 = v76;
  sub_1D5B95C1C(v76, v58);
  v2 = v59;
  if ((*v57)(v41, 1, v59) == 1)
  {
    sub_1D5B95BEC(v82);
    result = _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v41);
    goto LABEL_28;
  }

  v3 = v55;
  (*v53)(v55, v41, v2);
  if ((sub_1D725883C() & 1) == 0)
  {
    (*v54)(v3, v2);
    goto LABEL_27;
  }

LABEL_32:
  sub_1D5B461FC();
  v45 = v56;
  v46 = *(v56 + 16);
  v47 = v51;
  v46(v51, a1, v2);
  v48 = *(v45 + 56);
  v48(v47, 0, 1, v2);
  v49 = v52;
  v46(v52, v3, v2);
  v48(v49, 0, 1, v2);
  result = sub_1D5B96B20(v47, v49);
  if (result)
  {
    v50 = result;
    (*v54)(v3, v2);
    sub_1D5B95BEC(v82);
    return v50;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1D5B95C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a1;
  v69 = a2;
  v4 = sub_1D7258B4C();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D7258B5C();
  v59 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v7);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D7258B0C();
  v57 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v9);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725891C();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B2CC(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v52 - v20;
  v22 = sub_1D7258C0C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D7258C2C();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v52 - v34;
  if (*(v3 + 64))
  {
    v55 = v27;
    v36 = v68;
    v37 = v69;
    v38 = *(v3 + 40);
    v39 = *(v3 + 48);
    sub_1D5B96288(v3, v68, v21);
    if (v39)
    {
      return sub_1D5DF42F8(v21, v37);
    }

    else
    {
      v54 = v38;
      sub_1D7258BCC();
      sub_1D5B76E3C(v21, v18);
      v42 = v64;
      v41 = v65;
      v43 = *(v64 + 48);
      v44 = v43(v18, 1, v65);
      v53 = v28;
      if (v44 == 1)
      {
        (*(v42 + 16))(v63, v36, v41);
        if (v43(v18, 1, v41) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v18);
        }
      }

      else
      {
        (*(v42 + 32))(v63, v18, v41);
      }

      v45 = v56;
      v46 = v57;
      (*(v57 + 104))(v56, *MEMORY[0x1E69698D0], v66);
      v47 = v58;
      v48 = v59;
      (*(v59 + 104))(v58, *MEMORY[0x1E69699C8], v67);
      v50 = v60;
      v49 = v61;
      v51 = v62;
      (*(v61 + 104))(v60, *MEMORY[0x1E6969998], v62);
      sub_1D7258B7C();
      (*(v49 + 8))(v50, v51);
      (*(v48 + 8))(v47, v67);
      (*(v46 + 8))(v45, v66);
      (*(v64 + 8))(v63, v65);
      (*(v53 + 8))(v32, v55);
      return _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v21);
    }
  }

  else
  {
    sub_1D7258BCC();
    (*(v23 + 104))(v26, *MEMORY[0x1E6969A58], v22);
    sub_1D7258BAC();
    (*(v23 + 8))(v26, v22);
    return (*(v28 + 8))(v35, v27);
  }
}

uint64_t sub_1D5B96288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v5 = sub_1D7258B5C();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v69 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D7258B4C();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v8);
  v67 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D7258B0C();
  v66 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v10);
  v65 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B2CC(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v61 = &v50 - v14;
  sub_1D5B7B2CC(0, &qword_1EDF18A38, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v50 - v17;
  v19 = sub_1D7257DEC();
  v63 = *(v19 - 8);
  v64 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v62 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D7258C0C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D7258C2C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32))
  {
    if (*(a1 + 16))
    {
      v32 = sub_1D725891C();
      v33 = *(*(v32 - 8) + 56);

      return v33(a3, 1, 1, v32);
    }

    else
    {
      v55 = *(a1 + 8);
      sub_1D7258BCC();
      v35 = *MEMORY[0x1E6969A58];
      v36 = *(v23 + 104);
      v57 = a3;
      v58 = v36;
      v36(v26, v35, v22);
      v54 = sub_1D7258C1C();
      v51 = *(v23 + 8);
      v51(v26, v22);
      v52 = v18;
      v37 = *(v28 + 8);
      v59 = v27;
      v60 = v28 + 8;
      v37(v31, v27);
      sub_1D7258BCC();
      v58(v26, *MEMORY[0x1E6969A88], v22);
      v53 = sub_1D7258C1C();
      v38 = v51;
      v51(v26, v22);
      v37(v31, v27);
      v56 = v37;
      sub_1D7258BCC();
      v58(v26, *MEMORY[0x1E6969A98], v22);
      sub_1D7258C1C();
      v38(v26, v22);
      v39 = v59;
      v37(v31, v59);
      sub_1D7258BCC();
      (*(v28 + 56))(v52, 1, 1, v39);
      v40 = sub_1D7258CFC();
      (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
      v41 = v62;
      sub_1D7257DDC();
      v42 = v65;
      v43 = v66;
      (*(v66 + 104))(v65, *MEMORY[0x1E69698D0], v73);
      v45 = v67;
      v44 = v68;
      v46 = v70;
      (*(v68 + 104))(v67, *MEMORY[0x1E69699A0], v70);
      v48 = v71;
      v47 = v72;
      v49 = v69;
      (*(v71 + 104))(v69, *MEMORY[0x1E69699C8], v72);
      sub_1D7258BDC();
      (*(v48 + 8))(v49, v47);
      (*(v44 + 8))(v45, v46);
      (*(v43 + 8))(v42, v73);
      (*(v63 + 8))(v41, v64);
      return v56(v31, v59);
    }
  }

  else
  {
    sub_1D7258BCC();
    (*(v23 + 104))(v26, *MEMORY[0x1E6969A48], v22);
    sub_1D7258BAC();
    (*(v23 + 8))(v26, v22);
    return (*(v28 + 8))(v31, v27);
  }
}

id sub_1D5B96B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = 0;
  if (v6(a1, 1, v4) != 1)
  {
    v7 = sub_1D725881C();
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1D725881C();
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDate:v7 endDate:v8];

  return v9;
}

uint64_t sub_1D5B96C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5B96CD8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1D5B96CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FeedServiceOptions.init(feedMode:rootCursorSource:rootCursorFreshness:database:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned __int8 *a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a1;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *a4;
  *a5 = v7;
  v11 = type metadata accessor for FeedServiceOptions(0);
  result = sub_1D5B96CF8(a2, &a5[v11[5]]);
  v13 = &a5[v11[6]];
  *v13 = v8;
  v13[8] = v9;
  if (v7)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v10 != 3)
  {
    v14 = v10;
  }

  a5[v11[7]] = v14;
  return result;
}

uint64_t FeedManager.prepare(context:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BC0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_1D726393C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21 - v12;
  v14 = CACurrentMediaTime();
  v15 = v1 + *(*v1 + 184);
  *v15 = v14;
  *(v15 + 8) = 0;
  v16 = *(TupleTypeMetadata2 + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, a1, AssociatedTypeWitness);
  *&v13[v16] = sub_1D5B971F8(a1);
  v17 = *(TupleTypeMetadata2 - 8);
  (*(v17 + 56))(v13, 0, 1, TupleTypeMetadata2);
  sub_1D5B9786C(v13);
  v18 = *(v6 + 8);
  v18(v13, v5);
  sub_1D5B97A2C();
  if ((*(v17 + 48))(v9, 1, TupleTypeMetadata2))
  {
    return (v18)(v9, v5);
  }

  v18(v9, v5);
  v20 = sub_1D725B92C();
  sub_1D725BADC();
}

uint64_t sub_1D5B971F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v53 = a1;
  v54 = v4;
  v55 = v3[13];
  v5 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = &v37 - v10;
  v12 = CACurrentMediaTime();
  v39 = swift_allocObject();
  *(v39 + 16) = 0xF000000000000007;
  v44 = sub_1D725B74C();
  v13 = *(v7 + 16);
  v49 = v7 + 16;
  v52 = v13;
  v40 = v11;
  v13(v11, a1, AssociatedTypeWitness);
  v14 = *(v7 + 80);
  v15 = v7;
  v16 = (v14 + 64) & ~v14;
  v48 = v14;
  v42 = v16;
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v38 = v5;
  *(v18 + 2) = v5;
  v47 = v3[11];
  *(v18 + 3) = v47;
  v45 = v3[12];
  v19 = v55;
  *(v18 + 4) = v45;
  *(v18 + 5) = v19;
  v46 = v3[14];
  *(v18 + 6) = v46;
  v43 = v3[15];
  *(v18 + 7) = v43;
  v20 = v15 + 32;
  v21 = *(v15 + 32);
  v41 = v20;
  v22 = v11;
  v23 = v37;
  v21(&v18[v16], v22, v37);
  *&v18[v17] = v12;
  v24 = v39;
  *&v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8] = v39;
  v51 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedLocation();

  v25 = v44;
  sub_1D725BDBC();

  v26 = v40;
  v52(v40, v53, v23);
  v27 = swift_allocObject();
  *&v28 = v38;
  *(&v28 + 1) = v47;
  *&v29 = v45;
  *(&v29 + 1) = v55;
  *(v27 + 16) = v28;
  *(v27 + 32) = v29;
  v30 = v42;
  v31 = v43;
  *(v27 + 48) = v46;
  *(v27 + 56) = v31;
  v21((v27 + v30), v26, v23);
  *(v27 + v17) = v24;

  v32 = sub_1D725B92C();
  sub_1D725BB7C();

  v33 = sub_1D725B92C();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BA9C();

  v34 = sub_1D725B92C();
  v35 = sub_1D725BB7C();

  return v35;
}

uint64_t sub_1D5B976B4()
{
  if ((~*(v0 + 16) & 0xF000000000000007) != 0)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5B976FC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 64) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5B977B8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 64) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5B9786C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BC0C();
  swift_getTupleTypeMetadata2();
  v2 = sub_1D726393C();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - v5, a1, v4);

  sub_1D725B97C();
}

uint64_t sub_1D5B97A2C()
{

  sub_1D725B96C();
}

uint64_t AnyFeedManager.loadingGate.getter()
{
  sub_1D5B8EF68();
}

Swift::Void __swiftcall FeedLoadingGate.lift(reason:)(Swift::String reason)
{
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v4 = type metadata accessor for FeedLoadingGate.Seal(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  sub_1D725A76C();
  sub_1D5B92C40(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7274590;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D5B7E2C0();
  *(v12 + 32) = countAndFlagsBits;
  *(v12 + 40) = object;
  v13 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  swift_beginAccess();
  sub_1D5B97D24(v1 + v13, v11);
  sub_1D5B97D88(v11, v7);
  v14 = sub_1D725891C();
  v15 = (*(*(v14 - 8) + 48))(v7, 1, v14);

  if (v15 != 1)
  {
    sub_1D5BC41C8(v7);
  }

  v16 = MEMORY[0x1E69E6370];
  v17 = MEMORY[0x1E69E63A8];
  *(v12 + 96) = MEMORY[0x1E69E6370];
  *(v12 + 104) = v17;
  *(v12 + 72) = v15 != 1;
  v18 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift;
  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift);
  *(v12 + 136) = v16;
  *(v12 + 144) = v17;
  v20 = *(v1 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth);
  v21 = MEMORY[0x1E69E6530];
  *(v12 + 112) = v19;
  v22 = MEMORY[0x1E69E65A8];
  *(v12 + 176) = v21;
  *(v12 + 184) = v22;
  *(v12 + 152) = v20;
  sub_1D7262EDC();
  sub_1D725C30C();

  *(v1 + v18) = 0;
  sub_1D5B97DEC(countAndFlagsBits, object);
  sub_1D725A77C();
}

uint64_t sub_1D5B97D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLoadingGate.Seal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5B97D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLoadingGate.Seal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5B97DEC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FeedLoadingGate.Seal(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  sub_1D5B92C40(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7274590;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D5B7E2C0();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v14 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  swift_beginAccess();
  sub_1D5B97D24(v2 + v14, v12);
  sub_1D5B97D88(v12, v8);
  v15 = sub_1D725891C();
  v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);

  if (v16 != 1)
  {
    sub_1D5BC41C8(v8);
  }

  v17 = MEMORY[0x1E69E6370];
  v18 = MEMORY[0x1E69E63A8];
  *(v13 + 96) = MEMORY[0x1E69E6370];
  *(v13 + 104) = v18;
  *(v13 + 72) = v16 != 1;
  v19 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift;
  v20 = *(v2 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForLift);
  *(v13 + 136) = v17;
  *(v13 + 144) = v18;
  v21 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth;
  v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_waitingForPopDepth);
  v23 = MEMORY[0x1E69E6530];
  *(v13 + 112) = v20;
  v24 = MEMORY[0x1E69E65A8];
  *(v13 + 176) = v23;
  *(v13 + 184) = v24;
  *(v13 + 152) = v22;
  sub_1D7262EDC();
  sub_1D725C30C();

  if ((*(v2 + v19) & 1) == 0 && !*(v2 + v21))
  {
    return sub_1D5B98040(a1, a2);
  }

  return result;
}

uint64_t sub_1D5B98040(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FeedLoadingGate.Seal(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18[-v11];
  v13 = OBJC_IVAR____TtC8NewsFeed15FeedLoadingGate_seal;
  swift_beginAccess();
  sub_1D5B97D24(v2 + v13, v12);
  v14 = sub_1D725891C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return sub_1D5BC41C8(v12);
  }

  sub_1D5B92C40(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D5B7E2C0();
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  sub_1D7262EDC();
  sub_1D725C30C();

  sub_1D725AEEC();
  sub_1D725890C();
  (*(v15 + 56))(v8, 0, 1, v14);
  swift_beginAccess();
  sub_1D5B8A9F4(v8, v2 + v13);
  return swift_endAccess();
}

char *sub_1D5B98294(void *a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D5B8B394(a1, v1 + v4, *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + v5));
}

uint64_t sub_1D5B98350@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - v13;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if (*a1 == 1)
  {
    (*(v7 + 16))(&v19 - v13, v2 + *(v4 + 152), v6);
    v15 = *(v5 - 8);
    if ((*(v15 + 48))(v14, 1, v5) == 1)
    {
      (*(v7 + 8))(v14, v6);
LABEL_7:
      v16 = *(v4 + 120);
      v19 = *(v4 + 80);
      v20 = v5;
      v21 = *(v4 + 104);
      v22 = v16;
      type metadata accessor for FeedManager.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v17 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    (*(v7 + 16))(v11, v2 + *(v4 + 160), v6);
    v15 = *(v5 - 8);
    if ((*(v15 + 48))(v11, 1, v5) == 1)
    {
      (*(v7 + 8))(v11, v6);
      goto LABEL_7;
    }

    v14 = v11;
  }

  return (*(v15 + 32))(v23, v14, v5);
}

uint64_t *sub_1D5B9862C(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = sub_1D725C59C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF18728 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (LOBYTE(aBlock[0]) != 1)
  {
    sub_1D6836948();
    swift_allocError();
    *v15 = xmmword_1D72BAA80;
    *(v15 + 16) = 7;
    swift_willThrow();

    goto LABEL_8;
  }

  v2[7] = a1;
  v2[8] = a2;
  sub_1D5B9F8FC();
  v13 = a1;

  v14 = sub_1D725C83C();
  if (!v3)
  {
    v2[2] = v14;
    sub_1D5B98F74();
    v16 = sub_1D725C83C();
    v44 = v9;
    v2[3] = v16;
    sub_1D5B8FEA4();
    v2[4] = sub_1D725C83C();
    sub_1D5B9FD64();
    v2[5] = sub_1D725C83C();
    sub_1D5B9FEBC();
    v2[6] = sub_1D725C83C();
    v18 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
    v42 = v18;
    v19 = sub_1D726203C();
    [v18 setName_];

    [v18 setMaxConcurrentOperationCount_];
    [v18 setQualityOfService_];
    [v18 setSuspended_];
    v4[9] = v18;
    WitnessTable = objc_opt_self();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = *(v7 + 80);
    v21[3] = *(v7 + 88);
    v21[4] = v20;
    aBlock[4] = sub_1D6D11C74;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_92;
    v22 = _Block_copy(aBlock);
    v42 = v42;

    [WitnessTable scheduleLowPriorityBlock_];
    _Block_release(v22);
    if (qword_1EDF18780 != -1)
    {
      swift_once();
    }

    WitnessTable = swift_getWitnessTable();
    sub_1D725964C();
    v40 = LOBYTE(aBlock[0]);
    if (qword_1EDF18758 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDF18760;
    sub_1D725964C();
    LODWORD(WitnessTable) = LOBYTE(aBlock[0]);
    v24 = sub_1D725C7EC();
    v37 = v23;
    v25 = v24;
    sub_1D5B67AC4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v38 = v26;
    v27 = swift_allocObject();
    v36 = xmmword_1D7270C10;
    *(v27 + 16) = xmmword_1D7270C10;
    v28 = MEMORY[0x1E69E6530];
    v29 = MEMORY[0x1E69E65A8];
    *(v27 + 56) = MEMORY[0x1E69E6530];
    *(v27 + 64) = v29;
    v39 = v25;
    *(v27 + 32) = v25;
    v30 = v28;
    *(v27 + 96) = v28;
    *(v27 + 104) = v29;
    *(v27 + 72) = 12;
    sub_1D7262EDC();
    sub_1D725C30C();

    if (v40 & 1) != 0 || (WitnessTable)
    {
      LOBYTE(aBlock[0]) = 0;
      swift_getWitnessTable();
      sub_1D725989C();
      v31 = swift_allocObject();
      *(v31 + 16) = v36;
      v32 = MEMORY[0x1E69E6370];
      v33 = MEMORY[0x1E69E63A8];
      *(v31 + 56) = MEMORY[0x1E69E6370];
      *(v31 + 64) = v33;
      *(v31 + 32) = v40;
      *(v31 + 96) = v32;
      *(v31 + 104) = v33;
      *(v31 + 72) = WitnessTable;
      sub_1D7262EDC();
      sub_1D725C30C();
    }

    else
    {
      if (v39 == 12)
      {
LABEL_21:

        return v4;
      }

      sub_1D7262EDC();
      sub_1D725C30C();
    }

    v34 = v44;
    (*(v44 + 104))(v12, *MEMORY[0x1E69D6188], v8);
    sub_1D725C84C();
    (*(v34 + 8))(v12, v8);
    if (v39 != 12)
    {
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1D7273AE0;
      *(v35 + 56) = v30;
      *(v35 + 64) = MEMORY[0x1E69E65A8];
      *(v35 + 32) = 12;
      sub_1D7262EDC();
      sub_1D725C30C();

      sub_1D725C81C();
    }

    goto LABEL_21;
  }

LABEL_8:

  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1D5B98F04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5B98F3C()
{

  return swift_deallocObject();
}

unint64_t sub_1D5B98F74()
{
  result = qword_1EDF15390;
  if (!qword_1EDF15390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15390);
  }

  return result;
}

unint64_t sub_1D5B98FCC()
{
  result = qword_1EDF15370;
  if (!qword_1EDF15370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15370);
  }

  return result;
}

unint64_t sub_1D5B9902C()
{
  result = qword_1EDF141B8;
  if (!qword_1EDF141B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF141B8);
  }

  return result;
}

unint64_t sub_1D5B99080()
{
  result = qword_1EDF15750;
  if (!qword_1EDF15750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15750);
  }

  return result;
}

uint64_t sub_1D5B990D4()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v10[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18788 = result;
  return result;
}

uint64_t sub_1D5B992A0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v10[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18760 = result;
  return result;
}

void sub_1D5B9946C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D5B994FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58298(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B99580(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49DA8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B99604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49DF8(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B99688(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BBE0A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B996E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D6901918(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B9976C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5A7F0(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B997F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58388(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B99874(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &qword_1EDF43BA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5B998E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B99940(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D60E78B0(255, a3, a4, a5, MEMORY[0x1E69D6200]);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B999B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B99A0C()
{
  if (!qword_1EDF173E0)
  {
    sub_1D725891C();
    sub_1D5B9DE94(&qword_1EDF18A78, MEMORY[0x1E6969530]);
    v0 = sub_1D725C75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF173E0);
    }
  }
}

void sub_1D5B99AA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D5BA2EFC();
    v7 = v6;
    v8 = sub_1D5B9DEDC(&qword_1EDF17350, sub_1D5BA2EFC);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5B99B3C()
{
  if (!qword_1EDF17540)
  {
    sub_1D5BA2EFC();
    sub_1D5B9DE94(&qword_1EDF17350, sub_1D5BA2EFC);
    v0 = sub_1D725C4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17540);
    }
  }
}

int *sub_1D5B99BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v59 = a3;
  v8 = type metadata accessor for FeedCursorTrackerGroup();
  v51 = sub_1D726393C();
  v9 = *(v51 - 8);
  v11 = MEMORY[0x1EEE9AC00](v51, v10);
  v50 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v40 - v15;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14, v18);
  v49 = (v40 - v19);
  v63 = MEMORY[0x1E69E7CD0];
  v64 = MEMORY[0x1E69E7CD0];
  v52 = v8;
  v62 = sub_1D7261CEC();
  v20 = *(a2 + 16);
  if (v20)
  {
    v41 = a1;
    v42 = a5;
    v57 = (v17 + 48);
    v47 = (v17 + 32);
    v46 = (v17 + 16);
    v45 = (v17 + 56);
    v44 = (v17 + 8);
    v43 = (v9 + 8);
    v40[1] = a2;
    v21 = (a2 + 40);
    v22 = v52;
    v48 = v16;
    do
    {
      v23 = *(v21 - 1);
      v24 = *v21;
      v26 = v21[1];
      v25 = v21[2];
      v27 = v21[3];
      v28 = v21[4];
      v65[0] = v23;
      v65[1] = v24;
      v65[2] = v26;
      v65[3] = v25;
      v65[4] = v27;
      v65[5] = v28;
      swift_retain_n();
      swift_retain_n();
      v60 = v26;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_1D5BA3114(v65, v16);
      if ((*v57)(v16, 1, v22) == 1)
      {

        (*v43)(v16, v51);
      }

      else
      {
        v29 = *v47;
        v56 = v23;
        v30 = v49;
        v54 = v20;
        v29(v49, v16, v22);
        v31 = v30[1];
        v53 = *v30;
        v32 = v53;
        swift_bridgeObjectRetain_n();
        v55 = v24;
        sub_1D5B860D0(v61, v32, v31);

        v20 = v54;

        sub_1D5B87D50(v33);
        v34 = v52;

        v35 = v50;
        (*v46)(v50, v30, v34);
        (*v45)(v35, 0, 1, v34);
        v61[0] = v53;
        v61[1] = v31;
        sub_1D7261E1C();
        v16 = v48;
        sub_1D7261E4C();
        v22 = v34;

        (*v44)(v30, v34);
      }

      v21 += 6;
      --v20;
    }

    while (v20);

    a5 = v42;
    a1 = v41;
  }

  else
  {
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v37 = v64;
  result = type metadata accessor for FeedCursorTrackerSnapshot();
  *(a5 + result[9]) = v37;
  v39 = v63;
  *(a5 + result[11]) = v62;
  *(a5 + result[10]) = v39;
  return result;
}

uint64_t sub_1D5B9A19C(uint64_t *a1, uint64_t a2)
{
  v55 = a2;
  v4 = *v2;
  v5 = *a1;
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v53 = &v44 - v8;
  v9 = *(v5 + 80);
  v50 = *(v5 + 88);
  v51 = v9;
  v10 = type metadata accessor for FeedCursorTrackerSnapshot();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v44 - v13;
  v15 = sub_1D726393C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v44 - v18;
  sub_1D5B97A2C();
  if ((*(v11 + 48))(v19, 1, v10))
  {
    (*(v16 + 8))(v19, v15);
    v20 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    (*(v11 + 16))(v14, v19, v10);
    (*(v16 + 8))(v19, v15);
    v20 = *&v14[*(v10 + 36)];
    v21 = *(v11 + 8);

    v21(v14, v10);
  }

  v22 = v4[10];
  v23 = v4[11];
  v24 = v4[12];
  v25 = v4[13];
  v26 = v4[14];
  v27 = v4[15];
  v29 = v4[16];
  v28 = v4[17];
  v41 = v29;
  v42 = v28;
  v40 = v27;
  v30 = a1;
  v31 = v26;
  v32 = v54;
  v52 = v22;
  v33 = sub_1D5BA3F60(v20, v30, v55);
  v54 = v32;
  if (v32)
  {

    return v27;
  }

  v44 = v28;
  v45 = v20;
  v46 = v29;
  v47 = v27;
  v34 = v52;
  v48 = v31;
  v49 = v33;
  sub_1D725C4CC();
  v35 = v53;
  sub_1D725C73C();

  v36 = sub_1D725891C();
  result = (*(*(v36 - 8) + 48))(v35, 1, v36);
  if (result != 1)
  {

    v45 = type metadata accessor for FeedCursorManifest();
    v55 = &v44;
    v56 = v49;
    MEMORY[0x1EEE9AC00](v45, v38);
    *(&v44 - 8) = v34;
    *(&v44 - 7) = v23;
    *(&v44 - 6) = v24;
    *(&v44 - 5) = v25;
    v40 = v48;
    v41 = v47;
    v42 = v46;
    v43 = v44;
    sub_1D5BA4E90(0, &unk_1EDF05290, &type metadata for FeedGroupEntity.ManifestEntity, MEMORY[0x1E69E62F8]);
    type metadata accessor for FeedCursorManifestGroupEntry();
    sub_1D5B9AD14(&qword_1EDF05288, &unk_1EDF05290, &type metadata for FeedGroupEntity.ManifestEntity);
    v39 = sub_1D726242C();

    v27 = sub_1D5B9B470(v53, v39);

    return v27;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5B9A684()
{
  result = qword_1EDF153B0;
  if (!qword_1EDF153B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF153B0);
  }

  return result;
}

void *sub_1D5B9A6EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D5B9A844(void *a1, int64_t a2, char a3)
{
  result = sub_1D5B85CC4(a1, a2, a3, *v3, sub_1D5BA45E0, &qword_1EDF174E0);
  *v3 = result;
  return result;
}

uint64_t sub_1D5B9A888(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D5B9A844(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69D62D8];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1D5B9A844((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = MEMORY[0x1E69E6158];
      v13 = v5;
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v9 + 1;
      sub_1D5B63F14(&v11, v2 + 40 * v9 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double sub_1D5B9A984@<D0>(uint64_t a1@<X8>)
{
  sub_1D5BA464C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1D5B9A9C8()
{
  if (!qword_1EDF17488)
  {
    sub_1D5B9AA5C();
    sub_1D5B9DE94(&qword_1EDF17370, sub_1D5B9AA5C);
    v0 = sub_1D725C72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17488);
    }
  }
}

void sub_1D5B9AA5C()
{
  if (!qword_1EDF17368)
  {
    sub_1D5B58298(255, qword_1EDF387B0, &type metadata for FeedGroupRepooling, MEMORY[0x1E69E6720]);
    sub_1D5BA4C60(&qword_1EDF14A68, sub_1D5B9AB58);
    sub_1D5BA4C60(&unk_1EDF14A70, sub_1D5BA4CF0);
    v0 = sub_1D725C8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17368);
    }
  }
}

unint64_t sub_1D5B9AB58()
{
  result = qword_1EDF14A80;
  if (!qword_1EDF14A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A80);
  }

  return result;
}

void sub_1D5B9ABAC()
{
  if (!qword_1EDF173C8)
  {
    sub_1D5B9AA5C();
    sub_1D5B9DE94(&qword_1EDF17370, sub_1D5B9AA5C);
    v0 = sub_1D725C75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF173C8);
    }
  }
}

uint64_t sub_1D5B9AC40()
{
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4FC();
  swift_allocObject();
  return sub_1D725C53C();
}

uint64_t sub_1D5B9AD14(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BA4E90(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B9AD6C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D5B9ADB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v38 = a4;
  v31[0] = a2;
  v31[1] = a3;
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v34 = v31 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1D726393C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v31 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v12, v16);
  v36 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v37 = v31 - v20;
  v21 = a1[1];
  v35 = *a1;
  v22 = a1[2];
  v32 = v21;
  v33 = v22;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v42)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v39 = v41;
  v40 = v42;
  swift_getAssociatedConformanceWitness();
  sub_1D726258C();
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v14, v9);
    result = 0;
LABEL_9:
    *v38 = result;
    return result;
  }

  v24 = v37;
  (*(v15 + 32))(v37, v14, AssociatedTypeWitness);
  sub_1D725C4CC();
  sub_1D725C73C();

  v25 = v42;
  if (!v42)
  {
    goto LABEL_11;
  }

  v26 = v41;
  sub_1D725C4CC();
  sub_1D725C73C();

  v27 = v40;
  v28 = v34;
  if (!v40)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v35 = v39;
  (*(v15 + 16))(v36, v24, AssociatedTypeWitness);
  sub_1D725C4CC();
  sub_1D725C73C();

  v29 = sub_1D725891C();
  result = (*(*(v29 - 8) + 48))(v28, 1, v29);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v32 = v27;
  v33 = v26;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v43)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedCursorManifestGroupEntry();
    v30 = sub_1D725C89C();

    (*(v15 + 8))(v37, AssociatedTypeWitness);
    result = sub_1D5BA50F4(v33, v25, v35, v32, v36, v28, v30);
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

char *sub_1D5B9B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *v7;
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  *(v7 + 5) = a4;
  v12 = *(v11 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v7[v12], a5, AssociatedTypeWitness);
  v14 = *(*v7 + 120);
  v15 = sub_1D725891C();
  (*(*(v15 - 8) + 32))(&v7[v14], a6, v15);
  *&v7[*(*v7 + 128)] = a7;
  return v7;
}

uint64_t sub_1D5B9B4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 16);
  v2 = *(*a2 + 24);
  v4 = *(*a1 + 16);
  swift_bridgeObjectRetain_n();
  if (v4 && (sub_1D5B69D90(v3, v2), (v5 & 1) != 0))
  {
  }

  else
  {
    type metadata accessor for FeedCursorManifestGroupEntry();
    sub_1D726275C();
  }

  type metadata accessor for FeedCursorManifestGroupEntry();
  sub_1D72627FC();

  sub_1D72627BC();
  sub_1D7261E1C();
  return sub_1D7261E4C();
}

uint64_t sub_1D5B9B614()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5B9B6FC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D5B9B860(uint64_t *a1, __int128 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = v4;
  v10 = *v4;
  v11 = *a1;
  v12 = *a3;
  v13 = CACurrentMediaTime();
  result = sub_1D5BA5888(a1, a2, a4);
  if (!v5)
  {
    v15 = result;
    v47 = v11;
    v48 = v12;
    v49 = v10;
    v52 = v4[2];
    v53 = 0;
    sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v51 = v16;
    v17 = swift_allocObject();
    v50 = xmmword_1D7279970;
    *(v17 + 16) = xmmword_1D7279970;
    sub_1D725C4CC();
    sub_1D725C73C();

    v18 = v55;
    if (v55)
    {
      v19 = v54;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      v20 = sub_1D5B7E2C0();
      *(v17 + 64) = v20;
      *(v17 + 32) = v19;
      *(v17 + 40) = v18;
      sub_1D725C4CC();
      sub_1D725C73C();

      v21 = v57;
      if (v57)
      {
        v22 = v56;
        *(v17 + 96) = MEMORY[0x1E69E6158];
        *(v17 + 104) = v20;
        *(v17 + 72) = v22;
        *(v17 + 80) = v21;
        v23 = CACurrentMediaTime();
        v24 = MEMORY[0x1E69E6438];
        *(v17 + 136) = MEMORY[0x1E69E63B0];
        *(v17 + 144) = v24;
        *(v17 + 112) = (v23 - v13) * 1000.0;
        sub_1D7262EDC();
        sub_1D725C30C();

        MEMORY[0x1EEE9AC00](v25, v26);
        v45[2] = v6;
        v45[3] = a1;
        v45[4] = v15;
        v27 = v53;
        v28 = sub_1D5BA7730(v15, sub_1D68379B4, v45);
        v53 = v27;
        if (v27)
        {
        }

        v46 = v28;
        v29 = MEMORY[0x1E69E6158];
        v30 = swift_allocObject();
        *(v30 + 16) = v50;
        sub_1D725C4CC();
        sub_1D725C73C();

        v31 = v55;
        if (v55)
        {
          v32 = v54;
          *(v30 + 56) = v29;
          *(v30 + 64) = v20;
          *(v30 + 32) = v32;
          *(v30 + 40) = v31;
          sub_1D725C4CC();
          sub_1D725C73C();

          v33 = v57;
          if (v57)
          {
            v34 = v56;
            *(v30 + 96) = v29;
            *(v30 + 104) = v20;
            *(v30 + 72) = v34;
            *(v30 + 80) = v33;
            v35 = v46;
            v36 = sub_1D5BA88B4();
            *(v30 + 136) = v29;
            *(v30 + 144) = v20;
            *(v30 + 112) = v36;
            *(v30 + 120) = v37;
            sub_1D7262EDC();
            sub_1D725C30C();

            type metadata accessor for FeedDeferredCursor();
            LOBYTE(v56) = v48;
            v38 = v6[3];
            v39 = swift_allocObject();
            swift_weakInit();
            v40 = swift_allocObject();
            v41 = v49;
            *(v40 + 16) = *(v49 + 112);
            *(v40 + 24) = *(v41 + 120);
            *(v40 + 40) = *(v41 + 136);
            *(v40 + 48) = v39;
            *(v40 + 56) = v15;
            *(v40 + 64) = v35;
            *(v40 + 72) = a1;
            v42 = a2[3];
            *(v40 + 112) = a2[2];
            *(v40 + 128) = v42;
            v43 = a2[5];
            *(v40 + 144) = a2[4];
            *(v40 + 160) = v43;
            v44 = a2[1];
            *(v40 + 80) = *a2;
            *(v40 + 96) = v44;
            swift_unknownObjectRetain();

            sub_1D5BA739C(a2, &v54);
            return sub_1D5BA8B84(&v56, v15, v35, v38, &unk_1D72F5AB8, v40);
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1D5B9BCDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5B9BD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v70 = a2;
  sub_1D5B76550(0, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v9);
  v60 = (&v54 - v10);
  v11 = sub_1D725C4AC();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v58 = &v54 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v59 = &v54 - v25;
  v26 = *(a1 + 64);
  v27 = *(v26 + 16);
  if (v27)
  {
    v54 = v16;
    v55 = v8;
    v56 = v12;
    v57 = v11;
    v28 = sub_1D5B9A6D8(v27, 0);
    v29 = sub_1D5B9A6EC(&v65, v28 + 4, v27, v26);
    v30 = v65;
    v31 = v66;
    v33 = v67;
    v32 = v68;
    v34 = v69;

    result = sub_1D5BA45DC(v30, v31, v33, v32, v34);
    if (v29 != v27)
    {
      __break(1u);
      goto LABEL_17;
    }

    v12 = v56;
    v11 = v57;
    v16 = v54;
    v8 = v55;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v36 = v28[2];
  sub_1D725C6DC();
  if (!v36)
  {
    sub_1D725C4CC();
    sub_1D725C73C();

    v46 = v64;
    if (v64)
    {
      v47 = v63;

      v68 = MEMORY[0x1E69E6158];
      v69 = MEMORY[0x1E69D62D8];
      v65 = v47;
      v66 = v46;
      sub_1D725C62C();
      __swift_destroy_boxed_opaque_existential_1(&v65);
      *v8 = 0x4464657461657263;
      v8[1] = 0xEB00000000657461;
      v48 = *MEMORY[0x1E69D6228];
      v49 = sub_1D725C79C();
      v50 = *(v49 - 8);
      (*(v50 + 104))(v8, v48, v49);
      (*(v50 + 56))(v8, 0, 1, v49);
      v51 = v61;
      v52 = sub_1D725C6AC();
      if (v51)
      {

        sub_1D5BA2558(v8, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
        return (*(v12 + 8))(v16, v11);
      }

      v53 = v52;

      sub_1D5BA2558(v8, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
      (*(v12 + 8))(v16, v11);
      return v53;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v64)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v68 = MEMORY[0x1E69E6158];
  v69 = MEMORY[0x1E69D62D8];
  v65 = v63;
  v66 = v64;
  sub_1D725C62C();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  sub_1D5B9A888(v28);

  v37 = v58;
  sub_1D725C65C();

  v38 = v59;
  sub_1D725C61C();
  v39 = *(v12 + 8);
  v39(v37, v11);
  v39(v23, v11);
  v40 = v60;
  *v60 = 0x4464657461657263;
  *(v40 + 8) = 0xEB00000000657461;
  v41 = *MEMORY[0x1E69D6228];
  v42 = sub_1D725C79C();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v40, v41, v42);
  (*(v43 + 56))(v40, 0, 1, v42);
  v44 = v61;
  v45 = sub_1D725C6AC();
  if (v44)
  {

    sub_1D5BA2558(v40, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
    return (v39)(v38, v11);
  }

  v53 = v45;

  sub_1D5BA2558(v40, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
  v39(v38, v11);
  return v53;
}

uint64_t sub_1D5B9C4A0@<X0>(uint64_t *a1@<X8>)
{
  v106 = a1;
  sub_1D5BA2E54(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v105 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v104 = v86 - v6;
  sub_1D5BA2E54(0, &qword_1EDF17480, sub_1D5B9A9C8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v103 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v102 = v86 - v12;
  v89 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17490, &qword_1EDF17498, MEMORY[0x1E69D6200], sub_1D5B9E588);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v90 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v88 = v86 - v18;
  sub_1D5BA2E54(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v86 - v25;
  sub_1D5B9D284();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v86 - v33;
  v35 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v86 - v42;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v35);
  v45 = v44;
  v110 = v44;
  v46 = *(v44 - 8);
  v47 = *(v46 + 56);
  v111 = v47;
  v86[1] = v46 + 56;
  v107 = v43;
  v47(v43, 1, 1, v44);
  v108 = v39;
  v47(v39, 1, 1, v45);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  v109 = v48;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v101 = sub_1D725C4BC();
  sub_1D5B9E048(0, &qword_1EDF17458, MEMORY[0x1E69D6200]);
  v50 = v49;
  v97 = v49;
  v51 = *(v49 - 8);
  v52 = *(v51 + 56);
  v98 = v52;
  v99 = v51 + 56;
  v92 = v34;
  v52(v34, 1, 1, v49);
  v93 = v30;
  v52(v30, 1, 1, v50);
  sub_1D5B9E048(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  v96 = v53;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E048(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  v94 = v54;
  swift_allocObject();
  v100 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v56 = v55;
  v57 = *(*(v55 - 8) + 56);
  v57(v26, 1, 1, v55);
  v57(v22, 1, 1, v56);
  sub_1D5B99A0C();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  swift_allocObject();
  v95 = sub_1D725C4BC();
  v57(v26, 1, 1, v56);
  v57(v22, 1, 1, v56);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v91 = sub_1D725C4BC();
  v58 = v110;
  v59 = v111;
  v111(v107, 1, 1, v110);
  v59(v108, 1, 1, v58);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v87 = sub_1D725C4BC();
  sub_1D5B9E588(0, &qword_1EDF17498, v89);
  v61 = v60;
  v62 = *(*(v60 - 8) + 56);
  v63 = v88;
  v62(v88, 1, 1, v60);
  v64 = v90;
  v62(v90, 1, 1, v61);
  sub_1D5B9E588(0, &qword_1EDF173D8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E588(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v89 = sub_1D725C4BC();
  v62(v63, 1, 1, v61);
  v62(v64, 1, 1, v61);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v90 = sub_1D725C4BC();
  v65 = v107;
  v66 = v110;
  v67 = v111;
  v111(v107, 1, 1, v110);
  v68 = v108;
  v67(v108, 1, 1, v66);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v69 = sub_1D725C4BC();
  v67(v65, 1, 1, v66);
  v67(v68, 1, 1, v66);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v70 = sub_1D725C4BC();
  sub_1D5B9A9C8();
  v72 = v71;
  v73 = *(*(v71 - 8) + 56);
  v73(v102, 1, 1, v71);
  v73(v103, 1, 1, v72);
  sub_1D5B9ABAC();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA4D44();
  swift_allocObject();
  v74 = sub_1D725C4BC();
  v75 = v97;
  v76 = v98;
  v98(v92, 1, 1, v97);
  v76(v93, 1, 1, v75);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v77 = sub_1D725C4BC();
  sub_1D5B9E4F4();
  v79 = v78;
  v80 = *(*(v78 - 8) + 56);
  v80(v104, 1, 1, v78);
  v80(v105, 1, 1, v79);
  sub_1D5BA6158();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C();
  swift_allocObject();
  result = sub_1D725C4BC();
  v82 = v106;
  v83 = v100;
  *v106 = v101;
  v82[1] = v83;
  v84 = v91;
  v82[2] = v95;
  v82[3] = v84;
  v85 = v89;
  v82[4] = v87;
  v82[5] = v85;
  v82[6] = v90;
  v82[7] = v69;
  v82[8] = v70;
  v82[9] = v74;
  v82[10] = v77;
  v82[11] = result;
  return result;
}

void sub_1D5B9D284()
{
  if (!qword_1EDF17450)
  {
    sub_1D5B9E048(255, &qword_1EDF17458, MEMORY[0x1E69D6200]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17450);
    }
  }
}

uint64_t sub_1D5B9D2F8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  v32 = a4;
  v11 = a1[3];
  v28 = a1[2];
  v29 = v11;
  v12 = a1[5];
  v30 = a1[4];
  v31 = v12;
  v13 = a1[1];
  v26 = *a1;
  v27 = v13;
  v14 = *(a2 + 56);
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v24[0])
  {
    sub_1D725C87C();

    if (v25 - 5 < 0xFFFFFFFD)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for FeedDatabaseGroup();
      v18 = swift_allocObject();
      v19 = v32;
      *(v18 + 16) = a3;
      *(v18 + 24) = v19;
      *(v18 + 32) = a5;
      *(v18 + 40) = a6;
      v20 = v29;
      *(v18 + 80) = v28;
      *(v18 + 96) = v20;
      v21 = v31;
      *(v18 + 112) = v30;
      *(v18 + 128) = v21;
      v22 = v27;
      *(v18 + 48) = v26;
      *(v18 + 64) = v22;
      *(v18 + 144) = a2;
      sub_1D5BA6C4C(&v26, v24);
      sub_1D5BA6C4C(&v26, v24);

      v17 = sub_1D5BA6C84(&v26, &unk_1D72F5B30, v18);

      result = sub_1D5BA705C(&v26);
    }

    *a7 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5B9D518()
{
  result = qword_1EDF14AA0;
  if (!qword_1EDF14AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14AA0);
  }

  return result;
}

uint64_t FeedGroupFreezing.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v14 = a2;
  sub_1D5BA64F8(0, &qword_1EDF03C58, sub_1D5BA6560, &type metadata for FeedGroupFreezing.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BA6560();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v14;
    v17 = 0;
    sub_1D5BA6664();
    sub_1D726431C();
    v15 = 1;
    sub_1D5BA6918();
    sub_1D726427C();
    (*(v10 + 8))(v9, v5);
    *v11 = (v16 == 2) | v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5B9D780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

unint64_t sub_1D5B9D7E8()
{
  result = qword_1EDF38930[0];
  if (!qword_1EDF38930[0])
  {
    type metadata accessor for FeedContextFactory();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF38930);
  }

  return result;
}

char *FeedAppConfigManager.segmentSetIds.getter()
{
  v1 = *(v0 + 16);
  v2 = [v1 respondsToSelector_];
  v3 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = [v1 segmentSetIDs];
    if (!v5)
    {
      return MEMORY[0x1E69E7CD0];
    }

    v6 = v5;
    sub_1D5B5A498(0, &qword_1EDF1A660);
    v4 = sub_1D726267C();
  }

  if (!(v4 >> 62))
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_17:

    v10 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v16 = sub_1D5B9DB74(v10);

    return v16;
  }

  v7 = sub_1D7263BFC();
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_6:
  v17 = v3;
  result = sub_1D5B9DB54(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v17;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA6FB460](v9, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 intValue];

      v15 = *(v17 + 16);
      v14 = *(v17 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D5B9DB54((v14 > 1), v15 + 1, 1);
      }

      ++v9;
      *(v17 + 16) = v15 + 1;
      *(v17 + 4 * v15 + 32) = v13;
    }

    while (v7 != v9);

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

char *sub_1D5B9DA38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D5B5A7F0(0, &qword_1EDF01D00, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D5B9DB54(char *a1, int64_t a2, char a3)
{
  result = sub_1D5B9DA38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D5B9DB74(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6FA1E0](v2, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D5B9DBE8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D5B9DBE8(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1DA6FC080](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D5B9DCD0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5B9DCD0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF1B00();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D6000334();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D60020AC();
  }

  v8 = *v3;
  result = MEMORY[0x1DA6FC080](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

id sub_1D5B9DDF4()
{
  v1 = [*(*v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 timesOfDayConfiguration];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_1D5B9DE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B9DEDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B9DF24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B9DF6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5B9DFB4()
{
  if (!qword_1EDF17568)
  {
    sub_1D725891C();
    sub_1D5B9DE94(&qword_1EDF18A78, MEMORY[0x1E6969530]);
    v0 = sub_1D725C4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17568);
    }
  }
}

void sub_1D5B9E048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D5B58298(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v7 = v6;
    v8 = sub_1D5BA22E0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5B9E0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D5B58244(255, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    v7 = v6;
    v8 = sub_1D5BA22E0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5B9E160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D5B58D88();
    v7 = v6;
    v8 = sub_1D5BA22E0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5B9E1CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FeedServiceContextType.shouldReadRootCursorFromDatabase(createdDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v4 = sub_1D7257ADC();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725891C();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FeedServiceOptions(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(v32, a3);
  sub_1D5B96CF8(&v20[*(v17 + 28)], v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v23 = v29;
    v24 = v30;
    if (EnumCaseMultiPayload)
    {
      (*(v30 + 32))(v7, v15, v4);
      v22 = sub_1D7257ABC();
      (*(v24 + 8))(v7, v4);
    }

    else
    {
      v25 = *v15;
      sub_1D725890C();
      sub_1D72587FC();
      v27 = v26;
      (*(v23 + 8))(v11, v8);
      v22 = v25 < v27;
    }
  }

  else
  {
    v22 = (EnumCaseMultiPayload - 2) < 2;
  }

  return v22 & 1;
}

void sub_1D5B9E4F4()
{
  if (!qword_1EDF17468)
  {
    sub_1D5BA2EFC();
    sub_1D5B9DE94(&qword_1EDF17350, sub_1D5BA2EFC);
    v0 = sub_1D725C72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17468);
    }
  }
}

void sub_1D5B9E588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D5BA1DA8(255, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
    v7 = v6;
    v8 = sub_1D5BA1FF8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D5B9E67C()
{
  result = qword_1EDF14A98;
  if (!qword_1EDF14A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A98);
  }

  return result;
}

unint64_t sub_1D5B9E6D0()
{
  result = qword_1EDF14EC0;
  if (!qword_1EDF14EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14EC0);
  }

  return result;
}

uint64_t sub_1D5B9E724()
{
  sub_1D5B9EBAC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - v6;
  sub_1D5B9ECBC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - v14;
  sub_1D5BA2FE0(0, &qword_1EDF17448, MEMORY[0x1E69D6200]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v18(v15, 1, 1, v16);
  v18(v11, 1, 1, v17);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v25 = sub_1D725C4BC();
  v18(v15, 1, 1, v17);
  v18(v11, 1, 1, v17);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  sub_1D725C4BC();
  v19 = MEMORY[0x1E6969080];
  sub_1D5B9EB44(0, &qword_1EDF174C8, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6200]);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v22(v7, 1, 1, v20);
  v22(v3, 1, 1, v21);
  sub_1D5B9EB44(0, &qword_1EDF173E8, sub_1D5B9EC68, v19, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9EB44(0, &unk_1EDF17570, sub_1D5B9EC68, v19, MEMORY[0x1E69D6160]);
  swift_allocObject();
  sub_1D725C4BC();
  return v25;
}

void sub_1D5B9EB44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D5B9EBAC()
{
  if (!qword_1EDF174C0)
  {
    sub_1D5B9EB44(255, &qword_1EDF174C8, sub_1D5B9EC68, MEMORY[0x1E6969080], MEMORY[0x1E69D6200]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF174C0);
    }
  }
}

uint64_t sub_1D5B9EC3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5B9E724();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_1D5B9EC68()
{
  result = qword_1EDF18A98;
  if (!qword_1EDF18A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18A98);
  }

  return result;
}

void sub_1D5B9ECBC()
{
  if (!qword_1EDF17440)
  {
    sub_1D5BA2FE0(255, &qword_1EDF17448, MEMORY[0x1E69D6200]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17440);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D5B9ED44()
{
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4FC();
  swift_allocObject();
  return sub_1D725C54C();
}

uint64_t sub_1D5B9EDC0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D5B9EE00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

void sub_1D5B9EE48()
{
  if (!qword_1EDF3C810)
  {
    sub_1D5B5534C(255, &qword_1EDF3C720);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C810);
    }
  }
}

uint64_t sub_1D5B9EEB0(uint64_t a1)
{
  sub_1D5B9EE48();
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = a1;

  v2 = sub_1D725B92C();
  sub_1D725BB7C();

  v3 = sub_1D725B92C();
  sub_1D725A9BC();
  sub_1D5C47FEC(&qword_1EDF1AE70, sub_1D5B9EE48);
  v4 = sub_1D725BBDC();

  return v4;
}

uint64_t sub_1D5B9F010()
{

  return swift_deallocObject();
}

void sub_1D5B9F048(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D72627FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B9F0A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B9F0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5B9F15C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5534C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5B9F1C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5534C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5B9F22C()
{
  sub_1D5B9F0F8(0, &unk_1EDF43A60, sub_1D5B9EE48, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D5B9F2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v32 = v12;
  v13 = *(a5 + 16);
  v14 = *(a6 + 16);
  if (v14)
  {
    v30 = *(a5 + 16);
    v31 = a4;
    v15 = sub_1D5B9A6D8(v14, 0);
    v16 = sub_1D5B9A6EC(&aBlock, v15 + 4, v14, a6);
    v18 = aBlock;
    v17 = v36;
    v20 = v37;
    v19 = v38;
    v21 = v39;

    sub_1D5BA45DC(v18, v17, v20, v19, v21);
    if (v16 != v14)
    {
      __break(1u);
      goto LABEL_8;
    }

    v13 = v30;
    a4 = v31;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5B7E810(v15);

  v22 = objc_allocWithZone(MEMORY[0x1E69B5198]);
  v23 = sub_1D726265C();

  v24 = sub_1D726265C();
  v25 = [v22 initWithContext:v13 articleIDs:v23 ignoreCacheForArticleIDs:v24];

  [v25 setQualityOfService_];
  [v25 setRelativePriority_];
  v26 = v25;
  [v26 setShouldFailOnMissingObjects_];
  [v26 setCachePolicy_];
  [v26 setMaximumCachedAge_];
  v27 = [objc_msgSend(v13 configurationManager)];
  swift_unknownObjectRelease();
  if (v27)
  {
    [v26 setConfiguration_];
    swift_unknownObjectRelease();
    [v26 setCanSendFetchCompletionSynchronously_];
    v28 = swift_allocObject();
    v28[2] = a3;
    v28[3] = a4;
    v28[4] = a6;
    v28[5] = sub_1D5B7E910;
    v28[6] = v32;
    v39 = sub_1D5C89C1C;
    v40 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1D5C38428;
    v38 = &block_descriptor_109;
    v29 = _Block_copy(&aBlock);

    [v26 setFetchCompletionBlock_];
    _Block_release(v29);

    [v26 start];
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_1D5B9F654()
{

  return swift_deallocObject();
}

uint64_t sub_1D5B9F68C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5B9F6D4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1D5B9862C(a1, a2);
  return v4;
}

uint64_t sub_1D5B9F72C()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v10[15] = 1;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18730 = result;
  return result;
}

unint64_t sub_1D5B9F8FC()
{
  result = qword_1EDF15100;
  if (!qword_1EDF15100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15100);
  }

  return result;
}

unint64_t sub_1D5B9F954()
{
  result = qword_1EDF150D0;
  if (!qword_1EDF150D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150D0);
  }

  return result;
}

unint64_t sub_1D5B9F9A8()
{
  result = qword_1EDF150D8;
  if (!qword_1EDF150D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150D8);
  }

  return result;
}

unint64_t sub_1D5B9FA00()
{
  result = qword_1EDF150F0;
  if (!qword_1EDF150F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF150F0);
  }

  return result;
}

unint64_t sub_1D5B9FA60()
{
  result = qword_1EDF15360;
  if (!qword_1EDF15360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15360);
  }

  return result;
}

unint64_t sub_1D5B9FAB4()
{
  result = qword_1EDF15368;
  if (!qword_1EDF15368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15368);
  }

  return result;
}

unint64_t sub_1D5B9FB0C()
{
  result = qword_1EDF15380;
  if (!qword_1EDF15380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15380);
  }

  return result;
}

unint64_t sub_1D5B9FB60()
{
  result = qword_1EDF15378;
  if (!qword_1EDF15378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15378);
  }

  return result;
}

unint64_t sub_1D5B9FBB8()
{
  result = qword_1EDF14080;
  if (!qword_1EDF14080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14080);
  }

  return result;
}

unint64_t sub_1D5B9FC14()
{
  result = qword_1EDF14070;
  if (!qword_1EDF14070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14070);
  }

  return result;
}

unint64_t sub_1D5B9FC68()
{
  result = qword_1EDF14078;
  if (!qword_1EDF14078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14078);
  }

  return result;
}

unint64_t sub_1D5B9FCBC()
{
  result = qword_1EDF14090;
  if (!qword_1EDF14090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14090);
  }

  return result;
}

unint64_t sub_1D5B9FD10()
{
  result = qword_1EDF14098;
  if (!qword_1EDF14098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14098);
  }

  return result;
}

unint64_t sub_1D5B9FD64()
{
  result = qword_1EDF141E8;
  if (!qword_1EDF141E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF141E8);
  }

  return result;
}

unint64_t sub_1D5B9FDBC()
{
  result = qword_1EDF141C8;
  if (!qword_1EDF141C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF141C8);
  }

  return result;
}

unint64_t sub_1D5B9FE10()
{
  result = qword_1EDF141D8;
  if (!qword_1EDF141D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF141D8);
  }

  return result;
}

unint64_t sub_1D5B9FE68()
{
  result = qword_1EDF141D0;
  if (!qword_1EDF141D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF141D0);
  }

  return result;
}

unint64_t sub_1D5B9FEBC()
{
  result = qword_1EDF15768;
  if (!qword_1EDF15768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15768);
  }

  return result;
}

unint64_t sub_1D5B9FF10()
{
  result = qword_1EDF15748;
  if (!qword_1EDF15748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15748);
  }

  return result;
}

unint64_t sub_1D5B9FF6C()
{
  result = qword_1EDF15738;
  if (!qword_1EDF15738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15738);
  }

  return result;
}

unint64_t sub_1D5B9FFC0()
{
  result = qword_1EDF15740;
  if (!qword_1EDF15740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15740);
  }

  return result;
}

unint64_t sub_1D5BA0014()
{
  result = qword_1EDF15760;
  if (!qword_1EDF15760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15760);
  }

  return result;
}

uint64_t sub_1D5BA006C(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  LODWORD(v97) = a4;
  v93 = a1;
  v78 = *v4;
  v6 = *(*a2 + 80);
  v7 = *a2;
  v79 = a2;
  v8 = *(v7 + 88);
  v9 = type metadata accessor for FeedCursorTrackerSnapshot();
  v10 = sub_1D726393C();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v80 = &v75 - v12;
  v83 = v4;
  v77 = *(v78 + 96);
  swift_getAssociatedTypeWitness();
  v84 = v8;
  v85 = v6;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v96 = AssociatedTypeWitness;
  v94 = swift_getAssociatedTypeWitness();
  v90 = *(v94 - 8);
  v15 = MEMORY[0x1EEE9AC00](v94, v14);
  v91 = &v75 - v16;
  v86 = v9;
  v95 = *(v9 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v76 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v89 = &v75 - v21;
  v22 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v87 = &v75 - v25;
  sub_1D5B76550(0, &qword_1EDF17378, MEMORY[0x1E69D6230], v22);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v75 - v28);
  v30 = sub_1D725C4AC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a3;
  v35 = sub_1D725C6DC();
  *(&v103 + 1) = sub_1D725C7AC();
  *&v104 = MEMORY[0x1E69D6238];
  __swift_allocate_boxed_opaque_existential_1(&v102);
  sub_1D725C7BC();
  sub_1D725C62C();
  __swift_destroy_boxed_opaque_existential_1(&v102);
  *v29 = 0x4464657461657263;
  v29[1] = 0xEB00000000657461;
  v36 = *MEMORY[0x1E69D6220];
  v37 = sub_1D725C79C();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v29, v36, v37);
  (*(v38 + 56))(v29, 0, 1, v37);
  v39 = v98;
  sub_1D725C69C();
  v40 = (v31 + 8);
  if (v39)
  {

    sub_1D5BA2558(v29, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
    (*v40)(v34, v30);
    return v35;
  }

  v42 = v97;

  sub_1D5BA2558(v29, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
  (*v40)(v34, v30);
  v104 = v110;
  v105 = v111;
  v106 = v112;
  v107 = v113;
  v102 = v108;
  v103 = v109;
  if (!v108)
  {
    sub_1D6836948();
    swift_allocError();
    *v53 = 0;
    *(v53 + 8) = 0;
    *(v53 + 16) = 7;
    swift_willThrow();
    return v35;
  }

  *&v114[0] = v108;
  *(&v114[0] + 1) = *(&v102 + 1);
  v114[3] = v111;
  v114[4] = v112;
  v114[2] = v110;
  v114[1] = v109;
  v115 = v113;
  v116 = *(&v107 + 1);
  sub_1D725C4CC();
  sub_1D725C73C();

  v43 = *(&v99 + 1);
  if (!*(&v99 + 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v44 = v99;
  FeedCursorKind.init(rawValue:)(*(&v43 - 1));
  v45 = v95;
  if (v117 <= 5u && ((1 << v117) & 0x31) != 0)
  {
    LODWORD(v98) = v117;
    if (v42)
    {
LABEL_11:
      v51 = v91;
      (*(v90 + 16))(v91, v93, v94);
      v52 = v92;
      sub_1D725C6DC();
      v57 = sub_1D725C68C();

      v58 = v89;
      sub_1D5B99BD0(v51, v57, v85, v84, v89);
      v59 = v80;
      v60 = v52;
      v61 = v86;
      v97 = *(v45 + 16);
      v97(v80, v58, v86);
      (*(v45 + 56))(v59, 0, 1, v61);
      v62 = v83;
      sub_1D5BA3DE4(v59);
      (*(v81 + 8))(v59, v82);
      sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1D7273AE0;
      v64 = *(*(v58 + *(v61 + 36)) + 16);
      v65 = MEMORY[0x1E69E65A8];
      *(v63 + 56) = MEMORY[0x1E69E6530];
      *(v63 + 64) = v65;
      *(v63 + 32) = v64;
      sub_1D7262EDC();
      sub_1D725C30C();

      v66 = sub_1D5B9A19C(v60, v114);
      v67 = *(v78 + 104);
      v99 = *(v78 + 80);
      v100 = v77;
      v101 = v67;
      v68 = v61;
      v96 = type metadata accessor for FeedDatabaseContext();
      type metadata accessor for FeedCursorTracker();
      v69 = v76;
      v70 = v89;
      v97(v76, v89, v68);
      v71 = v79;

      v72 = FeedCursorTracker.__allocating_init(snapshot:)(v69);
      v73 = sub_1D5BA57B8(v71, v66, v72, *(v62 + *(*v62 + 176)), v62 + *(*v62 + 160));
      LOBYTE(v99) = v98;

      v74 = sub_1D5B9B860(v92, v114, &v99, v73);
      sub_1D5BA2558(&v102, &unk_1EDF150C8, &type metadata for FeedCursorEntity, MEMORY[0x1E69E6720], sub_1D5BA4E90);

      v35 = FeedCursorContainer.init(deferredCursor:)(v74);
      (*(v95 + 8))(v70, v86);
      return v35;
    }

    sub_1D725C4CC();
    v46 = v87;
    sub_1D725C73C();

    v47 = sub_1D725891C();
    v48 = *(v47 - 8);
    result = (*(v48 + 48))(v46, 1, v47);
    if (result != 1)
    {
      v49 = v94;
      v50 = swift_getAssociatedConformanceWitness();
      v35 = FeedServiceContextType.shouldReadRootCursorFromDatabase(createdDate:)(v46, v49, v50);
      (*(v48 + 8))(v46, v47);
      if (v35)
      {
        goto LABEL_11;
      }

      sub_1D6836948();
      swift_allocError();
      *v55 = xmmword_1D72BAAA0;
      v56 = 7;
LABEL_16:
      *(v55 + 16) = v56;
      swift_willThrow();
      sub_1D5BA2558(&v102, &unk_1EDF150C8, &type metadata for FeedCursorEntity, MEMORY[0x1E69E6720], sub_1D5BA4E90);
      return v35;
    }

    goto LABEL_18;
  }

  sub_1D725C4CC();
  sub_1D725C73C();

  v35 = *(&v99 + 1);
  if (*(&v99 + 1))
  {
    v54 = v99;
    sub_1D6836948();
    swift_allocError();
    *v55 = v54;
    *(v55 + 8) = v35;
    v56 = 2;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1D5BA0DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5BA0E50@<X0>(uint64_t *a1@<X8>)
{
  v104 = a1;
  sub_1D5BA1CF0(0, &qword_1EDF17430, &qword_1EDF17438, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v103 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v102 = &v89 - v6;
  sub_1D5BA1CF0(0, &qword_1EDF173F0, &qword_1EDF173F8, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v100 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v99 = &v89 - v12;
  sub_1D5BA1F84();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v94 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v93 = &v89 - v18;
  sub_1D5B7B4D4(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v92 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v91 = &v89 - v24;
  sub_1D5B7B4D4(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v89 - v31;
  v33 = MEMORY[0x1E69E6158];
  v34 = MEMORY[0x1E69D62D0];
  sub_1D5BA1CF0(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v89 - v41;
  v113 = MEMORY[0x1E69D6200];
  sub_1D5BA0DFC(0, &qword_1EDF17448, v33, v34, MEMORY[0x1E69D6200]);
  v44 = v43;
  v107 = v43;
  v45 = *(v43 - 8);
  v46 = *(v45 + 56);
  v108 = v46;
  v109 = v45 + 56;
  v105 = v42;
  v46(v42, 1, 1, v43);
  v106 = v38;
  v46(v38, 1, 1, v44);
  v112 = MEMORY[0x1E69D6208];
  sub_1D5BA0DFC(0, &qword_1EDF173B0, v33, v34, MEMORY[0x1E69D6208]);
  v111 = v47;
  swift_allocObject();
  sub_1D725C71C();
  v96 = MEMORY[0x1E69D6160];
  sub_1D5BA0DFC(0, &qword_1EDF17538, v33, v34, MEMORY[0x1E69D6160]);
  v110 = v48;
  swift_allocObject();
  v101 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v50 = v49;
  v51 = *(*(v49 - 8) + 56);
  v51(v32, 1, 1, v49);
  v51(v28, 1, 1, v50);
  sub_1D5BA2244(0, &qword_1EDF173E0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  swift_allocObject();
  v98 = sub_1D725C4BC();
  v51(v32, 1, 1, v50);
  v51(v28, 1, 1, v50);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v97 = sub_1D725C4BC();
  sub_1D5BA2088();
  v53 = v52;
  v54 = *(*(v52 - 8) + 56);
  v55 = v91;
  v54(v91, 1, 1, v52);
  v56 = v92;
  v54(v92, 1, 1, v53);
  sub_1D5B9E160(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374();
  swift_allocObject();
  v95 = sub_1D725C4BC();
  v54(v55, 1, 1, v53);
  v54(v56, 1, 1, v53);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v92 = sub_1D725C4BC();
  v57 = v107;
  v58 = v108;
  v108(v105, 1, 1, v107);
  v58(v106, 1, 1, v57);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v91 = sub_1D725C4BC();
  sub_1D5BA1EE0(0, &qword_1EDF17498, MEMORY[0x1E69D6200]);
  v60 = v59;
  v61 = *(*(v59 - 8) + 56);
  v62 = v93;
  v61(v93, 1, 1, v59);
  v63 = v94;
  v61(v94, 1, 1, v60);
  sub_1D5BA1EE0(0, &qword_1EDF173D8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA1EE0(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v90 = sub_1D725C4BC();
  v61(v62, 1, 1, v60);
  v61(v63, 1, 1, v60);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v94 = sub_1D725C4BC();
  v64 = MEMORY[0x1E69E6530];
  v65 = MEMORY[0x1E69D62F8];
  sub_1D5BA0DFC(0, &qword_1EDF173F8, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8], v113);
  v67 = v66;
  v68 = *(*(v66 - 8) + 56);
  v69 = v99;
  v68(v99, 1, 1, v66);
  v70 = v100;
  v68(v100, 1, 1, v67);
  sub_1D5BA0DFC(0, &qword_1EDF17388, v64, v65, v112);
  swift_allocObject();
  sub_1D725C71C();
  v71 = v65;
  v72 = v96;
  sub_1D5BA0DFC(0, &qword_1EDF17510, v64, v71, v96);
  swift_allocObject();
  v93 = sub_1D725C4BC();
  v68(v69, 1, 1, v67);
  v68(v70, 1, 1, v67);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v73 = sub_1D725C4BC();
  v74 = MEMORY[0x1E69E6370];
  v75 = MEMORY[0x1E69D62E0];
  sub_1D5BA0DFC(0, &qword_1EDF17438, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], v113);
  v77 = v76;
  v78 = *(*(v76 - 8) + 56);
  v78(v102, 1, 1, v76);
  v78(v103, 1, 1, v77);
  sub_1D5BA0DFC(0, &qword_1EDF173A0, v74, v75, v112);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA0DFC(0, &qword_1EDF17528, v74, v75, v72);
  swift_allocObject();
  v79 = sub_1D725C4BC();
  v80 = v107;
  v81 = v108;
  v108(v105, 1, 1, v107);
  v81(v106, 1, 1, v80);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  result = sub_1D725C4BC();
  v83 = v104;
  v84 = v97;
  v85 = v98;
  *v104 = v101;
  v83[1] = v85;
  v83[2] = v84;
  v86 = v92;
  v83[3] = v95;
  v83[4] = v86;
  v87 = v90;
  v83[5] = v91;
  v83[6] = v87;
  v88 = v93;
  v83[7] = v94;
  v83[8] = v88;
  v83[9] = v73;
  v83[10] = v79;
  v83[11] = result;
  return result;
}

void sub_1D5BA1CF0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D5BA0DFC(255, a3, a4, a5, MEMORY[0x1E69D6200]);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double sub_1D5BA1D60@<D0>(_OWORD *a1@<X8>)
{
  sub_1D5BA0E50(v6);
  v2 = v6[3];
  a1[2] = v6[2];
  a1[3] = v2;
  v3 = v6[5];
  a1[4] = v6[4];
  a1[5] = v3;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

void sub_1D5BA1DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D5BA1E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D5BA1E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D5BA1EE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D5BA1E78(255, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
    v7 = v6;
    v8 = sub_1D5BA1FF8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5BA1F84()
{
  if (!qword_1EDF17490)
  {
    sub_1D5BA1EE0(255, &qword_1EDF17498, MEMORY[0x1E69D6200]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17490);
    }
  }
}

unint64_t sub_1D5BA1FF8()
{
  result = qword_1EDF17500;
  if (!qword_1EDF17500)
  {
    sub_1D5BA1DA8(255, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17500);
  }

  return result;
}

void sub_1D5BA2088()
{
  if (!qword_1EDF17458)
  {
    v0 = MEMORY[0x1E69E6158];
    sub_1D5B9946C(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF054F8, &qword_1EDF43BE0, v0);
    v1 = sub_1D725C72C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17458);
    }
  }
}

uint64_t sub_1D5BA2138(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9946C(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BA21B0()
{
  if (!qword_1EDF174B8)
  {
    sub_1D725891C();
    sub_1D5B9DE94(&qword_1EDF18A78, MEMORY[0x1E6969530]);
    v0 = sub_1D725C72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF174B8);
    }
  }
}

void sub_1D5BA2244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D725891C();
    v7 = sub_1D5B9DF6C(&qword_1EDF18A78, MEMORY[0x1E6969530]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D5BA22E0()
{
  result = qword_1EDF054F8;
  if (!qword_1EDF054F8)
  {
    sub_1D5B58298(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF054F8);
  }

  return result;
}

void sub_1D5BA2374()
{
  if (!qword_1EDF17530)
  {
    v0 = MEMORY[0x1E69E6158];
    sub_1D5B9946C(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF054F8, &qword_1EDF43BE0, v0);
    v1 = sub_1D725C4EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17530);
    }
  }
}

uint64_t sub_1D5BA2424()
{
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4FC();
  swift_allocObject();
  return sub_1D725C51C();
}

uint64_t sub_1D5BA2558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

NewsFeed::FeedCursorKind_optional __swiftcall FeedCursorKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D5BA2614@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  sub_1D5BA2EA8(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v68 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v56 - v6;
  v64 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17450, &qword_1EDF17458, MEMORY[0x1E69D6200], sub_1D5B9E0D8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v63 = &v56 - v12;
  sub_1D5BA2EA8(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - v19;
  v21 = MEMORY[0x1E69D6200];
  sub_1D5B999B0(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v56 - v28;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v21);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 56);
  v34 = v32 + 56;
  v56 = v29;
  v33(v29, 1, 1, v30);
  v57 = v25;
  v33(v25, 1, 1, v31);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v66 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v36 = v35;
  v37 = *(*(v35 - 8) + 56);
  v37(v20, 1, 1, v35);
  v37(v16, 1, 1, v36);
  sub_1D5B99A0C();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  swift_allocObject();
  v62 = sub_1D725C4BC();
  v38 = v56;
  v58 = v31;
  v59 = v33;
  v60 = v34;
  v33(v56, 1, 1, v31);
  v39 = v57;
  v33(v57, 1, 1, v31);
  swift_allocObject();
  v40 = v38;
  v41 = v39;
  sub_1D725C71C();
  swift_allocObject();
  v61 = sub_1D725C4BC();
  sub_1D5B9E0D8(0, &qword_1EDF17458, v64);
  v43 = v42;
  v44 = *(*(v42 - 8) + 56);
  v44(v63, 1, 1, v42);
  v44(v65, 1, 1, v43);
  sub_1D5B9E0D8(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E0D8(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v45 = sub_1D725C4BC();
  sub_1D5B9E4F4();
  v47 = v46;
  v48 = *(*(v46 - 8) + 56);
  v48(v67, 1, 1, v46);
  v48(v68, 1, 1, v47);
  sub_1D5B99AA0(0, &qword_1EDF173B8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C();
  swift_allocObject();
  v49 = sub_1D725C4BC();
  v51 = v58;
  v50 = v59;
  v59(v40, 1, 1, v58);
  v50(v41, 1, 1, v51);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  result = sub_1D725C4BC();
  v53 = v69;
  v54 = v61;
  v55 = v62;
  *v69 = v66;
  v53[1] = v55;
  v53[2] = v54;
  v53[3] = v45;
  v53[4] = v49;
  v53[5] = result;
  return result;
}

double sub_1D5BA2E14@<D0>(_OWORD *a1@<X8>)
{
  sub_1D5BA2614(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_1D5BA2E54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BA2EA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BA2EFC()
{
  if (!qword_1EDF17348)
  {
    sub_1D5B58298(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B994FC(&qword_1EDF3C830);
    sub_1D5B994FC(&qword_1EDF04A90);
    v0 = sub_1D725C8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17348);
    }
  }
}

void sub_1D5BA2FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D5BA3054()
{
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4FC();
  swift_allocObject();
  return sub_1D725C52C();
}

uint64_t sub_1D5BA3114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_1D726393C();
  v7 = *(v35 - 8);
  v9 = MEMORY[0x1EEE9AC00](v35, v8);
  v11 = &v34 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9, v13);
  v37 = &v34 - v14;
  v15 = type metadata accessor for FeedCursorTrackerGroup();
  v38 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  v36 = *(a1 + 16);
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v43)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = v42;
  v41 = v43;
  swift_getAssociatedConformanceWitness();
  sub_1D726258C();
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {

    (*(v7 + 8))(v11, v35);
    v20 = 1;
    v22 = v38;
    v21 = v39;
    return (*(v22 + 56))(v21, v20, 1, v15);
  }

  v23 = v37;
  (*(v12 + 32))(v37, v11, AssociatedTypeWitness);
  sub_1D725C4CC();
  sub_1D725C73C();

  v24 = v43;
  if (!v43)
  {
    goto LABEL_16;
  }

  *v18 = v42;
  *(v18 + 1) = v24;
  (*(v12 + 16))(&v18[v15[9]], v23, AssociatedTypeWitness);
  sub_1D725C4CC();
  v25 = v34;
  sub_1D725C73C();

  v26 = sub_1D725891C();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v25, 1, v26);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v27 + 32))(&v18[v15[10]], v25, v26);
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v42)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1D725C87C();

  v28 = v40;
  if (!v40)
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  *&v18[v15[12]] = v28;
  sub_1D725C4CC();
  sub_1D725C73C();

  v29 = v43;
  if (v43)
  {
    v30 = &v18[v15[13]];
    *v30 = v42;
    *(v30 + 1) = v29;
    sub_1D725C4CC();
    sub_1D725C73C();

    (*(v12 + 8))(v37, AssociatedTypeWitness);
    v31 = v43;
    if (v43 == 1)
    {
      v32 = &v18[v15[11]];
      *v32 = 0;
      *(v32 + 1) = 0;
    }

    else
    {
      v33 = &v18[v15[11]];
      *v33 = v42;
      *(v33 + 1) = v31;
    }

    v22 = v38;
    v21 = v39;
    (*(v38 + 32))(v39, v18, v15);
    v20 = 0;
    return (*(v22 + 56))(v21, v20, 1, v15);
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1D5BA373C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v27 = v7;
  v8 = *(v7 + 84);
  v9 = sub_1D725891C();
  v10 = *(v9 - 8);
  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  v13 = *(v10 + 80);
  if (v8 <= *(v10 + 84))
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((((((*(*(v9 - 8) + 64) + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15 >= a3)
  {
    v19 = 0;
    v20 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((*(*(v9 - 8) + 64) + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v15 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v14 & 0x80000000) != 0)
        {
          v23 = (a1 + v11 + 16) & ~v11;
          if (v8 == v15)
          {
            v24 = *(v27 + 56);

            v24(v23, a2, v8, AssociatedTypeWitness);
          }

          else
          {
            v25 = *(v10 + 56);
            v26 = (v23 + v12 + v13) & ~v13;

            v25(v26, a2);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((((*(*(v9 - 8) + 64) + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((*(*(v9 - 8) + 64) + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v22 = ~v15 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t sub_1D5BA3AB8(int *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = sub_1D725891C();
  v8 = *(v7 - 8);
  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v6 <= *(v8 + 84))
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = v6;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((((((*(*(v7 - 8) + 64) + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v13 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v13 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v12 & 0x80000000) != 0)
  {
    v24 = (a1 + v9 + 16) & ~v9;
    if (v6 == v13)
    {
      v25 = *(v5 + 48);

      return v25(v24, v6, AssociatedTypeWitness);
    }

    else
    {
      v26 = *(v8 + 48);
      v27 = (v24 + v10 + v11) & ~v11;

      return v26(v27);
    }
  }

  else
  {
    v23 = *(a1 + 1);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }
}

uint64_t sub_1D5BA3DE4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursorTrackerSnapshot();
  v2 = sub_1D726393C();
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v7 - v4, a1);

  sub_1D725B97C();
}

uint64_t sub_1D5BA3F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a3;
  v6 = MEMORY[0x1E69E6720];
  sub_1D5B76550(0, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v44 - v9;
  sub_1D5B76550(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v6);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v44 - v13;
  v15 = sub_1D725C4AC();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v56 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v44 - v24;
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v50 = v23;
  sub_1D5BA44A0();
  v51 = sub_1D725C70C();
  v26 = *(a1 + 16);
  if (v26)
  {
    v45 = v25;
    v46 = v16;
    v47 = v15;
    v48 = v10;
    v49 = v3;
    v27 = sub_1D5B9A6D8(v26, 0);
    v28 = sub_1D5B9A6EC(v53, v27 + 4, v26, a1);
    v29 = v53[0];
    v30 = v53[1];
    v31 = v53[2];
    v32 = v54;
    v33 = v55;

    result = sub_1D5BA45DC(v29, v30, v31, v32, v33);
    if (v28 != v26)
    {
      __break(1u);
      goto LABEL_12;
    }

    v10 = v48;
    v4 = v49;
    v16 = v46;
    v15 = v47;
    v25 = v45;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5B9A888(v27);

  v35 = v56;
  sub_1D725C63C();

  sub_1D725C4CC();
  sub_1D725C73C();

  v36 = sub_1D725891C();
  v37 = *(v36 - 8);
  result = (*(v37 + 48))(v14, 1, v36);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v54 = v36;
  v55 = MEMORY[0x1E69D6130];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(v37 + 32))(boxed_opaque_existential_1, v14, v36);
  v39 = v50;
  sub_1D725C62C();
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_1D725C61C();
  v40 = *(v16 + 8);
  v40(v39, v15);
  v40(v35, v15);
  v41 = sub_1D725C79C();
  (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
  v42 = sub_1D725C8CC();
  if (v4)
  {

    sub_1D5BA2558(v10, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
    return (v40)(v25, v15);
  }

  else
  {
    v43 = v42;

    sub_1D5BA2558(v10, &qword_1EDF17378, MEMORY[0x1E69D6230], MEMORY[0x1E69E6720], sub_1D5B76550);
    v40(v25, v15);
    return v43;
  }
}

unint64_t sub_1D5BA44A0()
{
  result = qword_1EDF153A8;
  if (!qword_1EDF153A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF153A8);
  }

  return result;
}

unint64_t sub_1D5BA44F4()
{
  result = qword_1EDF153A0;
  if (!qword_1EDF153A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF153A0);
  }

  return result;
}

void *sub_1D5BA4548(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B87DC0(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void sub_1D5BA45E0()
{
  if (!qword_1EDF023B8)
  {
    sub_1D5B483C4(255, &qword_1EDF174E0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF023B8);
    }
  }
}

uint64_t sub_1D5BA464C@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  sub_1D5BA2E54(0, &qword_1EDF17480, sub_1D5B9A9C8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v44 = &v39 - v6;
  sub_1D5BA2E54(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v14);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v41 = v25;
  v25(v22, 1, 1, v23);
  v40 = v18;
  v25(v18, 1, 1, v24);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v43 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v28(v13, 1, 1, v26);
  v28(v42, 1, 1, v27);
  sub_1D5B99A0C();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  swift_allocObject();
  v29 = sub_1D725C4BC();
  v30 = v41;
  v41(v22, 1, 1, v24);
  v31 = v40;
  v30(v40, 1, 1, v24);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v32 = sub_1D725C4BC();
  v30(v22, 1, 1, v24);
  v30(v31, 1, 1, v24);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v33 = sub_1D725C4BC();
  sub_1D5B9A9C8();
  v35 = v34;
  v36 = *(*(v34 - 8) + 56);
  v36(v44, 1, 1, v34);
  v36(v45, 1, 1, v35);
  sub_1D5B9ABAC();
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA4D44();
  swift_allocObject();
  result = sub_1D725C4BC();
  v38 = v46;
  *v46 = v43;
  v38[1] = v29;
  v38[2] = v32;
  v38[3] = v33;
  v38[4] = result;
  return result;
}

uint64_t sub_1D5BA4C60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B58298(255, qword_1EDF387B0, &type metadata for FeedGroupRepooling, MEMORY[0x1E69E6720]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5BA4CF0()
{
  result = qword_1EDF14A90;
  if (!qword_1EDF14A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A90);
  }

  return result;
}

void sub_1D5BA4D44()
{
  if (!qword_1EDF17550)
  {
    sub_1D5B9AA5C();
    sub_1D5B9DE94(&qword_1EDF17370, sub_1D5B9AA5C);
    v0 = sub_1D725C4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17550);
    }
  }
}

uint64_t sub_1D5BA4DF0()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D5BA4E90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5BA4EE0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1D725891C();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D5BA5078(uint64_t *a1, int a2)
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

uint64_t sub_1D5BA50F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_1D5B9B294(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_1D5BA517C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_1EDFFC6A0;
  v7 = sub_1D725891C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + v6, a1, v7);
  *(v3 + qword_1EDFFC698) = a2;
  type metadata accessor for FeedCursorManifestGroupEntry();
  sub_1D72627FC();

  sub_1D7261CEC();
  sub_1D7261E1C();
  swift_getWitnessTable();
  sub_1D726248C();
  (*(v8 + 8))(a1, v7);
  *(v3 + qword_1EDFFC690) = v10;
  return v3;
}

uint64_t sub_1D5BA5430(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t *FeedCursorTracker.init(snapshot:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = MEMORY[0x1E69E7CD0];
  *(v1 + *(v4 + 104)) = MEMORY[0x1E69E7CD0];
  *(v1 + *(*v1 + 112)) = v7;
  v8 = *(*v1 + 120);
  type metadata accessor for FeedCursorTrackerGroup();
  *(v1 + v8) = sub_1D7261CEC();
  v9 = *(*v1 + 128);
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v1 + v9) = sub_1D725A7AC();
  v10 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v10, a1, AssociatedTypeWitness);
  v12 = type metadata accessor for FeedCursorTrackerSnapshot();
  v13 = *(a1 + v12[9]);
  v14 = *(*v2 + 104);
  swift_beginAccess();
  *(v2 + v14) = v13;

  v15 = *(a1 + v12[11]);
  v16 = *(*v2 + 120);
  swift_beginAccess();
  *(v2 + v16) = v15;

  v17 = *(a1 + v12[10]);
  v18 = *(*v2 + 112);
  swift_beginAccess();
  *(v2 + v18) = v17;

  return v2;
}

uint64_t sub_1D5BA57B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *v10;
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = 0;
  *(v10 + 48) = a4;
  (*(*(*(v11 + 88) - 8) + 16))(v10 + *(v11 + 168), a5);
  *(v10 + 56) = 0;
  *(v10 + 64) = MEMORY[0x1E69E7CD0];
  return v10;
}

uint64_t sub_1D5BA5888(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v33 = a3;
  v28 = *v3;
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7270C10;
  sub_1D725C4CC();
  sub_1D725C73C();

  object = rawValue._object;
  if (!rawValue._object)
  {
    __break(1u);
    goto LABEL_19;
  }

  countAndFlagsBits = rawValue._countAndFlagsBits;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D5B7E2C0();
  *(v7 + 64) = v12;
  *(v7 + 32) = countAndFlagsBits;
  *(v7 + 40) = object;
  sub_1D725C4CC();
  sub_1D725C73C();

  v13 = v32;
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v31;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v14;
  *(v7 + 80) = v13;
  sub_1D7262EDC();
  sub_1D725C30C();

  v15 = v4;
  v16 = sub_1D5BA5CE0(a1, a2, v33);
  if (v29)
  {
    return v15;
  }

  v17 = v16;
  rawValue._countAndFlagsBits = v16;
  type metadata accessor for FeedDatabaseGroup();
  sub_1D72627FC();
  swift_getWitnessTable();
  if ((sub_1D7262CCC() & 1) == 0)
  {
LABEL_16:
    type metadata accessor for FeedDatabaseCursor();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = *(v28 + 80);
    *(v23 + 24) = *(v28 + 88);
    *(v23 + 32) = *(v28 + 96);
    *(v23 + 48) = *(v28 + 112);
    *(v23 + 56) = *(v28 + 120);
    v24 = *(v28 + 136);
    v25 = *a2;
    *(v23 + 104) = a2[1];
    *(v23 + 88) = v25;
    v26 = a2[4];
    *(v23 + 168) = a2[5];
    *(v23 + 152) = v26;
    v27 = a2[2];
    *(v23 + 136) = a2[3];
    *(v23 + 72) = v24;
    *(v23 + 80) = v22;
    *(v23 + 120) = v27;
    sub_1D5BA739C(a2, &rawValue);
    sub_1D5BA739C(a2, &rawValue);
    v15 = sub_1D5BA73F8(a2, v17, sub_1D6837804, v23);

    sub_1D5BA7608(a2);
    return v15;
  }

  v15 = sub_1D725C4CC();
  sub_1D725C73C();

  v18 = rawValue._object;
  if (rawValue._object)
  {
    v19 = rawValue._countAndFlagsBits;
    FeedCursorKind.init(rawValue:)(*(&v18 - 1));
    if (v31 > 4u)
    {
      if (v31 == 5 || v31 == 6)
      {
        goto LABEL_16;
      }

      sub_1D725C4CC();
      sub_1D725C73C();

      v15 = rawValue._object;

      sub_1D6836948();
      swift_allocError();
      *v21 = rawValue._countAndFlagsBits;
      *(v21 + 8) = v15;
      *(v21 + 16) = 0;
    }

    else
    {
      if (v31 - 2 >= 3 && (!v31 || *(v33 + 56) != 1))
      {
        goto LABEL_16;
      }

      sub_1D6836948();
      swift_allocError();
      *v20 = xmmword_1D728CF30;
      *(v20 + 16) = 7;
    }

    swift_willThrow();
    return v15;
  }

LABEL_20:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D5BA5CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B67740(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7270C10;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v23)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    __break(1u);
    __break(1u);
    return result;
  }

  v8 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v6 + 64) = v9;
  *(v6 + 32) = v22;
  *(v6 + 40) = v23;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v21)
  {
    goto LABEL_11;
  }

  *(v6 + 96) = v8;
  *(v6 + 104) = v9;
  *(v6 + 72) = v20;
  *(v6 + 80) = v21;
  sub_1D7262EDC();
  sub_1D725C30C();

  v10 = sub_1D5B9BD8C(a3, a1, a2);
  if (!v18)
  {
    v19 = v10;
    MEMORY[0x1EEE9AC00](v10, v11);
    sub_1D5BA4E90(0, &qword_1EDF05280, &type metadata for FeedGroupEntity, MEMORY[0x1E69E62F8]);
    type metadata accessor for FeedDatabaseGroup();
    sub_1D5B9AD14(&qword_1EDF05278, &qword_1EDF05280, &type metadata for FeedGroupEntity);
    a1 = sub_1D726242C();
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    if (v20)
    {
      sub_1D5BA70B0();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7274590;
    sub_1D725C4CC();
    sub_1D725C73C();

    v13 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = v9;
    *(v12 + 32) = a1;
    *(v12 + 40) = v23;
    sub_1D725C4CC();
    sub_1D725C73C();

    *(v12 + 96) = v13;
    *(v12 + 104) = v9;
    *(v12 + 72) = v20;
    *(v12 + 80) = v21;
    v14 = *(v19 + 16);

    v15 = MEMORY[0x1E69E6530];
    v16 = MEMORY[0x1E69E65A8];
    *(v12 + 136) = MEMORY[0x1E69E6530];
    *(v12 + 144) = v16;
    *(v12 + 112) = v14;
    v17 = sub_1D726279C();
    *(v12 + 176) = v15;
    *(v12 + 184) = v16;
    *(v12 + 152) = v17;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  return a1;
}

double sub_1D5BA6110@<D0>(_OWORD *a1@<X8>)
{
  sub_1D5B9C4A0(v6);
  v2 = v6[3];
  a1[2] = v6[2];
  a1[3] = v2;
  v3 = v6[5];
  a1[4] = v6[4];
  a1[5] = v3;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

void sub_1D5BA6158()
{
  if (!qword_1EDF173B8)
  {
    sub_1D5BA2EFC();
    sub_1D5B9DE94(&qword_1EDF17350, sub_1D5BA2EFC);
    v0 = sub_1D725C75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF173B8);
    }
  }
}

uint64_t sub_1D5BA61EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t FeedGroupRepooling.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D5BA63F0(0, &qword_1EDF03C48, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BA646C();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D5B9E6D0();
    sub_1D726427C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5BA63F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5BA646C();
    v7 = a3(a1, &type metadata for FeedGroupRepooling.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5BA646C()
{
  result = qword_1EDF14AA8[0];
  if (!qword_1EDF14AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF14AA8);
  }

  return result;
}

void sub_1D5BA64F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5BA6560()
{
  result = qword_1EDF14F00;
  if (!qword_1EDF14F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14F00);
  }

  return result;
}

unint64_t sub_1D5BA65B8()
{
  result = qword_1EDF14EF0;
  if (!qword_1EDF14EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14EF0);
  }

  return result;
}

unint64_t sub_1D5BA6610()
{
  result = qword_1EDF14EF8;
  if (!qword_1EDF14EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14EF8);
  }

  return result;
}

unint64_t sub_1D5BA6664()
{
  result = qword_1EDF14ED8;
  if (!qword_1EDF14ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14ED8);
  }

  return result;
}

uint64_t sub_1D5BA66B8()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

_WORD *storeEnumTagSinglePayload for FormatCodingTagIconPreferredSourceFeedNavStrategy(_WORD *result, int a2, int a3)
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

unint64_t sub_1D5BA67BC()
{
  result = qword_1EDF14EE0;
  if (!qword_1EDF14EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14EE0);
  }

  return result;
}

uint64_t sub_1D5BA6810@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatCodingTagIconPreferredSourceFeedNavStrategy(unsigned int *a1, int a2)
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

unint64_t sub_1D5BA6918()
{
  result = qword_1EDF13B70;
  if (!qword_1EDF13B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13B70);
  }

  return result;
}

uint64_t FeedGroupFreezingDisallow.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v14 = a2;
  sub_1D5BA64F8(0, &qword_1EDF03B98, sub_1D5BA6B2C, &type metadata for FeedGroupFreezingDisallow.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BA6B2C();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v14;
    v11 = sub_1D72642CC();
    (*(v6 + 8))(v9, v5);
    *v10 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5BA6B2C()
{
  result = qword_1EDF13B90;
  if (!qword_1EDF13B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13B90);
  }

  return result;
}

unint64_t sub_1D5BA6B84()
{
  result = qword_1EDF13B80;
  if (!qword_1EDF13B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13B80);
  }

  return result;
}

unint64_t sub_1D5BA6BDC()
{
  result = qword_1EDF13B88;
  if (!qword_1EDF13B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13B88);
  }

  return result;
}

uint64_t *sub_1D5BA6CD8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = a1[3];
  *(v4 + 3) = a1[2];
  *(v4 + 4) = v11;
  v12 = a1[5];
  *(v4 + 5) = a1[4];
  *(v4 + 6) = v12;
  v13 = a1[1];
  *(v4 + 1) = *a1;
  *(v4 + 2) = v13;
  v14 = *(v8 + 88);
  v15 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1D5BA6EF4();
  sub_1D726297C();
  sub_1D725B7BC();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = a2;
  v16[5] = a3;
  sub_1D5BA6C4C(a1, v18);

  sub_1D5BA6F58();
  v4[14] = sub_1D725B79C();
  return v4;
}

uint64_t sub_1D5BA6EBC()
{

  return swift_deallocObject();
}

unint64_t sub_1D5BA6EF4()
{
  result = qword_1EDF3C5D0;
  if (!qword_1EDF3C5D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3C5D0);
  }

  return result;
}

uint64_t sub_1D5BA6F58()
{
  sub_1D725A93C();
  sub_1D5BA7004();
  sub_1D5B85738(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  return sub_1D7263B6C();
}

unint64_t sub_1D5BA7004()
{
  result = qword_1EDF3BDB0;
  if (!qword_1EDF3BDB0)
  {
    sub_1D725A93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BDB0);
  }

  return result;
}

uint64_t sub_1D5BA70E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D726294C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  result = sub_1D70ABFA4(0, 0, v13, &unk_1D738FE60, v15);
  *a5 = result;
  return result;
}

uint64_t sub_1D5BA727C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5BA72C8(uint64_t a1)
{
  sub_1D5B73DC0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1D5BA745C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = a1[3];
  *(v5 + 3) = a1[2];
  *(v5 + 4) = v13;
  v14 = a1[5];
  *(v5 + 5) = a1[4];
  *(v5 + 6) = v14;
  v15 = a1[1];
  *(v5 + 1) = *a1;
  *(v5 + 2) = v15;
  v5[14] = a2;
  v16 = *(v10 + 80);
  sub_1D725BC0C();
  sub_1D725B7BC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = *(v10 + 88);
  v17[4] = a3;
  v17[5] = a4;
  sub_1D5BA739C(a1, v19);

  sub_1D5BA6F58();
  v5[15] = sub_1D725B79C();
  return v5;
}

uint64_t sub_1D5BA75D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BA765C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D5BA80A8(a1, v4, v5, v6);
}

uint64_t sub_1D5BA7730(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v90 = a3;
  v91 = a2;
  v86 = *v3;
  v88 = *a1;
  v94 = *(v86 + 88);
  v87 = *(v94 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v85 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v93 = &v83 - v8;
  v9 = sub_1D725891C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v84 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BA8044();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0();
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v96 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v83 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v83 - v27;
  v99 = v3;
  v29 = *(v10 + 16);
  v92 = *(v3 + 4);
  v29(&v83 - v27, v92 + qword_1EDFFC6A0, v9);
  (*(v10 + 56))(v28, 0, 1, v9);
  v89 = a1;
  sub_1D725C4CC();
  sub_1D725C73C();

  v30 = *(v14 + 56);
  sub_1D5B76E3C(v28, v17);
  sub_1D5B76E3C(v25, &v17[v30]);
  v31 = *(v10 + 48);
  if (v31(v17, 1, v9) == 1)
  {
    sub_1D5B87904(v25, sub_1D5B5B2A0);
    sub_1D5B87904(v28, sub_1D5B5B2A0);
    v32 = v31(&v17[v30], 1, v9);
    v33 = v99;
    if (v32 == 1)
    {
      sub_1D5B87904(v17, sub_1D5B5B2A0);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1D5B76E3C(v17, v96);
  if (v31(&v17[v30], 1, v9) == 1)
  {
    sub_1D5B87904(v25, sub_1D5B5B2A0);
    sub_1D5B87904(v28, sub_1D5B5B2A0);
    (*(v10 + 8))(v96, v9);
    v33 = v99;
LABEL_6:
    sub_1D5B87904(v17, sub_1D5BA8044);
LABEL_7:
    v34 = *(v33 + 3);

    v36 = v95;
    v37 = v91(v35);
    if (v36)
    {
    }

    v71 = v37;
    v99 = *(v33 + 2);
    v96 = *(v33 + 6);
    v72 = v94;
    (*(v87 + 16))(v85, &v33[*(*v33 + 168)], v94);

    v73 = v89;
    v74 = sub_1D5BA83D4();
    LODWORD(v95) = v74;
    v93 = &v83;
    v75 = *(v33 + 8);
    v97 = v73[14];
    MEMORY[0x1EEE9AC00](v74, v76);
    v77 = v86;
    *(&v83 - 4) = *(v86 + 80);
    *(&v83 - 3) = v72;
    *(&v83 - 1) = *(v77 + 96);
    type metadata accessor for FeedDatabaseGroup();
    v78 = sub_1D72627FC();

    WitnessTable = swift_getWitnessTable();
    v81 = sub_1D5B874E4(sub_1D6D971BC, (&v83 - 6), v78, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v80);

    v82 = sub_1D5BA8750(v81, v75);

    v63 = v95 & 1;
    v64 = v34;
    v65 = v71;
    v67 = v99;
    v68 = v96;
    v66 = v85;
    v69 = 0;
    v70 = v82;
    return sub_1D5BA87D0(v64, v65, v67, v68, v66, v69, v63, v70);
  }

  v39 = &v17[v30];
  v40 = v84;
  (*(v10 + 32))(v84, v39, v9);
  sub_1D5BA81A0();
  v41 = v96;
  v42 = sub_1D7261FBC();
  v43 = *(v10 + 8);
  v43(v40, v9);
  sub_1D5B87904(v25, sub_1D5B5B2A0);
  sub_1D5B87904(v28, sub_1D5B5B2A0);
  v43(v41, v9);
  sub_1D5B87904(v17, sub_1D5B5B2A0);
  v33 = v99;
  if ((v42 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v44 = *(v33 + 2);
  v45 = *(v33 + 3);
  v46 = *(v33 + 6);
  (*(v87 + 16))(v93, &v33[*(*v33 + 168)], v94);
  v47 = *(v33 + 5);
  v48 = v89[14];
  type metadata accessor for FeedDatabaseGroup();

  result = sub_1D726279C();
  v49 = v47 + result;
  if (__OFADD__(v47, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1D725C4CC();
  sub_1D725C73C();

  if (v98)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v50 = __OFADD__(v49, v97);
  v51 = v49 + v97;
  if (v50)
  {
    goto LABEL_20;
  }

  sub_1D725C4CC();
  sub_1D725C73C();

  if (v98)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (__OFADD__(v51, v97))
  {
    goto LABEL_21;
  }

  v99 = (v51 + v97);
  v52 = sub_1D5BA83D4();
  LODWORD(v91) = v52;
  v96 = v46;
  v97 = v48;
  v53 = *(v33 + 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v55 = v45;
  v56 = v86;
  v57 = v94;
  *(&v83 - 4) = *(v86 + 80);
  *(&v83 - 3) = v57;
  *(&v83 - 1) = *(v56 + 96);
  v58 = sub_1D72627FC();

  v59 = swift_getWitnessTable();
  v61 = sub_1D5B874E4(sub_1D5BA86C4, (&v83 - 6), v58, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v60);

  v62 = sub_1D5BA8750(v61, v53);

  v63 = v91 & 1;
  v64 = v55;
  v65 = v92;
  v66 = v93;
  v67 = v44;
  v68 = v96;
  v69 = v99;
  v70 = v62;
  return sub_1D5BA87D0(v64, v65, v67, v68, v66, v69, v63, v70);
}

void sub_1D5BA8044()
{
  if (!qword_1EDF18A60)
  {
    sub_1D5B5B2A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF18A60);
    }
  }
}

uint64_t sub_1D5BA80A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D5B64684;

  return v8(a1);
}

unint64_t sub_1D5BA81A0()
{
  result = qword_1EDF45B10;
  if (!qword_1EDF45B10)
  {
    sub_1D725891C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45B10);
  }

  return result;
}

uint64_t sub_1D5BA81F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[18];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D5BA82CC(a1, (v1 + 6), v7, v4, v5, v6);
}

uint64_t sub_1D5BA82CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a3;
  v6[19] = a6;
  v6[16] = a1;
  v6[17] = a2;
  v7 = *a3;
  v6[20] = *(*a3 + 104);
  v6[21] = *(v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[22] = AssociatedTypeWitness;
  v6[23] = *(AssociatedTypeWitness - 8);
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BA8448, 0, 0);
}

uint64_t sub_1D5BA83D4()
{
  sub_1D725C4CC();
  sub_1D725C73C();

  v2 = rawValue_8;
  if (rawValue_8)
  {
    v3 = rawValue;
    FeedCursorKind.init(rawValue:)(*(&v2 - 1));
    if (v6 == 1)
    {
      return 1;
    }

    else
    {
      return *(v0 + 56);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BA8448()
{
  sub_1D725B03C();
  swift_allocObject();
  v0[25] = sub_1D725A6BC();
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v0[12])
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1D725C57C();

  sub_1D725C58C();

  sub_1D725C4CC();

  sub_1D725C73C();

  v2 = v0[9];
  v0[26] = v0[8];
  v0[27] = v2;
  if (v2 >> 60 == 15)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEE44EE0](v1);
  }

  sub_1D725B4FC();
  sub_1D5B8A954(&qword_1EDF17B50, MEMORY[0x1E69D6878]);
  sub_1D725A69C();
  v0[28] = v0[13];
  v0[29] = sub_1D725B07C();
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_1D5C25E28;
  v1 = (v0 + 14);

  return MEMORY[0x1EEE44EE0](v1);
}

uint64_t sub_1D5BA86C4@<X0>(uint64_t *a1@<X8>)
{
  result = FeedDatabaseGroup.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FeedDatabaseGroup.identifier.getter()
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v2)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BA8750(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1D5B860D0(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1D5BA87D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v17 = *v16;
  *(v16 + 16) = a3;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a6;
  *(v16 + 48) = a4;
  (*(*(*(v17 + 88) - 8) + 32))(v16 + *(v17 + 168), a5);
  *(v16 + 56) = a7;
  *(v16 + 64) = a8;
  return v16;
}

uint64_t sub_1D5BA88B4()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000018, 0x80000001D73F22E0);
  if (*(v0 + 56))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 56))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v1, v2);

  MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73F2300);
  v3 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x664F746F6C73202CLL, 0xED00003D74657366);
  v4 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D5BA8A4C()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedContext();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D5BA8B84(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a4;
  v39 = *a3;
  v11 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v42 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BA8F28(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v32 - v20;
  v22 = *a1;
  sub_1D725C4CC();
  sub_1D725C73C();

  v40 = v49;
  if (!v49)
  {
    __break(1u);
    goto LABEL_6;
  }

  v37 = v48;
  sub_1D725C4CC();
  sub_1D725C73C();

  v24 = sub_1D725891C();
  v25 = v21;
  v26 = *(*(v24 - 8) + 48);
  v38 = v25;
  result = v26();
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v35 = a6;
  v36 = a5;
  sub_1D725C4CC();
  sub_1D725C73C();

  result = (v26)(v18, 1, v24);
  if (result != 1)
  {
    v47 = v22;
    v34 = a3[3];
    v33 = *(a2 + 112);
    type metadata accessor for FeedDeferredCursorGroup();

    v32 = sub_1D726275C();
    v27 = a3[2];
    v28 = *(v39 + 80);
    v29 = *(*(v39 + 96) + 8);

    v30 = v42;
    FeedContextFactoryType.createFeedContext()(v28, v29);
    type metadata accessor for FeedDatabaseGroup();
    v31 = sub_1D726279C();
    FeedJournal.init(entries:)(MEMORY[0x1E69E7CC0], &v45);

    swift_unknownObjectRelease();
    v43 = v45;
    v44 = v46;
    swift_allocObject();
    return sub_1D5C891B4(v37, v40, v38, v18, &v47, v34, v33, v32, v27, v30, 0, v31, &v43, v36, v35);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D5BA8F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5BA8FA4()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeedDatabaseGroup();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t FeedCursorFactory.createFeedContext(selectors:)(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 160) + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(a1, ObjectType, v3);
}

id sub_1D5BA9180()
{
  v1 = [*(*v0 + 16) possiblyUnfetchedAppConfiguration];
  result = [v1 respondsToSelector_];
  if (result)
  {
    v3 = [v1 paidBundleConfig];
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BundleSessionManager.cachedSession.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BundleSessionCache();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v15 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v15 - v12;

  sub_1D725B96C();

  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_1D6014334(v13, a1);
  }

  sub_1D5BA93B8(a1);
  sub_1D5B8866C(a1, v9);
  swift_storeEnumTagMultiPayload();
  sub_1D5B79BDC(v9, v5, type metadata accessor for BundleSessionCache);

  sub_1D725B97C();

  return sub_1D5B79C44(v9, type metadata accessor for BundleSessionCache);
}

uint64_t sub_1D5BA93B8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BundleSession();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1D726203C();
  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v22[2];
      v10 = v22[3];
      sub_1D725781C();
      swift_allocObject();
      sub_1D725780C();
      sub_1D5B7A064(&qword_1EDF11EA8, 255, type metadata accessor for BundleSession);
      sub_1D72577FC();

      if (qword_1EDF175C0 != -1)
      {
        swift_once();
      }

      v18 = sub_1D725C42C();
      __swift_project_value_buffer(v18, qword_1EDFFC720);
      v19 = sub_1D725C3FC();
      v20 = sub_1D7262EDC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1D5B42000, v19, v20, "BundleSessionManager did load session from disk.", v21, 2u);
        MEMORY[0x1DA6FD500](v21, -1, -1);
      }

      sub_1D5B952F8(v11, v10);

      sub_1D5E31B7C(v6, a1);
      v16 = 0;
      return (*(v3 + 56))(a1, v16, 1, v2);
    }
  }

  else
  {
    sub_1D5B88A40(v25, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5B79CA4);
  }

  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D725C42C();
  __swift_project_value_buffer(v12, qword_1EDFFC720);
  v13 = sub_1D725C3FC();
  v14 = sub_1D7262EBC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D5B42000, v13, v14, "BundleSessionManager failed to load session from disk because there is no data for key.", v15, 2u);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v16 = 1;
  return (*(v3 + 56))(a1, v16, 1, v2);
}

uint64_t sub_1D5BA9940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725891C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = (a1 + *(a4 + 32));
    *v13 = 2 * -a2;
    v13[1] = 0;
  }

  return result;
}

void sub_1D5BA9A04()
{
  v17 = MEMORY[0x1E69E7CD0];
  v1 = [v0 subscriptions];
  if (v1)
  {
    v2 = v1;
    sub_1D5B5A498(0, &qword_1EDF3C790);
    v3 = sub_1D726267C();

    if (v3 >> 62)
    {
      v4 = sub_1D7263BFC();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 >= 1)
        {
          v5 = 0;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x1DA6FB460](v5, v3);
            }

            else
            {
              v6 = *(v3 + 8 * v5 + 32);
            }

            v7 = v6;
            v8 = [v6 tagID];
            if (v8)
            {
              v9 = v8;
              v10 = sub_1D726207C();
              v12 = v11;

              v13 = [v7 subscriptionType];
              if (v13 > 2)
              {
                if (v13 == 3)
                {
                  v15 = 0;
                  v16 = 0xE000000000000000;
                  sub_1D7263D4C();

                  v15 = 0xD00000000000001BLL;
                  v14 = 0x80000001D73EB450;
                  goto LABEL_22;
                }

                if (v13 == 5)
                {
                  v15 = 0;
                  v16 = 0xE000000000000000;
                  sub_1D7263D4C();

                  v15 = 0xD000000000000015;
                  v14 = 0x80000001D73EB470;
                  goto LABEL_22;
                }
              }

              else
              {
                if (!v13)
                {
                  v15 = 0;
                  v16 = 0xE000000000000000;
                  sub_1D7263D4C();

                  v15 = 0xD000000000000016;
                  v14 = 0x80000001D73EB4B0;
                  goto LABEL_22;
                }

                if (v13 == 2)
                {
                  v15 = 0;
                  v16 = 0xE000000000000000;
                  sub_1D7263D4C();

                  v15 = 0xD000000000000015;
                  v14 = 0x80000001D73EB490;
LABEL_22:
                  v16 = v14;
                  MEMORY[0x1DA6F9910](v10, v12);

                  sub_1D5B860D0(&v15, v15, v16);

                  goto LABEL_8;
                }
              }
            }

LABEL_8:
            if (v4 == ++v5)
            {

              return;
            }
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1D5BA9CFC()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C2C8 = result;
  return result;
}

void sub_1D5BA9EC8()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1D5BA9F50();
    if (v1 <= 0x3F)
    {
      sub_1D5BAA13C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D5BA9F50()
{
  if (!qword_1EDF40208)
  {
    type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF40208);
    }
  }
}

uint64_t type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes()
{
  result = qword_1EDF3CC50;
  if (!qword_1EDF3CC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BAA004()
{
  sub_1D5BAAA78(319, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  if (v0 <= 0x3F)
  {
    sub_1D5BAAA78(319, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D5BAA13C()
{
  if (!qword_1EDF3F498[0])
  {
    type metadata accessor for InternalErrorViewLayout.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF3F498);
    }
  }
}

uint64_t type metadata accessor for InternalErrorViewLayout.Context()
{
  result = qword_1EDF3F540;
  if (!qword_1EDF3F540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5BAA1F0()
{
  result = qword_1EDF3C730;
  if (!qword_1EDF3C730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF3C730);
  }

  return result;
}

uint64_t type metadata accessor for InternalErrorViewModel()
{
  result = qword_1EDF3FA08;
  if (!qword_1EDF3FA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BAA288()
{
  sub_1D5BAADC0();
  if (v0 <= 0x3F)
  {
    sub_1D5BAAE44(319, v0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5BAA2FC()
{
  if (!qword_1EDF194A8)
  {
    v0 = sub_1D7264C4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF194A8);
    }
  }
}

id UIFont.withTraits(width:slant:grade:design:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  v12 = MEMORY[0x1E69E7CC8];
  if (a2)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = sub_1D726207C();
    v35 = v34;
    v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v53 = sub_1D5BAFAD8();
    *&v52 = v36;
    sub_1D5B7C390(&v52, v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v51, v33, v35, isUniquelyReferenced_nonNull_native);

    if (a4)
    {
LABEL_3:
      if (a6)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v38 = *&a3;
  v39 = sub_1D726207C();
  v41 = v40;
  v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v53 = sub_1D5BAFAD8();
  *&v52 = v42;
  sub_1D5B7C390(&v52, v51);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D5BAFB24(v51, v39, v41, v43);

  if (a6)
  {
LABEL_4:
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  v44 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
  v45 = sub_1D726207C();
  v47 = v46;

  v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v53 = sub_1D5BAFAD8();
  *&v52 = v48;
  sub_1D5B7C390(&v52, v51);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D5BAFB24(v51, v45, v47, v49);

  if (a7)
  {
LABEL_5:
    v13 = objc_opt_self();
    v14 = a7;
    v15 = [v13 ts_fontSystemFontDesignTraitKey];
    v16 = sub_1D726207C();
    v18 = v17;

    type metadata accessor for SystemDesign(0);
    v53 = v19;
    *&v52 = v14;
    sub_1D5B7C390(&v52, v51);
    v20 = v14;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v51, v16, v18, v21);
  }

LABEL_6:
  if (*(v12 + 16))
  {
    v22 = [v50 fontDescriptor];
    sub_1D5BABAD0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v24 = *MEMORY[0x1E69DB8F0];
    *(inited + 32) = *MEMORY[0x1E69DB8F0];
    sub_1D5BB0DB0();
    *(inited + 64) = v25;
    *(inited + 40) = v12;
    v26 = v24;
    sub_1D5BAA78C(inited);
    swift_setDeallocating();
    sub_1D5BAA86C(inited + 32);
    type metadata accessor for AttributeName(0);
    sub_1D5BABD88();
    v27 = sub_1D7261D2C();

    v28 = [v22 fontDescriptorByAddingAttributes_];

    [v50 pointSize];
    v30 = [objc_opt_self() fontWithDescriptor:v28 size:v29];

    return v30;
  }

  else
  {

    return v50;
  }
}

unint64_t sub_1D5BAA7DC(uint64_t a1)
{
  sub_1D726207C();
  sub_1D7264A0C();
  sub_1D72621EC();
  v2 = sub_1D7264A5C();

  return sub_1D5BAA8E4(a1, v2);
}

uint64_t sub_1D5BAA86C(uint64_t a1)
{
  sub_1D5BAA9E8(0, &qword_1EDF1A788, type metadata accessor for AttributeName);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5BAA8E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D726207C();
      v8 = v7;
      if (v6 == sub_1D726207C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D72646CC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1D5BAA9E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5BAAA78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BAAACC()
{
  type metadata accessor for GroupLayoutKey();
  if (v0 <= 0x3F)
  {
    sub_1D5B5A498(319, &qword_1EDF3C730);
    if (v1 <= 0x3F)
    {
      sub_1D5BAAD68();
      if (v2 <= 0x3F)
      {
        type metadata accessor for InternalErrorViewModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for GroupLayoutKey()
{
  result = qword_1EDF414B8;
  if (!qword_1EDF414B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BAABFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BAAC50()
{
  sub_1D5BAABFC(319, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
  if (v0 <= 0x3F)
  {
    sub_1D5BAABFC(319, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D5BAAD68()
{
  if (!qword_1EDF3C728)
  {
    sub_1D5BAA1F0();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C728);
    }
  }
}

void sub_1D5BAADC0()
{
  if (!qword_1EDF3C5C8)
  {
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    type metadata accessor for GroupLayoutKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3C5C8);
    }
  }
}

void sub_1D5BAAE44(uint64_t a1, uint64_t a2)
{
  if (!qword_1EDF3FA18)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D5BAAF94(255, &qword_1EDF3C8A0, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType, MEMORY[0x1E69E62F8]);
    type metadata accessor for GroupLayoutBindingContext();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDF3FA18);
    }
  }
}

void sub_1D5BAAF94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5BAAFFC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5BAB064(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5BAB0CC()
{
  result = sub_1D725EF8C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5BAB168()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5BAB240()
{
  sub_1D5B6B984(0, qword_1EDF26B28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;

  sub_1D725B96C();

  sub_1D5B6BBCC(v7, v3);

  sub_1D725B97C();

  sub_1D5B6AD60(v7);
  v8 = type metadata accessor for SportsDataConfiguration();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D5B6BBCC(v7, v3);

  sub_1D725B97C();

  return sub_1D5B6AD60(v7);
}

Swift::Void __swiftcall WebEmbedDataSourceService.sceneWillEnterForeground()()
{

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }
}

uint64_t sub_1D5BAB438()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1D5BAEB48;
  *(v1 + 24) = v0;
  swift_retain_n();
  _s8NewsFeed24LocationDetectionManagerC24fetchAuthorizationStatus10completionyySo010CLLocationE0C_So015CLAuthorizationH0Vtc_tFZ_0(sub_1D5BAEB08, v1);
}

uint64_t sub_1D5BAB4EC()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44808](ObjectType);
}

uint64_t sub_1D5BAB528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5BAFDD0;

  return PuzzleService.puzzleTypes(for:)(a1);
}

uint64_t sub_1D5BAB5C0()
{
  v6 = *(v0 + 24);
  v1 = [objc_opt_self() defaultCachePolicy];
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(v6, v6, 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  sub_1D5BAB70C(0, &unk_1EDF1AE60, &qword_1EDF3C700);
  *v3 = v0;
  v3[1] = sub_1D5BAF728;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001DLL, 0x80000001D73C40A0, sub_1D5BABA2C, v2, v4);
}

void sub_1D5BAB70C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B5534C(255, a3);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BAB764(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_1D5BAB70C(255, a3, a4);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v5 = sub_1D726288C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5BAB7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  v13 = *(a2 + 72);
  sub_1D5B7E810(a3);
  v14 = sub_1D726265C();

  v15 = FCCurrentQoSOrUtilityIfMain();
  FCCurrentQoSOrUtilityIfMain();
  v16 = FCDispatchQueueForQualityOfService();
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, v12, v8);
  aBlock[4] = sub_1D5BAF68C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5BAF50C;
  aBlock[3] = &block_descriptor_198;
  v19 = _Block_copy(aBlock);

  [v13 fetchPuzzleTypesForPuzzleTypeIDs:v14 cachePolicy:v21 qualityOfService:v15 callbackQueue:v16 completionHandler:v19];
  _Block_release(v19);
}

_OWORD *sub_1D5BABA3C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D5B7C390(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1D5BABAD0()
{
  if (!qword_1EDF194D8)
  {
    sub_1D5BB0D44();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF194D8);
    }
  }
}

unint64_t sub_1D5BABB28(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_1D726412C();
    v11 = a1 + 32;

    while (1)
    {
      sub_1D605F6D4(v11, &v18, a3, a4);
      v12 = v18;
      result = a5(v18);
      if (v14)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v12;
      result = sub_1D5B7C390(&v19, (v10[7] + 32 * result));
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v10[2] = v17;
      v11 += 40;
      if (!--v5)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D5BABC48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BABC90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BABCD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5BABD20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D5BABD88()
{
  result = qword_1EDF1A790;
  if (!qword_1EDF1A790)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1A790);
  }

  return result;
}

uint64_t sub_1D5BABDE8()
{
  sub_1D726207C();
  sub_1D7264A0C();
  sub_1D72621EC();
  v0 = sub_1D7264A5C();

  return v0;
}

uint64_t sub_1D5BABE5C()
{
  swift_getObjectType();
  *(v0 + 56) = FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D5BAE9EC;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

void sub_1D5BABF2C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = [a5 respondsToSelector_];

  if ((v13 & 1) != 0 && (v14 = [a5 fetchedAppConfiguration]) != 0)
  {
    v15 = v14;

    v19[0] = v15;
    a1(v19);
    swift_unknownObjectRelease();
  }

  else if (a6)
  {

    v19[0] = [a5 possiblyUnfetchedAppConfiguration];
    a1(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    FCCurrentQoS();
    v16 = FCDispatchQueueForQualityOfService();
    v17 = swift_allocObject();
    v17[2] = sub_1D5BE643C;
    v17[3] = v12;
    v17[4] = a3;
    v17[5] = a4;
    v19[4] = sub_1D5BE6348;
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1D5BE62C8;
    v19[3] = &block_descriptor_21;
    v18 = _Block_copy(v19);

    [a5 fetchAppConfigurationIfNeededWithCompletionQueue:v16 completion:v18];
    _Block_release(v18);
  }
}

uint64_t sub_1D5BAC138()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_50Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroy_13Tm()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[9], v4);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_1D726062C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_18Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for FeedItemFilter() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  v1 = *(v0 + 208);
  if (v1 <= 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  }

  else
  {
    if (*(v0 + 208) <= 4u)
    {
      if (v1 == 3)
      {
        __swift_destroy_boxed_opaque_existential_1(v0 + 144);
      }

      else if (v1 != 4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (v1 == 5 || v1 == 6)
    {
LABEL_13:
    }
  }

LABEL_14:
  if (*(v0 + 216))
  {

    if (*(v0 + 224) >= 2uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}