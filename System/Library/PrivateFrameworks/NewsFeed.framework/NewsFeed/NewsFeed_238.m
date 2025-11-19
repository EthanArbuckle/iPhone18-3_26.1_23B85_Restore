unint64_t sub_1D70C3524()
{
  result = qword_1EDF17878;
  if (!qword_1EDF17878)
  {
    sub_1D70C3418();
    sub_1D70C34BC(&qword_1EDF3C840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17878);
  }

  return result;
}

unint64_t sub_1D70C35B8()
{
  result = qword_1EC89A228;
  if (!qword_1EC89A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A228);
  }

  return result;
}

void sub_1D70C3688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70C35B8();
    v7 = a3(a1, &type metadata for SportsBracketGroupDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D70C3734(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SportsBracketGroupDataVisualization()
{
  result = qword_1EDF1D500;
  if (!qword_1EDF1D500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D70C382C()
{
  sub_1D5E4CF90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D70C3940()
{
  result = qword_1EC89A268;
  if (!qword_1EC89A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A268);
  }

  return result;
}

unint64_t sub_1D70C3998()
{
  result = qword_1EC89A270;
  if (!qword_1EC89A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A270);
  }

  return result;
}

unint64_t sub_1D70C39F0()
{
  result = qword_1EC89A278;
  if (!qword_1EC89A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A278);
  }

  return result;
}

uint64_t sub_1D70C3A44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D70C3AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *SportsScoreDataVisualization.with(config:)(uint64_t *a1)
{
  v2 = v1;
  v39 = *v1;
  v4 = sub_1D72585BC();
  v54 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v49 = a1[2];
  v50 = v10;
  v48 = v11;
  v12 = a1[5];
  v47 = a1[4];
  v45 = v9;
  v46 = v12;
  v14 = v1[8];
  v43 = v1[7];
  v13 = v43;
  v44 = v14;
  v16 = v1[5];
  v41 = v1[4];
  v15 = v41;
  v52 = v16;
  v53 = v4;
  v55 = v1[6];
  v38 = *(v54 + 16);
  v38(v8, v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl, v4, v6);
  v40 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources);
  v17 = v40;
  v42 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus);
  v18 = v42;
  v36 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits);
  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata);
  v51 = v19;
  v35 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData);
  v20 = swift_allocObject();
  v20[7] = v13;
  v20[8] = v14;
  v20[4] = v15;
  v20[5] = v16;
  v20[6] = v55;
  v21 = v37;
  (v38)(v20 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl, v37, v4);
  *(v20 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources) = v17;
  *(v20 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus) = v18;
  *(v20 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata) = v19;
  *(v20 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits) = v36;
  *(v20 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData) = v35;
  v22 = (v20 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
  v23 = v45;
  v24 = v46;
  v26 = v49;
  v25 = v50;
  *v22 = v45;
  v22[1] = v25;
  v28 = v47;
  v27 = v48;
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v22[5] = v24;
  v56 = 14906;
  v57 = 0xE200000000000000;

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  MEMORY[0x1DA6F9910](v23, v25);
  v29 = v56;
  v30 = v57;
  v56 = sub_1D72583DC();
  v57 = v31;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v52, v55);
  MEMORY[0x1DA6F9910](v29, v30);

  swift_unknownObjectRelease();

  v32 = v56;
  v33 = v57;
  (*(v54 + 8))(v21, v53);
  v20[2] = v32;
  v20[3] = v33;
  return v20;
}

char *SportsScoreDataVisualization.__allocating_init(competitorTags:leagueTag:umcCanonicalId:event:embedUrl:urlDataSources:eventStatus:traits:metadata:debugData:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v18 = swift_allocObject();
  v19 = *a8;
  v20 = a12[1];
  v33 = *a12;
  v34 = v19;
  v21 = a12[3];
  v35 = a12[2];
  v22 = a12[5];
  v23 = a12[4];
  *(v18 + 7) = a5;
  *(v18 + 8) = a2;
  *(v18 + 4) = a1;
  *(v18 + 5) = a3;
  v37 = a3;
  v24 = v21;
  *(v18 + 6) = a4;
  v25 = OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl;
  v26 = sub_1D72585BC();
  v36 = *(v26 - 8);
  v38 = v26;
  (*(v36 + 16))(&v18[v25], a6);
  *&v18[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources] = a7;
  *&v18[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus] = v34;
  *&v18[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata] = a10;
  *&v18[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits] = a9;
  *&v18[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData] = a11;
  v27 = &v18[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config];
  *v27 = v33;
  v27[1] = v20;
  v27[2] = v35;
  v27[3] = v24;
  v27[4] = v23;
  v27[5] = v22;

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  if (v20)
  {
    sub_1D5F8B638(v33, v20);
    MEMORY[0x1DA6F9910](v33, v20);
    v29 = 14906;
    v28 = 0xE200000000000000;
  }

  else
  {
    v29 = 0;
    v28 = 0xE000000000000000;
  }

  v40 = sub_1D72583DC();
  v41 = v30;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v37, a4);

  MEMORY[0x1DA6F9910](v29, v28);

  sub_1D5F8BBC8(v33, v20);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v36 + 8))(a6, v38);
  *(v18 + 2) = v40;
  *(v18 + 3) = v41;
  return v18;
}

uint64_t SportsScoreDataVisualization.isFeatured.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D7264A0C();
  sub_1D72621EC();
  v2 = sub_1D7264A5C();
  v3 = v1 + 56;
  v4 = -1 << *(v1 + 32);
  v5 = v2 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  v7 = *(v1 + 48);
  while (*(v7 + v5) == 1 && (sub_1D72646CC() & 1) == 0)
  {
    v5 = (v5 + 1) & v6;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t SportsScoreDataVisualization.routeTag.getter()
{
  v1 = *(v0 + 56);
  if (v1 && ([swift_unknownObjectRetain() isRouteable] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v1;
}

NewsFeed::SportsScoreDataVisualizationTrait_optional __swiftcall SportsScoreDataVisualizationTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t sub_1D70C4340@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

uint64_t SportsScoreDataVisualizationTrait.description.getter()
{
  if (*v0)
  {
    return 0x646165687473616DLL;
  }

  else
  {
    return 0x6465727574616566;
  }
}

uint64_t sub_1D70C4484()
{
  if (*v0)
  {
    return 0x646165687473616DLL;
  }

  else
  {
    return 0x6465727574616566;
  }
}

uint64_t SportsScoreDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsScoreDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SportsScoreDataVisualization.embedUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl;
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SportsScoreDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3);
}

char *SportsScoreDataVisualization.init(competitorTags:leagueTag:umcCanonicalId:event:embedUrl:urlDataSources:eventStatus:traits:metadata:debugData:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v14 = *a8;
  v26 = a12[1];
  v27 = *a12;
  v15 = a12[2];
  v16 = a12[3];
  v17 = a12[4];
  v18 = a12[5];
  *(v12 + 7) = a5;
  *(v12 + 8) = a2;
  *(v12 + 4) = a1;
  *(v12 + 5) = a3;
  *(v12 + 6) = a4;
  v19 = OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl;
  v20 = sub_1D72585BC();
  v29 = *(v20 - 8);
  v30 = v20;
  (*(v29 + 16))(&v12[v19], a6);
  *&v12[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources] = a7;
  *&v12[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus] = v14;
  *&v12[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata] = a10;
  *&v12[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits] = a9;
  *&v12[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData] = a11;
  v21 = &v12[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config];
  *v21 = v27;
  v21[1] = v26;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  if (v26)
  {
    sub_1D5F8B638(v27, v26);
    MEMORY[0x1DA6F9910](v27, v26);
    v23 = 14906;
    v22 = 0xE200000000000000;
  }

  else
  {
    v23 = 0;
    v22 = 0xE000000000000000;
  }

  v33 = sub_1D72583DC();
  v34 = v24;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a3, a4);

  MEMORY[0x1DA6F9910](v23, v22);

  sub_1D5F8BBC8(v27, v26);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v29 + 8))(a6, v30);
  *(v12 + 2) = v33;
  *(v12 + 3) = v34;
  return v12;
}

void *SportsScoreDataVisualization.with(metadata:debugData:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[4];
  v50 = v2[5];
  v51 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v2[6];
  v45 = v6;
  v13 = *(v6 + 16);
  v52 = v14;
  v40 = v13;
  v13(v8);
  v42 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources);
  v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits);
  v48 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus);
  v49 = v15;
  v16 = a1;
  v44 = a1;
  if (!a1)
  {
  }

  v39 = v16;
  v41 = v12;
  v46 = v10;
  v17 = a2;
  v43 = a2;
  if (!a2)
  {
    v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData);
  }

  v18 = v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config;
  v20 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
  v19 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8);
  v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 16);
  v38 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 24);
  v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 32);
  v23 = *(v18 + 5);
  v24 = swift_allocObject();
  v24[8] = v11;
  v26 = v50;
  v25 = v51;
  v24[4] = v41;
  v24[5] = v26;
  v27 = v46;
  v24[6] = v47;
  v24[7] = v27;
  (v40)(v24 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl, v25, v52);
  *(v24 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources) = v42;
  *(v24 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus) = v48;
  *(v24 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata) = v39;
  *(v24 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits) = v49;
  *(v24 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData) = v17;
  v28 = (v24 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
  *v28 = v20;
  v28[1] = v19;
  v39 = v23;
  v40 = v21;
  v28[2] = v21;
  v28[3] = v38;
  v28[4] = v22;
  v28[5] = v23;
  if (v19)
  {
    v53 = 14906;
    v54 = 0xE200000000000000;

    v29 = v47;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_1D5F8B638(v20, v19);
    MEMORY[0x1DA6F9910](v20, v19);
    v31 = v53;
    v30 = v54;
  }

  else
  {

    v29 = v47;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v31 = 0;
    v30 = 0xE000000000000000;
  }

  v32 = v51;
  v53 = sub_1D72583DC();
  v54 = v33;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v50, v29);
  MEMORY[0x1DA6F9910](v31, v30);

  v34 = v53;
  v35 = v54;
  (*(v45 + 8))(v32, v52);
  v24[2] = v34;
  v24[3] = v35;
  return v24;
}

uint64_t SportsScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsScoreDataVisualization.init(from:)(a1);
  return v2;
}

