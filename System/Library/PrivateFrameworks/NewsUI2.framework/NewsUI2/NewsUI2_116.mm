uint64_t sub_2193DDA8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_2193DDAAC(uint64_t a1, uint64_t a2)
{
  sub_218F357C4();
  sub_219BE3204();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_219BE2E54();
  type metadata accessor for MagazineCategoryConfig(0);
  v6 = sub_219BE2F64();

  return v6;
}

uint64_t sub_2193DDB7C()
{
  type metadata accessor for MagazineConfig();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_218F357C4();
  v1 = sub_219BE2F84();

  return v1;
}

void sub_2193DDC40()
{
  if (!qword_280E92180)
  {
    sub_21915A644();
    sub_21915A698();
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92180);
    }
  }
}

uint64_t sub_2193DDCA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2193DDCF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2193DDD88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193DDDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2193DDE58()
{
  result = qword_27CC19C98;
  if (!qword_27CC19C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19C98);
  }

  return result;
}

uint64_t sub_2193DDEAC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

unint64_t sub_2193DDF1C()
{
  result = qword_27CC19CA0;
  if (!qword_27CC19CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19CA0);
  }

  return result;
}

uint64_t sub_2193DDF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2193DE0FC();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

unint64_t sub_2193DDFF4()
{
  result = qword_27CC19CA8;
  if (!qword_27CC19CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19CA8);
  }

  return result;
}

unint64_t sub_2193DE04C()
{
  result = qword_27CC19CB0;
  if (!qword_27CC19CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19CB0);
  }

  return result;
}

unint64_t sub_2193DE0A4()
{
  result = qword_27CC19CB8;
  if (!qword_27CC19CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19CB8);
  }

  return result;
}

unint64_t sub_2193DE0FC()
{
  result = qword_27CC19CC0;
  if (!qword_27CC19CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19CC0);
  }

  return result;
}

unint64_t sub_2193DE154()
{
  result = qword_27CC19CC8;
  if (!qword_27CC19CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19CC8);
  }

  return result;
}

uint64_t sub_2193DE1A8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  v7 = [*(a2 + 16) identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_219BF78F4();
  }

  return v12 & 1;
}

uint64_t type metadata accessor for SponsoredBannerTagFeedGroupConfigData()
{
  result = qword_280E98D50;
  if (!qword_280E98D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2193DE2E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193DE814(0, &qword_280E8C7D0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DE7C0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 9;
    v13 = type metadata accessor for SponsoredBannerTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2193DE54C(void *a1)
{
  v3 = v1;
  sub_2193DE814(0, &qword_27CC19CD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DE7C0();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SponsoredBannerTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2193DE718(uint64_t a1)
{
  v2 = sub_2193DE7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193DE754(uint64_t a1)
{
  v2 = sub_2193DE7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2193DE7C0()
{
  result = qword_280E98D88;
  if (!qword_280E98D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98D88);
  }

  return result;
}

void sub_2193DE814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193DE7C0();
    v7 = a3(a1, &type metadata for SponsoredBannerTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2193DE88C()
{
  result = qword_27CC19CD8;
  if (!qword_27CC19CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19CD8);
  }

  return result;
}

unint64_t sub_2193DE8E4()
{
  result = qword_280E98D78;
  if (!qword_280E98D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98D78);
  }

  return result;
}

unint64_t sub_2193DE93C()
{
  result = qword_280E98D80;
  if (!qword_280E98D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98D80);
  }

  return result;
}

uint64_t sub_2193DE990()
{
  sub_21879D924();
  swift_allocObject();
  swift_weakInit();
  sub_219BE2F54();
  sub_2193DF02C();
  v0 = sub_219BE31C4();

  return v0;
}

uint64_t sub_2193DEA40(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  sub_2193E0D44(0, &qword_27CC16EF0, type metadata accessor for RecipeFilterConfigFetchResult, MEMORY[0x277D83D88]);
  *(v2 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193DEB00, 0, 0);
}

uint64_t sub_2193DEB00()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_218718690(Strong + 24, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2193DEC80;
    v3 = v0[11];

    return sub_219A960E0(v3);
  }

  else
  {
    v5 = v0[11];
    v6 = type metadata accessor for RecipeFilterConfigFetchResult();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_2193E0DA8(v5, &qword_27CC16EF0, type metadata accessor for RecipeFilterConfigFetchResult);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2193DEC80()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2193DEE68;
  }

  else
  {
    v2 = sub_2193DED94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193DED94()
{
  v1 = *(v0 + 88);
  v2 = type metadata accessor for RecipeFilterConfigFetchResult();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_2193E0DA8(v1, &qword_27CC16EF0, type metadata accessor for RecipeFilterConfigFetchResult);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2193DEE68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (qword_280EE5F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62568);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "RecipeBoxFeedOfflineFeedBuilder failed to fetch recipe filter config with error:%{public}@", v8, 0xCu);
    sub_2193E0DA8(v9, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2193DF02C()
{
  v0 = CACurrentMediaTime();
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Will rebuild offline feed", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  type metadata accessor for RecipeBoxFeedServiceConfig();
  sub_219BE3204();
  v4 = sub_219BE2E54();
  sub_2193DFA28();
  sub_219BE2F84();

  v5 = sub_219BE2E54();
  sub_2193DFD10();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v0;
  v6 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(0);
  sub_219BE2F94();

  v7 = sub_219BE2E54();
  v8 = sub_219BE2FE4();

  return v8;
}

uint64_t sub_2193DF294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2193DF418();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193E0768(a1, v6, sub_2193DF418);
  return sub_2187545A0(v6, a2, type metadata accessor for OfflineFeedManifest);
}

uint64_t sub_2193DF350()
{
  sub_2193DF418();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(0);
  v1 = sub_219BE2F94();

  return v1;
}

void sub_2193DF418()
{
  if (!qword_27CC19CE8)
  {
    type metadata accessor for OfflineFeedManifest(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19CE8);
    }
  }
}

uint64_t sub_2193DF484(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2193DEA40(a1, v1);
}

uint64_t sub_2193DF520(uint64_t a1)
{
  v2 = *(*a1 + 152);
  v3 = *(a1 + *(*a1 + 160));
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v4 = sub_219BED2D4();
  swift_getObjectType();
  swift_getKeyPath();
  v5 = sub_219BF6A94();

  v6 = *(a1 + v2);
  v7 = [*(v6 + 32) appConfiguration];
  sub_2193E0D44(0, &qword_27CC19D10, type metadata accessor for RecipeBoxFeedConfigFetchResult, MEMORY[0x277D6CF30]);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v5;

  sub_219BE2F54();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v7;

  swift_unknownObjectRetain();
  v10 = sub_219BE2E54();
  type metadata accessor for RecipeBoxFeedServiceConfig();
  v11 = sub_219BE2F74();

  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_2193DF748(uint64_t a1)
{
  v2 = type metadata accessor for RecipeBoxFeedServiceConfig();
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  MEMORY[0x28223BE20](v2);
  sub_218701944(0, &qword_280E909D8, MEMORY[0x277D33098]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  sub_218714794(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
  sub_219BF0F44();
  sub_2187012DC();
  sub_218714794(&qword_280E90B08, sub_2187012DC);
  sub_219BEDF14();
  (*(v6 + 8))(v8, v5);
  sub_2193E0768(a1, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeBoxFeedServiceConfig);
  v9 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v10 = swift_allocObject();
  sub_2187545A0(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for RecipeBoxFeedServiceConfig);
  v11 = sub_219BE2E54();
  sub_2193DFA28();
  v12 = sub_219BE2F74();

  return v12;
}

void sub_2193DFA28()
{
  if (!qword_27CC19CF8)
  {
    sub_2193E0D44(255, &qword_27CC19D00, type metadata accessor for RecipeBoxFeedGroup, MEMORY[0x277D83940]);
    type metadata accessor for RecipeBoxFeedServiceConfig();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19CF8);
    }
  }
}

uint64_t sub_2193DFAC8(uint64_t a1)
{
  sub_2193DFA28();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecipeBoxFeedServiceConfig();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  sub_2193E0768(a1, v5, sub_2193DFA28);
  sub_2187545A0(&v5[*(v3 + 56)], v12, type metadata accessor for RecipeBoxFeedServiceConfig);
  sub_2193DFD80();

  sub_2193E0768(v12, v9, type metadata accessor for RecipeBoxFeedServiceConfig);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_2187545A0(v9, v14 + v13, type metadata accessor for RecipeBoxFeedServiceConfig);
  v15 = sub_219BE2E54();
  sub_2193DFD10();
  v16 = sub_219BE2F74();

  sub_2193E07D0(v12, type metadata accessor for RecipeBoxFeedServiceConfig);
  return v16;
}

void sub_2193DFD10()
{
  if (!qword_27CC19D08)
  {
    type metadata accessor for OfflineFeedManifest(255);
    type metadata accessor for RecipeBoxFeedServiceConfig();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19D08);
    }
  }
}

uint64_t sub_2193DFD80()
{
  v1 = v0;
  v2 = CACurrentMediaTime();
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Will process groups", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v6);
  type metadata accessor for OfflineFeedManifest(0);
  sub_219BE3204();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;

  v8 = sub_219BE2E54();
  sub_219BE2F74();

  v9 = sub_219BE2E54();
  v10 = sub_219BE2FD4();

  return v10;
}

uint64_t sub_2193DFF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_2193DFD10();
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipeBoxFeedServiceConfig();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OfflineFeedManifest(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();
  if (!os_log_type_enabled(v16, v17))
  {
    goto LABEL_6;
  }

  v31 = v9;
  v32 = v11;
  v18 = v4;
  v19 = swift_slowAlloc();
  *v19 = 134349056;
  result = sub_219BF5CD4();
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(v19 + 4) = v21;
  _os_log_impl(&dword_2186C1000, v16, v17, "Did rebuild offline feed, time=%{public}lldms", v19, 0xCu);
  MEMORY[0x21CECF960](v19, -1, -1);
  v4 = v18;
  v9 = v31;
  v11 = v32;
LABEL_6:

  sub_2193E0768(a1, v6, sub_2193DFD10);
  v22 = *(v4 + 48);
  sub_2187545A0(v6, v15, type metadata accessor for OfflineFeedManifest);
  sub_2187545A0(&v6[v22], v9, type metadata accessor for RecipeBoxFeedServiceConfig);
  v23 = *&v9[*(v7 + 24)];
  if (!v23 || (v24 = [v23 contentManifest]) == 0)
  {
    v24 = [objc_opt_self() empty];
  }

  v25 = v33;
  OfflineFeedManifest.init(_:)(v24, v33);
  sub_2193E0D44(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v26 = *(v11 + 72);
  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09EC0;
  v29 = v28 + v27;
  sub_2193E0768(v15, v29, type metadata accessor for OfflineFeedManifest);
  sub_2193E0768(v25, v29 + v26, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v28, v34);
  sub_2193E07D0(v25, type metadata accessor for OfflineFeedManifest);
  sub_2193E07D0(v15, type metadata accessor for OfflineFeedManifest);
  return sub_2193E07D0(v9, type metadata accessor for RecipeBoxFeedServiceConfig);
}

uint64_t sub_2193E03A4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  v5 = swift_allocObject();

  *(v5 + 16) = sub_218B18AD0(v6);
  v7 = type metadata accessor for OfflineFeedManifest(0);
  v8 = swift_allocBox();
  v10 = v9;
  if (qword_280ED0C20 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_280ED0C30);
  sub_2193E0768(v11, v10, type metadata accessor for OfflineFeedManifest);
  v12 = sub_218B19C20(v5, v8, a2, a1 + v4);

  return v12;
}

uint64_t sub_2193E04E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_6;
  }

  v6 = swift_slowAlloc();
  *v6 = 134349056;
  result = sub_219BF5CD4();
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < 9.22337204e18)
  {
    *(v6 + 4) = v8;
    _os_log_impl(&dword_2186C1000, v4, v5, "Did process groups, time=%{public}lldms", v6, 0xCu);
    MEMORY[0x21CECF960](v6, -1, -1);
LABEL_6:

    return sub_2193E0768(a1, a2, type metadata accessor for OfflineFeedManifest);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2193E0628(void *a1, uint64_t a2, const char *a3)
{
  v5 = a1;
  oslog = sub_219BE5414();
  v6 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, oslog, v6, a3, v7, 0xCu);
    sub_2193E0DA8(v8, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }
}

uint64_t sub_2193E0768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193E07D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2193E0830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecipeBoxFeedServiceConfig() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_2193DFD10();
  v8 = *(v7 + 48);
  sub_2193E0768(a1, a2, type metadata accessor for OfflineFeedManifest);
  return sub_2193E0768(v2 + v6, a2 + v8, type metadata accessor for RecipeBoxFeedServiceConfig);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = type metadata accessor for RecipeBoxFeedServiceConfig();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  v6 = type metadata accessor for RecipeBoxFeedConfig();

  v7 = *(v6 + 24);
  v8 = sub_219BEE5B4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  v10 = *(type metadata accessor for RecipeBoxFeedContentConfig() + 20);
  sub_218701944(0, &qword_27CC0C448, MEMORY[0x277D321A0]);
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  swift_unknownObjectRelease();
  v12 = v1[8];
  v13 = sub_219BEEA84();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  return swift_deallocObject();
}

uint64_t sub_2193E0BC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for RecipeBoxFeedServiceConfig() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *a1;
  sub_2193DFA28();
  v9 = *(v8 + 48);
  *a2 = v7;
  sub_2193E0768(v2 + v6, a2 + v9, type metadata accessor for RecipeBoxFeedServiceConfig);
}

uint64_t sub_2193E0C70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219755CA8(a1);
}

void sub_2193E0D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2193E0DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2193E0D44(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2193E0F5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2193E0FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = type metadata accessor for SportsManagementSectionDescriptor();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SportsManagementLayoutSectionDescriptor();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v17[-v14];
  sub_2189522EC();
  sub_219BE6934();
  sub_2193E11FC(v9, a3, v15);
  sub_2193E2948(v9, type metadata accessor for SportsManagementSectionDescriptor);
  sub_2193E28E0(v15, v13, type metadata accessor for SportsManagementLayoutSectionDescriptor);
  v18 = a3;
  v19 = a1;
  v20 = a2;
  sub_21894AA1C(sub_2193E28BC, v17);
  type metadata accessor for SportsManagementLayoutModel();
  sub_2193E0F5C(&qword_27CC0AFA0, type metadata accessor for SportsManagementLayoutSectionDescriptor);
  sub_2193E0F5C(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel);
  sub_219BE8174();
  return sub_2193E2948(v15, type metadata accessor for SportsManagementLayoutSectionDescriptor);
}

uint64_t sub_2193E11FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v61 = type metadata accessor for TitleViewLayoutOptions(0);
  MEMORY[0x28223BE20](v61);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF3AF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsManagementSectionDescriptor();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v56 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v56 - v20);
  sub_2193E28E0(a1, &v56 - v20, type metadata accessor for SportsManagementSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *v21;
      v58 = v21[1];
      v24 = v21[2];
      sub_2193E28E0(a1, v16, type metadata accessor for SportsManagementSectionDescriptor);
      v25 = swift_getEnumCaseMultiPayload();
      v26 = v24;
      if (v25)
      {
        if (v25 == 1)
        {
          v57 = 0x6E656D6D6F636572;
          sub_2193E2948(v16, type metadata accessor for SportsManagementSectionDescriptor);
          v27 = 0xEB00000000646564;
        }

        else
        {
          (*(v10 + 32))(v12, v16, v9);
          v57 = sub_219BF3AD4();
          v27 = v37;
          (*(v10 + 8))(v12, v9);
        }
      }

      else
      {
        v57 = 0x657469726F766166;
        sub_2193E2948(v16, type metadata accessor for SportsManagementSectionDescriptor);
        v27 = 0xE900000000000073;
      }

      v38 = sub_218BE58D8();
      v40 = v39;
      v41 = sub_218BE5B74();
      v43 = v42;
      v44 = sub_2193F94FC(v23, v26);
      v46 = v45;

      *&v63 = v57;
      *(&v63 + 1) = v27;
      *&v64 = v38;
      *(&v64 + 1) = v40;
      *&v65 = v41;
      *(&v65 + 1) = v43;
      *&v66 = 0;
      *(&v66 + 1) = v44;
      v67 = v46;
      goto LABEL_17;
    }

    (*(v10 + 8))(v21, v9);
  }

  else
  {
    sub_2193E2948(v21, type metadata accessor for SportsManagementSectionDescriptor);
  }

  sub_2193E28E0(a1, v19, type metadata accessor for SportsManagementSectionDescriptor);
  v28 = swift_getEnumCaseMultiPayload();
  if (v28)
  {
    if (v28 == 1)
    {
      v29 = 0x6E656D6D6F636572;
      sub_2193E2948(v19, type metadata accessor for SportsManagementSectionDescriptor);
      v30 = 0xEB00000000646564;
    }

    else
    {
      (*(v10 + 32))(v12, v19, v9);
      v29 = sub_219BF3AD4();
      v30 = v31;
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    v29 = 0x657469726F766166;
    sub_2193E2948(v19, type metadata accessor for SportsManagementSectionDescriptor);
    v30 = 0xE900000000000073;
  }

  v32 = sub_218BE58D8();
  v34 = v33;
  v35 = sub_218BE5B74();
  *&v63 = v29;
  *(&v63 + 1) = v30;
  *&v64 = v32;
  *(&v64 + 1) = v34;
  *&v65 = v35;
  *(&v65 + 1) = v36;
  v67 = 0;
  v66 = 0uLL;
LABEL_17:
  v48 = v61;
  v47 = v62;
  v49 = v60;
  __swift_project_boxed_opaque_existential_1((v59 + 56), *(v59 + 80));
  v50 = sub_219BE8164();
  (*(*(v50 - 8) + 16))(v6, v49, v50);
  *&v6[v48[5]] = 0x4024000000000000;
  *&v6[v48[6]] = 0x4024000000000000;
  v6[v48[7]] = 2;
  sub_219459814(&v63, *&v6, v47);
  sub_2193E2948(v6, type metadata accessor for TitleViewLayoutOptions);
  sub_218D57484();
  v52 = *(v51 + 48);
  v53 = v66;
  *(a3 + 32) = v65;
  *(a3 + 48) = v53;
  *(a3 + 64) = v67;
  v54 = v64;
  *a3 = v63;
  *(a3 + 16) = v54;
  return sub_2193E29A8(v47, a3 + v52, type metadata accessor for TitleViewLayoutAttributes);
}

