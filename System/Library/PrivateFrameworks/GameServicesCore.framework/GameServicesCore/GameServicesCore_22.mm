uint64_t sub_227D10194()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_227D10220()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_227D102AC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_164();

  return GameKitService.listChallengeDefinitions(game:filters:after:)();
}

uint64_t sub_227D1033C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_227D103C0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.refreshChallenges(player:filters:)();
}

uint64_t sub_227D1044C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_164();

  return GameKitService.listChallenges(player:filters:after:)();
}

uint64_t sub_227D104DC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeChallenges(challenges:)();
}

uint64_t sub_227D10560()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227D105EC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.refreshGameActivity(game:)();
}

uint64_t sub_227D10670()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_164();

  return GameKitService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227D10700()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227D10784()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeGameActivities(activities:)();
}

uint64_t sub_227D10808()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_227D10894()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_227D10920(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for GameKitService();
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v4, v5);
  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v6);
}

uint64_t sub_227D10998()
{
  v1 = *v0;
  type metadata accessor for GameKitService();
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v2, v3);
  OUTLINED_FUNCTION_61_11();
  sub_227B0F8D0(v4, v5);
  return sub_227D49428();
}

uint64_t sub_227D10A40@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GameKitService();
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v3, v4);
  OUTLINED_FUNCTION_61_11();
  sub_227B0F8D0(v5, v6);
  OUTLINED_FUNCTION_9_0();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of GameKitService.describeAchievements(achievements:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 120);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameKitService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 128);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameKitService.getAchievementsProgresses(achievements:player:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameKitService.resetAchievementsProgress(achievements:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameKitService.revealAchievements(achievements:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 152);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameKitService.submitAchievementsProgress(progress:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 160);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameKitService.describeLeaderboards(leaderboards:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 168);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameKitService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 176);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);
  OUTLINED_FUNCTION_208_1();

  return v7();
}

uint64_t dispatch thunk of GameKitService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 184);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);
  v6 = OUTLINED_FUNCTION_95_2();

  return v8(v6);
}

uint64_t dispatch thunk of GameKitService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 192);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameKitService.submitLeaderboardEntries(entries:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 200);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameKitService.describeLeaderboardSets(leaderboardSets:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 208);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameKitService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 216);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameKitService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 224);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GameKitService.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_45();
  v7 = *(v6 + 232);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_50(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_35(v10);

  return v13(v5, v3, v1);
}

uint64_t dispatch thunk of GameKitService.refreshChallengeDefinitions(game:filters:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 240);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameKitService.refreshChallengeDefinitions(challengeDefinitions:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 248);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_1(v4);

  return v8(v6);
}

uint64_t dispatch thunk of GameKitService.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v7 = (*(v0 + 256) + **(v0 + 256));
  v1 = *(*(v0 + 256) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_76(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameKitService.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 264) + **(v0 + 264);
  v1 = *(*(v0 + 264) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameKitService.refreshChallenges(player:filters:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v7 = (*(v0 + 272) + **(v0 + 272));
  v1 = *(*(v0 + 272) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameKitService.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v7 = (*(v0 + 280) + **(v0 + 280));
  v1 = *(*(v0 + 280) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_76(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameKitService.describeChallenges(challenges:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 288) + **(v0 + 288);
  v1 = *(*(v0 + 288) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameKitService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v7 = (*(v0 + 296) + **(v0 + 296));
  v1 = *(*(v0 + 296) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameKitService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 304) + **(v0 + 304);
  v1 = *(*(v0 + 304) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameKitService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v7 = (*(v0 + 312) + **(v0 + 312));
  v1 = *(*(v0 + 312) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_76(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameKitService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 320) + **(v0 + 320);
  v1 = *(*(v0 + 320) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameKitService.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 328) + **(v0 + 328));
  v1 = *(*(v0 + 328) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_208_1();

  return v6();
}

uint64_t dispatch thunk of GameKitService.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v8 = *(v0 + 336) + **(v0 + 336);
  v1 = *(*(v0 + 336) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_0(v3);

  return v6(v5);
}

uint64_t dispatch thunk of GameKitService.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v7 = (*(v0 + 344) + **(v0 + 344));
  v1 = *(*(v0 + 344) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of GameKitService.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v7 = (*(v0 + 352) + **(v0 + 352));
  v1 = *(*(v0 + 352) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_1(v3);

  return v7(v5);
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t a1)
{
  *(v1 + 96) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_48_10()
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_108_6()
{
  result = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_121_6(uint64_t a1)
{
  *(v1 + 120) = a1;

  return type metadata accessor for GameKitService();
}

uint64_t OUTLINED_FUNCTION_137_6(unint64_t *a1)
{

  return sub_227B0F8D0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_150_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_164_4(unint64_t *a1)
{

  return sub_227B15A74(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_183_7(uint64_t a1)
{
  *(v1 + 224) = a1;

  return type metadata accessor for GameKitService();
}

uint64_t OUTLINED_FUNCTION_206_0()
{
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
}

Swift::String_optional __swiftcall Locale.getClosestLocale(from:)(Swift::OpaquePointer from)
{
  v2 = sub_227D492D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = MEMORY[0x28223BE20](v2);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(from._rawValue + 2);
  v11 = from._rawValue + 40;
  v12 = MEMORY[0x277D84F90];
  v37 = from._rawValue + 40;
LABEL_2:
  v13 = &v11[16 * v9];
  while (v10 != v9)
  {
    if (v9 >= v10)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_24;
    }

    v15 = *(v13 - 1);
    v14 = *v13;
    sub_227D4CE58();
    v16 = sub_227CB7D30();
    v17 = v15 == *v16 && v14 == *(v16 + 1);
    if (!v17 && (sub_227D4DA78() & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v12;
      v36 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_227B3CA88(0, *(v12 + 16) + 1, 1);
        v12 = v38;
      }

      v11 = v37;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_227B3CA88((v18 > 1), v19 + 1, 1);
        v11 = v37;
        v12 = v38;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v14;
      ++v9;
      v2 = v36;
      goto LABEL_2;
    }

    ++v9;
    v13 += 16;
  }

  if (*(v12 + 16))
  {
    (*(v3 + 104))(v8, *MEMORY[0x277CC9670], v2);
    v21 = sub_227D492C8();
    v22 = v2;
    v23 = v21;
    v25 = v24;
    (*(v3 + 8))(v8, v22);
    v26 = objc_opt_self();
    v27 = sub_227D4D1B8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_227D4E520;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    v29 = sub_227D4D1B8();

    v30 = [v26 preferredLocalizationsFromArray:v27 forPreferences:v29];

    v31 = sub_227D4D1C8();
    if (v31[2])
    {
      v32 = v31[4];
      v33 = v31[5];
      sub_227D4CE58();
    }

    else
    {

      v32 = 0;
      v33 = 0;
    }
  }

  else
  {

    v34 = sub_227CB7D30();
    v32 = *v34;
    v33 = *(v34 + 1);
    sub_227D4CE58();
  }

  isUniquelyReferenced_nonNull_native = v32;
  v6 = v33;
LABEL_25:
  result.value._object = v6;
  result.value._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t GameLibraryService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227D130B4()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BDC8);
  v1 = OUTLINED_FUNCTION_58();
  __swift_project_value_buffer(v1, v2);
  return sub_227D49EA8();
}

uint64_t sub_227D130FC()
{
  if (_MergedGlobals_17 != -1)
  {
    OUTLINED_FUNCTION_69_9();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BDC8);
}

uint64_t static GameLibraryService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_17 != -1)
  {
    OUTLINED_FUNCTION_69_9();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BDC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227D131E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_227D13238(a1, a2);
  return v7;
}

uint64_t *sub_227D13238(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v4 = *v2;
  v14 = sub_227D49EF8();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_actorSystem) = a1;
  v16 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_3_27();
  sub_227B0F918(v10);
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v11);

  sub_227D493B8();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id, v8, v14);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_dataProvider) = v15;
  v16 = *(v2 + v9);

  OUTLINED_FUNCTION_132_0();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for GameLibraryService()
{
  result = qword_27D8029A0;
  if (!qword_27D8029A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameLibraryService.describe(games:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v0;
  v3 = sub_227D49458();
  v1[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[14] = v12;
  v14 = *(v13 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D135FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[5];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[15];
    v20 = v17[12];
    v21 = v17[4];
    OUTLINED_FUNCTION_36(v17[5]);
    v17[2] = v21;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_6_16();
    sub_227D141F0(v22);
    OUTLINED_FUNCTION_5_20();
    sub_227D141F0(v23);
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v24 = v17[15];
    if (v19)
    {
      v29 = OUTLINED_FUNCTION_104_7();
      v30(v29);
      v31 = *(v20 + 8);
      v32 = OUTLINED_FUNCTION_57_0();
      v33(v32);
      v34 = v17[15];
      v35 = v17[12];
      v36 = v17[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v25 = v17[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA390, &qword_227D65FB8);
      OUTLINED_FUNCTION_10_19();
      sub_227D14284(v26);
      OUTLINED_FUNCTION_9_13();
      sub_227D14284(v27);
      OUTLINED_FUNCTION_17();
      v28 = v17[15];
      sub_227D49D08();
      v50 = v17[9];
      v51 = v17[6];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v52 = *(MEMORY[0x277D0CE28] + 4);
      v53 = swift_task_alloc();
      v17[16] = v53;
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v54);
      OUTLINED_FUNCTION_47();
      *v53 = v55;
      v53[1] = sub_227D13944;
      v56 = v17[15];
      v57 = v17[9];
      v58 = v17[5];
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v46 = swift_task_alloc();
    v17[18] = v46;
    *v46 = v17;
    v46[1] = sub_227D13AEC;
    v47 = v17[5];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_46();

    return GameLibraryService.describe(games:)(v48);
  }
}

uint64_t sub_227D13944()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D13A3C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = OUTLINED_FUNCTION_86_8();
  v3(v2);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  v9 = v0[3];
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[9];

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_227D13AEC()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  v8 = v4[15];
  v9 = v4[12];
  v10 = v4[9];

  v12 = *(v6 + 8);
  if (!v0)
  {
    v11 = v3;
  }

  return v12(v11);
}

uint64_t sub_227D13C4C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = OUTLINED_FUNCTION_86_8();
  v3(v2);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  v9 = v0[17];
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[9];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_227D13CFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227D13E9C;

  return GameLibraryService.describe(games:)();
}

uint64_t sub_227D13E9C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_89_6();
  *v6 = v7;
  *v9 = v8;

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_9_2();
  v12(v11);

  OUTLINED_FUNCTION_18();

  return v13();
}

uint64_t GameLibraryService.describe(games:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D14030, v1);
}

uint64_t sub_227D14030()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_17(v2);

  return GameLibraryAggregateService.describe(games:)();
}

uint64_t sub_227D140C4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_112_6();
    v9 = OUTLINED_FUNCTION_29_12();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_227D14460(v3 + 16);
    v12 = OUTLINED_FUNCTION_28_13();

    return v13(v12);
  }
}

unint64_t sub_227D141F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6DD0, &unk_227D58AB0);
    sub_227B15ABC(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227D14284(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA390, &qword_227D65FB8);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227D142F8()
{
  result = qword_27D7EA3A0;
  if (!qword_27D7EA3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9940, &unk_227D5EDF0);
    sub_227B0F918(&unk_27D7EA3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA3A0);
  }

  return result;
}

unint64_t sub_227D143AC()
{
  result = qword_27D7EA3B8;
  if (!qword_27D7EA3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9940, &unk_227D5EDF0);
    sub_227B0F918(&unk_27D7EA3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA3B8);
  }

  return result;
}

uint64_t GameLibraryService.describe(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_111_5(v7);
  v8 = sub_227D4A458();
  v1[9] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA3C8, &qword_227D66040);
  v1[12] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_113_7(v16);
  v1[15] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[16] = v18;
  v20 = *(v19 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v21 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227D14664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_36(v20);
    v21 = OUTLINED_FUNCTION_9_1();
    v22(v21);
    OUTLINED_FUNCTION_8_17();
    sub_227B0F918(&unk_27D7EA3D0);
    sub_227B0F918(&unk_27D7EA3D8);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v23 = v18[17];
    if (v17)
    {
      v28 = v18[15];
      v29 = v18[16];
      v30 = OUTLINED_FUNCTION_110_0();
      v31(v30);
      v32 = *(v29 + 8);
      v33 = OUTLINED_FUNCTION_57_0();
      v34(v33);
      OUTLINED_FUNCTION_38_13();
      v35 = v18[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v24 = v18[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA390, &qword_227D65FB8);
      OUTLINED_FUNCTION_10_19();
      sub_227D14284(v25);
      OUTLINED_FUNCTION_9_13();
      sub_227D14284(v26);
      OUTLINED_FUNCTION_17();
      v27 = v18[17];
      sub_227D49D08();
      OUTLINED_FUNCTION_107_5();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v49 = *(MEMORY[0x277D0CE28] + 4);
      v50 = swift_task_alloc();
      OUTLINED_FUNCTION_105_8(v50);
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v51);
      OUTLINED_FUNCTION_47();
      MEMORY[0] = v52;
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v45 = swift_task_alloc();
    v18[20] = v45;
    *v45 = v18;
    v45[1] = sub_227D1C27C;
    v46 = v18[4];
    OUTLINED_FUNCTION_53(v18[3]);
    OUTLINED_FUNCTION_46();

    return GameLibraryService.describe(with:)(v47);
  }
}

uint64_t sub_227D14980()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D14A78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_227D1C2BC;

  return GameLibraryService.describe(with:)();
}

uint64_t GameLibraryService.describe(with:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D14C30, v1);
}

uint64_t sub_227D14C30()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_17(v2);

  return GameLibraryAggregateService.describe(with:)();
}

uint64_t GameLibraryService.describe2(games:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v0;
  v3 = sub_227D49458();
  v1[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[14] = v12;
  v14 = *(v13 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D14E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[5];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[15];
    v20 = v17[12];
    v21 = v17[4];
    OUTLINED_FUNCTION_36(v17[5]);
    v17[2] = v21;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_6_16();
    sub_227D141F0(v22);
    OUTLINED_FUNCTION_5_20();
    sub_227D141F0(v23);
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v24 = v17[15];
    if (v19)
    {
      v29 = OUTLINED_FUNCTION_104_7();
      v30(v29);
      v31 = *(v20 + 8);
      v32 = OUTLINED_FUNCTION_57_0();
      v33(v32);
      v34 = v17[15];
      v35 = v17[12];
      v36 = v17[9];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v25 = v17[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA390, &qword_227D65FB8);
      OUTLINED_FUNCTION_10_19();
      sub_227D14284(v26);
      OUTLINED_FUNCTION_9_13();
      sub_227D14284(v27);
      OUTLINED_FUNCTION_17();
      v28 = v17[15];
      sub_227D49D08();
      v50 = v17[9];
      v51 = v17[6];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v52 = *(MEMORY[0x277D0CE28] + 4);
      v53 = swift_task_alloc();
      v17[16] = v53;
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v54);
      OUTLINED_FUNCTION_47();
      *v53 = v55;
      v53[1] = sub_227D1517C;
      v56 = v17[15];
      v57 = v17[9];
      v58 = v17[5];
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v46 = swift_task_alloc();
    v17[18] = v46;
    *v46 = v17;
    v46[1] = sub_227D1C294;
    v47 = v17[5];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_46();

    return GameLibraryService.describe2(games:)(v48);
  }
}

uint64_t sub_227D1517C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D15274(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227D1C2BC;

  return GameLibraryService.describe2(games:)();
}

uint64_t GameLibraryService.describe2(games:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D15430, v1);
}

uint64_t sub_227D15430()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_17(v2);

  return GameLibraryAggregateService.describe2(games:)();
}