char *SportsScoreDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v60 = v2;
  v61 = v4;
  v5 = sub_1D72585BC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70C5B6C(0, &qword_1EDF17690, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v54 = &v52 - v10;
  sub_1D70C5B6C(0, &unk_1EDF17730, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v52 - v13;
  sub_1D6E365DC(0);
  v58 = v15;
  v56 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v57 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70C8D30(0, &qword_1EDF03980, sub_1D70C5BDC, &type metadata for SportsScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = v18;
  v59 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v52 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C5BDC();
  v23 = v1;
  v24 = v60;
  sub_1D7264B0C();
  if (v24)
  {
    swift_deallocPartialClassInstance();
    v34 = a1;
  }

  else
  {
    v25 = v56;
    v60 = a1;
    LOBYTE(v62) = 0;
    sub_1D70C5CFC(&qword_1EDF17850, 255, sub_1D6E365DC);
    v27 = v57;
    v26 = v58;
    sub_1D726431C();
    sub_1D725BF7C();
    (*(v25 + 8))(v27, v26);
    *(v1 + 4) = v62;
    v28 = MEMORY[0x1E69D6C08];
    sub_1D70C5B04(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69D6C08]);
    v30 = v29;
    LOBYTE(v62) = 1;
    sub_1D5C864C0(&unk_1EDF17750, &unk_1EDF17740, v28);
    sub_1D726427C();
    v57 = v22;
    v58 = v19;
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v14, 1, v30) == 1)
    {
      sub_1D70C5CA0(v14, &unk_1EDF17730, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding);
      v32 = 0;
    }

    else
    {
      sub_1D725BF7C();
      v32 = v62;
      (*(v31 + 8))(v14, v30);
    }

    v33 = v55;
    *(v23 + 8) = v32;
    LOBYTE(v62) = 2;
    *(v23 + 5) = sub_1D72642BC();
    *(v23 + 6) = v36;
    sub_1D70C5B04(0, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding, MEMORY[0x1E69D6C08]);
    v38 = v37;
    LOBYTE(v62) = 3;
    sub_1D70C5C30(&unk_1EDF176A0);
    v39 = v54;
    sub_1D726427C();
    v40 = *(v38 - 8);
    if ((*(v40 + 48))(v39, 1, v38) == 1)
    {
      sub_1D70C5CA0(v39, &qword_1EDF17690, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
      v41 = 0;
    }

    else
    {
      sub_1D725BF7C();
      v41 = v62;
      (*(v40 + 8))(v39, v38);
    }

    v42 = v52;
    *(v23 + 7) = v41;
    LOBYTE(v62) = 4;
    sub_1D70C5CFC(&unk_1EDF45B50, 255, MEMORY[0x1E6968FB0]);
    v43 = v53;
    v56 = 0;
    sub_1D726431C();
    (*(v42 + 32))(&v23[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl], v33, v43);
    sub_1D67AB2DC(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    v65 = 5;
    sub_1D70C8AC8(&unk_1EDF04AB0, &unk_1EDF065B0);
    sub_1D726431C();
    *&v23[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources] = v62;
    v65 = 6;
    sub_1D70C5D44();
    sub_1D726431C();
    *&v23[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus] = v62;
    type metadata accessor for SportsScoreDataVisualizationMetadata();
    v65 = 7;
    sub_1D70C5CFC(&unk_1EDF06E90, v44, type metadata accessor for SportsScoreDataVisualizationMetadata);
    sub_1D726427C();
    *&v23[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata] = v62;
    sub_1D70C8D30(0, &qword_1EDF04800, sub_1D5E9DF74, &type metadata for SportsScoreDataVisualizationTrait, MEMORY[0x1E69E64E8]);
    v65 = 10;
    sub_1D70C5DBC(&unk_1EDF047E8, sub_1D70C5E60);
    sub_1D726427C();
    v45 = v62;
    if (!v62)
    {
      v45 = MEMORY[0x1E69E7CD0];
    }

    v55 = v23;
    *&v23[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits] = v45;
    LOBYTE(v62) = 8;
    v46 = sub_1D72642BC();
    v47 = v55;
    *(v55 + 2) = v46;
    *(v47 + 3) = v48;
    type metadata accessor for DebugSportsScoreDataVisualization();
    v65 = 11;
    sub_1D70C5CFC(&unk_1EDF07F78, v49, type metadata accessor for DebugSportsScoreDataVisualization);
    sub_1D726427C();
    LODWORD(v54) = 1;
    *&v55[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData] = v62;
    v65 = 12;
    sub_1D5F8C8D4();
    sub_1D726427C();
    (*(v59 + 8))(v57, v58);
    v23 = v55;
    v50 = &v55[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config];
    v51 = v63;
    *v50 = v62;
    *(v50 + 1) = v51;
    *(v50 + 2) = v64;
    v34 = v60;
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v23;
}

void sub_1D70C5B04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1D70C5B6C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D70C5B04(255, a3, a4, a5, MEMORY[0x1E69D6C08]);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D70C5BDC()
{
  result = qword_1EDF0A718[0];
  if (!qword_1EDF0A718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0A718);
  }

  return result;
}

uint64_t sub_1D70C5C30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D70C5B04(255, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding, MEMORY[0x1E69D6C08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70C5CA0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D70C5B6C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D70C5CFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70C5D44()
{
  result = qword_1EDF072C8;
  if (!qword_1EDF072C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF072C8);
  }

  return result;
}

uint64_t sub_1D70C5DBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D70C8D30(255, &qword_1EDF04800, sub_1D5E9DF74, &type metadata for SportsScoreDataVisualizationTrait, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70C5E60()
{
  result = qword_1EDF07B70;
  if (!qword_1EDF07B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07B70);
  }

  return result;
}

uint64_t SportsScoreDataVisualization.encode(to:)(void *a1)
{
  sub_1D70C5B6C(0, &qword_1EDF17690, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v46 = &v46 - v4;
  sub_1D70C5B6C(0, &unk_1EDF17730, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v47 = &v46 - v7;
  v8 = sub_1D725ABEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E365DC(0);
  v14 = *(v13 - 8);
  v50 = v13;
  v51 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70C8D30(0, &qword_1EDF02598, sub_1D70C5BDC, &type metadata for SportsScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F58]);
  v48 = *(v18 - 8);
  v49 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C5BDC();
  sub_1D7264B5C();
  v54 = *(v53 + 32);
  v22 = qword_1EDF17D78;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_1EDF17D80);
  v24 = (*(v9 + 16))(v12, v23, v8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v26 = MEMORY[0x1E69E62F8];
  sub_1D70C5B04(0, &qword_1EDF04A10, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69E62F8]);
  *(&v46 - 2) = v27;
  *(&v46 - 1) = sub_1D5C864C0(&unk_1EDF04A00, &qword_1EDF04A10, v26);
  swift_getKeyPath();
  sub_1D725BF9C();
  LOBYTE(v54) = 0;
  sub_1D70C5CFC(&qword_1EDF17858, 255, sub_1D6E365DC);
  v29 = v49;
  v28 = v50;
  v30 = v52;
  sub_1D726443C();
  v31 = v21;
  (*(v51 + 8))(v17, v28);
  if (v30)
  {
    return (*(v48 + 8))(v21, v29);
  }

  v32 = v53;
  v33 = swift_unknownObjectRetain();
  v34 = v47;
  sub_1D67A8F10(v33, v47);
  LOBYTE(v54) = 1;
  v35 = MEMORY[0x1E69D6C08];
  sub_1D70C5B04(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69D6C08]);
  sub_1D5C864C0(&unk_1EDF17760, &unk_1EDF17740, v35);
  sub_1D72643BC();
  sub_1D70C5CA0(v34, &unk_1EDF17730, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  LOBYTE(v54) = 2;
  sub_1D72643FC();
  v37 = swift_unknownObjectRetain();
  v38 = v46;
  sub_1D70C698C(v37, v46);
  LOBYTE(v54) = 3;
  sub_1D70C5B04(0, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding, MEMORY[0x1E69D6C08]);
  sub_1D70C5C30(&unk_1EDF176B0);
  sub_1D72643BC();
  sub_1D70C5CA0(v38, &qword_1EDF17690, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
  LOBYTE(v54) = 4;
  sub_1D72585BC();
  sub_1D70C5CFC(&unk_1EDF45B70, 255, MEMORY[0x1E6968FB0]);
  sub_1D726443C();
  v54 = *(v32 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources);
  v60 = 5;
  sub_1D67AB2DC(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  sub_1D70C8AC8(&qword_1EDF04AC0, &qword_1EDF065C0);
  sub_1D726443C();
  v54 = *(v32 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus);
  v60 = 6;
  sub_1D70C8B8C();

  sub_1D726443C();

  v54 = *(v32 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata);
  v60 = 7;
  type metadata accessor for SportsScoreDataVisualizationMetadata();
  sub_1D70C5CFC(&unk_1EDF06EA0, v39, type metadata accessor for SportsScoreDataVisualizationMetadata);
  sub_1D72643BC();
  v54 = *(v32 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits);
  v60 = 10;
  sub_1D70C8D30(0, &qword_1EDF04800, sub_1D5E9DF74, &type metadata for SportsScoreDataVisualizationTrait, MEMORY[0x1E69E64E8]);
  sub_1D70C5DBC(&qword_1EDF047F8, sub_1D70C8BE0);
  sub_1D726443C();
  LOBYTE(v54) = 8;
  sub_1D72643FC();
  v54 = *(v32 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData);
  v60 = 11;
  type metadata accessor for DebugSportsScoreDataVisualization();
  sub_1D70C5CFC(qword_1EDF07F88, v40, type metadata accessor for DebugSportsScoreDataVisualization);
  sub_1D72643BC();
  v41 = *(v53 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8);
  v42 = *(v53 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 16);
  v43 = *(v53 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 24);
  v44 = *(v53 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 32);
  v45 = *(v53 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 40);
  v54 = *(v53 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
  v55 = v41;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v60 = 12;
  sub_1D5F8B638(v54, v41);
  sub_1D5F8D7E0();
  sub_1D72643BC();
  sub_1D5F8BBC8(v54, v55);
  return (*(v48 + 8))(v31, v29);
}

uint64_t sub_1D70C698C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725ABEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70C5B6C(0, &qword_1EDF17690, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v22 - v11;
  v22[1] = a1;
  v13 = qword_1EDF17E30;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EDF17E38);
  v15 = (*(v5 + 16))(v8, v14, v4);
  MEMORY[0x1EEE9AC00](v15, v16);
  v22[-2] = sub_1D5B5534C(0, &qword_1EDF1A870);
  swift_getKeyPath();
  sub_1D725BF5C();
  swift_unknownObjectRelease();
  sub_1D70C5B04(0, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding, MEMORY[0x1E69D6C08]);
  v18 = v17;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v12, 1, v17))
  {
    sub_1D70C5CA0(v12, &qword_1EDF17690, &qword_1EDF17698, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
    v20 = 1;
  }

  else
  {
    (*(v19 + 32))(a2, v12, v18);
    v20 = 0;
  }

  return (*(v19 + 56))(a2, v20, 1, v18);
}

uint64_t sub_1D70C6C7C(char a1)
{
  result = 0x74697465706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x615465756761656CLL;
      break;
    case 2:
      result = 0x6E6F6E6143636D75;
      break;
    case 3:
      result = 0x746E657665;
      break;
    case 4:
      result = 0x6C72556465626D65;
      break;
    case 5:
      result = 0x53617461446C7275;
      break;
    case 6:
      result = 0x617453746E657665;
      break;
    case 7:
      result = 0x617461646174656DLL;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0x65726F6373;
      break;
    case 10:
      result = 0x737469617274;
      break;
    case 11:
      result = 0x7461446775626564;
      break;
    case 12:
      result = 0x6769666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D70C6E04(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D70C6C7C(*a1);
  v5 = v4;
  if (v3 == sub_1D70C6C7C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D70C6E8C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D70C6C7C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70C6EF0()
{
  sub_1D70C6C7C(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D70C6F44()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D70C6C7C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70C6FA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D70CA1C0();
  *a1 = result;
  return result;
}

uint64_t sub_1D70C6FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D70C6C7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D70C701C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D70CA1C0();
  *a1 = result;
  return result;
}

uint64_t sub_1D70C7044(uint64_t a1)
{
  v2 = sub_1D70C5BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70C7080(uint64_t a1)
{
  v2 = sub_1D70C5BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsScoreDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8));

  return v0;
}

uint64_t SportsScoreDataVisualization.__deallocating_deinit()
{
  SportsScoreDataVisualization.deinit();

  return swift_deallocClassInstance();
}

char *sub_1D70C720C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsScoreDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D70C72B8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 40) == *(*a2 + 40) && *(*a1 + 48) == *(*a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

char *SportsScoreDataVisualization.description.getter()
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](v0[5], v0[6]);
  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v1 = SportsDataVisualizationEventStatus.description.getter();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0x737469617274202CLL, 0xE90000000000003DLL);
  sub_1D5E9DF74();
  v2 = sub_1D7262B1C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x7465706D6F63202CLL, 0xEE003D73726F7469);
  v3 = v0[4];
  if (v3 >> 62)
  {
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_12:
    v16 = MEMORY[0x1DA6F9D20](v5, MEMORY[0x1E69E6158]);
    v18 = v17;

    MEMORY[0x1DA6F9910](v16, v18);

    return 0x3D636D7528;
  }

  v19 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v19;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [v8 name];
      v10 = sub_1D726207C();
      v12 = v11;
      swift_unknownObjectRelease();

      v14 = *(v19 + 16);
      v13 = *(v19 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D5BFC364((v13 > 1), v14 + 1, 1);
      }

      ++v7;
      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v4 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t SportsScoreDataVisualization.debugDescription.getter()
{
  if (SportsScoreDataVisualization.isFeatured.getter())
  {
    MEMORY[0x1DA6F9910](0x208FB8EF90ADE2, 0xA700000000000000);
  }

  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData);
  if (v1)
  {
    v2 = *(v1 + 17);

    if (v2 == 1)
    {
      MEMORY[0x1DA6F9910](0x208FB8EFA49DE2, 0xA700000000000000);
    }

    if (*(v1 + 18) == 1)
    {
      MEMORY[0x1DA6F9910](0x2087A59FF0, 0xA500000000000000);
    }
  }

  v3 = SportsDataVisualizationEventStatus.debugDescription.getter();
  MEMORY[0x1DA6F9910](v3);

  return 0;
}

uint64_t SportsScoreDataVisualizationMetadata.__allocating_init(backingTag:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SportsScoreDataVisualizationMetadata.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsScoreDataVisualizationMetadata.init(from:)(a1);
  return v2;
}

void *SportsScoreDataVisualizationMetadata.init(from:)(void *a1)
{
  v3 = v1;
  v23 = *v1;
  sub_1D70C5B6C(0, &unk_1EDF17730, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v22 = &v20 - v7;
  sub_1D70C8D30(0, &qword_1EC89A288, sub_1D70C8C34, &type metadata for SportsScoreDataVisualizationMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C8C34();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = MEMORY[0x1E69D6C08];
    sub_1D70C5B04(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69D6C08]);
    v15 = v14;
    sub_1D5C864C0(&unk_1EDF17750, &unk_1EDF17740, v13);
    v16 = v22;
    sub_1D726427C();
    v18 = *(v15 - 8);
    if ((*(v18 + 48))(v16, 1, v15) == 1)
    {
      (*(v21 + 8))(v12, v9);
      sub_1D70C5CA0(v16, &unk_1EDF17730, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding);
      v19 = 0;
    }

    else
    {
      sub_1D725BF7C();
      (*(v21 + 8))(v12, v9);
      v19 = v24;
      (*(v18 + 8))(v16, v15);
    }

    v3[2] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t SportsScoreDataVisualizationMetadata.encode(to:)(void *a1)
{
  sub_1D70C5B6C(0, &unk_1EDF17730, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - v4;
  sub_1D70C8D30(0, &qword_1EDF024B8, sub_1D70C8C34, &type metadata for SportsScoreDataVisualizationMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C8C34();
  sub_1D7264B5C();
  v12 = swift_unknownObjectRetain();
  sub_1D67A8F10(v12, v5);
  v13 = MEMORY[0x1E69D6C08];
  sub_1D70C5B04(0, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding, MEMORY[0x1E69D6C08]);
  sub_1D5C864C0(&unk_1EDF17760, &unk_1EDF17740, v13);
  sub_1D72643BC();
  sub_1D70C5CA0(v5, &unk_1EDF17730, &unk_1EDF17740, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D70C7D64@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D70C7DB8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D70C7E10(uint64_t a1)
{
  v2 = sub_1D70C8C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70C7E4C(uint64_t a1)
{
  v2 = sub_1D70C8C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsScoreDataVisualizationMetadata.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

_BYTE *DebugSportsScoreDataVisualization.__allocating_init(selection:following:favored:)(_BYTE *a1, char a2, char a3)
{
  result = swift_allocObject();
  result[16] = *a1;
  result[17] = a2;
  result[18] = a3;
  return result;
}

_BYTE *DebugSportsScoreDataVisualization.init(selection:following:favored:)(_BYTE *a1, char a2, char a3)
{
  v3[16] = *a1;
  v3[17] = a2;
  v3[18] = a3;
  return v3;
}

NewsFeed::DebugSportsScoreDataVisualization::Selection_optional __swiftcall DebugSportsScoreDataVisualization.Selection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugSportsScoreDataVisualization.Selection.rawValue.getter()
{
  v1 = 0x6564726163736964;
  if (*v0 != 1)
  {
    v1 = 0x64657265746C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_1D70C8074(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564726163736964;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x64657265746C6966;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6564726163736964;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x64657265746C6966;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D70C8180()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70C8228()
{
  sub_1D72621EC();
}

uint64_t sub_1D70C82BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70C836C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6564726163736964;
  if (v2 != 1)
  {
    v5 = 0x64657265746C6966;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657463656C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D70C8480()
{
  v1 = 0x6E69776F6C6C6F66;
  if (*v0 != 1)
  {
    v1 = 0x6465726F766166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F697463656C6573;
  }
}

uint64_t sub_1D70C84E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70CA20C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70C8508(uint64_t a1)
{
  v2 = sub_1D70C8C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70C8544(uint64_t a1)
{
  v2 = sub_1D70C8C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugSportsScoreDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D70C8D30(0, &qword_1EC89A290, sub_1D70C8C88, &type metadata for DebugSportsScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C8C88();
  sub_1D7264B5C();
  v16 = *(v3 + 16);
  v15 = 0;
  sub_1D70C8CDC();
  sub_1D726443C();
  if (!v2)
  {
    v14 = 1;
    sub_1D726440C();
    v13 = 2;
    sub_1D726440C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t DebugSportsScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DebugSportsScoreDataVisualization.init(from:)(a1);
  return v2;
}

uint64_t DebugSportsScoreDataVisualization.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D70C8D30(0, &qword_1EC89A2A8, sub_1D70C8C88, &type metadata for DebugSportsScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F48]);
  v13 = *(v5 - 8);
  v14 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70C8C88();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v13;
    v17 = 0;
    sub_1D70C8D98();
    v10 = v14;
    sub_1D726431C();
    *(v1 + 16) = v18;
    v16 = 1;
    *(v1 + 17) = sub_1D72642CC() & 1;
    v15 = 2;
    v12 = sub_1D72642CC();
    (*(v9 + 8))(v8, v10);
    *(v3 + 18) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1D70C8A3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1D70C8AC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D67AB2DC(255, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D70C5CFC(a2, 255, type metadata accessor for WebEmbedDataVisualizationURLDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70C8B8C()
{
  result = qword_1EDF072D8;
  if (!qword_1EDF072D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF072D8);
  }

  return result;
}

unint64_t sub_1D70C8BE0()
{
  result = qword_1EDF07B90;
  if (!qword_1EDF07B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07B90);
  }

  return result;
}

unint64_t sub_1D70C8C34()
{
  result = qword_1EDF06EC0;
  if (!qword_1EDF06EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06EC0);
  }

  return result;
}

unint64_t sub_1D70C8C88()
{
  result = qword_1EC89A298;
  if (!qword_1EC89A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A298);
  }

  return result;
}

unint64_t sub_1D70C8CDC()
{
  result = qword_1EC89A2A0;
  if (!qword_1EC89A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2A0);
  }

  return result;
}

void sub_1D70C8D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D70C8D98()
{
  result = qword_1EC89A2B0;
  if (!qword_1EC89A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2B0);
  }

  return result;
}

unint64_t sub_1D70C8DF0()
{
  result = qword_1EDF07B78;
  if (!qword_1EDF07B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07B78);
  }

  return result;
}

unint64_t sub_1D70C8E48()
{
  result = qword_1EC89A2C0;
  if (!qword_1EC89A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2C0);
  }

  return result;
}

uint64_t type metadata accessor for SportsScoreDataVisualization()
{
  result = qword_1EDF214F0;
  if (!qword_1EDF214F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D70C8F00()
{
  result = sub_1D72585BC();
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

unint64_t sub_1D70C9134()
{
  result = qword_1EC89A2C8;
  if (!qword_1EC89A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2C8);
  }

  return result;
}

unint64_t sub_1D70C918C()
{
  result = qword_1EC89A2D0;
  if (!qword_1EC89A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2D0);
  }

  return result;
}

unint64_t sub_1D70C91E4()
{
  result = qword_1EC89A2D8;
  if (!qword_1EC89A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2D8);
  }

  return result;
}

unint64_t sub_1D70C923C()
{
  result = qword_1EC89A2E0;
  if (!qword_1EC89A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2E0);
  }

  return result;
}

unint64_t sub_1D70C9294()
{
  result = qword_1EC89A2E8;
  if (!qword_1EC89A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2E8);
  }

  return result;
}

unint64_t sub_1D70C92EC()
{
  result = qword_1EDF06EB0;
  if (!qword_1EDF06EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06EB0);
  }

  return result;
}

unint64_t sub_1D70C9344()
{
  result = qword_1EDF06EB8;
  if (!qword_1EDF06EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06EB8);
  }

  return result;
}

unint64_t sub_1D70C939C()
{
  result = qword_1EDF0A700;
  if (!qword_1EDF0A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A700);
  }

  return result;
}

unint64_t sub_1D70C93F4()
{
  result = qword_1EDF0A708;
  if (!qword_1EDF0A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A708);
  }

  return result;
}

void *sub_1D70C9448(__int128 *a1, char *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v118 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = a1[7];
  v172 = a1[6];
  v173 = v17;
  v174 = a1[8];
  v175 = *(a1 + 18);
  v18 = a1[3];
  v168 = a1[2];
  v169 = v18;
  v19 = a1[5];
  v170 = a1[4];
  v171 = v19;
  v20 = a1[1];
  v166 = *a1;
  v167 = v20;
  if (a2)
  {
    v137 = v16;
    v138 = v15;
    v21 = MEMORY[0x1E69E6F90];
    v147 = &v109 - v14;
    sub_1D67AB2DC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v111 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D67AB2DC(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    v23 = v22;
    sub_1D5EA74B8();
    v140 = v24;
    v25 = *(v24 - 8);
    v141 = *(v25 + 72);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v135 = *(v25 + 80);
    v136 = v23;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7284F00;
    v112 = v27;
    v134 = v26;
    v28 = (v27 + v26);
    v30 = *(a2 + 5);
    v29 = *(a2 + 6);
    v31 = a2;
    v32 = type metadata accessor for FormatInspectionItem(0);
    v33 = &v28[*(v32 + 24)];
    *v33 = v30;
    *(v33 + 1) = v29;
    v34 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = *(v34 - 8);
    v132 = *(v35 + 56);
    v133 = v34;
    v131 = v35 + 56;
    v132(v33, 0, 1, v34);
    *v28 = 0xD000000000000010;
    *(v28 + 1) = 0x80000001D73C4840;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    v36 = &v28[*(v32 + 28)];
    *v36 = 0;
    *(v36 + 1) = 0;
    v36[16] = -1;
    v37 = *(v32 - 8);
    v38 = *(v37 + 56);
    v39 = v37 + 56;
    (v38)(v28, 0, 1, v32);
    v40 = v147;
    v129 = *(v5 + 16);
    v130 = v5 + 16;
    v129(v147, &v31[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl], v4);
    v145 = v5;
    v41 = *(v5 + 56);
    v139 = v4;
    v42 = v4;
    v43 = v31;
    v127 = v41;
    v128 = v5 + 56;
    v41(v40, 0, 1, v42);

    v44 = v141;

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v40, &v28[v44]);
    v114 = v28;
    v146 = v39;
    v147 = v38;
    (v38)(&v28[v44], 0, 1, v32);
    v45 = *&v31[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources];
    if (v45 >> 62)
    {
      goto LABEL_23;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      while (1)
      {
        v148 = MEMORY[0x1E69E7CC0];
        result = sub_1D6997EC0(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          break;
        }

        v110 = v43;
        v48 = 0;
        v49 = v148;
        v126 = v45 & 0xC000000000000001;
        v50 = 2 * v44;
        v120 = (v145 + 48);
        v117 = (v145 + 32);
        v115 = v45 & 0xFFFFFFFFFFFFFF8;
        v116 = (v145 + 8);
        v119 = xmmword_1D7279970;
        v125 = xmmword_1D7287CC0;
        v122 = v46;
        v123 = v45;
        v124 = 3 * v44;
        v121 = 2 * v44;
        while (!__OFADD__(v48, 1))
        {
          v144 = v49;
          v145 = v48;
          v143 = v48 + 1;
          if (v126)
          {
            v43 = MEMORY[0x1DA6FB460]();
          }

          else
          {
            if (v48 >= *(v115 + 16))
            {
              goto LABEL_22;
            }

            v43 = *(v45 + 8 * v48 + 32);
          }

          v51 = v134;
          v52 = swift_allocObject();
          *(v52 + 16) = v119;
          v142 = v52;
          v53 = (v52 + v51);
          v55 = v43[2];
          v54 = v43[3];
          sub_1D5F8E840(v55, v54);
          sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v55, v54, v53);
          v56 = v32;
          v44 = v32;
          v57 = v147;
          (v147)(v53, 0, 1, v56);
          v58 = v43[4];
          v59 = v43[5];

          v60 = v141;
          sub_1D711F844(7955787, 0xE300000000000000, v58, v59, &v53[v141]);
          v57(&v53[v60], 0, 1, v44);
          v61 = &v53[v50];
          v62 = v137;
          v63 = v139;
          v64 = v129;
          v129(v137, v43 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v139);
          v127(v62, 0, 1, v63);
          v65 = v138;
          sub_1D5EB84C0(v62, v138);
          if ((*v120)(v65, 1, v63) == 1)
          {
            sub_1D70CA334(v62, sub_1D5B4D3E0);
            v132(&v61[*(v44 + 24)], 1, 1, v133);
            *v61 = v125;
            *(v61 + 2) = 0;
            *(v61 + 3) = 0;
            v66 = &v61[*(v44 + 28)];
            *v66 = 0;
            *(v66 + 1) = 0;
            v66[16] = -1;
          }

          else
          {
            v67 = v118;
            v64(v118, v65, v63);
            sub_1D70CA334(v62, sub_1D5B4D3E0);
            v68 = *(v44 + 24);
            (*v117)(&v61[v68], v67, v63);
            v69 = v133;
            swift_storeEnumTagMultiPayload();
            v132(&v61[v68], 0, 1, v69);
            *v61 = v125;
            *(v61 + 2) = 0;
            *(v61 + 3) = 0;
            v70 = &v61[*(v44 + 28)];
            *v70 = 0;
            *(v70 + 1) = 0;
            v70[16] = -1;
            (*v116)(v65, v63);
          }

          v32 = v44;
          (v147)(v61, 0, 1, v44);
          sub_1D6795150(0, 0xE000000000000000, 0, 0, v142, v164);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v155 + 1) = &type metadata for FormatInspectionGroup;
          *&v156 = &off_1F518B2C0;
          v71 = swift_allocObject();
          *&v154 = v71;

          *(v71 + 48) = v165;
          v72 = v164[1];
          *(v71 + 16) = v164[0];
          *(v71 + 32) = v72;
          v148 = v144;
          v74 = *(v144 + 16);
          v73 = *(v144 + 24);
          v45 = v123;
          if (v74 >= v73 >> 1)
          {
            sub_1D6997EC0((v73 > 1), v74 + 1, 1);
          }

          v75 = *(&v155 + 1);
          v76 = v156;
          v77 = __swift_mutable_project_boxed_opaque_existential_1(&v154, *(&v155 + 1));
          v78 = MEMORY[0x1EEE9AC00](v77, v77);
          v80 = &v109 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v81 + 16))(v80, v78);
          sub_1D5BD0BE4(v74, v80, &v148, v75, v76);
          __swift_destroy_boxed_opaque_existential_1(&v154);
          v49 = v148;
          v48 = v145 + 1;
          v50 = v121;
          v82 = v124;
          if (v143 == v122)
          {
            v43 = v110;
            v44 = v141;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v46 = sub_1D7263BFC();
        if (!v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v50 = 2 * v44;
      v82 = 3 * v44;
      v49 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v84 = sub_1D5F62BFC(v49);

      v85 = sub_1D7073500(v84);

      v86 = v114;
      sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v85, 0, 0, &v114[v50]);
      v87 = v147;
      (v147)(&v86[v50], 0, 1, v32);
      v88 = *(v43 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus);

      sub_1D7121678(0x745320746E657645, 0xEC00000073757461, v88, &v86[v82]);
      v87(&v86[v82], 0, 1, v32);
      v89 = &v86[4 * v44];
      v90 = *(v43 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits);

      sub_1D71218E0(0x737469617254, 0xE600000000000000, v90, v89);
      v87(v89, 0, 1, v32);
      v91 = (v43 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
      v92 = *(v43 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8);
      if (v92)
      {
        v93 = *v91;
      }

      else
      {
        v93 = 0;
      }

      v94 = 5 * v141;
      sub_1D67AB2DC(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v95 = swift_initStackObject();
      *(v95 + 16) = v111;
      v160 = v172;
      v161 = v173;
      v162 = v174;
      v163 = v175;
      v156 = v168;
      v157 = v169;
      v158 = v170;
      v159 = v171;
      v154 = v166;
      v155 = v167;
      v96 = v91[1];
      v97 = v91[2];
      v98 = v91[3];
      v99 = v91[4];
      v100 = v91[5];
      v148 = *v91;
      v149 = v96;
      v150 = v97;
      v151 = v98;
      v152 = v99;
      v153 = v100;
      sub_1D5F8B638(v148, v96);
      v101 = sub_1D6924F88(&v154, &v148);
      sub_1D5F8BBC8(v148, v149);
      *(v95 + 56) = &type metadata for FormatInspection;
      *(v95 + 64) = &off_1F51E3FD0;
      *(v95 + 32) = v101;
      v102 = sub_1D5F62BFC(v95);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v95 + 32);
      v103 = sub_1D7073500(v102);

      v104 = v114;
      sub_1D711AD20(0x6769666E6F43, 0xE600000000000000, v103, v93, v92, &v114[v94]);
      (v147)(&v104[v94], 0, 1, v32);
      sub_1D6795150(0x65726F6353, 0xE500000000000000, 0, 0, v112, &v154);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v105 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v105 + 64) = &off_1F518B2C0;
      v106 = swift_allocObject();
      *(v105 + 32) = v106;
      *(v106 + 48) = v156;
      v107 = v155;
      *(v106 + 16) = v154;
      *(v106 + 32) = v107;
      v108 = sub_1D7073500(v105);
      swift_setDeallocating();
      sub_1D70CA334(v105 + 32, sub_1D5E4F358);

      return v108;
    }
  }

  else
  {
    v83 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v83);
  }

  return result;
}

uint64_t sub_1D70CA1C0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D70CA20C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xE900000000000067 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465726F766166 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D70CA334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D70CA394()
{
  result = qword_1EC89A2F8;
  if (!qword_1EC89A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A2F8);
  }

  return result;
}

unint64_t sub_1D70CA3E8()
{
  result = qword_1EC89A300;
  if (!qword_1EC89A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A300);
  }

  return result;
}