uint64_t sub_2193E17C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v134 = a2;
  v133 = a1;
  v136 = a3;
  v137 = type metadata accessor for SportsManagementLayoutModel();
  MEMORY[0x28223BE20](v137);
  v132 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for SportsManagementSectionDescriptor();
  v4 = MEMORY[0x28223BE20](v135);
  v118 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v116 = &v116 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v122 = &v116 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v121 = &v116 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v116 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v119 = &v116 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v116 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v129 = &v116 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v128 = &v116 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v126 = &v116 - v24;
  MEMORY[0x28223BE20](v23);
  v125 = &v116 - v25;
  v26 = sub_219BE8164();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v124 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v130 = &v116 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v116 - v32;
  v131 = type metadata accessor for SportsTagLayoutOptions();
  v34 = MEMORY[0x28223BE20](v131);
  v117 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v123 = &v116 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v116 - v38;
  v127 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v127);
  v41 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v42);
  v44 = (&v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2189525B0();
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v133;
    v46 = *v44;
    sub_2189522EC();
    sub_219BE6934();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_2193E2948(v18, type metadata accessor for SportsManagementSectionDescriptor);
    v48 = *(v27 + 2);
    v49 = v27;
    if (EnumCaseMultiPayload)
    {
      v48(v130, v45, v26);
      v50 = v119;
      sub_219BE6934();
      v51 = v120;
      sub_2193E29A8(v50, v120, type metadata accessor for SportsManagementSectionDescriptor);
      v52 = swift_getEnumCaseMultiPayload();
      v129 = *&v46;
      if (v52)
      {
        if (v52 == 1)
        {
          sub_2193E2948(v51, type metadata accessor for SportsManagementSectionDescriptor);
        }

        else
        {
          v89 = sub_219BF3AF4();
          (*(*(v89 - 8) + 8))(v51, v89);
        }

        v88 = 2;
      }

      else
      {
        sub_2193E2948(v51, type metadata accessor for SportsManagementSectionDescriptor);
        v88 = 4;
      }

      v90 = v132;
      v91 = v131;
      v92 = v121;
      sub_219BE6934();
      v93 = v122;
      sub_2193E29A8(v92, v122, type metadata accessor for SportsManagementSectionDescriptor);
      v94 = swift_getEnumCaseMultiPayload();
      if (v94 < 2)
      {
        sub_2193E2948(v93, type metadata accessor for SportsManagementSectionDescriptor);
      }

      else
      {
        v95 = sub_219BF3AF4();
        (*(*(v95 - 8) + 8))(v93, v95);
      }

      __asm { FMOV            V0.2D, #24.0 }

      v97 = v123;
      *&v123[v91[8]] = _Q0;
      *(v97 + v91[9]) = 0x4020000000000000;
      *(v97 + v91[10]) = 0x4031000000000000;
      v49[4](v97, v130, v26);
      *(v97 + v91[5]) = v88;
      *(v97 + v91[6]) = v94 > 1;
      *(v97 + v91[11]) = 0;
      *(v97 + v91[7]) = 0;
      v98 = v129;
      sub_219AE5AF0(*&v129, v97, &v138);
      v99 = v146;
      *(v90 + 152) = v147;
      v100 = v149;
      *(v90 + 168) = v148;
      *(v90 + 184) = v100;
      v101 = v142;
      *(v90 + 88) = v143;
      v102 = v145;
      *(v90 + 104) = v144;
      *(v90 + 120) = v102;
      *(v90 + 136) = v99;
      v103 = v138;
      *(v90 + 24) = v139;
      v104 = v141;
      *(v90 + 40) = v140;
      *(v90 + 56) = v104;
      *(v90 + 72) = v101;
      *v90 = v98;
      *(v90 + 25) = v150;
      *(v90 + 8) = v103;
      swift_storeEnumTagMultiPayload();
      sub_2193E0F5C(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel);
      sub_219BE75D4();
      v86 = type metadata accessor for SportsTagLayoutOptions;
      v87 = v97;
    }

    else
    {
      v60 = v26;
      v48(v124, v45, v26);
      v61 = v116;
      sub_219BE6934();
      v62 = v118;
      sub_2193E29A8(v61, v118, type metadata accessor for SportsManagementSectionDescriptor);
      v63 = swift_getEnumCaseMultiPayload();
      if (v63 < 2)
      {
        sub_2193E2948(v62, type metadata accessor for SportsManagementSectionDescriptor);
      }

      else
      {
        v64 = sub_219BF3AF4();
        (*(*(v64 - 8) + 8))(v62, v64);
      }

      v105 = v132;
      v106 = v131;
      __asm { FMOV            V0.2D, #24.0 }

      v108 = v117;
      *&v117[*(v131 + 32)] = _Q0;
      *(v108 + v106[9]) = 0x4020000000000000;
      *(v108 + v106[10]) = 0x4031000000000000;
      v49[4](v108, v124, v60);
      *(v108 + v106[5]) = 5;
      *(v108 + v106[6]) = v63 > 1;
      *(v108 + v106[11]) = 0;
      *(v108 + v106[7]) = 1;
      sub_219AE5AF0(v46, v108, &v138);
      v109 = v146;
      *(v105 + 152) = v147;
      v110 = v149;
      *(v105 + 168) = v148;
      *(v105 + 184) = v110;
      v111 = v142;
      *(v105 + 88) = v143;
      v112 = v145;
      *(v105 + 104) = v144;
      *(v105 + 120) = v112;
      *(v105 + 136) = v109;
      v113 = v138;
      *(v105 + 24) = v139;
      v114 = v141;
      *(v105 + 40) = v140;
      *(v105 + 56) = v114;
      *(v105 + 72) = v111;
      *v105 = v46;
      *(v105 + 25) = v150;
      *(v105 + 8) = v113;
      swift_storeEnumTagMultiPayload();
      sub_2193E0F5C(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel);
      sub_219BE75D4();
      v86 = type metadata accessor for SportsTagLayoutOptions;
      v87 = v108;
    }
  }

  else
  {
    v124 = v41;
    sub_2193E29A8(v44, v41, type metadata accessor for SportsModel);
    v130 = v27;
    v53 = *(v27 + 2);
    v123 = v33;
    v54 = v26;
    v53(v33, v133, v26);
    sub_2189522EC();
    v55 = v125;
    sub_219BE6934();
    v56 = v126;
    sub_2193E29A8(v55, v126, type metadata accessor for SportsManagementSectionDescriptor);
    v57 = swift_getEnumCaseMultiPayload();
    if (v57)
    {
      v58 = v132;
      v59 = v131;
      if (v57 == 1)
      {
        sub_2193E2948(v56, type metadata accessor for SportsManagementSectionDescriptor);
      }

      else
      {
        v65 = sub_219BF3AF4();
        (*(*(v65 - 8) + 8))(v56, v65);
      }

      LODWORD(v133) = 2;
    }

    else
    {
      sub_2193E2948(v56, type metadata accessor for SportsManagementSectionDescriptor);
      LODWORD(v133) = 4;
      v58 = v132;
      v59 = v131;
    }

    v66 = v128;
    sub_219BE6934();
    v67 = v129;
    sub_2193E29A8(v66, v129, type metadata accessor for SportsManagementSectionDescriptor);
    v68 = swift_getEnumCaseMultiPayload();
    v69 = v130;
    if (v68 < 2)
    {
      sub_2193E2948(v67, type metadata accessor for SportsManagementSectionDescriptor);
    }

    else
    {
      v70 = sub_219BF3AF4();
      (*(*(v70 - 8) + 8))(v67, v70);
    }

    v71 = v124;
    v72 = v123;
    __asm { FMOV            V0.2D, #24.0 }

    *&v39[v59[8]] = _Q0;
    *&v39[v59[9]] = 0x4020000000000000;
    *&v39[v59[10]] = 0x4031000000000000;
    (*(v69 + 4))(v39, v72, v54);
    v39[v59[5]] = v133;
    v39[v59[6]] = v68 > 1;
    v39[v59[11]] = 0;
    v39[v59[7]] = 0;
    sub_219AE5AF0(*(v71 + *(v127 + 24)), v39, &v138);
    sub_218C95678();
    v79 = v58 + *(v78 + 48);
    sub_2193E28E0(v71, v58, type metadata accessor for SportsModel);
    v80 = v149;
    *(v79 + 160) = v148;
    *(v79 + 176) = v80;
    *(v79 + 192) = v150;
    v81 = v145;
    *(v79 + 96) = v144;
    *(v79 + 112) = v81;
    v82 = v147;
    *(v79 + 128) = v146;
    *(v79 + 144) = v82;
    v83 = v141;
    *(v79 + 32) = v140;
    *(v79 + 48) = v83;
    v84 = v143;
    *(v79 + 64) = v142;
    *(v79 + 80) = v84;
    v85 = v139;
    *v79 = v138;
    *(v79 + 16) = v85;
    swift_storeEnumTagMultiPayload();
    sub_2193E0F5C(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel);
    sub_219BE75D4();
    sub_2193E2948(v39, type metadata accessor for SportsTagLayoutOptions);
    v86 = type metadata accessor for SportsModel;
    v87 = v71;
  }

  return sub_2193E2948(v87, v86);
}

uint64_t sub_2193E2650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_2193E2718, 0, 0);
}