uint64_t GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 25) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 32) = v8;
  *(v1 + 88) = *v0;
  v9 = sub_227D49458();
  *(v1 + 96) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 104) = v10;
  v12 = *(v11 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  *(v1 + 120) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v1 + 128) = v14;
  v16 = *(v15 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  *(v1 + 144) = v17;
  OUTLINED_FUNCTION_10_0(v17);
  *(v1 + 152) = v18;
  v20 = *(v19 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  *(v1 + 168) = v21;
  OUTLINED_FUNCTION_5(v21);
  v23 = *(v22 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  *(v1 + 184) = v24;
  OUTLINED_FUNCTION_10_0(v24);
  *(v1 + 192) = v25;
  v27 = *(v26 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_30();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE0, &unk_227D62190);
  *(v1 + 208) = v28;
  OUTLINED_FUNCTION_10_0(v28);
  *(v1 + 216) = v29;
  v31 = *(v30 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_30();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  *(v1 + 232) = v32;
  OUTLINED_FUNCTION_5(v32);
  v34 = *(v33 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_30();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE8, &unk_227D621A0);
  *(v1 + 248) = v35;
  OUTLINED_FUNCTION_10_0(v35);
  *(v1 + 256) = v36;
  v38 = *(v37 + 64);
  *(v1 + 264) = OUTLINED_FUNCTION_30();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  *(v1 + 272) = v39;
  OUTLINED_FUNCTION_5(v39);
  v41 = *(v40 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_30();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DF0, &qword_227D621B0);
  *(v1 + 288) = v42;
  OUTLINED_FUNCTION_10_0(v42);
  *(v1 + 296) = v43;
  v45 = *(v44 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_30();
  v46 = sub_227D49D58();
  *(v1 + 312) = v46;
  OUTLINED_FUNCTION_10_0(v46);
  *(v1 + 320) = v47;
  v49 = *(v48 + 64);
  *(v1 + 328) = OUTLINED_FUNCTION_30();
  v50 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

uint64_t sub_227D1588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *(v18 + 80);
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_96_8();
    OUTLINED_FUNCTION_36(v22);
    sub_227CA5D74(v20, v19, &qword_27D7E9848, &unk_227D5EB68);
    sub_227D49478();
    sub_227CA0BB4();
    sub_227CA0C68();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v23 = *(v18 + 328);
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_94_7();
      v25(v24);
      v42 = *(v17 + 8);
      v43 = OUTLINED_FUNCTION_57_0();
      v44(v43);
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_26_13();
      v45 = *(v18 + 136);
      v76 = *(v18 + 112);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_93_7();

      __asm { BRAA            X1, X16 }
    }

    v38 = *(v18 + 264);
    v39 = *(v18 + 232);
    sub_227CA5D74(*(v18 + 48), *(v18 + 240), &qword_27D7E9840, &qword_227D5EB60);
    OUTLINED_FUNCTION_46_9();
    sub_227CA0D1C();
    sub_227CA0DD0();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v40 = *(v18 + 328);
    OUTLINED_FUNCTION_85_9();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E38, &unk_227D621C0);
    OUTLINED_FUNCTION_65_8();
    OUTLINED_FUNCTION_67_3(&unk_27D7E9E40);
    OUTLINED_FUNCTION_66_9(&unk_27D7E9E48);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v41 = *(v18 + 328);
    v48 = *(v18 + 200);
    v49 = *(v18 + 168);
    sub_227CA5D74(*(v18 + 64), *(v18 + 176), &qword_27D7E6908, &unk_227D4E690);
    OUTLINED_FUNCTION_61_0();
    sub_227B15FB0();
    sub_227B16064();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v50 = *(v18 + 328);
    v51 = OUTLINED_FUNCTION_80_7();
    v52(v51);
    OUTLINED_FUNCTION_47_12();
    OUTLINED_FUNCTION_53_6(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_52_10(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v53 = *(v18 + 328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    sub_227D49D28();
    v54 = *(v18 + 328);
    v55 = OUTLINED_FUNCTION_113();
    __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
    OUTLINED_FUNCTION_53_1(&unk_27D7EA3E8);
    OUTLINED_FUNCTION_52_0(&unk_27D7EA3F0);
    OUTLINED_FUNCTION_17();
    v57 = *(v18 + 328);
    sub_227D49D08();
    v58 = *(v18 + 112);
    v59 = *(v18 + 88);
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v60 = *(MEMORY[0x277D0CE28] + 4);
    v61 = swift_task_alloc();
    *(v18 + 336) = v61;
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v62);
    OUTLINED_FUNCTION_61_12();
    *v61 = v63;
    v61[1] = sub_227D1600C;
    v64 = *(v18 + 328);
    v65 = *(v18 + 112);
    v66 = *(v18 + 80);
    v67 = *(v18 + 32);
    OUTLINED_FUNCTION_1_35();

    return MEMORY[0x282164B00](v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v26 = *(v18 + 25);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v18 + 352) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_77_8(v27);
    OUTLINED_FUNCTION_93_7();

    return GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)(v29, v30, v31, v32, v33, v34, v35);
  }
}

uint64_t sub_227D1600C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D16104()
{
  v1 = v0[40];
  v31 = v0[39];
  v32 = v0[41];
  v2 = v0[37];
  v29 = v0[36];
  v30 = v0[38];
  v3 = v0[32];
  v27 = v0[31];
  v28 = v0[33];
  v4 = v0[27];
  v25 = v0[26];
  v26 = v0[28];
  v24 = v0[25];
  v5 = v0[23];
  v6 = v0[24];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = OUTLINED_FUNCTION_110_0();
  v11(v10);
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_9_2();
  v14(v13);
  (*(v6 + 8))(v24, v5);
  (*(v4 + 8))(v26, v25);
  (*(v3 + 8))(v28, v27);
  (*(v2 + 8))(v30, v29);
  (*(v1 + 8))(v32, v31);
  OUTLINED_FUNCTION_88_6();
  v15 = v0[33];
  v16 = v0[30];
  v17 = v0[28];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[20];
  v21 = v0[17];
  v33 = v0[14];

  OUTLINED_FUNCTION_18();

  return v22();
}

uint64_t sub_227D162C0()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 328);
  v7 = v1[38];
  v8 = v1[35];
  v9 = v1[33];
  v10 = v1[30];
  v11 = v1[28];
  v12 = v1[25];
  v13 = v1[22];
  v19 = v1[20];
  OUTLINED_FUNCTION_81_1();
  v20 = *(v14 + 136);
  OUTLINED_FUNCTION_81_1();
  v16 = *(v15 + 112);

  OUTLINED_FUNCTION_27();

  return v17();
}

uint64_t sub_227D164FC()
{
  v1 = v0[40];
  v29 = v0[39];
  v31 = v0[41];
  v2 = v0[37];
  v27 = v0[36];
  v28 = v0[38];
  v3 = v0[32];
  v25 = v0[31];
  v26 = v0[33];
  v4 = v0[27];
  v23 = v0[26];
  v24 = v0[28];
  v22 = v0[25];
  v5 = v0[23];
  v6 = v0[24];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = OUTLINED_FUNCTION_110_0();
  v11(v10);
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_9_2();
  v14(v13);
  (*(v6 + 8))(v22, v5);
  (*(v4 + 8))(v24, v23);
  (*(v3 + 8))(v26, v25);
  (*(v2 + 8))(v28, v27);
  (*(v1 + 8))(v31, v29);
  v15 = v0[43];
  v16 = v0[41];
  v17 = v0[38];
  v18 = v0[35];
  OUTLINED_FUNCTION_26_13();
  v19 = v0[17];
  v30 = v0[14];

  OUTLINED_FUNCTION_18();

  return v20();
}

uint64_t sub_227D166B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v11 = a2[2];
  v2[8] = v11;
  v12 = *(v11 - 8);
  v2[9] = v12;
  v13 = *(v12 + 64) + 15;
  v23 = swift_task_alloc();
  v2[10] = v23;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_227D49CF8();
  v14 = *v23;
  v22 = *(v23 + 8);
  v15 = a2[3];
  v2[11] = v15;
  v16 = *(v15 - 8);
  v2[12] = v16;
  v17 = *(v16 + 64) + 15;
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_227D49CF8();
  v18 = a2[4];
  v2[14] = v18;
  v19 = *(v18 - 8);
  v2[15] = v19;
  v20 = *(v19 + 64) + 15;
  v2[16] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v21 = swift_task_alloc();
  v2[17] = v21;
  *v21 = v2;
  v21[1] = sub_227D16D24;

  return GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D16D24()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 136);
  v33 = *(v1 + 128);
  OUTLINED_FUNCTION_69();
  v32 = *(v3 + 120);
  OUTLINED_FUNCTION_69();
  v29 = *(v4 + 112);
  OUTLINED_FUNCTION_69();
  v31 = *(v5 + 104);
  OUTLINED_FUNCTION_69();
  v30 = *(v6 + 96);
  OUTLINED_FUNCTION_69();
  v26 = *(v7 + 88);
  OUTLINED_FUNCTION_69();
  v28 = *(v8 + 80);
  OUTLINED_FUNCTION_69();
  v27 = *(v9 + 72);
  OUTLINED_FUNCTION_69();
  v11 = *(v10 + 64);
  v25 = *(v12 + 56);
  OUTLINED_FUNCTION_69();
  v24 = *(v13 + 48);
  OUTLINED_FUNCTION_69();
  v15 = *(v14 + 40);
  v17 = v16[4];
  v18 = v16[3];
  v19 = v16[2];
  v20 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v21 = v20;

  (*(v18 + 8))(v17, v19);
  (*(v24 + 8))(v25, v15);
  (*(v27 + 8))(v28, v11);
  (*(v30 + 8))(v31, v26);
  (*(v32 + 8))(v33, v29);

  v22 = *(v20 + 8);

  return v22();
}

uint64_t GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 216) = a7;
  *(v8 + 224) = v7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a6;
  *(v8 + 248) = a5;
  *(v8 + 184) = a2;
  *(v8 + 192) = a3;
  *(v8 + 176) = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D170B8, v7);
}

uint64_t sub_227D170B8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 248);
  OUTLINED_FUNCTION_40_10(*(v0 + 224));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 232) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_78_11(v2);

  return GameLibraryAggregateService.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D17154()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 240) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v9 = *(v3 + 224);

    return MEMORY[0x2822009F8](sub_227D17274, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227D17274()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 240);
  return v2();
}

unint64_t sub_227D17298(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9E38, &unk_227D621C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t GameLibraryService.listGameHistories(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_227D49458();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_111_5(v8);
  v9 = sub_227D4A1F8();
  v1[9] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA3F8, &qword_227D66258);
  v1[12] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v17 = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_113_7(v17);
  v1[15] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v22 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227D174B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v19 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_36(v20);
    v21 = OUTLINED_FUNCTION_9_1();
    v22(v21);
    OUTLINED_FUNCTION_8_17();
    OUTLINED_FUNCTION_48_11();
    sub_227B0F918(v23);
    OUTLINED_FUNCTION_55_11(&unk_27D7EA408);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v17)
    {
      v29 = v18[16];
      v30 = OUTLINED_FUNCTION_110_0();
      v31(v30);
      (*(v29 + 8))(v18[17], v18[15]);
      OUTLINED_FUNCTION_38_13();
      v32 = v18[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      __asm { BRAA            X1, X16 }
    }

    v24 = v18[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    sub_227D49D28();
    v25 = v18[17];
    v26 = OUTLINED_FUNCTION_113();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_53_1(&unk_27D7EA3E8);
    OUTLINED_FUNCTION_52_0(&unk_27D7EA3F0);
    OUTLINED_FUNCTION_17();
    v28 = v18[17];
    sub_227D49D08();
    OUTLINED_FUNCTION_107_5();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v41 = *(MEMORY[0x277D0CE28] + 4);
    v42 = swift_task_alloc();
    OUTLINED_FUNCTION_105_8(v42);
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v43);
    OUTLINED_FUNCTION_61_12();
    MEMORY[0] = v44;
    OUTLINED_FUNCTION_31_8();
    v45 = v18[2];
    OUTLINED_FUNCTION_1_35();

    return MEMORY[0x282164B00](v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v18[20] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_50_4(v35);
    OUTLINED_FUNCTION_112_1();

    return GameLibraryService.listGameHistories(with:)(v37, v38);
  }
}

uint64_t sub_227D17790()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D17888()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = OUTLINED_FUNCTION_23_11();
  v3(v2);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  OUTLINED_FUNCTION_38_13();
  v9 = *(v0 + 64);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227D1793C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 136);
  v7 = v1[14];
  v8 = v1[11];
  v9 = v1[8];

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_227D17A98()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  v7 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);
  OUTLINED_FUNCTION_82_8();

  OUTLINED_FUNCTION_18();

  return v8();
}

uint64_t sub_227D17B5C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227D17D0C;

  return GameLibraryService.listGameHistories(with:)();
}

uint64_t sub_227D17D0C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = v0[2];
  OUTLINED_FUNCTION_89_6();
  v6 = v5;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_9_2();
  v10(v9);

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t GameLibraryService.listGameHistories(with:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D17E84, v2);
}

uint64_t sub_227D17E84()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 192));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 200) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_101_8(v1);

  return GameLibraryAggregateService.listGameHistories(with:)();
}

uint64_t sub_227D17F1C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 208) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v9 = *(v3 + 192);

    return MEMORY[0x2822009F8](sub_227D1803C, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227D1803C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 208);
  return v2();
}

uint64_t GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 25) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 32) = v8;
  *(v1 + 88) = *v0;
  v9 = sub_227D49458();
  *(v1 + 96) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 104) = v10;
  v12 = *(v11 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  *(v1 + 120) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v1 + 128) = v14;
  v16 = *(v15 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  *(v1 + 144) = v17;
  OUTLINED_FUNCTION_10_0(v17);
  *(v1 + 152) = v18;
  v20 = *(v19 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  *(v1 + 168) = v21;
  OUTLINED_FUNCTION_5(v21);
  v23 = *(v22 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  *(v1 + 184) = v24;
  OUTLINED_FUNCTION_10_0(v24);
  *(v1 + 192) = v25;
  v27 = *(v26 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_30();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE0, &unk_227D62190);
  *(v1 + 208) = v28;
  OUTLINED_FUNCTION_10_0(v28);
  *(v1 + 216) = v29;
  v31 = *(v30 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_30();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  *(v1 + 232) = v32;
  OUTLINED_FUNCTION_5(v32);
  v34 = *(v33 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_30();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE8, &unk_227D621A0);
  *(v1 + 248) = v35;
  OUTLINED_FUNCTION_10_0(v35);
  *(v1 + 256) = v36;
  v38 = *(v37 + 64);
  *(v1 + 264) = OUTLINED_FUNCTION_30();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  *(v1 + 272) = v39;
  OUTLINED_FUNCTION_5(v39);
  v41 = *(v40 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_30();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DF0, &qword_227D621B0);
  *(v1 + 288) = v42;
  OUTLINED_FUNCTION_10_0(v42);
  *(v1 + 296) = v43;
  v45 = *(v44 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_30();
  v46 = sub_227D49D58();
  *(v1 + 312) = v46;
  OUTLINED_FUNCTION_10_0(v46);
  *(v1 + 320) = v47;
  v49 = *(v48 + 64);
  *(v1 + 328) = OUTLINED_FUNCTION_30();
  v50 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

uint64_t sub_227D18428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *(v18 + 80);
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_96_8();
    OUTLINED_FUNCTION_36(v22);
    sub_227CA5D74(v20, v19, &qword_27D7E9848, &unk_227D5EB68);
    sub_227D49478();
    sub_227CA0BB4();
    sub_227CA0C68();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v23 = *(v18 + 328);
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_94_7();
      v25(v24);
      v42 = *(v17 + 8);
      v43 = OUTLINED_FUNCTION_57_0();
      v44(v43);
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_26_13();
      v45 = *(v18 + 136);
      v76 = *(v18 + 112);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_93_7();

      __asm { BRAA            X1, X16 }
    }

    v38 = *(v18 + 264);
    v39 = *(v18 + 232);
    sub_227CA5D74(*(v18 + 48), *(v18 + 240), &qword_27D7E9840, &qword_227D5EB60);
    OUTLINED_FUNCTION_46_9();
    sub_227CA0D1C();
    sub_227CA0DD0();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v40 = *(v18 + 328);
    OUTLINED_FUNCTION_85_9();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E38, &unk_227D621C0);
    OUTLINED_FUNCTION_65_8();
    OUTLINED_FUNCTION_67_3(&unk_27D7E9E40);
    OUTLINED_FUNCTION_66_9(&unk_27D7E9E48);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v41 = *(v18 + 328);
    v48 = *(v18 + 200);
    v49 = *(v18 + 168);
    sub_227CA5D74(*(v18 + 64), *(v18 + 176), &qword_27D7E6908, &unk_227D4E690);
    OUTLINED_FUNCTION_61_0();
    sub_227B15FB0();
    sub_227B16064();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v50 = *(v18 + 328);
    v51 = OUTLINED_FUNCTION_80_7();
    v52(v51);
    OUTLINED_FUNCTION_47_12();
    OUTLINED_FUNCTION_53_6(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_52_10(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v53 = *(v18 + 328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    sub_227D49D28();
    v54 = *(v18 + 328);
    v55 = OUTLINED_FUNCTION_113();
    __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
    OUTLINED_FUNCTION_53_1(&unk_27D7E9E58);
    OUTLINED_FUNCTION_52_0(&unk_27D7E9E60);
    OUTLINED_FUNCTION_17();
    v57 = *(v18 + 328);
    sub_227D49D08();
    v58 = *(v18 + 112);
    v59 = *(v18 + 88);
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v60 = *(MEMORY[0x277D0CE28] + 4);
    v61 = swift_task_alloc();
    *(v18 + 336) = v61;
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v62);
    OUTLINED_FUNCTION_61_12();
    *v61 = v63;
    v61[1] = sub_227D18BA4;
    v64 = *(v18 + 328);
    v65 = *(v18 + 112);
    v66 = *(v18 + 80);
    v67 = *(v18 + 32);
    OUTLINED_FUNCTION_1_35();

    return MEMORY[0x282164B00](v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v26 = *(v18 + 25);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v18 + 352) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_77_8(v27);
    OUTLINED_FUNCTION_93_7();

    return GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)(v29, v30, v31, v32, v33, v34, v35);
  }
}

uint64_t sub_227D18BA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D18C9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v11 = a2[2];
  v2[8] = v11;
  v12 = *(v11 - 8);
  v2[9] = v12;
  v13 = *(v12 + 64) + 15;
  v23 = swift_task_alloc();
  v2[10] = v23;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_227D49CF8();
  v14 = *v23;
  v22 = *(v23 + 8);
  v15 = a2[3];
  v2[11] = v15;
  v16 = *(v15 - 8);
  v2[12] = v16;
  v17 = *(v16 + 64) + 15;
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_227D49CF8();
  v18 = a2[4];
  v2[14] = v18;
  v19 = *(v18 - 8);
  v2[15] = v19;
  v20 = *(v19 + 64) + 15;
  v2[16] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v21 = swift_task_alloc();
  v2[17] = v21;
  *v21 = v2;
  v21[1] = sub_227D1C2B8;

  return GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 216) = a7;
  *(v8 + 224) = v7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a6;
  *(v8 + 248) = a5;
  *(v8 + 184) = a2;
  *(v8 + 192) = a3;
  *(v8 + 176) = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D1933C, v7);
}