unint64_t sub_1D70CA484()
{
  v1 = *v0;
  v2 = 0x62614C656C746974;
  v3 = 0x63536E6565726373;
  if (v1 != 4)
  {
    v3 = 0x656D617266;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000017;
  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D70CA55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70CAF6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70CA584(uint64_t a1)
{
  v2 = sub_1D70CA8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70CA5C0(uint64_t a1)
{
  v2 = sub_1D70CA8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CategoryViewLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D70CAC50(0, &qword_1EC89A310, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  v11 = v3[2];
  v24 = v3[3];
  v25 = v11;
  v12 = v3[4];
  v22 = v3[5];
  v23 = v12;
  v13 = v3[6];
  v20 = v3[7];
  v21 = v13;
  v14 = *(v3 + 16);
  v15 = *(v3 + 136);
  v18 = *(v3 + 152);
  v19 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70CA8C0();
  sub_1D7264B5C();
  v16 = v3[1];
  v27 = *v3;
  v28 = v16;
  v26 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEAAD4(&qword_1EC8801E8);
  sub_1D726443C();
  if (!v2)
  {
    v27 = v25;
    v28 = v24;
    v26 = 1;
    sub_1D726443C();
    v27 = v23;
    v28 = v22;
    v26 = 2;
    sub_1D726443C();
    v27 = v21;
    v28 = v20;
    v26 = 3;
    sub_1D726443C();
    *&v27 = v14;
    v26 = 4;
    sub_1D5B578C4();
    sub_1D726443C();
    v27 = v19;
    v28 = v18;
    v26 = 5;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D70CA8C0()
{
  result = qword_1EC89A318;
  if (!qword_1EC89A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A318);
  }

  return result;
}

uint64_t CategoryViewLayoutAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D70CAC50(0, &qword_1EC89A320, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70CA8C0();
  sub_1D7264B0C();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v26 = 0;
    sub_1D5BEAAD4(&qword_1EDF1A740);
    sub_1D726431C();
    v24 = v28;
    v25 = v27;
    v26 = 1;
    sub_1D726431C();
    v22 = v28;
    v23 = v27;
    v26 = 2;
    sub_1D726431C();
    v20 = v28;
    v21 = v27;
    v26 = 3;
    sub_1D726431C();
    v18 = v28;
    v19 = v27;
    v26 = 4;
    sub_1D5B57870();
    sub_1D726431C();
    v11 = v27;
    v26 = 5;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v13 = v24;
    *a2 = v25;
    *(a2 + 16) = v13;
    v14 = v22;
    *(a2 + 32) = v23;
    *(a2 + 48) = v14;
    v15 = v20;
    *(a2 + 64) = v21;
    *(a2 + 80) = v15;
    v16 = v18;
    *(a2 + 96) = v19;
    *(a2 + 112) = v16;
    *(a2 + 128) = v11;
    v17 = v28;
    *(a2 + 136) = v27;
    *(a2 + 152) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D70CAC50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70CA8C0();
    v7 = a3(a1, &type metadata for CategoryViewLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70CAD00()
{
  result = qword_1EDF0ABF0;
  if (!qword_1EDF0ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ABF0);
  }

  return result;
}

uint64_t sub_1D70CAD54()
{
  sub_1D6C4150C();

  return sub_1D725A24C();
}

uint64_t sub_1D70CADD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D70CADF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 168) = v3;
  return result;
}

unint64_t sub_1D70CAE68()
{
  result = qword_1EC89A328;
  if (!qword_1EC89A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A328);
  }

  return result;
}

unint64_t sub_1D70CAEC0()
{
  result = qword_1EC89A330;
  if (!qword_1EC89A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A330);
  }

  return result;
}

unint64_t sub_1D70CAF18()
{
  result = qword_1EC89A338[0];
  if (!qword_1EC89A338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC89A338);
  }

  return result;
}

uint64_t sub_1D70CAF6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001D73FD0A0 == a2;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73FD0C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73F60A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62614C656C746974 && a2 == 0xEF656D6172466C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63536E6565726373 && a2 == 0xEB00000000656C61 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D70CB17C()
{
  v1 = *(*(v0 + 16) + 16);

  return v1;
}

uint64_t sub_1D70CB1B0(unint64_t a1)
{
  v303 = a1;
  v272 = type metadata accessor for DebugFormatCacheFile();
  v1 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272, v2);
  v271 = v255 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v255 - v6;
  sub_1D70CDFB8(0, &qword_1EDF2C890, sub_1D5B4C8E0);
  v282 = v8;
  v290 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v297 = (v255 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v255 - v13;
  sub_1D70CDFB8(0, &unk_1EDF2C880, sub_1D5B55BC8);
  v281 = v15;
  v289 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v293 = (v255 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v255 - v20;
  sub_1D70CDFB8(0, &qword_1EDF2C860, sub_1D5B4C700);
  v280 = v22;
  v288 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v267 = v255 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v302 = v255 - v27;
  sub_1D70CDFB8(0, &unk_1EDF2C840, sub_1D5B4CBD8);
  v279 = v28;
  v287 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v296 = (v255 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31, v32);
  v300 = v255 - v33;
  sub_1D5EA1328(0);
  v278 = v34;
  v286 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v295 = (v255 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v255 - v39;
  sub_1D70CDFB8(0, &qword_1EDF2C878, sub_1D5B4BADC);
  v277 = v41;
  v285 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v294 = (v255 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = v255 - v46;
  sub_1D70CDFB8(0, &unk_1EDF2C868, sub_1D5B4AD74);
  v276 = v48;
  v284 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v49);
  v292 = (v255 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v51, v52);
  v299 = v255 - v53;
  sub_1D70CDFB8(0, &unk_1EDF2C850, sub_1D5B4A54C);
  v55 = v54;
  v283 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v56);
  v291 = (v255 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58, v59);
  v301 = v255 - v60;
  v61 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = v255 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v68 = (v255 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70CE018(v303, v64, type metadata accessor for FormatFile);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D70CE080(v64, type metadata accessor for FormatFile);
    return MEMORY[0x1E69E7CC0];
  }

  v274 = v55;
  v263 = v1;
  v264 = v7;
  result = sub_1D70CE0E0(v64, v68, type metadata accessor for FormatPackage);
  v70 = 0;
  v313 = MEMORY[0x1E69E7CD0];
  v266 = xmmword_1D7273AE0;
  v270 = v68;
  v303 = v40;
  v298 = v47;
  v71 = v301;
  v72 = v21;
  v269 = v21;
  while (1)
  {
    v73 = byte_1F50F8558[v70 + 32];
    v74 = v72;
    if (v73 <= 6)
    {
      if (byte_1F50F8558[v70 + 32] <= 2u)
      {
        if (byte_1F50F8558[v70 + 32])
        {
          v273 = v70;
          if (v73 == 1)
          {
            v96 = *(v68[8] + 16);
            if (v96)
            {
              v97 = v68[8];
              v98 = 0;
              v275 = MEMORY[0x1E69E7CC0];
LABEL_32:
              v99 = v98;
              while (v99 < v96)
              {
                result = sub_1D70CE148(v97 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v99, v71, &unk_1EDF2C850, sub_1D5B4A54C);
                v98 = v99 + 1;
                if (__OFADD__(v99, 1))
                {
                  goto LABEL_185;
                }

                v102 = v71;
                v103 = v291;
                sub_1D70CE148(v102, v291, &unk_1EDF2C850, sub_1D5B4A54C);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload)
                {
                  if (EnumCaseMultiPayload != 2)
                  {
                    sub_1D5EA17B4(0, &qword_1EDF341E0);
                    v106 = *(v105 + 48);
                    v107 = v291;
                    v108 = v291[6];
                    v109 = v291[7];
                    v110 = v291[4];
                    v310 = v291[5];
                    *v311 = v108;
                    v111 = v291[8];
                    *&v311[16] = v109;
                    v312 = v111;
                    v112 = v291[2];
                    v308 = v291[3];
                    v309 = v110;
                    v113 = *v291;
                    v306 = v291[1];
                    v307 = v112;
                    v305 = v113;
                    v114 = *(&v113 + 1);
                    v268 = v113;

                    sub_1D5D68304(&v305);
                    sub_1D70CE080(v107 + v106, type metadata accessor for FormatMetadata);
                    v71 = v301;
                    sub_1D70CE1B8(v301, &unk_1EDF2C850, sub_1D5B4A54C);
                    result = swift_isUniquelyReferenced_nonNull_native();
                    if ((result & 1) == 0)
                    {
                      result = sub_1D6994DA0(0, *(v275 + 2) + 1, 1, v275);
                      v275 = result;
                    }

                    v116 = *(v275 + 2);
                    v115 = *(v275 + 3);
                    v117 = v116 + 1;
                    if (v116 >= v115 >> 1)
                    {
                      v262 = v116 + 1;
                      result = sub_1D6994DA0((v115 > 1), v116 + 1, 1, v275);
                      v117 = v262;
                      v275 = result;
                    }

                    v118 = v275;
                    *(v275 + 2) = v117;
                    v119 = &v118[24 * v116];
                    *(v119 + 4) = v268;
                    *(v119 + 5) = v114;
                    v119[48] = 1;
                    v68 = v270;
                    if (v98 != v96)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_146;
                  }
                }

                else
                {
                  sub_1D70CE214(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
                  sub_1D70CE080(v103 + *(v100 + 48), type metadata accessor for FormatMetadata);
                  v101 = sub_1D72585BC();
                  (*(*(v101 - 8) + 8))(v103, v101);
                }

                v71 = v301;
                result = sub_1D70CE1B8(v301, &unk_1EDF2C850, sub_1D5B4A54C);
                ++v99;
                if (v98 == v96)
                {
                  v68 = v270;
                  goto LABEL_146;
                }
              }

              goto LABEL_176;
            }

            v275 = MEMORY[0x1E69E7CC0];
LABEL_146:
            v238 = &v304;
LABEL_147:
            sub_1D6E47B7C(*(v238 - 32));

            goto LABEL_156;
          }

          v275 = v68[9];
          v176 = *(v275 + 2);
          if (v176)
          {
            v177 = 0;
            v268 = MEMORY[0x1E69E7CC0];
LABEL_94:
            v178 = v177;
            while (v178 < v176)
            {
              v181 = v299;
              result = sub_1D70CE148(&v275[((*(v284 + 80) + 32) & ~*(v284 + 80)) + *(v284 + 72) * v178], v299, &unk_1EDF2C868, sub_1D5B4AD74);
              v177 = v178 + 1;
              if (__OFADD__(v178, 1))
              {
                goto LABEL_183;
              }

              v182 = v181;
              v183 = v292;
              sub_1D70CE148(v182, v292, &unk_1EDF2C868, sub_1D5B4AD74);
              v184 = swift_getEnumCaseMultiPayload();
              if (v184)
              {
                v72 = v74;
                if (v184 != 2)
                {
                  sub_1D5EA17B4(0, &qword_1EDF34648);
                  v186 = *(v185 + 48);
                  v187 = v292;
                  v188 = v292[4];
                  v189 = v292[6];
                  v310 = v292[5];
                  *v311 = v189;
                  *&v311[9] = *(v292 + 105);
                  v190 = v292[1];
                  v305 = *v292;
                  v191 = v292[2];
                  v308 = v292[3];
                  v309 = v188;
                  v306 = v190;
                  v307 = v191;
                  v192 = *(&v305 + 1);
                  v262 = v305;

                  sub_1D66876CC(&v305);
                  sub_1D70CE080(v187 + v186, type metadata accessor for FormatMetadata);
                  sub_1D70CE1B8(v299, &unk_1EDF2C868, sub_1D5B4AD74);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_1D6994DA0(0, *(v268 + 16) + 1, 1, v268);
                    v268 = result;
                  }

                  v194 = *(v268 + 16);
                  v193 = *(v268 + 24);
                  v72 = v74;
                  if (v194 >= v193 >> 1)
                  {
                    result = sub_1D6994DA0((v193 > 1), v194 + 1, 1, v268);
                    v268 = result;
                  }

                  v195 = v268;
                  *(v268 + 16) = v194 + 1;
                  v196 = v195 + 24 * v194;
                  *(v196 + 32) = v262;
                  *(v196 + 40) = v192;
                  *(v196 + 48) = 2;
                  v68 = v270;
                  if (v177 != v176)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_139;
                }
              }

              else
              {
                sub_1D70CE214(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
                sub_1D70CE080(v183 + *(v179 + 48), type metadata accessor for FormatMetadata);
                v180 = sub_1D72585BC();
                (*(*(v180 - 8) + 8))(v183, v180);
                v72 = v74;
              }

              result = sub_1D70CE1B8(v299, &unk_1EDF2C868, sub_1D5B4AD74);
              ++v178;
              if (v177 == v176)
              {
                goto LABEL_107;
              }
            }

            goto LABEL_177;
          }

LABEL_138:
          v268 = MEMORY[0x1E69E7CC0];
          goto LABEL_139;
        }
      }

      else
      {
        if (byte_1F50F8558[v70 + 32] <= 4u)
        {
          if (v73 == 3)
          {
            sub_1D70CE288();
            inited = swift_initStackObject();
            *(inited + 16) = v266;
            v76 = v68[1];
            *(inited + 32) = *v68;
            *(inited + 40) = v76;
            *(inited + 48) = 3;

            sub_1D6E47B7C(inited);
            swift_setDeallocating();
            result = sub_1D70CE2D8(inited + 32);
          }

          goto LABEL_4;
        }

        if (v73 == 5)
        {
          v120 = v70;
          v121 = v68[11];
          v122 = *(v121 + 16);
          if (v122)
          {
            v123 = 0;
            v124 = MEMORY[0x1E69E7CC0];
LABEL_48:
            v125 = v123;
            while (v125 < v122)
            {
              result = sub_1D70CE018(v121 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v125, v40, sub_1D5EA1328);
              v123 = v125 + 1;
              if (__OFADD__(v125, 1))
              {
                goto LABEL_180;
              }

              v128 = v40;
              v129 = v295;
              sub_1D70CE018(v128, v295, sub_1D5EA1328);
              v130 = swift_getEnumCaseMultiPayload();
              if (v130)
              {
                if (v130 != 2)
                {
                  sub_1D70CE214(0, &qword_1EDF32E98, type metadata accessor for FormatSnippet);
                  v268 = *(v131 + 48);
                  v132 = v295;
                  v133 = *v295;
                  swift_beginAccess();
                  v134 = *(v133 + 24);
                  v275 = *(v133 + 16);
                  v135 = v134;

                  sub_1D70CE080(v132 + v268, type metadata accessor for FormatMetadata);
                  v40 = v303;
                  sub_1D70CE080(v303, sub_1D5EA1328);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_1D6994DA0(0, *(v124 + 16) + 1, 1, v124);
                    v124 = result;
                  }

                  v137 = *(v124 + 16);
                  v136 = *(v124 + 24);
                  v138 = v137 + 1;
                  if (v137 >= v136 >> 1)
                  {
                    v268 = v137 + 1;
                    result = sub_1D6994DA0((v136 > 1), v137 + 1, 1, v124);
                    v138 = v268;
                    v124 = result;
                  }

                  *(v124 + 16) = v138;
                  v139 = v124 + 24 * v137;
                  *(v139 + 32) = v275;
                  *(v139 + 40) = v135;
                  *(v139 + 48) = 5;
                  if (v123 != v122)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_149;
                }
              }

              else
              {
                sub_1D70CE214(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
                sub_1D70CE080(v129 + *(v126 + 48), type metadata accessor for FormatMetadata);
                v127 = sub_1D72585BC();
                (*(*(v127 - 8) + 8))(v129, v127);
              }

              v40 = v303;
              result = sub_1D70CE080(v303, sub_1D5EA1328);
              ++v125;
              if (v123 == v122)
              {
                goto LABEL_149;
              }
            }

            goto LABEL_174;
          }

          v124 = MEMORY[0x1E69E7CC0];
LABEL_149:
          sub_1D6E47B7C(v124);

          v68 = v270;
          v70 = v120;
        }

        else
        {
          v273 = v70;
          v197 = v68[10];
          v198 = *(v197 + 16);
          if (v198)
          {
            v199 = 0;
            v200 = MEMORY[0x1E69E7CC0];
LABEL_110:
            v201 = v199;
            while (v201 < v198)
            {
              v204 = v14;
              v205 = v300;
              result = sub_1D70CE148(v197 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v201, v300, &unk_1EDF2C840, sub_1D5B4CBD8);
              v199 = v201 + 1;
              if (__OFADD__(v201, 1))
              {
                goto LABEL_186;
              }

              v206 = v205;
              v207 = v296;
              sub_1D70CE148(v206, v296, &unk_1EDF2C840, sub_1D5B4CBD8);
              v208 = swift_getEnumCaseMultiPayload();
              if (v208)
              {
                v14 = v204;
                if (v208 != 2)
                {
                  sub_1D5EA17B4(0, &qword_1EDF34010);
                  v210 = *(v209 + 48);
                  v211 = v296;
                  v212 = *v296;
                  v275 = v296[1];
                  v262 = v296[3];
                  v213 = v296[6];
                  v268 = v296[5];
                  v261 = v213;
                  v260 = v296[7];

                  sub_1D70CE080(v211 + v210, type metadata accessor for FormatMetadata);
                  sub_1D70CE1B8(v300, &unk_1EDF2C840, sub_1D5B4CBD8);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  v40 = v303;
                  if ((result & 1) == 0)
                  {
                    result = sub_1D6994DA0(0, *(v200 + 16) + 1, 1, v200);
                    v200 = result;
                  }

                  v215 = *(v200 + 16);
                  v214 = *(v200 + 24);
                  if (v215 >= v214 >> 1)
                  {
                    result = sub_1D6994DA0((v214 > 1), v215 + 1, 1, v200);
                    v200 = result;
                  }

                  *(v200 + 16) = v215 + 1;
                  v216 = v200 + 24 * v215;
                  v217 = v275;
                  *(v216 + 32) = v212;
                  *(v216 + 40) = v217;
                  *(v216 + 48) = 6;
                  v68 = v270;
                  if (v199 != v198)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_151;
                }
              }

              else
              {
                sub_1D70CE214(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
                sub_1D70CE080(v207 + *(v202 + 48), type metadata accessor for FormatMetadata);
                v203 = sub_1D72585BC();
                (*(*(v203 - 8) + 8))(v207, v203);
                v14 = v204;
              }

              result = sub_1D70CE1B8(v300, &unk_1EDF2C840, sub_1D5B4CBD8);
              ++v201;
              v40 = v303;
              if (v199 == v198)
              {
                v68 = v270;
                goto LABEL_151;
              }
            }

            goto LABEL_178;
          }

          v200 = MEMORY[0x1E69E7CC0];
LABEL_151:
          sub_1D6E47B7C(v200);
LABEL_152:

          v70 = v273;
        }

        v72 = v269;
      }

      goto LABEL_4;
    }

    if (byte_1F50F8558[v70 + 32] <= 9u)
    {
      break;
    }

    if (v73 - 11 >= 2)
    {
      v273 = v70;
      v275 = v68[19];
      v140 = *(v275 + 2);
      if (!v140)
      {
        goto LABEL_138;
      }

      v141 = 0;
      v268 = MEMORY[0x1E69E7CC0];
LABEL_63:
      v142 = v141;
      while (v142 < v140)
      {
        result = sub_1D70CE148(&v275[((*(v289 + 80) + 32) & ~*(v289 + 80)) + *(v289 + 72) * v142], v72, &unk_1EDF2C880, sub_1D5B55BC8);
        v141 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          goto LABEL_184;
        }

        v145 = v72;
        v146 = v293;
        sub_1D70CE148(v145, v293, &unk_1EDF2C880, sub_1D5B55BC8);
        v147 = swift_getEnumCaseMultiPayload();
        if (v147)
        {
          if (v147 != 2)
          {
            sub_1D5EA17B4(0, &qword_1EDF2DC48);
            v149 = *(v148 + 48);
            v150 = v293;
            v151 = *v293;
            v262 = v293[1];
            v260 = v293[3];
            v261 = v293[5];

            sub_1D70CE080(v150 + v149, type metadata accessor for FormatMetadata);
            v72 = v74;
            sub_1D70CE1B8(v74, &unk_1EDF2C880, sub_1D5B55BC8);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1D6994DA0(0, *(v268 + 16) + 1, 1, v268);
              v268 = result;
            }

            v153 = *(v268 + 16);
            v152 = *(v268 + 24);
            if (v153 >= v152 >> 1)
            {
              result = sub_1D6994DA0((v152 > 1), v153 + 1, 1, v268);
              v268 = result;
            }

            v154 = v268;
            *(v268 + 16) = v153 + 1;
            v155 = v154 + 24 * v153;
            v156 = v262;
            *(v155 + 32) = v151;
            *(v155 + 40) = v156;
            *(v155 + 48) = 10;
            v68 = v270;
            if (v141 == v140)
            {
LABEL_139:
              v238 = &v300;
              goto LABEL_147;
            }

            goto LABEL_63;
          }
        }

        else
        {
          sub_1D70CE214(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
          sub_1D70CE080(v146 + *(v143 + 48), type metadata accessor for FormatMetadata);
          v144 = sub_1D72585BC();
          (*(*(v144 - 8) + 8))(v146, v144);
        }

        v72 = v74;
        result = sub_1D70CE1B8(v74, &unk_1EDF2C880, sub_1D5B55BC8);
        ++v142;
        if (v141 == v140)
        {
LABEL_107:
          v68 = v270;
          goto LABEL_139;
        }
      }

LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

LABEL_4:
    if (++v70 == 13)
    {
      v240 = *(*(v265 + 24) + 16);

      v302 = v241;
      if (v240)
      {
        v242 = *(v263 + 72);
        v303 = (*(v263 + 80) + 32) & ~*(v263 + 80);
        v243 = v241 + v303;
        v239 = MEMORY[0x1E69E7CC0];
        v244 = v264;
        do
        {
          sub_1D70CE018(v243, v244, type metadata accessor for DebugFormatCacheFile);
          v245 = v313;

          v246 = sub_1D6BE3824();
          v248 = v247;
          v250 = v249;
          v251 = sub_1D61870B4(v246, v247, v249, v245);

          sub_1D6007694(v246, v248, v250);
          if (v251)
          {
            sub_1D70CE0E0(v244, v271, type metadata accessor for DebugFormatCacheFile);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v305 = v239;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D6998F60(0, *(v239 + 16) + 1, 1);
              v239 = v305;
            }

            v254 = *(v239 + 16);
            v253 = *(v239 + 24);
            if (v254 >= v253 >> 1)
            {
              sub_1D6998F60(v253 > 1, v254 + 1, 1);
              v239 = v305;
            }

            *(v239 + 16) = v254 + 1;
            sub_1D70CE0E0(v271, v239 + v303 + v254 * v242, type metadata accessor for DebugFormatCacheFile);
          }

          else
          {
            sub_1D70CE080(v244, type metadata accessor for DebugFormatCacheFile);
          }

          v243 += v242;
          --v240;
        }

        while (v240);
      }

      else
      {
        v239 = MEMORY[0x1E69E7CC0];
      }

      sub_1D70CE080(v270, type metadata accessor for FormatPackage);

      return v239;
    }
  }

  v273 = v70;
  if (v73 == 7)
  {
    v275 = v68[12];
    v157 = *(v275 + 2);
    if (!v157)
    {
      goto LABEL_140;
    }

    v158 = 0;
    v268 = MEMORY[0x1E69E7CC0];
LABEL_78:
    v159 = v158;
    while (1)
    {
      if (v159 >= v157)
      {
        __break(1u);
        goto LABEL_172;
      }

      v162 = v298;
      result = sub_1D70CE148(&v275[((*(v285 + 80) + 32) & ~*(v285 + 80)) + *(v285 + 72) * v159], v298, &qword_1EDF2C878, sub_1D5B4BADC);
      v158 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
        goto LABEL_181;
      }

      v163 = v294;
      sub_1D70CE148(v162, v294, &qword_1EDF2C878, sub_1D5B4BADC);
      v164 = swift_getEnumCaseMultiPayload();
      if (v164)
      {
        if (v164 != 2)
        {
          sub_1D5EA17B4(0, &qword_1EDF2BE08);
          v166 = *(v165 + 48);
          v167 = v294;
          v168 = *v294;
          v169 = v294[1];
          v260 = v294[3];
          v170 = v294[6];
          v261 = v294[5];
          v259 = v170;
          v171 = v294[8];
          v262 = v294[7];
          v258 = v171;
          v257 = v294[9];
          v256 = v294[11];

          sub_1D70CE080(v167 + v166, type metadata accessor for FormatMetadata);
          sub_1D70CE1B8(v298, &qword_1EDF2C878, sub_1D5B4BADC);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D6994DA0(0, *(v268 + 16) + 1, 1, v268);
            v268 = result;
          }

          v173 = *(v268 + 16);
          v172 = *(v268 + 24);
          if (v173 >= v172 >> 1)
          {
            result = sub_1D6994DA0((v172 > 1), v173 + 1, 1, v268);
            v268 = result;
          }

          v174 = v268;
          *(v268 + 16) = v173 + 1;
          v175 = v174 + 24 * v173;
          *(v175 + 32) = v168;
          *(v175 + 40) = v169;
          *(v175 + 48) = 7;
          v68 = v270;
          if (v158 == v157)
          {
LABEL_141:
            sub_1D6E47B7C(v268);
            goto LABEL_152;
          }

          goto LABEL_78;
        }
      }

      else
      {
        sub_1D70CE214(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
        sub_1D70CE080(v163 + *(v160 + 48), type metadata accessor for FormatMetadata);
        v161 = sub_1D72585BC();
        (*(*(v161 - 8) + 8))(v163, v161);
      }

      result = sub_1D70CE1B8(v298, &qword_1EDF2C878, sub_1D5B4BADC);
      ++v159;
      if (v158 == v157)
      {
LABEL_91:
        v68 = v270;
        goto LABEL_141;
      }
    }
  }

  if (v73 == 8)
  {
    v275 = v68[13];
    v77 = *(v275 + 2);
    if (v77)
    {
      v78 = 0;
      v268 = MEMORY[0x1E69E7CC0];
      v79 = v267;
LABEL_15:
      v80 = v78;
      while (v80 < v77)
      {
        v83 = v14;
        v84 = v302;
        result = sub_1D70CE148(&v275[((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v80], v302, &qword_1EDF2C860, sub_1D5B4C700);
        v78 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_182;
        }

        sub_1D70CE148(v84, v79, &qword_1EDF2C860, sub_1D5B4C700);
        v85 = swift_getEnumCaseMultiPayload();
        if (v85)
        {
          v14 = v83;
          if (v85 != 2)
          {
            sub_1D5EA17B4(0, &qword_1EDF343F0);
            v87 = *(v86 + 48);
            v88 = *v79;
            v89 = *(v79 + 8);
            v262 = *(v79 + 32);
            v90 = *(v79 + 48);
            v261 = *(v79 + 40);
            v260 = v90;
            v91 = *(v79 + 64);
            v259 = *(v79 + 56);
            v258 = v91;
            v257 = *(v79 + 72);
            LODWORD(v256) = *(v79 + 80);

            sub_1D60CF6F4(v262, v261, v260, v259, v258, v257, v256);
            sub_1D70CE080(v79 + v87, type metadata accessor for FormatMetadata);
            sub_1D70CE1B8(v302, &qword_1EDF2C860, sub_1D5B4C700);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1D6994DA0(0, *(v268 + 16) + 1, 1, v268);
              v268 = result;
            }

            v93 = *(v268 + 16);
            v92 = *(v268 + 24);
            if (v93 >= v92 >> 1)
            {
              result = sub_1D6994DA0((v92 > 1), v93 + 1, 1, v268);
              v268 = result;
            }

            v94 = v268;
            *(v268 + 16) = v93 + 1;
            v95 = v94 + 24 * v93;
            *(v95 + 32) = v88;
            *(v95 + 40) = v89;
            *(v95 + 48) = 8;
            v68 = v270;
            if (v78 != v77)
            {
              goto LABEL_15;
            }

            goto LABEL_141;
          }
        }

        else
        {
          sub_1D70CE214(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
          sub_1D70CE080(v79 + *(v81 + 48), type metadata accessor for FormatMetadata);
          v82 = sub_1D72585BC();
          (*(*(v82 - 8) + 8))(v79, v82);
          v14 = v83;
        }

        result = sub_1D70CE1B8(v302, &qword_1EDF2C860, sub_1D5B4C700);
        ++v80;
        if (v78 == v77)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_173;
    }

LABEL_140:
    v268 = MEMORY[0x1E69E7CC0];
    goto LABEL_141;
  }

  v218 = v68[14];
  v219 = *(v218 + 16);
  if (!v219)
  {
    v275 = MEMORY[0x1E69E7CC0];
LABEL_155:
    sub_1D6E47B7C(v275);

    v72 = v74;
LABEL_156:
    v70 = v273;
    goto LABEL_4;
  }

  v220 = 0;
  v275 = MEMORY[0x1E69E7CC0];
  v221 = v302;
LABEL_125:
  v222 = v220;
  while (v222 < v219)
  {
    result = sub_1D70CE148(v218 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v222, v14, &qword_1EDF2C890, sub_1D5B4C8E0);
    v220 = v222 + 1;
    if (__OFADD__(v222, 1))
    {
      goto LABEL_179;
    }

    v225 = v221;
    v226 = v14;
    v227 = v14;
    v228 = v297;
    sub_1D70CE148(v227, v297, &qword_1EDF2C890, sub_1D5B4C8E0);
    v229 = swift_getEnumCaseMultiPayload();
    if (v229)
    {
      if (v229 != 2)
      {
        sub_1D5EA17B4(0, &qword_1EDF30528);
        v261 = *(v230 + 48);
        v231 = v297;
        v232 = v297[1];
        v268 = *v297;
        v262 = v232;
        v257 = v297[3];
        v259 = v297[5];
        v256 = v297[7];
        v255[1] = v297[10];
        LODWORD(v260) = *(v231 + 104) | (*(v231 + 106) << 16);
        v258 = v297[12];

        sub_1D62B6F70(v258, v260);
        sub_1D70CE080(v231 + v261, type metadata accessor for FormatMetadata);
        v14 = v226;
        sub_1D70CE1B8(v226, &qword_1EDF2C890, sub_1D5B4C8E0);
        v233 = v275;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D6994DA0(0, *(v233 + 2) + 1, 1, v233);
          v233 = result;
        }

        v235 = *(v233 + 2);
        v234 = *(v233 + 3);
        v40 = v303;
        if (v235 >= v234 >> 1)
        {
          result = sub_1D6994DA0((v234 > 1), v235 + 1, 1, v233);
          v233 = result;
        }

        *(v233 + 2) = v235 + 1;
        v275 = v233;
        v236 = &v233[24 * v235];
        v237 = v262;
        *(v236 + 4) = v268;
        *(v236 + 5) = v237;
        v236[48] = 9;
        v221 = v225;
        v68 = v270;
        v71 = v301;
        if (v220 != v219)
        {
          goto LABEL_125;
        }

        goto LABEL_155;
      }
    }

    else
    {
      sub_1D70CE214(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
      sub_1D70CE080(v228 + *(v223 + 48), type metadata accessor for FormatMetadata);
      v224 = sub_1D72585BC();
      (*(*(v224 - 8) + 8))(v228, v224);
    }

    v14 = v226;
    result = sub_1D70CE1B8(v226, &qword_1EDF2C890, sub_1D5B4C8E0);
    ++v222;
    v40 = v303;
    v71 = v301;
    if (v220 == v219)
    {
      v68 = v270;
      goto LABEL_155;
    }
  }

LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_1D70CD85C(uint64_t a1, uint64_t a2)
{
  v75 = type metadata accessor for DebugFormatCacheFile();
  v5 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](a1, v6);
  v77 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v78 = (&v67 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v2[2] = a1;
  v2[3] = a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    v74 = v17;
    v68 = v2;
    v69 = &v67 - v16;
    v19 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v67 = v15;

    v20 = 0;
    v21 = MEMORY[0x1E69E7CC8];
    v22 = MEMORY[0x1E69E7CC8];
    v72 = v18;
    v73 = a2;
    v70 = v5;
    v71 = v19;
    while (1)
    {
      if (v20 >= *(a2 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        sub_1D726493C();
        __break(1u);
LABEL_40:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      v25 = *(v5 + 72);
      v26 = v78;
      sub_1D70CE018(v19 + v25 * v20, v78, type metadata accessor for DebugFormatCacheFile);
      v27 = *v26;
      v28 = v26[1];
      v29 = v74;
      sub_1D70CE018(v26, v74, type metadata accessor for DebugFormatCacheFile);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v21;
      v31 = sub_1D5B69D90(v27, v28);
      v33 = v21[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_35;
      }

      v37 = v32;
      if (v21[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = v31;
          sub_1D6D83E4C();
          v31 = v60;
        }
      }

      else
      {
        sub_1D6D70CA4(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_1D5B69D90(v27, v28);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_40;
        }
      }

      v21 = v79;
      v76 = v25;
      if (v37)
      {
        sub_1D67D381C(v29, v79[7] + v31 * v25);
      }

      else
      {
        v79[(v31 >> 6) + 8] |= 1 << v31;
        v39 = (v21[6] + 16 * v31);
        *v39 = v27;
        v39[1] = v28;
        sub_1D70CE0E0(v29, v21[7] + v31 * v25, type metadata accessor for DebugFormatCacheFile);
        v40 = v21[2];
        v35 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v35)
        {
          goto LABEL_37;
        }

        v21[2] = v41;
      }

      v42 = v78;
      v43 = sub_1D6BE3824();
      v45 = v44;
      v47 = v46;
      sub_1D70CE018(v42, v77, type metadata accessor for DebugFormatCacheFile);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v22;
      v50 = sub_1D6D62CD8(v43, v45, v47);
      v51 = v22[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_36;
      }

      v54 = v49;
      if (v22[3] >= v53)
      {
        if (v48)
        {
          if ((v49 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1D6D864D8();
          if ((v54 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_1D6D753EC(v53, v48);
        v55 = sub_1D6D62CD8(v43, v45, v47);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_39;
        }

        v50 = v55;
        if ((v54 & 1) == 0)
        {
LABEL_23:
          v22 = v79;
          v79[(v50 >> 6) + 8] |= 1 << v50;
          v57 = v22[6] + 24 * v50;
          *v57 = v43;
          *(v57 + 8) = v45;
          *(v57 + 16) = v47;
          v23 = v76;
          sub_1D70CE0E0(v77, v22[7] + v50 * v76, type metadata accessor for DebugFormatCacheFile);
          v58 = v22[2];
          v35 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v35)
          {
            goto LABEL_38;
          }

          v22[2] = v59;
          goto LABEL_4;
        }
      }

      sub_1D6007694(v43, v45, v47);
      v22 = v79;
      v23 = v76;
      sub_1D67D381C(v77, v79[7] + v50 * v76);
LABEL_4:
      ++v20;
      sub_1D70CE080(v78, type metadata accessor for DebugFormatCacheFile);
      v24 = v72;
      a2 = v73;
      v5 = v70;
      v19 = v71;
      if (v72 == v20)
      {
        v61 = v68;
        v68[4] = v21;
        v61[5] = v22;
        v80 = MEMORY[0x1E69E7CD0];

        v62 = v69;
        do
        {
          sub_1D70CE018(v19, v62, type metadata accessor for DebugFormatCacheFile);
          if (*(v62 + 48))
          {
            swift_beginAccess();

            v64 = sub_1D6C4CF94(v63);

            sub_1D6E47AB8(v64);
            v62 = v69;
          }

          sub_1D70CE080(v62, type metadata accessor for DebugFormatCacheFile);
          v19 += v23;
          --v24;
        }

        while (v24);

        v2 = v68;
        goto LABEL_33;
      }
    }
  }

  v65 = MEMORY[0x1E69E7CC8];
  v2[4] = MEMORY[0x1E69E7CC8];
  v2[5] = v65;

  v80 = MEMORY[0x1E69E7CD0];
  swift_bridgeObjectRetain_n();

LABEL_33:

  v2[6] = v80;
  return v2;
}

uint64_t sub_1D70CDE94()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D70CDF1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *(v4 + 16) == *(v5 + 16) && *(v4 + 24) == *(v5 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0 || (sub_1D6DD7E4C(*(v4 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role), *(v5 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);

  return sub_1D633CC2C(v7, v8);
}

void sub_1D70CDFB8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for FormatFileReference();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D70CE018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70CE080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D70CE0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70CE148(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  sub_1D70CDFB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D70CE1B8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  sub_1D70CDFB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D70CE214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for FormatMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D70CE288()
{
  if (!qword_1EC88EFD0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EFD0);
    }
  }
}

uint64_t sub_1D70CE32C(uint64_t a1)
{
  v63 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v50 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v48 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  v52 = *(a1 + 16);
  if (!v52)
  {
    return v9;
  }

  v10 = 0;
  v51 = a1 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v49 = v8;
  while (1)
  {
    v60 = v10;
    v14 = (v51 + (v10 << 6));
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v19 = v14[5];
    v20 = v14[6];
    v21 = v14[7];
    v62[0] = v9;
    v22 = *(v16 + 16);
    if (v22)
    {
      v61 = v11;
      v23 = v50;
      v53 = v21;
      v24 = v19;
      v25 = v16 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v59 = v15;

      v54 = v16;

      v58 = v17;

      v57 = v18;

      v56 = v24;

      v55 = v20;

      v26 = *(v23 + 72);
      v27 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D5CED2F0(v25, v8);
        sub_1D5FD2D50(v8, v4);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 7 && ((1 << EnumCaseMultiPayload) & 0x83) != 0)
        {
          MEMORY[0x1DA6F9CE0]();
          if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v27 = v62[0];
        }

        else
        {
          sub_1D5CED354(v4);
        }

        v25 += v26;
        --v22;
      }

      while (v22);

      v11 = v61;
    }

    else
    {
      v27 = v9;
    }

    v29 = v27 >> 62;
    if (v27 >> 62)
    {
      v30 = sub_1D7263BFC();
    }

    else
    {
      v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v11 >> 62;
    if (v11 >> 62)
    {
      v47 = sub_1D7263BFC();
      v33 = v47 + v30;
      if (__OFADD__(v47, v30))
      {
LABEL_43:
        __break(1u);
        return v9;
      }
    }

    else
    {
      v32 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v32 + v30;
      if (__OFADD__(v32, v30))
      {
        goto LABEL_43;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v31)
      {
        v34 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v33 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_25:
      sub_1D7263BFC();
      goto LABEL_26;
    }

    if (v31)
    {
      goto LABEL_25;
    }

LABEL_26:
    result = sub_1D7263DDC();
    v11 = result;
    v34 = result & 0xFFFFFFFFFFFFFF8;
LABEL_27:
    v35 = *(v34 + 16);
    v36 = *(v34 + 24);
    if (v29)
    {
      break;
    }

    v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_3;
    }

LABEL_31:
    if (((v36 >> 1) - v35) < v30)
    {
      goto LABEL_47;
    }

    v61 = v11;
    v39 = v34 + 8 * v35 + 32;
    v58 = v34;
    v59 = v30;
    if (v29)
    {
      if (v37 < 1)
      {
        goto LABEL_49;
      }

      sub_1D609C43C();
      sub_1D70CEB00(&qword_1EC8832C0);
      for (i = 0; i != v37; ++i)
      {
        v41 = sub_1D6D87760(v62, i, v27);
        v43 = *v42;
        swift_unknownObjectRetain();
        (v41)(v62, 0);
        *(v39 + 8 * i) = v43;
      }
    }

    else
    {
      sub_1D5B5B5F8();
      swift_arrayInitWithCopy();
    }

    v13 = v60;
    v9 = MEMORY[0x1E69E7CC0];
    v8 = v49;
    v11 = v61;
    if (v59 >= 1)
    {
      v44 = *(v58 + 16);
      v45 = __OFADD__(v44, v59);
      v46 = v44 + v59;
      if (v45)
      {
        goto LABEL_48;
      }

      *(v58 + 16) = v46;
    }

LABEL_4:
    v10 = v13 + 1;
    if (v10 == v52)
    {
      return v11;
    }
  }

  v38 = v34;
  result = sub_1D7263BFC();
  v34 = v38;
  v37 = result;
  if (result)
  {
    goto LABEL_31;
  }

LABEL_3:

  v9 = MEMORY[0x1E69E7CC0];
  v13 = v60;
  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1D70CE814(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1D70CE32C(a1);
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  type metadata accessor for FormatArrangementCuration();
  sub_1D72627FC();
  sub_1D609C43C();
  swift_getWitnessTable();
  sub_1D70CEB00(qword_1EDF049D0);
  return sub_1D72624BC();
}

uint64_t sub_1D70CE91C(uint64_t a1, char a2)
{
  if (a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }
}

uint64_t sub_1D70CE948@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FormatArrangementCuration();
  v5 = *(a1 + *(v4 + 48));
  if (v5 >> 62)
  {
    sub_1D5B5B5F8();

    v11 = sub_1D726403C();

    v5 = v11;
  }

  else
  {
    v6 = v5 & 0xFFFFFFFFFFFFFF8;

    sub_1D726479C();
    sub_1D5B5B5F8();
    if (!swift_dynamicCastMetatype())
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        v10 = v6 + 32;
        while (swift_dynamicCastObjCProtocolConditional())
        {
          v10 += 8;
          if (!--v9)
          {
            goto LABEL_3;
          }
        }

        v5 = v6 | 1;
      }
    }
  }

LABEL_3:
  v7 = *(a1 + *(v4 + 52));
  if (v7 >> 62)
  {
    sub_1D5B5B5F8();

    v12 = sub_1D726403C();

    v7 = v12;
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5B5F8();
  }

  result = sub_1D5CED3B0(v7);
  *a2 = v5;
  return result;
}

uint64_t sub_1D70CEB00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D609C43C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70CEB44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t FormatPublisherLogoSize.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5DEA234(v2);
}

uint64_t _s8NewsFeed23FormatPublisherLogoSizeV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = a1[16];
  v4 = *(a2 + 1);
  v5 = a2[16];
  switch(v2)
  {
    case 0uLL:
      if (v4)
      {
        goto LABEL_16;
      }

LABEL_11:
      sub_1D5CBF568(*(a1 + 1));
      sub_1D5CBF568(v2);
      goto LABEL_12;
    case 1uLL:
      if (v4 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    case 2uLL:
      if (v4 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
  }

  if (v4 < 3)
  {
LABEL_16:
    sub_1D5DEA234(*(a1 + 1));
    sub_1D5DEA234(v4);
    sub_1D5CBF568(v2);
    sub_1D5CBF568(v4);
    return 0;
  }

  sub_1D5DEA234(*(a1 + 1));
  sub_1D5DEA234(v4);
  sub_1D5DEA234(v2);
  sub_1D5DEA234(v4);
  v13 = sub_1D633A310(v2, v4);
  sub_1D5CBF568(v2);
  sub_1D5CBF568(v4);
  sub_1D5CBF568(v4);
  sub_1D5CBF568(v2);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (v3 == 12)
  {
    if (v5 != 12)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 12)
    {
      return 0;
    }

    v8 = FormatFontScalingStyle.rawValue.getter(v7);
    v10 = v9;
    if (v8 == FormatFontScalingStyle.rawValue.getter(v11) && v10 == v12)
    {
    }

    else
    {
      v14 = sub_1D72646CC();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

unint64_t sub_1D70CED9C(uint64_t a1)
{
  result = sub_1D70CEDC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70CEDC4()
{
  result = qword_1EC89A3C0;
  if (!qword_1EC89A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A3C0);
  }

  return result;
}

unint64_t sub_1D70CEE18(void *a1)
{
  a1[1] = sub_1D5CBF0E0();
  a1[2] = sub_1D66F8D08();
  result = sub_1D70CEE50();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70CEE50()
{
  result = qword_1EC89A3C8;
  if (!qword_1EC89A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A3C8);
  }

  return result;
}

Swift::Void __swiftcall FormatButton.prepareForReuse()()
{
  FormatLayoutView.prepareForReuse()();
  *(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask) = 0;
}

id sub_1D70CEF04(char a1)
{
  sub_1D606FC88(0, &qword_1EDF3B460, MEMORY[0x1E69D8768]);
  v4 = *(v3 - 8);
  v7 = MEMORY[0x1EEE9AC00](v3, v5);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC8NewsFeed12FormatButton_isLongPressEnabled;
  *(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_isLongPressEnabled) = a1;
  v11 = OBJC_IVAR____TtC8NewsFeed12FormatButton_longPressGesture;
  if ((a1 & 1) != 0 && !*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_longPressGesture))
  {
    v12 = v6;
    (*(v4 + 104))(v9, *MEMORY[0x1E69D8760], v6, v7);
    v13 = sub_1D725F66C();
    (*(v4 + 8))(v9, v12);
    v14 = *(v1 + v11);
    *(v1 + v11) = v13;

    v11 = OBJC_IVAR____TtC8NewsFeed12FormatButton_longPressGesture;
  }

  result = *(v1 + v11);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

id sub_1D70CF088(id result, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock];
  if (!*&v3[OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock])
  {
    v5 = result;
    *v4 = a2;
    *(v4 + 1) = a3;

    if (([v3 isContextMenuInteractionEnabled] & 1) == 0)
    {
      [v3 setContextMenuInteractionEnabled_];
    }

    v6 = *&v3[OBJC_IVAR____TtC8NewsFeed12FormatButton_onTap];
    result = [v3 showsMenuAsPrimaryAction];
    if ((v6 == v5) != result)
    {

      return [v3 setShowsMenuAsPrimaryAction_];
    }
  }

  return result;
}

uint64_t FormatButton.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id FormatButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *FormatButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed12FormatButton_identifier];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed12FormatButton_onTap;
  sub_1D606FC88(0, &qword_1EDF3B450, MEMORY[0x1E69D8770]);
  v13 = v12;
  *&v4[v11] = [objc_allocWithZone(v12) init];
  v14 = OBJC_IVAR____TtC8NewsFeed12FormatButton_onLongPress;
  *&v4[v14] = [objc_allocWithZone(v13) init];
  v4[OBJC_IVAR____TtC8NewsFeed12FormatButton_isLongPressEnabled] = 0;
  v15 = OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed12FormatButton_longPressGesture] = 0;
  v16 = &v4[OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed12FormatButton_overriddenStateMask] = 0;
  v17 = &v4[OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask] = 0;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView;
  v20 = *&v18[OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView];
  v21 = v18;
  [v20 setUserInteractionEnabled_];
  [v21 addSubview_];
  v22 = *&v21[OBJC_IVAR____TtC8NewsFeed12FormatButton_onTap];
  sub_1D725F67C();

  return v21;
}

id FormatButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall FormatButton.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  [v0 bounds];
  sub_1D726344C();
}

Swift::Bool __swiftcall FormatButton.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  y = inside.y;
  x = inside.x;
  [v2 bounds];
  v8.origin.x = UIEdgeInsetsInsetRect_3(v5);
  v7.x = x;
  v7.y = y;
  return CGRectContainsPoint(v8, v7);
}

uint64_t sub_1D70CF634()
{
  if (*&v0[OBJC_IVAR____TtC8NewsFeed12FormatButton_overriddenStateMask])
  {
    v1 = *&v0[OBJC_IVAR____TtC8NewsFeed12FormatButton_overriddenStateMask];
  }

  else
  {
    sub_1D71C1260(v0, &v7);
    v1 = v7;
  }

  v2 = OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask;
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask];
  if (!v3)
  {

    if (!v1)
    {
      goto LABEL_13;
    }

    swift_bridgeObjectRetain_n();
    goto LABEL_10;
  }

  if (!v1)
  {
LABEL_10:

    goto LABEL_11;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v4 = sub_1D5E1FA08(v3, v1);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if (v4)
  {
    return swift_bridgeObjectRelease_n();
  }

LABEL_11:
  *&v0[v2] = v1;

  v6 = *&v0[OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock];
  if (v6)
  {
    v7 = v1;

    v6(&v7);
    sub_1D5B74328(v6);
  }

LABEL_13:
}

void (*FormatButton.isSelected.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 56) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 64) = objc_msgSendSuper2(v4, sel_isSelected);
  return sub_1D70CF84C;
}