uint64_t sub_2193E2718()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_21894A684(sub_2193E289C, v3);

  type metadata accessor for SportsManagementLayoutSectionDescriptor();
  type metadata accessor for SportsManagementLayoutModel();
  sub_2193E0F5C(&qword_27CC0AFA0, type metadata accessor for SportsManagementLayoutSectionDescriptor);
  sub_2193E0F5C(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel);
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2193E28E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193E2948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2193E29A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193E2A38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for SavedFeedConfig();
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2186DDCEC(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v6;
  sub_2186DDCEC(0, &qword_280EE7D68, sub_2193E3560, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2186DDCEC(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_2193E36E4(0, &qword_280EE72E0, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193E362C();
  v18 = v43;
  sub_219BF7B04();
  if (v18)
  {
    v31 = a1;
  }

  else
  {
    v19 = v15;
    v43 = a1;
    v20 = v42;
    sub_219BDBD34();
    v46 = 0;
    sub_2193E3820(&unk_280EE9C70, MEMORY[0x277CC9578]);
    v21 = v17;
    sub_219BE2C94();
    v38 = v12;
    sub_2193E3560();
    v23 = v22;
    v45 = 1;
    sub_2193E3820(&qword_280EE7D78, sub_2193E3560);
    v24 = v9;
    sub_219BE2C94();
    v25 = v19;
    v26 = *(v23 - 8);
    if ((*(v26 + 48))(v24, 1, v23) == 1)
    {
      sub_218710944(v24, &qword_280EE7D68, sub_2193E3560);
      v27 = 0;
    }

    else
    {
      v28 = sub_219BE1E44();
      v29 = v24;
      v27 = v28;
      (*(v26 + 8))(v29, v23);
    }

    v30 = v40;
    sub_219BEE5B4();
    v44 = 2;
    sub_2193E3820(&qword_280E91B88, MEMORY[0x277D32028]);
    sub_219BE2C94();
    v33 = MEMORY[0x277CC9578];
    v34 = v27;
    v35 = v38;
    sub_21872AE48(v38, v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (!v34)
    {
      v34 = MEMORY[0x277D84F90];
    }

    sub_218710944(v35, &qword_280EE9C40, v33);
    (*(v25 + 8))(v21, v14);
    v36 = v20;
    v37 = v39;
    *(v30 + *(v39 + 20)) = v34;
    sub_2189A1E30(v41, v30 + *(v37 + 24));
    sub_2193E3680(v30, v36);
    v31 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2193E302C(void *a1)
{
  v3 = v1;
  sub_2193E36E4(0, &qword_27CC19D18, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193E362C();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_2193E3820(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for SavedFeedConfig() + 20));
    v11[15] = 1;
    sub_2186DDCEC(0, &qword_280E8F258, type metadata accessor for SavedFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2193E3748();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_2193E3820(&unk_280E91B90, MEMORY[0x277D32028]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2193E32BC(uint64_t a1)
{
  v2 = sub_2193E362C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193E32F8(uint64_t a1)
{
  v2 = sub_2193E362C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2193E33B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x277CC9578];
  sub_2186DDCEC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_21872AE48(v5, &v13 - v10, &qword_280EE9C40, v8);
  sub_21872AE48(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
  sub_21872AE48(v11, a3, &qword_280EE9C40, v8);

  result = sub_218710944(v11, &qword_280EE9C40, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_2193E3560()
{
  if (!qword_280EE7D70)
  {
    type metadata accessor for SavedFeedGroupConfig();
    sub_2193E3820(&qword_280ECD7F0, type metadata accessor for SavedFeedGroupConfig);
    sub_2193E3820(&qword_280ECD800, type metadata accessor for SavedFeedGroupConfig);
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7D70);
    }
  }
}

unint64_t sub_2193E362C()
{
  result = qword_280ED9F48[0];
  if (!qword_280ED9F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED9F48);
  }

  return result;
}

uint64_t sub_2193E3680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193E36E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193E362C();
    v7 = a3(a1, &type metadata for SavedFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2193E3748()
{
  result = qword_27CC19D20;
  if (!qword_27CC19D20)
  {
    sub_2186DDCEC(255, &qword_280E8F258, type metadata accessor for SavedFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2193E3820(&qword_280ECD800, type metadata accessor for SavedFeedGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19D20);
  }

  return result;
}

uint64_t sub_2193E3820(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2193E387C()
{
  result = qword_27CC19D28;
  if (!qword_27CC19D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19D28);
  }

  return result;
}

unint64_t sub_2193E38D4()
{
  result = qword_280ED9F38;
  if (!qword_280ED9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9F38);
  }

  return result;
}

unint64_t sub_2193E392C()
{
  result = qword_280ED9F40;
  if (!qword_280ED9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9F40);
  }

  return result;
}

void *sub_2193E3980@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C8);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = [result possiblyUnfetchedAppConfiguration];
  swift_unknownObjectRelease();
  if ([v6 respondsToSelector_])
  {
    [v6 offlineModeThrottleUnreliableDetectionTimeoutInterval];
  }

  swift_unknownObjectRelease();
  v7 = type metadata accessor for NewsOfflineModeMonitor();
  v8 = objc_allocWithZone(v7);
  v9 = sub_21996A954(v5);
  a2[3] = v7;
  result = sub_2186D5C14(qword_280EE0A20, type metadata accessor for NewsOfflineModeMonitor);
  a2[4] = result;
  *a2 = v9;
  return result;
}

void sub_2193E3B04(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 readingList];
  v7 = [objc_allocWithZone(MEMORY[0x277D31290]) initWithReadingList_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740);
  v8 = sub_219BE1E24();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v7 latestHeadlineResultsWithContext_];
  v51 = [v5 articleController];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  sub_219BE1E34();
  if (!v64)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v46 = v10;
  v47 = v9;
  v48 = v7;
  v49 = v5;
  v50 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE9E50);
  sub_219BE1E34();
  if (v62)
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
    v45 = &v43;
    MEMORY[0x28223BE20](v11);
    v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v44 = &v43;
    MEMORY[0x28223BE20](v15);
    v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v13;
    v20 = *v17;
    v21 = type metadata accessor for HeadlineModelFactory();
    v59 = v21;
    v60 = &off_282A8B8E8;
    v58[0] = v19;
    v22 = type metadata accessor for HeadlineService();
    v56 = v22;
    v57 = &off_282A7FE28;
    v55[0] = v20;
    v23 = type metadata accessor for SavedService();
    v24 = objc_allocWithZone(v23);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v43 = &v43;
    MEMORY[0x28223BE20](v25);
    v27 = (&v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    MEMORY[0x28223BE20](v29);
    v31 = (&v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = *v27;
    v34 = *v31;
    v54[3] = v21;
    v54[4] = &off_282A8B8E8;
    v53[4] = &off_282A7FE28;
    v54[0] = v33;
    v53[3] = v22;
    v53[0] = v34;
    *&v24[OBJC_IVAR____TtC7NewsUI212SavedService_observers] = MEMORY[0x277D84F90];
    v36 = v46;
    v35 = v47;
    *&v24[OBJC_IVAR____TtC7NewsUI212SavedService_readingList] = v47;
    *&v24[OBJC_IVAR____TtC7NewsUI212SavedService_headlineStreamingResults] = v36;
    v37 = v51;
    *&v24[OBJC_IVAR____TtC7NewsUI212SavedService_articleController] = v51;
    sub_218718690(v54, &v24[OBJC_IVAR____TtC7NewsUI212SavedService_headlineModelFactory]);
    sub_218718690(v53, &v24[OBJC_IVAR____TtC7NewsUI212SavedService_headlineService]);
    v52.receiver = v24;
    v52.super_class = v23;
    v38 = v35;
    v39 = v36;
    v40 = v37;
    v41 = objc_msgSendSuper2(&v52, sel_init, v43, v44, v45);
    [*&v41[OBJC_IVAR____TtC7NewsUI212SavedService_readingList] addObserver_];

    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v63);
    v42 = v50;
    v50[3] = v23;
    v42[4] = &off_282A4C1D8;

    *v42 = v41;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2193E4160@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ArticleRecirculationConfigurationService();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_2186D5C14(&qword_280E966F0, type metadata accessor for ArticleRecirculationConfigurationService);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E422C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BE27F4();
  MEMORY[0x28223BE20](v2);
  ContextManager = type metadata accessor for PegasusQueryContextManager();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_2186D5C14(&qword_280EE73D0, MEMORY[0x277D6CD10]);
  sub_218718850(0, &qword_280E8F5E0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
  sub_218735780();
  sub_219BF7164();
  sub_218F80F64();
  swift_allocObject();
  result = sub_219BE2004();
  *(v4 + 24) = result;
  a1[3] = ContextManager;
  a1[4] = &off_282A3FFC0;
  *a1 = v4;
  return result;
}

uint64_t sub_2193E43DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE9E40);
    result = sub_219BE1E34();
    if (v21)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SearchTagFactory();
      v19[3] = v11;
      v19[4] = &off_282A991C0;
      v19[0] = v10;
      v12 = type metadata accessor for SearchArticleFactory();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x28223BE20](v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[6] = v11;
      v13[7] = &off_282A991C0;
      v13[2] = v5;
      v13[3] = v18;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_282A5AC48;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2193E465C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE9E40);
    result = sub_219BE1E34();
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_2186C709C(0, &qword_280E900F0);
      sub_219BE1E34();
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      MEMORY[0x28223BE20](v6);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SearchTagFactory();
      v21[3] = v11;
      v21[4] = &off_282A991C0;
      v21[0] = v10;
      v12 = type metadata accessor for SearchRecipeFactory();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v11);
      MEMORY[0x28223BE20](v14);
      v16 = (&v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      *(v13 + 48) = v11;
      *(v13 + 56) = &off_282A991C0;
      *(v13 + 16) = v5;
      *(v13 + 24) = v18;
      v19 = v23;
      *(v13 + 64) = v22;
      *(v13 + 80) = v19;
      *(v13 + 96) = v24;
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      a2[3] = v12;
      a2[4] = &off_282A75DA8;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2193E4934@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  v6 = [result networkBehaviorMonitor];

  v7 = [objc_allocWithZone(MEMORY[0x277D30F80]) initWithNetworkBehaviorMonitor_];
  result = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E020);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E6E0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = [result contentStoreFrontID];
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = sub_219BF5414();
    v33 = v15;
    v34 = v14;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E08);
  result = sub_219BE1E34();
  if (!v38)
  {
    goto LABEL_21;
  }

  v32 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E1D0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = result;
  v31 = v9;
  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = result;
  v30 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA8210);
  result = sub_219BE1E34();
  if (v36)
  {
    v19 = type metadata accessor for SearchFetcher();
    ObjectType = swift_getObjectType();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    MEMORY[0x28223BE20](v21);
    v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    v25 = sub_2186C6148(0, &qword_280E8E200);
    ContextManager = type metadata accessor for PegasusQueryContextManager();
    v27 = sub_21979F9A4(v7, v17, v31, v10, v32, v34, v33, v23, v16, v18, v35, v19, v25, ContextManager, ObjectType, &off_282A3FFC0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v30;
    v30[3] = v19;
    v28[4] = &off_282A875E0;
    *v28 = v27;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2193E4E4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F18);
  result = sub_219BE1E34();
  if (!v174)
  {
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for SearchModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v171 = v5;
  v172 = &off_282A9FEE0;
  *&v170 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v168)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE9E50);
  result = sub_219BE1E34();
  if (!v167)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (!v165)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB75E0);
  result = sub_219BE1E34();
  v6 = v162;
  if (!v162)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  result = sub_219BE1E34();
  v111 = v160;
  if (!v160)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v109 = v161;
  v110 = v163;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v159)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v106 = v169;
  v107 = v168;
  v108 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E30);
  result = sub_219BE1E34();
  if (!v157)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
  MEMORY[0x28223BE20](v7);
  v9 = (v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for SearchRecipeFactory();
  v155 = &off_282A75DA8;
  v154 = v12;
  v153[0] = v11;
  type metadata accessor for SearchResultsInflaterFactory();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v153, v12);
  MEMORY[0x28223BE20](v14);
  v16 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v112 = v12;
  v13[10] = v12;
  v13[11] = &off_282A75DA8;
  v13[7] = v18;
  v105 = v13;
  sub_2186CB1F0(&v158, (v13 + 2));
  __swift_destroy_boxed_opaque_existential_1(v153);
  __swift_destroy_boxed_opaque_existential_1(v156);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E40);
  result = sub_219BE1E34();
  if (!v159)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E10);
  result = sub_219BE1E34();
  if (!v157)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (!v154)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v152)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v103 = result;
  v104 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E900F0);
  result = sub_219BE1E34();
  if (!v148)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  sub_2186CB1F0(&v147, v149);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
  v101 = v88;
  MEMORY[0x28223BE20](v19);
  v21 = (v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v166, v167);
  v100 = v88;
  MEMORY[0x28223BE20](v23);
  v25 = (v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v158, v159);
  v99 = v88;
  MEMORY[0x28223BE20](v27);
  v29 = (v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
  v98 = v88;
  MEMORY[0x28223BE20](v31);
  v33 = (v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
  v97 = v88;
  MEMORY[0x28223BE20](v35);
  v37 = (v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v151, v152);
  v96 = v88;
  MEMORY[0x28223BE20](v39);
  v41 = (v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v21;
  v44 = *v25;
  v45 = *v29;
  v46 = *v33;
  v47 = *v37;
  v48 = *v41;
  v49 = type metadata accessor for SearchFetcher();
  v146[4] = &off_282A875E0;
  v146[3] = v49;
  v146[0] = v43;
  v93 = type metadata accessor for HeadlineService();
  v145 = &off_282A7FE28;
  v144 = v93;
  v143[0] = v44;
  v91 = type metadata accessor for SearchTagFactory();
  v142 = &off_282A991C0;
  v141 = v91;
  v140[0] = v45;
  v90 = type metadata accessor for SearchArticleFactory();
  v139 = &off_282A5AC48;
  v138 = v90;
  v137[0] = v46;
  v136 = &off_282A75DA8;
  v135 = v112;
  v134[0] = v47;
  v89 = type metadata accessor for HeadlineModelFactory();
  v132 = v89;
  v133 = &off_282A8B8E8;
  v131[0] = v48;
  v102 = type metadata accessor for SearchService(0);
  v50 = swift_allocObject();
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v146, v49);
  v95 = v88;
  MEMORY[0x28223BE20](v51);
  v53 = (v88 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53);
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
  v94 = v88;
  MEMORY[0x28223BE20](v55);
  v57 = (v88 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
  v92 = v88;
  MEMORY[0x28223BE20](v59);
  v61 = (v88 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  v88[2] = v88;
  MEMORY[0x28223BE20](v63);
  v65 = (v88 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65);
  v67 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
  v88[1] = v88;
  MEMORY[0x28223BE20](v67);
  v69 = (v88 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69);
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v131, v132);
  v88[0] = v88;
  MEMORY[0x28223BE20](v71);
  v73 = (v88 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v53;
  v76 = *v57;
  v77 = *v61;
  v78 = *v65;
  v79 = *v69;
  v80 = *v73;
  v129 = v49;
  v130 = &off_282A875E0;
  *&v128 = v75;
  v127 = &off_282A7FE28;
  v126 = v93;
  *&v125 = v76;
  v123 = v91;
  v124 = &off_282A991C0;
  *&v122 = v77;
  v120 = v90;
  v121 = &off_282A5AC48;
  *&v119 = v78;
  v117 = v112;
  v118 = &off_282A75DA8;
  *&v116 = v79;
  v114 = v89;
  v115 = &off_282A8B8E8;
  *&v113 = v80;
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v81 = qword_280F61720;
  sub_219BE5444();
  sub_2186CB1F0(&v128, v50 + 16);
  sub_2186CB1F0(&v170, v50 + 56);
  v82 = v106;
  *(v50 + 96) = v107;
  *(v50 + 104) = v82;
  sub_2186CB1F0(&v125, v50 + 112);
  sub_2186CB1F0(&v164, v50 + 152);
  v83 = v110;
  v84 = v111;
  *(v50 + 192) = v104;
  *(v50 + 200) = v83;
  v85 = v109;
  *(v50 + 208) = v84;
  *(v50 + 216) = v85;
  *(v50 + 224) = v105;
  sub_2186CB1F0(&v119, v50 + 272);
  sub_2186CB1F0(&v116, v50 + 312);
  sub_2186CB1F0(&v122, v50 + 232);
  sub_2186CB1F0(&v113, v50 + 352);
  *(v50 + 392) = v103;
  v86 = v149[1];
  *(v50 + 400) = v149[0];
  *(v50 + 416) = v86;
  *(v50 + 432) = v150;
  __swift_destroy_boxed_opaque_existential_1(v131);
  __swift_destroy_boxed_opaque_existential_1(v134);
  __swift_destroy_boxed_opaque_existential_1(v137);
  __swift_destroy_boxed_opaque_existential_1(v140);
  __swift_destroy_boxed_opaque_existential_1(v143);
  __swift_destroy_boxed_opaque_existential_1(v146);
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_destroy_boxed_opaque_existential_1(v153);
  __swift_destroy_boxed_opaque_existential_1(v156);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  __swift_destroy_boxed_opaque_existential_1(v166);
  result = __swift_destroy_boxed_opaque_existential_1(v173);
  v87 = v108;
  v108[3] = v102;
  v87[4] = &off_282A8A588;
  *v87 = v50;
  return result;
}

uint64_t sub_2193E5FBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940);
  result = sub_219BE1E34();
  if (v8)
  {
    sub_2186CB1F0(&v7, v9);
    type metadata accessor for HistoryService();
    result = swift_dynamicCast();
    *a3 = v6;
    a3[1] = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E607C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED7DB8);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    type metadata accessor for SavedService();
    result = swift_dynamicCast();
    *a2 = v4;
    a2[1] = &off_282A4C1C8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E6140@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedItemService();
  result = sub_219BE1E24();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_282AA3EB0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E61A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE9E50);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    type metadata accessor for HeadlineService();
    result = swift_dynamicCast();
    *a2 = v4;
    a2[1] = &off_282A7FE48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E6268@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  sub_219BE1E34();
  if (v7)
  {
    v3 = type metadata accessor for AutomationMagazineConfigurationService();
    v4 = swift_allocObject();
    sub_21876A3F8(0, &qword_27CC19D50, sub_218C0065C, &type metadata for AutomationTestDataLocator, MEMORY[0x277D6CB68]);
    swift_allocObject();
    *(v4 + 16) = sub_219BE2144();
    result = sub_2186CB1F0(&v6, v4 + 24);
    a2[3] = v3;
    a2[4] = &off_282A9CAF8;
    *a2 = v4;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id sub_2193E63B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718850(0, &qword_280EE68E0, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE8D08);
  result = sub_219BE1E34();
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  result = sub_219BE1E34();
  if (!v17)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = type metadata accessor for DemoMagazineConfigurationDataService();
  v9 = swift_allocObject();
  sub_2186CB1F0(&v18, v9 + 32);
  sub_2186CB1F0(&v16, v9 + 72);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v19 = v8;
  v20 = &off_282A66978;
  *&v18 = v9;
  result = FCBundle();
  if (result)
  {
    v10 = type metadata accessor for MagazineConfigurationService();
    sub_219BE3194();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(&v18, v8);
    MEMORY[0x28223BE20](v11);
    v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    v15 = sub_218B8738C(v13, v6, v10, v8, &off_282A66978);
    result = __swift_destroy_boxed_opaque_existential_1(&v18);
    a2[3] = v10;
    a2[4] = &off_282A391B0;
    *a2 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2193E666C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90230);
  result = sub_219BE1E34();
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA61A0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8CD0);
  result = sub_219BE1E34();
  if (v8)
  {
    type metadata accessor for MagazineSectionService();
    v4 = swift_allocObject();
    v5 = OBJC_IVAR____TtC7NewsUI222MagazineSectionService____lazy_storage___appVersion;
    sub_218718850(0, &qword_280EE68E0, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
    (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
    sub_2186CB1F0(&v11, v4 + 16);
    *(v4 + 56) = v3;
    sub_2186CB1F0(&v9, v4 + 64);
    sub_2186CB1F0(&v7, v4 + 104);
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2193E6894@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SportsManagementConfigManager();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282AA00C0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E692C(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-1] - v7;
  if (qword_280E925E0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_280F618F0);
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6034();
  v11 = sub_219BE1E24();
  v10(v6, v9, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186DB8F4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v13 = v21;
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v22;
  v15 = __swift_project_boxed_opaque_existential_1(v20, v21);
  v19[3] = v13;
  v19[4] = *(v14 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
  sub_2190BB7D0();
  swift_allocObject();
  v17 = sub_219BF0CF4();
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    v23 = 0;
    v20[0] = v11;
    v18 = result;
    v19[0] = v17;
    sub_2186F7A08();
    swift_allocObject();
    return sub_219BF0C74();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2193E6C90(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E560);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for TagFeedServiceContextFactory();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2193E6D64(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186F7B28();
    swift_allocObject();
    sub_2186D5C14(&qword_280EB6620, type metadata accessor for TagFeedServiceConfigFetcher);
    return sub_219BED584();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E6E24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BF5474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE32E8);
  result = sub_219BE1E34();
  if (!v19)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(v18, v19);
  v9 = sub_219BEC464();
  __swift_destroy_boxed_opaque_existential_1(v18);
  if ((v9 & 1) == 0)
  {
    result = 0;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_11;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v17 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = result;
  type metadata accessor for PPTTagFeedServiceConfigFetcher();
  v13 = swift_allocObject();
  sub_219BF5464();
  v14 = sub_219BF5424();
  v16 = v15;
  result = (*(v5 + 8))(v7, v4);
  if (v16 >> 60 != 15)
  {
    v13[2] = v14;
    v13[3] = v16;
    v13[4] = v10;
    v13[5] = v11;
    v13[6] = v12;
    v18[0] = v13;
    sub_2186F7B28();
    swift_allocObject();
    sub_2186D5C14(&qword_27CC19D48, type metadata accessor for PPTTagFeedServiceConfigFetcher);
    result = sub_219BED584();
    a2 = v17;
LABEL_9:
    *a2 = result;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2193E713C(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F61890);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218713104();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = v8;
    v14[4] = *(v9 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    sub_218713204();
    swift_allocObject();
    v12 = sub_219BF0CF4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2193E73B4()
{
  type metadata accessor for SearchFeedPoolService();

  return swift_allocObject();
}

uint64_t sub_2193E7424(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB7290);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v18[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v6);
    v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for SearchFeedConfigManager();
    v18[3] = v11;
    v18[4] = &off_282A94368;
    v18[0] = v10;
    type metadata accessor for SearchFeedServiceConfigFetcher();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v11);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[8] = v11;
    v12[9] = &off_282A94368;
    v12[2] = 0x6546686372616553;
    v12[3] = 0xEA00000000006465;
    v12[4] = v3;
    v12[5] = v17;
    v12[10] = v4;
    v12[11] = v5;
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v20[0] = v12;
    sub_2186F7FD0();
    swift_allocObject();
    sub_2186D5C14(qword_280EAB610, type metadata accessor for SearchFeedServiceConfigFetcher);
    return sub_219BED584();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2193E779C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193EADC8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61720;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_218713104();
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2193E7A80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90330);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E98008);
  result = sub_219BE1E34();
  if (v9)
  {
    v6 = type metadata accessor for SearchFeedConfigManager();
    v7 = swift_allocObject();
    sub_219BEE324();
    swift_allocObject();
    *(v7 + 16) = sub_219BEE314();
    *(v7 + 24) = v5;
    sub_2186CB1F0(&v10, v7 + 32);
    result = sub_2186CB1F0(&v8, v7 + 72);
    a2[3] = v6;
    a2[4] = &off_282A94368;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2193E7C24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186FF61C();
    swift_allocObject();
    sub_2186D5C14(qword_280E98F20, type metadata accessor for SharedWithYouFeedServiceConfigFetcher);
    return sub_219BED584();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E7CE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SavedFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186FF728();
    swift_allocObject();
    sub_2186D5C14(&qword_280EAF3A0, type metadata accessor for SavedFeedServiceConfigFetcher);
    return sub_219BED584();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E7DA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218713C3C();
    swift_allocObject();
    sub_2186D5C14(&qword_280EA91D0, type metadata accessor for HistoryFeedServiceConfigFetcher);
    return sub_219BED584();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E7E64(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08238 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD86B8);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218713D48();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = v8;
    v14[4] = *(v9 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    sub_2186FFB04();
    swift_allocObject();
    v12 = sub_219BF0CF4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2193E80DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (v6)
  {
    type metadata accessor for SearchMoreFeedPoolService();
    v4 = swift_allocObject();
    *(v4 + 16) = v9;
    *(v4 + 24) = v3;
    sub_2186CB1F0(&v7, v4 + 32);
    sub_2186CB1F0(&v5, v4 + 72);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2193E8278(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8208);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v5);
    v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for SearchMoreFeedConfigManager();
    v17[3] = v10;
    v17[4] = &off_282A536E8;
    v17[0] = v9;
    type metadata accessor for SearchMoreFeedServiceConfigFetcher();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v10);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    *(v11 + 64) = v10;
    *(v11 + 72) = &off_282A536E8;
    strcpy((v11 + 16), "SearchMoreFeed");
    *(v11 + 31) = -18;
    *(v11 + 32) = v3;
    *(v11 + 40) = v16;
    *(v11 + 80) = v4;
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v18[0] = v11;
    sub_218713E34();
    swift_allocObject();
    sub_2186D5C14(&qword_27CC19D40, type metadata accessor for SearchMoreFeedServiceConfigFetcher);
    return sub_219BED584();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2193E85B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FFBBC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61720;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_218713D48();
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2193E88BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187002F8();
    swift_allocObject();
    sub_2186D5C14(&unk_280EB1700, type metadata accessor for AudioFeedServiceConfigFetcher);
    return sub_219BED584();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E897C(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08220 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD8688);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218736DF0();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = v8;
    v14[4] = *(v9 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    sub_2187003E4();
    swift_allocObject();
    v12 = sub_219BF0CF4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2193E8BF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280E90370);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for AudioHistoryFeedPoolService();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      sub_2186CB1F0(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2193E8D28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EA3CB8);
    result = sub_219BE1E34();
    if (v18)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x28223BE20](v4);
      v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v9 = type metadata accessor for AudioHistoryFeedConfigManager();
      v16[3] = v9;
      v16[4] = &off_282A613D0;
      v16[0] = v8;
      type metadata accessor for AudioHistoryFeedServiceConfigFetcher();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v9);
      MEMORY[0x28223BE20](v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v10[8] = v9;
      v10[9] = &off_282A613D0;
      v10[2] = 0xD000000000000010;
      v10[3] = 0x8000000219CDBA70;
      v10[4] = v3;
      v10[5] = v15;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v17[0] = v10;
      sub_2187006BC();
      swift_allocObject();
      sub_2186D5C14(&unk_280E9BEE0, type metadata accessor for AudioHistoryFeedServiceConfigFetcher);
      return sub_219BED584();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2193E900C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioHistoryFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218700628();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D8C8 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61788;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_218736DF0();
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2193E9310(void *a1)
{
  v2 = sub_219BEDA24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08228 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27CCD86A0);
  (*(v3 + 16))(v5, v6, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218700C5C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = v8;
    v14[4] = *(v9 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    sub_21872F750();
    swift_allocObject();
    v12 = sub_219BF0CF4();
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2193E9588(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC89E0);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for AudioPlaylistStore();
    v14[3] = v7;
    v14[4] = &off_282A40D18;
    v14[0] = v6;
    type metadata accessor for AudioPlaylistFeedPoolService();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A40D18;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193E97D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EA1080);
    result = sub_219BE1E34();
    if (v18)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x28223BE20](v4);
      v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v9 = type metadata accessor for AudioPlaylistFeedConfigManager();
      v16[3] = v9;
      v16[4] = &off_282A2E968;
      v16[0] = v8;
      type metadata accessor for AudioPlaylistFeedServiceConfigFetcher();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v9);
      MEMORY[0x28223BE20](v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v10[8] = v9;
      v10[9] = &off_282A2E968;
      v10[2] = 0xD000000000000011;
      v10[3] = 0x8000000219CE51E0;
      v10[4] = v3;
      v10[5] = v15;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v17[0] = v10;
      sub_2187144E0();
      swift_allocObject();
      sub_2186D5C14(qword_280E99E88, type metadata accessor for AudioPlaylistFeedServiceConfigFetcher);
      return sub_219BED584();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2193E9AB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedGroupEmitterFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21871444C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v14;
  v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61768;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  v8 = v7;
  result = sub_219BE1E34();
  if (v10)
  {
    sub_218700C5C();
    swift_allocObject();
    v9 = sub_219BEE334();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2193E9DBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeBoxFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218701370();
    swift_allocObject();
    sub_2186D5C14(qword_280EA23B0, type metadata accessor for RecipeBoxFeedServiceConfigFetcher);
    return sub_219BED584();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2193E9E7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = [result networkBehaviorMonitor];

  v8 = [objc_allocWithZone(MEMORY[0x277D30F80]) initWithNetworkBehaviorMonitor_];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    v9 = type metadata accessor for UserSegmentationDetailsService();
    result = swift_allocObject();
    result[2] = v8;
    result[3] = v5;
    a2[3] = v9;
    a2[4] = &off_282A705C8;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2193E9FB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DB88);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for LegacyMyMagazinesPersonalizationService();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_2186CB1F0(&v9, v8 + 24);
    *(v8 + 64) = v6;
    a2[3] = v7;
    result = sub_2186D5C14(qword_280E97200, type metadata accessor for LegacyMyMagazinesPersonalizationService);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2193EA13C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE1BF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF6694();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_219BF6674();
  MEMORY[0x28223BE20](v47);
  v48 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED1D4();
  MEMORY[0x28223BE20](v12 - 8);
  v46 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = [result possiblyUnfetchedAppConfiguration];
  swift_unknownObjectRelease();
  v16 = [v15 respondsToSelector_];
  v45 = v8;
  v44 = v9;
  if (v16)
  {
    [v15 enableTabiMyMagazinesPersonalization];
  }

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E0A0);
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_15;
  }

  v17 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90590);
  result = sub_219BE1E34();
  if (!v59)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v43 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDE0);
  result = sub_219BE1E24();
  v42 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = result;
  v41 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E370);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  v40 = v56;
  if (!v56)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v4;
  v39 = v7;
  v20 = v57;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718850(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v20;
  v36 = result;
  v37 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE61B0);
  sub_219BE1DF4();

  if (v53)
  {
    v34 = type metadata accessor for MyMagazinesStore();
    v21 = objc_allocWithZone(v34);
    v22 = OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0);
    sub_219BED1A4();
    v51 = MEMORY[0x277D84F90];
    sub_2186D5C14(&qword_280E8E3C0, MEMORY[0x277D85230]);
    v33 = MEMORY[0x277D83940];
    sub_218718850(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    sub_21872CCAC();
    sub_219BF7164();
    (*(v44 + 104))(v49, *MEMORY[0x277D85260], v45);
    *&v21[v22] = sub_219BF66D4();
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore____lazy_storage___lazyInitializingPromise] = 0;
    v23 = OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_firstFullRefresh;
    sub_21876BFD4(0, &unk_280EE7A80, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CB90]);
    swift_allocObject();
    *&v21[v23] = sub_219BE2244();
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_currentIssuesChecker] = v43;
    sub_218718690(v58, &v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService]);
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory] = v42;
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_subscriptionController] = v18;
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList] = v19;
    v24 = &v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueManager];
    v25 = v35;
    *v24 = v40;
    *(v24 + 1) = v25;
    sub_218718690(v54, &v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_paidBundleConfigManager]);
    sub_218718690(v52, &v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_myMagazinesPersonalizationService]);
    v26 = MEMORY[0x277D6CA00];
    sub_218718850(0, &unk_280EE7EC0, type metadata accessor for MyMagazinesState, MEMORY[0x277D6CA00]);
    swift_allocObject();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v49 = v18;
    v27 = v19;
    swift_unknownObjectRetain();
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_state] = sub_219BE1A74();
    sub_218726AEC();
    swift_allocObject();
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_badgeIssueIDs] = sub_219BE1A74();
    sub_21876BFD4(0, &qword_280EE7EB8, &type metadata for CurrentIssuesState, MEMORY[0x277D6CA00]);
    swift_allocObject();
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_currentIssues] = sub_219BE1A74();
    sub_218718850(0, &qword_280EE7EB0, sub_2186E330C, v26);
    swift_allocObject();
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_recentlyReadIssues] = sub_219BE1A74();
    swift_allocObject();
    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_downloadedIssues] = sub_219BE1A74();
    v28 = MEMORY[0x277D6CA70];
    sub_218718850(0, &qword_280E8C0D8, MEMORY[0x277D6CA70], MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C09BA0;
    sub_219BE1BE4();
    v51 = v29;
    sub_2186D5C14(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218718850(0, &qword_280E8F610, v28, v33);
    sub_218711654();
    sub_219BF7164();
    sub_218718850(0, &qword_280EE72A8, sub_2193EAEEC, MEMORY[0x277D6CEE8]);
    swift_allocObject();

    *&v21[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_lazyPersistentStore] = sub_219BE2D14();
    v30 = v34;
    v50.receiver = v21;
    v50.super_class = v34;
    v31 = objc_msgSendSuper2(&v50, sel_init);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v54);
    result = __swift_destroy_boxed_opaque_existential_1(v58);
    v32 = v37;
    v37[3] = v30;
    v32[4] = &off_282A7C0F8;
    *v32 = v31;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2193EAD0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90590);
  result = sub_219BE1E34();
  if (v6)
  {
    v4 = type metadata accessor for AutomationMyMagazinesStore();
    swift_allocObject();
    result = sub_218BFF9B8(&v5);
    a2[3] = v4;
    a2[4] = &off_282A3BC88;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2193EADC8()
{
  if (!qword_280E91E50)
  {
    type metadata accessor for SearchFeedPoolService();
    sub_2186D5C14(qword_280EC9F50, type metadata accessor for SearchFeedPoolService);
    v0 = sub_219BEDEA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91E50);
    }
  }
}