uint64_t sub_227D1933C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 248);
  OUTLINED_FUNCTION_40_10(*(v0 + 224));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 232) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_78_11(v2);

  return GameLibraryAggregateService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D193D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 240) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v9 = *(v3 + 224);

    return MEMORY[0x2822009F8](sub_227D1C2A8, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t GameLibraryService.listGames(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_227D49458();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_111_5(v8);
  v9 = sub_227D4A1F8();
  v1[9] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA3F8, &qword_227D66258);
  v1[12] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v17 = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_113_7(v17);
  v1[15] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v22 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227D196AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v19 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_36(v20);
    v21 = OUTLINED_FUNCTION_9_1();
    v22(v21);
    OUTLINED_FUNCTION_8_17();
    OUTLINED_FUNCTION_48_11();
    sub_227B0F918(v23);
    OUTLINED_FUNCTION_55_11(&unk_27D7EA408);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v17)
    {
      v29 = v18[16];
      v30 = OUTLINED_FUNCTION_110_0();
      v31(v30);
      (*(v29 + 8))(v18[17], v18[15]);
      OUTLINED_FUNCTION_38_13();
      v32 = v18[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      __asm { BRAA            X1, X16 }
    }

    v24 = v18[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    sub_227D49D28();
    v25 = v18[17];
    v26 = OUTLINED_FUNCTION_113();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_53_1(&unk_27D7E9E58);
    OUTLINED_FUNCTION_52_0(&unk_27D7E9E60);
    OUTLINED_FUNCTION_17();
    v28 = v18[17];
    sub_227D49D08();
    OUTLINED_FUNCTION_107_5();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v41 = *(MEMORY[0x277D0CE28] + 4);
    v42 = swift_task_alloc();
    OUTLINED_FUNCTION_105_8(v42);
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v43);
    OUTLINED_FUNCTION_61_12();
    MEMORY[0] = v44;
    OUTLINED_FUNCTION_31_8();
    v45 = v18[2];
    OUTLINED_FUNCTION_1_35();

    return MEMORY[0x282164B00](v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v18[20] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_50_4(v35);
    OUTLINED_FUNCTION_112_1();

    return GameLibraryService.listGames(with:)(v37, v38);
  }
}

uint64_t sub_227D19988()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D19A80(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227D1C298;

  return GameLibraryService.listGames(with:)();
}

uint64_t GameLibraryService.listGames(with:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D19C50, v2);
}

uint64_t sub_227D19C50()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 192));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 200) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_101_8(v1);

  return GameLibraryAggregateService.listGames(with:)();
}

uint64_t sub_227D19CE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 208) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v9 = *(v3 + 192);

    return MEMORY[0x2822009F8](sub_227D1C2AC, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t GameLibraryService.getAvailableGameGenres(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_111_5(v7);
  v8 = sub_227D49508();
  v1[9] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA410, &qword_227D66470);
  v1[12] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_113_7(v16);
  v1[15] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[16] = v18;
  v20 = *(v19 + 64);
  v1[17] = OUTLINED_FUNCTION_30();
  v21 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227D19FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v19 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_36(v20);
    v21 = OUTLINED_FUNCTION_9_1();
    v22(v21);
    OUTLINED_FUNCTION_8_17();
    sub_227B0F918(&unk_27D7EA418);
    sub_227B0F918(&unk_27D7EA420);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    v23 = v18[17];
    if (v17)
    {
      v26 = v18[15];
      v27 = v18[16];
      v28 = OUTLINED_FUNCTION_110_0();
      v29(v28);
      v30 = *(v27 + 8);
      v31 = OUTLINED_FUNCTION_57_0();
      v32(v31);
      OUTLINED_FUNCTION_38_13();
      v33 = v18[8];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v24 = v18[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA428, &unk_227D66480);
      sub_227D1A9F4();
      sub_227D1AAA8();
      OUTLINED_FUNCTION_17();
      v25 = v18[17];
      sub_227D49D08();
      OUTLINED_FUNCTION_107_5();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v47 = *(MEMORY[0x277D0CE28] + 4);
      v48 = swift_task_alloc();
      OUTLINED_FUNCTION_105_8(v48);
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v49);
      OUTLINED_FUNCTION_47();
      MEMORY[0] = v50;
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    v43 = swift_task_alloc();
    v18[20] = v43;
    *v43 = v18;
    v43[1] = sub_227D1A438;
    v44 = v18[4];
    OUTLINED_FUNCTION_53(v18[3]);
    OUTLINED_FUNCTION_46();

    return GameLibraryService.getAvailableGameGenres(with:)(v45);
  }
}

uint64_t sub_227D1A294()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D1A38C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = OUTLINED_FUNCTION_23_11();
  v3(v2);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_82_8();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227D1A438()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[11];
  v8 = v1[8];

  v9 = *(v3 + 8);
  OUTLINED_FUNCTION_117_0();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227D1A5AC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = OUTLINED_FUNCTION_23_11();
  v3(v2);
  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);
  v9 = *(v0 + 152);
  OUTLINED_FUNCTION_82_8();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227D1A658(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_227D13E9C;

  return GameLibraryService.getAvailableGameGenres(with:)();
}

uint64_t GameLibraryService.getAvailableGameGenres(with:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D1A810, v1);
}

uint64_t sub_227D1A810()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_17(v2);

  return GameLibraryAggregateService.getAvailableGameGenres(with:)();
}

uint64_t sub_227D1A8A4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_112_6();
    v9 = OUTLINED_FUNCTION_29_12();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_227D14460(v3 + 16);
    v12 = OUTLINED_FUNCTION_28_13();

    return v13(v12);
  }
}

uint64_t sub_227D1A9D0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 200);
  return v2();
}

unint64_t sub_227D1A9F4()
{
  result = qword_27D7EA430;
  if (!qword_27D7EA430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA428, &unk_227D66480);
    sub_227B0F918(&unk_27D7EA438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA430);
  }

  return result;
}

unint64_t sub_227D1AAA8()
{
  result = qword_27D7EA440;
  if (!qword_27D7EA440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA428, &unk_227D66480);
    sub_227B0F918(&unk_27D7EA448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA440);
  }

  return result;
}

uint64_t static GameLibraryService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  sub_227D49D78();
  OUTLINED_FUNCTION_3_27();
  sub_227B0F918(v5);
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id;
    v10 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v10);
    (*(v11 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_actorSystem) = a2;
  }

  return v8;
}

uint64_t GameLibraryService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_3_27();
  sub_227B0F918(v3);
  sub_227D493C8();
  v4 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v4);
  (*(v5 + 8))(v0 + v1);
  v6 = *(v0 + v2);

  v7 = *(v0 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameLibraryService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    GameLibraryService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t GameLibraryService.hashValue.getter()
{
  v1 = *v0;
  sub_227D4DB58();
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v2);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t GameLibraryService.unownedExecutor.getter()
{
  v1 = *v0;
  if ((sub_227D49448() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v2);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227D1AF2C@<X0>(uint64_t *a1@<X8>)
{
  result = GameLibraryService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227D1AFB0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v0);
  return sub_227D49418();
}

uint64_t sub_227D1B030()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryService.describe(games:)();
}

uint64_t sub_227D1B0B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryService.describe2(games:)();
}

uint64_t sub_227D1B138()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryService.describe(with:)();
}

uint64_t sub_227D1B1BC()
{
  OUTLINED_FUNCTION_72_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D1B264()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameLibraryService.listGameHistories(with:)();
}

uint64_t sub_227D1B2F4()
{
  OUTLINED_FUNCTION_72_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameLibraryService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227D1B39C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_28_0(v1);

  return GameLibraryService.listGames(with:)();
}

uint64_t sub_227D1B42C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameLibraryService.getAvailableGameGenres(with:)();
}

uint64_t sub_227D1B4B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v4);
  v5 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v5);
}

uint64_t sub_227D1B51C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v2);
  OUTLINED_FUNCTION_11_23();
  sub_227B0F918(v3);
  OUTLINED_FUNCTION_38_1();
  return sub_227D49428();
}

uint64_t sub_227D1B5B8@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v3);
  OUTLINED_FUNCTION_11_23();
  sub_227B0F918(v4);
  OUTLINED_FUNCTION_38_1();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t GameLibraryService.purchaseHistory()()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D1B768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  v18 = v17[3];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[10];
    OUTLINED_FUNCTION_36(v17[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v19)
    {
      (*(v17[9] + 8))(v17[10], v17[8]);
      v22 = v17[10];
      v23 = v17[7];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
    }

    else
    {
      v20 = v17[10];
      sub_227D1BF80();
      sub_227D1BFD4();
      sub_227D49D38();
      v21 = v17[10];
      sub_227D49D08();
      v39 = v17[7];
      v40 = v17[4];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v41 = *(MEMORY[0x277D0CE28] + 4);
      v42 = swift_task_alloc();
      v17[11] = v42;
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v43);
      OUTLINED_FUNCTION_61_12();
      *v42 = v44;
      v42[1] = sub_227D1B9B4;
      v45 = v17[10];
      v46 = v17[7];
      v48 = v17[2];
      v47 = v17[3];
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v17[13] = v33;
    *v33 = v34;
    v33[1] = sub_227D1BB4C;
    v35 = v17[2];
    v36 = v17[3];
    OUTLINED_FUNCTION_46();

    return GameLibraryService.purchaseHistory()(v37);
  }
}

uint64_t sub_227D1B9B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D1BAAC()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  v7 = v0[10];
  v8 = v0[7];

  OUTLINED_FUNCTION_18();

  return v9();
}

uint64_t sub_227D1BB4C()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 80);
  v7 = *(v1 + 56);

  OUTLINED_FUNCTION_27();

  return v8();
}

uint64_t sub_227D1BC68()
{
  OUTLINED_FUNCTION_6();
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = v0[10];
  v3 = v0[7];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227D1BD00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B355D0;

  return GameLibraryService.purchaseHistory()();
}

uint64_t GameLibraryService.purchaseHistory()(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D1BDBC, v1);
}

uint64_t sub_227D1BDBC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(v0[23]);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[24] = v1;
  *v1 = v2;
  v1[1] = sub_227D1BE60;
  v3 = v0[22];

  return GameLibraryAggregateService.purchaseHistory()(v3);
}

uint64_t sub_227D1BE60()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 200) = v0;

  sub_227D14460(v3 + 16);
  if (v0)
  {
    v9 = *(v3 + 184);

    return MEMORY[0x2822009F8](sub_227D1A9D0, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_18();

    return v10();
  }
}

unint64_t sub_227D1BF80()
{
  result = qword_27D7EA458;
  if (!qword_27D7EA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA458);
  }

  return result;
}

unint64_t sub_227D1BFD4()
{
  result = qword_27D7EA460;
  if (!qword_27D7EA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA460);
  }

  return result;
}

uint64_t sub_227D1C1B8()
{
  result = sub_227D49EF8();
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

uint64_t OUTLINED_FUNCTION_23_11()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  result = v0[8];
  v8 = v0[6];
  v9 = *(v0[7] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_9()
{
  v1 = v0[40];
  v14 = v0[39];
  v2 = v0[37];
  v13 = v0[38];
  v3 = v0[36];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[31];
  v7 = v0[27];
  v8 = v0[28];
  result = v0[25];
  v10 = v0[26];
  v11 = v0[23];
  v12 = *(v0[24] + 8);
  return result;
}

unint64_t OUTLINED_FUNCTION_52_10(uint64_t a1)
{

  return sub_227B15ABC(a1);
}

unint64_t OUTLINED_FUNCTION_55_11(uint64_t a1)
{

  return sub_227B0F918(a1);
}

uint64_t OUTLINED_FUNCTION_60_13()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  result = v0[28];
  v10 = v0[26];
  v11 = *(v0[27] + 8);
  return result;
}

unint64_t OUTLINED_FUNCTION_67_3(uint64_t a1)
{

  return sub_227D17298(a1);
}

uint64_t OUTLINED_FUNCTION_79_9()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  result = v0[33];
  v7 = v0[31];
  v8 = *(v0[32] + 8);
  return result;
}

void OUTLINED_FUNCTION_85_9()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 25);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_86_8()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  result = v0[9];
  v8 = v0[7];
  v9 = *(v0[8] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_94_7()
{
  v1 = v0[39];
  v2 = v0[40];
  result = v0[38];
  v4 = v0[36];
  v5 = *(v0[37] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_101_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 176);
  v4 = *(v2 + 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_112_6()
{
  v2 = *(v0 + 184);

  return sub_227D14460(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_113_7(uint64_t a1)
{
  *(v1 + 112) = a1;

  return sub_227D49D58();
}

uint64_t sub_227D1C498()
{
  sub_227D4DC48();

  return sub_227D4DC38();
}

void *GameServicesDataProvider.__allocating_init(support:gameRestrictionsProvider:)(uint64_t *a1, uint64_t *a2)
{
  sub_227B11EE8(a1, v7);
  sub_227B0F2D8(v7, v10);
  v4 = *sub_227B0F3EC();
  sub_227B11EE8(a1, v9);
  sub_227B11EE8(a2, v8);
  sub_227D1C8A4(v10, v7);

  v5 = sub_227D229A0(&unk_227D66840, 0, &unk_227D66848, 0, v7, v4, v9, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_227D22BE8(v10);
  return v5;
}

uint64_t sub_227D1C6A8()
{
  OUTLINED_FUNCTION_6();
  v2 = v1[7];
  v3 = sub_227C3F64C();
  OUTLINED_FUNCTION_63_5(v3);
  v4 = (*v0 + 136) & 0xFFFFFFFFFFFFLL | 0xD8D1000000000000;
  v1[9] = *(*v0 + 136);
  v1[10] = v4;

  v5 = OUTLINED_FUNCTION_57_0();

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_227D1C748()
{
  OUTLINED_FUNCTION_6();
  v2 = v1[7];
  v3 = sub_227B17260();
  OUTLINED_FUNCTION_63_5(v3);
  v4 = (*v0 + 136) & 0xFFFFFFFFFFFFLL | 0x2389000000000000;
  v1[9] = *(*v0 + 136);
  v1[10] = v4;

  v5 = OUTLINED_FUNCTION_57_0();

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_227D1C7D4()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = (*(v0 + 72))(v0 + 16);
  v5 = v4;

  sub_227B1DE58(v0 + 16, &qword_27D7E92C0, &qword_227D5CC28);
  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_227D1C934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a5[3];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a5, v13);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16);
  v20 = a6[3];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a6, v20);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  (*(v26 + 16))(v24 - v23);
  v27 = a9(a1, a2, a3, a4, v18, v25, a7, a8);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v27;
}

uint64_t sub_227D1CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1CB28()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(OUTLINED_FUNCTION_280() + 40);
  OUTLINED_FUNCTION_32();
  v14 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[6] = v8;
  *v8 = v9;
  v8[1] = sub_227B7F4E4;
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return v14(v12, v10, v11, v2, v3);
}

uint64_t sub_227D1CC44()
{
  v1 = type metadata accessor for GameServicesEnvironment(0);
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = v0[80];
  __swift_project_boxed_opaque_existential_1(v0 + 76, v0[79]);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_280();
  v11(v10, v8);
  v12 = *(v7 + 24);
  OUTLINED_FUNCTION_13_19();
  sub_227B17AA8(v7, v13);
  return v12;
}

uint64_t GameServicesDataProvider.clearStores(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1CD04()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 32);
  v2 = v1[22];
  __swift_project_boxed_opaque_existential_1(v1 + 18, v1[21]);
  v3 = *(OUTLINED_FUNCTION_280() + 24);
  OUTLINED_FUNCTION_32();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_164_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_42_9(v8);

  return v12(v10);
}

uint64_t GameServicesDataProvider.observeNotifications()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = v0[79];
  v9 = v0[80];
  __swift_project_boxed_opaque_existential_1(v0 + 76, v8);
  v10 = (*(v9 + 16))(v8, v9);
  v11 = sub_227D4D2D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  OUTLINED_FUNCTION_378();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = v1;

  return sub_227BBD294(0, 0, v7, &unk_227D66868, v12);
}

uint64_t sub_227D1CF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1CF50()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 48) = v3;
  *v3 = v4;
  v3[1] = sub_227D1D034;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v5, v6, v7, 0, 0, &unk_227D669F0, v1, v8);
}