void (*FormatButton.isHighlighted.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 56) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 64) = objc_msgSendSuper2(v4, sel_isHighlighted);
  return sub_1D70CF91C;
}

id sub_1D70CF934(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1D70CF980(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_1D70CF9CC(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_1D70CF634();
}

uint64_t sub_1D70CFA40(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  return sub_1D70CF634();
}

void (*FormatButton.isEnabled.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 56) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 64) = objc_msgSendSuper2(v4, sel_isEnabled);
  return sub_1D70CFB28;
}

void sub_1D70CFB34(objc_super **a1, char a2, SEL *a3)
{
  v4 = *a1;
  receiver_low = LOBYTE((*a1)[4].receiver);
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v8 = *a1;
  if (a2)
  {
    v8[1].receiver = receiver;
    v8[1].super_class = super_class;
    objc_msgSendSuper2(v8 + 1, *a3, receiver_low);
  }

  else
  {
    v8[2].receiver = receiver;
    v8[2].super_class = super_class;
    objc_msgSendSuper2(v8 + 2, *a3, receiver_low);
    sub_1D70CF634();
  }

  free(v4);
}

id FormatButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D70CFD08()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D70CFD64()
{
  v1 = *v0;
  FormatLayoutView.prepareForReuse()();
  *(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask) = 0;
}