uint64_t sub_2193EAE5C(uint64_t a1)
{
  sub_2187754E0(0, &qword_27CC19D38, &unk_280E90580, MEMORY[0x277D33678], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2193EAEEC()
{
  if (!qword_280EE5E70)
  {
    sub_2193EAF7C();
    sub_2193EAFD0();
    sub_2193EB024();
    v0 = sub_219BE55F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5E70);
    }
  }
}

unint64_t sub_2193EAF7C()
{
  result = qword_280ED8288[0];
  if (!qword_280ED8288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED8288);
  }

  return result;
}

unint64_t sub_2193EAFD0()
{
  result = qword_280EBAC40;
  if (!qword_280EBAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBAC40);
  }

  return result;
}

unint64_t sub_2193EB024()
{
  result = qword_280EBAC48;
  if (!qword_280EBAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBAC48);
  }

  return result;
}

char *sub_2193EB080(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_containerView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_titleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_subtitleLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_containerView;
  v15 = *&v13[OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_containerView];
  v16 = v13;
  [v16 addSubview_];
  [*&v13[v14] addSubview_];
  [*&v13[v14] addSubview_];

  return v16;
}

id sub_2193EB238()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_containerView];
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  [v1 frame];
  v3 = CGRectGetWidth(v12);
  [v0 bounds];
  v4 = CGRectGetHeight(v13) * 0.5;
  [v1 frame];
  v5 = v4 - CGRectGetHeight(v14) * 0.5;
  if (v5 < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = Width * 0.5 - v3 * 0.5;
  [v1 frame];
  v8 = CGRectGetWidth(v15);
  [v1 frame];
  return [v1 setFrame_];
}

void sub_2193EB420()
{
  v1 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_containerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI239TagFeedViewerPuzzleFullArchiveTitleView_subtitleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_2193EB514(uint64_t a1)
{
  swift_beginAccess();
  sub_218718690(a1 + 32, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21876EF48(qword_280EA7770);
  sub_219BE3884();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_2193EB5C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_218718690(a1 + 32, v26);
  v8 = v27;
  v9 = v28;
  v10 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22[0] = v10;
    v22[1] = v9;
    v22[2] = v8;
    v25 = MEMORY[0x277D84F90];
    sub_218C37330(0, v11, 0);
    v12 = v25;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v23 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v24 = v14;
    v15 = a2 + v23;
    v16 = *(v13 + 56);
    v17 = (v13 + 16);
    do
    {
      v18 = v13;
      v24(v7, v15, v4);
      v25 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C37330(v19 > 1, v20 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v20 + 1;
      (*v17)(v12 + v23 + v20 * v16, v7, v4);
      v15 += v16;
      --v11;
      v13 = v18;
    }

    while (v11);
  }

  sub_218C3DFBC(v12);

  sub_219BE3894();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_2193EB7E4(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21969C854(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193EB850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21969AADC(a1, a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193EB8D4(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21969B3F0(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193EB948(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE1464();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF0E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = &unk_219C09000;
  if (a2)
  {
    swift_getObjectType();
    sub_219BF67F4();
    (*(v7 + 32))(v12, v10, v6);
    sub_2187F3258();
    v14 = sub_219BDCD44();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    v29 = v6;
    v18 = *MEMORY[0x277CEAD18];
    v13 = &unk_219C09000;
    (*(v15 + 104))(v17 + v16, v18, v14);
    sub_2193EBFFC(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
    v19 = v29;
    sub_219BDCCC4();

    v20 = v12;
    v21 = v18;
    (*(v7 + 8))(v20, v19);
  }

  else
  {
    v21 = *MEMORY[0x277CEAD18];
  }

  sub_219BDB804();
  sub_219BE1454();
  sub_2187F3258();
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v13[186];
  (*(v23 + 104))(v25 + v24, v21, v22);
  sub_2193EBFFC(&qword_280EE8020, MEMORY[0x277D2F270]);
  v26 = v31;
  sub_219BDCCC4();

  (*(v30 + 8))(v5, v26);
  sub_219BE0744();
  sub_2193EBFFC(&unk_280EE8310, MEMORY[0x277D2E760]);
  memset(v32, 0, sizeof(v32));
  sub_219BDCCE4();
  return sub_218806FD0(v32);
}

uint64_t sub_2193EBE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  swift_unknownObjectRetain();
  sub_219BDD154();
}

uint64_t sub_2193EBF88(uint64_t a1)
{
  sub_219BDB954();
  v3 = *(v1 + 16);

  return sub_2193EB948(a1, v3);
}

uint64_t sub_2193EBFFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2193EC068(void *a1, uint64_t a2)
{
  v4 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2193EDF6C(v4, a2, v2);
}

uint64_t sub_2193EC0AC(void *a1, uint64_t a2)
{
  v4 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2193EE028(v4, a2, v2);
}

void sub_2193EC1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 20;
  if (__OFADD__(a1, 20))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v8 = *&v3[OBJC_IVAR____TtC7NewsUI214HistoryService_headlineStreamingResults];
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v3;
    v9[5] = a1;
    v12[4] = sub_2193EE728;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_218E29720;
    v12[3] = &block_descriptor_38_3;
    v10 = _Block_copy(v12);

    v11 = v3;

    [v8 fetchObjectsUpToCount:v4 qualityOfService:17 completion:v10];
    _Block_release(v10);
    return;
  }

  __break(1u);
}

void sub_2193EC2D8(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = a1;
    a2(a1, 256);

    return;
  }

  v10 = *(a4 + OBJC_IVAR____TtC7NewsUI214HistoryService_headlineStreamingResults);
  v11 = [v10 array];
  v12 = sub_2186C6148(0, &unk_27CC0E3D0);
  v13 = sub_219BF5924();

  v14 = v13 >> 62;
  if (v13 >> 62)
  {
    v15 = sub_219BF7214();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 >= a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  v17 = a5 + 20;
  if (__OFADD__(a5, 20))
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v15 >= v17)
  {
    v18 = a5 + 20;
  }

  else
  {
    v18 = v15;
  }

  if (v17 < v16)
  {
    goto LABEL_55;
  }

  if (v14)
  {
    v19 = sub_219BF7214();
  }

  else
  {
    v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 < v16)
  {
    goto LABEL_56;
  }

  if (v16 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v14)
  {
    v20 = sub_219BF7214();
  }

  else
  {
    v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 < v18)
  {
    goto LABEL_58;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((v13 & 0xC000000000000001) == 0 || v16 == v18)
  {
  }

  else
  {
    if (v18 <= a5)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v21 = v16;
    do
    {
      v22 = v21 + 1;
      sub_219BF7334();
      v21 = v22;
    }

    while (v18 != v22);
  }

  if (!v14)
  {
    a5 = v13 & 0xFFFFFFFFFFFFFF8;
    v12 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = (2 * v18) | 1;
    if (v18)
    {
      goto LABEL_34;
    }

LABEL_41:
    swift_unknownObjectRetain();
LABEL_42:
    sub_218B673D0(a5, v12, v16, v18);
    v25 = v29;
    goto LABEL_43;
  }

  a5 = sub_219BF7564();
  v12 = v26;
  v16 = v27;
  v18 = v28;

  if ((v18 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_34:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x277D84F90];
  }

  v24 = *(v23 + 16);

  if (__OFSUB__(v18 >> 1, v16))
  {
    goto LABEL_65;
  }

  if (v24 != (v18 >> 1) - v16)
  {
LABEL_66:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v25 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v25)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_43:
    swift_unknownObjectRelease();
  }

  v30 = __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC7NewsUI214HistoryService_headlineModelFactory), *(a4 + OBJC_IVAR____TtC7NewsUI214HistoryService_headlineModelFactory + 24));
  if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
  {
    sub_218731D50();

    v31 = sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_218731D50();
    v31 = v25;
  }

  v36 = *v30;
  MEMORY[0x28223BE20](v32);
  v35[2] = &v36;
  v13 = sub_2189544C0(sub_2193EE734, v35, v31);

  if (v13 >> 62)
  {
LABEL_60:
    if (sub_219BF7214())
    {
      goto LABEL_49;
    }

LABEL_61:

    a2(0, 2);
    swift_unknownObjectRelease();
    return;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_61;
  }

LABEL_49:
  if ([v10 isFinished])
  {
    v33 = v13;
    v34 = 1;
  }

  else
  {
    v33 = v13;
    v34 = 0;
  }

  a2(v33, v34);
  swift_unknownObjectRelease();
}

uint64_t sub_2193EC734(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI214HistoryService_issueReadingHistory);
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_219BF5414();
    v4 = sub_219BF53D4();
  }

  v5 = [v3 hasIssueWithIDBeenSeen_];

  v6 = [a1 identifier];
  if (!v6)
  {
    sub_219BF5414();
    v6 = sub_219BF53D4();
  }

  v7 = [v3 hasIssueWithIDBeenVisited_];

  v8 = [a1 identifier];
  if (!v8)
  {
    sub_219BF5414();
    v8 = sub_219BF53D4();
  }

  v9 = 4;
  if (!v5)
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = 14;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v3 hasIssueWithIDBeenEngaged_];

  if (v11)
  {
    return 30;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_2193EC88C(unint64_t a1, char a2, char *a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    sub_218A510F8();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09BA0;
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000030, 0x8000000219CFBE10);
    v35[0] = a1;
    sub_218A450F0();
    sub_219BF7484();
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_219BF7A74();
  }

  if (a1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v36[0] = MEMORY[0x277D84F90];
    result = sub_218C37380(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v9 = v36[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v11 = MEMORY[0x21CECE0F0](i, a1);
        v36[0] = v9;
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          v14 = v11;
          sub_218C37380((v12 > 1), v13 + 1, 1);
          v11 = v14;
          v9 = v36[0];
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v11 | 0x8000000000000000;
      }
    }

    else
    {
      v15 = (a1 + 32);
      v16 = *(v36[0] + 16);
      do
      {
        v17 = *v15;
        v36[0] = v9;
        v18 = *(v9 + 24);

        if (v16 >= v18 >> 1)
        {
          sub_218C37380((v18 > 1), v16 + 1, 1);
          v9 = v36[0];
        }

        *(v9 + 16) = v16 + 1;
        *(v9 + 8 * v16 + 32) = v17 | 0x8000000000000000;
        ++v15;
        ++v16;
        --v7;
      }

      while (v7);
    }

    v33 = v9;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v19 = OBJC_IVAR____TtC7NewsUI214HistoryService_observers;
  result = swift_beginAccess();
  v20 = *&a3[v19];
  if (v20 >> 62)
  {
    result = sub_219BF7214();
    v21 = result;
    if (!result)
    {
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
    }
  }

  if (v21 >= 1)
  {

    v22 = 0;
    v32 = v21;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x21CECE0F0](v22, v20);
      }

      else
      {
        v28 = *(v20 + 8 * v22 + 32);
      }

      v36[3] = ObjectType;
      v36[4] = &off_282A6F3B0;
      v36[0] = a3;
      v29 = *__swift_project_boxed_opaque_existential_1(v36, ObjectType);
      v35[3] = ObjectType;
      v35[4] = &off_282A6F3B0;
      v35[0] = v29;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v28 + 24);
        v24 = swift_getObjectType();
        v25 = *(v23 + 8);
        v26 = a3;
        v27 = v29;
        v25(v35, v33, v24, v23);
        v21 = v32;
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = a3;
        v31 = v29;
      }

      ++v22;

      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    while (v21 != v22);
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2193ECD90(void *a1, uint64_t a2)
{
  v5 = sub_219BED174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BED184();
  v47 = *(v13 - 8);
  v48 = v13;
  result = MEMORY[0x28223BE20](v13);
  v46 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39[1] = v2;
    v40 = v12;
    v41 = v10;
    v42 = v8;
    v43 = v9;
    v44 = v6;
    v45 = v5;
    v16 = *(a2 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = 0;
      v19 = a2 + 40;
      v39[0] = v19;
      do
      {
        v49 = v17;
        v20 = (v19 + 16 * v18);
        v21 = v18;
        while (1)
        {
          if (v21 >= v16)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          v18 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_18;
          }

          if (!a1)
          {
            goto LABEL_19;
          }

          v22 = *(v20 - 1);
          v23 = *v20;

          v24 = sub_219BF53D4();
          v25 = [a1 hasArticleBeenRead_];

          if (v25)
          {
            break;
          }

          ++v21;
          v20 += 2;
          if (v18 == v16)
          {
            v17 = v49;
            goto LABEL_16;
          }
        }

        v17 = v49;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_218840D24(0, *(v17 + 16) + 1, 1, v17);
          v17 = result;
        }

        v19 = v39[0];
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          result = sub_218840D24((v26 > 1), v27 + 1, 1, v17);
          v17 = result;
        }

        *(v17 + 16) = v27 + 1;
        v28 = v17 + 16 * v27;
        *(v28 + 32) = v22;
        *(v28 + 40) = v23;
      }

      while (v18 != v16);
    }