uint64_t sub_227D1D034()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227D1D130()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v0[5] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D1D1B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_227D4D2D8();
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_378();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v5[5] = v2;
  v6 = v4;

  sub_227D1DA8C(0xD000000000000011, 0x8000000227D78FD0, v1, &unk_227D66A00, v5);
  sub_227B1DE58(v1, &qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_378();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v2;
  v8 = v6;

  sub_227D1DA8C(0xD00000000000001BLL, 0x8000000227D78FF0, v1, &unk_227D66A10, v7);
  sub_227B1DE58(v1, &qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_378();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = v2;
  v10 = v8;

  sub_227D1DA8C(0xD000000000000019, 0x8000000227D79010, v1, &unk_227D66A20, v9);
  sub_227B1DE58(v1, &qword_27D7E69B8, &qword_227D4EAB0);
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_378();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v2;
  v12 = v10;

  sub_227D1DA8C(0xD000000000000025, 0x8000000227D79030, v1, &unk_227D66A30, v11);
  sub_227B1DE58(v1, &qword_27D7E69B8, &qword_227D4EAB0);

  OUTLINED_FUNCTION_18();

  return v13();
}

uint64_t sub_227D1D440()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_227D48E58();
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA480, &unk_227D66A38);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4D498();
  v0[9] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[10] = v11;
  v13 = *(v12 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227D1D55C()
{
  OUTLINED_FUNCTION_20();
  v2 = v1[11];
  v3 = v1[3];
  v4 = *sub_227B122C8();
  OUTLINED_FUNCTION_65_9(v4);

  sub_227D4D488();
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v5, v6);
  v7 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[12] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_28_14(v8);

  return MEMORY[0x282200308](v10);
}

uint64_t sub_227D1D624()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    v9 = sub_227D1D864;
  }

  else
  {
    v9 = sub_227D1D720;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227D1D734()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[8];
  v2 = v0[5];
  OUTLINED_FUNCTION_35_8();
  if (v3)
  {
    v4 = v0[11];
    v5 = v0[9];
    v6 = v0[7];
    v7 = OUTLINED_FUNCTION_537(v0[10]);
    v8(v7);

    OUTLINED_FUNCTION_18();

    return v9();
  }

  else
  {
    v11 = v0[7];
    v12 = OUTLINED_FUNCTION_26_14(v0[6]);
    v13(v12);
    v0[14] = sub_227D48E48();
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_227D1D8DC;
    v15 = v0[4];
    OUTLINED_FUNCTION_13_2();

    return sub_227B36230();
  }
}

uint64_t sub_227D1D864()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 16) = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_34_11();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_227D1D8DC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227D1D9DC()
{
  OUTLINED_FUNCTION_6();
  (*(v0[6] + 8))(v0[7], v0[5]);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v1, v2);
  v3 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[12] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_14();

  return MEMORY[0x282200308](v6);
}

uint64_t sub_227D1DA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69B8, &qword_227D4EAB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v30 - v13;
  sub_227B15F50(a3, v30 - v13, &qword_27D7E69B8, &qword_227D4EAB0);
  v15 = sub_227D4D2D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_227B1DE58(v14, &qword_27D7E69B8, &qword_227D4EAB0);
  }

  else
  {
    sub_227D4D2C8();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_227D4D278();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_227D4D018() + 32;
      v23 = *v6;
      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;

      if (v21 | v19)
      {
        v32[0] = 0;
        v32[1] = 0;
        v25 = v32;
        v32[2] = v19;
        v32[3] = v21;
      }

      else
      {
        v25 = 0;
      }

      v31[0] = 1;
      v31[1] = v25;
      v31[2] = v23;
      v30[1] = 7;
      v30[2] = v31;
      v30[3] = v22;
      swift_task_create();
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = *v6;
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  v28 = (v21 | v19);
  if (v21 | v19)
  {
    v33[0] = 0;
    v33[1] = 0;
    v28 = v33;
    v33[2] = v19;
    v33[3] = v21;
  }

  v32[4] = 1;
  v32[5] = v28;
  v32[6] = v26;
  swift_task_create();
}

uint64_t sub_227D1DD60()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_227D4CAB8();
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v10 = sub_227D48E58();
  v0[9] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[10] = v11;
  v13 = *(v12 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA480, &unk_227D66A38);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v17 = sub_227D4D498();
  v0[13] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v21 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227D1DEE8()
{
  OUTLINED_FUNCTION_20();
  v2 = v1[15];
  v3 = v1[3];
  v4 = *sub_227B12D14();
  OUTLINED_FUNCTION_65_9(v4);

  sub_227D4D488();
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v5, v6);
  v7 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[16] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_9_14(v8);

  return MEMORY[0x282200308](v10);
}

uint64_t sub_227D1DFB0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 136) = v0;

  if (v0)
  {
    v9 = sub_227D1E228;
  }

  else
  {
    v9 = sub_227D1E0AC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227D1E0C0()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[12];
  v2 = v0[9];
  OUTLINED_FUNCTION_35_8();
  if (v3)
  {
    v4 = v0[15];
    v5 = v0[13];
    v6 = v0[11];
    v8 = v0[7];
    v7 = v0[8];
    v9 = OUTLINED_FUNCTION_537(v0[14]);
    v10(v9);

    OUTLINED_FUNCTION_18();

    return v11();
  }

  else
  {
    v13 = v0[11];
    v14 = v0[8];
    v15 = OUTLINED_FUNCTION_26_14(v0[10]);
    v16(v15);
    v17 = sub_227D48E48();
    sub_227BBFE44(v17, v14);

    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_227D1E2A0;
    v19 = v0[8];
    v20 = v0[4];

    return sub_227B5A294();
  }
}

uint64_t sub_227D1E228()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 16) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_34_11();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_227D1E2A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 152) = v0;

  if (v0)
  {
    v9 = sub_227D1E454;
  }

  else
  {
    v9 = sub_227D1E39C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227D1E39C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_33_10();
  v2 = *(v0 + 8);
  v3 = OUTLINED_FUNCTION_57_0();
  v4(v3);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v5, v6);
  v7 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 128) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_9_14();

  return MEMORY[0x282200308](v10);
}

uint64_t sub_227D1E454()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[19];
  v2 = v0[7];
  sub_227D4AA58();
  v3 = v1;
  v4 = sub_227D4CA98();
  v5 = sub_227D4D438();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_435(&dword_227B0D000, v11, v12, "Failed to handle activity open URL: %@");
    sub_227B1DE58(v8, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();
  }

  v13 = v0[19];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];

  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_91_0();
  v19(v18);
  OUTLINED_FUNCTION_33_10();
  v20 = *(v14 + 8);
  v21 = OUTLINED_FUNCTION_57_0();
  v22(v21);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v23, v24);
  v25 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[16] = v26;
  *v26 = v27;
  v28 = OUTLINED_FUNCTION_9_14();

  return MEMORY[0x282200308](v28);
}

uint64_t sub_227D1E604()
{
  OUTLINED_FUNCTION_6();
  v0[21] = v1;
  v0[22] = v2;
  v3 = sub_227D4CAB8();
  v0[23] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[24] = v4;
  v6 = *(v5 + 64);
  v0[25] = OUTLINED_FUNCTION_30();
  v7 = sub_227D48E58();
  v0[26] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[27] = v8;
  v10 = *(v9 + 64);
  v0[28] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA480, &unk_227D66A38);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v0[29] = OUTLINED_FUNCTION_30();
  v14 = sub_227D4D498();
  v0[30] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[31] = v15;
  v17 = *(v16 + 64);
  v0[32] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227D1E76C()
{
  OUTLINED_FUNCTION_20();
  v2 = v1[32];
  v3 = v1[21];
  v4 = *sub_227B13080();
  OUTLINED_FUNCTION_65_9(v4);

  sub_227D4D488();
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v5, v6);
  v7 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[33] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_7_24(v8);

  return MEMORY[0x282200308](v10);
}

uint64_t sub_227D1E834()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 272) = v0;

  if (v0)
  {
    v9 = sub_227D1EABC;
  }

  else
  {
    v9 = sub_227D1E930;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227D1E944()
{
  OUTLINED_FUNCTION_166();
  v20 = v0;
  v1 = v0[29];
  v2 = v0[26];
  OUTLINED_FUNCTION_35_8();
  if (v3)
  {
    v4 = v0[32];
    v5 = v0[30];
    v6 = v0[28];
    v7 = v0[25];
    v8 = OUTLINED_FUNCTION_537(v0[31]);
    v9(v8);

    OUTLINED_FUNCTION_18();

    return v10();
  }

  else
  {
    v12 = v0[28];
    v13 = OUTLINED_FUNCTION_26_14(v0[27]);
    v14(v13);
    v15 = sub_227D48E48();
    sub_227BC07F4(v15, __src);

    memcpy(v0 + 2, __src, 0x48uLL);
    memcpy(v0 + 11, v0 + 2, 0x48uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[35] = v16;
    *v16 = v17;
    v16[1] = sub_227D1EB34;
    v18 = v0[22];

    return sub_227B60938();
  }
}

uint64_t sub_227D1EABC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 160) = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_34_11();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_227D1EB34()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (v0)
  {
    v9 = sub_227D1ECEC;
  }

  else
  {
    sub_227B6407C(v3 + 16);
    v9 = sub_227D1EC3C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227D1EC3C()
{
  OUTLINED_FUNCTION_6();
  (*(v0[27] + 8))(v0[28], v0[26]);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v1, v2);
  v3 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[33] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_7_24();

  return MEMORY[0x282200308](v6);
}

uint64_t sub_227D1ECEC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[36];
  v2 = v0[25];
  sub_227B6407C((v0 + 2));
  sub_227D4AA58();
  v3 = v1;
  v4 = sub_227D4CA98();
  v5 = sub_227D4D438();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_435(&dword_227B0D000, v11, v12, "Failed to handle activity referral deep link open URL: %@");
    sub_227B1DE58(v8, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();
  }

  v13 = v0[36];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];

  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_91_0();
  v19(v18);
  (*(v0[27] + 8))(v0[28], v0[26]);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v20, v21);
  v22 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[33] = v23;
  *v23 = v24;
  v25 = OUTLINED_FUNCTION_7_24();

  return MEMORY[0x282200308](v25);
}

uint64_t sub_227D1EEA4()
{
  OUTLINED_FUNCTION_6();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_227D4CAB8();
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v6 = *(v5 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v7 = sub_227D48E58();
  v0[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[11] = v8;
  v10 = *(v9 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA480, &unk_227D66A38);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v14 = sub_227D4D498();
  v0[14] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[15] = v15;
  v17 = *(v16 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227D1F00C()
{
  OUTLINED_FUNCTION_20();
  v2 = v1[16];
  v3 = v1[5];
  v4 = *sub_227B14000();
  OUTLINED_FUNCTION_65_9(v4);

  sub_227D4D488();
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v5, v6);
  v7 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[17] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_8_18(v8);

  return MEMORY[0x282200308](v10);
}

uint64_t sub_227D1F0D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    v9 = sub_227D1F33C;
  }

  else
  {
    v9 = sub_227D1F1D0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227D1F1E4()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[13];
  v2 = v0[10];
  OUTLINED_FUNCTION_35_8();
  if (v3)
  {
    v4 = v0[16];
    v5 = v0[14];
    v6 = v0[12];
    v7 = v0[9];
    v8 = OUTLINED_FUNCTION_537(v0[15]);
    v9(v8);

    OUTLINED_FUNCTION_18();

    return v10();
  }

  else
  {
    v12 = v0[12];
    v13 = OUTLINED_FUNCTION_26_14(v0[11]);
    v14(v13);
    v15 = sub_227D48E48();
    sub_227BC03A0(v15, v0 + 2);

    v16 = v0[3];
    v0[19] = v0[2];
    v0[20] = v16;
    v17 = swift_task_alloc();
    v0[21] = v17;
    *v17 = v0;
    v17[1] = sub_227D1F3B4;
    v18 = v0[6];

    return sub_227B621B4();
  }
}

uint64_t sub_227D1F33C()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 32) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  v1 = MEMORY[0x277D84A98];
  v2 = OUTLINED_FUNCTION_34_11();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_227D1F3B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = sub_227D1F56C;
  }

  else
  {
    v10 = *(v3 + 160);

    v9 = sub_227D1F4BC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227D1F4BC()
{
  OUTLINED_FUNCTION_6();
  (*(v0[11] + 8))(v0[12], v0[10]);
  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v1, v2);
  v3 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[17] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_18();

  return MEMORY[0x282200308](v6);
}

uint64_t sub_227D1F56C()
{
  v41 = v0;
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[9];
  sub_227D4AA58();
  v4 = v1;
  sub_227D4CE58();
  v5 = sub_227D4CA98();
  v6 = sub_227D4D438();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  v9 = v0[20];
  if (v7)
  {
    v10 = v0[19];
    v38 = v0[10];
    v39 = v0[12];
    v36 = v0[9];
    v37 = v0[11];
    v11 = v0[8];
    v35 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v12 = 138412546;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v16;
    *v13 = v16;
    *(v12 + 12) = 2080;
    v17 = sub_227B1B1A4(v10, v9, &v40);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_227B0D000, v5, v6, "Failed to handle most recent pending instance check: %@ for bundle ID: %s", v12, 0x16u);
    sub_227B1DE58(v13, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_5_2();
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    (*(v11 + 8))(v36, v35);
    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v19 = v0[11];
    v18 = v0[12];
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[7];
    v23 = v0[8];

    (*(v23 + 8))(v21, v22);
    v24 = *(v19 + 8);
    v25 = OUTLINED_FUNCTION_91_0();
    v26(v25);
  }

  OUTLINED_FUNCTION_2_38();
  sub_227B12AE0(v27, v28);
  v29 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[17] = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x282200308](v32);
}

uint64_t *GameServicesDataProvider.deinit()
{
  sub_227D231D8((v0 + 2));
  v1 = v0[8];

  v2 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  sub_227D2322C((v0 + 23));
  sub_227D23280((v0 + 36));
  sub_227D14460((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0(v0 + 76);
  return v0;
}

uint64_t GameServicesDataProvider.__deallocating_deinit()
{
  GameServicesDataProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 648, 7);
}

uint64_t sub_227D1F88C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1F8A0()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 24);
  if (sub_227D1CC44())
  {
    v2 = *(v0 + 24);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_165(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_4_29(v4);

    return sub_227CAE398();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v7, v8);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v9();
  }
}

uint64_t sub_227D1F9B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1F9C8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  v2 = sub_227D1CC44();
  v3 = *(v0 + 32);
  if (v2)
  {
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_164_1(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_42_9(v5);
    OUTLINED_FUNCTION_10_20(v7);

    return sub_227CAF680();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_42_9(v9);
    OUTLINED_FUNCTION_16_12(v10);

    return sub_227B79914();
  }
}

uint64_t sub_227D1FAC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1FAE0()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 32);
  if (sub_227D1CC44())
  {
    v2 = *(v0 + 32);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_164_1(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_42_9(v4);
    OUTLINED_FUNCTION_10_20(v6);

    return sub_227CB0368();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v8, v9);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227D1FBF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1FC0C()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 32);
  if (sub_227D1CC44())
  {
    v2 = *(v0 + 32);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_164_1(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_42_9(v4);
    OUTLINED_FUNCTION_10_20(v6);

    return sub_227CB1DE4();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v8, v9);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227D1FD20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1FD34()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 24);
  if (sub_227D1CC44())
  {
    v2 = *(v0 + 24);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_165(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_4_29(v4);

    return sub_227CB364C();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v7, v8);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v9();
  }
}

uint64_t sub_227D1FE44(uint64_t a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D1FE60()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[5];
  v2 = sub_227D1CC44();
  v3 = v0[5];
  if (v2)
  {
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_227C8EC54;
    v5 = v0[3];
    v6 = v0[4];
    OUTLINED_FUNCTION_5_28();

    return sub_227CB5FF4();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_227BCD2C4;
    v9 = v0[3];
    v10 = v0[4];
    v11 = OUTLINED_FUNCTION_16_12(v0[2]);

    return sub_227D47FC4(v11, v12, v13);
  }
}

uint64_t sub_227D1FF84()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 16);
  v2 = v1[80];
  __swift_project_boxed_opaque_existential_1(v1 + 76, v1[79]);
  v3 = *(OUTLINED_FUNCTION_280() + 104);
  OUTLINED_FUNCTION_32();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_227D2009C;
  v8 = OUTLINED_FUNCTION_13_2();

  return v10(v8, v2);
}

uint64_t sub_227D2009C()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 24);
  v5 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_115();

  return v7(v2);
}

uint64_t sub_227D20184(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20198()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);
  v2 = sub_227D1CC44();
  v3 = *(v0 + 24);
  if (v2)
  {
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_165(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_4_29(v5);

    return sub_227D24240();
  }

  else
  {
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_164_1(v8);
    *v9 = v10;
    v9[1] = sub_227D237C4;
    OUTLINED_FUNCTION_16_12(*(v0 + 16));

    return sub_227CFA960();
  }
}