void sub_1D70CFDB4(uint64_t a1, uint64_t a2)
{
  sub_1D5BBB8D8(&qword_1EC89A428, a2, type metadata accessor for FormatButton);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t sub_1D70CFE20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed12FormatButton_overriddenStateMask;
  *(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_overriddenStateMask) = 0;

  if (*(v1 + v2))
  {
    sub_1D70CF634();
  }

  v3 = (v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_1D5B74328(v4);
  *(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView);
  [v5 setUserInteractionEnabled_];
  sub_1D726345C();
  sub_1D704CD80(0, 0);
  [v5 setUserInteractionEnabled_];
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_longPressGesture);
  if (v6)
  {
    [v6 setEnabled_];
  }

  v7 = (v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock);
  v8 = *(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock);
  *v7 = 0;
  v7[1] = 0;

  return sub_1D5B74328(v8);
}

uint64_t FormatButton.accessibilityContainerType.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {
    return 0;
  }

  v1 = sub_1D6A5E96C();
  v3 = v2;

  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  result = v1;
  if (v3)
  {
    return 4 * (v1 == 0);
  }

  return result;
}

uint64_t (*FormatButton.accessibilityContainerType.modify(uint64_t *a1))()
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer) || (, v3 = sub_1D6A5E96C(), v5 = v4, , (v5 & 0x100) != 0))
  {
    v3 = 0;
  }

  else if (v5)
  {
    v3 = 4 * (v3 == 0);
  }

  *a1 = v3;
  return nullsub_1;
}

uint64_t FormatButton.isAccessibilityElement.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {
    return 0;
  }

  v1 = sub_1D6A5E96C();
  v3 = v2;

  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  else
  {
    return v3 & (v1 != 0);
  }
}

uint64_t (*FormatButton.isAccessibilityElement.modify(_BYTE *a1))()
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer) || (, v3 = sub_1D6A5E96C(), v5 = v4, , (v5 & 0x100) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 & (v3 != 0);
  }

  *a1 = v6;
  return nullsub_1;
}

uint64_t (*FormatButton.accessibilityElements.modify(char **a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A5EB3C();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return sub_1D612BC30;
}

uint64_t (*FormatButton.accessibilityIdentifier.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A5F440();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t (*FormatButton.accessibilityLabel.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A5FA90();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t (*FormatButton.accessibilityValue.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A5FD6C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t (*FormatButton.ts_accessibilityElementHelp.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A60048();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t (*FormatButton.accessibilityHint.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A60324();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D70502B8;
}

id sub_1D70D06E0(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer] && (v4 = a1, v5 = , a3(v5), v7 = v6, v4, , v7))
  {
    v8 = sub_1D726203C();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1D70D0794(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {
    return 0;
  }

  v4 = a1(v3);

  return v4;
}

uint64_t (*FormatButton.accessibilityLanguage.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A60600();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D7053E8C;
}

uint64_t sub_1D70D0904(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {
    return 0;
  }

  v4 = a1(v3);

  return v4;
}

uint64_t (*FormatButton.accessibilityTraits.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A6082C();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return nullsub_1;
}

uint64_t FormatButton.accessibilityCustomActions.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v1 = sub_1D6A5E96C();
    if ((v2 & 0x100) == 0 && ((v2 & 1) == 0 || v1))
    {
      v4 = sub_1D6A5E790();
      sub_1D7046E0C(v4);

      sub_1D70517D8();
      sub_1D5BBB8D8(&qword_1EC8909B0, 255, sub_1D70517D8);
      v5 = sub_1D72623CC();

      return v5;
    }
  }

  return 0;
}

uint64_t (*FormatButton.accessibilityCustomActions.modify(uint64_t *a1))()
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer))
  {

    v3 = sub_1D6A5E96C();
    if ((v4 & 0x100) == 0 && ((v4 & 1) == 0 || v3))
    {
      v7 = sub_1D6A5E790();
      v8 = sub_1D7046E0C(v7);

      a1[1] = v8;
      sub_1D70517D8();
      sub_1D5BBB8D8(&qword_1EC8909B0, 255, sub_1D70517D8);
      v5 = sub_1D72623CC();

      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *a1 = v5;
  return sub_1D7053E6C;
}

uint64_t sub_1D70D0CD4(uint64_t a1, unint64_t a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v4 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      MEMORY[0x1DA6F9CE0](v5);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      ++v4;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  sub_1D5B5A498(0, &qword_1EC885090);
  return sub_1D72633FC();
}

id sub_1D70D0E90(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D5B5A498(0, &qword_1EC883280);
  v2 = sub_1D726267C();

  v3 = v1(v2);

  return v3;
}

void _s8NewsFeed12FormatButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC8NewsFeed12FormatButton_onTap;
  sub_1D606FC88(0, &qword_1EDF3B450, MEMORY[0x1E69D8770]);
  v4 = v3;
  *(v0 + v2) = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC8NewsFeed12FormatButton_onLongPress;
  *(v0 + v5) = [objc_allocWithZone(v4) init];
  *(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_isLongPressEnabled) = 0;
  v6 = OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for FormatLayoutView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_accessibilityRenderer) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_longPressGesture) = 0;
  v7 = (v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_overriddenStateMask) = 0;
  v8 = (v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask) = 0;
  sub_1D726402C();
  __break(1u);
}

id _s8NewsFeed12FormatButtonC22contextMenuInteraction_016configurationForF10AtLocationSo09UIContextF13ConfigurationCSgSo0lfG0C_So7CGPointVtF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed12FormatButton_createMenuElementsBlock);
  if (v1)
  {

    v2 = v1(v0);
    sub_1D5B74328(v1);
    if (v2)
    {
      if (v2 >> 62)
      {
        if (sub_1D7263BFC())
        {
          goto LABEL_5;
        }
      }

      else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v3 = swift_allocObject();
        *(v3 + 16) = v2;
        v4 = objc_opt_self();
        v8[4] = sub_1D70D1298;
        v8[5] = v3;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 1107296256;
        v8[2] = sub_1D70D0E90;
        v8[3] = &block_descriptor_132;
        v5 = _Block_copy(v8);

        v6 = [v4 configurationWithIdentifier:0 previewProvider:0 actionProvider:v5];

        _Block_release(v5);
        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_1D70D12B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D726045C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v17);
  if (!v2)
  {
    sub_1D5BC7A6C(v17 + *(v14 + 44), v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1D5BC81B4(v8, sub_1D5D504A0);
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      swift_allocError();
      v19 = v17[1];
      *v20 = *v17;
      v20[1] = v19;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return sub_1D5BC81B4(v17, type metadata accessor for FeedHeadline);
    }

    else
    {
      sub_1D5BC81B4(v17, type metadata accessor for FeedHeadline);
      v21 = *(v10 + 32);
      v21(v13, v8, v9);
      return (v21)(a2, v13, v9);
    }
  }

  return result;
}

uint64_t FormatAdMetricsNodeBinding.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D70D15C8()
{
  result = qword_1EC89A430;
  if (!qword_1EC89A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A430);
  }

  return result;
}

unint64_t sub_1D70D161C(uint64_t a1)
{
  result = sub_1D70D1644();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70D1644()
{
  result = qword_1EC89A438;
  if (!qword_1EC89A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A438);
  }

  return result;
}

unint64_t sub_1D70D1698(void *a1)
{
  a1[1] = sub_1D5CC391C();
  a1[2] = sub_1D6701E0C();
  result = sub_1D70D15C8();
  a1[3] = result;
  return result;
}

uint64_t FormatTagBinding.SourceItemTip.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D70D1788()
{
  result = qword_1EC89A440;
  if (!qword_1EC89A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A440);
  }

  return result;
}

unint64_t sub_1D70D17DC(uint64_t a1)
{
  result = sub_1D70D1804();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70D1804()
{
  result = qword_1EC89A448;
  if (!qword_1EC89A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A448);
  }

  return result;
}

unint64_t sub_1D70D1858(void *a1)
{
  a1[1] = sub_1D668F874();
  a1[2] = sub_1D66F81E8();
  result = sub_1D70D1788();
  a1[3] = result;
  return result;
}

uint64_t _s8NewsFeed16FormatShineColorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v3;
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v27 = *(a2 + 32);
  v28 = v6;
  v7 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v7;
  v8 = *(a1 + 48);
  v30[2] = v23;
  v30[3] = v8;
  v30[0] = v22[0];
  v30[1] = v2;
  v33 = v5;
  v34 = v27;
  v35 = *(a2 + 48);
  v25 = *(a1 + 64);
  v29 = *(a2 + 64);
  v31 = *(a1 + 64);
  v36 = *(a2 + 64);
  v32 = v26[0];
  if (v25)
  {
    if (v29)
    {
      v16 = *&v22[0];
      v9 = *(a1 + 24);
      v17 = *(a1 + 8);
      v18 = v9;
      v19 = *(a1 + 40);
      v20 = *(a1 + 56);
      v10 = *(a2 + 16);
      v15[0] = *a2;
      v15[1] = v10;
      v11 = *(a2 + 48);
      v15[2] = *(a2 + 32);
      v15[3] = v11;
      sub_1D613AE5C(v26, v21);
      sub_1D613AE5C(v22, v21);
      sub_1D613AE5C(v22, v21);
      sub_1D613AE5C(v26, v21);
      v12 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v16, v15);
LABEL_7:
      v13 = v12;
      sub_1D70D1BD0(v30);
      sub_1D613B3C4(v26);
      sub_1D613B3C4(v22);
      return v13 & 1;
    }
  }

  else if ((v29 & 1) == 0)
  {
    v16 = *&v22[0];
    *&v15[0] = *&v26[0];
    sub_1D613AE5C(v26, v21);
    sub_1D613AE5C(v22, v21);
    sub_1D613AE5C(v22, v21);
    sub_1D613AE5C(v26, v21);
    v12 = static FormatColor.== infix(_:_:)(&v16, v15);
    goto LABEL_7;
  }

  sub_1D613AE5C(v22, v21);
  sub_1D613AE5C(v26, v21);
  sub_1D70D1BD0(v30);
  v13 = 0;
  return v13 & 1;
}

unint64_t sub_1D70D1AB8(uint64_t a1)
{
  result = sub_1D70D1AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70D1AE0()
{
  result = qword_1EC89A450;
  if (!qword_1EC89A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A450);
  }

  return result;
}

unint64_t sub_1D70D1B34(void *a1)
{
  a1[1] = sub_1D6667224();
  a1[2] = sub_1D66673F4();
  result = sub_1D70D1B6C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70D1B6C()
{
  result = qword_1EC89A458;
  if (!qword_1EC89A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A458);
  }

  return result;
}

uint64_t sub_1D70D1BD0(uint64_t a1)
{
  sub_1D70D1C2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D70D1C2C()
{
  if (!qword_1EC89A460)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89A460);
    }
  }
}

char *PuzzleHintAccessoryView.__allocating_init(identifier:minHeight:hintConfig:puzzleComponentsStyler:colorTheme:sceneProvider:handler:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, void *a10)
{
  v20 = objc_allocWithZone(v10);
  v21 = sub_1D70D358C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_1D5B74328(a8);
  swift_unknownObjectRelease();
  return v21;
}

NewsFeed::PuzzleHintAccessoryItem_optional __swiftcall PuzzleHintAccessoryItem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleHintAccessoryItem.rawValue.getter()
{
  v1 = 1952867692;
  v2 = 0x7468676972;
  if (*v0 != 2)
  {
    v2 = 1954047348;
  }

  if (*v0)
  {
    v1 = 0x6472616F6279656BLL;
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

uint64_t sub_1D70D1E2C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70D1EE8()
{
  sub_1D72621EC();
}

uint64_t sub_1D70D1F90()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70D2054(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1952867692;
  v4 = 0xE500000000000000;
  v5 = 0x7468676972;
  if (*v1 != 2)
  {
    v5 = 1954047348;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6472616F6279656BLL;
    v2 = 0xEF7373696D736944;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t PuzzleHintAccessoryView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PuzzleHintAccessoryView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double PuzzleHintAccessoryView.height.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_height;
  swift_beginAccess();
  return *(v0 + v1);
}

char *PuzzleHintAccessoryView.init(identifier:minHeight:hintConfig:puzzleComponentsStyler:colorTheme:sceneProvider:handler:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, void *a10)
{
  v11 = sub_1D70D358C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_1D5B74328(a8);
  swift_unknownObjectRelease();
  return v11;
}

void sub_1D70D2284()
{
  sub_1D726385C();
  sub_1D726386C();
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:16.0];
  v2 = [objc_opt_self() labelColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = [v0 configurationWithScale_];
  v6 = [v4 configurationByApplyingConfiguration_];

  v9 = v6;
  v7 = sub_1D726203C();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v9];

  sub_1D726384C();
}

void __swiftcall PuzzleComponentAccessoryViewEvent.init(identifier:hint:target:)(NewsFeed::PuzzleComponentAccessoryViewEvent *__return_ptr retstr, Swift::String identifier, NewsFeed::PuzzleHintAccessoryItem hint, NewsFeed::PuzzleComponentEventTarget target)
{
  v4 = *hint;
  v5 = *target;
  v6 = 0xE400000000000000;
  retstr->identifier = identifier;
  v7 = 1952867692;
  v8 = 0xE500000000000000;
  v9 = 0x7468676972;
  if (v4 != 2)
  {
    v9 = 1954047348;
    v8 = 0xE400000000000000;
  }

  if (v4)
  {
    v7 = 0x6472616F6279656BLL;
    v6 = 0xEF7373696D736944;
  }

  v10 = v4 <= 1;
  if (v4 <= 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (!v10)
  {
    v6 = v8;
  }

  retstr->item._countAndFlagsBits = v11;
  retstr->item._object = v6;
  retstr->target = v5;
}

uint64_t sub_1D70D24B0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2)
  {
    v10[0] = a4;
    v10[1] = a5;
    v10[2] = a6;
    v10[3] = a7;
    v11 = a8;

    a2(v10);
  }

  return result;
}

id sub_1D70D2518()
{
  v1 = *MEMORY[0x1E69DDC70];
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintButton);
  if (v2)
  {
    [v2 setMaximumContentSizeCategory_];
  }

  v3 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton;
  result = *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton);
  if (result)
  {
    [result setMinimumContentSizeCategory_];
    result = *(v0 + v3);
    if (result)
    {
      result = [result setMaximumContentSizeCategory_];
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_leftButton);
  if (v5)
  {
    [*(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_leftButton) setMinimumContentSizeCategory_];
    result = [v5 setMaximumContentSizeCategory_];
  }

  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_rightButton);
  if (v6)
  {
    [v6 setMinimumContentSizeCategory_];

    return [v6 setMaximumContentSizeCategory_];
  }

  return result;
}

id PuzzleHintAccessoryView.updateHeight(for:)(double a1)
{
  v3 = sub_1D70D2B7C(a1);
  v4 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_height;
  swift_beginAccess();
  *&v1[v4] = v3;
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_lastUsedWidth];
  *v5 = a1;
  *(v5 + 8) = 0;
  [*&v1[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintButton] setNeedsUpdateConfiguration];
  return [v1 setNeedsLayout];
}

uint64_t sub_1D70D26B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v6;
  v11[2] = *(a3 + 32);
  v12 = *(a3 + 48);
  (*(a2 + 24))(v11, ObjectType, a2);
  v7 = *MEMORY[0x1E69DD888];
  if (v8)
  {
    v9 = sub_1D726203C();
  }

  else
  {
    v9 = 0;
  }

  UIAccessibilityPostNotification(v7, v9);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PuzzleHintAccessoryView.layoutSubviews()()
{
  v36.receiver = v0;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, sel_layoutSubviews);
  [v0 frame];
  Width = CGRectGetWidth(v37);
  v2 = &v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_lastUsedWidth];
  if ((v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_lastUsedWidth + 8] & 1) != 0 || Width != *v2)
  {
    [v0 frame];
    v3 = CGRectGetWidth(v38);
    v4 = sub_1D70D2B7C(v3);
    v5 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_height;
    swift_beginAccess();
    *&v0[v5] = v4;
    [v0 frame];
    *v2 = CGRectGetWidth(v39);
    *(v2 + 8) = 0;
    [*&v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintButton] setNeedsUpdateConfiguration];
  }

  [v0 bounds];
  MidY = CGRectGetMidY(v40);
  v7 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_buttonLength;
  v8 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton;
  v9 = MidY + *&v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_buttonLength] * -0.5;
  if (*&v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton])
  {
    v10 = 10.0;
  }

  else
  {
    v10 = 0.0;
  }

  [v0 bounds];
  MaxX = CGRectGetMaxX(v41);
  v12 = *&v0[v7];
  v13 = MaxX + -10.0 - v12;
  v14 = v13 - v12 + -4.0;
  v15 = *&v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_leftButton];
  if (v15)
  {
    [*&v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_leftButton] setFrame_];
  }

  v16 = *&v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_rightButton];
  if (v16)
  {
    [*&v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_rightButton] setFrame_];
  }

  v17 = *&v0[v8];
  if (v17)
  {
    [v17 setFrame_];
  }

  [v0 bounds];
  v18 = CGRectGetWidth(v42);
  v19 = 10.0;
  if (v18 >= 440.0)
  {
    [v0 bounds];
    v19 = CGRectGetMaxX(v43) - v14;
  }

  v20 = *&v0[v8];
  if (v20)
  {
    [v20 frame];
    v19 = CGRectGetMaxX(v44);
  }

  v21 = *&v0[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintButton];
  if (v21)
  {
    v22 = v19 + 6.0;
    v23 = v14 - (v19 + 6.0) + -6.0;
    [v0 bounds];
    Height = CGRectGetHeight(v45);
    sub_1D7262E3C();
    [v21 setFrame_];
  }

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v26 = objc_opt_self();
    v27 = [v26 currentDevice];
    v28 = [v27 userInterfaceIdiom];

    v29 = &selRef_accountStore;
    if (!v28)
    {
      v30 = 0.0;
      if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
      {
        v31 = [v26 currentDevice];
        v32 = [v31 userInterfaceIdiom];

        v33 = v32 == 0;
        v29 = &selRef_accountStore;
        if (v33)
        {
          v30 = 4.5;
        }

        else
        {
          v30 = 0.0;
        }
      }

      if (v15)
      {
        [v15 v29[27]];
        v47 = CGRectOffset(v46, 0.0, v30);
        [v15 setFrame_];
      }

      if (v16)
      {
        [v16 v29[27]];
        v49 = CGRectOffset(v48, 0.0, v30);
        [v16 setFrame_];
      }

      v34 = *&v0[v8];
      if (v34)
      {
        v35 = v34;
        [v35 v29[27]];
        v51 = CGRectOffset(v50, 0.0, v30);
        [v35 setFrame_];
      }

      if (v21)
      {
        [v21 v29[27]];
        v53 = CGRectOffset(v52, 0.0, v30);
        [v21 setFrame_];
      }
    }
  }
}

double sub_1D70D2B7C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintButton);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_buttonLength);
    v6 = a1 + -10.0 - v5 - v5 + -4.0;
    v7 = a1 - v6;
    if (*(v1 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton))
    {
      v7 = 10.0;
    }

    else
    {
      v5 = 0.0;
    }

    [v2 sizeThatFits_];
    v4 = v8;
  }

  sub_1D7262E3C();
  v10 = v9;
  v11 = *(v1 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_minHeight);
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v12 = [objc_opt_self() currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 9.0;
    }
  }

  v14 = v4 + v10;
  if (v4 + v10 <= v11)
  {
    v14 = v11;
  }

  return v14 - v3;
}

Swift::Void __swiftcall PuzzleHintAccessoryView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

    goto LABEL_11;
  }

  v5 = sub_1D726207C();
  v7 = v6;
  if (v5 == sub_1D726207C() && v7 == v8)
  {

    return;
  }

  v10 = sub_1D72646CC();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    sub_1D70D2518();
  }
}

id PuzzleHintAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PuzzleHintAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D70D3078()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D70D30D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double sub_1D70D3190()
{
  v1 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_height;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1D70D31D4(double a1)
{
  v3 = sub_1D70D2B7C(a1);
  v4 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_height;
  swift_beginAccess();
  *&v1[v4] = v3;
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_lastUsedWidth];
  *v5 = a1;
  *(v5 + 8) = 0;
  [*&v1[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintButton] setNeedsUpdateConfiguration];
  return [v1 setNeedsLayout];
}