LABEL_16:
    sub_2186C6148(0, &qword_280E8E3B0);
    v30 = v46;
    v29 = v47;
    v31 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x277D851D0], v48);
    v32 = sub_219BF66E4();
    (*(v29 + 8))(v30, v31);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v17;
    aBlock[4] = sub_2193EE6E0;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_28_3;
    v35 = _Block_copy(aBlock);

    v36 = v40;
    sub_219BED1A4();
    v50 = MEMORY[0x277D84F90];
    sub_218A72744();
    sub_21874E7E4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v37 = v42;
    v38 = v45;
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v36, v37, v35);
    _Block_release(v35);

    (*(v44 + 8))(v37, v38);
    (*(v41 + 8))(v36, v43);
  }

  else
  {
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_2193ED28C(unint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (a1 >> 62)
    {
      v6 = sub_219BF7214();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v36[0] = MEMORY[0x277D84F90];
      result = sub_218C37380(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v7 = v36[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v6; ++i)
        {
          v9 = MEMORY[0x21CECE0F0](i, a1);
          v36[0] = v7;
          v11 = *(v7 + 16);
          v10 = *(v7 + 24);
          if (v11 >= v10 >> 1)
          {
            v12 = v9;
            sub_218C37380((v10 > 1), v11 + 1, 1);
            v9 = v12;
            v7 = v36[0];
          }

          *(v7 + 16) = v11 + 1;
          *(v7 + 8 * v11 + 32) = v9;
        }
      }

      else
      {
        v13 = (a1 + 32);
        v14 = *(v36[0] + 16);
        do
        {
          v15 = *v13;
          v36[0] = v7;
          v16 = *(v7 + 24);

          if (v14 >= v16 >> 1)
          {
            sub_218C37380((v16 > 1), v14 + 1, 1);
            v7 = v36[0];
          }

          *(v7 + 16) = v14 + 1;
          *(v7 + 8 * v14 + 32) = v15;
          ++v13;
          ++v14;
          --v6;
        }

        while (v6);
      }
    }

    v17 = OBJC_IVAR____TtC7NewsUI214HistoryService_observers;
    result = swift_beginAccess();
    v18 = *&v5[v17];
    if (v18 >> 62)
    {
      result = sub_219BF7214();
      v19 = result;
      if (result)
      {
LABEL_20:
        if (v19 >= 1)
        {
          v34 = v18 & 0xC000000000000001;

          v20 = 0;
          v32 = v19;
          v33 = v18;
          do
          {
            if (v34)
            {
              v27 = MEMORY[0x21CECE0F0](v20, v18);
            }

            else
            {
              v27 = *(v18 + 8 * v20 + 32);
            }

            v28 = type metadata accessor for HistoryService();
            v36[3] = v28;
            v36[4] = &off_282A6F3B0;
            v36[0] = v5;
            v29 = *__swift_project_boxed_opaque_existential_1(v36, v28);
            v35[3] = v28;
            v35[4] = &off_282A6F3B0;
            v35[0] = v29;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v21 = *(v27 + 24);
              ObjectType = swift_getObjectType();
              v23 = *(v21 + 8);
              v24 = v5;
              v25 = v29;
              v26 = v21;
              v19 = v32;
              v23(v35, v7, ObjectType, v26);
              v18 = v33;
              swift_unknownObjectRelease();
            }

            else
            {
              v30 = v5;
              v31 = v29;
            }

            ++v20;

            __swift_destroy_boxed_opaque_existential_1(v35);
            __swift_destroy_boxed_opaque_existential_1(v36);
          }

          while (v19 != v20);
        }

LABEL_36:
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_20;
      }
    }
  }

  sub_218A510F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000030, 0x8000000219CFBE10);
  v35[0] = a1;
  sub_218A450F0();
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BF7A74();
}

uint64_t sub_2193ED6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC7NewsUI214HistoryService_headlineService), *(result + OBJC_IVAR____TtC7NewsUI214HistoryService_headlineService + 24));
    v7 = *MEMORY[0x277D30B68];
    v8 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_218B6434C(a2, v7, a3, v8);
  }

  return result;
}

uint64_t sub_2193ED7FC(unint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (a1 >> 62)
    {
      v6 = sub_219BF7214();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v36[0] = MEMORY[0x277D84F90];
      result = sub_218C37380(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v7 = v36[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v6; ++i)
        {
          v9 = MEMORY[0x21CECE0F0](i, a1);
          v36[0] = v7;
          v11 = *(v7 + 16);
          v10 = *(v7 + 24);
          if (v11 >= v10 >> 1)
          {
            v12 = v9;
            sub_218C37380((v10 > 1), v11 + 1, 1);
            v9 = v12;
            v7 = v36[0];
          }

          *(v7 + 16) = v11 + 1;
          *(v7 + 8 * v11 + 32) = v9 | 0x4000000000000000;
        }
      }

      else
      {
        v13 = (a1 + 32);
        v14 = *(v36[0] + 16);
        do
        {
          v15 = *v13;
          v36[0] = v7;
          v16 = *(v7 + 24);

          if (v14 >= v16 >> 1)
          {
            sub_218C37380((v16 > 1), v14 + 1, 1);
            v7 = v36[0];
          }

          *(v7 + 16) = v14 + 1;
          *(v7 + 8 * v14 + 32) = v15 | 0x4000000000000000;
          ++v13;
          ++v14;
          --v6;
        }

        while (v6);
      }
    }

    v17 = OBJC_IVAR____TtC7NewsUI214HistoryService_observers;
    result = swift_beginAccess();
    v18 = *&v5[v17];
    if (v18 >> 62)
    {
      result = sub_219BF7214();
      v19 = result;
      if (result)
      {
LABEL_20:
        if (v19 >= 1)
        {
          v34 = v18 & 0xC000000000000001;

          v20 = 0;
          v32 = v19;
          v33 = v18;
          do
          {
            if (v34)
            {
              v27 = MEMORY[0x21CECE0F0](v20, v18);
            }

            else
            {
              v27 = *(v18 + 8 * v20 + 32);
            }

            v28 = type metadata accessor for HistoryService();
            v36[3] = v28;
            v36[4] = &off_282A6F3B0;
            v36[0] = v5;
            v29 = *__swift_project_boxed_opaque_existential_1(v36, v28);
            v35[3] = v28;
            v35[4] = &off_282A6F3B0;
            v35[0] = v29;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v21 = *(v27 + 24);
              ObjectType = swift_getObjectType();
              v23 = *(v21 + 8);
              v24 = v5;
              v25 = v29;
              v26 = v21;
              v19 = v32;
              v23(v35, v7, ObjectType, v26);
              v18 = v33;
              swift_unknownObjectRelease();
            }

            else
            {
              v30 = v5;
              v31 = v29;
            }

            ++v20;

            __swift_destroy_boxed_opaque_existential_1(v35);
            __swift_destroy_boxed_opaque_existential_1(v36);
          }

          while (v19 != v20);
        }

LABEL_36:
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_20;
      }
    }
  }

  sub_218A510F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000030, 0x8000000219CFBE10);
  v35[0] = a1;
  sub_218A450F0();
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BF7A74();
}

uint64_t sub_2193EDC14(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = sub_219BF5924();
  v9 = a3;
  v10 = a1;
  a5(v8);
}

uint64_t sub_2193EDC98(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI214HistoryService_readingHistory);
  v3 = [a1 articleID];
  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  v4 = [v2 likingStatusForArticleID_];

  if (v4 < 3)
  {
    return v4;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

id sub_2193EDD7C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI214HistoryService_readingHistory);
  v3 = [a1 articleID];
  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  v4 = [v2 hasArticleBeenMarkedAsOffensive_];

  return v4;
}