uint64_t sub_227D20294(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D202AC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  v2 = sub_227D1CC44();
  v3 = *(v0 + 32);
  if (v2)
  {
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_164_1(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_42_9(v5);
    OUTLINED_FUNCTION_10_20(v7);

    return sub_227D251D4();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_42_9(v9);
    OUTLINED_FUNCTION_16_12(v10);

    return sub_227CF6FF0();
  }
}

uint64_t sub_227D203AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D203C8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[7];
  v2 = sub_227D1CC44();
  v3 = v0[7];
  if (v2)
  {
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_227BCBA2C;
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    OUTLINED_FUNCTION_5_28();

    return sub_227D25D4C();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_227CED91C;
    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    OUTLINED_FUNCTION_16_12(v0[2]);

    return sub_227CF8130();
  }
}

uint64_t sub_227D204E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D204FC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[6];
  v2 = sub_227D1CC44();
  v3 = v0[6];
  if (v2)
  {
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_227D237CC;
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[3];
    OUTLINED_FUNCTION_10_20(v0[2]);

    return sub_227D26B34();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_227D237D0;
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];
    OUTLINED_FUNCTION_16_12(v0[2]);

    return sub_227CF9594();
  }
}

uint64_t sub_227D20610(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20624()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 24);
  v2 = sub_227D1CC44();
  v3 = *(v0 + 24);
  if (v2)
  {
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_165(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_4_29(v5);

    return sub_227D27BD4();
  }

  else
  {
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_164_1(v8);
    *v9 = v10;
    v9[1] = sub_227B4AF70;
    OUTLINED_FUNCTION_16_12(*(v0 + 16));

    return sub_227CFA9F0();
  }
}

uint64_t sub_227D20720(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20734()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 24);
  if (sub_227D1CC44())
  {
    v2 = *(v0 + 24);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_165(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_4_29(v4);

    return sub_227D29978();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v7, v8);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v9();
  }
}

uint64_t sub_227D20844(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20858()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 24);
  if (sub_227D1CC44())
  {
    v2 = *(v0 + 24);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_165(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_4_29(v4);

    return sub_227D2A578();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v7, v8);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v9();
  }
}

uint64_t sub_227D20968(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D2097C()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 24);
  if (sub_227D1CC44())
  {
    v2 = *(v0 + 24);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_165(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_4_29(v4);

    return sub_227D2B3CC();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v7, v8);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v9();
  }
}

uint64_t sub_227D20A8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D20AA0()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 24);
  if (sub_227D1CC44())
  {
    v2 = *(v0 + 24);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_165(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_4_29(v4);

    return sub_227D2BE94();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v7, v8);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49DC8();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v9();
  }
}

uint64_t sub_227D20BB0()
{
  OUTLINED_FUNCTION_20();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v2);
  v4 = *(v3 + 64);
  v1[3] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  v1[4] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6808, &qword_227D4E590);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[5] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4AA88();
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v14 = sub_227D4AB28();
  v1[7] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[8] = v15;
  v17 = *(v16 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[10] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[11] = v19;
  v21 = *(v20 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67B0, &unk_227D62060);
  OUTLINED_FUNCTION_10_0(v22);
  v1[15] = v23;
  v25 = *(v24 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v26 = swift_task_alloc();
  v1[21] = v26;
  *v26 = v1;
  v26[1] = sub_227D20E44;
  OUTLINED_FUNCTION_13_2();

  return sub_227B223DC();
}

uint64_t sub_227D20E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_14();
  v19 = v18;
  OUTLINED_FUNCTION_2();
  *v20 = v19;
  v22 = *(v21 + 168);
  *v20 = *v17;
  v19[22] = v23;
  v19[23] = v16;

  if (v16)
  {
    v25 = v19[19];
    v24 = v19[20];
    v27 = v19[17];
    v26 = v19[18];
    v28 = v19[16];
    v30 = v19[13];
    v29 = v19[14];
    v31 = v19[12];
    v32 = v19[5];
    v48 = v19[9];
    v49 = v19[6];
    v34 = v19 + 3;
    v33 = v19[3];
    v50 = v32;
    v51 = v34[1];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_23();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v48, v49, v50, v51, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v44, v45, v46);
  }
}

void sub_227D21000()
{
  v1 = v0[22];
  v42 = *(v1 + 16);
  if (v42)
  {
    v2 = 0;
    v40 = v0[15];
    v37 = (v0[8] + 8);
    v38 = (v0[11] + 8);
    v39 = v1 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v3 = v0[23];
    v4 = MEMORY[0x277D84F90];
    v36 = v0[22];
    while (v2 < *(v1 + 16))
    {
      v6 = v0[19];
      v5 = v0[20];
      v7 = v0[7];
      sub_227B15F50(v39 + *(v40 + 72) * v2, v5, &qword_27D7E67B0, &unk_227D62060);
      sub_227B15F50(v5, v6, &qword_27D7E67B0, &unk_227D62060);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {
        v8 = v0[19];
        sub_227B1DE58(v0[20], &qword_27D7E67B0, &unk_227D62060);
        sub_227B1DE58(v8, &qword_27D7E67B0, &unk_227D62060);
      }

      else
      {
        v9 = v0[19];
        v10 = v0[14];
        v11 = v0[7];
        sub_227D4AAE8();
        (*v37)(v9, v11);
        v12 = sub_227D4A898();
        if (v3)
        {
          v26 = v0[22];
          v27 = v0[20];
          v28 = v0[14];
          v29 = v0[10];

          (*v38)(v28, v29);
          sub_227B1DE58(v27, &qword_27D7E67B0, &unk_227D62060);

          v31 = v0[19];
          v30 = v0[20];
          v33 = v0[17];
          v32 = v0[18];
          OUTLINED_FUNCTION_29_13();
          v41 = v0[4];
          v43 = v0[3];

          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_90();

          __asm { BRAA            X1, X16 }
        }

        v14 = v12;
        v15 = v13;
        v16 = v0[20];
        (*v38)(v0[14], v0[10]);
        v17 = OUTLINED_FUNCTION_91_0();
        sub_227B1DE58(v17, v18, &unk_227D62060);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_227B25F88(0, *(v4 + 2) + 1, 1, v4);
        }

        v20 = *(v4 + 2);
        v19 = *(v4 + 3);
        if (v20 >= v19 >> 1)
        {
          v4 = sub_227B25F88((v19 > 1), v20 + 1, 1, v4);
        }

        v3 = 0;
        *(v4 + 2) = v20 + 1;
        v21 = &v4[16 * v20];
        *(v21 + 4) = v14;
        *(v21 + 5) = v15;
        v1 = v36;
      }

      if (v42 == ++v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_15:
    v0[24] = v4;
    v22 = v0[2];
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_227D21394;
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_90();

    sub_227C20758(v24);
  }
}

uint64_t sub_227D21394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v18 = *v17;
  v19 = *v17;
  OUTLINED_FUNCTION_5_4();
  *v20 = v19;
  v21 = v18[25];
  v22 = *v17;
  OUTLINED_FUNCTION_2();
  *v23 = v22;
  v19[26] = v24;
  v19[27] = v16;

  v25 = v18[24];
  if (v16)
  {

    v26 = v19[22];
    v28 = v19[19];
    v27 = v19[20];
    v30 = v19[17];
    v29 = v19[18];
    v31 = v19[16];
    v33 = v19[13];
    v32 = v19[14];
    v34 = v19[12];
    v35 = v19[9];
    v52 = v19[6];
    v53 = v19[5];
    v37 = v19 + 3;
    v36 = v19[3];
    v54 = v37[1];
    v55 = v26;

    v38 = v22[1];
    OUTLINED_FUNCTION_23();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v52, v53, v54, v55, a14, a15, a16);
  }

  else
  {

    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v48, v49, v50);
  }
}

uint64_t sub_227D21594()
{
  if (!*(v0[26] + 16))
  {

    v8 = v0[22];
LABEL_19:
    v36 = v0[19];
    v35 = v0[20];
    v38 = v0[17];
    v37 = v0[18];
    OUTLINED_FUNCTION_29_13();
    v65 = v0[4];
    v68 = v0[3];

    OUTLINED_FUNCTION_115();

    return v39(v8);
  }

  v59 = v0[26];
  v1 = v0[22];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v34 = v0[22];

    v8 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[8];
  v70 = MEMORY[0x277D84F90];
  result = sub_227B26EC4(0, v2, 0);
  v7 = 0;
  v8 = v70;
  v63 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v64 = v1 + v63;
  v67 = v3;
  v60 = (v5 + 32);
  v58 = (v4 + 8);
  v50 = (v5 + 8);
  v61 = v0[27];
  v57 = v2;
  while (1)
  {
    if (v7 >= *(v0[22] + 16))
    {
      __break(1u);
      return result;
    }

    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[7];
    v12 = *(v67 + 72);
    sub_227B15F50(v64 + v12 * v7, v9, &qword_27D7E67B0, &unk_227D62060);
    sub_227B15F50(v9, v10, &qword_27D7E67B0, &unk_227D62060);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_227B1DE58(v0[16], &qword_27D7E67B0, &unk_227D62060);
      v13 = 1;
      goto LABEL_13;
    }

    v14 = v0[13];
    v15 = *v60;
    (*v60)(v0[9], v0[16], v0[7]);
    sub_227D4AAE8();
    v16 = sub_227D4A898();
    if (v61)
    {
      break;
    }

    v18 = v16;
    v19 = v17;
    (*v58)(v0[13], v0[10]);
    if (*(v59 + 16) && (v20 = v0[26], v21 = sub_227B2664C(v18, v19), (v22 & 1) != 0))
    {
      v23 = v0[12];
      v55 = v0[18];
      v24 = v0[9];
      v56 = v0[7];
      v54 = v0[6];
      v52 = v0[5];
      v62 = v0[4];
      v53 = v0[3];
      v51 = *(*(v59 + 56) + 8 * v21);

      sub_227D4AAE8();
      sub_227D4AA98();
      sub_227D4AB08();
      sub_227D4AB18();
      sub_227C20D44();
      sub_227D4AAC8();
      sub_227D4AAF8();
      sub_227D4AAA8();
      sub_227D4AAB8();
      sub_227D4AAD8();

      (*v50)(v24, v56);
    }

    else
    {
      v25 = v0[18];
      v26 = v0[9];
      v27 = v0[7];

      v15(v25, v26, v27);
    }

    v61 = 0;
    v13 = 0;
    v2 = v57;
LABEL_13:
    v28 = v0[17];
    __swift_storeEnumTagSinglePayload(v0[18], v13, 1, v0[7]);
    sub_227B1DE58(v28, &qword_27D7E67B0, &unk_227D62060);
    v30 = *(v70 + 16);
    v29 = *(v70 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_227B26EC4(v29 > 1, v30 + 1, 1);
    }

    ++v7;
    v31 = v0[18];
    *(v70 + 16) = v30 + 1;
    result = sub_227B26EE4(v31, v70 + v63 + v30 * v12);
    if (v2 == v7)
    {
      v32 = v0[26];
      v33 = v0[22];

      goto LABEL_19;
    }
  }

  v40 = v0[26];
  v41 = v0[22];
  v42 = v0[17];
  v43 = v0[9];
  v44 = v0[7];
  (*v58)(v0[13], v0[10]);
  (*v50)(v43, v44);
  sub_227B1DE58(v42, &qword_27D7E67B0, &unk_227D62060);

  v46 = v0[19];
  v45 = v0[20];
  v48 = v0[17];
  v47 = v0[18];
  OUTLINED_FUNCTION_29_13();
  v66 = v0[4];
  v69 = v0[3];

  OUTLINED_FUNCTION_18();

  return v49();
}

uint64_t sub_227D21B64()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227B71AF0;

  return sub_227B24448();
}

uint64_t GameServicesDataProvider.refreshOnboarding(for:)()
{
  OUTLINED_FUNCTION_6();
  v1[33] = v2;
  v1[34] = v0;
  v3 = type metadata accessor for GameServicesEnvironment(0);
  v1[35] = v3;
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227D21C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = *(v16 + 296);
  v19 = *(v16 + 272);
  v18 = *(v16 + 280);
  v20 = v19[79];
  v21 = v19[80];
  __swift_project_boxed_opaque_existential_1(v19 + 76, v20);
  (*(v21 + 8))(v20, v21);
  v22 = (v17 + *(v18 + 32));
  v24 = *v22;
  v23 = v22[1];
  *(v16 + 304) = v23;
  sub_227D4CE58();
  OUTLINED_FUNCTION_13_19();
  sub_227B17AA8(v17, v25);
  if (v23)
  {
    v26 = *(v16 + 280);
    v27 = *(v16 + 288);
    v68 = *(v16 + 264);
    sub_227CF1700(*(v16 + 272) + 288, v16 + 16);
    v28 = v19[79];
    v29 = v19[80];
    __swift_project_boxed_opaque_existential_1(v19 + 76, v28);
    (*(v29 + 152))(v28, v29);
    v30 = v19[79];
    v31 = v19[80];
    __swift_project_boxed_opaque_existential_1(v19 + 76, v30);
    (*(v31 + 8))(v30, v31);
    v32 = v27 + *(v26 + 36);
    v33 = *v32;
    LOBYTE(v26) = *(v32 + 8);
    v34 = *(v32 + 16);
    LOBYTE(v31) = *(v32 + 24);
    v35 = *(v32 + 32);
    v36 = *(v32 + 40);
    OUTLINED_FUNCTION_13_19();
    sub_227B17AA8(v27, v37);
    *(v16 + 176) = v33;
    *(v16 + 184) = v26;
    *(v16 + 192) = v34;
    *(v16 + 200) = v31;
    *(v16 + 208) = v35;
    *(v16 + 216) = v36;
    sub_227B11EE8((v19 + 76), v16 + 224);
    v38 = *(v16 + 256);
    __swift_project_boxed_opaque_existential_1((v16 + 224), *(v16 + 248));
    v39 = sub_227D4A898();
    (*(v38 + 144))(v39);

    v53 = *(v16 + 218);
    v54 = *(v16 + 219);
    v55 = *(v16 + 220);
    v56 = *(v16 + 221);
    v57 = *(v16 + 222);
    v58 = *(v16 + 223);
    *(v16 + 328) = *(v16 + 217);
    *(v16 + 329) = v53;
    *(v16 + 330) = v54;
    *(v16 + 331) = v55;
    *(v16 + 332) = v56;
    *(v16 + 333) = v57;
    *(v16 + 334) = v58;
    v59 = swift_task_alloc();
    *(v16 + 312) = v59;
    *v59 = v16;
    v59[1] = sub_227D21FD8;
    v60 = *(v16 + 264);
    OUTLINED_FUNCTION_23();

    return sub_227C1EDF0(v61, v62, v63, v64, v65, v66);
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v40, v41);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49D98();
    swift_willThrow();
    v43 = *(v16 + 288);
    v42 = *(v16 + 296);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_23();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227D21FD8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[40] = v0;

  if (v0)
  {
    v9 = v3[38];
    sub_227D23280((v3 + 2));

    v10 = OUTLINED_FUNCTION_16();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v14 = v3[37];
    v13 = v3[38];
    v15 = v3[36];
    sub_227D23280((v3 + 2));

    __swift_destroy_boxed_opaque_existential_0(v3 + 28);

    OUTLINED_FUNCTION_18();

    return v16();
  }
}

uint64_t sub_227D22140()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t GameServicesDataProvider.serverSetProfileSettings(_:)()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v3 = sub_227D4B318();
  v0[2] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[3] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_30();
  v0[4] = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[5] = v8;
  *v8 = v9;
  v8[1] = sub_227D222A0;

  return sub_227BDF360(v7, v2);
}

uint64_t sub_227D222A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    v9 = sub_227D22414;
  }

  else
  {
    (*(v3[3] + 8))(v3[4], v3[2]);
    v9 = sub_227D223B8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227D223B8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227D22414()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_18();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_227D22484()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 40);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_27_14(*(v1 + 56));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 48) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_51_11(v5);

  return v8(v7);
}

uint64_t sub_227D2253C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v5 = OUTLINED_FUNCTION_53_7(v3, v4);
  v7 = *(v6 + 48);
  *v8 = *v0;
  *(v9 + 56) = v5;

  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D22620()
{
  OUTLINED_FUNCTION_20();
  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_52_11();

    return v1();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v3, v4);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49D98();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v5();
  }
}

uint64_t sub_227D2271C()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 40);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_27_14(*(v1 + 72));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 48) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_51_11(v5);

  return v8(v7);
}

uint64_t sub_227D227D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v5 = OUTLINED_FUNCTION_53_7(v3, v4);
  v7 = *(v6 + 48);
  *v8 = *v0;
  *(v9 + 56) = v5;

  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D228B8()
{
  OUTLINED_FUNCTION_20();
  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_52_11();

    return v1();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_1_36();
    sub_227B12AE0(v3, v4);
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_32_11();
    sub_227D49D98();
    swift_willThrow();
    OUTLINED_FUNCTION_18();

    return v5();
  }
}