void sub_1D70D3268(void *a1)
{
  sub_1D5B5E284(0, &qword_1EC892D70, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  *&v12 = MEMORY[0x1EEE9AC00](v10, v11).n128_u64[0];
  v14 = &v24 - v13;
  v15 = [a1 state];
  if (v15 == 1)
  {
    v17 = [objc_opt_self() labelColor];
    v16 = [v17 colorWithAlphaComponent_];

    if (!v16)
    {
      return;
    }
  }

  else
  {
    if (v15)
    {
      return;
    }

    v16 = [objc_opt_self() labelColor];
    if (!v16)
    {
      return;
    }
  }

  v18 = v16;
  sub_1D72638BC();
  v19 = sub_1D726389C();
  v20 = *(*(v19 - 8) + 48);
  if (v20(v14, 1, v19))
  {
    sub_1D6C0E2A4(v14, v9);
    sub_1D72638CC();

    sub_1D6C0E308(v14);
  }

  else
  {
    sub_1D72638BC();
    if (v20(v5, 1, v19) || (v21 = sub_1D726383C()) == 0)
    {
      sub_1D6C0E308(v5);
    }

    else
    {
      v22 = v21;
      sub_1D6C0E308(v5);
      v23 = [objc_opt_self() configurationWithHierarchicalColor_];
      [v22 imageByApplyingSymbolConfiguration_];
    }

    sub_1D726384C();
    sub_1D72638CC();
  }
}

id sub_1D70D3534(void *a1)
{
  v2 = [a1 state];
  v3 = 1.0;
  if (v2 == 1)
  {
    v3 = 0.5;
  }

  return [a1 setAlpha_];
}

char *sub_1D70D358C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, void *a10)
{
  v11 = v10;
  v118 = a8;
  v121 = a5;
  v103 = a2;
  ObjectType = swift_getObjectType();
  v114 = sub_1D7261ABC();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v19);
  v111 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1D7261B2C();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v21);
  v109 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1D7261B5C();
  v108 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v23);
  v106 = v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v107 = v102 - v27;
  v124 = sub_1D726389C();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v28);
  v122 = v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v102 - v32;
  v34 = a3[1];
  v135 = *a3;
  v136 = v34;
  v137 = a3[2];
  v119 = *(a3 + 6);
  v35 = &v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_identifier];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_height] = 0;
  v105 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton] = 0;
  v36 = &v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_lastUsedWidth];
  *v36 = 0;
  v36[8] = 1;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_buttonLength] = 0;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_horizOuterPadding] = 0x4024000000000000;
  v37 = &v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintPadding];
  *v37 = xmmword_1D738EBA0;
  *(v37 + 1) = xmmword_1D738EBB0;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_arrowsSpacing] = 0x4010000000000000;
  v38 = *(a6 + 8);
  v117 = *a6;
  v116 = v38;
  v39 = &v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_puzzleComponentsStyler];
  v125 = a4;
  *v39 = a4;
  *(v39 + 1) = a5;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_minHeight] = a9;
  v127 = a7;
  sub_1D5B68374(a7, &v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_sceneProvider]);
  v40 = sub_1D5B5A498(0, &qword_1EC87FF58);
  swift_unknownObjectRetain();
  sub_1D70D2284();
  v41 = sub_1D5B5A498(0, &qword_1EDF04350);
  v42 = swift_allocObject();
  v43 = v118;
  v42[2] = v118;
  v42[3] = a10;
  v128 = a10;
  v115 = a1;
  v44 = v103;
  v42[4] = a1;
  v42[5] = v44;
  sub_1D5DEA510(v43);

  sub_1D726375C();
  v102[2] = v40;
  v45 = sub_1D72638AC();
  v104 = v45;
  *&v133 = sub_1D70D3268;
  *(&v133 + 1) = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v132 = sub_1D5C38428;
  *(&v132 + 1) = &block_descriptor_133;
  v46 = _Block_copy(&aBlock);

  [v45 setConfigurationUpdateHandler_];
  _Block_release(v46);
  [v45 setPointerInteractionEnabled_];
  sub_1D70D2284();
  v47 = swift_allocObject();
  v48 = v118;
  v49 = v128;
  v47[2] = v118;
  v47[3] = v49;
  v47[4] = a1;
  v47[5] = v44;
  v50 = v48;
  sub_1D5DEA510(v48);

  sub_1D726375C();
  v51 = sub_1D72638AC();
  *&v133 = sub_1D70D3268;
  *(&v133 + 1) = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v132 = sub_1D5C38428;
  *(&v132 + 1) = &block_descriptor_11_6;
  v52 = _Block_copy(&aBlock);

  [v51 setConfigurationUpdateHandler_];
  _Block_release(v52);
  [v51 setPointerInteractionEnabled_];
  v53 = swift_getObjectType();
  aBlock = v135;
  v132 = v136;
  v133 = v137;
  v134 = v119;
  v54 = v117;
  v129[0] = v117;
  v55 = v116;
  v129[1] = v116;
  v56 = v122;
  (*(v121 + 8))(&aBlock, v129, v53);
  sub_1D5DEA2E0(v54, v55);
  (*(v123 + 16))(v33, v56, v124);
  v57 = swift_allocObject();
  v58 = v128;
  v57[2] = v50;
  v57[3] = v58;
  v57[4] = v115;
  v57[5] = v44;
  v59 = v50;
  sub_1D5DEA510(v50);

  v102[1] = v41;
  sub_1D726375C();
  v60 = sub_1D72638AC();
  *&v133 = sub_1D70D3534;
  *(&v133 + 1) = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v132 = sub_1D5C38428;
  *(&v132 + 1) = &block_descriptor_17_0;
  v61 = _Block_copy(&aBlock);

  [v60 setConfigurationUpdateHandler_];
  _Block_release(v61);
  [v60 setPointerInteractionEnabled_];
  v62 = v104;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_leftButton] = v104;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_rightButton] = v51;
  *&v11[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintButton] = v60;
  v63 = objc_opt_self();
  v64 = v62;
  v117 = v51;
  v116 = v60;
  v65 = [v63 currentDevice];
  v66 = [v65 userInterfaceIdiom];

  if (v66 || (sub_1D725A9FC(), (sub_1D725A9EC() & 1) != 0))
  {

    v67 = 0;
    v68 = ObjectType;
  }

  else
  {
    v68 = ObjectType;
    sub_1D70D2284();
    v99 = swift_allocObject();
    v100 = v128;
    v99[2] = v59;
    v99[3] = v100;
    v99[4] = v115;
    v99[5] = v44;
    sub_1D5DEA510(v59);
    sub_1D726375C();
    v67 = sub_1D72638AC();
    *&v133 = sub_1D70D3268;
    *(&v133 + 1) = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v132 = sub_1D5C38428;
    *(&v132 + 1) = &block_descriptor_29;
    v101 = _Block_copy(&aBlock);

    [v67 setConfigurationUpdateHandler_];
    _Block_release(v101);
    [v67 setPointerInteractionEnabled_];
  }

  v69 = *&v11[v105];
  *&v11[v105] = v67;

  v130.receiver = v11;
  v130.super_class = v68;
  v70 = objc_msgSendSuper2(&v130, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D70D2518();
  [v64 systemLayoutSizeFittingSize_];
  *&v70[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_buttonLength] = v71;
  __swift_project_boxed_opaque_existential_1(v127, v127[3]);
  v72 = sub_1D725DA4C();
  if (!v72)
  {
    v72 = [objc_opt_self() mainScreen];
  }

  v73 = v72;
  [v72 bounds];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v119;

  v138.origin.x = v75;
  v138.origin.y = v77;
  v138.size.width = v79;
  v138.size.height = v81;
  Width = CGRectGetWidth(v138);
  v84 = sub_1D70D2B7C(Width);
  v85 = OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_height;
  swift_beginAccess();
  *&v70[v85] = v84;
  v86 = &v70[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_lastUsedWidth];
  *v86 = Width;
  *(v86 + 8) = 0;
  [*&v70[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintButton] setNeedsUpdateConfiguration];
  v87 = v70;
  [v87 setNeedsLayout];
  if ((v82 & 1) == 0)
  {
    if ((v82 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    [v87 addSubview_];
    if ((v82 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [v87 addSubview_];
  if ((v82 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v82 & 8) != 0)
  {
LABEL_9:
    [v87 addSubview_];
  }

LABEL_10:
  v128 = v64;
  if (*&v87[OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton] && (v82 & 4) != 0)
  {
    [v87 addSubview_];
  }

  [v87 setClipsToBounds_];

  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v88 = sub_1D726308C();
  v89 = v106;
  sub_1D7261B4C();
  v90 = v107;
  sub_1D7261BAC();
  ObjectType = *(v108 + 8);
  (ObjectType)(v89, v126);
  v91 = swift_allocObject();
  v92 = v121;
  *(v91 + 16) = v125;
  *(v91 + 24) = v92;
  v93 = v136;
  *(v91 + 32) = v135;
  *(v91 + 48) = v93;
  *(v91 + 64) = v137;
  *(v91 + 80) = v82;
  *&v133 = sub_1D70D47C0;
  *(&v133 + 1) = v91;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v132 = sub_1D5B6B06C;
  *(&v132 + 1) = &block_descriptor_23_2;
  v94 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v95 = v109;
  sub_1D7261AEC();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1D5F5D6D4();
  sub_1D5B5E284(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5F5D72C();
  v96 = v111;
  v97 = v114;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA6F0](v90, v95, v96, v94);
  _Block_release(v94);

  (*(v113 + 8))(v96, v97);
  (*(v110 + 8))(v95, v112);
  (ObjectType)(v90, v126);
  (*(v123 + 8))(v122, v124);
  __swift_destroy_boxed_opaque_existential_1(v127);
  return v87;
}

unint64_t sub_1D70D4588()
{
  result = qword_1EC89A4A8;
  if (!qword_1EC89A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A4A8);
  }

  return result;
}

void sub_1D70D4644()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_identifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_height) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_keyboardButton) = 0;
  v2 = v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_lastUsedWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_buttonLength) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_horizOuterPadding) = 0x4024000000000000;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_hintPadding);
  *v3 = xmmword_1D738EBA0;
  v3[1] = xmmword_1D738EBB0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed23PuzzleHintAccessoryView_arrowsSpacing) = 0x4010000000000000;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D70D4840(void *a1)
{
  v3 = v1;
  sub_1D70D9670(0, &qword_1EC89A598, sub_1D70D961C, &type metadata for H18_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70D961C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D70D8F1C(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D70D9198(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
    sub_1D70D96D8(&qword_1EC894B38, sub_1D67490D8);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D70D4A9C(uint64_t a1)
{
  v2 = sub_1D70D961C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70D4AD8(uint64_t a1)
{
  v2 = sub_1D70D961C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D70D4B14@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D70D9368(a1, v6);
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

uint64_t sub_1D70D4B74()
{
  sub_1D70D8FDC();

  return sub_1D725A24C();
}

uint64_t sub_1D70D4BF0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D70D9670(0, &qword_1EC894B08, sub_1D6CBA51C, &type metadata for HMultiLayoutItem, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D70D4CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v49 = a1;
  v50 = a3;
  v42 = sub_1D725895C();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v14 = type metadata accessor for GroupLayoutBindingContext();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *v3;
  v43 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v40 = type metadata accessor for GroupLayoutBindingContext;
  v20 = a1;
  v21 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3F40(v20, v21, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v13, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v39 = sub_1D725893C();
  v38 = v22;
  (*(v6 + 8))(v9, v42);
  v60 = &type metadata for H18_V1;
  v42 = sub_1D5ECE0E8();
  v61 = v42;
  v57[0] = v17;
  v58 = v18;
  v59 = v19;
  type metadata accessor for GroupLayoutKey();
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v55 = sub_1D7264C5C();
  v56 = v24;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 45;
  v52 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v38;
  *v28 = v39;
  v28[1] = v29;
  sub_1D5B68374(v57, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v21, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v40);
  (*(v44 + 56))(v23 + v30, 0, 1, v45);
  v31 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v41, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v47 + 56))(v23 + v31, 0, 1, v48);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v32 = type metadata accessor for H18_V1.Bound();
  v33 = v50;
  v50[3] = v32;
  v33[4] = sub_1D70D8F1C(&qword_1EC89A4F0, type metadata accessor for H18_V1.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v42;
  boxed_opaque_existential_1[4] = &type metadata for H18_V1;
  boxed_opaque_existential_1[5] = v35;
  *(boxed_opaque_existential_1 + 8) = v43;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v19;
  sub_1D5BE3F40(v46, boxed_opaque_existential_1 + *(v32 + 24), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  result = sub_1D6C555B4(0, 0, 0, 0, 0);
  *boxed_opaque_existential_1 = v23;
  *(boxed_opaque_existential_1 + *(v32 + 28)) = result;
  return result;
}

uint64_t sub_1D70D5144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(type metadata accessor for H18_V1.Bound() + 28));
  v29 = v1;
  v24 = sub_1D5FBD90C(sub_1D70D8F64, v28, v9);
  *&v31 = v24;
  sub_1D70D9198(0, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E62F8]);
  v11 = v10;
  sub_1D5BD4AFC(&qword_1EC894A68, &qword_1EC894A60, &type metadata for HGroupLayoutContext);
  v25 = v11;
  v12 = sub_1D7262C1C();
  v13 = *MEMORY[0x1E69D7130];
  v14 = sub_1D7259D1C();
  (*(*(v14 - 8) + 104))(v8, v13, v14);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v26 = v12;
  v27 = v2;
  sub_1D70D9114(0, &qword_1EC89A510, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v15 = v33;
  v16 = MEMORY[0x1E69E62F8];
  sub_1D70D9198(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  sub_1D5BD4AFC(&qword_1EC894A90, &qword_1EC894A60, &type metadata for HGroupLayoutContext);
  sub_1D5BD4AFC(&qword_1EC894A98, &qword_1EC894A88, &type metadata for HMultiLayoutItem);
  v22 = v32;
  v23 = v31;
  v30 = v15;
  *&v31 = v24;

  v17 = sub_1D725C00C();

  *a1 = 0;
  v18 = v23;
  *(a1 + 24) = v22;
  *(a1 + 8) = v18;
  *&v31 = v17;
  sub_1D70D9198(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v16);
  sub_1D5BD4AFC(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v19 = sub_1D72623BC();

  v21 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  return result;
}

uint64_t sub_1D70D556C@<X0>(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v287 = a3;
  v286 = sub_1D725891C();
  v6 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286, v7);
  v285 = &v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF9748(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v275 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v278 = &v275 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v275 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v277 = &v275 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v275 - v25;
  sub_1D5F76E40(a1, &v321);
  if (v337)
  {
    if (v337 != 1)
    {
      v303 = v327;
      v304[0] = v328[0];
      v304[1] = v328[1];
      v305 = v329;
      v299 = v323;
      v300 = v324;
      v301 = v325;
      v302 = v326;
      v297 = v321;
      v298 = v322;
      v137 = *a2;
      sub_1D5EE5AF8(&v297, &v289);
      v138 = a2 + *(type metadata accessor for H18_V1.Bound() + 24);
      v139 = type metadata accessor for GroupLayoutContext();
      v140 = *(*&v138[*(v139 + 40)] + 16);
      v141 = *&v138[*(v139 + 32)];
      sub_1D5B68374(v140 + 16, &v306);
      sub_1D5B68374(v140 + 56, v320);
      v142 = v141 * *(v140 + 96);
      type metadata accessor for FeedLayoutStylerFactory();
      v143 = swift_allocObject();
      sub_1D5B63F14(&v306, v143 + 16);
      sub_1D5B63F14(v320, v143 + 56);
      *(v143 + 96) = v142;

      FeedLayoutStylerFactory.styler()(&v309);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v143 + 16);
      __swift_destroy_boxed_opaque_existential_1(v143 + 56);
      swift_deallocClassInstance();
      v144 = v287;
      CoverChannelViewLayout.Context.init(key:model:styler:)(v137, &v289, &v309, v287);
      result = sub_1D5EE5B54(&v297);
      *(v144 + 392) = 1;
      return result;
    }

    v276 = v3;
    v277 = v12;
    v303 = v327;
    v304[0] = v328[0];
    *(v304 + 9) = *(v328 + 9);
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v302 = v326;
    v297 = v321;
    v298 = v322;
    v295 = v335;
    v296[0] = *v336;
    *(v296 + 9) = *&v336[9];
    v291 = v331;
    v292 = v332;
    v293 = v333;
    v294 = v334;
    v289 = v329;
    v290 = v330;
    v281 = *a2;
    v27 = v281;
    v28 = a2 + *(type metadata accessor for H18_V1.Bound() + 24);
    v29 = type metadata accessor for GroupLayoutContext();
    v30 = *(*&v28[*(v29 + 40)] + 16);
    v31 = *&v28[*(v29 + 32)];
    sub_1D5B68374(v30 + 16, &v306);
    sub_1D5B68374(v30 + 56, &v317);
    v32 = v31 * *(v30 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v33 = swift_allocObject();
    sub_1D5B63F14(&v306, v33 + 16);
    sub_1D5B63F14(&v317, v33 + 56);
    *(v33 + 96) = v32;
    sub_1D5ECF2C4(&v297, &v309);
    sub_1D6B63F2C(&v289, &v309);
    FeedLayoutStylerFactory.styler()(v320);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v33 + 16);
    __swift_destroy_boxed_opaque_existential_1(v33 + 56);
    swift_deallocClassInstance();
    v34 = v301;
    v35 = v287;
    *(v287 + 11) = v302;
    v36 = v304[0];
    *(v35 + 13) = v303;
    *(v35 + 15) = v36;
    *(v35 + 129) = *(v304 + 9);
    v37 = v297;
    *(v35 + 3) = v298;
    v38 = v300;
    *(v35 + 5) = v299;
    *(v35 + 7) = v38;
    *(v35 + 9) = v34;
    *(v35 + 1) = v37;
    v39 = v293;
    *(v35 + 29) = v294;
    v40 = v296[0];
    *(v35 + 31) = v295;
    *(v35 + 33) = v40;
    *(v35 + 273) = *(v296 + 9);
    v41 = v289;
    *(v35 + 21) = v290;
    v42 = v292;
    *(v35 + 23) = v291;
    *(v35 + 25) = v42;
    *(v35 + 27) = v39;
    *v35 = v27;
    *(v35 + 19) = v41;
    sub_1D5B68374(v320, (v35 + 37));
    sub_1D5B68374(v320, &v317);
    v282 = *(v6 + 56);
    v283 = v6 + 56;
    v282(v26, 1, 1, v286);
    v43 = swift_allocObject();
    v288 = v6;
    v284 = v26;
    v44 = v43;
    v45 = v304[0];
    v43[7] = v303;
    v43[8] = v45;
    *(v43 + 137) = *(v304 + 9);
    v46 = v300;
    v43[3] = v299;
    v43[4] = v46;
    v47 = v302;
    v43[5] = v301;
    v43[6] = v47;
    v48 = v298;
    v43[1] = v297;
    v43[2] = v48;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v279 = v49;
    v50 = swift_allocObject();
    *(v50 + 2) = 0xC04E000000000000;
    v51 = v319;
    __swift_project_boxed_opaque_existential_1(&v317, v318);
    v315 = v303;
    v316[0] = v304[0];
    *(v316 + 9) = *(v304 + 9);
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v314 = v302;
    v309 = v297;
    v310 = v298;
    sub_1D5ECF2C4(&v297, &v306);
    sub_1D5ECF2C4(&v297, &v306);

    v52 = sub_1D6CAFA6C();
    v53 = (*(v51 + 80))(v52);

    *&v50[*(*v50 + 120)] = v53;
    *&v50[*(*v50 + 136)] = v53;
    v54 = v53;
    v55 = v285;
    sub_1D725890C();
    v56 = *(*v50 + 128);
    v57 = *(v288 + 32);
    v288 += 32;
    v280 = v57;
    v58 = v286;
    v57(&v50[v56], v55, v286);
    v281 = objc_opt_self();
    LOBYTE(v55) = [v281 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v317);
    v50[qword_1EDF347F8] = v55;
    v59 = v284;
    sub_1D5DF42F8(v284, &v50[qword_1EDF347F0]);
    v60 = swift_allocObject();
    v60[2] = sub_1D5EF97AC;
    v60[3] = v44;
    v60[4] = v54;
    *(v50 + 3) = sub_1D5EF97B4;
    *(v50 + 4) = v60;
    v35[42] = v50;
    sub_1D5B68374(v320, &v317);
    v282(v59, 1, 1, v58);
    v61 = swift_allocObject();
    v62 = v304[0];
    v61[7] = v303;
    v61[8] = v62;
    *(v61 + 137) = *(v304 + 9);
    v63 = v300;
    v61[3] = v299;
    v61[4] = v63;
    v64 = v302;
    v61[5] = v301;
    v61[6] = v64;
    v65 = v298;
    v61[1] = v297;
    v61[2] = v65;
    v66 = swift_allocObject();
    *(v66 + 2) = 0xC04E000000000000;
    v67 = v319;
    __swift_project_boxed_opaque_existential_1(&v317, v318);
    v315 = v303;
    v316[0] = v304[0];
    *(v316 + 9) = *(v304 + 9);
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v314 = v302;
    v309 = v297;
    v310 = v298;
    sub_1D5ECF2C4(&v297, &v306);
    v68 = sub_1D6CAFA6C();
    v69 = (*(v67 + 88))(v68);

    *&v66[*(*v66 + 120)] = v69;
    *&v66[*(*v66 + 136)] = v69;
    v70 = v69;
    v71 = v285;
    sub_1D725890C();
    v72 = v286;
    v280(&v66[*(*v66 + 128)], v71, v286);
    LOBYTE(v71) = [v281 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v317);
    v66[qword_1EDF347F8] = v71;
    sub_1D5DF42F8(v284, &v66[qword_1EDF347F0]);
    v73 = swift_allocObject();
    v73[2] = sub_1D5EF97C0;
    v73[3] = v61;
    v73[4] = v70;
    *(v66 + 3) = sub_1D5EF9FF8;
    *(v66 + 4) = v73;
    v35[43] = v66;
    sub_1D5B68374(v320, &v306);
    v282(v278, 1, 1, v72);
    v74 = swift_allocObject();
    v75 = v304[0];
    v74[7] = v303;
    v74[8] = v75;
    *(v74 + 137) = *(v304 + 9);
    v76 = v300;
    v74[3] = v299;
    v74[4] = v76;
    v77 = v302;
    v74[5] = v301;
    v74[6] = v77;
    v78 = v298;
    v74[1] = v297;
    v74[2] = v78;
    v79 = swift_allocObject();
    *(v79 + 2) = 0xC04E000000000000;
    v81 = v307;
    v80 = v308;
    __swift_project_boxed_opaque_existential_1(&v306, v307);
    if (v302 == 1 || !v303)
    {
      v146 = v297;
      sub_1D5ECF2C4(&v297, &v309);
      v147 = [v146 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v297, &v309);
    }

    v148 = sub_1D726213C();
    v150 = v149;

    v151 = (*(v80 + 96))(v148, v150, v81, v80);

    *&v79[*(*v79 + 120)] = v151;
    *&v79[*(*v79 + 136)] = v151;
    v152 = v151;
    v153 = v285;
    sub_1D725890C();
    v154 = v286;
    v280(&v79[*(*v79 + 128)], v153, v286);
    LOBYTE(v153) = [v281 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v306);
    v79[qword_1EDF347F8] = v153;
    sub_1D5DF42F8(v278, &v79[qword_1EDF347F0]);
    v155 = swift_allocObject();
    v155[2] = sub_1D5EF97C8;
    v155[3] = v74;
    v155[4] = v152;
    *(v79 + 3) = sub_1D5EF9FF8;
    *(v79 + 4) = v155;
    v287[44] = v79;
    sub_1D5B68374(v320, &v306);
    v282(v277, 1, 1, v154);
    v156 = swift_allocObject();
    v157 = v304[0];
    v156[7] = v303;
    v156[8] = v157;
    *(v156 + 137) = *(v304 + 9);
    v158 = v300;
    v156[3] = v299;
    v156[4] = v158;
    v159 = v302;
    v156[5] = v301;
    v156[6] = v159;
    v160 = v298;
    v156[1] = v297;
    v156[2] = v160;
    v161 = swift_allocObject();
    *(v161 + 2) = 0xC04E000000000000;
    v162 = BYTE8(v298);
    v163 = v308;
    __swift_project_boxed_opaque_existential_1(&v306, v307);
    if (v162 == 2)
    {
      LOBYTE(v317) = 2;
      sub_1D5ECF2C4(&v297, &v309);
      v164 = sub_1D6CAFB7C();
      v165 = (*(v163 + 96))(v164);
    }

    else
    {
      LOBYTE(v317) = v162;
      sub_1D5ECF2C4(&v297, &v309);
      v187 = sub_1D6CAFB7C();
      v165 = (*(v163 + 104))(v187);
    }

    v188 = v165;

    *&v161[*(*v161 + 120)] = v188;
    *&v161[*(*v161 + 136)] = v188;
    v189 = v188;
    v190 = v285;
    sub_1D725890C();
    v191 = v286;
    v280(&v161[*(*v161 + 128)], v190, v286);
    LOBYTE(v190) = [v281 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v306);
    v161[qword_1EDF347F8] = v190;
    sub_1D5DF42F8(v277, &v161[qword_1EDF347F0]);
    v192 = swift_allocObject();
    v192[2] = sub_1D5EF97D0;
    v192[3] = v156;
    v192[4] = v189;
    *(v161 + 3) = sub_1D5EF9FF8;
    *(v161 + 4) = v192;
    v287[45] = v161;
    sub_1D5B68374(v320, &v309);
    v282(v284, 1, 1, v191);
    v193 = swift_allocObject();
    *(v193 + 2) = 0xC04E000000000000;
    v194 = *(&v310 + 1);
    v195 = v311;
    __swift_project_boxed_opaque_existential_1(&v309, *(&v310 + 1));
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v278 = ObjCClassFromMetadata;
    v277 = objc_opt_self();
    v197 = [v277 bundleForClass_];
    sub_1D725811C();

    v198 = sub_1D726213C();
    v200 = v199;

    v201 = (*(v195 + 112))(v198, v200, v194, v195);

    *&v193[*(*v193 + 120)] = v201;
    *&v193[*(*v193 + 136)] = v201;
    v202 = v201;
    v203 = v285;
    sub_1D725890C();
    v204 = v286;
    v280(&v193[*(*v193 + 128)], v203, v286);
    LOBYTE(v203) = [v281 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v309);
    v193[qword_1EDF347F8] = v203;
    v205 = v284;
    sub_1D5DF42F8(v284, &v193[qword_1EDF347F0]);
    v206 = swift_allocObject();
    v206[2] = sub_1D6EAD6D0;
    v206[3] = 0;
    v206[4] = v202;
    *(v193 + 3) = sub_1D5EF9FF8;
    *(v193 + 4) = v206;
    v287[46] = v193;
    sub_1D5B68374(v320, &v309);
    v207 = v204;
    v282(v205, 1, 1, v204);
    v208 = swift_allocObject();
    *(v208 + 2) = 0xC04E000000000000;
    v209 = *(&v310 + 1);
    v210 = v311;
    __swift_project_boxed_opaque_existential_1(&v309, *(&v310 + 1));
    v211 = [v277 bundleForClass_];
    sub_1D725811C();

    v212 = sub_1D726213C();
    v214 = v213;

    v215 = (*(v210 + 120))(v212, v214, v209, v210);

    *&v208[*(*v208 + 120)] = v215;
    *&v208[*(*v208 + 136)] = v215;
    v216 = v215;
    v217 = v285;
    sub_1D725890C();
    v218 = v207;
    v219 = v207;
    v220 = v280;
    v280(&v208[*(*v208 + 128)], v217, v219);
    LOBYTE(v212) = [v281 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v309);
    v208[qword_1EDF347F8] = v212;
    v221 = v284;
    sub_1D5DF42F8(v284, &v208[qword_1EDF347F0]);
    v222 = swift_allocObject();
    v222[2] = sub_1D6EAD7F8;
    v222[3] = 0;
    v222[4] = v216;
    *(v208 + 3) = sub_1D5EF9FF8;
    *(v208 + 4) = v222;
    v287[47] = v208;
    sub_1D5B68374(v320, &v306);
    v282(v221, 1, 1, v218);
    v223 = swift_allocObject();
    v224 = v304[0];
    v223[7] = v303;
    v223[8] = v224;
    *(v223 + 137) = *(v304 + 9);
    v225 = v300;
    v223[3] = v299;
    v223[4] = v225;
    v226 = v302;
    v223[5] = v301;
    v223[6] = v226;
    v227 = v298;
    v223[1] = v297;
    v223[2] = v227;
    sub_1D5EF97E0();
    v228 = swift_allocObject();
    *(v228 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v297, &v309);
    sub_1D6EAD930(&v297, &v309);
    sub_1D5ECF320(&v297);
    v229 = v309;
    *&v228[*(*v228 + 120)] = v309;
    *&v228[*(*v228 + 136)] = v229;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v220(&v228[*(*v228 + 128)], v217, v218);
    LOBYTE(v221) = [v281 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v306);
    v228[qword_1EDF347F8] = v221;
    sub_1D5DF42F8(v284, &v228[qword_1EDF347F0]);
    v230 = swift_allocObject();
    *(v230 + 16) = sub_1D5EF97D8;
    *(v230 + 24) = v223;
    *(v230 + 32) = v229;
    *(v228 + 3) = sub_1D5EF98AC;
    *(v228 + 4) = v230;
    sub_1D5ECF320(&v297);
    sub_1D5EF1C70(&v289);
  }

  else
  {
    v278 = v19;
    v276 = v3;
    v303 = v327;
    v304[0] = v328[0];
    *(v304 + 9) = *(v328 + 9);
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v302 = v326;
    v297 = v321;
    v298 = v322;
    v82 = *a2;
    sub_1D5D62850(&v289);
    v83 = a2 + *(type metadata accessor for H18_V1.Bound() + 24);
    v84 = type metadata accessor for GroupLayoutContext();
    v85 = *(*&v83[*(v84 + 40)] + 16);
    v86 = *&v83[*(v84 + 32)];
    sub_1D5B68374(v85 + 16, &v306);
    sub_1D5B68374(v85 + 56, &v317);
    v87 = v86 * *(v85 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v88 = swift_allocObject();
    sub_1D5B63F14(&v306, v88 + 16);
    sub_1D5B63F14(&v317, v88 + 56);
    *(v88 + 96) = v87;
    sub_1D5ECF2C4(&v297, &v309);
    FeedLayoutStylerFactory.styler()(v320);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v88 + 16);
    __swift_destroy_boxed_opaque_existential_1(v88 + 56);
    swift_deallocClassInstance();
    v89 = v301;
    v90 = v287;
    *(v287 + 11) = v302;
    v91 = v304[0];
    *(v90 + 13) = v303;
    *(v90 + 15) = v91;
    *(v90 + 129) = *(v304 + 9);
    v92 = v297;
    *(v90 + 3) = v298;
    v93 = v300;
    *(v90 + 5) = v299;
    *(v90 + 7) = v93;
    *(v90 + 9) = v89;
    *(v90 + 1) = v92;
    v94 = v293;
    *(v90 + 29) = v294;
    v95 = v296[0];
    *(v90 + 31) = v295;
    *(v90 + 33) = v95;
    *(v90 + 273) = *(v296 + 9);
    v96 = v289;
    *(v90 + 21) = v290;
    v97 = v292;
    *(v90 + 23) = v291;
    *(v90 + 25) = v97;
    *(v90 + 27) = v94;
    *v90 = v82;
    *(v90 + 19) = v96;
    sub_1D5B68374(v320, (v90 + 37));
    sub_1D5B68374(v320, &v317);
    v282 = *(v6 + 56);
    v283 = v6 + 56;
    v282(v26, 1, 1, v286);
    v98 = swift_allocObject();
    v288 = v6;
    v284 = v26;
    v99 = v98;
    v100 = v304[0];
    v98[7] = v303;
    v98[8] = v100;
    *(v98 + 137) = *(v304 + 9);
    v101 = v300;
    v98[3] = v299;
    v98[4] = v101;
    v102 = v302;
    v98[5] = v301;
    v98[6] = v102;
    v103 = v298;
    v98[1] = v297;
    v98[2] = v103;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v279 = v104;
    v105 = swift_allocObject();
    v105[2] = 0xC04E000000000000;
    v106 = v319;
    __swift_project_boxed_opaque_existential_1(&v317, v318);
    v315 = v303;
    v316[0] = v304[0];
    *(v316 + 9) = *(v304 + 9);
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v314 = v302;
    v309 = v297;
    v310 = v298;
    sub_1D5ECF2C4(&v297, &v306);
    sub_1D5ECF2C4(&v297, &v306);

    v107 = sub_1D6CAFA6C();
    v108 = (*(v106 + 80))(v107);

    *(v105 + *(*v105 + 120)) = v108;
    *(v105 + *(*v105 + 136)) = v108;
    v109 = v108;
    v110 = v285;
    sub_1D725890C();
    v111 = *(*v105 + 128);
    v112 = *(v288 + 32);
    v288 += 32;
    v281 = v112;
    v113 = v286;
    (v112)(v105 + v111, v110, v286);
    v280 = objc_opt_self();
    LOBYTE(v110) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v317);
    *(v105 + qword_1EDF347F8) = v110;
    v114 = v284;
    sub_1D5DF42F8(v284, v105 + qword_1EDF347F0);
    v115 = swift_allocObject();
    v115[2] = sub_1D6CBAA8C;
    v115[3] = v99;
    v115[4] = v109;
    v105[3] = sub_1D5EF9FF8;
    v105[4] = v115;
    v90[42] = v105;
    sub_1D5B68374(v320, &v317);
    v282(v114, 1, 1, v113);
    v116 = swift_allocObject();
    v117 = v304[0];
    v116[7] = v303;
    v116[8] = v117;
    *(v116 + 137) = *(v304 + 9);
    v118 = v300;
    v116[3] = v299;
    v116[4] = v118;
    v119 = v302;
    v116[5] = v301;
    v116[6] = v119;
    v120 = v298;
    v116[1] = v297;
    v116[2] = v120;
    v121 = swift_allocObject();
    v121[2] = 0xC04E000000000000;
    v122 = v319;
    __swift_project_boxed_opaque_existential_1(&v317, v318);
    v315 = v303;
    v316[0] = v304[0];
    *(v316 + 9) = *(v304 + 9);
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v314 = v302;
    v309 = v297;
    v310 = v298;
    sub_1D5ECF2C4(&v297, &v306);
    v123 = sub_1D6CAFA6C();
    v124 = (*(v122 + 88))(v123);

    *(v121 + *(*v121 + 120)) = v124;
    *(v121 + *(*v121 + 136)) = v124;
    v125 = v124;
    v126 = v285;
    sub_1D725890C();
    v127 = v286;
    (v281)(v121 + *(*v121 + 128), v126, v286);
    LOBYTE(v126) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v317);
    *(v121 + qword_1EDF347F8) = v126;
    sub_1D5DF42F8(v284, v121 + qword_1EDF347F0);
    v128 = swift_allocObject();
    v128[2] = sub_1D6CBAA90;
    v128[3] = v116;
    v128[4] = v125;
    v121[3] = sub_1D5EF9FF8;
    v121[4] = v128;
    v90[43] = v121;
    sub_1D5B68374(v320, &v306);
    v282(v277, 1, 1, v127);
    v129 = swift_allocObject();
    v130 = v304[0];
    v129[7] = v303;
    v129[8] = v130;
    *(v129 + 137) = *(v304 + 9);
    v131 = v300;
    v129[3] = v299;
    v129[4] = v131;
    v132 = v302;
    v129[5] = v301;
    v129[6] = v132;
    v133 = v298;
    v129[1] = v297;
    v129[2] = v133;
    v134 = swift_allocObject();
    v134[2] = 0xC04E000000000000;
    v135 = v307;
    v136 = v308;
    __swift_project_boxed_opaque_existential_1(&v306, v307);
    if (v302 == 1 || !v303)
    {
      v166 = v297;
      sub_1D5ECF2C4(&v297, &v309);
      v167 = [v166 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v297, &v309);
    }

    v168 = sub_1D726213C();
    v170 = v169;

    v171 = (*(v136 + 96))(v168, v170, v135, v136);

    *(v134 + *(*v134 + 120)) = v171;
    *(v134 + *(*v134 + 136)) = v171;
    v172 = v171;
    v173 = v285;
    sub_1D725890C();
    v174 = v286;
    (v281)(v134 + *(*v134 + 128), v173, v286);
    LOBYTE(v173) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v306);
    *(v134 + qword_1EDF347F8) = v173;
    sub_1D5DF42F8(v277, v134 + qword_1EDF347F0);
    v175 = swift_allocObject();
    v175[2] = sub_1D6CBAA94;
    v175[3] = v129;
    v175[4] = v172;
    v134[3] = sub_1D5EF9FF8;
    v134[4] = v175;
    v287[44] = v134;
    sub_1D5B68374(v320, &v306);
    v176 = v278;
    v282(v278, 1, 1, v174);
    v177 = swift_allocObject();
    v178 = v304[0];
    v177[7] = v303;
    v177[8] = v178;
    *(v177 + 137) = *(v304 + 9);
    v179 = v300;
    v177[3] = v299;
    v177[4] = v179;
    v180 = v302;
    v177[5] = v301;
    v177[6] = v180;
    v181 = v298;
    v177[1] = v297;
    v177[2] = v181;
    v182 = swift_allocObject();
    v182[2] = 0xC04E000000000000;
    v183 = BYTE8(v298);
    v184 = v308;
    __swift_project_boxed_opaque_existential_1(&v306, v307);
    if (v183 == 2)
    {
      LOBYTE(v317) = 2;
      sub_1D5ECF2C4(&v297, &v309);
      v185 = sub_1D6CAFB7C();
      v186 = (*(v184 + 96))(v185);
    }

    else
    {
      LOBYTE(v317) = v183;
      sub_1D5ECF2C4(&v297, &v309);
      v231 = sub_1D6CAFB7C();
      v186 = (*(v184 + 104))(v231);
    }

    v232 = v186;

    *(v182 + *(*v182 + 120)) = v232;
    *(v182 + *(*v182 + 136)) = v232;
    v233 = v232;
    v234 = v285;
    sub_1D725890C();
    v235 = v286;
    (v281)(v182 + *(*v182 + 128), v234, v286);
    LOBYTE(v234) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v306);
    *(v182 + qword_1EDF347F8) = v234;
    sub_1D5DF42F8(v176, v182 + qword_1EDF347F0);
    v236 = swift_allocObject();
    v236[2] = sub_1D6CBAA98;
    v236[3] = v177;
    v236[4] = v233;
    v182[3] = sub_1D5EF9FF8;
    v182[4] = v236;
    v287[45] = v182;
    sub_1D5B68374(v320, &v309);
    v282(v284, 1, 1, v235);
    v237 = swift_allocObject();
    v237[2] = 0xC04E000000000000;
    v238 = *(&v310 + 1);
    v239 = v311;
    __swift_project_boxed_opaque_existential_1(&v309, *(&v310 + 1));
    type metadata accessor for Localized();
    v240 = swift_getObjCClassFromMetadata();
    v278 = v240;
    v277 = objc_opt_self();
    v241 = [v277 bundleForClass_];
    sub_1D725811C();

    v242 = sub_1D726213C();
    v244 = v243;

    v245 = (*(v239 + 112))(v242, v244, v238, v239);

    *(v237 + *(*v237 + 120)) = v245;
    *(v237 + *(*v237 + 136)) = v245;
    v246 = v245;
    v247 = v285;
    sub_1D725890C();
    v248 = v286;
    v249 = v281;
    (v281)(v237 + *(*v237 + 128), v247, v286);
    LOBYTE(v247) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v309);
    *(v237 + qword_1EDF347F8) = v247;
    v250 = v284;
    sub_1D5DF42F8(v284, v237 + qword_1EDF347F0);
    v251 = swift_allocObject();
    v251[2] = sub_1D6EAD6D0;
    v251[3] = 0;
    v251[4] = v246;
    v237[3] = sub_1D5EF9FF8;
    v237[4] = v251;
    v287[46] = v237;
    sub_1D5B68374(v320, &v309);
    v282(v250, 1, 1, v248);
    v252 = swift_allocObject();
    *(v252 + 2) = 0xC04E000000000000;
    v253 = *(&v310 + 1);
    v254 = v311;
    __swift_project_boxed_opaque_existential_1(&v309, *(&v310 + 1));
    v255 = [v277 bundleForClass_];
    sub_1D725811C();

    v256 = sub_1D726213C();
    v258 = v257;

    v259 = (*(v254 + 120))(v256, v258, v253, v254);

    *&v252[*(*v252 + 120)] = v259;
    *&v252[*(*v252 + 136)] = v259;
    v260 = v259;
    v261 = v285;
    sub_1D725890C();
    v262 = v286;
    v249(&v252[*(*v252 + 128)], v261, v286);
    v263 = v280;
    LOBYTE(v256) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v309);
    v252[qword_1EDF347F8] = v256;
    v264 = v284;
    sub_1D5DF42F8(v284, &v252[qword_1EDF347F0]);
    v265 = swift_allocObject();
    v265[2] = sub_1D6EAD7F8;
    v265[3] = 0;
    v265[4] = v260;
    *(v252 + 3) = sub_1D5EF9FF8;
    *(v252 + 4) = v265;
    v287[47] = v252;
    sub_1D5B68374(v320, &v306);
    v266 = v264;
    v282(v264, 1, 1, v262);
    v267 = swift_allocObject();
    v268 = v304[0];
    v267[7] = v303;
    v267[8] = v268;
    *(v267 + 137) = *(v304 + 9);
    v269 = v300;
    v267[3] = v299;
    v267[4] = v269;
    v270 = v302;
    v267[5] = v301;
    v267[6] = v270;
    v271 = v298;
    v267[1] = v297;
    v267[2] = v271;
    sub_1D5EF97E0();
    v228 = swift_allocObject();
    *(v228 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v297, &v309);
    sub_1D6EAD930(&v297, &v309);
    sub_1D5ECF320(&v297);
    v272 = v309;
    *&v228[*(*v228 + 120)] = v309;
    *&v228[*(*v228 + 136)] = v272;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    (v281)(&v228[*(*v228 + 128)], v261, v262);
    LOBYTE(v262) = [v263 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v306);
    v228[qword_1EDF347F8] = v262;
    sub_1D5DF42F8(v266, &v228[qword_1EDF347F0]);
    v273 = swift_allocObject();
    *(v273 + 16) = sub_1D6CBAA9C;
    *(v273 + 24) = v267;
    *(v273 + 32) = v272;
    *(v228 + 3) = sub_1D6CBAA88;
    *(v228 + 4) = v273;
    sub_1D5ECF320(&v297);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v320);
  v274 = v287;
  v287[48] = v228;
  *(v274 + 392) = 0;
  return result;
}