uint64_t sub_2193EDE00(void *a1)
{
  sub_21874E7E4(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_219BEEFB4();
    swift_unknownObjectRelease();
    v5 = sub_219BF0BD4();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  }

  else
  {
    v6 = sub_219BF0BD4();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  v7 = sub_21983F764(a1, v4);
  sub_218EA3B08(v4);
  return v7;
}

uint64_t sub_2193EDF6C(void *a1, uint64_t a2, uint64_t a3)
{
  v12[3] = type metadata accessor for HistoryService();
  v12[4] = &off_282A6F3B0;
  v12[0] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = a1;
    v8(v12, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = a1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_2193EE028(void *a1, uint64_t a2, uint64_t a3)
{
  v12[3] = type metadata accessor for HistoryService();
  v12[4] = &off_282A6F3B0;
  v12[0] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a1;
    v8(v12, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = a1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_2193EE0E4(uint64_t a1)
{
  v2 = sub_219BED174();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BED1D4();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8E3B0);
  (*(v9 + 104))(v11, *MEMORY[0x277D851D0], v8);
  v12 = sub_219BF66E4();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_2193EE6A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_123;
  v15 = _Block_copy(aBlock);

  sub_219BED1A4();
  v20 = MEMORY[0x277D84F90];
  sub_218A72744();
  sub_21874E7E4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v7, v4, v15);
  _Block_release(v15);

  (*(v19 + 8))(v4, v2);
  (*(v5 + 8))(v7, v18);
}

uint64_t sub_2193EE498()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7NewsUI214HistoryService_observers;
  swift_beginAccess();
  v24 = v1;
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v21 = v3 & 0xFFFFFFFFFFFFFF8;
    v22 = v3 & 0xC000000000000001;
    v20 = v4;
    do
    {
      if (v22)
      {
        v7 = MEMORY[0x21CECE0F0](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      else
      {
        if (v5 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      v28 = ObjectType;
      v29 = &off_282A6F3B0;
      v27[0] = v24;
      v9 = v24;

      v11 = sub_218845F78(v10);

      v12 = *__swift_project_boxed_opaque_existential_1(v27, v28);
      v26[3] = ObjectType;
      v26[4] = &off_282A6F3B0;
      v26[0] = v12;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v7 + 24);
        v14 = swift_getObjectType();
        v25 = v8;
        v15 = v3;
        v16 = *(v13 + 16);
        v17 = v12;
        v18 = v14;
        v4 = v20;
        v16(v26, v11, v18, v13);
        v3 = v15;
        v8 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = v12;
      }

      __swift_destroy_boxed_opaque_existential_1(v26);
      __swift_destroy_boxed_opaque_existential_1(v27);
      ++v5;
    }

    while (v8 != v4);
  }
}

uint64_t sub_2193EE734@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2193EDE00(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2193EE780(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2193EE7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_2193EE850()
{
  result = qword_27CC19DB8;
  if (!qword_27CC19DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19DB8);
  }

  return result;
}

unint64_t sub_2193EE8A8()
{
  result = qword_27CC19DC0;
  if (!qword_27CC19DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19DC0);
  }

  return result;
}

unint64_t sub_2193EE900()
{
  result = qword_27CC19DC8;
  if (!qword_27CC19DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19DC8);
  }

  return result;
}

unint64_t sub_2193EE958()
{
  result = qword_27CC19DD0;
  if (!qword_27CC19DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19DD0);
  }

  return result;
}

uint64_t type metadata accessor for SportsScoresTagFeedGroupKnobs()
{
  result = qword_280EAE9F8;
  if (!qword_280EAE9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2193EEBE0()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      sub_2186F95C4();
      if (v2 <= 0x3F)
      {
        sub_218D528A0();
        if (v3 <= 0x3F)
        {
          sub_218BE9934();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2193EECBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  sub_2189AD5C8();
  v98 = v3;
  v90 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsScoresTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v6);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v96 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = v70 - v12;
  sub_2193F01DC(0, &qword_280E8CB78, MEMORY[0x277D844C8]);
  v95 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v70 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193F0124();
  v17 = v97;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = v5;
  v73 = 0;
  v74 = v14;
  v75 = v8;
  v71 = v6;
  v76 = a1;
  LOBYTE(v109) = 0;
  sub_21877CAF8(&qword_280E91A88, sub_2189AD5C8);
  v19 = v94;
  sub_219BF7674();
  sub_2186F9548();
  v21 = v20;
  LOBYTE(v109) = 1;
  sub_21877CAF8(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v82 = v114;
  LOBYTE(v109) = 2;
  sub_219BF7674();
  v81 = v113;
  LOBYTE(v105) = 3;
  sub_218D553FC();
  sub_219BF7674();
  v83 = v109;
  v89 = v110;
  v88 = v111;
  v87 = v112;
  LOBYTE(v104) = 4;
  sub_219BF7674();
  v97 = v105;
  v86 = v106;
  v85 = v107;
  v84 = v108;
  sub_2186F95C4();
  v23 = v22;
  LOBYTE(v103) = 5;
  sub_21877CAF8(&qword_280E913F8, sub_2186F95C4);
  v77 = v23;
  sub_219BF7674();
  v93 = v104;
  LOBYTE(v102) = 6;
  v78 = v21;
  sub_219BF7674();
  v92 = v103;
  sub_218D528A0();
  v25 = v24;
  LOBYTE(v101) = 7;
  sub_21877CAF8(&qword_280E914A8, sub_218D528A0);
  v70[0] = v25;
  sub_219BF7674();
  v80 = v102;
  sub_218BE9934();
  v27 = v26;
  LOBYTE(v100) = 8;
  sub_21877CAF8(&qword_280E917C0, sub_218BE9934);
  sub_219BF7674();
  v79 = v101;
  LOBYTE(v99) = 9;
  v70[1] = v27;
  sub_219BF7674();
  v28 = v100;
  v29 = v96;
  sub_2189ADE64(v19, v96);
  v30 = v90;
  v31 = *(v90 + 48);
  v32 = v31(v29, 1, v98);
  v33 = v16;
  if (v32 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CAF8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v34 = v72;
    sub_219BEE974();
    v35 = v98;
    v36 = v31(v96, 1, v98);
    v37 = v34;
    v38 = v71;
    v39 = v35;
    if (v36 != 1)
    {
      sub_2189ADEC8(v96);
      v39 = v35;
    }
  }

  else
  {
    v37 = v72;
    v40 = v98;
    (*(v30 + 32))(v72, v96, v98);
    v38 = v71;
    v39 = v40;
  }

  v41 = v75;
  (*(v30 + 32))(v75, v37, v39);
  v42 = v81;
  v43 = v28;
  if (v82)
  {
    v44 = v82;
  }

  else
  {
    v99 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v44 = sub_219BEF534();
  }

  *(v41 + v38[5]) = v44;
  if (v42)
  {

    v45 = v42;
  }

  else
  {
    v99 = 1;
    swift_allocObject();

    v45 = sub_219BEF534();
  }

  v98 = v33;
  *(v41 + v38[6]) = v45;
  v46 = v83;
  if (v83)
  {

    v47 = v46;
    v48 = v89;
    v49 = v88;
    v50 = v87;
  }

  else
  {
    sub_218D554B0();
    swift_allocObject();

    v47 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v48 = sub_219BEF274();
    v99 = 0;
    sub_218D556B4();
    swift_allocObject();
    v49 = sub_219BEF534();
    LOBYTE(v99) = 1;
    swift_allocObject();
    v46 = v83;
    v50 = sub_219BEF534();
  }

  v51 = (v41 + v38[7]);
  *v51 = v47;
  v51[1] = v48;
  v51[2] = v49;
  v51[3] = v50;
  v52 = v97;
  if (v97)
  {
    sub_218D55834(v46);
    v53 = v86;
    v54 = v85;
    v55 = v84;
  }

  else
  {
    sub_218D554B0();
    swift_allocObject();
    sub_218D55834(v46);
    v52 = sub_219BEF274();
    sub_218D55534();
    swift_allocObject();
    v53 = sub_219BEF274();
    v99 = 0;
    sub_218D556B4();
    swift_allocObject();
    v54 = sub_219BEF534();
    LOBYTE(v99) = 1;
    swift_allocObject();
    v55 = sub_219BEF534();
  }

  v56 = (v41 + v38[8]);
  *v56 = v52;
  v56[1] = v53;
  v56[2] = v54;
  v56[3] = v55;
  v57 = v93;
  if (v93)
  {
    sub_218D55834(v97);
    v58 = v57;
  }

  else
  {
    LOBYTE(v99) = 1;
    swift_allocObject();
    sub_218D55834(v97);
    v58 = sub_219BEF534();
  }

  v59 = v76;
  v60 = v91;
  v61 = v98;
  *(v41 + v38[9]) = v58;
  v62 = v94;
  v63 = v92;
  if (v92)
  {

    v64 = v63;
  }

  else
  {
    v99 = 14;
    swift_allocObject();

    v64 = sub_219BEF534();
  }

  v65 = v95;
  *(v41 + v38[10]) = v64;
  v66 = v80;
  if (v80)
  {

    v67 = v66;
  }

  else
  {
    LOBYTE(v99) = 1;
    swift_allocObject();

    v67 = sub_219BEF534();
  }

  *(v41 + v38[11]) = v67;
  if (v79)
  {

    v68 = v79;
  }

  else
  {

    v69 = sub_219BF1F54();
    sub_218C3DB88(v69);
    v61 = v98;

    swift_allocObject();
    v68 = sub_219BEEE04();
  }

  *(v41 + v38[12]) = v68;
  if (!v43)
  {
    swift_allocObject();
    v43 = sub_219BEEE04();
  }

  sub_218D558FC(v97);
  sub_218D558FC(v83);

  sub_2189ADEC8(v62);
  (*(v74 + 8))(v61, v65);
  *(v41 + v38[13]) = v43;
  sub_2193F0178(v41, v60);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

unint64_t sub_2193EFA04(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000012;
    if (a1 != 8)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73656C7572;
    v2 = 0xD000000000000010;
    v3 = 0x726F5365726F6373;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2193EFB60(void *a1)
{
  v3 = v1;
  sub_2193F01DC(0, &qword_27CC19DE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193F0124();
  sub_219BF7B44();
  LOBYTE(v17) = 0;
  sub_2189AD5C8();
  sub_21877CAF8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsScoresTagFeedGroupKnobs();
    *&v17 = *(v3 + v10[5]);
    v19 = 1;
    sub_2186F9548();
    sub_21877CAF8(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    *&v17 = *(v3 + v10[6]);
    v19 = 2;
    sub_219BF7834();
    v11 = (v3 + v10[7]);
    v12 = v11[1];
    v17 = *v11;
    v18 = v12;
    v19 = 3;
    v16[1] = sub_218D552D0();
    sub_219BF7834();
    v13 = (v3 + v10[8]);
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v19 = 4;
    sub_219BF7834();
    *&v17 = *(v3 + v10[9]);
    v19 = 5;
    sub_2186F95C4();
    sub_21877CAF8(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    *&v17 = *(v3 + v10[10]);
    v19 = 6;
    sub_219BF7834();
    *&v17 = *(v3 + v10[11]);
    v19 = 7;
    sub_218D528A0();
    sub_21877CAF8(&qword_280E914B0, sub_218D528A0);
    sub_219BF7834();
    *&v17 = *(v3 + v10[12]);
    v19 = 8;
    sub_218BE9934();
    sub_21877CAF8(&qword_27CC0EE30, sub_218BE9934);
    sub_219BF7834();
    *&v17 = *(v3 + v10[13]);
    v19 = 9;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2193F004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2193F0358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2193F0074(uint64_t a1)
{
  v2 = sub_2193F0124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193F00B0(uint64_t a1)
{
  v2 = sub_2193F0124();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2193F0124()
{
  result = qword_280EAEA28[0];
  if (!qword_280EAEA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAEA28);
  }

  return result;
}

uint64_t sub_2193F0178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoresTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193F01DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193F0124();
    v7 = a3(a1, &type metadata for SportsScoresTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2193F0254()
{
  result = qword_27CC19DE8;
  if (!qword_27CC19DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19DE8);
  }

  return result;
}

unint64_t sub_2193F02AC()
{
  result = qword_280EAEA18;
  if (!qword_280EAEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEA18);
  }

  return result;
}

unint64_t sub_2193F0304()
{
  result = qword_280EAEA20;
  if (!qword_280EAEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEA20);
  }

  return result;
}

uint64_t sub_2193F0358(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F5365726F6373 && a2 == 0xEC000000676E6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CF50A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CF50C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CF9890 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF4FA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEB600 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CEB620 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_2193F06E0()
{
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v0 = sub_219BF6BB4();
  v1 = [objc_opt_self() configurationWithFont_];

  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    [v3 imageWithRenderingMode_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FollowingPuzzleHubModel.hashValue.getter()
{
  sub_219BF7AA4();
  type metadata accessor for FollowingPuzzleHubModel();
  sub_2193F0A5C(&qword_27CC19DF0);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2193F08D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2193F0A5C(&qword_27CC19DF8);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2193F0A5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingPuzzleHubModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2193F0AC8()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRetain();

  sub_2193F198C(v2, v1);
  swift_unknownObjectRelease();

  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2193F0B3C()
{
  v1 = sub_219BF0644();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_bundleSubscriptionManager) cachedSubscription];
  v6 = [v5 isSubscribed];

  if (v6 && (sub_219BF1194(), v7 = sub_219B98388(v4), (*(v2 + 8))(v4, v1), (v7 & 1) != 0))
  {
    v8 = sub_219BF11B4();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2193F0C7C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_219B98678();
    v4 = v3;
    v6 = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(v1, &off_282A3F8C8, v2, v4, v6, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193F0D54()
{
  v1 = v0;
  v2 = sub_219BDBD34();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193F18C4();
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v84 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF11C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF0644();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v76 - v14;
  v85 = v1;
  v15 = *(v1 + 32);
  v16 = OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_bundleSubscriptionManager;
  v17 = [*(v15 + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_bundleSubscriptionManager) cachedSubscription];
  LODWORD(v1) = [v17 isSubscribed];

  v18 = MEMORY[0x277D331F8];
  v81 = v11;
  v82 = v10;
  if (v1)
  {
    v19 = OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_feedModeState;
    swift_beginAccess();
    (v7)[2](v9, v15 + v19, v6);
  }

  else
  {
    (*(v11 + 104))(v9, *MEMORY[0x277D32EF0], v10);
    (v7)[13](v9, *v18, v6);
  }

  v20 = v7;
  v21 = [*(v15 + v16) cachedSubscription];
  v22 = [v21 isSubscribed];

  v23 = v84;
  v24 = *(v83 + 48);
  (v7)[4](v84, v9, v6);
  *(v23 + v24) = v22;
  v25 = MEMORY[0x277D331F0];
  if (v22)
  {
    v26 = v20[11];
    if (v26(v23, v6) == *v25)
    {
      v86 = *__swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_offlineFeatures), *(v15 + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_offlineFeatures + 24));
      v27 = off_282A442B8;
      type metadata accessor for OfflineFeatures();
      v83 = v6;
      v28 = v27(0);
      v6 = v83;
      if (v28 == 6)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v30 = Strong;
          v31 = sub_219B99024([*(v15 + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_appConfigManager) possiblyUnfetchedAppConfiguration]);
          v33 = v32;
          swift_unknownObjectRelease();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v34 = *(v30 + 24);
            ObjectType = swift_getObjectType();
            (*(v34 + 16))(v30, &off_282A3F8C8, v31, v33, ObjectType, v34);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();

          v6 = v83;
        }

        (v20[1])(v23, v6);
        goto LABEL_36;
      }
    }

    goto LABEL_22;
  }

  v36 = v6;
  v37 = OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_appConfigManager;
  v38 = sub_219B9920C([*(v15 + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_appConfigManager) possiblyUnfetchedAppConfiguration]);
  v40 = v39;
  swift_unknownObjectRelease();

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    v26 = v20[11];
    v6 = v36;
    v25 = MEMORY[0x277D331F0];
LABEL_22:
    v49 = v26(v23, v6);
    if (v49 == *MEMORY[0x277D331F8] || v49 == *MEMORY[0x277D331E0] || v49 == *v25 || v49 == *MEMORY[0x277D331E8])
    {
      (v20[12])(v23, v6);
      v62 = v81;
      v61 = v82;
      v63 = v77;
      (*(v81 + 32))(v77, v23, v82);
      swift_beginAccess();
      v64 = swift_unknownObjectWeakLoadStrong();
      if (v64)
      {
        v65 = v64;
        swift_endAccess();
        v66 = v78;
        sub_219B98800(v63);
        v67 = sub_219B98AF8();
        v69 = v68;
        (*(v79 + 8))(v66, v80);
        (*(v62 + 8))(v63, v61);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v70 = *(v65 + 24);
          v71 = swift_getObjectType();
          (*(v70 + 16))(v65, &off_282A3F8C8, v67, v69, v71, v70);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        (*(v62 + 8))(v63, v61);
        swift_endAccess();
      }
    }

    else
    {
      swift_beginAccess();
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v51 = v50;
        v53 = v81;
        v52 = v82;
        v54 = v76;
        (*(v81 + 104))(v76, *MEMORY[0x277D32EF0], v82);
        v55 = v78;
        sub_219B98800(v54);
        v56 = sub_219B98AF8();
        v58 = v57;
        (*(v79 + 8))(v55, v80);
        (*(v53 + 8))(v54, v52);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v59 = *(v51 + 24);
          v60 = swift_getObjectType();
          (*(v59 + 16))(v51, &off_282A3F8C8, v56, v58, v60, v59);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      sub_2193F192C(v23, sub_2193F18C4);
    }

    goto LABEL_36;
  }

  swift_beginAccess();
  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = sub_219B9920C([*(v15 + v37) possiblyUnfetchedAppConfiguration]);
    v46 = v45;
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v47 = *(v43 + 24);
      v48 = swift_getObjectType();
      (*(v47 + 16))(v43, &off_282A3F8C8, v44, v46, v48, v47);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  (v20[1])(v23, v36);
LABEL_36:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v73 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v74 = *(v73 + 24);
      v75 = swift_getObjectType();
      (*(v74 + 40))(v73, &off_282A3F8C8, v75, v74);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193F16C4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v2 + 56))(v1, &off_282A3F8C8, ObjectType, v2);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2193F1764()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_219B99374([*(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_appConfigManager) possiblyUnfetchedAppConfiguration]);
    v5 = v4;
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(v2, &off_282A3F8C8, v3, v5, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 24);
      v11 = swift_getObjectType();
      (*(v10 + 48))(v9, &off_282A3F8C8, v11, v10);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2193F18C4()
{
  if (!qword_280E90958)
  {
    sub_219BF11C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90958);
    }
  }
}

uint64_t sub_2193F192C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2193F198C(uint64_t a1, unint64_t a2)
{
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v8 = OBJC_IVAR____TtC7NewsUI230OfflineStatusBannerDataManager_observers;
    swift_beginAccess();
    v4 = *(a2 + v8);
    v16 = MEMORY[0x277D84F90];
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v9 = sub_219BF7214();
LABEL_4:

  if (v9)
  {
    v14 = v8;
    v15 = a2;
    a2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](a2, v4);
        v10 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          a2 = v15;
          v12 = v16;
          v8 = v14;
          goto LABEL_20;
        }
      }

      else
      {
        if (a2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v10 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v8 = Strong, swift_unknownObjectRelease(), v8 == a1))
      {
      }

      else
      {
        v8 = &v16;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++a2;
      if (v10 == v9)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  *(a2 + v8) = v12;
}

unint64_t sub_2193F1C1C()
{
  result = qword_27CC19E18;
  if (!qword_27CC19E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19E18);
  }

  return result;
}

uint64_t sub_2193F1C80(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [*(a1 + 16) name];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_219BF5454();

  return v9;
}

uint64_t sub_2193F1DDC(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [*(a1 + 16) name];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_219BF5454();

  return v9;
}

uint64_t sub_2193F1F4C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2193F2010()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2193F20E4(uint64_t a1)
{
  v2 = sub_218CD36D0();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2193F2124()
{
  result = qword_280EB1990;
  if (!qword_280EB1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1990);
  }

  return result;
}

uint64_t sub_2193F21C0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v98 = a3;
  v99 = a2;
  v97 = sub_219BE6DF4();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849CF8(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v94 = v5;
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v92 = v89 - v6;
  v116 = sub_219BDBD64();
  v125 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayGapLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayModel(0);
  v11 = MEMORY[0x28223BE20](v10);
  v113 = (v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = v89 - v13;
  sub_218853400();
  v16 = v15;
  v124 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v119 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v127 = v89 - v19;
  sub_218853494();
  MEMORY[0x28223BE20](v20 - 8);
  v101 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v23 = v22;
  v109 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v89 - v27;
  sub_2187FAC34();
  MEMORY[0x28223BE20](v29 - 8);
  v89[2] = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21880B928();
  v32 = v31;
  v91 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v90 = v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89[1] = sub_219BEB1B4();
  v89[0] = v34;
  v35 = sub_2186EFAA4(&qword_280EE3730, sub_21880B928);
  v36 = sub_219BF5E44();
  v117 = v10;
  if (v36)
  {
    v132 = MEMORY[0x277D84F90];
    v108 = v36;
    sub_218C373B0(0, v36 & ~(v36 >> 63), 0);
    v120 = v132;
    v102 = a1;
    result = sub_219BF5DF4();
    if ((v108 & 0x8000000000000000) == 0)
    {
      v38 = 0;
      v107 = (v109 + 16);
      v110 = (v109 + 32);
      v122 = (v124 + 16);
      v126 = (v124 + 32);
      v112 = (v125 + 8);
      v111 = (v124 + 8);
      v100 = (v109 + 8);
      v123 = v26;
      v106 = v32;
      v105 = v28;
      v104 = v35;
      while (1)
      {
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          break;
        }

        v118 = v40;
        v41 = sub_219BF5EC4();
        (*v107)(v26);
        v41(v131, 0);
        sub_219BE6934();
        v42 = v130;
        if ((v42 >> 58) & 0x3C | (v42 >> 1) & 3 || (type metadata accessor for TodaySectionGapDescriptor(0), v43 = swift_projectBox(), v103 = v42, v44 = v43, v45 = type metadata accessor for TodayBlueprintCollapsedSection(0), v46 = *(v45 - 8), (*(v46 + 48))(v44, 1, v45) != 1))
        {

          v71 = v105;
          (*v110)(v105, v26, v23);
        }

        else
        {
          v47 = swift_allocBox();
          (*(v46 + 56))(v48, 1, 1, v45);
          v129 = v47;
          v49 = sub_2186EFAA4(&qword_280EE58D0, sub_2187FAD00);
          v50 = sub_219BF5E44();
          if (v50)
          {
            v51 = v50;
            v128 = MEMORY[0x277D84F90];
            sub_21885760C(0, v50 & ~(v50 >> 63), 0);
            v52 = v128;
            result = sub_219BF5DF4();
            if (v51 < 0)
            {
              goto LABEL_30;
            }

            v53 = v119;
            v125 = v49;
            do
            {
              v54 = sub_219BF5EC4();
              (*v122)(v53);
              v54(v131, 0);
              sub_219BE5FC4();
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_218A1D4DC();
                v121 = *(v55 + 48);
                v56 = v23;
                v57 = v114;
                sub_2193F3194(v14, v114);
                sub_2186EA920();
                v59 = *(v58 + 48);
                v60 = v115;
                sub_219BDBD54();
                v61 = v16;
                v62 = v14;
                v63 = sub_219BDBD44();
                v65 = v64;
                (*v112)(v60, v116);
                v66 = v113;
                *v113 = v63;
                v66[1] = v65;
                v14 = v62;
                v16 = v61;
                v53 = v119;
                sub_218A1D418(v57, v66 + v59);
                swift_storeEnumTagMultiPayload();
                sub_2186EFAA4(&qword_280EDF9E0, type metadata accessor for TodayModel);
                sub_219BE5FB4();
                v67 = v57;
                v23 = v56;
                sub_218853698(v67, type metadata accessor for TodayGapLocation);
                (*v111)(v53, v16);
                v68 = sub_219BF1584();
                (*(*(v68 - 8) + 8))(&v14[v121], v68);
              }

              else
              {
                (*v126)(v127, v53, v16);
                sub_218853698(v14, type metadata accessor for TodayModel);
              }

              v128 = v52;
              v70 = *(v52 + 16);
              v69 = *(v52 + 24);
              if (v70 >= v69 >> 1)
              {
                sub_21885760C(v69 > 1, v70 + 1, 1);
                v52 = v128;
              }

              *(v52 + 16) = v70 + 1;
              (*(v124 + 32))(v52 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v70, v127, v16);
              v26 = v123;
              sub_219BF5E94();
              --v51;
            }

            while (v51);
          }

          else
          {
            v52 = MEMORY[0x277D84F90];
          }

          v76 = sub_2186EFAA4(&qword_280EE5D38, sub_218853400);
          v77 = sub_2186EFAA4(&qword_280EE5D40, sub_218853400);
          MEMORY[0x21CEB9170](v52, v16, v76, v77);
          sub_2186EB3E8();
          sub_2186EFAA4(&qword_280EDF9E0, type metadata accessor for TodayModel);
          v71 = v105;
          sub_219BE6924();
          (*v100)(v26, v23);
        }

        v72 = v120;
        v132 = v120;
        v74 = *(v120 + 16);
        v73 = *(v120 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_218C373B0(v73 > 1, v74 + 1, 1);
          v72 = v132;
        }

        *(v72 + 16) = v74 + 1;
        v75 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v120 = v72;
        (*(v109 + 32))(v72 + v75 + *(v109 + 72) * v74, v71, v23);
        v32 = v106;
        result = sub_219BF5E94();
        v38 = v118;
        if (v118 == v108)
        {
          v78 = v120;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v78 = MEMORY[0x277D84F90];
LABEL_25:
    v79 = sub_2186EFAA4(&qword_280EE58E0, sub_2187FAD00);
    v80 = sub_2186EFAA4(&qword_280EE58F0, sub_2187FAD00);
    MEMORY[0x21CEB9170](v78, v23, v79, v80);
    sub_2186EB3E8();
    sub_2186EFAA4(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v81 = v90;
    sub_219BEB1A4();
    v82 = sub_218827310();
    sub_219BEEFF4();
    sub_219BEEFE4();
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186EFAA4(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v83 = sub_219BEEFC4();

    v84 = 0;
    if (v83)
    {
      v84 = sub_219BEDC74();
    }

    else
    {
      v131[1] = 0;
      v131[2] = 0;
    }

    v131[0] = v83;
    v131[3] = v84;
    sub_219BEB2C4();
    sub_21885AB78(v82);
    v85 = v96;
    v86 = v95;
    v87 = v97;
    (*(v96 + 104))(v95, *MEMORY[0x277D6D868], v97);
    sub_2188552DC();
    v88 = v92;
    sub_219BE85E4();
    (*(v85 + 8))(v86, v87);
    v99(v88);
    (*(v93 + 8))(v88, v94);
    return (*(v91 + 8))(v81, v32);
  }

  return result;
}

uint64_t sub_2193F3194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_2193F320C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = [a1 articleID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_219BF5414();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a3 articleID];
  if (!v12)
  {
    if (!v11)
    {
      return a2 == a4;
    }

LABEL_16:

    return 0;
  }

  v13 = v12;
  v14 = sub_219BF5414();
  v16 = v15;

  if (!v11)
  {
    if (!v16)
    {
      return a2 == a4;
    }

    goto LABEL_16;
  }

  if (!v16)
  {
    goto LABEL_16;
  }

  if (v9 == v14 && v11 == v16)
  {

    return a2 == a4;
  }

  v18 = sub_219BF78F4();

  result = 0;
  if (v18)
  {
    return a2 == a4;
  }

  return result;
}

uint64_t sub_2193F3344(uint64_t a1, void *a2)
{
  sub_21870F514(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  return sub_219BE2F54();
}

uint64_t sub_2193F33E8(void *a1)
{
  sub_21870F514(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_219BE2F54();
}

uint64_t sub_2193F3480(uint64_t a1, void *a2)
{
  sub_21870F514(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  return sub_219BE2F54();
}

uint64_t sub_2193F3520(uint64_t a1, void *a2)
{
  sub_2193F7D74(0, &qword_280EE6A30, sub_2193F7B78, MEMORY[0x277D6CF30]);
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  sub_219BE2F54();
  v4 = sub_219BE2E54();
  type metadata accessor for PuzzlePrewarmer();
  sub_219BE2F84();

  v5 = sub_219BE2E54();
  v6 = sub_219BE3064();

  return v6;
}

id sub_2193F36A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PuzzlePrewarmer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2193F379C(void *a1, const char *a2)
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F625E0);
  v5 = a1;
  oslog = sub_219BE5414();
  v6 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, oslog, v6, a2, v7, 0xCu);
    sub_218962D30(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }
}

uint64_t sub_2193F38F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2193F3910, 0, 0);
}

uint64_t sub_2193F3910()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleService + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleService + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleService), v2);
  v4 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_configurationManager) appConfiguration)];
  swift_unknownObjectRelease();
  v5 = [v4 puzzleTypes];

  v6 = sub_219BF5924();
  v0[4] = v6;

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_2193F3A5C;

  return MEMORY[0x282192240](v6, v2, v3);
}