void *sub_227D229A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  type metadata accessor for GameServicesDataProvider();
  v16 = swift_allocObject();
  sub_227D1C8A4(a5, v28);
  v27[3] = &type metadata for DefaultAMSDataProvider;
  v27[4] = &off_283B3D1B0;
  v17 = swift_allocObject();
  v27[0] = v17;
  v18 = v28[1];
  v17[1] = v28[0];
  v17[2] = v18;
  v17[3] = v28[2];
  v26[3] = type metadata accessor for DefaultChallengeStoreRegistry();
  v26[4] = &off_283B3C428;
  v26[0] = a6;

  sub_227D4DC48();
  sub_227D4DC38();
  v16[11] = v19;
  sub_227D4DC48();
  sub_227D4DC38();
  v16[12] = v20;
  sub_227B11EE8(v27, (v16 + 13));
  sub_227B11EE8(v26, (v16 + 18));
  sub_227B11EE8(a7, (v16 + 76));
  sub_227B11EE8(a7, v25);
  sub_227B132E8(v25, (v16 + 2));
  sub_227B11EE8(a7, v25);
  v21 = swift_allocObject();
  sub_227B12164(v25, v21 + 16);
  sub_227B11EE8(a7, v25);
  sub_227B11EE8(v27, v24);
  sub_227CAC6F8(&unk_227D66A70, v21, v25, v24, v16 + 23);
  sub_227B11EE8(v26, v25);
  sub_227B11EE8(a7, v24);
  sub_227B13308(v25, v24, (v16 + 36));
  sub_227B11EE8(a7, v25);
  sub_227B11EE8(a8, v24);
  sub_227C58E34(v23);
  sub_227C58E78(v25, v23, v24, v16 + 56);

  __swift_destroy_boxed_opaque_existential_0(a8);
  __swift_destroy_boxed_opaque_existential_0(a7);
  sub_227D22BE8(a5);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  v16[7] = a1;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = a4;
  return v16;
}

uint64_t sub_227D22C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a7;
  v40 = a8;
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v33 = a13;
  v34 = a12;
  v14 = *(a11 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - v20;
  v22 = *(a10 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v33 - v27;
  (*(v22 + 32))(&v33 - v27, v29, a10);
  (*(v14 + 32))(v21, a6, a11);
  v30 = swift_allocObject();
  (*(v22 + 16))(v26, v28, a10);
  (*(v14 + 16))(v18, v21, a11);
  v31 = sub_227D22EB8(v35, v36, v37, v38, v26, v18, v39, v40, v30, a10, a11, v34, v33);
  (*(v14 + 8))(v21, a11);
  (*(v22 + 8))(v28, a10);
  return v31;
}

uint64_t sub_227D22EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33[3] = a10;
  v33[4] = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  v32[3] = a11;
  v32[4] = a13;
  v20 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a11 - 8) + 32))(v20, a6, a11);
  sub_227D4DC48();
  sub_227D4DC38();
  *(a9 + 88) = v21;
  sub_227D4DC48();
  sub_227D4DC38();
  *(a9 + 96) = v22;
  sub_227B11EE8(v33, a9 + 104);
  sub_227B11EE8(v32, a9 + 144);
  sub_227B11EE8(a7, a9 + 608);
  sub_227B11EE8(a7, v31);
  sub_227B132E8(v31, __src);
  v23 = __src[1];
  *(a9 + 16) = __src[0];
  *(a9 + 32) = v23;
  *(a9 + 48) = *&__src[2];
  sub_227B11EE8(a7, __src);
  v24 = swift_allocObject();
  sub_227B12164(__src, v24 + 16);
  sub_227B11EE8(a7, v31);
  sub_227B11EE8(v33, v30);
  sub_227CAC6F8(&unk_227D66A68, v24, v31, v30, __src);
  memcpy((a9 + 184), __src, 0x68uLL);
  sub_227B11EE8(v32, v31);
  sub_227B11EE8(a7, v30);
  sub_227B13308(v31, v30, __src);
  memcpy((a9 + 288), __src, 0xA0uLL);
  sub_227B11EE8(a7, v31);
  sub_227B11EE8(a8, v30);
  sub_227C58E34(v28);
  sub_227C58E78(v31, v28, v30, __src);
  __swift_destroy_boxed_opaque_existential_0(a8);
  __swift_destroy_boxed_opaque_existential_0(a7);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  memcpy((a9 + 448), __src, 0xA0uLL);
  *(a9 + 56) = a1;
  *(a9 + 64) = a2;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  return a9;
}

uint64_t sub_227D23138()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_0(v5);
  *v6 = v9;
  v6[1] = sub_227B355D0;

  return sub_227D1CF38(v2, v7, v8, v4, v3);
}

uint64_t sub_227D23310()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  v4[1] = sub_227B3E2E8;

  return sub_227D1D130();
}

uint64_t sub_227D233B0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_24_13(v4);

  return sub_227D1D440();
}

uint64_t sub_227D23434()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_24_13(v4);

  return sub_227D1DD60();
}

uint64_t sub_227D234B8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_24_13(v4);

  return sub_227D1E604();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_378();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_227D23580()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_24_13(v4);

  return sub_227D1EEA4();
}

uint64_t sub_227D23604()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_27_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t sub_227D23694()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_43_10(v1);

  return sub_227D1CB10(v3, v4, v5, v6);
}

uint64_t sub_227D23728()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_43_10(v1);

  return sub_227D1CB10(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_33_10()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  return sub_227B17AA8(v4, type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened);
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_9(uint64_t result)
{
  *(result + 8) = v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_63_5(void *a1)
{
  *(v2 + 64) = *a1;

  return sub_227B11EE8(v1, v2 + 16);
}

uint64_t GameServiceRoot.__allocating_init(actorSystem:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_37();
  v2 = swift_allocObject();
  GameServiceRoot.init(actorSystem:dataProvider:)(a1, 0);
  return v2;
}

uint64_t GameServiceRoot.__allocating_init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_37();
  v4 = swift_allocObject();
  GameServiceRoot.init(actorSystem:dataProvider:)(a1, a2);
  return v4;
}

uint64_t GameServiceRoot.init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_227D49EF8();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v64 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v64 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v64 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v64 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v64 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v64 - v29;
  if (sub_227D49CD8())
  {
    v64 = v19;
    v65 = v16;
    type metadata accessor for AchievementService();
    sub_227D49E48();
    v31 = static AchievementService.resolve(id:using:)(v30, a1);
    v32 = v30;
    v33 = v70;
    v69 = *(v69 + 8);
    (v69)(v32, v70);
    v3[2] = v31;
    type metadata accessor for AssetService();
    sub_227D49EB8();
    v34 = static AssetService.resolve(id:using:)(v28, a1);
    (v69)(v28, v33);
    v3[3] = v34;
    type metadata accessor for AuthenticationService();
    sub_227D49E68();
    v35 = static AuthenticationService.resolve(id:using:)(v25, a1);
    v36 = v25;
    v37 = v69;
    (v69)(v36, v33);
    v3[4] = v35;
    type metadata accessor for ChallengeService();
    sub_227D49E18();
    v38 = static ChallengeService.resolve(id:using:)(v22, a1);
    v39 = v64;
    v40 = v38;
    v37(v22, v33);
    v3[5] = v40;
    type metadata accessor for GameActivityService();
    sub_227D49E78();
    v41 = static GameActivityService.resolve(id:using:)(v39, a1);
    v37(v39, v33);
    v3[6] = v41;
    v42 = type metadata accessor for GameLibraryService();
    v43 = v65;
    sub_227D49EA8();
    v44 = static GameLibraryService.resolve(id:using:)(v43, a1);
    v45 = v67;
    v46 = v44;
    v37(v43, v70);
    v72 = v42;
    v73 = sub_227D2410C();
    *&v71 = v46;
    sub_227B132F0(&v71, (v3 + 7));
    type metadata accessor for LeaderboardService();
    v47 = v66;
    sub_227D49E58();
    v48 = static LeaderboardService.resolve(id:using:)(v47, a1);
    v49 = v70;
    v37(v47, v70);
    v3[12] = v48;
    type metadata accessor for OnboardingService();
    sub_227D49E28();
    v50 = static OnboardingService.resolve(id:using:)(v45, a1);
    v51 = v68;
    v52 = v50;
    v37(v45, v49);
    v3[14] = v52;
    type metadata accessor for ProfileService();
    sub_227D49EE8();
    v53 = static ProfileService.resolve(id:using:)(v51, a1);
    v37(v51, v49);

    v54 = 13;
LABEL_5:
    v3[v54] = v53;
    return v3;
  }

  if (a2)
  {
    type metadata accessor for AchievementService();
    OUTLINED_FUNCTION_308();
    swift_retain_n();

    v2[2] = sub_227B66250(v55, a2);
    type metadata accessor for AssetService();
    OUTLINED_FUNCTION_308();

    v2[3] = sub_227C8D97C(v56, a2);
    type metadata accessor for AuthenticationService();
    OUTLINED_FUNCTION_308();

    v2[4] = sub_227CAAD7C(v57, a2);
    type metadata accessor for ChallengeService();
    OUTLINED_FUNCTION_308();

    v2[5] = sub_227B7E2C4(v58, a2);
    type metadata accessor for GameActivityService();
    OUTLINED_FUNCTION_308();

    v2[6] = sub_227B3E9C4(v59, a2);
    type metadata accessor for GameLibraryService();
    OUTLINED_FUNCTION_308();

    v61 = sub_227D131E8(v60, a2);
    v2[10] = a1;
    v2[11] = sub_227D2410C();
    v2[7] = v61;
    type metadata accessor for LeaderboardService();
    OUTLINED_FUNCTION_308();

    v2[12] = sub_227BC8508();
    type metadata accessor for ProfileService();
    OUTLINED_FUNCTION_308();

    v2[13] = sub_227D41694(v62, a2);
    v53 = type metadata accessor for OnboardingService();
    sub_227D3C4F0();
    OUTLINED_FUNCTION_308();

    v54 = 14;
    goto LABEL_5;
  }

  result = sub_227D4D7F8();
  __break(1u);
  return result;
}

unint64_t sub_227D2410C()
{
  result = qword_27D7EA470;
  if (!qword_27D7EA470)
  {
    type metadata accessor for GameLibraryService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA470);
  }

  return result;
}

void *GameServiceRoot.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return v0;
}

uint64_t GameServiceRoot.__deallocating_deinit()
{
  GameServiceRoot.deinit();
  v0 = OUTLINED_FUNCTION_1_37();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_227D24240()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_121();
  v1[7] = swift_task_alloc();
  v7 = sub_227D4A4F8();
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_121();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_64_0(v11);
  v12 = sub_227D49328();
  v1[12] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v16 = type metadata accessor for GameServicesEnvironment(0);
  v1[15] = v16;
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D243BC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[18] = 0;
  v0[19] = v2;
  v0[17] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
    OUTLINED_FUNCTION_5(v3);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_67_4(v6);
    *v7 = v8;
    OUTLINED_FUNCTION_90_6(v7);
    OUTLINED_FUNCTION_164();

    return sub_227D24B98();
  }

  else
  {
    OUTLINED_FUNCTION_135_8();

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_164();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_227D24514()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  *(v3 + 168) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_105_9();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D24B98()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D24C48()
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v1 = v0[6];
  v2 = v0[2];
  sub_227D4A7E8();
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_227D4A6A8();
  OUTLINED_FUNCTION_42_10();
  v0[7] = v6;
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_174();
  v9(v8);
  v10 = v0[2];
  v0[8] = sub_227D4A7D8();
  v0[9] = v11;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_227D24D6C;
  v13 = v0[3];
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_128();

  return sub_227D29484();
}

uint64_t sub_227D24D6C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[11] = v1;
  v4[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_11();
  }

  else
  {
    v12 = v4[7];

    OUTLINED_FUNCTION_66_10();
    v13 += 736;
    v4[13] = *v13;
    v4[14] = v13 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_227D24EA0()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 64), *(v0 + 72));
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = sub_227D25104;
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);

    OUTLINED_FUNCTION_45();
    v8 += 464;
    *(v0 + 128) = *v8;
    *(v0 + 136) = v8 & 0xFFFFFFFFFFFFLL | 0x4E8B000000000000;
    v4 = sub_227D24F60;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_227D24F60()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  *(v0 + 144) = (*(v0 + 128))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D24FC4()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227D25174(v0[2], v0[18], &qword_27D7E6938, &qword_227D4E760, &qword_27D7E9FB8, &qword_27D7E9FC0);

  v2 = v0[11];
  if (!v1)
  {
    sub_227D4A4F8();
    sub_227D4CE28();
  }

  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_8_0();

  return v5(v4);
}

uint64_t sub_227D25094()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[12];
  v4 = v0[6];

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227D25104()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[15];
  v4 = v0[6];

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227D25174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v7 = sub_227D2CBAC(a1, a3, a4, a5, a6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a2 + 56) + 8 * v7);
  return sub_227D4CE58();
}

uint64_t sub_227D251D4()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82C8, &unk_227D64BF0);
  v1[9] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[12] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227D25360()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[13];
  v2 = *(v0[3] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[16] = 0;
  v0[17] = v3;
  v0[15] = v2;
  if (v2)
  {
    v4 = v0[14];
    v5 = v0[12];
    v6 = OUTLINED_FUNCTION_106_5(v1);
    v7(v6);
    v0[18] = sub_227D4A6A8();
    v0[19] = v8;
    OUTLINED_FUNCTION_42_10();
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_67_4(v22);
    *v23 = v24;
    OUTLINED_FUNCTION_90_6(v23);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_164();

    return sub_227CACB7C();
  }

  else
  {
    v9 = v0[14];
    v10 = v0[11];
    v12 = v0[7];
    v11 = v0[8];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_164();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_227D2550C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 168) = v0;

  if (v0)
  {
    *(v3 + 240) = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D25614()
{
  v1 = *(v0[4] + 96);
  v0[22] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[23] = *(*v1 + 96);
  v0[24] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D25650, v1);
}

uint64_t sub_227D25650()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  *(v0 + 200) = (*(v0 + 184))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D256B4()
{
  OUTLINED_FUNCTION_119();
  if (*(v0[25] + 16) && (v1 = sub_227B2664C(v0[18], v0[19]), v2 = v0[25], (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_102_6(v1);

    OUTLINED_FUNCTION_66_10();
    v4 += 52;
    v0[27] = *v4;
    v0[28] = v4 & 0xFFFFFFFFFFFFLL | 0xFFA7000000000000;
  }

  else
  {
    v6 = v0[18];
    v5 = v0[19];

    OUTLINED_FUNCTION_35_9();

    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_110_6();
    OUTLINED_FUNCTION_0_56();
    sub_227B12A9C(v7, v8);
    v9 = OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    v0[30] = v9;
  }

  OUTLINED_FUNCTION_141_5();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D257FC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  *(v0 + 232) = (*(v0 + 216))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D25C9C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[30];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227D25D4C()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8360, &unk_227D58BB0);
  v1[10] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v14 = sub_227D4A0E8();
  v1[13] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_121();
  v1[16] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227D25E88()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[18] = 0;
  v0[19] = v2;
  v0[17] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
    OUTLINED_FUNCTION_5(v3);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_67_4(v6);
    *v7 = v8;
    v7[1] = sub_227D25FE4;
    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[6];

    return sub_227D2653C();
  }

  else
  {
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[12];
    v16 = v0[9];

    OUTLINED_FUNCTION_115();
    v18 = MEMORY[0x277D84F90];

    return v17(v18);
  }
}

uint64_t sub_227D25FE4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  v3[21] = v7;

  if (v0)
  {
    v8 = v3[19];
    v10 = v3[15];
    v9 = v3[16];
    v11 = v3[12];
    v12 = v3[9];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_164();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v22, v23, v24);
  }
}

uint64_t sub_227D26140()
{
  v3 = 0;
  v4 = v2[21];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v0 = v2[16];
    v7 = v2[14];
    v8 = *(v7 + 16);
    v7 += 16;
    v9 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v10 = *(v7 + 56);
    v8(v0, v2[21] + v9 + v10 * v3, v2[13]);
    v11 = sub_227D4A098();
    if (v11 < 0)
    {
      goto LABEL_26;
    }

    v12 = v2[16];
    if (v11 >= v2[4] && v11 < v2[5])
    {
      v0 = *(v2[14] + 32);
      (v0)(v2[15], v2[16], v2[13]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = *(v6 + 16);
        OUTLINED_FUNCTION_46_10();
        sub_227CC565C();
        v6 = v2[2];
      }

      v1 = *(v6 + 16);
      v16 = *(v6 + 24);
      v17 = v1 + 1;
      if (v1 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_12(v16);
        v21 = v20;
        sub_227CC565C();
        v17 = v21;
        v6 = v2[2];
      }

      v3 = (v3 + 1);
      v18 = v2[15];
      v19 = v2[13];
      *(v6 + 16) = v17;
      (v0)(v6 + v9 + v1 * v10, v18, v19);
    }

    else
    {
      (*(v2[14] + 8))(v2[16], v2[13]);
      v3 = (v3 + 1);
    }
  }

  v22 = v2[21];
  v23 = v2[19];
  v24 = v2[12];
  v1 = v2[13];
  v25 = v2[9];

  v26 = sub_227D4A958();
  OUTLINED_FUNCTION_57_1(v25, v27, v28, v26);
  OUTLINED_FUNCTION_45_10();
  sub_227B12A9C(v29, v5);
  OUTLINED_FUNCTION_56_8(&qword_27D7E83D0);
  sub_227D4A948();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v0 = v2[19];
  if (v30)
  {
    goto LABEL_16;
  }