void sub_1D70D7B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  sub_1D70D9670(0, &qword_1EC89A528, sub_1D70D8F88, &type metadata for H18_V1.Layout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v21 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    v27 = *MEMORY[0x1E69D7460];
    v26 = *(v8 + 104);
    v25 = *MEMORY[0x1E69D7098];
    v29 = v8 + 104;
    v24 = (v8 + 8);
    v23 = xmmword_1D7273AE0;
    v28 = a1;
    v22 = v6;
    do
    {
      v12 += 8;
      v31 = a1;
      v26(v10, v27, v6);
      sub_1D70D9030();
      sub_1D70D9670(0, &qword_1EC89A538, sub_1D70D8F88, &type metadata for H18_V1.Layout, MEMORY[0x1E69D70D8]);
      v14 = v13;
      v15 = *(v13 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v23;
      v18 = (*(v15 + 104))(v17 + v16, v25, v14);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D7150];
      sub_1D70D9114(0, &qword_1EC89A540, MEMORY[0x1E69D7150]);
      sub_1D70D90C8(&qword_1EC89A548, &qword_1EC89A540, v20);

      a1 = v28;
      v6 = v22;
      sub_1D72599EC();

      (*v24)(v10, v6);
      --v11;
    }

    while (v11);
  }
}

void sub_1D70D7E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v91 = a1;
  sub_1D70D9670(0, &qword_1EC89A528, sub_1D70D8F88, &type metadata for H18_V1.Layout, MEMORY[0x1E69D74B0]);
  v95 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v90 = (&v75 - v7);
  v8 = sub_1D725A36C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (v13)
  {
    v94 = 0;
    v14 = a2 + 32;
    v88 = *MEMORY[0x1E69D7378];
    v87 = (v10 + 104);
    v86 = *MEMORY[0x1E69D7200];
    v85 = *MEMORY[0x1E69D7208];
    v84 = *MEMORY[0x1E69D7468];
    v83 = (v5 + 104);
    v15 = *MEMORY[0x1E69D7050];
    v81 = *MEMORY[0x1E69D7080];
    v82 = v15;
    v80 = (v5 + 8);
    v79 = xmmword_1D7273AE0;
    v76 = v8;
    v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v92 = v14;
      v93 = v13;
      sub_1D6CB9EB0(v14, v98);
      if (v99)
      {
        v96[12] = *&v98[192];
        v96[13] = *&v98[208];
        v96[14] = *&v98[224];
        *&v96[15] = *&v98[240];
        v96[8] = *&v98[128];
        v96[9] = *&v98[144];
        v96[10] = *&v98[160];
        v96[11] = *&v98[176];
        v96[4] = *&v98[64];
        v96[5] = *&v98[80];
        v96[6] = *&v98[96];
        v96[7] = *&v98[112];
        v96[0] = *v98;
        v96[1] = *&v98[16];
        v96[2] = *&v98[32];
        v96[3] = *&v98[48];
        v97 = v91;
        KeyPath = swift_getKeyPath();
        sub_1D5EF9444();
        v17 = v16;
        v18 = swift_allocBox();
        v20 = v19;
        v21 = *(v17 + 48);
        sub_1D725993C();
        v22 = swift_allocBox();
        sub_1D725992C();
        *v20 = v22;
        v23 = sub_1D725A09C();
        v24 = *(*(v23 - 8) + 104);
        v24(v20, v86, v23);
        v24((v20 + v21), v85, v23);
        v25 = v90;
        *v90 = v18;
        (*v83)(v25, v84, v95);
        sub_1D70D9030();
        sub_1D70D9670(0, &qword_1EC89A538, sub_1D70D8F88, &type metadata for H18_V1.Layout, MEMORY[0x1E69D70D8]);
        v27 = v26;
        v28 = *(v26 - 8);
        v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = v79;
        sub_1D70D9670(0, &qword_1EC89A550, sub_1D70D8F88, &type metadata for H18_V1.Layout, MEMORY[0x1E69D7078]);
        (*(*(v31 - 8) + 104))(v30 + v29, v82, v31);
        v32 = v30 + v29;
        v12 = v89;
        v33 = (*(v28 + 104))(v32, v81, v27);
        v35 = MEMORY[0x1EEE9AC00](v33, v34);
        v73 = v96;
        (*v87)(v12, v88, v8, v35);
        sub_1D6CBA24C();
        swift_allocObject();
        sub_1D725A4CC();
        v36 = MEMORY[0x1E69D6F38];
        sub_1D70D9114(0, &qword_1EC89A558, MEMORY[0x1E69D6F38]);
        v38 = v37;
        v39 = sub_1D70D90C8(&qword_1EC89A560, &qword_1EC89A558, v36);
        v73 = v38;
        v74 = v39;
        v40 = v25;
        v41 = v94;
        sub_1D7259B0C();
        v94 = v41;

        (*v80)(v40, v95);
        sub_1D6CB9F0C(v96);
      }

      else
      {
        memcpy(v96, v98, 0x188uLL);
        if ((BYTE8(v96[3]) & 0x10) != 0)
        {
          v47 = v77 + *(type metadata accessor for H18_V1.Bound() + 24);
          v48 = type metadata accessor for GroupLayoutContext();
          v49 = *(*(v47 + *(v48 + 40)) + 24);
          v46 = MEMORY[0x1EEE9AC00](v48, v50);
          *(&v75 - 4) = v96;
          *(&v75 - 3) = v49;
          v73 = v51;
        }

        else
        {
          v42 = v77 + *(type metadata accessor for H18_V1.Bound() + 24);
          v43 = type metadata accessor for GroupLayoutContext();
          v44 = *(*(v42 + *(v43 + 40)) + 24);
          v46 = MEMORY[0x1EEE9AC00](v43, v45);
          v73 = v96;
          v74 = v44;
        }

        (*v87)(v12, v88, v8, v46);
        sub_1D5EF94BC();
        swift_allocObject();

        KeyPath = sub_1D725A4CC();

        v97 = v91;
        swift_getKeyPath();
        sub_1D5EF9444();
        v53 = v52;
        v54 = swift_allocBox();
        v56 = v55;
        v57 = *(v53 + 48);
        sub_1D725993C();
        v58 = swift_allocBox();
        sub_1D725992C();
        *v56 = v58;
        v59 = sub_1D725A09C();
        v60 = *(*(v59 - 8) + 104);
        v60(v56, v86, v59);
        v60((v56 + v57), v85, v59);
        v61 = v90;
        *v90 = v54;
        (*v83)(v61, v84, v95);
        sub_1D70D9030();
        sub_1D70D9670(0, &qword_1EC89A538, sub_1D70D8F88, &type metadata for H18_V1.Layout, MEMORY[0x1E69D70D8]);
        v63 = v62;
        v64 = *(v62 - 8);
        v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = v79;
        sub_1D70D9670(0, &qword_1EC89A550, sub_1D70D8F88, &type metadata for H18_V1.Layout, MEMORY[0x1E69D7078]);
        (*(*(v67 - 8) + 104))(v66 + v65, v82, v67);
        (*(v64 + 104))(v66 + v65, v81, v63);
        v68 = MEMORY[0x1E69D6F38];
        sub_1D70D9114(0, &qword_1EC89A558, MEMORY[0x1E69D6F38]);
        v70 = v69;
        v71 = sub_1D70D90C8(&qword_1EC89A560, &qword_1EC89A558, v68);
        v73 = v70;
        v74 = v71;
        v72 = v94;
        sub_1D7259B0C();
        v94 = v72;

        (*v80)(v61, v95);
        sub_1D5EF93F0(v96);
        v8 = v76;
        v12 = v89;
      }

      v14 = v92 + 400;
      v13 = v93 - 1;
    }

    while (v93 != 1);
  }
}