uint64_t sub_2193F3A5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_2193F3B8C;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_2189F5A78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2193F3B8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193F3BF0()
{
  sub_21870F514(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2193F3CA0()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleHistoryService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2193F3D60;

  return MEMORY[0x282192DC8](v2, v3);
}

uint64_t sub_2193F3D60()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_2193F3F8C;
  }

  else
  {
    v2 = sub_2193F3E74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193F3E74()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F625E0);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "PuzzlePrewarmer: Finished syncing puzzle history", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2193F3F8C()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "PuzzlePrewarmer: Error syncing puzzle history list error=%@", v8, 0xCu);
    sub_218962D30(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2193F4124(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = sub_219BDBD34();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_2193F7D74(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  v2[7] = swift_task_alloc();
  v4 = sub_219BE1B34();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193F42A8, 0, 0);
}

uint64_t sub_2193F42A8()
{
  v44 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_2193F4F74();
  v6 = MEMORY[0x277D6CA20];
  if (v5)
  {
    v7 = &selRef_ignoreCacheCachePolicy;
  }

  else
  {
    v6 = MEMORY[0x277D6CA30];
    v7 = &selRef_cachedOnlyCachePolicy;
  }

  (*(v3 + 104))(v1, *v6, v2);
  v8 = [objc_opt_self() *v7];
  v0[12] = v8;
  v9 = [objc_msgSend(*(v4 + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_configurationManager) appConfiguration)];
  swift_unknownObjectRelease();
  v10 = [v9 puzzleTypes];

  v11 = sub_219BF5924();
  v0[13] = v11;

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v13 = v0[10];
  v12 = v0[11];
  v15 = v0[8];
  v14 = v0[9];
  v16 = sub_219BE5434();
  v0[14] = __swift_project_value_buffer(v16, qword_280F625E0);
  v17 = *(v14 + 16);
  v0[15] = v17;
  v0[16] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v13, v12, v15);

  v18 = sub_219BE5414();
  v19 = sub_219BF6214();

  v20 = os_log_type_enabled(v18, v19);
  v22 = v0[9];
  v21 = v0[10];
  v23 = v0[8];
  if (v20)
  {
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v24 = 136315394;
    v25 = MEMORY[0x21CECC6D0](v11, MEMORY[0x277D837D0]);
    v42 = v8;
    v40 = v19;
    v27 = sub_2186D1058(v25, v26, &v43);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    sub_2187DA560(&unk_280EE7E88, 255, MEMORY[0x277D6CA50]);
    v28 = sub_219BF7894();
    v30 = v29;
    v31 = *(v22 + 8);
    v31(v21, v23);
    v32 = sub_2186D1058(v28, v30, &v43);
    v8 = v42;

    *(v24 + 14) = v32;
    _os_log_impl(&dword_2186C1000, v18, v40, "PuzzlePrewarmer: Prewarming list of puzzlesType=%s with cachePolicy=%s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v41, -1, -1);
    MEMORY[0x21CECF960](v24, -1, -1);
  }

  else
  {

    v31 = *(v22 + 8);
    v31(v21, v23);
  }

  v33 = v0[3];
  v34 = OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleService;
  v0[17] = v31;
  v0[18] = v34;
  v35 = *(v33 + v34 + 24);
  v36 = *(v33 + v34 + 32);
  __swift_project_boxed_opaque_existential_1((v33 + v34), v35);
  v37 = v8;
  v38 = swift_task_alloc();
  v0[19] = v38;
  *v38 = v0;
  v38[1] = sub_2193F46C4;

  return MEMORY[0x282192230](v11, v8, v35, v36);
}

uint64_t sub_2193F46C4(uint64_t a1)
{
  v4 = *v2;
  v4[20] = v1;

  v5 = v4[12];
  if (v1)
  {

    v6 = sub_2193F4CF8;
  }

  else
  {
    v4[21] = a1;

    v6 = sub_2193F4830;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2193F4830()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = (v0[3] + v0[18]);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v1(v5, v2, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_2193F4954;
  v10 = v0[21];
  v11 = v0[7];

  return MEMORY[0x282192228](v10, v11, v7, v8);
}

uint64_t sub_2193F4954()
{
  v2 = *(*v1 + 56);
  *(*v1 + 184) = v0;

  sub_21874582C(v2, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88], sub_2193F7D74);

  if (v0)
  {
    v3 = sub_2193F4DBC;
  }

  else
  {
    v3 = sub_2193F4AEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2193F4AEC()
{
  if (qword_280EE98E8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_219BDBD24();
  sub_219BDBC84();
  v5 = v4;
  (*(v2 + 8))(v1, v3);
  v0[2] = v5;
  type metadata accessor for PuzzlePrewarmer();
  sub_2187DA560(&unk_280EDA020, v6, type metadata accessor for PuzzlePrewarmer);
  sub_219BDCA54();
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[8];
  if (v9)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "PuzzlePrewarmer: Finished prewarming puzzle types", v14, 2u);
    MEMORY[0x21CECF960](v14, -1, -1);
    v15 = v7;
  }

  else
  {
    v15 = v0[12];
    v12 = v7;
  }

  v10(v11, v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2193F4CF8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2193F4DBC()
{
  v1 = v0[23];
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v7 = v0[17];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[8];
  if (v5)
  {
    v19 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2186C1000, v3, v4, "PuzzlePrewarmer: Error prewarming puzzle types error=%@", v11, 0xCu);
    sub_218962D30(v12);
    MEMORY[0x21CECF960](v12, -1, -1);
    v15 = v11;
    v7 = v19;
    MEMORY[0x21CECF960](v15, -1, -1);
    v16 = v3;
  }

  else
  {
    v16 = v0[12];
    v9 = v3;
  }

  v7(v8, v10);

  v17 = v0[1];

  return v17();
}

BOOL sub_2193F4F74()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE98E8 != -1)
  {
    swift_once();
  }

  type metadata accessor for PuzzlePrewarmer();
  sub_2187DA560(&qword_280EDA030, v5, type metadata accessor for PuzzlePrewarmer);
  sub_219BDC7D4();
  v6 = v19;
  if (v19 <= 0.0)
  {
    return 1;
  }

  sub_219BDBD24();
  sub_219BDBC84();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  sub_219BDC764();
  sub_219BDC7D4();

  v9 = v19;
  if (v19 <= 0.0)
  {
    v10 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_configurationManager) appConfiguration)];
    swift_unknownObjectRelease();
    [v10 puzzlesEngineRefreshTimeInterval];
    v9 = v11;
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v12 = v8 - v6;
  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F625E0);
  v14 = sub_219BE5414();
  v15 = sub_219BF6214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218496;
    *(v16 + 4) = v6;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v9;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v12;
    _os_log_impl(&dword_2186C1000, v14, v15, "PuzzlePrewarmer: lastRefreshEngineTime=%f puzzlesEngineRefreshTimeInterval=%f timeDiff=%f", v16, 0x20u);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  return v9 < v12;
}

uint64_t sub_2193F5278(uint64_t a1, uint64_t a2)
{
  v2[14] = a2;
  v3 = sub_219BDBD34();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193F5338, 0, 0);
}

uint64_t sub_2193F5338()
{
  v59 = v0;
  v1 = [*(*(v0 + 112) + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v2 = v58;
  *(v0 + 16) = v57;
  *(v0 + 32) = v2;
  v3 = MEMORY[0x277D84F70];
  if (!*(v0 + 40))
  {
    sub_21874582C(v0 + 16, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F514);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v4 = *(v0 + 104);
  v5 = [v4 integerValue];
  if (v5 == -1)
  {

    goto LABEL_24;
  }

  v6 = v5;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v6))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v7 = v58;
  *(v0 + 48) = v57;
  *(v0 + 64) = v7;
  if (!*(v0 + 72))
  {
    sub_21874582C(v0 + 48, &qword_280E8B4F0, v3 + 8, MEMORY[0x277D83D88], sub_21870F514);
LABEL_18:

    if (v6)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v10 = sub_219BE5434();
    __swift_project_value_buffer(v10, qword_280F625E0);
    v11 = sub_219BE5414();
    v12 = sub_219BF6214();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_30;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "PuzzlePrewarmer: Not a bundle subscriber. Not eligible for prewarming puzzles.";
    goto LABEL_29;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(v0 + 96);
  v9 = [v8 integerValue];

  if (((v9 ^ v6) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_24:
  v15 = (*(v0 + 112) + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleHistoryService);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  if (sub_219BF3734())
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v16 = sub_219BE5434();
    __swift_project_value_buffer(v16, qword_280F625E0);
    v11 = sub_219BE5414();
    v12 = sub_219BF6214();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_30;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "PuzzlePrewarmer: Prewarming puzzles is ignored since user has no puzzles in their history.";
LABEL_29:
    _os_log_impl(&dword_2186C1000, v11, v12, v14, v13, 2u);
    MEMORY[0x21CECF960](v13, -1, -1);
LABEL_30:

LABEL_31:

    v17 = *(v0 + 8);

    return v17();
  }

  sub_219BDC774();
  type metadata accessor for PuzzlePrewarmer();
  sub_2187DA560(&qword_280EDA030, v19, type metadata accessor for PuzzlePrewarmer);
  sub_219BDC7D4();

  if (*(v0 + 80) <= 0.0)
  {
    v20 = [objc_msgSend(*(*(v0 + 112) + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_configurationManager) appConfiguration)];
    swift_unknownObjectRelease();
    [v20 puzzleHistoryPrewarmTimeInterval];
  }

  sub_219BDBC54();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v21 = sub_219BF3774();
  if (!*(v21 + 16))
  {

    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v46 = sub_219BE5434();
    __swift_project_value_buffer(v46, qword_280F625E0);
    v47 = sub_219BE5414();
    v48 = sub_219BF6214();
    v49 = os_log_type_enabled(v47, v48);
    v51 = *(v0 + 128);
    v50 = *(v0 + 136);
    v52 = *(v0 + 120);
    if (v49)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2186C1000, v47, v48, "PuzzlePrewarmer: No puzzles found in puzzle history. Nothing to prewarm for puzzles.", v53, 2u);
      MEMORY[0x21CECF960](v53, -1, -1);
    }

    (*(v51 + 8))(v50, v52);
    goto LABEL_31;
  }

  sub_219BDC6D4();
  sub_219BDC7D4();

  v22 = *(v0 + 88);
  if (v22 <= 0)
  {
    v23 = [objc_msgSend(*(*(v0 + 112) + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_configurationManager) appConfiguration)];
    swift_unknownObjectRelease();
    v24 = [v23 numberOfHistoryPuzzlesToPrewarm];

    v22 = v24;
  }

  v25 = sub_219A79734(v22, v21);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  *(v0 + 144) = v25;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v32 = sub_219BE5434();
  *(v0 + 152) = __swift_project_value_buffer(v32, qword_280F625E0);
  swift_unknownObjectRetain();
  v33 = sub_219BE5414();
  v34 = sub_219BF6214();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v57 = v36;
    *v35 = 136315138;
    v37 = sub_219BF70C4();
    v39 = sub_2186D1058(v37, v38, &v57);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_2186C1000, v33, v34, "PuzzlePrewarmer: Prewarming list of puzzleIDs=%s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x21CECF960](v36, -1, -1);
    MEMORY[0x21CECF960](v35, -1, -1);
  }

  v40 = *(v0 + 112);
  v41 = OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleService;
  *(v0 + 160) = OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleService;
  v42 = *(v40 + v41 + 24);
  v43 = *(v40 + v41 + 32);
  __swift_project_boxed_opaque_existential_1((v40 + v41), v42);
  if ((v31 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_45:
    sub_218B666EC(v25, v27, v29, v31);
    v45 = v44;
LABEL_57:
    swift_unknownObjectRelease();
    goto LABEL_58;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v54 = swift_dynamicCastClass();
  if (!v54)
  {
    swift_unknownObjectRelease();
    v54 = MEMORY[0x277D84F90];
  }

  v55 = *(v54 + 16);

  if (__OFSUB__(v31 >> 1, v29))
  {
    __break(1u);
    goto LABEL_62;
  }

  if (v55 != (v31 >> 1) - v29)
  {
LABEL_62:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v45)
  {
    v45 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

LABEL_58:
  *(v0 + 168) = v45;
  v56 = swift_task_alloc();
  *(v0 + 176) = v56;
  *v56 = v0;
  v56[1] = sub_2193F5CA4;

  return MEMORY[0x282192268](v45, v42, v43);
}

uint64_t sub_2193F5CA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_2193F6108;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_2193F5DF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2193F5DF0()
{
  v1 = (v0[14] + v0[20]);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_2193F5EB4;
  v5 = v0[24];

  return MEMORY[0x282192220](v5, v2, v3);
}

uint64_t sub_2193F5EB4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_2193F6198;
  }

  else
  {
    v2 = sub_2193F5FE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193F5FE4()
{
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[16];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "PuzzlePrewarmer: Finished prewarming puzzles", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2193F6108()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2193F6198()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2193F6228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_2193F7D74(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = sub_219BF5BF4();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = sub_2187A913C;
  v17[7] = v15;
  v17[8] = a3;
  v17[9] = a4;

  v18 = a6;

  sub_218AB3D80(0, 0, v14, &unk_219C79F90, v17);
}

uint64_t sub_2193F63C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[68] = v10;
  v8[67] = a8;
  v8[66] = a7;
  v8[65] = a6;
  v8[63] = a4;
  v8[64] = a5;
  return MEMORY[0x2822009F8](sub_2193F63FC, 0, 0);
}

uint64_t sub_2193F63FC()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  v0[69] = __swift_project_value_buffer(v1, qword_280F625E0);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "PuzzlePrewarmer: Starting downloading thumbnails", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v0[70] = OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleService;
  v6 = v0[63];
  if (v6 >> 62)
  {
    v7 = sub_219BF7214();
    if (v7)
    {
LABEL_7:
      v8 = v0[63];
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](0);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282192248](v7, v8, v5);
        }

        v9 = *(v8 + 32);
        swift_unknownObjectRetain();
      }

      v0[71] = v9;
      v0[72] = 1;
      v10 = (v0[64] + v0[70]);
      v11 = v10[3];
      v12 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v13 = swift_task_alloc();
      v0[73] = v13;
      *v13 = v0;
      v13[1] = sub_2193F66A8;
      v7 = v9;
      v8 = v11;
      v5 = v12;

      return MEMORY[0x282192248](v7, v8, v5);
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v14 = sub_219BE5414();
  v15 = sub_219BF6214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2186C1000, v14, v15, "PuzzlePrewarmer: Finished downloading thumbnails", v16, 2u);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  v17 = v0[65];

  v17();
  v18 = v0[1];

  return v18();
}