LABEL_27:
  v59 = *(v0 + 16);
  OUTLINED_FUNCTION_51_10();
  sub_227D2CC5C();
  v0 = v60;
LABEL_16:
  OUTLINED_FUNCTION_23_12();
  if (v31)
  {
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v0 = v61;
  }

  v33 = v2[11];
  v32 = v2[12];
  v34 = v2[10];
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_12_17(v33);
  v37(v36 + *(v35 + 40) * v1);
  v38 = v2[17];
  v39 = v2[18] + 1;
  v2[18] = v39;
  v2[19] = v0;
  if (v39 == v38)
  {
    v41 = v2[15];
    v40 = v2[16];
    v42 = v2[12];
    v43 = v2[9];

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X2, X16 }
  }

  v46 = v2[3];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_10_0(v47);
  v50 = v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v49 + 72) * v39;
  v51 = swift_task_alloc();
  v52 = OUTLINED_FUNCTION_67_4(v51);
  *v52 = v53;
  v52[1] = sub_227D25FE4;
  v54 = v2[7];
  v55 = v2[8];
  v56 = v2[6];
  OUTLINED_FUNCTION_135_0();

  return sub_227D2653C();
}

uint64_t sub_227D2653C()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[6] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D265F0()
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v1 = v0[8];
  v2 = v0[2];
  sub_227D4A7E8();
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_227D4A6A8();
  OUTLINED_FUNCTION_42_10();
  v0[9] = v6;
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_174();
  v9(v8);
  v10 = v0[2];
  v0[10] = sub_227D4A7D8();
  v0[11] = v11;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_227D26714;
  v13 = v0[5];
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_128();

  return sub_227D29484();
}

uint64_t sub_227D26714()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[13] = v1;
  v4[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_11();
  }

  else
  {
    v12 = v4[9];

    OUTLINED_FUNCTION_66_10();
    v13 += 736;
    v4[15] = *v13;
    v4[16] = v13 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_227D26848()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  (*(v0 + 120))(*(v0 + 80), *(v0 + 88));
  *(v0 + 136) = v3;
  if (!v3)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    v6 = *(v0 + 32);
    v7 = *(v0 + 16);

    (*(*v4 + 696))(v7, v6);
    *(v0 + 144) = 0;
    v8 = *(v0 + 104);
    v9 = *(v0 + 24);
    OUTLINED_FUNCTION_45();
    *(v0 + 152) = (*(v10 + 704))();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D26984()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[13];
  v2 = v0[8];

  OUTLINED_FUNCTION_115();
  v4 = v0[19];

  return v3(v4);
}

uint64_t sub_227D269F0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[14];
  v4 = v0[8];

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227D26A60()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[17];
  v4 = v0[8];

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227D26AD0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[13];

  v2 = v0[18];
  v3 = v0[8];

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227D26B34()
{
  OUTLINED_FUNCTION_6();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA488, &qword_227D66B58);
  OUTLINED_FUNCTION_5(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v9);
  v10 = sub_227D4A0E8();
  v1[12] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[13] = v11;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_121();
  v1[15] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v14);
  v16 = *(v15 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8360, &unk_227D58BB0);
  v1[17] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[18] = v18;
  v20 = *(v19 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[20] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[21] = v22;
  v24 = *(v23 + 64);
  v1[22] = OUTLINED_FUNCTION_121();
  v1[23] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[24] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v1[25] = v26;
  v28 = *(v27 + 64);
  v1[26] = OUTLINED_FUNCTION_30();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[27] = v29;
  OUTLINED_FUNCTION_10_0(v29);
  v1[28] = v30;
  v32 = *(v31 + 64);
  v1[29] = OUTLINED_FUNCTION_30();
  v33 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_227D26DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[28];
  v16 = *(v14[6] + 16);
  v17 = MEMORY[0x277D84F90];
  v14[31] = 0;
  v14[32] = v17;
  v14[30] = v16;
  if (v16)
  {
    v18 = v14[29];
    v20 = v14[26];
    v19 = v14[27];
    v21 = OUTLINED_FUNCTION_106_5(v15);
    v22(v21);
    sub_227D4A7E8();
    v23 = v14[26];
    sub_227D4A6A8();
    v14[33] = v24;
    OUTLINED_FUNCTION_42_10();
    v43 = v14[29];
    v44 = OUTLINED_FUNCTION_61_13();
    v45(v44);
    v14[34] = sub_227D4A7D8();
    v14[35] = v46;
    v47 = swift_task_alloc();
    v48 = OUTLINED_FUNCTION_99_6(v47);
    *v48 = v49;
    v48[1] = sub_227D2701C;
    v50 = v14[10];
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_0();

    return sub_227D29484();
  }

  else
  {
    v25 = v14[29];
    v26 = v14[26];
    v28 = v14[22];
    v27 = v14[23];
    v29 = v14[19];
    v31 = v14[15];
    v30 = v14[16];
    v32 = v14[14];
    v33 = v14[11];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227D2701C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 288);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[37] = v1;
  v4[38] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_11();
  }

  else
  {
    v12 = v4[33];

    OUTLINED_FUNCTION_66_10();
    v13 += 736;
    v4[39] = *v13;
    v4[40] = v13 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_227D27150()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  (*(v0 + 312))(*(v0 + 272), *(v0 + 280));
  *(v0 + 328) = v3;
  if (!v3)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 280);
    v6 = *(v0 + 232);
    v7 = *(v0 + 72);

    (*(*v4 + 696))(v6, v7);
    *(v0 + 336) = 0;
    v8 = *(v0 + 296);
    v9 = *(v0 + 64);
    OUTLINED_FUNCTION_45();
    *(v0 + 344) = (*(v10 + 704))();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D2728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[35];
  v16 = v14[33];

  v17 = v14[38];
  v18 = OUTLINED_FUNCTION_15_17();
  v19(v18);

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D2735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[37];
  v16 = v14[35];

  v17 = v14[41];
  v18 = OUTLINED_FUNCTION_15_17();
  v19(v18);

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D2742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, unint64_t, void), uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  v20 = v18[37];
  v22 = v18[28];
  v21 = v18[29];
  v23 = v18[27];
  v24 = v18[7];

  v25 = OUTLINED_FUNCTION_39_0();
  v26(v25);
  v133 = *(v24 + 16);
  if (v133)
  {
    v23 = 0;
    a12 = v18[43];
    v27 = v18[21];
    a11 = v18[7] + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v135 = MEMORY[0x277D84F90];
    a9 = *(v27 + 16);
    a10 = *(v27 + 72);
    do
    {
      v28 = v18[21] + 16;
      a9(v18[23], a11 + v23 * a10, v18[20]);
      v31 = 0;
      v19 = *(a12 + 16);
      while (1)
      {
        if (v19 == v31)
        {
          v43 = v18[21];
          OUTLINED_FUNCTION_57_1(v18[11], v29, v30, v18[12]);
          v42 = *(v43 + 8);
          goto LABEL_14;
        }

        v33 = v18[22];
        v32 = v18[23];
        v34 = v18[20];
        (*(v18[13] + 16))(v18[14], v18[43] + ((*(v18[13] + 80) + 32) & ~*(v18[13] + 80)) + *(v18[13] + 72) * v31, v18[12]);
        sub_227D4A0C8();
        sub_227B69F68(&qword_27D7E9C68, &qword_27D7E67C0, &unk_227D4FB20);
        sub_227D4D148();
        sub_227D4D148();
        v36 = v18[21];
        v35 = v18[22];
        v37 = v18[20];
        if (v18[2] == v18[4] && v18[3] == v18[5])
        {
          break;
        }

        v39 = v18[3];
        v40 = v18[5];
        v41 = sub_227D4DA78();

        v42 = *(v36 + 8);
        v42(v35, v37);
        if (v41)
        {
          goto LABEL_13;
        }

        (*(v18[13] + 8))(v18[14], v18[12]);
        v31 = (v31 + 1);
      }

      v44 = v18[5];

      v42 = *(v36 + 8);
      v42(v35, v37);
LABEL_13:
      (*(v18[13] + 32))(v18[11], v18[14], v18[12]);
      OUTLINED_FUNCTION_51_10();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
LABEL_14:
      v50 = v18[11];
      v49 = v18[12];
      v51 = v18[21] + 8;
      v42(v18[23], v18[20]);
      if (__swift_getEnumTagSinglePayload(v50, 1, v49) == 1)
      {
        sub_227B1DE58(v18[11], &qword_27D7EA488, &qword_227D66B58);
      }

      else
      {
        v52 = *(v18[13] + 32);
        v52(v18[15], v18[11], v18[12]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = *(v135 + 16);
          v59 = OUTLINED_FUNCTION_46_10();
          v135 = sub_227D2CD64(v59, v60, v61, v62);
        }

        v54 = *(v135 + 16);
        v53 = *(v135 + 24);
        if (v54 >= v53 >> 1)
        {
          v63 = OUTLINED_FUNCTION_12(v53);
          v135 = sub_227D2CD64(v63, v54 + 1, 1, v135);
        }

        v55 = v18[15];
        v56 = v18[12];
        v57 = v18[13];
        *(v135 + 16) = v54 + 1;
        v52(v135 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v54, v55, v56);
      }

      ++v23;
    }

    while (v23 != v133);
  }

  v64 = v18[43];
  v65 = v18[32];
  v66 = v18[19];
  v67 = v18[16];
  v68 = v18[12];

  v69 = sub_227D4A958();
  OUTLINED_FUNCTION_35_2(v69);
  OUTLINED_FUNCTION_45_10();
  sub_227B12A9C(v70, v19);
  OUTLINED_FUNCTION_56_8(&qword_27D7E83D0);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v18[32];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v130 = *(v72 + 16);
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v72 = v131;
  }

  OUTLINED_FUNCTION_23_12();
  if (v74)
  {
    OUTLINED_FUNCTION_12(v73);
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v72 = v132;
  }

  v76 = v18[18];
  v75 = v18[19];
  v77 = v18[17];
  *(v72 + 16) = v23;
  OUTLINED_FUNCTION_12_17(v76);
  v80(v79 + *(v78 + 40) * v66);
  v81 = v18[42];
  v82 = v18[30];
  v83 = v18[31] + 1;
  v18[31] = v83;
  v18[32] = v72;
  v84 = v18[29];
  if (v83 == v82)
  {
    v85 = v18[26];
    v87 = v18[22];
    v86 = v18[23];
    v88 = v18[19];
    v90 = v18[15];
    v89 = v18[16];
    v91 = v18[14];
    v136 = v18[11];

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_90();

    return v94(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, v133, v136, a15, a16, a17, a18);
  }

  else
  {
    v101 = v18[27];
    v102 = v18[28];
    v103 = v18[26];
    v104 = v18[6];
    OUTLINED_FUNCTION_1_38(v83);
    v105(v84);
    sub_227D4A7E8();
    if (v81)
    {
      v112 = v18[32];
      v113 = v18[28];
      v114 = v18[29];
      OUTLINED_FUNCTION_20_11();
      v115 = v18[14];
      v134 = v115;
      v137 = v18[11];
      (*(v116 + 8))(v114);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_90();

      return v118(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, v134, v137, a15, a16, a17, a18);
    }

    else
    {
      v106 = v18[26];
      sub_227D4A6A8();
      v18[33] = v107;
      OUTLINED_FUNCTION_42_10();
      v108 = v18[29];
      v109 = OUTLINED_FUNCTION_61_13();
      v110(v109);
      v18[34] = sub_227D4A7D8();
      v18[35] = v111;
      v125 = swift_task_alloc();
      v126 = OUTLINED_FUNCTION_99_6(v125);
      *v126 = v127;
      v126[1] = sub_227D2701C;
      v128 = v18[10];
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_90();

      return sub_227D29484();
    }
  }
}

uint64_t sub_227D27B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = *(v14 + 296);

  v16 = *(v14 + 336);
  v17 = OUTLINED_FUNCTION_15_17();
  v18(v17);

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D27BD4()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v7);
  v8 = sub_227D4A4F8();
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v11 = *(v10 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA490, &unk_227D66B70);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  v1[16] = v15;
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_121();
  v1[18] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[20] = v19;
  v21 = *(v20 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[22] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[23] = v23;
  v25 = *(v24 + 64);
  v1[24] = OUTLINED_FUNCTION_121();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v26 = sub_227D4A0E8();
  v1[27] = v26;
  OUTLINED_FUNCTION_10_0(v26);
  v1[28] = v27;
  v29 = *(v28 + 64);
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_227D27E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_142();
  a27 = v30;
  a28 = v31;
  OUTLINED_FUNCTION_168_0();
  a26 = v28;
  v32 = v28[28];
  v33 = v28[8];
  v34 = *(v28[7] + 16);
  v28[31] = v34;
  v28[32] = 0;
  if (v34)
  {
    v35 = v28[30];
    v37 = v28[26];
    v36 = v28[27];
    v38 = v28[21];
    v39 = OUTLINED_FUNCTION_106_5(v32);
    v40(v39);
    sub_227D4A078();
    sub_227D4A7E8();
    v48 = OUTLINED_FUNCTION_57_8();
    v29(v48);
    v49 = sub_227D4A6A8();
    v51 = OUTLINED_FUNCTION_26_15(v49, v50);
    v61 = v28[25];
    (*(v62 + 8))(v51);
    sub_227D4A078();
    v28[34] = sub_227D4A7D8();
    v28[35] = v63;
    (v29)(v28[25], v28[22]);
    v64 = swift_task_alloc();
    v65 = OUTLINED_FUNCTION_99_6(v64);
    *v65 = v66;
    OUTLINED_FUNCTION_7_25(v65);
    OUTLINED_FUNCTION_137();

    return sub_227D29484();
  }

  else
  {
    sub_227B11EE8(v33 + 16, (v28 + 2));
    v41 = v28[5];
    v42 = v28[6];
    __swift_project_boxed_opaque_existential_1(v28 + 2, v41);
    HIBYTE(a16) = 3;
    v44 = v28[29];
    v43 = v28[30];
    v46 = v28[25];
    v45 = v28[26];
    v47 = v28[24];
    v68 = v28[21];
    v69 = v28[18];
    v70 = v28[17];
    v71 = v28[15];
    v72 = v28[14];
    v73 = v28[11];
    (*(v42 + 120))(&a16 + 7, MEMORY[0x277D84F90], v41, v42);

    __swift_destroy_boxed_opaque_existential_0(v28 + 2);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_137();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, v68, v69, v70, v71, v72, v73, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_227D28174()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 288);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[37] = v1;
  v4[38] = v0;

  if (v0)
  {
    v10 = v4[35];
    v11 = v4[33];

    OUTLINED_FUNCTION_54_11();
  }

  else
  {
    v14 = v4[33];

    OUTLINED_FUNCTION_66_10();
    v15 += 736;
    v4[39] = *v15;
    v4[40] = v15 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_227D282BC()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  (*(v0 + 312))(*(v0 + 272), *(v0 + 280));
  *(v0 + 328) = v3;
  if (v3)
  {
    v4 = *(v0 + 280);
  }

  else
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 280);
    v7 = *(v0 + 240);

    OUTLINED_FUNCTION_45();
    (*(v8 + 688))(v7);
    *(v0 + 336) = 0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D283A0()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[30];
  v2 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA010, &qword_227D64430);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[43] = v5;
  *(v5 + 16) = xmmword_227D4E520;
  sub_227D4A078();
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_27_15(v6);

  return sub_227D24240();
}