uint64_t sub_1D70D89A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D725895C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CB9EB0(a2, v41);
  memcpy(v42, a3, sizeof(v42));
  if ((v41[392] & 1) == 0)
  {
    sub_1D6CB9EB0(v41, v39);
    memcpy(v40, a3, 0x181uLL);
    if (sub_1D67480B8(v40) != 1)
    {
      v37 = nullsub_1();
      v38 = swift_allocObject();
      memcpy((v38 + 16), v39, 0x188uLL);
      memcpy((v38 + 408), v37, 0x180uLL);
      *(v38 + 792) = a1;
      v31 = v38 | 0x5000000000000000;
      goto LABEL_9;
    }

    nullsub_1();
    sub_1D5EF93F0(v39);
LABEL_7:
    v32 = swift_allocObject();
    sub_1D725894C();
    v33 = sub_1D725893C();
    v35 = v34;
    (*(v9 + 8))(v12, v8);
    *(v32 + 16) = v33;
    *(v32 + 24) = v35;
    *a4 = v32;
    return sub_1D6CB9F60(v41);
  }

  sub_1D6CB9EB0(v41, v39);
  memcpy(v40, a3, 0x181uLL);
  if (sub_1D67480B8(v40) != 1)
  {
    nullsub_1();
    sub_1D6CB9F0C(v39);
    goto LABEL_7;
  }

  v13 = nullsub_1();
  v14 = swift_allocObject();
  v15 = v39[13];
  *(v14 + 208) = v39[12];
  *(v14 + 224) = v15;
  *(v14 + 240) = v39[14];
  *(v14 + 256) = *&v39[15];
  v16 = v39[9];
  *(v14 + 144) = v39[8];
  *(v14 + 160) = v16;
  v17 = v39[11];
  *(v14 + 176) = v39[10];
  *(v14 + 192) = v17;
  v18 = v39[5];
  *(v14 + 80) = v39[4];
  *(v14 + 96) = v18;
  v19 = v39[7];
  *(v14 + 112) = v39[6];
  *(v14 + 128) = v19;
  v20 = v39[1];
  *(v14 + 16) = v39[0];
  *(v14 + 32) = v20;
  v21 = v39[3];
  *(v14 + 48) = v39[2];
  *(v14 + 64) = v21;
  v22 = *v13;
  v23 = v13[1];
  v24 = v13[3];
  *(v14 + 296) = v13[2];
  *(v14 + 312) = v24;
  *(v14 + 264) = v22;
  *(v14 + 280) = v23;
  v25 = v13[4];
  v26 = v13[5];
  v27 = v13[7];
  *(v14 + 360) = v13[6];
  *(v14 + 376) = v27;
  *(v14 + 328) = v25;
  *(v14 + 344) = v26;
  v28 = v13[8];
  v29 = v13[9];
  v30 = v13[11];
  *(v14 + 424) = v13[10];
  *(v14 + 440) = v30;
  *(v14 + 392) = v28;
  *(v14 + 408) = v29;
  *(v14 + 456) = a1;
  v31 = v14 | 0x6000000000000000;
LABEL_9:
  *a4 = v31;
  return sub_1D6CBA01C(v41);
}

unint64_t sub_1D70D8CA0(uint64_t a1)
{
  *(a1 + 8) = sub_1D70D8CD0();
  result = sub_1D70D8D24();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D70D8CD0()
{
  result = qword_1EC89A4E0;
  if (!qword_1EC89A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A4E0);
  }

  return result;
}

unint64_t sub_1D70D8D24()
{
  result = qword_1EC89A4E8;
  if (!qword_1EC89A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A4E8);
  }

  return result;
}

uint64_t type metadata accessor for H18_V1.Bound()
{
  result = qword_1EC89A4F8;
  if (!qword_1EC89A4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D70D8DEC()
{
  type metadata accessor for GroupLayoutKey();
  if (v0 <= 0x3F)
  {
    sub_1D5C10AB0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext();
      if (v2 <= 0x3F)
      {
        sub_1D70D9198(319, &qword_1EC894A50, &type metadata for FeedCatalogItem, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D70D8EC4(uint64_t a1)
{
  result = sub_1D70D8F1C(&qword_1EC89A508, type metadata accessor for H18_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70D8F1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D70D8F88()
{
  result = qword_1EC89A518;
  if (!qword_1EC89A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A518);
  }

  return result;
}

unint64_t sub_1D70D8FDC()
{
  result = qword_1EC89A520;
  if (!qword_1EC89A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A520);
  }

  return result;
}

void sub_1D70D9030()
{
  if (!qword_1EC89A530)
  {
    sub_1D70D9670(255, &qword_1EC89A538, sub_1D70D8F88, &type metadata for H18_V1.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A530);
    }
  }
}

uint64_t sub_1D70D90C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D70D9114(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D70D9114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for H18_V1.Layout;
    v8[1] = &type metadata for H18_V1.Layout.Attributes;
    v8[2] = sub_1D70D8F88();
    v8[3] = sub_1D70D8FDC();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D70D9198(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D70D920C()
{
  result = qword_1EC89A568;
  if (!qword_1EC89A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A568);
  }

  return result;
}

unint64_t sub_1D70D9264()
{
  result = qword_1EC89A570;
  if (!qword_1EC89A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A570);
  }

  return result;
}

unint64_t sub_1D70D92BC()
{
  result = qword_1EC89A578;
  if (!qword_1EC89A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A578);
  }

  return result;
}

unint64_t sub_1D70D9314()
{
  result = qword_1EC89A580;
  if (!qword_1EC89A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A580);
  }

  return result;
}

uint64_t sub_1D70D9368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D70D9670(0, &qword_1EC89A588, sub_1D70D961C, &type metadata for H18_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70D961C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D70D8F1C(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D70D9198(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D70D96D8(&qword_1EC894B28, sub_1D6749080);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D70D961C()
{
  result = qword_1EC89A590;
  if (!qword_1EC89A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A590);
  }

  return result;
}

void sub_1D70D9670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D70D96D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D70D9198(255, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70D977C()
{
  result = qword_1EC89A5A0;
  if (!qword_1EC89A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A5A0);
  }

  return result;
}

unint64_t sub_1D70D97D4()
{
  result = qword_1EC89A5A8;
  if (!qword_1EC89A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A5A8);
  }

  return result;
}

unint64_t sub_1D70D982C()
{
  result = qword_1EC89A5B0;
  if (!qword_1EC89A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A5B0);
  }

  return result;
}

uint64_t FeedSuggestionCluster.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatIssueBinding.ActivityItemsConfiguration.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D70D9958()
{
  result = qword_1EC89A5B8;
  if (!qword_1EC89A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A5B8);
  }

  return result;
}

unint64_t sub_1D70D99AC(uint64_t a1)
{
  result = sub_1D70D99D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70D99D4()
{
  result = qword_1EC89A5C0;
  if (!qword_1EC89A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A5C0);
  }

  return result;
}

unint64_t sub_1D70D9A28(void *a1)
{
  a1[1] = sub_1D6670FF0();
  a1[2] = sub_1D6702074();
  result = sub_1D70D9958();
  a1[3] = result;
  return result;
}

uint64_t PuzzleAlertConfiguration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAlertConfiguration.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PuzzleAlertConfiguration.message.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall PuzzleAlertConfiguration.init(dictionary:)(NewsFeed::PuzzleAlertConfiguration_optional *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  if (*(dictionary._rawValue + 2))
  {
    v4 = sub_1D5B69D90(25705, 0xE200000000000000);
    if (v5)
    {
      sub_1D5B76B10(*(dictionary._rawValue + 7) + 32 * v4, v55);
      if (swift_dynamicCast())
      {
        v6 = *&v55[40];
        v7 = v56;
        if (*(dictionary._rawValue + 2))
        {
          v8 = sub_1D5B69D90(0x656C746974, 0xE500000000000000);
          if (v9)
          {
            sub_1D5B76B10(*(dictionary._rawValue + 7) + 32 * v8, v55);
            v10 = swift_dynamicCast();
            if (v10)
            {
              v11 = *&v55[40];
            }

            else
            {
              v11 = 0;
            }

            if (v10)
            {
              v12 = v56;
            }

            else
            {
              v12 = 0;
            }

            if (!*(dictionary._rawValue + 2))
            {
              goto LABEL_31;
            }

LABEL_22:
            v22 = sub_1D5B69D90(0x6567617373656DLL, 0xE700000000000000);
            if (v23)
            {
              sub_1D5B76B10(*(dictionary._rawValue + 7) + 32 * v22, v55);
              v24 = swift_dynamicCast();
              if (v24)
              {
                v25 = *&v55[40];
              }

              else
              {
                v25 = 0;
              }

              if (v24)
              {
                v26 = v56;
              }

              else
              {
                v26 = 0;
              }

              if (!*(dictionary._rawValue + 2))
              {
                goto LABEL_32;
              }
            }

            else
            {
              v25 = 0;
              v26 = 0;
              if (!*(dictionary._rawValue + 2))
              {
                goto LABEL_32;
              }
            }

            v28 = sub_1D5B69D90(0x736E6F69746361, 0xE700000000000000);
            if (v29)
            {
              sub_1D5B76B10(*(dictionary._rawValue + 7) + 32 * v28, v55);

              sub_1D6325CE0();
              if (swift_dynamicCast())
              {
                v52 = v12;
                v53 = v11;
                v54 = v7;
                v30 = *&v55[40];
                v31 = *(*&v55[40] + 16);
                if (v31)
                {
                  v32 = 0;
                  v27 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v33 = v32;
                    while (1)
                    {
                      if (v33 >= *(v30 + 16))
                      {
                        __break(1u);
                        return;
                      }

                      v32 = v33 + 1;

                      PuzzleAlertAction.init(dictionary:)(v55, v34);
                      v35 = *&v55[8];
                      if (*&v55[8])
                      {
                        break;
                      }

                      sub_1D5D559EC(*v55, 0);
                      ++v33;
                      if (v31 == v32)
                      {
                        goto LABEL_52;
                      }
                    }

                    v51 = *v55;
                    v48 = *&v55[16];
                    v49 = *&v55[24];
                    v50 = v55[32];
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v27 = sub_1D6996DE0(0, *(v27 + 2) + 1, 1, v27);
                    }

                    v37 = *(v27 + 2);
                    v36 = *(v27 + 3);
                    v38 = v37 + 1;
                    v39 = v50;
                    v41 = v48;
                    v40 = v49;
                    v42 = v51;
                    if (v37 >= v36 >> 1)
                    {
                      v47 = v37 + 1;
                      v44 = v27;
                      v45 = *(v27 + 2);
                      v46 = sub_1D6996DE0((v36 > 1), v37 + 1, 1, v44);
                      v38 = v47;
                      v41 = v48;
                      v37 = v45;
                      v40 = v49;
                      v39 = v50;
                      v27 = v46;
                      v42 = v51;
                    }

                    *(v27 + 2) = v38;
                    v43 = &v27[40 * v37];
                    *(v43 + 4) = v42;
                    *(v43 + 5) = v35;
                    *(v43 + 6) = v41;
                    *(v43 + 7) = v40;
                    v43[64] = v39;
                  }

                  while (v31 - 1 != v33);
                }

                else
                {
                  v27 = MEMORY[0x1E69E7CC0];
                }

LABEL_52:

                v7 = v54;
                v12 = v52;
                v11 = v53;
                goto LABEL_34;
              }

LABEL_33:
              v27 = 0;
LABEL_34:
              retstr->value.identifier._countAndFlagsBits = v6;
              retstr->value.identifier._object = v7;
              retstr->value.title.value._countAndFlagsBits = v11;
              retstr->value.title.value._object = v12;
              retstr->value.message.value._countAndFlagsBits = v25;
              retstr->value.message.value._object = v26;
              retstr->value.actions.value._rawValue = v27;
              return;
            }

LABEL_32:

            goto LABEL_33;
          }

          v11 = 0;
          v12 = 0;
          if (*(dictionary._rawValue + 2))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v12 = 0;
          v11 = 0;
        }

LABEL_31:
        v26 = 0;
        v25 = 0;
        goto LABEL_32;
      }
    }
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v13 = sub_1D725C42C();
  __swift_project_value_buffer(v13, qword_1EDFFCFA8);

  v14 = sub_1D725C3FC();
  v15 = sub_1D7262EBC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v55 = v17;
    *v16 = 136315138;
    v18 = sub_1D7261D4C();
    v20 = v19;

    v21 = sub_1D5BC5100(v18, v20, v55);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1D5B42000, v14, v15, "Failed parsing PuzzleAlertConfiguration. Invalid identifier: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1DA6FD500](v17, -1, -1);
    MEMORY[0x1DA6FD500](v16, -1, -1);
  }

  else
  {
  }

  retstr->value.actions.value._rawValue = 0;
  retstr->value.title = 0u;
  retstr->value.message = 0u;
  retstr->value.identifier = 0u;
}

void __swiftcall PuzzleAlertAction.init(dictionary:)(NewsFeed::PuzzleAlertAction_optional *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  if (*(dictionary._rawValue + 2))
  {
    v4 = sub_1D5B69D90(25705, 0xE200000000000000);
    if (v5)
    {
      sub_1D5B76B10(*(dictionary._rawValue + 7) + 32 * v4, v26);
      if (swift_dynamicCast())
      {
        if (*(dictionary._rawValue + 2))
        {
          v6 = sub_1D5B69D90(0x656C746974, 0xE500000000000000);
          if (v7)
          {
            sub_1D5B76B10(*(dictionary._rawValue + 7) + 32 * v6, v26);
            v8 = swift_dynamicCast();
            if (v8)
            {
              v9 = v24;
            }

            else
            {
              v9 = 0;
            }

            if (v8)
            {
              v10 = v25;
            }

            else
            {
              v10 = 0;
            }

            if (!*(dictionary._rawValue + 2))
            {
              goto LABEL_27;
            }
          }

          else
          {
            v9 = 0;
            v10 = 0;
            if (!*(dictionary._rawValue + 2))
            {
              goto LABEL_27;
            }
          }

          v20 = sub_1D5B69D90(0x656C797473, 0xE500000000000000);
          if (v21)
          {
            sub_1D5B76B10(*(dictionary._rawValue + 7) + 32 * v20, v26);

            if (swift_dynamicCast())
            {
              v22 = sub_1D72641CC();

              v23 = v22 == 1;
              if (v22 == 2)
              {
                v23 = NewsFeed_PuzzleAlertAction_Style_destructive;
              }

              goto LABEL_29;
            }

LABEL_28:
            v23 = NewsFeed_PuzzleAlertAction_Style_default;
LABEL_29:
            retstr->value.identifier._countAndFlagsBits = v24;
            retstr->value.identifier._object = v25;
            retstr->value.title.value._countAndFlagsBits = v9;
            retstr->value.title.value._object = v10;
            retstr->value.style = v23;
            return;
          }
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

LABEL_27:

        goto LABEL_28;
      }
    }
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v11 = sub_1D725C42C();
  __swift_project_value_buffer(v11, qword_1EDFFCFA8);

  v12 = sub_1D725C3FC();
  v13 = sub_1D7262EBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315138;
    v16 = sub_1D7261D4C();
    v18 = v17;

    v19 = sub_1D5BC5100(v16, v18, v26);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D5B42000, v12, v13, "Failed parsing PuzzleAlertAction. Invalid identifier: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA6FD500](v15, -1, -1);
    MEMORY[0x1DA6FD500](v14, -1, -1);
  }

  else
  {
  }

  retstr->value.style = NewsFeed_PuzzleAlertAction_Style_default;
  retstr->value.identifier = 0u;
  retstr->value.title = 0u;
}

uint64_t sub_1D70DA348()
{
  v1 = 0x696669746E656469;
  v2 = 0x6567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0x736E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1D70DA3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70DBC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70DA3EC(uint64_t a1)
{
  v2 = sub_1D70DB550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70DA428(uint64_t a1)
{
  v2 = sub_1D70DB550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAlertConfiguration.encode(to:)(void *a1)
{
  sub_1D70DB7B0(0, &qword_1EC89A5C8, sub_1D70DB550, &type metadata for PuzzleAlertConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - v6;
  v8 = v1[2];
  v21 = v1[3];
  v22 = v8;
  v9 = v1[4];
  v19 = v1[5];
  v20 = v9;
  v18 = v1[6];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1D70DB550();
  sub_1D7264B5C();
  v28 = 0;
  v14 = v23;
  sub_1D72643FC();
  if (!v14)
  {
    v15 = v18;
    v27 = 1;
    sub_1D726437C();
    v26 = 2;
    sub_1D726437C();
    v24 = v15;
    v25 = 3;
    sub_1D70DB5A4();
    sub_1D70DB648(&qword_1EC89A5E0, sub_1D70DB5F4);
    sub_1D72643BC();
  }

  return (*(v4 + 8))(v7, v13);
}

uint64_t PuzzleAlertConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D70DB7B0(0, &qword_1EC89A5F0, sub_1D70DB550, &type metadata for PuzzleAlertConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70DB550();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v31 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v30 = 1;
  v14 = sub_1D726422C();
  v25 = v15;
  v23 = v14;
  v29 = 2;
  v22 = sub_1D726422C();
  v24 = v16;
  sub_1D70DB5A4();
  v28 = 3;
  sub_1D70DB648(&qword_1EC89A5F8, sub_1D70DB6B4);
  sub_1D726427C();
  (*(v10 + 8))(v9, v26);
  v18 = v27;
  *a2 = v11;
  a2[1] = v13;
  v19 = v22;
  v21 = v24;
  v20 = v25;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v21;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

NewsFeed::PuzzleAlertAction::Style_optional __swiftcall PuzzleAlertAction.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleAlertAction.Style.rawValue.getter()
{
  v1 = 0x6C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x7463757274736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D70DAB10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6C65636E6163;
  if (v2 != 1)
  {
    v4 = 0x7463757274736564;
    v3 = 0xEB00000000657669;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (*a2 != 1)
  {
    v8 = 0x7463757274736564;
    v7 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D70DAC1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70DACC4()
{
  sub_1D72621EC();
}

uint64_t sub_1D70DAD58()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70DAE08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (v2 != 1)
  {
    v5 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PuzzleAlertAction.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAlertAction.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D70DAF88()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C797473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D70DAFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70DBB24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70DB008(uint64_t a1)
{
  v2 = sub_1D70DB708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70DB044(uint64_t a1)
{
  v2 = sub_1D70DB708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAlertAction.encode(to:)(void *a1)
{
  sub_1D70DB7B0(0, &qword_1EC89A608, sub_1D70DB708, &type metadata for PuzzleAlertAction.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = *(v1 + 16);
  v13[1] = *(v1 + 24);
  v13[2] = v9;
  v14 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70DB708();
  sub_1D7264B5C();
  v18 = 0;
  v10 = v13[3];
  sub_1D72643FC();
  if (!v10)
  {
    v11 = v14;
    v17 = 1;
    sub_1D726437C();
    v16 = v11;
    v15 = 2;
    sub_1D70DB75C();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleAlertAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D70DB7B0(0, &qword_1EC89A620, sub_1D70DB708, &type metadata for PuzzleAlertAction.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70DB708();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v22;
  v26 = 0;
  v12 = sub_1D72642BC();
  v14 = v13;
  v21 = v12;
  v25 = 1;
  v19 = sub_1D726422C();
  v20 = v15;
  v23 = 2;
  sub_1D70DB818();
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v16 = v24;
  v17 = v20;
  *v11 = v21;
  *(v11 + 8) = v14;
  *(v11 + 16) = v19;
  *(v11 + 24) = v17;
  *(v11 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D70DB550()
{
  result = qword_1EC89A5D0;
  if (!qword_1EC89A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A5D0);
  }

  return result;
}

void sub_1D70DB5A4()
{
  if (!qword_1EC89A5D8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89A5D8);
    }
  }
}

unint64_t sub_1D70DB5F4()
{
  result = qword_1EC89A5E8;
  if (!qword_1EC89A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A5E8);
  }

  return result;
}

uint64_t sub_1D70DB648(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D70DB5A4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70DB6B4()
{
  result = qword_1EC89A600;
  if (!qword_1EC89A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A600);
  }

  return result;
}

unint64_t sub_1D70DB708()
{
  result = qword_1EC89A610;
  if (!qword_1EC89A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A610);
  }

  return result;
}

unint64_t sub_1D70DB75C()
{
  result = qword_1EC89A618;
  if (!qword_1EC89A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A618);
  }

  return result;
}

void sub_1D70DB7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D70DB818()
{
  result = qword_1EC89A628;
  if (!qword_1EC89A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A628);
  }

  return result;
}

unint64_t sub_1D70DB870()
{
  result = qword_1EC89A630;
  if (!qword_1EC89A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A630);
  }

  return result;
}

unint64_t sub_1D70DB918()
{
  result = qword_1EC89A638;
  if (!qword_1EC89A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A638);
  }

  return result;
}

unint64_t sub_1D70DB970()
{
  result = qword_1EC89A640;
  if (!qword_1EC89A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A640);
  }

  return result;
}

unint64_t sub_1D70DB9C8()
{
  result = qword_1EC89A648;
  if (!qword_1EC89A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A648);
  }

  return result;
}

unint64_t sub_1D70DBA20()
{
  result = qword_1EC89A650;
  if (!qword_1EC89A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A650);
  }

  return result;
}

unint64_t sub_1D70DBA78()
{
  result = qword_1EC89A658;
  if (!qword_1EC89A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A658);
  }

  return result;
}

unint64_t sub_1D70DBAD0()
{
  result = qword_1EC89A660;
  if (!qword_1EC89A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A660);
  }

  return result;
}

uint64_t sub_1D70DBB24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}