uint64_t sub_2193F66A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 592) = a1;
  *(v3 + 600) = v1;

  if (v1)
  {
    v4 = sub_2193F6D84;
  }

  else
  {
    v4 = sub_2193F67C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2193F67C0()
{
  sub_219BF5FF4();
  sub_219BF6004();
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  if (!*(v0 + 40))
  {
LABEL_36:

    swift_unknownObjectRelease();

    v19 = *(v0 + 576);
    v32 = *(v0 + 504);
    if (v32 >> 62)
    {
      v33 = sub_219BF7214();
      if (v19 != v33)
      {
LABEL_38:
        v34 = *(v0 + 504);
        if ((v34 & 0xC000000000000001) != 0)
        {
          goto LABEL_52;
        }

        if (v19 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v35 = *(v34 + 8 * v19 + 32);
          v33 = swift_unknownObjectRetain();
          goto LABEL_41;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 != v33)
      {
        goto LABEL_38;
      }
    }

    v40 = sub_219BE5414();
    v41 = sub_219BF6214();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2186C1000, v40, v41, "PuzzlePrewarmer: Finished downloading thumbnails", v42, 2u);
      MEMORY[0x21CECF960](v42, -1, -1);
    }

    v43 = *(v0 + 520);

    v43();
    v44 = *(v0 + 8);

    return v44();
  }

  while (1)
  {
    sub_218751558((v0 + 48), (v0 + 240));
    sub_218751558((v0 + 16), (v0 + 272));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = *(v0 + 440);
    v47 = *(v0 + 432);
    sub_2186D1230(v0 + 240, v0 + 304);
    sub_218A19674();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_14;
    }

    v6 = *(v0 + 496);
    swift_getObjectType();
    if ((sub_219BF68E4() & 0x8000) == 0)
    {
      if (v6[2] && (v7 = sub_21870F700(0x55746C7561666564, 0xEA00000000006C72), (v8 & 1) != 0))
      {
        sub_2186D1230(v6[7] + 32 * v7, v0 + 336);

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_14:
          __swift_destroy_boxed_opaque_existential_1(v0 + 240);

          goto LABEL_6;
        }

        sub_2193F6EE4(*(v0 + 448), *(v0 + 456), *(v0 + 568), v47, v5);
      }

      else
      {
      }

LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v0 + 240);
      goto LABEL_6;
    }

    v46 = v5;
    v9 = 0;
    v48 = v6;
    v12 = v6[8];
    v11 = v6 + 8;
    v10 = v12;
    v13 = -1 << *(v11 - 32);
    v14 = -v13 < 64 ? ~(-1 << -v13) : -1;
    v15 = v14 & v10;
    v16 = (63 - v13) >> 6;
    if ((v14 & v10) == 0)
    {
      break;
    }

    while (1)
    {
      v17 = v9;
LABEL_29:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v22 = (v48[6] + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      sub_2186D1230(v48[7] + 32 * v21, v0 + 368);
      *(v0 + 192) = v24;
      *(v0 + 200) = v23;
      sub_218751558((v0 + 368), (v0 + 208));

      v19 = v17;
LABEL_30:
      v25 = *(v0 + 208);
      *(v0 + 144) = *(v0 + 192);
      *(v0 + 160) = v25;
      *(v0 + 176) = *(v0 + 224);
      v26 = *(v0 + 152);
      if (!v26)
      {
        break;
      }

      v27 = *(v0 + 144);
      sub_218751558((v0 + 160), (v0 + 400));
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 568);
        v29 = *(v0 + 464);
        v30 = *(v0 + 472);
        *(v0 + 480) = v47;
        *(v0 + 488) = v46;

        MEMORY[0x21CECC330](95, 0xE100000000000000);
        MEMORY[0x21CECC330](v27, v26);

        sub_2193F6EE4(v29, v30, v28, *(v0 + 480), *(v0 + 488));

        v9 = v19;
        if (!v15)
        {
          goto LABEL_22;
        }
      }

      else
      {

        v9 = v19;
        if (!v15)
        {
          goto LABEL_22;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 240);

LABEL_6:
    sub_219BF6004();
    v3 = *(v0 + 128);
    *(v0 + 48) = *(v0 + 112);
    *(v0 + 64) = v3;
    v4 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 80);
    *(v0 + 32) = v4;
    if (!*(v0 + 40))
    {
      goto LABEL_36;
    }
  }

LABEL_22:
  if (v16 <= v9 + 1)
  {
    v18 = v9 + 1;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18 - 1;
  while (1)
  {
    v17 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      v15 = 0;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      *(v0 + 192) = 0u;
      goto LABEL_30;
    }

    v15 = v11[v17];
    ++v9;
    if (v15)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_52:
  v33 = MEMORY[0x21CECE0F0](v19);
  v35 = v33;
LABEL_41:
  *(v0 + 568) = v35;
  *(v0 + 576) = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
LABEL_54:
    __break(1u);
    return MEMORY[0x282192248](v33, v34, v31);
  }

  v36 = (*(v0 + 512) + *(v0 + 560));
  v37 = v36[3];
  v38 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v39 = swift_task_alloc();
  *(v0 + 584) = v39;
  *v39 = v0;
  v39[1] = sub_2193F66A8;
  v33 = v35;
  v34 = v37;
  v31 = v38;

  return MEMORY[0x282192248](v33, v34, v31);
}

uint64_t sub_2193F6D84()
{
  v1 = v0[75];
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[75];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v3, v4, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming error=%@", v6, 0xCu);
    sub_218962D30(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v10 = v0[75];
  v11 = v0[67];

  v11(v10);
  v12 = v0[1];

  return v12();
}

void sub_2193F6EE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v51 = a5;
  v45 = a4;
  v47 = sub_219BDAF64();
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193F7D74(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v42 - v17;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  __swift_project_value_buffer(v18, qword_280F625E0);

  v19 = sub_219BE5414();
  v20 = sub_219BF6214();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v13;
    v44 = v8;
    v22 = v21;
    v23 = v12;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v22 = 136315138;
    *(v22 + 4) = sub_2186D1058(a1, a2, aBlock);
    _os_log_impl(&dword_2186C1000, v19, v20, "PuzzlePrewarmer: Downloading thumbnail %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v25 = v24;
    v12 = v23;
    MEMORY[0x21CECF960](v25, -1, -1);
    v26 = v22;
    v13 = v43;
    v8 = v44;
    MEMORY[0x21CECF960](v26, -1, -1);
  }

  sub_219BDB914();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21874582C(v11, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2193F7D74);

    v27 = sub_219BE5414();
    v28 = sub_219BF61F4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2186D1058(a1, a2, aBlock);
      _os_log_impl(&dword_2186C1000, v27, v28, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming: Invalid URL %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x21CECF960](v30, -1, -1);
      MEMORY[0x21CECF960](v29, -1, -1);
    }
  }

  else
  {
    v31 = v46;
    (*(v13 + 32))(v46, v11, v12);
    (*(v13 + 16))(v16, v31, v12);
    sub_219BDAF44();
    v32 = [objc_opt_self() sharedSession];
    v33 = sub_219BDAF24();
    v34 = swift_allocObject();
    v35 = v13;
    v37 = v48;
    v36 = v49;
    v34[2] = v48;
    v34[3] = v36;
    v38 = v51;
    v34[4] = v45;
    v34[5] = v38;
    aBlock[4] = sub_2193F7DD8;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2193F78E4;
    aBlock[3] = &block_descriptor_124;
    v39 = _Block_copy(aBlock);
    v45 = v12;
    v40 = v37;
    swift_unknownObjectRetain();

    v41 = [v32 dataTaskWithRequest:v33 completionHandler:v39];
    _Block_release(v39);

    [v41 resume];
    (*(v50 + 8))(v8, v47);
    (*(v35 + 8))(v31, v45);
  }
}

void sub_2193F74E4(uint64_t a1, unint64_t a2, void *a3, NSObject *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (!a4)
  {
    if (a3)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        oslog = a3;
        if ([v24 statusCode] <= 399)
        {
          if (a2 >> 60 == 15)
          {
            if (qword_280EE5F80 != -1)
            {
              swift_once();
            }

            v25 = sub_219BE5434();
            __swift_project_value_buffer(v25, qword_280F625E0);
            v26 = sub_219BE5414();
            v27 = sub_219BF61F4();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_2186C1000, v26, v27, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming: No data", v28, 2u);
              MEMORY[0x21CECF960](v28, -1, -1);
            }
          }

          else
          {
            sub_218E1CD90(a1, a2);
            sub_2193F7DE4(a1, a2, a6, a7, a8);
            sub_218822A58(a1, a2);
          }

          goto LABEL_23;
        }
      }
    }

    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v30 = sub_219BE5434();
    __swift_project_value_buffer(v30, qword_280F625E0);
    v31 = a3;
    oslog = sub_219BE5414();
    v32 = sub_219BF61F4();

    if (os_log_type_enabled(oslog, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v31;
      *v34 = a3;
      v35 = v31;
      _os_log_impl(&dword_2186C1000, oslog, v32, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming response=%@", v33, 0xCu);
      sub_218962D30(v34);
      MEMORY[0x21CECF960](v34, -1, -1);
      MEMORY[0x21CECF960](v33, -1, -1);
    }

    goto LABEL_23;
  }

  v9 = a4;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v10 = sub_219BE5434();
  __swift_project_value_buffer(v10, qword_280F625E0);
  v11 = a4;
  oslog = sub_219BE5414();
  v12 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2186C1000, oslog, v12, "PuzzlePrewarmer: Error in downloading small thumbnails when prewarming error=%@", v13, 0xCu);
    sub_218962D30(v14);
    MEMORY[0x21CECF960](v14, -1, -1);
    MEMORY[0x21CECF960](v13, -1, -1);

LABEL_23:
    v29 = oslog;

    goto LABEL_17;
  }

  v29 = a4;

LABEL_17:
}

uint64_t sub_2193F78E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_219BDBA04();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_218822A58(v6, v10);
}

void sub_2193F7B78()
{
  if (!qword_280E8EBA0)
  {
    sub_2186D6710(255, &qword_280E8E130);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EBA0);
    }
  }
}

uint64_t sub_2193F7BE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_2193F38F0(a1, v4);
}

uint64_t sub_2193F7C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187608D4;

  return sub_2193F63C4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_2193F7D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2193F7DE4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v65 = a4;
  v66 = a5;
  v67 = a1;
  v68 = a2;
  v72[2] = *MEMORY[0x277D85DE8];
  v6 = sub_219BDB7E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  v71 = [objc_opt_self() defaultManager];
  v19 = [v71 URLsForDirectory:9 inDomains:1];
  v20 = sub_219BF5924();

  if (*(v20 + 16))
  {
    v63 = v10;
    v64 = v11;
    (*(v11 + 16))(v18, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

    sub_21870F514(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C0B8C0;
    v70 = v18;
    *(v21 + 32) = 0x7954656C7A7A7570;
    *(v21 + 40) = 0xEA00000000006570;
    v22 = [a3 identifier];
    v23 = sub_219BF5414();
    v25 = v24;

    *(v21 + 48) = v23;
    *(v21 + 56) = v25;
    v26 = v70;
    *(v21 + 64) = 0x69616E626D756874;
    *(v21 + 72) = 0xEA0000000000736CLL;
    (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
    sub_2187F3BD4();
    sub_219BDB944();

    (*(v7 + 8))(v9, v6);
    sub_219BDB8F4();
    v27 = sub_219BF53D4();

    LOBYTE(v22) = [v71 fileExistsAtPath_];

    v28 = v69;
    if ((v22 & 1) == 0)
    {
      v29 = sub_219BDB854();
      v72[0] = 0;
      v30 = [v71 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v72];

      if (!v30)
      {
        v52 = v72[0];
        v53 = sub_219BDB724();

        swift_willThrow();
        if (qword_280EE5F80 != -1)
        {
          swift_once();
        }

        v54 = sub_219BE5434();
        __swift_project_value_buffer(v54, qword_280F625E0);
        v55 = v53;
        v56 = sub_219BE5414();
        v57 = sub_219BF61F4();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          v60 = v53;
          v61 = _swift_stdlib_bridgeErrorToNSError();
          *(v58 + 4) = v61;
          *v59 = v61;
          _os_log_impl(&dword_2186C1000, v56, v57, "PuzzlePrewarmer: Error in creating small thumbnails documents directory error=%@", v58, 0xCu);
          sub_218962D30(v59);
          MEMORY[0x21CECF960](v59, -1, -1);
          MEMORY[0x21CECF960](v58, -1, -1);
        }

        v50 = v63;
        v48 = *(v64 + 8);
        v48(v16, v63);
        v51 = v26;
        goto LABEL_25;
      }

      v31 = v72[0];
    }

    v72[0] = v65;
    v72[1] = v66;

    MEMORY[0x21CECC330](1735290926, 0xE400000000000000);
    sub_219BDB864();

    v32 = sub_219BDB8E4();
    v34 = v33;
    v35 = sub_219BF53D4();
    v36 = sub_219BDB9E4();
    v37 = [v71 createFileAtPath:v35 contents:v36 attributes:0];

    if (v37)
    {
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v38 = sub_219BE5434();
      __swift_project_value_buffer(v38, qword_280F625E0);

      v39 = sub_219BE5414();
      v40 = sub_219BF6214();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v72[0] = v42;
        *v41 = 136315138;
        v43 = sub_2186D1058(v32, v34, v72);

        *(v41 + 4) = v43;
        v44 = "PuzzlePrewarmer: puzzle thumbnail saved to %s";
LABEL_17:
        _os_log_impl(&dword_2186C1000, v39, v40, v44, v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x21CECF960](v42, -1, -1);
        MEMORY[0x21CECF960](v41, -1, -1);
LABEL_19:

        v48 = *(v64 + 8);
        v49 = v28;
        v50 = v63;
        v48(v49, v63);
        v48(v16, v50);
        v51 = v70;
LABEL_25:
        v48(v51, v50);
        return;
      }
    }

    else
    {
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v46 = sub_219BE5434();
      __swift_project_value_buffer(v46, qword_280F625E0);

      v39 = sub_219BE5414();
      v40 = sub_219BF61F4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v72[0] = v42;
        *v41 = 136315138;
        v47 = sub_2186D1058(v32, v34, v72);

        *(v41 + 4) = v47;
        v44 = "PuzzlePrewarmer: Error in saving puzzle thumbnail to %s";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v45 = v71;
}

uint64_t sub_2193F8658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2193F5278(a1, v4);
}

uint64_t sub_2193F86F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2193F4124(a1, v4);
}

uint64_t sub_2193F8798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2193F3C80(a1, v4);
}

uint64_t sub_2193F8838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_219BF7314();

    v6 = 0x3D7972657571;
    MEMORY[0x21CECC330](a1, a2);
    MEMORY[0x21CECC330](0x3D73444967617420, 0xE800000000000000);
  }

  else
  {
    v6 = 0x3D734449676174;
  }

  v4 = sub_219BF5D54();
  MEMORY[0x21CECC330](v4);

  return v6;
}

uint64_t sub_2193F891C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if (a2)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7;
  }

  if (v9 || *(a3 + 16))
  {
    if (!a2)
    {
      goto LABEL_15;
    }

    v10 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v10 = v6;
    }

    if (!v10)
    {
      return 0;
    }

    else
    {
LABEL_15:
    }
  }

  else
  {

    return 0;
  }

  return v5;
}