uint64_t sub_227D28484()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v7 = *(v4 + 352);
  *v6 = *v1;
  *(v5 + 360) = v0;

  v8 = *(v4 + 344);
  if (!v0)
  {
    *(v5 + 368) = v3;
  }

  swift_setDeallocating();
  sub_227D2D030();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D285CC()
{
  v5 = v0[15];
  v4 = v0[16];
  sub_227D29804(v0[46], v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    v6 = v0[37];
    v7 = v0[15];
    (*(v0[28] + 8))(v0[30], v0[27]);

    v8 = &unk_27D7EA490;
    v9 = &unk_227D66B70;
    v10 = v7;
  }

  else
  {
    v11 = v0[17];
    v12 = v0[12];
    sub_227D2D4C0(v0[15], v0[18], &qword_27D7E8288, &unk_227D58A00);
    v13 = OUTLINED_FUNCTION_57_0();
    sub_227D2D450(v13, v14);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      v55 = v0[30];
      v56 = v0[11];
      v57 = v0[8];
      (*(v0[13] + 32))(v0[14], v0[17], v0[12]);
      v58 = v57[6];
      __swift_project_boxed_opaque_existential_1(v57 + 2, v57[5]);
      sub_227D4A0C8();
      v59 = *(v58 + 160);
      v97 = v59 + *v59;
      v60 = v59[1];
      v61 = swift_task_alloc();
      v0[47] = v61;
      *v61 = v0;
      v61[1] = sub_227D28B60;
      v62 = v0[30];
      v63 = v0[14];
      v64 = v0[11];
      OUTLINED_FUNCTION_65();

      __asm { BRAA            X5, X16 }
    }

    OUTLINED_FUNCTION_86_9();
    v15 = v0[27];
    v16 = v0[28];
    v1 = v0[17];
    v17 = v0[18];

    v2 = &qword_27D7E8288;
    OUTLINED_FUNCTION_20_6();
    sub_227B1DE58(v18, v19, v20);
    v21 = *(v16 + 8);
    v22 = OUTLINED_FUNCTION_57_0();
    v23(v22);
    OUTLINED_FUNCTION_20_6();
  }

  sub_227B1DE58(v10, v8, v9);
  v24 = v0[45];
  OUTLINED_FUNCTION_121_7();
  if (v26)
  {
    OUTLINED_FUNCTION_108_8();
    v95 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_134_5(v27, v28);
    OUTLINED_FUNCTION_59_8();
    while (1)
    {
      v29 = OUTLINED_FUNCTION_73_6();
      v30(v29);
      sub_227D4A078();
      sub_227D4A7D8();
      v31 = OUTLINED_FUNCTION_74_8();
      v32(v31);
      v33 = *(v1 + 8);
      v1 += 8;
      v34 = OUTLINED_FUNCTION_174();
      v35(v34);
      if (v24)
      {
        break;
      }

      OUTLINED_FUNCTION_119_8();
      if (v37)
      {
        v46 = OUTLINED_FUNCTION_12(v36);
        sub_227B3CA88(v46, v2, 1);
      }

      OUTLINED_FUNCTION_60_14();
      if (v26)
      {
        OUTLINED_FUNCTION_36_10(v38, v39, v40, v41, v42, v43, v44, v45, v91, v92, v93, v94, v95);
        v67();

        __swift_destroy_boxed_opaque_existential_0(v0 + 2);

        OUTLINED_FUNCTION_18();
        goto LABEL_22;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
LABEL_21:
    v77 = v0[29];
    v76 = v0[30];
    v79 = v0[25];
    v78 = v0[26];
    OUTLINED_FUNCTION_21_8();
    v80 = v0[15];
    v96 = v0[14];
    v98 = v0[11];

    OUTLINED_FUNCTION_19_0();
LABEL_22:
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  v47 = v0[30];
  v48 = v0[27];
  v49 = v0[28];
  v50 = v0[26];
  v51 = v0[21];
  v52 = v0[7];
  OUTLINED_FUNCTION_1_38(v25);
  v53(v47);
  sub_227D4A078();
  sub_227D4A7E8();
  if (v24)
  {
    v54 = OUTLINED_FUNCTION_115_6();
    (*(v72 + 8))(v54);
    v73 = *(v51 + 8);
    v74 = OUTLINED_FUNCTION_57_0();
    v75(v74);
    goto LABEL_21;
  }

  v68 = OUTLINED_FUNCTION_57_8();
  v3(v68);
  v69 = sub_227D4A6A8();
  v71 = OUTLINED_FUNCTION_26_15(v69, v70);
  v83 = v0[25];
  (*(v84 + 8))(v71);
  sub_227D4A078();
  v0[34] = sub_227D4A7D8();
  v0[35] = v85;
  (v3)(v0[25], v0[22]);
  v86 = swift_task_alloc();
  v87 = OUTLINED_FUNCTION_99_6(v86);
  *v87 = v88;
  OUTLINED_FUNCTION_7_25();
  OUTLINED_FUNCTION_65();

  return sub_227D29484();
}

uint64_t sub_227D28B60()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = v2[47];
  *v4 = *v1;
  *(v3 + 384) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227D28CB8()
{
  OUTLINED_FUNCTION_86_9();
  OUTLINED_FUNCTION_131_6();
  (*(v5 + 8))(v2, v3);
  sub_227B1DE58(v0, &qword_27D7E8288, &unk_227D58A00);
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_57_0();
  v9(v8);
  v10 = v1[48];
  OUTLINED_FUNCTION_121_7();
  if (v12)
  {
    OUTLINED_FUNCTION_108_8();
    v69 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    OUTLINED_FUNCTION_87_9();
    OUTLINED_FUNCTION_134_5(v13, v14);
    OUTLINED_FUNCTION_59_8();
    while (1)
    {
      v15 = OUTLINED_FUNCTION_73_6();
      v16(v15);
      sub_227D4A078();
      sub_227D4A7D8();
      v17 = OUTLINED_FUNCTION_74_8();
      v18(v17);
      v19 = *(v2 + 8);
      v2 += 8;
      v20 = OUTLINED_FUNCTION_174();
      v21(v20);
      if (v10)
      {
        break;
      }

      OUTLINED_FUNCTION_119_8();
      if (v23)
      {
        v32 = OUTLINED_FUNCTION_12(v22);
        sub_227B3CA88(v32, v3, 1);
      }

      OUTLINED_FUNCTION_60_14();
      if (v12)
      {
        OUTLINED_FUNCTION_36_10(v24, v25, v26, v27, v28, v29, v30, v31, v65, v66, v67, v68, v69);
        v41();

        __swift_destroy_boxed_opaque_existential_0(v1 + 2);

        OUTLINED_FUNCTION_18();
        goto LABEL_15;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
LABEL_14:
    v51 = v1[29];
    v50 = v1[30];
    v53 = v1[25];
    v52 = v1[26];
    OUTLINED_FUNCTION_21_8();
    v54 = v1[15];
    v70 = v1[14];
    v71 = v1[11];

    OUTLINED_FUNCTION_19_0();
LABEL_15:
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  v33 = v1[30];
  v34 = v1[27];
  v35 = v1[28];
  v36 = v1[26];
  v37 = v1[21];
  v38 = v1[7];
  OUTLINED_FUNCTION_1_38(v11);
  v39(v33);
  sub_227D4A078();
  sub_227D4A7E8();
  if (v10)
  {
    v40 = OUTLINED_FUNCTION_115_6();
    (*(v46 + 8))(v40);
    v47 = *(v37 + 8);
    v48 = OUTLINED_FUNCTION_57_0();
    v49(v48);
    goto LABEL_14;
  }

  v42 = OUTLINED_FUNCTION_57_8();
  v6(v42);
  v43 = sub_227D4A6A8();
  v45 = OUTLINED_FUNCTION_26_15(v43, v44);
  v57 = v1[25];
  (*(v58 + 8))(v45);
  sub_227D4A078();
  v1[34] = sub_227D4A7D8();
  v1[35] = v59;
  (v6)(v1[25], v1[22]);
  v60 = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_99_6(v60);
  *v61 = v62;
  OUTLINED_FUNCTION_7_25();
  OUTLINED_FUNCTION_65();

  return sub_227D29484();
}

uint64_t sub_227D2905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  (*(v14[28] + 8))(v14[30], v14[27]);
  v15 = v14[38];
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D29124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_86_9();
  v15 = v14[27];
  v16 = v14[28];

  v17 = OUTLINED_FUNCTION_39_0();
  v18(v17);
  v19 = v14[41];
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D291F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_86_9();
  v15 = v14[27];
  v16 = v14[28];

  v17 = OUTLINED_FUNCTION_39_0();
  v18(v17);
  v19 = v14[42];
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D292BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_86_9();
  v15 = v14[27];
  v16 = v14[28];

  v17 = OUTLINED_FUNCTION_39_0();
  v18(v17);
  v19 = v14[45];
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D29388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_86_9();
  OUTLINED_FUNCTION_131_6();
  (*(v19 + 8))(v16, v17);
  sub_227B1DE58(v14, &qword_27D7E8288, &unk_227D58A00);
  v20 = *(v18 + 8);
  v21 = OUTLINED_FUNCTION_57_0();
  v22(v21);
  v23 = *(v15 + 384);
  OUTLINED_FUNCTION_9_15();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_16_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227D29484()
{
  OUTLINED_FUNCTION_20();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_227D29530;

  return sub_227CACB7C();
}

uint64_t sub_227D29530()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_227D29648()
{
  v1 = *(v0[4] + 96);
  v0[6] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[7] = *(*v1 + 96);
  v0[8] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D29684, v1);
}

uint64_t sub_227D29684()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  *(v0 + 72) = (*(v0 + 56))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_227D296E8()
{
  OUTLINED_FUNCTION_119();
  v1 = sub_227BD8C70(v0[2], v0[3], v0[9]);

  if (v1)
  {
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_141_5();

    __asm { BRAA            X2, X16 }
  }

  v5 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_35_9();

  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_110_6();
  OUTLINED_FUNCTION_0_56();
  sub_227B12A9C(v6, v7);
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_57_0();
  sub_227D49D98();

  swift_willThrow();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_141_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227D29804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  v6 = v5;
  if (v4)
  {
    sub_227D2D450(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227D298CC()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_0_56();
  sub_227B12A9C(v0, v1);
  OUTLINED_FUNCTION_78_0();
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227D29978()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_121();
  v1[15] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D29A8C()
{
  v24 = v0;
  v1 = v0[13];
  v2 = v0[8];
  v3 = *(v0[7] + 16);
  v0[16] = v3;
  v0[17] = 0;
  if (v3)
  {
    v4 = v0[15];
    v5 = v0[12];
    v6 = OUTLINED_FUNCTION_106_5(v1);
    v7(v6);
    v0[18] = sub_227D4A7D8();
    v0[19] = v8;
    v9 = v0[15];
    v16 = v0[11];
    sub_227D4A7E8();
    v17 = v0[11];
    v0[20] = sub_227D4A6A8();
    v0[21] = v18;
    v20 = OUTLINED_FUNCTION_100_7();
    v21(v20);
    v22 = swift_task_alloc();
    v0[22] = v22;
    *v22 = v0;
    OUTLINED_FUNCTION_27_15(v22);
    OUTLINED_FUNCTION_236();

    return sub_227CACB7C();
  }

  else
  {
    sub_227B11EE8(v2 + 16, (v0 + 2));
    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    v23[0] = 3;
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[11];
    (*(v11 + 120))(v23, MEMORY[0x277D84F90], v10, v11);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    OUTLINED_FUNCTION_18();

    return v15();
  }
}

uint64_t sub_227D29CF8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[23] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = v3[19];

    v3[32] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D29E14()
{
  v1 = *(v0[8] + 96);
  v0[24] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[25] = *(*v1 + 96);
  v0[26] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D29E50, v1);
}

uint64_t sub_227D29E50()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  *(v0 + 216) = (*(v0 + 200))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D29EB4()
{
  OUTLINED_FUNCTION_119();
  if (*(v0[27] + 16) && (v1 = sub_227B2664C(v0[20], v0[21]), v2 = v0[27], (v3 & 1) != 0))
  {
    v4 = v1;
    v5 = v0[21];

    v6 = *(*(v2 + 56) + 8 * v4);
    v0[28] = v6;

    v7 = *v6 + 736;
    v0[29] = *v7;
    v0[30] = v7 & 0xFFFFFFFFFFFFLL | 0xC669000000000000;
  }

  else
  {
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[19];

    OUTLINED_FUNCTION_35_9();

    OUTLINED_FUNCTION_8_19();

    OUTLINED_FUNCTION_110_6();
    OUTLINED_FUNCTION_0_56();
    sub_227B12A9C(v11, v12);
    v13 = OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    v0[32] = v13;
  }

  OUTLINED_FUNCTION_141_5();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227D2A024()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);
  (*(v0 + 232))(*(v0 + 144), *(v0 + 152));
  *(v0 + 248) = v3;
  if (v3)
  {
    v4 = *(v0 + 152);
  }

  else
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 152);
    v7 = *(v0 + 120);

    OUTLINED_FUNCTION_45();
    (*(v8 + 720))(v7);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D2A0F4()
{
  OUTLINED_FUNCTION_20();
  v1 = OUTLINED_FUNCTION_92_5();
  v2(v1);
  v3 = v0[32];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227D2A17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void, uint64_t, void), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_142();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_168_0();
  a26 = v28;
  v31 = v28[28];
  v32 = v28[15];
  v33 = v28[12];
  v34 = v28[13];

  v35 = OUTLINED_FUNCTION_39_0();
  v36(v35);
  v37 = v28[31];
  v38 = v28[16];
  v39 = v28[17] + 1;
  v28[17] = v39;
  if (v39 == v38)
  {
    OUTLINED_FUNCTION_108_8();
    a11 = v28[6];
    a12 = v28[5];
    a10 = __swift_project_boxed_opaque_existential_1(v28 + 2, a12);
    HIBYTE(a15) = 3;
    v40 = v28[16];
    v41 = v28[13];
    v42 = v28[7];
    a16 = MEMORY[0x277D84F90];
    sub_227B3CA88(0, v40, 0);
    v43 = 0;
    v44 = a16;
    v45 = v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v46 = *(v41 + 72);
    a13 = v46;
    a14 = *(v41 + 16);
    while (1)
    {
      v47 = v28[13] + 16;
      a14(v28[14], v45, v28[12]);
      v48 = sub_227D4A7D8();
      v50 = v49;
      (*(v28[13] + 8))(v28[14], v28[12]);
      if (v37)
      {
        break;
      }

      a16 = v44;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        v55 = OUTLINED_FUNCTION_12(v51);
        sub_227B3CA88(v55, v52 + 1, 1);
        v44 = a16;
      }

      v37 = 0;
      ++v43;
      v53 = v28[16];
      *(v44 + 16) = v52 + 1;
      v54 = v44 + 16 * v52;
      *(v54 + 32) = v48;
      *(v54 + 40) = v50;
      v45 += a13;
      if (v43 == v53)
      {
        v63 = v28[14];
        v62 = v28[15];
        v64 = v28[11];
        (*(a11 + 120))(&a15 + 7, v44, a12);

        __swift_destroy_boxed_opaque_existential_0(v28 + 2);

        OUTLINED_FUNCTION_18();
        goto LABEL_13;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v28 + 2);
  }

  else
  {
    v56 = v28[15];
    v57 = v28[12];
    v58 = v28[13];
    v59 = v28[7];
    OUTLINED_FUNCTION_1_38(v39);
    v60(v56);
    v28[18] = sub_227D4A7D8();
    v28[19] = v61;
    if (!v37)
    {
      v65 = v28[11];
      v66 = v28[15];
      sub_227D4A7E8();
      v67 = v28[11];
      v28[20] = sub_227D4A6A8();
      v28[21] = v68;
      v81 = OUTLINED_FUNCTION_100_7();
      v82(v81);
      v83 = swift_task_alloc();
      v28[22] = v83;
      *v83 = v28;
      OUTLINED_FUNCTION_27_15(v83);
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_137();

      return sub_227CACB7C();
    }

    (*(v28[13] + 8))(v28[15], v28[12]);
  }

  v70 = v28[14];
  v69 = v28[15];
  v71 = v28[11];

  OUTLINED_FUNCTION_19_0();
LABEL_13:
  OUTLINED_FUNCTION_137();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227D2A4E0()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[28];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  v5 = OUTLINED_FUNCTION_39_0();
  v6(v5);
  v7 = v0[31];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227D2A578()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8428, &unk_227D61E60);
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_121();
  v1[7] = swift_task_alloc();
  v7 = sub_227D4A548();
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_121();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_64_0(v11);
  v12 = sub_227D49328();
  v1[12] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v16 = type metadata accessor for GameServicesEnvironment(0);
  v1[15] = v16;
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D2A6F4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[18] = 0;
  v0[19] = v2;
  v0[17] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
    OUTLINED_FUNCTION_5(v3);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_67_4(v6);
    *v7 = v8;
    OUTLINED_FUNCTION_90_6(v7);
    OUTLINED_FUNCTION_164();

    return sub_227D2AED0();
  }

  else
  {
    OUTLINED_FUNCTION_135_8();

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_164();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_227D2A84C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  *(v3 + 168) = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_105_9();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D2AED0()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D2AF80()
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v1 = v0[6];
  v2 = v0[2];
  sub_227D4A808();
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_227D4A6A8();
  OUTLINED_FUNCTION_42_10();
  v0[7] = v6;
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_174();
  v9(v8);
  v10 = v0[2];
  v0[8] = sub_227D4A7F8();
  v0[9] = v11;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_227D2B0A4;
  v13 = v0[3];
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_128();

  return sub_227D29484();
}

uint64_t sub_227D2B0A4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v4[11] = v1;
  v4[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_11();
  }

  else
  {
    v12 = v4[7];

    OUTLINED_FUNCTION_66_10();
    v13 += 744;
    v4[13] = *v13;
    v4[14] = v13 & 0xFFFFFFFFFFFFLL | 0x6619000000000000;
    OUTLINED_FUNCTION_98_8();
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_227D2B1D8()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 64), *(v0 + 72));
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = sub_227D2D528;
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);

    OUTLINED_FUNCTION_45();
    v8 += 560;
    *(v0 + 128) = *v8;
    *(v0 + 136) = v8 & 0xFFFFFFFFFFFFLL | 0x43D9000000000000;
    v4 = sub_227D2B298;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}