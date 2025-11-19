unint64_t sub_1D6E28148()
{
  result = qword_1EC896C38;
  if (!qword_1EC896C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896C38);
  }

  return result;
}

uint64_t EmptyViewSupplementaryLayoutAttributes.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed38EmptyViewSupplementaryLayoutAttributes_kind;
  v4 = sub_1D725EF8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double *EmptyViewSupplementaryLayoutAttributes.__allocating_init(kind:frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8NewsFeed38EmptyViewSupplementaryLayoutAttributes_kind;
  v12 = sub_1D725EF8C();
  (*(*(v12 - 8) + 32))(v10 + v11, a1, v12);
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  return v10;
}

double *EmptyViewSupplementaryLayoutAttributes.init(kind:frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC8NewsFeed38EmptyViewSupplementaryLayoutAttributes_kind;
  v12 = sub_1D725EF8C();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a5;
  return v5;
}

uint64_t EmptyViewSupplementaryLayoutAttributes.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38EmptyViewSupplementaryLayoutAttributes_kind;
  v2 = sub_1D725EF8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t EmptyViewSupplementaryLayoutAttributes.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38EmptyViewSupplementaryLayoutAttributes_kind;
  v2 = sub_1D725EF8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyViewSupplementaryLayoutAttributes()
{
  result = qword_1EDF1CBF8;
  if (!qword_1EDF1CBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6E284E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8NewsFeed38EmptyViewSupplementaryLayoutAttributes_kind;
  v5 = sub_1D725EF8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D6E28594(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyViewSupplementaryLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6E285D8(uint64_t a1)
{
  v2 = sub_1D6E28594(qword_1EDF1CC10);

  return MEMORY[0x1EEE47CC8](a1, v2);
}

unint64_t sub_1D6E28690(void *a1)
{
  a1[1] = sub_1D5C60480();
  a1[2] = sub_1D669F8BC();
  result = sub_1D6E286C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E286C8()
{
  result = qword_1EC896C40;
  if (!qword_1EC896C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896C40);
  }

  return result;
}

unint64_t sub_1D6E2871C(uint64_t a1)
{
  result = sub_1D6E28744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E28744()
{
  result = qword_1EC896C48;
  if (!qword_1EC896C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896C48);
  }

  return result;
}

uint64_t sub_1D6E28798()
{
  v0 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = sub_1D726307C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5B5DA7C();
  sub_1D7261B1C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8098], v2);
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B71058(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  sub_1D5B631E8(0);
  sub_1D5B71058(&qword_1EDF1AE80, sub_1D5B631E8);
  sub_1D7263B6C();
  result = sub_1D72630BC();
  qword_1EDFFC530 = result;
  return result;
}

__n128 FormatGroupLayoutFactoryModel.init(inventory:annotator:subgroupNeighbor:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  v4 = a2[1];
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  result = *a3;
  *(a4 + 40) = *a3;
  return result;
}

uint64_t sub_1D6E28A38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3D828);
  result = sub_1D725AACC();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B5534C(0, &unk_1EDF1A800);
    result = sub_1D725AABC();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for IssueService();
      v7 = swift_allocObject();
      result = sub_1D5B63F14(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = v6;
      a2[4] = &protocol witness table for IssueService;
      *a2 = v7;
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

uint64_t sub_1D6E28B44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF1AAA0);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    OperationFactory = type metadata accessor for IssuesFetchOperationFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = OperationFactory;
    a2[4] = &off_1F51D93F0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E28BDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB00);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ResourceService();
    result = swift_allocObject();
    *(result + 24) = 2;
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &protocol witness table for ResourceService;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E28C7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D5B68374(a1, v12);
  v6 = swift_allocObject();
  sub_1D5B63F14(v12, v6 + 16);
  sub_1D7261CDC();
  swift_allocObject();
  v7 = sub_1D7261CCC();
  v8 = type metadata accessor for WeatherKitService();
  v9 = swift_allocObject();
  if (qword_1EDF18798 != -1)
  {
    swift_once();
  }

  sub_1D6ACD510();
  swift_allocObject();

  v9[4] = sub_1D725977C();
  sub_1D725A91C();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D6E2CE54;
  *(v10 + 24) = v6;
  sub_1D5B510A8(0, &qword_1EDF17AF8, MEMORY[0x1E6984BE8], MEMORY[0x1E69D6A80]);
  swift_allocObject();
  result = sub_1D725B7AC();
  v9[2] = result;
  v9[3] = v7;
  a2[3] = v8;
  a2[4] = &protocol witness table for WeatherKitService;
  *a2 = v9;
  return result;
}

uint64_t sub_1D6E28E88(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7258ECC();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E28F24@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubOfflineProvider();
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[3] = v2;
  a1[4] = &protocol witness table for StubOfflineProvider;
  *a1 = result;
  return result;
}

void *sub_1D6E28F70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3D240);
  result = sub_1D725AACC();
  if (!v74)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB00);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = [result networkBehaviorMonitor];

  v7 = [objc_allocWithZone(MEMORY[0x1E69B5280]) initWithNetworkBehaviorMonitor_];
  result = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FFA0);
  result = sub_1D725AACC();
  if (!v71)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF43AA0);
  result = sub_1D725AA8C();
  if (!v69)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = type metadata accessor for SportsDataServiceRequestFetcher();
  v9 = swift_allocObject();
  v10 = sub_1D5B6FA40(v7, v70, &v68, v9);
  v71 = v8;
  v72 = &off_1F51903B8;
  v70[0] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF412B0);
  result = sub_1D725AACC();
  if (!v69)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D4F8);
  result = sub_1D725AACC();
  if (!v67)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = result;
  v47 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EB48);
  result = sub_1D725AACC();
  if (v65)
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v45[5] = v45;
    MEMORY[0x1EEE9AC00](v11, v11);
    v13 = (v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v45[4] = v45;
    MEMORY[0x1EEE9AC00](v15, v15);
    v17 = (v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v45[3] = v45;
    MEMORY[0x1EEE9AC00](v19, v19);
    v21 = (v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v13;
    v24 = *v17;
    v25 = *v21;
    v26 = type metadata accessor for SportsDataServiceRequestBuilder();
    v63[3] = v26;
    v63[4] = &off_1F5126AA8;
    v62 = &off_1F51903B8;
    v63[0] = v23;
    v61 = v8;
    v60[0] = v24;
    v27 = type metadata accessor for SportsDataConfigurationManager();
    v58 = v27;
    v59 = &off_1F519B218;
    v57[0] = v25;
    type metadata accessor for SportsDataService();
    v28 = swift_allocObject();
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v63, v26);
    v45[2] = v45;
    MEMORY[0x1EEE9AC00](v29, v29);
    v31 = (v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    v45[1] = v45;
    MEMORY[0x1EEE9AC00](v33, v33);
    v35 = (v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    MEMORY[0x1EEE9AC00](v37, v37);
    v39 = (v45 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    v41 = *v31;
    v42 = *v35;
    v43 = *v39;
    v55 = v26;
    v56 = &off_1F5126AA8;
    *&v54 = v41;
    v52 = v8;
    v53 = &off_1F51903B8;
    *&v51 = v42;
    v49 = v27;
    v50 = &off_1F519B218;
    *&v48 = v43;
    sub_1D5B708CC();
    swift_allocObject();
    v28[28] = sub_1D725B83C();
    sub_1D5B6ADD8();
    swift_allocObject();
    v28[29] = sub_1D725B83C();
    sub_1D5B63F14(&v54, (v28 + 2));
    sub_1D5B63F14(&v68, (v28 + 12));
    sub_1D5B63F14(&v51, (v28 + 7));
    sub_1D5B63F14(&v48, (v28 + 17));
    v28[22] = v46;
    sub_1D5B63F14(&v64, (v28 + 23));
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
    result = __swift_destroy_boxed_opaque_existential_1(v73);
    v44 = v47;
    *v47 = v28;
    v44[1] = &off_1F5199C90;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D6E2980C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SportsDataServiceEndpoint();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v32[3] = v6;
    v32[4] = &off_1F5199568;
    v32[0] = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_1D725AABC();
    if (result)
    {
      v8 = result;
      v9 = type metadata accessor for SportsDataServiceResource();
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v6);
      v27 = &v27;
      v12 = *(v6 - 8);
      v13 = *(v12 + 64);
      MEMORY[0x1EEE9AC00](v11, v11);
      v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
      v15 = *(v12 + 16);
      v15(&v28[-1] - v14);
      v16 = *(&v28[-1] - v14);
      v31[3] = v6;
      v31[4] = &off_1F5199568;
      v31[0] = v16;
      v29 = v9;
      v30 = &off_1F51C34C0;
      v28[0] = v10;
      v17 = type metadata accessor for SportsDataServiceRequestBuilder();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v31, v6);
      MEMORY[0x1EEE9AC00](v19, v19);
      v20 = (&v28[-1] - v14);
      v15(&v28[-1] - v14);
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      MEMORY[0x1EEE9AC00](v21, v21);
      v23 = (&v28[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v24 + 16))(v23);
      v25 = *v20;
      v26 = *v23;
      v18[5] = v6;
      v18[6] = &off_1F5199568;
      v18[2] = v25;
      v18[10] = v9;
      v18[11] = &off_1F51C34C0;
      v18[7] = v26;
      __swift_destroy_boxed_opaque_existential_1(v28);
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v32);
      a2[3] = v17;
      a2[4] = &off_1F5126AA8;
      *a2 = v18;
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

uint64_t sub_1D6E29B40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D726307C();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v27 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v26, v10);
  v11 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v31 = sub_1D725AA5C();
  v13 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF43AA0);
  result = sub_1D725AA8C();
  if (v36)
  {
    v25[1] = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_1D725AA8C();
    if (v34)
    {
      v18 = *MEMORY[0x1E69D6490];
      v19 = *(v13 + 104);
      v25[0] = v16;
      v19(v16, v18, v31);
      v20 = type metadata accessor for WebEmbedDataVisualizationDataService(0);
      v21 = swift_allocObject();
      v22 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_networkQueue;
      sub_1D5B5A498(0, &qword_1EDF1AA30);
      sub_1D7261AFC();
      v32 = MEMORY[0x1E69E7CC0];
      sub_1D5B5E110(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
      sub_1D5B631E8(0);
      sub_1D5B5E110(&qword_1EDF1AE80, sub_1D5B631E8);
      sub_1D7263B6C();
      (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
      *(v21 + v22) = sub_1D72630BC();
      *(v21 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lastFailedResponses) = MEMORY[0x1E69E7CC8];
      v23 = OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_lock;
      sub_1D725A78C();
      sub_1D725A7BC();
      swift_allocObject();
      *(v21 + v23) = sub_1D725A7AC();
      sub_1D5B63F14(&v35, v21 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_sportsTokenManager);
      sub_1D5B63F14(&v33, v21 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_genericTokenManager);
      result = (*(v13 + 32))(v21 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_networkProxy, v25[0], v31);
      *(v21 + OBJC_IVAR____TtC8NewsFeed36WebEmbedDataVisualizationDataService_defaultMaxAge) = 60;
      v24 = v30;
      v30[3] = v20;
      v24[4] = &off_1F5123178;
      *v24 = v21;
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

uint64_t sub_1D6E2A03C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF3FFA0);
    result = sub_1D725AACC();
    if (v9)
    {
      v6 = type metadata accessor for SportsDataConfigurationService();
      v7 = swift_allocObject();
      sub_1D725A6CC();
      swift_allocObject();
      *(v7 + 64) = sub_1D725A6BC();
      *(v7 + 16) = v5;
      result = sub_1D5B63F14(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F5126A08;
      *a2 = v7;
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

uint64_t sub_1D6E2A184@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1D5B5A498(0, a2);
  result = sub_1D725AABC();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E2A210@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D725AA5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    sub_1D5B510A8(0, &unk_1EDF3B8C0, sub_1D5B4D3E0, MEMORY[0x1E69D6B80]);
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1D725BE0C();
    (*(v5 + 104))(v8, *MEMORY[0x1E69D6490], v4);
    v10 = [objc_allocWithZone(MEMORY[0x1E69B53A8]) init];
    v16[8] = sub_1D5B5A498(0, &qword_1EDF1AA60);
    v16[9] = sub_1D5B5F600();
    v16[5] = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = type metadata accessor for NetworkEventHandler();
    result = sub_1D725AA7C();
    if (result)
    {
      v12 = result;
      v16[3] = v11;
      v16[4] = sub_1D5B5E110(qword_1EDF2B8F0, type metadata accessor for NetworkEventHandler);
      v16[0] = v12;
      v13 = sub_1D725AFEC();
      swift_allocObject();

      v14 = sub_1D725AFDC();
      v15 = MEMORY[0x1E69D6580];
      a2[3] = v13;
      a2[4] = v15;
      swift_unknownObjectRelease();

      *a2 = v14;
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

uint64_t sub_1D6E2A4F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0();
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() authTokenBaseURLForConfiguration_];
  if (v12)
  {
    v13 = v12;
    sub_1D72584EC();

    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  }

  else
  {
    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1D5EB8540(v8, v11);
  sub_1D72585BC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    swift_unknownObjectRelease();
    sub_1D5E3E404(v11);
    v16 = 1;
  }

  else
  {
    sub_1D725849C();
    swift_unknownObjectRelease();
    (*(v15 + 8))(v11, v14);
    v16 = 0;
  }

  return (*(v15 + 56))(a2, v16, 1, v14);
}

uint64_t sub_1D6E2A740()
{
  v0 = type metadata accessor for FormatPictureInPictureModel();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D72585BC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1D5B510A8(0, &qword_1EDF43AC0, type metadata accessor for FormatPictureInPictureModel, MEMORY[0x1E69D6538]);
  swift_allocObject();
  return sub_1D725ADBC();
}

uint64_t sub_1D6E2A834@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A9E0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A880);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FFA0);
  result = sub_1D725AACC();
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FCF8);
  result = sub_1D725AACC();
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for PuzzleService();
    v11 = swift_allocObject();
    v11[2] = 0x73656C7A7A7570;
    v11[3] = 0xE700000000000000;
    v11[4] = 3421794;
    v11[5] = 0xE300000000000000;
    v11[6] = 0x726F7773736F7263;
    v11[7] = 0xE900000000000064;
    sub_1D5B510A8(0, &unk_1EDF19B40, MEMORY[0x1E69D6388], MEMORY[0x1E69E6F90]);
    *(swift_allocObject() + 16) = xmmword_1D7273AE0;
    sub_1D725A78C();
    sub_1D5B5E110(&qword_1EDF3BDF0, MEMORY[0x1E69D6388]);
    sub_1D5B6BD6C(0);
    sub_1D5B5E110(&qword_1EDF1B5C0, sub_1D5B6BD6C);
    sub_1D7263B6C();
    sub_1D725A7BC();
    swift_allocObject();
    v12 = sub_1D725A7AC();
    v13 = MEMORY[0x1E69E7CC8];
    v11[21] = v12;
    v11[22] = v13;
    v11[23] = v13;
    v11[8] = v7;
    v11[9] = v8;
    sub_1D5B63F14(&v16, (v11 + 10));
    result = sub_1D5B63F14(&v14, (v11 + 15));
    v11[20] = v9;
    a2[3] = v10;
    a2[4] = &protocol witness table for PuzzleService;
    *a2 = v11;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D6E2AC38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5B510A8(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14[-v6 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF40590);
  result = sub_1D725AACC();
  if (v15)
  {
    v9 = type metadata accessor for LatestPuzzleProvider();
    v10 = swift_allocObject();
    sub_1D5B68374(v14, v10 + 16);
    sub_1D7258CBC();
    v11 = sub_1D7258CFC();
    v12 = *(v11 - 8);
    result = (*(v12 + 48))(v7, 1, v11);
    if (result != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = (*(v12 + 32))(v10 + OBJC_IVAR____TtC8NewsFeed20LatestPuzzleProvider_timeZone, v7, v11);
      a2[3] = v9;
      a2[4] = &off_1F5190828;
      *a2 = v10;
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

uint64_t sub_1D6E2AE0C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1AAC0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF40590);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for PuzzleHistoryService();
    v8 = objc_allocWithZone(v7);
    v9 = sub_1D5B6BDA0(v5, v10, v6);

    result = swift_unknownObjectRelease();
    a2[3] = v7;
    a2[4] = &off_1F51D54E8;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D6E2AF68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF439D0);
  result = sub_1D725AACC();
  if (!v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF40590);
  result = sub_1D725AACC();
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF3C6F0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  if (v13)
  {
    v7 = type metadata accessor for PuzzleGameCenterService();
    v8 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v8 + 288) = 0;
    *(v8 + 296) = 1;
    v9 = MEMORY[0x1E69E7CC0];
    *(v8 + 304) = MEMORY[0x1E69E7CC8];
    *(v8 + 312) = v9;
    sub_1D5B68374(v18, v8 + 160);
    *(v8 + 112) = v5;
    sub_1D5B68374(v16, v8 + 200);
    sub_1D5B68374(v14, v8 + 240);
    *(v8 + 280) = v6;
    sub_1D5B68374(v12, v8 + 120);
    v11.receiver = v8;
    v11.super_class = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = objc_msgSendSuper2(&v11, sel_init);
    [v6 addObserver_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = sub_1D5B5E110(&qword_1EDF26B70, type metadata accessor for PuzzleGameCenterService);
    *a2 = v10;
    a2[1] = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D6E2B2A0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF3BAC8);
  result = sub_1D725AACC();
  if (v4)
  {
    sub_1D5B63F14(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1D725B54C();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E2B370(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF3E810);
  result = sub_1D725AACC();
  if (v4)
  {
    sub_1D725B6FC();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E2B438@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  v4 = v14;
  if (v14)
  {
    v5 = type metadata accessor for PuzzleStatsProcessor();
    v6 = v15;
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x1EEE9AC00](v7, v7);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9);
    v11 = sub_1D5B6D8EC(v9, v5, v4, *(v6 + 8));
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    a2[3] = v5;
    a2[4] = &off_1F51D56D0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E2B598@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5B510A8(0, &unk_1EDF3B828, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for PuzzleStatsStateStore();
  v7 = swift_allocObject();
  v8 = sub_1D725C42C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1D5B6A61C();
  swift_allocObject();
  result = sub_1D725B11C();
  *(v7 + 16) = result;
  a1[3] = v6;
  a1[4] = &off_1F519B780;
  *a1 = v7;
  return result;
}

uint64_t sub_1D6E2B6FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  if (!v45)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF40590);
  result = sub_1D725AACC();
  if (!v43)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3E810);
  result = sub_1D725AACC();
  v6 = v40;
  if (!v40)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EE18);
  result = sub_1D725AACC();
  if (!v39)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EB50);
  result = sub_1D725AACC();
  if (!v37[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AC30);
  result = sub_1D725AABC();
  if (result)
  {
    v8 = result;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v31 = v28;
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for PuzzleStatsProcessor();
    v36[3] = v14;
    v36[4] = &off_1F51D56D0;
    v36[0] = v13;
    v15 = type metadata accessor for PuzzleStatsService();
    v29 = v15;
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v36, v14);
    v30 = v28;
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v35[3] = v14;
    v35[4] = &off_1F51D56D0;
    v35[0] = v21;
    swift_defaultActor_initialize();
    *(v16 + 304) = 0;
    *(v16 + 312) = 2048;
    *(v16 + 152) = v5;
    sub_1D5B68374(v44, v16 + 112);
    sub_1D5B68374(v42, v16 + 160);
    *(v16 + 240) = v6;
    *(v16 + 248) = v7;
    sub_1D5B68374(v35, v16 + 200);
    sub_1D5B68374(v37, v16 + 256);
    *(v16 + 296) = v8;
    v34.receiver = v16;
    v34.super_class = v15;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22 = v8;
    v23 = objc_msgSendSuper2(&v34, sel_init);
    v28[1] = v5;
    v24 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v25 = *(v24 + 88);
    v26 = v23;
    v25(v33);
    __swift_destroy_boxed_opaque_existential_1(v33);
    [v22 addObserver_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v36);
    result = __swift_destroy_boxed_opaque_existential_1(v38);
    v27 = v32;
    v32[3] = v29;
    v27[4] = &off_1F512D1F0;
    *v27 = v26;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D6E2BC54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3F7E8);
  result = sub_1D725AACC();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3F7F0);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3D130);
  result = sub_1D725AACC();
  if (v8)
  {
    v5 = type metadata accessor for PuzzleImageShareAttributeProvider();
    v6 = swift_allocObject();
    *(v6 + 176) = 0;
    sub_1D5B63F14(&v13, v6 + 16);
    sub_1D5B63F14(&v11, v6 + 56);
    sub_1D5B63F14(&v9, v6 + 96);
    result = sub_1D5B63F14(&v7, v6 + 136);
    a2[3] = v5;
    a2[4] = &off_1F51B5EB0;
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1D6E2BE2C(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10);
  v4 = sub_1D725AABC();
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB00);
  v6 = sub_1D725AABC();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 recipeAccessChecker];

  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF1AAA0);
  v9 = sub_1D725AABC();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1AAB0);
  v11 = sub_1D725AABC();
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for RecipeService();
    v14 = swift_allocObject();
    v14[2] = v5;
    v14[3] = v8;
    v14[4] = v10;
    v14[5] = v12;
    a2[3] = v13;
    a2[4] = &protocol witness table for RecipeService;
    *a2 = v14;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1D6E2BFD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedClusteringService();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF35540);
  result = sub_1D725AACC();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF40588);
  result = sub_1D725AACC();
  if (v6)
  {
    type metadata accessor for FeedRecipeClusteringService();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    sub_1D5B63F14(&v7, v4 + 24);
    sub_1D5B63F14(&v5, v4 + 64);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D6E2C13C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB00);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A978);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF045A0);
  result = sub_1D725AABC();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for TagFeedHeadlineService();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    a2[3] = v8;
    a2[4] = &off_1F51DD1A8;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D6E2C27C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AC30);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for FeedUserInfo();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &protocol witness table for FeedUserInfo;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E2C314(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5534C(0, &unk_1EDF1AAA0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  v5 = type metadata accessor for HeadlineReferenceService();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v41 = v5;
  v42 = sub_1D5B5E110(&qword_1EDF0CD68, type metadata accessor for HeadlineReferenceService);
  *&v40 = v6;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  v8 = type metadata accessor for IssueReferenceService();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v41 = v8;
  v42 = sub_1D5B5E110(&qword_1EDF0DE00, type metadata accessor for IssueReferenceService);
  *&v40 = v9;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &unk_1EDF1AAB0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = result;
  v11 = type metadata accessor for TagReferenceService();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v41 = v11;
  v42 = sub_1D5B5E110(&qword_1EDF0F610, type metadata accessor for TagReferenceService);
  *&v40 = v12;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = result;
  v14 = type metadata accessor for AssetReferenceService();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v41 = v14;
  v42 = sub_1D5B5E110(&qword_1EDF0E790, type metadata accessor for AssetReferenceService);
  *&v40 = v15;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = result;
  v17 = type metadata accessor for AssetManagerReferenceService();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v41 = v17;
  v42 = sub_1D5B5E110(&qword_1EDF0AC98, type metadata accessor for AssetManagerReferenceService);
  *&v40 = v18;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &unk_1EDF1A820);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = result;
  v20 = type metadata accessor for SubscriptionReferenceService();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v41 = v20;
  v42 = sub_1D5B5E110(qword_1EDF0A608, type metadata accessor for SubscriptionReferenceService);
  *&v40 = v21;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB00);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = result;
  v23 = type metadata accessor for CloudContextReferenceService();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v41 = v23;
  v42 = sub_1D5B5E110(&qword_1EDF0ABC8, type metadata accessor for CloudContextReferenceService);
  *&v40 = v24;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, qword_1EDF42C90);
  result = sub_1D725AACC();
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = type metadata accessor for FeedWeatherReferenceService();
  v26 = swift_allocObject();
  sub_1D5B63F14(&v40, v26 + 16);
  v41 = v25;
  v42 = sub_1D5B5E110(qword_1EDF136D0, type metadata accessor for FeedWeatherReferenceService);
  *&v40 = v26;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &qword_1EDF1AC30);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = result;
  v28 = type metadata accessor for UserInfoReferenceService();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  v41 = v28;
  v42 = sub_1D5B5E110(qword_1EDF0C990, type metadata accessor for UserInfoReferenceService);
  *&v40 = v29;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF40590);
  result = sub_1D725AACC();
  if (!v41)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = type metadata accessor for PuzzleReferenceService();
  v31 = swift_allocObject();
  sub_1D5B63F14(&v40, v31 + 16);
  v41 = v30;
  v42 = sub_1D5B5E110(&qword_1EDF0D8E8, type metadata accessor for PuzzleReferenceService);
  *&v40 = v31;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1D725AACC();
  if (!v41)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = type metadata accessor for PuzzleTypeReferenceService();
  v33 = swift_allocObject();
  sub_1D5B63F14(&v40, v33 + 16);
  v41 = v32;
  v42 = sub_1D5B5E110(qword_1EDF0B380, type metadata accessor for PuzzleTypeReferenceService);
  *&v40 = v33;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF42820);
  result = sub_1D725AACC();
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF412B0);
  result = sub_1D725AACC();
  if (!v39)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = type metadata accessor for FeedSponsorshipAdReferenceService();
  v35 = swift_allocObject();
  sub_1D5B63F14(&v40, v35 + 16);
  sub_1D5B63F14(&v38, v35 + 56);
  v41 = v34;
  v42 = sub_1D5B5E110(&unk_1EDF13248, type metadata accessor for FeedSponsorshipAdReferenceService);
  *&v40 = v35;
  sub_1D725B08C();
  __swift_destroy_boxed_opaque_existential_1(&v40);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF40588);
  result = sub_1D725AACC();
  if (v41)
  {
    v36 = type metadata accessor for RecipeReferenceService();
    v37 = swift_allocObject();
    sub_1D5B63F14(&v40, v37 + 16);
    v41 = v36;
    v42 = sub_1D5B5E110(qword_1EDF0D840, type metadata accessor for RecipeReferenceService);
    *&v40 = v37;
    sub_1D725B08C();
    return __swift_destroy_boxed_opaque_existential_1(&v40);
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D6E2CD54()
{
  type metadata accessor for NetworkEventHandler();
  sub_1D725B52C();
}

uint64_t sub_1D6E2CDC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A838);
  result = sub_1D725AABC();
  if (result)
  {
    v2 = result;
    type metadata accessor for NetworkEventHandler();
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = 24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E2CE64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6E2CED8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6E2CF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D725B31C();

  if (!*(v12 + 16))
  {
    goto LABEL_5;
  }

  v5 = *(*(a1 + 40) + 16);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  v8 = sub_1D5B69D90(v7, v6);
  if ((v9 & 1) == 0)
  {

LABEL_5:

    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v12 + 56) + 8 * v8);

LABEL_6:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D72600DC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  sub_1D6E8CFA0(a3, v10);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6E2D110()
{

  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatInventoryTreePackage__accessories;
  v2 = MEMORY[0x1E695C070];
  sub_1D6E2D47C(0, &qword_1EC896C80, sub_1D6E2D3F8, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC8NewsFeed31DebugFormatInventoryTreePackage__entries;
  sub_1D6E2D47C(0, &qword_1EC896C90, sub_1D6E2D448, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatInventoryTreePackage()
{
  result = qword_1EC896C70;
  if (!qword_1EC896C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E2D2B4()
{
  sub_1D6E2D47C(319, &qword_1EC896C80, sub_1D6E2D3F8, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1D6E2D47C(319, &qword_1EC896C90, sub_1D6E2D448, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D6E2D3F8()
{
  if (!qword_1EC896C88)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896C88);
    }
  }
}

void sub_1D6E2D47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6E2D4E0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6E2D560()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6E2D5DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6E2D65C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

char *sub_1D6E2D6D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26[1] = *v2;
  sub_1D6E2D47C(0, &qword_1EC896C90, sub_1D6E2D448, MEMORY[0x1E695C070]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v26 - v10;
  v12 = OBJC_IVAR____TtC8NewsFeed31DebugFormatInventoryTreePackage__entries;
  v28 = 0;
  sub_1D6E2D448(0);
  v26[0] = v13;
  sub_1D726009C();
  (*(v8 + 32))(&v3[v12], v11, v7);
  v14 = *(a2 + 16);
  v15 = *(v14 + 24);
  *(v3 + 2) = *(v14 + 16);
  *(v3 + 3) = v15;
  *(v3 + 4) = a1;
  *(v3 + 5) = a2;

  sub_1D725B31C();

  v16 = v29;
  if (!*(v29 + 16))
  {
    goto LABEL_5;
  }

  v18 = *(v14 + 16);
  v17 = *(v14 + 24);

  v19 = sub_1D5B69D90(v18, v17);
  if ((v20 & 1) == 0)
  {

LABEL_5:

    v21 = 0;
    goto LABEL_6;
  }

  v21 = *(*(v16 + 56) + 8 * v19);

LABEL_6:
  v22 = OBJC_IVAR____TtC8NewsFeed31DebugFormatInventoryTreePackage__entries;
  swift_beginAccess();
  v23 = *(v8 + 8);

  v23(&v3[v22], v7);
  v27 = v21;
  sub_1D726009C();
  swift_endAccess();
  v24 = sub_1D6E8CFA0(a2, v21);

  swift_beginAccess();
  v27 = v24;
  sub_1D6E2D3F8();
  sub_1D726009C();
  swift_endAccess();

  sub_1D725B33C();

  sub_1D725B35C();

  return v3;
}

uint64_t static FormatCodingHeaderSupplementaryKindStrategy.shouldEncode(wrappedValue:)(_BYTE *a1)
{
  if (*a1)
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_1D6E2DA90(uint64_t a1)
{
  result = sub_1D6E2DAB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E2DAB8()
{
  result = qword_1EC896CA0;
  if (!qword_1EC896CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896CA0);
  }

  return result;
}

uint64_t sub_1D6E2DB0C(_BYTE *a1)
{
  if (*a1)
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

NewsFeed::SimulatedBundleSubscriptionDetection_optional __swiftcall SimulatedBundleSubscriptionDetection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D6E2DBB8(uint64_t a1)
{
  v2 = sub_1D6E2DEB0();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6E2DC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6E2DEB0();
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6E2DC68(uint64_t a1)
{
  v2 = sub_1D6E2DEB0();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t SimulatedBundleSubscriptionDetection.description.getter()
{
  v1 = *v0;
  v2 = 0x61206E6968746957;
  v3 = 0x6B65657720656E4FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x20746E6174736944;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x2079616420656E4FLL;
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

unint64_t sub_1D6E2DD84()
{
  result = qword_1EC896CA8;
  if (!qword_1EC896CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896CA8);
  }

  return result;
}

uint64_t sub_1D6E2DDD8()
{
  v1 = *v0;
  v2 = 0x61206E6968746957;
  v3 = 0x6B65657720656E4FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x20746E6174736944;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x2079616420656E4FLL;
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

unint64_t sub_1D6E2DEB0()
{
  result = qword_1EC896CB0;
  if (!qword_1EC896CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896CB0);
  }

  return result;
}

unint64_t sub_1D6E2DF1C()
{
  result = qword_1EC896CB8;
  if (!qword_1EC896CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896CB8);
  }

  return result;
}

uint64_t FeedGroupConfigSidecar.subtype.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedGroupConfigSidecar.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGroupConfigSidecar() + 20);

  return sub_1D6069A70(v3, a1);
}

uint64_t type metadata accessor for FeedGroupConfigSidecar()
{
  result = qword_1EDF36F10;
  if (!qword_1EDF36F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeedGroupConfigSidecar.init(subtype:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for FeedGroupConfigSidecar() + 20);

  return sub_1D5F906A0(a3, v5);
}

uint64_t sub_1D6E2E0A4()
{
  result = type metadata accessor for FormatContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6E2E134@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(a1 + 16);
  if (v5)
  {
    v36 = v3;
    v6 = (a1 + 32);

    for (i = v5 - 1; ; --i)
    {
      v9 = *v6++;
      v8 = v9;
      sub_1D6F60E58(v9, &v39);
      v43 = v39;
      v44 = v40;
      v45 = v41;
      v46 = v42;
      if (v42 >> 59 == 16)
      {
        v11 = *(&v44 + 1);
        v10 = v44;
      }

      else
      {
        v10 = *(v43 + 32);
        v11 = *(v43 + 40);
      }

      sub_1D5C8C974(&v43);
      if (v4[2])
      {
        v12 = sub_1D5B69D90(v10, v11);
        v14 = v13;

        v15 = MEMORY[0x1E69E7CC0];
        if (v14)
        {
          v15 = *(v4[7] + 8 * v12);
        }
      }

      else
      {

        v15 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D5C4BE58(0, v15[2] + 1, 1, v15);
      }

      v17 = v15[2];
      v16 = v15[3];
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1D5C4BE58((v16 > 1), v17 + 1, 1, v15);
      }

      v15[2] = v17 + 1;
      v15[v17 + 4] = v8;
      sub_1D6F60E58(v8, v37);
      v39 = v37[0];
      v40 = v37[1];
      v41 = v37[2];
      v42 = v38;
      if (v38 >> 59 == 16)
      {
        v19 = *(&v40 + 1);
        v18 = v40;
      }

      else
      {
        v18 = *(*&v37[0] + 32);
        v19 = *(*&v37[0] + 40);
      }

      sub_1D5C8C974(&v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1D5B69D90(v18, v19);
      v23 = v4[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        break;
      }

      v27 = v22;
      if (v4[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v21;
          sub_1D6D7E6B4();
          v21 = v33;
        }
      }

      else
      {
        sub_1D5C4BEC8(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1D5B69D90(v18, v19);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_35;
        }
      }

      if (v27)
      {
        v29 = v21;

        *(v4[7] + 8 * v29) = v15;

        if (!i)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v4[(v21 >> 6) + 8] |= 1 << v21;
        v30 = (v4[6] + 16 * v21);
        *v30 = v18;
        v30[1] = v19;
        *(v4[7] + 8 * v21) = v15;

        v31 = v4[2];
        v25 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v25)
        {
          goto LABEL_34;
        }

        v4[2] = v32;
        if (!i)
        {
LABEL_29:
          *a2 = v36;
          a2[1] = v4;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

NewsFeed::FormatNodeStyleCollection __swiftcall FormatNodeStyleCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D6059D04(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.styleSourcesByClass._rawValue = v4;
  result.styles._rawValue = v3;
  return result;
}

unint64_t sub_1D6E2E50C@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D6059D04(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

__n128 sub_1D6E2E540(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D5CFC228(a1, v7, *v2);
  return result;
}

uint64_t LayeredMediaViewModel.deinit()
{

  return v0;
}

uint64_t LayeredMediaViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s8NewsFeed15FormatMenuImageO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v11 = *a2;
      v12 = v3;
      sub_1D62B6FC0(v6, v5, v7);
      sub_1D62B6FC0(v3, v2, v4);
      sub_1D62B6FC0(v3, v2, v4);
      sub_1D62B6FC0(v6, v5, v7);
      v8 = static FormatSyncImageContent.== infix(_:_:)(&v12, &v11);
      goto LABEL_7;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
    sub_1D62B6FC0(*a2, a2[1], v7);
    sub_1D62B6FC0(v3, v2, v4);
    sub_1D62B6FC0(v3, v2, v4);
    sub_1D62B6FC0(v6, v5, v7);
    v8 = sub_1D6F7F39C(v3, v2, v4, v6, v5, v7);
LABEL_7:
    v9 = v8;
    sub_1D62B703C(v3, v2, v4);
    sub_1D62B703C(v6, v5, v7);
    sub_1D62B703C(v6, v5, v7);
    sub_1D62B703C(v3, v2, v4);
    return v9 & 1;
  }

  sub_1D62B6FC0(*a1, v2, v4);
  sub_1D62B6FC0(v6, v5, v7);
  sub_1D62B703C(v3, v2, v4);
  sub_1D62B703C(v6, v5, v7);
  v9 = 0;
  return v9 & 1;
}

unint64_t sub_1D6E2E814(uint64_t a1)
{
  result = sub_1D6E2E83C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E2E83C()
{
  result = qword_1EC896CC0;
  if (!qword_1EC896CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896CC0);
  }

  return result;
}

unint64_t sub_1D6E2E890(void *a1)
{
  a1[1] = sub_1D5C791D8();
  a1[2] = sub_1D66F3A48();
  result = sub_1D6E2E8C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E2E8C8()
{
  result = qword_1EC896CC8;
  if (!qword_1EC896CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896CC8);
  }

  return result;
}

void *sub_1D6E2E92C(void *result, char a2)
{
  v2 = result[2] & 0xCFFFFFFFFFFFFFF8 | ((a2 & 1) << 61);
  *result &= 0xCFFFFFFFFFFFFFF8;
  result[2] = v2;
  return result;
}

id SharingPuzzleTypeURLActivityItemSource.__allocating_init(puzzleType:linkPresentationSource:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1D6E2F0C4(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id SharingPuzzleTypeURLActivityItemSource.init(puzzleType:linkPresentationSource:)(void *a1, uint64_t a2)
{
  v2 = sub_1D6E2F0C4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

id SharingPuzzleTypeURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingPuzzleTypeURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingPuzzleTypeURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB84C0(v1 + OBJC_IVAR____TtC8NewsFeed38SharingPuzzleTypeURLActivityItemSource_puzzleTypeURL, v6);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D5E3E404(v6);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v12 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    return sub_1D5B7C390(v11, a1);
  }

  return result;
}

uint64_t SharingPuzzleTypeURLActivityItemSource.activityViewController(_:itemForActivityType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = sub_1D726207C();
    v11 = v10;
    if (v9 == sub_1D726207C() && v11 == v12)
    {

      goto LABEL_10;
    }

    v14 = sub_1D72646CC();

    if (v14)
    {
LABEL_10:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  sub_1D5EB84C0(v2 + OBJC_IVAR____TtC8NewsFeed38SharingPuzzleTypeURLActivityItemSource_puzzleTypeURL, v8);
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    result = sub_1D5E3E404(v8);
    goto LABEL_10;
  }

  *(a2 + 24) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(v17 + 32))(boxed_opaque_existential_1, v8, v16);
}

LPLinkMetadata_optional __swiftcall SharingPuzzleTypeURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed38SharingPuzzleTypeURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

id sub_1D6E2F0C4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1D5B4D3E0();
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  v12 = [objc_opt_self() nss:v11 NewsURLForPuzzleTypeID:?];

  if (v12)
  {
    sub_1D72584EC();

    v13 = sub_1D72585BC();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  sub_1D5EB8540(v10, &v2[OBJC_IVAR____TtC8NewsFeed38SharingPuzzleTypeURLActivityItemSource_puzzleTypeURL]);
  *&v2[OBJC_IVAR____TtC8NewsFeed38SharingPuzzleTypeURLActivityItemSource_linkPresentationSource] = a2;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t type metadata accessor for SharingPuzzleTypeURLActivityItemSource()
{
  result = qword_1EC896CF0;
  if (!qword_1EC896CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E2F2C4()
{
  sub_1D5B4D3E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D6E2F3F0(char a1)
{
  result = 0x6E6F6974756C6964;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x657469726F766166;
      break;
    case 4:
      result = 0x65576C61626F6C67;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      v3 = 9;
      goto LABEL_12;
    case 7:
      result = 0x46676E6964646170;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0x6573614272657375;
      break;
    case 12:
      v3 = 11;
LABEL_12:
      result = v3 | 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000020;
      break;
  }

  return result;
}

uint64_t sub_1D6E2F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6E3019C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E2F5DC(uint64_t a1)
{
  v2 = sub_1D6E2F9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E2F618(uint64_t a1)
{
  v2 = sub_1D6E2F9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedCohortConfiguration.encode(to:)(void *a1)
{
  sub_1D6E2FDA8(0, &qword_1EC896D00, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v20 - v7;
  v23 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v15 = *(v1 + 56);
  v14 = *(v1 + 64);
  v16 = *(v1 + 72);
  v21 = *(v1 + 80);
  v22 = v9;
  v17 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E2F9C0();
  sub_1D7264B5C();
  v37 = 0;
  v18 = v24;
  sub_1D726440C();
  if (!v18)
  {
    v24 = v10;
    v20[6] = v13;
    v20[7] = v11;
    v20[4] = v15;
    v20[5] = v12;
    v20[2] = v16;
    v20[3] = v14;
    v20[1] = v17;
    v36 = 1;
    sub_1D726441C();
    v35 = 2;
    sub_1D726440C();
    v34 = 3;
    sub_1D726441C();
    v33 = 4;
    sub_1D726441C();
    v32 = 5;
    sub_1D726441C();
    v31 = 6;
    sub_1D726441C();
    v30 = 7;
    sub_1D726441C();
    v29 = 8;
    sub_1D726441C();
    v28 = 9;
    sub_1D726441C();
    v27 = 10;
    sub_1D726440C();
    v26 = 11;
    sub_1D726441C();
    v25 = 12;
    sub_1D726440C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6E2F9C0()
{
  result = qword_1EC896D08;
  if (!qword_1EC896D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896D08);
  }

  return result;
}

uint64_t FeedCohortConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6E2FDA8(0, &qword_1EC896D10, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v33 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E2F9C0();
  sub_1D7264B0C();
  if (!v2)
  {
    v48 = 0;
    v11 = sub_1D72642CC();
    v47 = 1;
    sub_1D72642DC();
    v13 = v12;
    v46 = 2;
    v14 = sub_1D72642CC();
    v45 = 3;
    sub_1D72642DC();
    v16 = v15;
    v44 = 4;
    sub_1D72642DC();
    v18 = v17;
    v43 = 5;
    sub_1D72642DC();
    v20 = v19;
    v42 = 6;
    sub_1D72642DC();
    v22 = v21;
    v41 = 7;
    sub_1D72642DC();
    v25 = v24;
    v40 = 8;
    sub_1D72642DC();
    v27 = v26;
    v39 = 9;
    sub_1D72642DC();
    v29 = v28;
    v38 = 10;
    v35 = sub_1D72642CC();
    v37 = 11;
    sub_1D72642DC();
    v34 = v30;
    v36 = 12;
    v31 = sub_1D72642CC();
    HIDWORD(v33) = v11 & 1;
    v32 = v35 & 1;
    (*(v7 + 8))(v10, v6);
    *a2 = BYTE4(v33);
    *(a2 + 8) = v13;
    *(a2 + 16) = v14 & 1;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    *(a2 + 40) = v20;
    *(a2 + 48) = v22;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v29;
    *(a2 + 80) = v32;
    *(a2 + 88) = v34;
    *(a2 + 96) = v31 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6E2FDA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6E2F9C0();
    v7 = a3(a1, &type metadata for FeedCohortConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double cohortConfiguration(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 considerPublisherTopicAggregates];
  [a1 dilutionFactor];
  v26 = v5;
  v6 = [a1 enableUndampening];
  [a1 favoritedBoost];
  v8 = v7;
  [a1 globalWeight];
  v10 = v9;
  [a1 globalWeightHalfLife];
  v12 = v11;
  [a1 globalWeightInitialMultiplier];
  v14 = v13;
  [a1 paddingFactor];
  v16 = v15;
  [a1 preBaselineCurvature];
  v18 = v17;
  [a1 postBaselineCurvature];
  v20 = v19;
  v21 = [a1 undampenOnlyAboveBaselineMembership];
  [a1 userBaseline];
  v23 = v22;
  v24 = [a1 useRelativePersonalizationValue];
  *a2 = v4;
  result = v26;
  *(a2 + 8) = v26;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v18;
  *(a2 + 72) = v20;
  *(a2 + 80) = v21;
  *(a2 + 88) = v23;
  *(a2 + 96) = v24;
  return result;
}

uint64_t sub_1D6E2FFC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[97])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D6E30014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D6E30098()
{
  result = qword_1EC896D18;
  if (!qword_1EC896D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896D18);
  }

  return result;
}

unint64_t sub_1D6E300F0()
{
  result = qword_1EC896D20;
  if (!qword_1EC896D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896D20);
  }

  return result;
}

unint64_t sub_1D6E30148()
{
  result = qword_1EC896D28;
  if (!qword_1EC896D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896D28);
  }

  return result;
}

uint64_t sub_1D6E3019C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000020 && 0x80000001D73F4350 == a2;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974756C6964 && a2 == 0xEE00726F74636146 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F4380 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xEE0074736F6F4264 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65576C61626F6C67 && a2 == 0xEC00000074686769 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F43A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D73F43C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x46676E6964646170 && a2 == 0xED0000726F746361 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F43E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73F4400 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001D73F4420 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6573614272657375 && a2 == 0xEC000000656E696CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D73F4450 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void sub_1D6E305C4()
{
  v1 = sub_1D7258DBC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (!(v7 >> 62))
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:

    sub_1D725B31C();

    if (v11[7] != 1)
    {
      return;
    }

    v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_tableView);
    v9 = *(v0 + v6);
    if (v9 >> 62)
    {
      if (!__OFSUB__(sub_1D7263BFC(), 1))
      {
        goto LABEL_6;
      }
    }

    else if (!__OFSUB__(*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
    {
LABEL_6:
      MEMORY[0x1DA6F0420]();
      v10 = sub_1D7258D4C();
      (*(v2 + 8))(v5, v1);
      [v8 scrollToRowAtIndexPath:v10 atScrollPosition:3 animated:0];

      return;
    }

    __break(1u);
    return;
  }

  if (sub_1D7263BFC())
  {
    goto LABEL_3;
  }
}

void sub_1D6E30798()
{
  v1 = v0;
  v28 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_filter;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_unfilteredEntries);
  if (*(*(v0 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_filter) + 16))
  {
    v34 = MEMORY[0x1E69E7CC0];
    if (v2 >> 62)
    {
      goto LABEL_51;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      v26 = v2 & 0xFFFFFFFFFFFFFF8;
      v27 = v2 & 0xC000000000000001;
      v25 = v2 + 32;
      v22 = v1;
      v23 = v3;
      v24 = v2;
      while (1)
      {
        if (v27)
        {
          v33 = MEMORY[0x1DA6FB460](v4, v2);
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            v3 = sub_1D7263BFC();
            goto LABEL_4;
          }

          v33 = *(v25 + 8 * v4);

          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            goto LABEL_43;
          }
        }

        v6 = *(v1 + v28);
        v7 = *(v6 + 16);
        if (v7)
        {
          v8 = *(v6 + 32);
          v29 = v6 + 32;
          v9 = *(v8 + 16);
          if (v9)
          {
            v1 = v33 + OBJC_IVAR____TtC8NewsFeed19DebugFormatLogEntry_normalizedMessage;

            v11 = 1;
            v30 = v10;
            v31 = v4;
LABEL_12:
            v32 = v11;

            v12 = 0;
            v13 = v8 + 40;
            v14 = v9 - 1;
            v15 = 1;
            while (1)
            {
              if ((v15 & 1) == 0)
              {
LABEL_30:
                if (v14 == v12)
                {

                  if (v32 == v7)
                  {

                    v1 = v22;
                    v3 = v23;
                    v2 = v24;
                    v4 = v31;
                    goto LABEL_38;
                  }

                  v4 = v31;
                  v3 = v23;
                  v2 = v24;
                  if (v32 >= *(v30 + 16))
                  {
                    goto LABEL_50;
                  }

                  v8 = *(v29 + 8 * v32);
                  v11 = v32 + 1;
                  v9 = *(v8 + 16);
                  if (!v9)
                  {

                    v1 = v22;
                    break;
                  }

                  goto LABEL_12;
                }

                v15 = 0;
                goto LABEL_13;
              }

              sub_1D5BF4D9C();

              if (sub_1D7263ABC())
              {

                goto LABEL_28;
              }

              v16 = *(v33 + 24);
              if (v16 > 2)
              {
                if (v16 != 3)
                {
                  if (v16 == 4)
                  {
                    v2 = 0xE400000000000000;
                    goto LABEL_27;
                  }

                  goto LABEL_24;
                }

                v2 = 0xE400000000000000;
              }

              else
              {
                if (v16 != 1)
                {
                  if (v16 == 2)
                  {
                    v2 = 0xE700000000000000;
                    goto LABEL_27;
                  }

LABEL_24:
                  v2 = 0xE500000000000000;
                  goto LABEL_27;
                }

                v2 = 0xE500000000000000;
              }

LABEL_27:
              v17 = sub_1D7263ABC();

              if ((v17 & 1) == 0)
              {
                goto LABEL_30;
              }

LABEL_28:
              if (v14 == v12)
              {

                v1 = v22;
                v3 = v23;
                v2 = v24;
                v4 = v31;
                break;
              }

              v15 = 1;
LABEL_13:
              ++v12;
              v13 += 16;
              if (v12 >= *(v8 + 16))
              {
                __break(1u);
                goto LABEL_49;
              }
            }
          }
        }

        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
LABEL_38:
        if (v4 == v3)
        {
          v19 = v1;
          v20 = v34;
          goto LABEL_46;
        }
      }
    }

    v19 = v1;
    v20 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v21 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries;
    swift_beginAccess();
    *(v19 + v21) = v20;
  }

  else
  {
LABEL_44:
    v19 = v1;
    v18 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries;
    swift_beginAccess();
    *(v19 + v18) = v2;
  }

  [*(v19 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_tableView) reloadData];
  sub_1D6E305C4();
}

id sub_1D6E30BCC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___nowBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___nowBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___nowBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_doNow];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D6E30CC0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___clearLogBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___clearLogBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___clearLogBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_doClearLog];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D6E30DD4()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_tableView];
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor_];

  [v2 setDataSource_];
  [v2 setDelegate_];
  [v2 setAlwaysBounceVertical_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v2 setTableFooterView_];

  sub_1D5B5A498(0, &qword_1EC88DCB0);
  sub_1D7262DAC();
  [v2 _setHiddenPocketEdges_];
  [v2 setContentInset_];
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result addSubview_];

    v8 = *&v1[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_searchBar];
    v9 = sub_1D726203C();
    [v8 setPlaceholder_];

    v10 = [v3 systemBlueColor];
    [v8 setTintColor_];

    sub_1D725972C();

    v11 = sub_1D726203C();

    [v8 setText_];

    v12 = [v8 searchTextField];
    [v12 setAutocorrectionType_];

    v13 = [v8 searchTextField];
    [v13 setAutocapitalizationType_];

    v14 = sub_1D726203C();
    v15 = [objc_opt_self() systemImageNamed_];

    [v8 setImage:v15 forSearchBarIcon:0 state:0];
    [v8 setDrawsBackground_];
    [v8 setDelegate_];
    type metadata accessor for DebugFormatBarButtonItem();
    v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
    [v16 setSharesBackground_];
    [v16 setHidesSharedBackground_];
    sub_1D5D0D85C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7298B00;
    *(v17 + 32) = [objc_opt_self() flexibleSpaceItem];
    *(v17 + 40) = sub_1D6E30CC0();
    *(v17 + 48) = sub_1D6E30BCC();
    *(v17 + 56) = v16;

    sub_1D725974C();

    *(swift_allocObject() + 16) = v17;
    sub_1D725971C();

    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725B33C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D725B2EC();

    sub_1D725974C();

    sub_1D725971C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6E31400(void *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D6E33A70;
  *(v8 + 24) = v7;
  v12[4] = sub_1D5DF8E8C;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D69C9704;
  v12[3] = &block_descriptor_101;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1D6E31580(char a1, char *a2)
{
  if (!a1)
  {
    v3 = *&a2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_consolePaneDisplayController];
    sub_1D5D0D85C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D728AF30;
    *(inited + 32) = sub_1D6B18A18();
    *(inited + 40) = sub_1D6B18B0C();
    v5 = *(v3 + OBJC_IVAR____TtC8NewsFeed39DebugFormatConsolePaneDisplayController_flexibleBarButtonItem);
    *(inited + 48) = v5;
    v6 = v5;
    sub_1D6988C14(inited);
  }

  sub_1D6988C14(v7);
  sub_1D5B5A498(0, &qword_1EDF04590);
  v8 = sub_1D726265C();

  [a2 setToolbarItems_];
}

uint64_t sub_1D6E316A8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  sub_1D725BEDC();
}

void sub_1D6E31768(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_unfilteredEntries) = a2;

    sub_1D6E30798();
  }
}

void sub_1D6E317E8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = sub_1D726203C();
      v5 = [objc_opt_self() systemImageNamed_];

      [v3 setImage_];
    }

    sub_1D6E305C4();
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D726203C();
      v9 = [objc_opt_self() systemImageNamed_];

      [v7 setImage_];
    }
  }
}

void sub_1D6E3194C(uint64_t a1)
{

  *(a1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_filter) = sub_1D614F964();

  sub_1D6E30798();
}

uint64_t sub_1D6E31AC8()
{

  sub_1D725B31C();

  sub_1D725B32C();
}

uint64_t sub_1D6E31DC8()
{
  v1 = sub_1D7258D9C();
  v2 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 8 * v1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

  v5 = MEMORY[0x1DA6FB460](v1);
LABEL_5:
  swift_endAccess();
  sub_1D5B5A498(0, &qword_1EC88DCB0);
  v6 = sub_1D7262D8C();
  v7 = *(v5 + 24);
  v8 = v6;
  v9 = sub_1D62E39A8(v7);
  [v8 setBackgroundColor_];

  v10 = [v8 textLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setNumberOfLines_];
  }

  v12 = [v8 textLabel];
  if (v12)
  {
    v13 = v12;
    [v12 setAttributedText_];
  }

  if (*(v5 + 24) >= 5uLL)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v8 setSelectionStyle_];
  v15 = [v8 accessoryView];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

LABEL_15:
    v17 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  }

  if (*(v5 + 24) >= 5uLL)
  {
    v19 = sub_1D726203C();
    v18 = [objc_opt_self() systemImageNamed_];
  }

  else
  {
    v18 = 0;
  }

  [v17 setImage_];

  v20 = [objc_opt_self() labelColor];
  [v17 setTintColor_];

  [v8 setAccessoryView_];

  return v8;
}

uint64_t sub_1D6E321BC(void *a1)
{
  v2 = v1;
  v4 = sub_1D7258D9C();
  v5 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6FB460](v4);
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 8 * v4 + 32);

LABEL_5:
    swift_endAccess();
    v9 = *(v8 + 16);
    [a1 bounds];
    sub_1D726332C();
    [v9 boundingRectWithSize:1 options:0 context:?];
    CGRectGetHeight(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6E323D4()
{
  result = sub_1D7262E7C();
  if (result)
  {

    sub_1D725B31C();

    if ((v1 & 1) == 0)
    {

      sub_1D725B32C();
    }
  }

  return result;
}

void sub_1D6E324D4(uint64_t a1, char a2)
{
  if (a2 & 1) == 0 && (sub_1D7262E7C())
  {

    sub_1D725B31C();

    if ((v2 & 1) == 0)
    {

      sub_1D725B32C();
    }
  }
}

uint64_t sub_1D6E325E0(void *a1)
{
  v1 = a1;

  sub_1D725B32C();
}

void sub_1D6E32644(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1D6E339A0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D7258D4C();
  [a1 deselectRowAtIndexPath:v10 animated:0];

  v11 = sub_1D7258D9C();
  v12 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries;
  swift_beginAccess();
  v13 = *&v3[v12];
  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v13 + 8 * v11 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_50;
  }

  v14 = MEMORY[0x1DA6FB460](v11);
LABEL_5:
  swift_endAccess();
  v15 = *(v14 + 24);
  if (v15 <= 1)
  {
    if (v15 > 1)
    {
      goto LABEL_12;
    }

LABEL_11:

    return;
  }

  if (v15 == 2 || v15 == 3 || v15 == 4)
  {
    goto LABEL_11;
  }

LABEL_12:
  v116 = a1;
  v151 = v15;
  sub_1D5F5F838(v15);
  v16 = v15;
  sub_1D5BA6EF4();
  v17 = swift_dynamicCast();
  v18 = &qword_1EC896000;
  v117 = v3;
  if (v17)
  {
    v19 = *(&v142 + 1);
    if (((v144 >> 59) & 0x1E | (v144 >> 2) & 1) == 0xC)
    {
      v113 = v142;
      v114 = v144;
      v111 = v143;
      v112 = *&v3[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_editor];
      v20 = *(v112 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_formatManager);

      sub_1D725A76C();
      swift_beginAccess();
      v21 = *(v20 + 40);
      if (*(v21 + 16) && (v22 = sub_1D5B69D90(v113, v19), (v23 & 1) != 0))
      {
        v24 = (*(v21 + 56) + (v22 << 7));
        v26 = v24[2];
        v25 = v24[3];
        v27 = v24[1];
        v126 = *v24;
        v127 = v27;
        v128 = v26;
        v129 = v25;
        v28 = v24[4];
        v29 = v24[5];
        v30 = v24[7];
        v132 = v24[6];
        v133 = v30;
        v130 = v28;
        v131 = v29;
        memmove(&v134, v24, 0x80uLL);
        nullsub_1();
        sub_1D691C7D8(&v126, &v118);
        v146 = v138;
        v147 = v139;
        v148 = v140;
        v149 = v141;
        v142 = v134;
        v143 = v135;
        v144 = v136;
        v145 = v137;
      }

      else
      {
        sub_1D607F0A4(&v142);
      }

      swift_endAccess();
      sub_1D725A77C();

      v138 = v146;
      v139 = v147;
      v140 = v148;
      v141 = v149;
      v134 = v142;
      v135 = v143;
      v136 = v144;
      v137 = v145;
      if (sub_1D5DEA380(&v134) == 1)
      {
      }

      else if (v140)
      {
        v31 = *(&v136 + 1);
        v32 = v136;
        *&v118 = v113;
        *(&v118 + 1) = v19;
        v119 = v111;
        sub_1D5EC062C(v136, *(&v136 + 1), &v118, (v114 & 0xFFFFFFFFFFFFFFBLL), &v126);

        v33 = *(&v126 + 1);
        v34 = *(&v127 + 1);
        *&v111 = v126;
        *(&v111 + 1) = v127;
        v109 = v139;
        v110 = *(&v134 + 1);
        v126 = v134;
        *&v127 = v135;
        BYTE8(v127) = BYTE8(v135);
        v128 = __PAIR128__(v31, v32);
        *&v129 = v111;
        *(&v129 + 1) = v33;
        *&v130 = *(&v111 + 1);
        *(&v130 + 1) = v34;
        *&v131 = v139;
        *(&v131 + 1) = v111;
        *&v132 = v33;
        *(&v132 + 1) = *(&v111 + 1);
        *&v133 = v34;
        *(&v133 + 1) = v15;
        v108 = v34;
        nullsub_1();
        v122 = v130;
        v123 = v131;
        v124 = v132;
        v125 = v133;
        v118 = v126;
        v119 = v127;
        v120 = v128;
        v121 = v129;
        swift_bridgeObjectRetain_n();
        v35 = v15;
        sub_1D5F5F838(v15);
        v113 = v33;
        swift_bridgeObjectRetain_n();
        v36 = v15;

        sub_1D725B32C();

        sub_1D5D0D85C(0, &qword_1EC890030, &type metadata for FormatSourceMap, MEMORY[0x1E69E6F90]);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1D7273AE0;
        v38 = v111;
        *(v37 + 32) = v111;
        *(v37 + 40) = v33;
        v39 = *(&v111 + 1);
        *(v37 + 48) = *(&v111 + 1);
        *(v37 + 56) = v34;
        *&v118 = v37;

        sub_1D725B32C();

        *&v118 = v38;
        v18 = &qword_1EC896000;
        *(&v118 + 1) = v113;
        *&v119 = v39;
        *(&v119 + 1) = v108;
        *&v120 = v15;

        sub_1D725B32C();

        LOBYTE(v118) = 1;

        sub_1D725B32C();

        sub_1D67A436C(&v142);
      }

      else
      {

        sub_1D67A436C(&v142);
      }

      v3 = v117;
    }

    else
    {
      sub_1D5EC0FE8(v142, *(&v142 + 1), v143, *(&v143 + 1), v144);
    }
  }

  *&v142 = v15;
  v40 = v15;
  v41 = type metadata accessor for FormatLayoutError();
  v42 = swift_dynamicCast();
  v43 = *(*(v41 - 8) + 56);
  v115 = a2;
  if (!v42)
  {
    v43(v9, 1, 1, v41);
    v63 = sub_1D6E339A0;
LABEL_33:
    sub_1D6E339F8(v9, v63);
    goto LABEL_34;
  }

  v43(v9, 0, 1, v41);
  if (swift_getEnumCaseMultiPayload() != 65)
  {
    v63 = type metadata accessor for FormatLayoutError;
    goto LABEL_33;
  }

  v45 = *v9;
  v44 = v9[1];
  v46 = *(*v9 + 16);
  if (v46)
  {
    v114 = v9[1];
    v47 = (v45 + 32 * v46);
    v48 = v3;
    v49 = *v47;
    v50 = v47[1];
    v51 = v47[2];
    *(&v111 + 1) = v47[3];
    v112 = v51;
    v113 = *&v48[v18[422]];
    v52 = *&v113[OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_formatManager];

    sub_1D725A76C();
    swift_beginAccess();
    v53 = *(v52 + 40);
    if (*(v53 + 16) && (v54 = sub_1D5B69D90(v49, v50), (v55 & 1) != 0))
    {
      v56 = (*(v53 + 56) + (v54 << 7));
      v58 = v56[2];
      v57 = v56[3];
      v59 = v56[1];
      v126 = *v56;
      v127 = v59;
      v128 = v58;
      v129 = v57;
      v60 = v56[4];
      v61 = v56[5];
      v62 = v56[7];
      v132 = v56[6];
      v133 = v62;
      v130 = v60;
      v131 = v61;
      memmove(&v134, v56, 0x80uLL);
      nullsub_1();
      sub_1D691C7D8(&v126, &v118);
      v146 = v138;
      v147 = v139;
      v148 = v140;
      v149 = v141;
      v142 = v134;
      v143 = v135;
      v144 = v136;
      v145 = v137;
    }

    else
    {
      sub_1D607F0A4(&v142);
    }

    swift_endAccess();
    sub_1D725A77C();

    v138 = v146;
    v139 = v147;
    v140 = v148;
    v141 = v149;
    v134 = v142;
    v135 = v143;
    v136 = v144;
    v137 = v145;
    if (sub_1D5DEA380(&v134) == 1)
    {

LABEL_46:
      v3 = v117;
      goto LABEL_34;
    }

    v86 = v136;
    *&v118 = v49;
    *(&v118 + 1) = v50;
    *&v119 = v112;
    *(&v119 + 1) = *(&v111 + 1);
    v87 = v114;
    sub_1D5EC062C(v136, *(&v136 + 1), &v118, v114, &v126);

    v88 = *(&v126 + 1);
    *(&v111 + 1) = v127;
    v112 = v126;
    v110 = v139;
    *&v111 = *(&v127 + 1);
    v126 = v134;
    *&v127 = v135;
    BYTE8(v127) = BYTE8(v135);
    v128 = v86;
    *&v129 = v112;
    *(&v129 + 1) = v88;
    *&v130 = *(&v111 + 1);
    *(&v130 + 1) = v111;
    *&v131 = v139;
    *(&v131 + 1) = v112;
    *&v132 = v88;
    *(&v132 + 1) = *(&v111 + 1);
    *&v133 = v111;
    *(&v133 + 1) = v87;
    nullsub_1();
    v122 = v130;
    v123 = v131;
    v124 = v132;
    v125 = v133;
    v118 = v126;
    v119 = v127;
    v120 = v128;
    v121 = v129;
    swift_bridgeObjectRetain_n();
    v89 = v87;
    swift_bridgeObjectRetain_n();
    v90 = v87;
    v91 = v87;

    sub_1D725B32C();

    sub_1D6BB6C4C(1uLL, v45);
    v93 = v92;
    v95 = v94;
    v97 = v96;
    sub_1D5D0D85C(0, &qword_1EC890030, &type metadata for FormatSourceMap, MEMORY[0x1E69E6F90]);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1D7273AE0;
    v99 = *(&v111 + 1);
    *(v98 + 32) = v112;
    *(v98 + 40) = v88;
    v110 = v88;
    v100 = v111;
    *(v98 + 48) = v99;
    *(v98 + 56) = v100;
    v101 = (v97 >> 1) - v95;
    if (!__OFSUB__(v97 >> 1, v95))
    {
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (!v102)
      {
        v104 = v98;
        *&v118 = sub_1D698F85C(0, v103 & ~(v103 >> 63), 0, MEMORY[0x1E69E7CC0]);
        v105 = swift_unknownObjectRetain();
        sub_1D69884DC(v105, v93, v95, v97);
        sub_1D6985EB0(v104);
        swift_unknownObjectRelease();

        sub_1D725B32C();

        *&v118 = v112;
        *(&v118 + 1) = v110;
        *&v119 = *(&v111 + 1);
        *(&v119 + 1) = v111;
        v106 = v114;
        *&v120 = v114;

        sub_1D725B32C();

        LOBYTE(v118) = 1;

        sub_1D725B32C();

        sub_1D67A436C(&v142);

        v18 = &qword_1EC896000;
        goto LABEL_46;
      }

LABEL_51:
      __break(1u);
      return;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_34:
  v64 = v15;
  v65 = sub_1D5EE7410(v15);
  v66 = sub_1D5EEAADC(v65);
  v68 = v67;
  sub_1D5F5FB48(v15);
  v69 = *&v3[v18[422]];
  v70 = type metadata accessor for DebugFormatErrorViewController();
  v71 = objc_allocWithZone(v70);
  v72 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView;
  v73 = objc_allocWithZone(MEMORY[0x1E69DD020]);

  v74 = v66;

  *&v71[v72] = [v73 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v75 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *&v71[v75] = v76;
  *&v71[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_editor] = v69;
  v77 = &v71[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel];
  v113 = v66;
  v114 = v68;
  *v77 = v66;
  *(v77 + 1) = v68;
  v150.receiver = v71;
  v150.super_class = v70;
  v78 = objc_msgSendSuper2(&v150, sel_initWithNibName_bundle_, 0, 0);
  v79 = sub_1D7258D4C();
  v80 = [v116 cellForRowAtIndexPath_];

  v81 = [v80 accessoryView];
  if (!v81)
  {
    v81 = v80;
  }

  v82 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  [v82 setModalPresentationStyle_];
  v83 = [v82 popoverPresentationController];
  [v83 setSourceView_];

  v84 = [v82 popoverPresentationController];
  if (v84)
  {
    v85 = v84;
    [v84 setPermittedArrowDirections_];
  }

  [v82 setPreferredContentSize_];

  [v117 presentViewController:v82 animated:1 completion:0];

  sub_1D5F5FB48(v15);
}

id sub_1D6E334B8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_tableView;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  v8 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_unfilteredEntries] = v8;
  v9 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_filter;
  *&v2[v9] = sub_1D614F964();
  *&v2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___nowBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___clearLogBarButtonItem] = 0;
  v10 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_searchBar;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x1E69DCF08]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_throttler;
  sub_1D725B24C();
  v16 = sub_1D725B23C();
  sub_1D6E33678();
  swift_allocObject();
  *&v2[v11] = sub_1D725BECC();
  *&v2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_editor] = a1;
  v12 = objc_allocWithZone(type metadata accessor for DebugFormatConsolePaneDisplayController());
  v13 = swift_retain_n();
  *&v2[OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_consolePaneDisplayController] = sub_1D6B18C00(v13);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D6E33678()
{
  if (!qword_1EC896DF0)
  {
    sub_1D725B24C();
    v0 = sub_1D725BEEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896DF0);
    }
  }
}

void sub_1D6E336D8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_tableView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_entries) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_unfilteredEntries) = v5;
  v6 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_filter;
  *(v1 + v6) = sub_1D614F964();
  *(v1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___nowBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController____lazy_storage___clearLogBarButtonItem) = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_searchBar;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCF08]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed28DebugFormatLogViewController_throttler;
  sub_1D725B24C();
  sub_1D725B23C();
  sub_1D6E33678();
  swift_allocObject();
  *(v1 + v8) = sub_1D725BECC();
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6E33864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7257A4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = a2;
  sub_1D725795C();
  sub_1D5BF4D9C();
  v9 = sub_1D7263A4C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v13 = v9;
  v14 = v11;

  sub_1D725973C();
}

void sub_1D6E339A0()
{
  if (!qword_1EDF2F520)
  {
    type metadata accessor for FormatLayoutError();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2F520);
    }
  }
}

uint64_t sub_1D6E339F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D6E33A84()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    type metadata accessor for FormatDisplayLinkAnimation.Container();
    v3 = swift_allocObject();
    swift_weakInit();
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;
    *(v3 + 40) = [objc_allocWithZone(type metadata accessor for FormatDisplayLinkObject()) init];
    swift_weakAssign();
    v4 = [objc_opt_self() displayLinkWithTarget:v3 selector:sel_updateWithDisplayLink_];

    v5 = *(v0 + 80);
    *(v0 + 80) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id *sub_1D6E33B6C()
{
  v1 = sub_1D6E33A84();
  [v1 invalidate];

  return v0;
}

uint64_t sub_1D6E33BDC()
{
  sub_1D6E33B6C();

  return swift_deallocClassInstance();
}

void sub_1D6E33C34(void *a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    [a1 invalidate];
    return;
  }

  v5 = Strong;
  if (*(v1 + 32) != 1)
  {
    v6 = *(v1 + 24);
    [a1 timestamp];
    v8 = v7 - v6;
    [*(v5 + 56) duration];
    v10 = v8 / v9;
    v11 = v9 <= 0.0;
    v12 = 1.0;
    if (v11)
    {
      v10 = 1.0;
    }

    if (v10 <= 1.0)
    {
      v12 = v10;
    }

    if (v12 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    v14 = *(v1 + 40);
    v15 = OBJC_IVAR____TtC8NewsFeed23FormatDisplayLinkObject_storage;
    swift_beginAccess();
    *(v14 + v15) = MEMORY[0x1E69E7CC8];

    [*(v5 + 56) applyForTime:v14 presentationObject:*(v5 + 48) modelObject:v13];
    v16 = objc_opt_self();
    [v16 begin];
    [v16 setDisableActions_];
    v17 = *(v5 + 32);
    sub_1D6D92FE0(v17);

    v18 = *(v5 + 40);
    if (v18 >> 62)
    {
      v19 = sub_1D7263BFC();
      if (!v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_27;
      }
    }

    if (v19 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1DA6FB460](i, v18);
      }

      else
      {
        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      sub_1D6D92FE0(v21);
    }

LABEL_27:
    [v16 commit];
    if (v13 >= 1.0)
    {
      *(v2 + 24) = 1;
      *(v2 + 32) = 1;
      [a1 invalidate];
      v23 = *(v5 + 64);

      v23(v5);
    }

    goto LABEL_6;
  }

  if (*(v1 + 24))
  {
    [a1 invalidate];

LABEL_6:

    return;
  }

  [a1 timestamp];
  v25 = v24;

  *(v1 + 24) = v25;
  *(v1 + 32) = 0;
}

uint64_t sub_1D6E33F84()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t FormatLayeredMediaFilter.layeredMediaFilter(contextLayoutOptions:)@<X0>(uint64_t result@<X0>, id (**a2)(uint64_t a1)@<X8>)
{
  v4 = result;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2] & 0xF000000000000007;
  v9 = 0;
  if (v8 == 0xF000000000000007)
  {
    v10 = 0;
  }

  else
  {

    FormatFloat.value(contextLayoutOptions:)(v4);
    v10 = v11;

    if (v3)
    {
      return result;
    }
  }

  if ((v7 & 0xF000000000000007) == 0xF000000000000007 || (, FormatFloat.value(contextLayoutOptions:)(v4), v9 = v12, result = , !v3))
  {
    if ((~v6 & 0xF000000000000007) != 0)
    {
      v13 = FormatColor.color.getter(result);
    }

    else
    {
      v13 = 0;
    }

    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 24) = v8 == 0xF000000000000007;
    *(result + 32) = v9;
    *(result + 40) = (v7 & 0xF000000000000007) == 0xF000000000000007;
    *(result + 48) = v13;
    *a2 = sub_1D6E34278;
    a2[1] = result;
  }

  return result;
}

BOOL static FormatLayeredMediaFilter.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s8NewsFeed24FormatLayeredMediaFilterO10MonochromeV2eeoiySbAE_AEtFZ_0(&v7, &v5);
}

BOOL sub_1D6E341D4(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s8NewsFeed24FormatLayeredMediaFilterO10MonochromeV2eeoiySbAE_AEtFZ_0(&v7, &v5);
}

uint64_t FormatLayeredMediaFilter.Monochrome.color.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatLayeredMediaFilter.Monochrome.amount.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

uint64_t FormatLayeredMediaFilter.Monochrome.brightnessAdjustment.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D5D04BD4(v2);
}

BOOL _s8NewsFeed24FormatLayeredMediaFilterO10MonochromeV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if ((~*a1 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(*a1);
    sub_1D5CFCFAC(v6);
    if ((~v6 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v3);
      goto LABEL_8;
    }

LABEL_6:
    sub_1D5C84FF4(v3);
    sub_1D5C84FF4(v6);
    return 0;
  }

  v14 = *a1;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v3);
    sub_1D5CFCFAC(v6);
    sub_1D5CFCFAC(v3);

    goto LABEL_6;
  }

  v13 = v6;
  sub_1D5CFCFAC(v3);
  sub_1D5CFCFAC(v6);
  sub_1D5CFCFAC(v3);
  v8 = static FormatColor.== infix(_:_:)(&v14, &v13);

  sub_1D5C84FF4(v3);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((~v2 & 0xF000000000000007) != 0)
  {
    v14 = v2;
    if ((~v5 & 0xF000000000000007) != 0)
    {
      v13 = v5;
      sub_1D5D04BD4(v2);
      sub_1D5D04BD4(v5);
      sub_1D5D04BD4(v2);
      v10 = static FormatFloat.== infix(_:_:)(&v14, &v13);

      sub_1D5C8500C(v2);
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    sub_1D5D04BD4(v2);
    sub_1D5D04BD4(v5);
    sub_1D5D04BD4(v2);

LABEL_13:
    sub_1D5C8500C(v2);
    v9 = v5;
LABEL_21:
    sub_1D5C8500C(v9);
    return 0;
  }

  sub_1D5D04BD4(v2);
  sub_1D5D04BD4(v5);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    goto LABEL_13;
  }

  sub_1D5C8500C(v2);
LABEL_15:
  if ((~v4 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v4);
    sub_1D5D04BD4(v7);
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v4);
      return 1;
    }

    goto LABEL_20;
  }

  v14 = v4;
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v4);
    sub_1D5D04BD4(v7);
    sub_1D5D04BD4(v4);

LABEL_20:
    sub_1D5C8500C(v4);
    v9 = v7;
    goto LABEL_21;
  }

  v13 = v7;
  sub_1D5D04BD4(v4);
  sub_1D5D04BD4(v7);
  sub_1D5D04BD4(v4);
  v12 = static FormatFloat.== infix(_:_:)(&v14, &v13);

  sub_1D5C8500C(v4);
  return (v12 & 1) != 0;
}

unint64_t sub_1D6E34520(uint64_t a1)
{
  result = sub_1D6E34548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E34548()
{
  result = qword_1EC896DF8;
  if (!qword_1EC896DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896DF8);
  }

  return result;
}

unint64_t sub_1D6E345DC()
{
  result = qword_1EC896E00;
  if (!qword_1EC896E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E00);
  }

  return result;
}

unint64_t sub_1D6E34630(uint64_t a1)
{
  result = sub_1D6E34658();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E34658()
{
  result = qword_1EC896E08;
  if (!qword_1EC896E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E08);
  }

  return result;
}

uint64_t sub_1D6E346EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E34740()
{
  result = qword_1EC896E10;
  if (!qword_1EC896E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed11FormatFloatOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6E347D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 24))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7));
  v4 = v3 ^ 0x7F;
  v5 = 126 - v3;
  if (v4 >= 0x7B)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D6E34838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = ((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

char *SportsBracketDataVisualization.__allocating_init(competitorTags:umcCanonicalId:leagueTag:championshipTag:embedUrl:urlDataSources:events:metadata:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v16 = swift_allocObject();
  v43 = a10[1];
  v44 = *a10;
  v17 = a10[3];
  v34 = a10[2];
  v35 = *a9;
  v18 = a10[4];
  v19 = a10[5];
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  v36 = a2;
  v42 = a3;
  *(v16 + 6) = a3;
  *(v16 + 7) = a4;
  *(v16 + 8) = a5;
  v20 = OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl;
  v21 = sub_1D72585BC();
  v37 = *(v21 - 8);
  v38 = v21;
  v39 = a6;
  (*(v37 + 16))(&v16[v20], a6);
  *&v16[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources] = a7;
  *&v16[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events] = a8;
  *&v16[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata] = v35;
  v22 = &v16[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config];
  *v22 = v44;
  v22[1] = v43;
  v22[2] = v34;
  v22[3] = v17;
  v22[4] = v18;
  v22[5] = v19;
  if (v43)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1D5F8B638(v44, v43);
    swift_unknownObjectRetain();
    MEMORY[0x1DA6F9910](v44, v43);
    v23 = 14906;
    v24 = 0xE200000000000000;
    if (v34)
    {
      v25 = [v34 identifier];
      v26 = sub_1D726207C();
      v28 = v27;

      MEMORY[0x1DA6F9910](v26, v28);

      v30 = 14906;
      v29 = 0xE200000000000000;
    }

    else
    {
      v30 = 0;
      v29 = 0xE000000000000000;
    }
  }

  else
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v30 = 0;
    v23 = 0;
    v29 = 0xE000000000000000;
    v24 = 0xE000000000000000;
  }

  v45 = sub_1D72583DC();
  v46 = v31;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v36, v42);

  MEMORY[0x1DA6F9910](v23, v24);

  MEMORY[0x1DA6F9910](v30, v29);
  swift_unknownObjectRelease();

  v32 = v46;
  *(v16 + 2) = v45;
  *(v16 + 3) = v32;
  v45 = v44;
  v46 = v43;
  v47 = v34;
  v48 = v17;
  v49 = v18;
  v50 = v19;
  sub_1D692133C(v39, &v45, 0xD000000000000018, 0x80000001D73F4790, &v16[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v37 + 8))(v39, v38);
  sub_1D5F8BBC8(v44, v43);
  return v16;
}

uint64_t SportsBracketDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsBracketDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SportsBracketDataVisualization.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata);
  *a1 = v2;
  return sub_1D67A737C(v2);
}

uint64_t SportsBracketDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3);
}

void *SportsBracketDataVisualization.init(competitorTags:umcCanonicalId:leagueTag:championshipTag:embedUrl:urlDataSources:events:metadata:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t *a9, uint64_t *a10)
{
  v11 = v10;
  v66 = a6;
  v67 = a8;
  v62 = a7;
  v63 = a4;
  v64 = a5;
  v15 = sub_1D72585BC();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v59 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a9;
  v55 = a2;
  v19 = *a10;
  v65 = a10[1];
  v21 = a10[2];
  v20 = a10[3];
  v22 = a10[4];
  v23 = a10[5];
  v11[4] = a1;
  v11[5] = a2;
  v25 = v63;
  v24 = v64;
  v26 = a3;
  v11[6] = a3;
  v11[7] = v25;
  v11[8] = v24;
  v60 = v28;
  v61 = v27;
  (*(v28 + 16))(v11 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl, v66, v17);
  *(v11 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources) = v62;
  v29 = v21;
  v30 = v65;
  *(v11 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events) = v67;
  *(v11 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata) = v54;
  v31 = (v11 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  v62 = v19;
  *v31 = v19;
  v31[1] = v30;
  v67 = v29;
  v31[2] = v29;
  v31[3] = v20;
  v31[4] = v22;
  v31[5] = v23;
  v57 = v22;
  v58 = v20;
  v56 = v23;
  if (v30)
  {
    v68 = 14906;
    v69 = 0xE200000000000000;
    swift_unknownObjectRetain();
    v54 = v26;

    swift_unknownObjectRetain();
    v32 = v62;
    v33 = v67;
    sub_1D5F8B638(v62, v30);
    swift_unknownObjectRetain();
    MEMORY[0x1DA6F9910](v32, v30);
    v35 = v68;
    v34 = v69;
    if (v33)
    {
      v36 = [v67 identifier];
      v37 = sub_1D726207C();
      v39 = v38;

      v68 = 14906;
      v69 = 0xE200000000000000;
      MEMORY[0x1DA6F9910](v37, v39);

      v40 = v68;
      v41 = v69;
    }

    else
    {
      v40 = 0;
      v41 = 0xE000000000000000;
    }

    v26 = v54;
  }

  else
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v40 = 0;
    v35 = 0;
    v41 = 0xE000000000000000;
    v34 = 0xE000000000000000;
  }

  v42 = v66;
  v68 = sub_1D72583DC();
  v69 = v43;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v55, v26);

  MEMORY[0x1DA6F9910](v35, v34);

  MEMORY[0x1DA6F9910](v40, v41);
  swift_unknownObjectRelease();

  v44 = v69;
  v11[2] = v68;
  v11[3] = v44;
  v45 = v62;
  v46 = v65;
  v68 = v62;
  v69 = v65;
  v70 = v67;
  v71 = v58;
  v72 = v57;
  v73 = v56;
  v47 = v59;
  v48 = v42;
  sub_1D692133C(v42, &v68, 0xD000000000000018, 0x80000001D73F4790, v59);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v49 = v60;
  v50 = v48;
  v51 = v61;
  (*(v60 + 8))(v50, v61);
  sub_1D5F8BBC8(v45, v46);
  (*(v49 + 32))(v11 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl, v47, v51);
  return v11;
}

void *SportsBracketDataVisualization.with(metadata:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  v10 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v10;
  v11 = *(v2 + 7);
  v55 = *(v2 + 6);
  v12 = *(v2 + 8);
  v53 = v5;
  v13 = *(v5 + 16);
  v13(v9, &v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl], v4, v7);
  v45 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources];
  v46 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events];
  v14 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config];
  v59 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8];
  v60 = v14;
  v15 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24];
  v44 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16];
  v58 = v15;
  v17 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32];
  v16 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40];
  v18 = swift_allocObject();
  v19 = v57;
  v18[4] = v56;
  v18[5] = v19;
  v20 = v55;
  v18[6] = v55;
  v18[7] = v11;
  v48 = v11;
  v49 = v12;
  v18[8] = v12;
  v21 = v45;
  v52 = v9;
  v54 = v4;
  (v13)(v18 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl, v9, v4);
  v23 = v46;
  v22 = v47;
  v24 = v44;
  v26 = v58;
  v25 = v59;
  *(v18 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources) = v21;
  *(v18 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events) = v23;
  *(v18 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata) = v22;
  v27 = (v18 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  *v27 = v60;
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v26;
  v27[4] = v17;
  v27[5] = v16;
  v50 = v16;
  v51 = v17;
  if (v25)
  {
    v61 = 14906;
    v62 = 0xE200000000000000;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v28 = v59;
    v29 = v60;
    sub_1D5F8B638(v60, v59);
    swift_unknownObjectRetain();
    MEMORY[0x1DA6F9910](v29, v28);
    v30 = v61;
    v31 = v62;
    if (v24)
    {
      v32 = [v24 identifier];
      v33 = sub_1D726207C();
      v35 = v34;

      v61 = 14906;
      v62 = 0xE200000000000000;
      MEMORY[0x1DA6F9910](v33, v35);

      v36 = v61;
      v37 = v62;
    }

    else
    {
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    v39 = v24;
    v38 = v55;
  }

  else
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = 0;
    v38 = v20;
    v30 = 0;
    v37 = 0xE000000000000000;
    v31 = 0xE000000000000000;
    v39 = v24;
  }

  v40 = v52;
  v61 = sub_1D72583DC();
  v62 = v41;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v57, v38);
  MEMORY[0x1DA6F9910](v30, v31);

  MEMORY[0x1DA6F9910](v36, v37);
  swift_unknownObjectRelease();

  v42 = v62;
  v18[2] = v61;
  v18[3] = v42;
  v61 = v60;
  v62 = v59;
  v63 = v39;
  v64 = v58;
  v65 = v51;
  v66 = v50;
  sub_1D692133C(v40, &v61, 0xD000000000000018, 0x80000001D73F4790, v18 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl);
  (*(v53 + 8))(v40, v54);
  return v18;
}

void *SportsBracketDataVisualization.with(config:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v53 = a1[3];
  v56 = a1[4];
  v57 = v10;
  v13 = a1[5];
  v15 = *(v1 + 5);
  v46 = *(v1 + 4);
  v14 = v46;
  v47 = v11;
  v16 = *(v1 + 7);
  v54 = *(v1 + 6);
  v17 = v54;
  v55 = v13;
  v48 = v16;
  v44 = *(v1 + 8);
  v45 = v12;
  v51 = v5;
  v18 = *(v5 + 16);
  v18(v9, &v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl], v4, v7);
  v43 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources];
  v42 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events];
  v41 = *&v2[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata];
  v19 = swift_allocObject();
  v19[4] = v14;
  v19[5] = v15;
  v49 = v15;
  v50 = v9;
  v19[6] = v17;
  v19[7] = v16;
  v19[8] = v44;
  v52 = v4;
  v20 = v4;
  v21 = v45;
  (v18)(v19 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl, v9, v20);
  v22 = v53;
  *(v19 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources) = v43;
  v23 = v47;
  *(v19 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events) = v42;
  v24 = v41;
  *(v19 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata) = v41;
  v25 = (v19 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  v26 = v56;
  *v25 = v57;
  v25[1] = v23;
  v25[2] = v21;
  v25[3] = v22;
  v27 = v55;
  v25[4] = v26;
  v25[5] = v27;
  v58 = 14906;
  v59 = 0xE200000000000000;
  swift_unknownObjectRetain();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  sub_1D67A737C(v24);
  swift_unknownObjectRetain();
  v28 = v23;
  MEMORY[0x1DA6F9910](v57, v23);
  v30 = v58;
  v29 = v59;
  if (v21)
  {
    v31 = [v21 identifier];
    v32 = sub_1D726207C();
    v34 = v33;

    v58 = 14906;
    v59 = 0xE200000000000000;
    MEMORY[0x1DA6F9910](v32, v34);

    v36 = v58;
    v35 = v59;
  }

  else
  {
    v36 = 0;
    v35 = 0xE000000000000000;
  }

  v37 = v50;
  v58 = sub_1D72583DC();
  v59 = v38;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v49, v54);
  MEMORY[0x1DA6F9910](v30, v29);

  MEMORY[0x1DA6F9910](v36, v35);
  swift_unknownObjectRelease();

  v39 = v59;
  v19[2] = v58;
  v19[3] = v39;
  v58 = v57;
  v59 = v28;
  v60 = v21;
  v61 = v53;
  v62 = v56;
  v63 = v55;
  sub_1D692133C(v37, &v58, 0xD000000000000018, 0x80000001D73F4790, v19 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl);
  (*(v51 + 8))(v37, v52);

  swift_unknownObjectRelease();

  return v19;
}

uint64_t SportsBracketDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsBracketDataVisualization.init(from:)(a1);
  return v2;
}

char *SportsBracketDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v65 = v2;
  v66 = v4;
  v5 = sub_1D72585BC();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v57 = &v53 - v10;
  sub_1D6E36578(0, &unk_1EDF17730, sub_1D6924A40, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v62 = &v53 - v16;
  sub_1D6E365DC(0);
  v63 = v17;
  v61 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v64 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E37DE4(0, &qword_1EC896E18, sub_1D6E36610, &type metadata for SportsBracketDataVisualization.CodingKeys, MEMORY[0x1E69E6F48]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v53 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E36610();
  v26 = v1;
  v27 = v65;
  sub_1D7264B0C();
  if (v27)
  {
    swift_deallocPartialClassInstance();
    v52 = a1;
  }

  else
  {
    v29 = v61;
    v28 = v62;
    v65 = a1;
    LOBYTE(v67) = 0;
    sub_1D6E36664(&qword_1EDF17850, sub_1D6E365DC);
    v30 = v63;
    sub_1D726431C();
    v31 = v64;
    sub_1D725BF7C();
    (*(v29 + 1))(v31, v30);
    *(v26 + 4) = v67;
    LOBYTE(v67) = 1;
    *(v26 + 5) = sub_1D72642BC();
    *(v26 + 6) = v32;
    sub_1D6924A40(0);
    v34 = v33;
    LOBYTE(v67) = 5;
    sub_1D6E36664(&unk_1EDF17750, sub_1D6924A40);
    sub_1D726427C();
    v63 = v21;
    v64 = v25;
    v35 = *(v34 - 8);
    v36 = v35;
    v61 = *(v35 + 48);
    v55 = v35 + 48;
    v37 = (v61)(v28, 1, v34);
    v54 = v36;
    if (v37 == 1)
    {
      sub_1D67A82FC(v28);
      v38 = 0;
    }

    else
    {
      sub_1D725BF7C();
      v38 = v67;
      (*(v36 + 8))(v28, v34);
    }

    v39 = v58;
    *(v26 + 7) = v38;
    LOBYTE(v67) = 6;
    v62 = 0;
    sub_1D726427C();
    if ((v61)(v39, 1, v34) == 1)
    {
      sub_1D67A82FC(v39);
      v40 = 0;
    }

    else
    {
      sub_1D725BF7C();
      v40 = v67;
      (*(v54 + 8))(v39, v34);
    }

    v41 = v59;
    v42 = v60;
    v43 = v57;
    *(v26 + 8) = v40;
    LOBYTE(v67) = 2;
    sub_1D6E36664(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
    sub_1D726431C();
    v44 = v42;
    v45 = *(v41 + 32);
    v45(&v26[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl], v43, v44);
    sub_1D5B4DA90();
    v70 = 3;
    sub_1D6E36714(&unk_1EDF04AB0, sub_1D5B4DA90, sub_1D6E366AC);
    sub_1D726431C();
    *&v26[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources] = v67;
    sub_1D6E366E0(0);
    v70 = 4;
    sub_1D6E36714(&unk_1EC896E30, sub_1D6E366E0, sub_1D6E36784);
    sub_1D726431C();
    *&v26[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events] = v67;
    v70 = 7;
    sub_1D6E367B8();
    sub_1D726427C();
    *&v26[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata] = v67;
    v70 = 8;
    sub_1D5F8C8D4();
    sub_1D726427C();
    v61 = v26;
    v47 = &v26[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config];
    v48 = v68;
    *v47 = v67;
    *(v47 + 1) = v48;
    *(v47 + 2) = v69;
    LOBYTE(v67) = 9;
    v49 = sub_1D72642BC();
    v50 = v61;
    *(v61 + 2) = v49;
    *(v50 + 3) = v51;
    LOBYTE(v67) = 10;
    sub_1D726431C();
    (*(v22 + 8))(v64, v63);
    v26 = v61;
    v45(&v61[OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl], v56, v60);
    v52 = v65;
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return v26;
}

void sub_1D6E36578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6E36610()
{
  result = qword_1EC896E20;
  if (!qword_1EC896E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E20);
  }

  return result;
}

uint64_t sub_1D6E36664(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6E36714(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1D6E367B8()
{
  result = qword_1EC896E40;
  if (!qword_1EC896E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E40);
  }

  return result;
}

uint64_t SportsBracketDataVisualization.encode(to:)(void *a1)
{
  sub_1D6E36578(0, &unk_1EDF17730, sub_1D6924A40, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v42 = &v41 - v7;
  v8 = sub_1D725ABEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E365DC(0);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E37DE4(0, &unk_1EC896E50, sub_1D6E36610, &type metadata for SportsBracketDataVisualization.CodingKeys, MEMORY[0x1E69E6F58]);
  v43 = *(v18 - 8);
  v44 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v41 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E36610();
  sub_1D7264B5C();
  v49 = *(v48 + 32);
  v22 = qword_1EDF17D78;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_1EDF17D80);
  v24 = (*(v9 + 16))(v12, v23, v8);
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1D5F87C68();
  *(&v41 - 2) = v26;
  *(&v41 - 1) = sub_1D6E36664(&unk_1EDF04A00, sub_1D5F87C68);
  swift_getKeyPath();
  sub_1D725BF9C();
  LOBYTE(v49) = 0;
  sub_1D6E36664(&qword_1EDF17858, sub_1D6E365DC);
  v28 = v44;
  v27 = v45;
  v29 = v47;
  sub_1D726443C();
  (*(v46 + 8))(v17, v27);
  if (!v29)
  {
    v30 = v48;
    LOBYTE(v49) = 1;
    sub_1D72643FC();
    v31 = swift_unknownObjectRetain();
    v32 = v42;
    sub_1D67A8F10(v31, v42);
    LOBYTE(v49) = 5;
    sub_1D6924A40(0);
    sub_1D6E36664(&unk_1EDF17760, sub_1D6924A40);
    sub_1D72643BC();
    sub_1D67A82FC(v32);
    v33 = swift_unknownObjectRetain();
    v34 = v41;
    sub_1D67A8F10(v33, v41);
    LOBYTE(v49) = 6;
    sub_1D72643BC();
    sub_1D67A82FC(v34);
    LOBYTE(v49) = 2;
    sub_1D72585BC();
    sub_1D6E36664(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
    sub_1D726443C();
    v49 = *(v30 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources);
    v55 = 3;
    sub_1D5B4DA90();
    sub_1D6E36714(&qword_1EDF04AC0, sub_1D5B4DA90, sub_1D6E37D28);
    sub_1D726443C();
    v49 = *(v30 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events);
    v55 = 4;
    sub_1D6E366E0(0);
    sub_1D6E36714(&qword_1EC896E60, sub_1D6E366E0, sub_1D6E37D5C);
    sub_1D72643BC();
    v36 = *(v30 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
    v37 = *(v30 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
    v38 = *(v30 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
    v39 = *(v30 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
    v40 = *(v30 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
    v49 = *(v30 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
    v50 = v36;
    v51 = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v55 = 8;
    sub_1D5F8B638(v49, v36);
    sub_1D5F8D7E0();
    sub_1D72643BC();
    sub_1D5F8BBC8(v49, v50);
    LOBYTE(v49) = 9;
    sub_1D72643FC();
    LOBYTE(v49) = 10;
    sub_1D726443C();
  }

  return (*(v43 + 8))(v21, v28);
}

uint64_t sub_1D6E37010(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x74697465706D6F63;
    v7 = 0x6C72556465626D65;
    v8 = 0x53617461446C7275;
    if (a1 != 3)
    {
      v8 = 0x73746E657665;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E6F6E6143636D75;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6769666E6F63;
    v2 = 0x696669746E656469;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x615465756761656CLL;
    v4 = 0x6E6F69706D616863;
    if (a1 != 6)
    {
      v4 = 0x617461646174656DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6E371A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D6E37010(*a1);
  v5 = v4;
  if (v3 == sub_1D6E37010(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6E37228()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6E37010(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E3728C()
{
  sub_1D6E37010(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6E372E0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6E37010(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E37340@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6E3820C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6E37370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6E37010(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6E373B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6E3820C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6E373E0(uint64_t a1)
{
  v2 = sub_1D6E36610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E3741C(uint64_t a1)
{
  v2 = sub_1D6E36610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsBracketDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1D67A82EC(*(v0 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata));
  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8));
  v3(v0 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl, v2);
  return v0;
}

uint64_t SportsBracketDataVisualization.__deallocating_deinit()
{
  SportsBracketDataVisualization.deinit();

  return swift_deallocClassInstance();
}

char *sub_1D6E375B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsBracketDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsBracketDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t SportsBracketDataVisualizationMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  sub_1D6E36578(0, &unk_1EDF17730, sub_1D6924A40, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v21 = &v20 - v6;
  sub_1D6E37DE4(0, &qword_1EC896E68, sub_1D6E37D90, &type metadata for SportsBracketDataVisualizationMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E37D90();
  sub_1D7264B0C();
  if (!v2)
  {
    v13 = v9;
    sub_1D6924A40(0);
    v15 = v14;
    sub_1D6E36664(&unk_1EDF17750, sub_1D6924A40);
    v16 = v21;
    sub_1D726427C();
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v16, 1, v15) == 1)
    {
      (*(v13 + 8))(v12, v8);
      sub_1D67A82FC(v16);
      v18 = 0;
    }

    else
    {
      sub_1D725BF7C();
      (*(v13 + 8))(v12, v8);
      v18 = v22;
      (*(v17 + 8))(v16, v15);
    }

    *v20 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SportsBracketDataVisualizationMetadata.encode(to:)(void *a1)
{
  sub_1D6E36578(0, &unk_1EDF17730, sub_1D6924A40, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  sub_1D6E37DE4(0, &unk_1EC896E78, sub_1D6E37D90, &type metadata for SportsBracketDataVisualizationMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E37D90();
  swift_unknownObjectRetain();
  sub_1D7264B5C();
  sub_1D67A8F10(v13, v6);
  sub_1D6924A40(0);
  sub_1D6E36664(&unk_1EDF17760, sub_1D6924A40);
  sub_1D72643BC();
  sub_1D67A82FC(v6);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6E37BD4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6E37C28@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6E37C80(uint64_t a1)
{
  v2 = sub_1D6E37D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E37CBC(uint64_t a1)
{
  v2 = sub_1D6E37D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6E37D90()
{
  result = qword_1EC896E70;
  if (!qword_1EC896E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E70);
  }

  return result;
}

void sub_1D6E37DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata accessor for SportsBracketDataVisualization()
{
  result = qword_1EDF200C8;
  if (!qword_1EDF200C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6E37EA0()
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

unint64_t sub_1D6E38000()
{
  result = qword_1EC896E88;
  if (!qword_1EC896E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E88);
  }

  return result;
}

unint64_t sub_1D6E38058()
{
  result = qword_1EC896E90;
  if (!qword_1EC896E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E90);
  }

  return result;
}

unint64_t sub_1D6E380B0()
{
  result = qword_1EC896E98;
  if (!qword_1EC896E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896E98);
  }

  return result;
}

unint64_t sub_1D6E38108()
{
  result = qword_1EC896EA0;
  if (!qword_1EC896EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896EA0);
  }

  return result;
}

unint64_t sub_1D6E38160()
{
  result = qword_1EC896EA8;
  if (!qword_1EC896EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896EA8);
  }

  return result;
}

unint64_t sub_1D6E381B8()
{
  result = qword_1EC896EB0;
  if (!qword_1EC896EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896EB0);
  }

  return result;
}

uint64_t sub_1D6E3820C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

void sub_1D6E38258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 9);
  sub_1D725BDCC();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;
  *(v13 + 41) = v12;
  *(v13 + 48) = a6;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = sub_1D725B92C();
  sub_1D725BA8C();

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = v10;
  *(v15 + 32) = v11;
  *(v15 + 33) = v12;
  swift_unknownObjectRetain();

  v16 = sub_1D725B92C();
  sub_1D725BACC();
}

uint64_t sub_1D6E383F8(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a1)
  {
    v8 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_followingManager + 24);
    v9 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_followingManager + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_followingManager), v8);
    return (*(v9 + 32))(a3, a4 & 1, a5, v8, v9);
  }

  else
  {
    v11 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_followingManager + 24);
    v12 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_followingManager + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_followingManager), v11);
    return (*(v12 + 40))(a3, v11, v12);
  }
}

uint64_t sub_1D6E384C8()
{
  swift_getObjectType();
  if (qword_1EDF3AB18 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  sub_1D725D97C();
  return swift_unknownObjectRelease();
}

void sub_1D6E385A8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D5C384A0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7279970;
  v5 = sub_1D725F7AC();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v10 = [a3 identifier];
  v11 = sub_1D726207C();
  v13 = v12;

  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v11;
  *(v4 + 80) = v13;
  swift_getErrorValue();
  v14 = sub_1D726497C();
  *(v4 + 136) = v8;
  *(v4 + 144) = v9;
  *(v4 + 112) = v14;
  *(v4 + 120) = v15;
  sub_1D5B5F6D0();
  v16 = sub_1D72638FC();
  sub_1D7262EDC();
  sub_1D725C30C();
}

id sub_1D6E387A4@<X0>(void *a1@<X3>, _BYTE *a2@<X8>)
{
  result = [*(*v2 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_subscriptionController) hasSubscriptionToTag_];
  *a2 = result ^ 1;
  return result;
}

uint64_t sub_1D6E38904(void **a1)
{
  v2 = *a1;
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1D726207C();
  v7 = v6;

  if (v5 == 0x6C7070612E6D6F63 && v7 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v9 = sub_1D72646CC();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_subscriptionController);
  ObjectType = swift_getObjectType();
  v12 = [v2 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  v13 = [v10 isChannelPermanentForTagID_];

  if (v13 & 1) != 0 || ([v2 disableFollow] & 1) != 0 || FCTagProviding.isSection.getter(ObjectType) || (objc_msgSend(v2, sel_isSportsEvent) & 1) != 0 || (objc_msgSend(v2, sel_isMySports) & 1) != 0 || (objc_msgSend(v2, sel_isRecipeCatalog))
  {
    return 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_featureAvailability + 24);
  v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed23FollowingCommandHandler_featureAvailability), v15);
  if ((*(v16 + 200))(v15, v16))
  {
    return [v2 isFoodHub] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t FormatModelFactory.__allocating_init(factory:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t FormatModelFactory.createFormatModels(from:context:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v5 = *(*v4 + 88);
  v6 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1D726393C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v27 - v17;
  (*(v5 + 24))(v27, v28, v29, v30, v6, v5, v16);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
    sub_1D6E38F94();
    v20 = *(type metadata accessor for FormatModel() - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7273AE0;
    sub_1D683A158();
    v24 = (v22 + v21 + *(v23 + 48));
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v24[3] = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v13 + 16))(boxed_opaque_existential_1, v18, AssociatedTypeWitness);
    (*(v13 + 8))(v18, AssociatedTypeWitness);
    return v22;
  }
}

void sub_1D6E38F94()
{
  if (!qword_1EDF02198)
  {
    type metadata accessor for FormatModel();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02198);
    }
  }
}

uint64_t FormatModelFactory.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6E3916C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

void sub_1D6E391E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = a4;
  v65 = a3;
  v60 = a2;
  v5 = sub_1D725895C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D686EBA0();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D90FDC();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v45 - v18;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v68 = &v45 - v22;
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v57 = a1 & 0xFFFFFFFFFFFFFF8;
    v58 = a1 & 0xC000000000000001;
    v23 = v60 & 0xFFFFFFFFFFFFFF8;
    if (v60 < 0)
    {
      v24 = v60;
    }

    else
    {
      v24 = v60 & 0xFFFFFFFFFFFFFF8;
    }

    v45 = v24;
    v55 = v60 & 0xC000000000000001;
    v64 = (v6 + 56);
    v51 = (v6 + 48);
    v52 = (v6 + 16);
    v46 = (v6 + 32);
    v49 = (v6 + 8);
    v25 = 4;
    v56 = v60 >> 62;
    v53 = v60 & 0xFFFFFFFFFFFFFF8;
    v54 = a1;
    while (1)
    {
      v6 = v25 - 4;
      if (!v58)
      {
        break;
      }

      v67 = MEMORY[0x1DA6FB460](v25 - 4, a1, v21);
      a1 = v25 - 3;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_34;
      }

LABEL_13:
      if (v56)
      {
        if (v6 == sub_1D7263BFC())
        {
LABEL_32:

          return;
        }
      }

      else if (v6 == *(v23 + 16))
      {
        goto LABEL_32;
      }

      v63 = a1;
      if (v55)
      {
        v28 = MEMORY[0x1DA6FB460](v25 - 4, v60);
      }

      else
      {
        if (v6 >= *(v23 + 16))
        {
          goto LABEL_36;
        }

        v28 = *(v60 + 8 * v25);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v29 = v67;
      sub_1D72600CC();

      v30 = v69;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v69) = v30;

      sub_1D72600DC();
      v31 = *v52;
      v32 = v29 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_id;
      v33 = v68;
      (*v52)(v68, v32, v5);
      v34 = *v64;
      v35 = 1;
      (*v64)(v33, 0, 1, v5);
      if (v65)
      {
        v31(v66, v65 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_id, v5);
        v35 = 0;
      }

      v36 = v66;
      v34(v66, v35, 1, v5);
      v37 = *(v59 + 48);
      sub_1D6E3A278(v68, v12, sub_1D6D90FDC);
      sub_1D6E3A278(v36, &v12[v37], sub_1D6D90FDC);
      v38 = *v51;
      if ((*v51)(v12, 1, v5) == 1)
      {
        sub_1D6E3A2E0(v66, sub_1D6D90FDC);
        sub_1D6E3A2E0(v68, sub_1D6D90FDC);
        if (v38(&v12[v37], 1, v5) == 1)
        {
          sub_1D6E3A2E0(v12, sub_1D6D90FDC);
          v26 = v63;
LABEL_25:
          v44 = v62;

          *v44 = v28;

          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v39 = v68;
      v40 = v66;
      v41 = v50;
      sub_1D6E3A278(v12, v50, sub_1D6D90FDC);
      if (v38(&v12[v37], 1, v5) == 1)
      {
        sub_1D6E3A2E0(v40, sub_1D6D90FDC);
        sub_1D6E3A2E0(v39, sub_1D6D90FDC);
        (*v49)(v41, v5);
LABEL_8:
        sub_1D6E3A2E0(v12, sub_1D686EBA0);
        v26 = v63;
        goto LABEL_9;
      }

      v42 = v47;
      (*v46)(v47, &v12[v37], v5);
      sub_1D6E3A340(&qword_1EDF18A58);
      v48 = sub_1D7261FBC();
      v43 = *v49;
      (*v49)(v42, v5);
      sub_1D6E3A2E0(v40, sub_1D6D90FDC);
      sub_1D6E3A2E0(v39, sub_1D6D90FDC);
      v43(v41, v5);
      sub_1D6E3A2E0(v12, sub_1D6D90FDC);
      v26 = v63;
      if (v48)
      {
        goto LABEL_25;
      }

LABEL_9:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      v27 = v69;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      sub_1D6E391E0(v27, v69, v65, v62);

      ++v25;
      v23 = v53;
      a1 = v54;
      if (v26 == i)
      {
        return;
      }
    }

    if (v6 >= *(v57 + 16))
    {
      goto LABEL_35;
    }

    v67 = *(a1 + 8 * v25);

    a1 = v25 - 3;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }
}

uint64_t sub_1D6E3998C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6E39A00@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6E39A80()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6E39AFC(uint64_t a1, char a2)
{
  sub_1D725894C();
  *(v2 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
  sub_1D6E3A278(a1, v2 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
  swift_beginAccess();
  sub_1D726009C();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = a2;
  swift_beginAccess();
  sub_1D6847030(0);
  sub_1D726009C();
  swift_endAccess();
  sub_1D6E3A2E0(a1, type metadata accessor for DebugFormatLayoutModel);
  return v2;
}

uint64_t sub_1D6E39C28()
{
  v1 = OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_id;
  v2 = sub_1D725895C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D6E3A2E0(v0 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
  v3 = OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem__children;
  sub_1D6E39F7C(0, &qword_1EC88C8A0, sub_1D6847030, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem__isExpanded;
  sub_1D5EF05B8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatLayoutTreeItem()
{
  result = qword_1EC896EF0;
  if (!qword_1EC896EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E39DFC()
{
  sub_1D725895C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DebugFormatLayoutModel();
    if (v1 <= 0x3F)
    {
      sub_1D6E39F7C(319, &qword_1EC88C8A0, sub_1D6847030, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1D5EF05B8();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D6E39F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6E39FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_id;
  v5 = sub_1D725895C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D6E3A05C()
{
  MEMORY[0x1DA6F9910](123, 0xE100000000000000);
  v0 = sub_1D6ABC250();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x3D656D617266202CLL, 0xE800000000000000);
  type metadata accessor for CGRect(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D6E3A184@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6E3A204()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6E3A278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E3A2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6E3A340(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D725895C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t FormatViewNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatViewNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6E3A4F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    v6 = off_1F51AF338[0]();
    sub_1D5E02AFC(v6, v4);
    if (v2)
    {
      goto LABEL_25;
    }

    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_4:
      v8 = *(a1 + 24);
      if (!v8)
      {
        goto LABEL_10;
      }

LABEL_5:
      v9 = off_1F51AF338[0]();
      sub_1D5E02AFC(v9, v8);
      if (!v2)
      {

        goto LABEL_10;
      }

LABEL_25:
      sub_1D62B49F0(a1);
    }
  }

  v10 = off_1F51AF338[0]();
  sub_1D5E02AFC(v10, v7);
  if (v2)
  {
    goto LABEL_25;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_10:
  v11 = *(a1 + 32);
  if (v11 <= 1)
  {
    if (*(a1 + 32))
    {
      v12 = MEMORY[0x1E69797D8];
    }

    else
    {
      v12 = MEMORY[0x1E69797E8];
    }
  }

  else if (v11 == 2)
  {
    v12 = MEMORY[0x1E69797E0];
  }

  else
  {
    if (v11 != 3)
    {
      v22 = 0;
      v13 = *(a1 + 40);
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v12 = MEMORY[0x1E69797F0];
  }

  v22 = *v12;
  v13 = *(a1 + 40);
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_19:
  v14 = off_1F51AF338[0]();
  sub_1D5E02AFC(v14, v13);
  if (v2)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_22:
  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = off_1F51AF338[0]();
    sub_1D5E02AFC(v16, v15);
    v17 = v22;
    if (v2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v17 = v22;
  }

  v19 = *(a1 + 72);
  if (v19 == 255)
  {
    sub_1D62B49F0(a1);
  }

  else
  {
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = v19 & 1;
    v21 = off_1F51AF338[0];
    sub_1D5E04CC4(v23);
    v20 = (v21)(v5, &off_1F51AF328);

    FormatBoolean.value(contextLayoutOptions:)(v20);

    if (v2)
    {

      sub_1D62B49F0(a1);
      return sub_1D5D2F2C4(v23, v24, v25);
    }

    sub_1D62B49F0(a1);
    sub_1D5D2F2C4(v23, v24, v25);
  }

  return sub_1D725D47C();
}

uint64_t sub_1D6E3A954(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v7 = v6();
    sub_1D5E02AFC(v7, v5);
    if (v2)
    {
      goto LABEL_10;
    }
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    v8 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v9 = v8();
    sub_1D5E02AFC(v9, v26);
    if (v2)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 24);
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v10 = *(a1 + 24);
  if (v10)
  {
LABEL_9:
    v11 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v12 = v11();
    sub_1D5E02AFC(v12, v10);
    if (!v2)
    {

      goto LABEL_14;
    }

LABEL_10:

LABEL_11:
    sub_1D62B49F0(a1);
    return sub_1D6E3D9D4(a2, type metadata accessor for FormatDecorationContext);
  }

LABEL_14:
  v14 = *(a1 + 32);
  if (v14 <= 1)
  {
    if (*(a1 + 32))
    {
      v15 = MEMORY[0x1E69797D8];
    }

    else
    {
      v15 = MEMORY[0x1E69797E8];
    }

    goto LABEL_22;
  }

  if (v14 == 2)
  {
    v15 = MEMORY[0x1E69797E0];
    goto LABEL_22;
  }

  if (v14 == 3)
  {
    v15 = MEMORY[0x1E69797F0];
LABEL_22:
    v25 = *v15;
    goto LABEL_23;
  }

  v25 = 0;
LABEL_23:
  v16 = *(a1 + 40);
  if (v16 && (v17 = off_1F513B080[0], type metadata accessor for FormatDecorationContext(), v18 = v17(), sub_1D5E02AFC(v18, v16), , v2) || (v19 = *(a1 + 48)) != 0 && (v20 = off_1F513B080[0], type metadata accessor for FormatDecorationContext(), v21 = v20(), sub_1D5E02AFC(v21, v19), , v2))
  {

    goto LABEL_11;
  }

  v22 = *(a1 + 72);
  if (v22 == 255)
  {
    sub_1D62B49F0(a1);
LABEL_35:
    sub_1D725D47C();
    return sub_1D6E3D9D4(a2, type metadata accessor for FormatDecorationContext);
  }

  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = v22 & 1;
  v23 = off_1F513B080[0];
  sub_1D5E04CC4(v27);
  type metadata accessor for FormatDecorationContext();
  v24 = v23();
  FormatBoolean.value(contextLayoutOptions:)(v24);

  if (!v2)
  {
    sub_1D62B49F0(a1);
    sub_1D5D2F2C4(v27, v28, v29);
    goto LABEL_35;
  }

  sub_1D62B49F0(a1);
  sub_1D6E3D9D4(a2, type metadata accessor for FormatDecorationContext);
  return sub_1D5D2F2C4(v27, v28, v29);
}

uint64_t sub_1D6E3ADA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      swift_retain_n();
      sub_1D6E3ADA8(a1, v13);

      if (v3)
      {
      }

      else
      {
        v22 = v25;

        sub_1D6E3ADA8(a1, v14);

        v23 = v25;
        result = swift_allocObject();
        *(result + 16) = v22;
        *(result + 24) = v23;
        *a3 = result | 0x8000000000000000;
      }
    }

    else
    {
      v20 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5FBB054(&v25, a1, v20, v21);
      sub_1D6E3ADA8(a1, v25);
    }
  }

  else
  {
    v16 = v10;
    v17 = *(a2 + 16);

    sub_1D6D4FCF8(a1, v17, v12);

    if (!v3)
    {
      v18 = swift_allocBox();
      result = (*(v8 + 32))(v19, v12, v16);
      *a3 = v18;
    }
  }

  return result;
}

uint64_t sub_1D6E3B000@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      swift_retain_n();
      sub_1D6E3B000(a1, v13);

      if (v3)
      {
      }

      else
      {
        v22 = v25;

        sub_1D6E3B000(a1, v14);

        v23 = v25;
        result = swift_allocObject();
        *(result + 16) = v22;
        *(result + 24) = v23;
        *a3 = result | 0x8000000000000000;
      }
    }

    else
    {
      v20 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5FA09B8(v20, v21, &v25);
      sub_1D6E3B000(a1, v25);
    }
  }

  else
  {
    v16 = v10;
    v17 = *(a2 + 16);

    sub_1D6D505B4(a1, v17, v12);

    if (!v3)
    {
      v18 = swift_allocBox();
      result = (*(v8 + 32))(v19, v12, v16);
      *a3 = v18;
    }
  }

  return result;
}

uint64_t FormatViewNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatViewNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatViewNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatViewNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

unint64_t FormatViewNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatViewNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

void FormatViewNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
}

uint64_t sub_1D6E3B588(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t FormatViewNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t FormatViewNode.name.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t FormatViewNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatViewNode.__allocating_init(identifier:size:resize:adjustments:style:animation:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:name:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, char a10, uint64_t *a11, __int128 a12, uint64_t a13, __int128 *a14)
{
  v20 = swift_allocObject();
  v21 = *a3;
  v22 = *a4;
  v23 = *a9;
  v27 = *a11;
  v24 = *(a11 + 8);
  v30 = *(a14 + 5);
  v31 = *(a14 + 4);
  swift_beginAccess();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  swift_beginAccess();
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  swift_beginAccess();
  *(v20 + 72) = a8;
  swift_beginAccess();
  *(v20 + 80) = v23;
  swift_beginAccess();
  *(v20 + 88) = a10;
  *(v20 + 96) = v27;
  *(v20 + 104) = v24;
  swift_beginAccess();
  *(v20 + 112) = a12;
  *(v20 + 128) = a13;
  v25 = *a14;
  *(v20 + 152) = a14[1];
  *(v20 + 136) = v25;
  *(v20 + 168) = v31;
  *(v20 + 176) = v30;
  return v20;
}

uint64_t FormatViewNode.init(identifier:size:resize:adjustments:style:animation:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:name:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, char a10, uint64_t *a11, __int128 a12, uint64_t a13, __int128 *a14)
{
  v20 = *a3;
  v21 = *a4;
  v22 = *a9;
  v27 = *a11;
  v26 = *(a11 + 8);
  v28 = *(a14 + 5);
  v29 = *(a14 + 4);
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v20;
  *(v14 + 40) = v21;
  swift_beginAccess();
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;
  swift_beginAccess();
  *(v14 + 72) = a8;
  swift_beginAccess();
  *(v14 + 80) = v22;
  swift_beginAccess();
  *(v14 + 88) = a10;
  *(v14 + 96) = v27;
  *(v14 + 104) = v26;
  swift_beginAccess();
  *(v14 + 112) = a12;
  *(v14 + 128) = a13;
  v23 = *a14;
  *(v14 + 152) = a14[1];
  *(v14 + 136) = v23;
  *(v14 + 168) = v29;
  *(v14 + 176) = v28;
  return v14;
}

uint64_t FormatViewNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB15C4(*(v0 + 80));

  sub_1D5EB2398(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t FormatViewNode.__deallocating_deinit()
{
  FormatViewNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6E3BA78(uint64_t a1, uint64_t a2)
{
  result = sub_1D6E3D928(&qword_1EC896F00, a2, type metadata accessor for FormatViewNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6E3BAD0(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6E3D928(&qword_1EDF31DA0, a2, type metadata accessor for FormatViewNode);
  a1[2] = sub_1D6E3D928(&qword_1EDF11B28, v3, type metadata accessor for FormatViewNode);
  result = sub_1D6E3D928(&qword_1EC896F08, v4, type metadata accessor for FormatViewNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6E3BBAC(uint64_t a1, uint64_t a2)
{
  result = sub_1D6E3D928(&qword_1EC896F10, a2, type metadata accessor for FormatViewNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6E3BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v60 = a8;
  v61 = a5;
  v59 = a2;
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v58 = v15;
  v63 = *(v15 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v62 = &v47 - v18;
  sub_1D6BB646C(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v65 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (&v47 - v22);
  v68 = a1;
  KeyPath = swift_getKeyPath();
  swift_unownedRetainStrong();
  v25 = *(a6 + 32);
  sub_1D5C82CD8(v25);

  v67 = v25;
  v64 = a7;
  v26 = a7;
  v27 = a3;
  v28 = a3;
  v29 = a4;
  v30 = v66;
  sub_1D5BEB9F4(v26, v28, a4, v23);
  sub_1D5C92A8C(v67);
  if (!v30)
  {
    v52 = v16;
    v32 = v62;
    v33 = v63;
    v56 = v23;
    v57 = KeyPath;
    v66 = v20;
    v54 = v27;
    v55 = v29;
    swift_unownedRetainStrong();
    swift_beginAccess();
    v34 = *(a6 + 48);

    v35 = v64;
    v53 = sub_1D618EFB4(v64, v34);
    v50 = a9;
    v51 = a10;

    v36 = v33;
    v37 = v32;
    v38 = v58;
    (*(v33 + 16))(v32, v59, v58);
    v39 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v49 = (v52 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v59 = 0;
    *(v41 + 16) = v60;
    *(v41 + 24) = v35;
    (*(v36 + 32))(v41 + v39, v37, v38);
    v42 = v50;
    v43 = (v41 + v49);
    v44 = v55;
    *v43 = v54;
    v43[1] = v44;
    v45 = v51;
    *(v41 + v52) = a6;
    *(v41 + v48) = v42;
    *(v41 + v40) = v45;

    swift_unownedRetain();
    sub_1D5EB563C(0);
    sub_1D6E3D928(&qword_1EDF3C118, 255, sub_1D5EB563C);

    v46 = v56;
    sub_1D7259B1C();
    (*(v65 + 8))(v46, v66);
  }
}

uint64_t sub_1D6E3C07C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, double a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>)
{
  v76 = a8;
  v81 = a7;
  v83 = a4;
  v80 = a3;
  v79 = a9;
  sub_1D6047B58();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v77 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v72 - v26;
  v28 = type metadata accessor for FormatNodeStateData.Data();
  v75 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FormatViewData(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60863A8();
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = (&v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = a2;
  v40 = v82;
  result = sub_1D6E3C82C(a1, a2, v80, v83, a5, a6, v81, v39, a10, a11, a12, a13);
  if (v40)
  {
    return result;
  }

  v80 = a1;
  v82 = 0;
  sub_1D6E3DA9C(v39, v35, sub_1D60863A8);
  v74 = v35;
  sub_1D6E3DA9C(v35, v31, type metadata accessor for FormatViewData);
  swift_storeEnumTagMultiPayload();
  sub_1D6E3DA9C(v31, v27, type metadata accessor for FormatNodeStateData.Data);
  (*(v75 + 56))(v27, 0, 1, v28);
  v42 = v77;
  sub_1D6E3DA9C(v27, v77, sub_1D6047B58);
  swift_beginAccess();

  v81 = a5;
  sub_1D6D60A18(v42, v83, a5);
  swift_endAccess();
  sub_1D6E3D9D4(v27, sub_1D6047B58);
  sub_1D6E3D9D4(v31, type metadata accessor for FormatNodeStateData.Data);
  v43 = v78;
  v44 = *(v78 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v46 = *(a6 + 16);
  v45 = *(a6 + 24);

  v47 = *(v44 + 40);
  if (v47)
  {
    v85 = *(v44 + 32);
    v86 = v47;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v46, v45);

    v46 = v85;
    v45 = v86;
  }

  v77 = v46;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v48 = *(a6 + 24);
  v75 = *(a6 + 16);
  v76 = v48;

  swift_unownedRetainStrong();
  v49 = *(a6 + 40);

  v73 = v39;
  if (!v49)
  {
    goto LABEL_8;
  }

  v50 = *(v49 + 16);
  swift_beginAccess();
  if (!*(*(v50 + 16) + 16))
  {

LABEL_8:
    v50 = 0;
    goto LABEL_9;
  }

LABEL_9:
  swift_unownedRetainStrong();
  swift_beginAccess();
  v51 = *(a6 + 72);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v52 = *(a6 + 80);
  sub_1D5EB1500(v52);

  v84 = v52;
  sub_1D615B4A8(v43, &v87);
  sub_1D5EB15C4(v84);
  v53 = v87;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v54 = *(a6 + 88);

  swift_unownedRetainStrong();
  v55 = *(a6 + 96);
  v56 = *(a6 + 104);

  type metadata accessor for FormatViewNodeLayoutAttributes();
  v57 = swift_allocObject();
  v58 = v81;
  *(v57 + 16) = v83;
  *(v57 + 24) = v58;
  *(v57 + 32) = v77;
  *(v57 + 40) = v45;
  v59 = v76;
  *(v57 + 48) = v75;
  *(v57 + 56) = v59;
  *(v57 + 64) = a10;
  *(v57 + 72) = a11;
  *(v57 + 80) = a12;
  *(v57 + 88) = a13;
  v60 = v80;
  *(v57 + 96) = v80;
  *(v57 + 104) = v50;
  *(v57 + 112) = v51;
  *(v57 + 120) = v53;
  *(v57 + 128) = v54;
  *(v57 + 136) = v55;
  *(v57 + 144) = v56;
  if (v60)
  {
    v61 = v60;
    sub_1D6E3D970(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v63 = inited;
    *(inited + 16) = xmmword_1D7273AE0;
    v64 = *(v61 + 64);
    v65 = v79;
    v66 = v74;
    v67 = v73;
    if ((~v64 & 0xF000000000000007) != 0)
    {
      v70 = &protocol witness table for FormatBackground;
      v69 = &type metadata for FormatBackground;
      v68 = *(v61 + 64);
    }

    else
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v68;
    *(inited + 56) = v69;
    *(inited + 64) = v70;

    sub_1D5D04BD4(v64);
    v71 = sub_1D6E27AC0(v63);
    swift_setDeallocating();
    sub_1D6E3D9D4(v63 + 32, sub_1D60D65D0);
  }

  else
  {

    v71 = MEMORY[0x1E69E7CD0];
    v65 = v79;
    v66 = v74;
    v67 = v73;
  }

  sub_1D6E3D9D4(v66, type metadata accessor for FormatViewData);
  sub_1D6E3D9D4(v67, sub_1D60863A8);
  result = swift_allocObject();
  *(v57 + 152) = v71;
  *(result + 16) = v57;
  *v65 = result | 4;
  return result;
}

uint64_t sub_1D6E3C82C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>, double a9@<D0>, double a10@<D1>, CGFloat a11@<D2>, CGFloat a12@<D3>)
{
  v143 = a5;
  v144 = a6;
  v142 = a4;
  v145 = a3;
  v147 = a2;
  v165 = a8;
  v146 = *a7;
  *&v140 = sub_1D725D5FC();
  *&v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v19);
  v21 = v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormatViewBackground.SplitBackground(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v141 = v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FormatViewBackground.Mica(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6E3D970(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = v136 - v31;
  if (!a1)
  {
    goto LABEL_4;
  }

  v33 = *(a1 + 64);
  if ((~v33 & 0xF000000000000007) == 0)
  {
    goto LABEL_4;
  }

  v34 = v33 >> 61;
  if ((v33 >> 61) <= 3)
  {
    goto LABEL_4;
  }

  if (v34 <= 5)
  {
    v37 = v33 & 0x1FFFFFFFFFFFFFFFLL;
    if (v34 == 4)
    {
      v38 = *(v37 + 144);
      *&v160[112] = *(v37 + 128);
      *&v160[128] = v38;
      *&v160[144] = *(v37 + 160);
      *&v160[153] = *(v37 + 169);
      v39 = *(v37 + 80);
      *&v160[48] = *(v37 + 64);
      *&v160[64] = v39;
      v40 = *(v37 + 112);
      *&v160[80] = *(v37 + 96);
      *&v160[96] = v40;
      v41 = *(v37 + 32);
      *v160 = *(v37 + 16);
      *&v160[16] = v41;
      *&v160[32] = *(v37 + 48);
      v147 = v41;
      v150 = a7;
      v42 = off_1F51AF338[0];
      sub_1D62B4F54(v160, &v152);
      v43 = v42();
      v44 = sub_1D5E02AFC(v43, v147);
      if (v12)
      {
        sub_1D62B4FB0(v160);
      }

      else
      {
        v45 = v44;

        v46 = *&v160[24];
        *&v152 = a7;
        v147 = off_1F51AF338;
        v47 = v42();
        v48 = sub_1D5E02AFC(v47, v46);

        v49 = *v160;
        v145 = *&v160[8];
        *&v152 = a7;

        v50 = v42();
        sub_1D5E02AFC(v50, v49);

        *&v152 = a7;
        v78 = v145;

        v79 = v42();
        sub_1D5E02AFC(v79, v78);

        sub_1D725D5EC();
        sub_1D60FB55C(&v160[32], &v152);
        sub_1D60FB55C(&v160[104], &v152);
        sub_1D62B4FB0(v160);
        v126 = v141;
        (*(v139 + 32))(v141, v21, v140);
        *(v126 + v22[5]) = v45;
        *(v126 + v22[6]) = v48;
        v127 = v126 + v22[7];
        v128 = *&v160[80];
        *(v127 + 32) = *&v160[64];
        *(v127 + 48) = v128;
        *(v127 + 64) = v160[96];
        v129 = *&v160[48];
        *v127 = *&v160[32];
        *(v127 + 16) = v129;
        v130 = v126 + v22[8];
        v131 = *&v160[104];
        *(v130 + 64) = v160[168];
        v132 = *&v160[152];
        *(v130 + 32) = *&v160[136];
        *(v130 + 48) = v132;
        v133 = *&v160[120];
        *v130 = v131;
        *(v130 + 16) = v133;
        v134 = v165;
        sub_1D6E3DA34(v126, v165, type metadata accessor for FormatViewBackground.SplitBackground);
        v135 = type metadata accessor for FormatViewBackground(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
      }
    }

    v57 = *(v37 + 16);
    v58 = *(v37 + 24);
    v59 = v147;
    v60 = (*(v147 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v61 = *v60;
    v62 = v60[1];
    swift_retain_n();

    v63 = sub_1D6FBB580(v58, v59, v61, v62);
    if (v12)
    {
    }

    v66 = v63;

    if (v66)
    {
      v67 = *(v66 + 31);
      v68 = *(v66 + 32);
      if (v67)
      {
        if (v67 == 1)
        {
          v141 = v66;
          v146 = 0;
          v69 = 0;
          v70 = 0;
          LOBYTE(v66) = 0;
LABEL_22:
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          goto LABEL_31;
        }

        sub_1D62B5D88(*(v66 + 31));

        v71 = sub_1D6E7C848(0.0, 0.0, a11, a12, v59, v67);
        v72 = v80;
        v73 = v81;
        v74 = v82;
      }

      else
      {

        v71 = 0.0;
        v72 = 0.0;
        v73 = a11;
        v74 = a12;
      }

      if (v68)
      {

        *&v83 = sub_1D6E7C848(0.0, 0.0, v73, v74, v59, v68);
        v141 = v66;
        v146 = 0;
        v139 = v84;
        v140 = v83;
        v137 = v85;
        v138 = v86;

        *&v88 = v139;
        *&v87 = v140;
        *(&v87 + 1) = v137;
        *(&v88 + 1) = v138;
      }

      else
      {
        v141 = v66;
        v146 = 0;
        v87 = 0uLL;
        v88 = 0uLL;
      }

      v161[0] = v87;
      v161[1] = v88;
      v162 = v68 == 0;
      sub_1D69FD714(v161, v160, v71, v72, v73, v74);
      sub_1D62B5D44(v67);
      v139 = *&v160[16];
      v140 = *v160;
      v137 = *&v160[48];
      v138 = *&v160[32];
      v69 = *&v160[64];
      v70 = *&v160[72];
      LOBYTE(v66) = v160[80];
LABEL_31:
      v89 = v147;
      sub_1D7259F1C();
      v91 = v90;
      v92 = sub_1D7259EBC();
      type metadata accessor for FormatImageNodeContext();
      v93 = swift_allocObject();
      *(v93 + 16) = a11;
      *(v93 + 24) = a12;
      *(v93 + 32) = v91;
      *(v93 + 40) = v92;
      v94 = v139;
      *(v93 + 48) = v140;
      *(v93 + 64) = v94;
      v95 = v137;
      *(v93 + 80) = v138;
      *(v93 + 96) = v95;
      *(v93 + 112) = v69;
      *(v93 + 120) = v70;
      *(v93 + 128) = v66;
      *v160 = v57;

      v96 = v146;
      sub_1D6F7D724(v89, v145, v93, &v149);
      if (v96)
      {
      }

      v145 = v93;
      v146 = 0;

      *&v140 = v149;
      *v160 = 0;
      *&v160[8] = 0xE000000000000000;
      sub_1D7263D4C();
      v97 = v143;

      *v160 = v142;
      *&v160[8] = v97;
      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73F4920);
      v142 = *&v160[8];
      v143 = *v160;
      *v160 = 0;
      *&v160[8] = 0xE000000000000000;
      sub_1D7263D4C();
      v98 = *(v89 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
      v99 = v144;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v101 = *(v99 + 16);
      v100 = *(v99 + 24);

      v102 = *(v98 + 40);
      v136[1] = v58;
      if (v102)
      {
        v150 = *(v98 + 32);
        v151 = v102;

        MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
        MEMORY[0x1DA6F9910](v101, v100);

        v101 = v150;
        v100 = v151;
      }

      else
      {
      }

      v150 = v101;
      v151 = v100;
      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73F4920);
      v104 = v150;
      v103 = v151;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v106 = *(v99 + 16);
      v105 = *(v99 + 24);

      swift_unownedRetainStrong();
      v107 = *(v99 + 40);

      v147 = v103;
      *&v139 = v106;
      if (v107)
      {
        v108 = *(v107 + 16);
        swift_beginAccess();
        if (*(*(v108 + 16) + 16))
        {

LABEL_41:
          swift_unownedRetainStrong();
          swift_beginAccess();
          v109 = *(v99 + 88);

          swift_unownedRetainStrong();
          v110 = v99;
          v111 = *(v99 + 120);
          v112 = *(v110 + 128);

          type metadata accessor for FormatImageNodeLayoutAttributes();
          v113 = swift_allocObject();
          v114 = v142;
          *(v113 + 16) = v143;
          *(v113 + 24) = v114;
          v115 = v147;
          *(v113 + 32) = v104;
          *(v113 + 40) = v115;
          *(v113 + 48) = v139;
          *(v113 + 56) = v105;
          *(v113 + 64) = a9;
          *(v113 + 72) = a10;
          *(v113 + 80) = a11;
          *(v113 + 88) = a12;
          v116 = v141;
          *(v113 + 96) = v141;
          *(v113 + 104) = v108;
          *(v113 + 112) = xmmword_1D735A320;
          *(v113 + 128) = v109;
          *(v113 + 136) = 0;
          *(v113 + 144) = -2;
          *(v113 + 152) = v111;
          *(v113 + 160) = v112;
          *(v113 + 129) = 0;
          if (v116)
          {
            sub_1D6E3D970(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
            v117 = swift_allocObject();
            v118 = v117;
            *(v117 + 16) = xmmword_1D7273AE0;
            v119 = *(v116 + 9);
            if ((~v119 & 0xF000000000000007) != 0)
            {
              v122 = &protocol witness table for FormatBackground;
              v121 = &type metadata for FormatBackground;
              v120 = *(v116 + 9);
            }

            else
            {
              v120 = 0;
              v121 = 0;
              v122 = 0;
              *(v117 + 40) = 0;
              *(v117 + 48) = 0;
            }

            *(v117 + 32) = v120;
            *(v117 + 56) = v121;
            *(v117 + 64) = v122;

            sub_1D5D04BD4(v119);
            v123 = sub_1D6E27AC0(v118);
            swift_setDeallocating();
            sub_1D6E3D9D4(v118 + 32, sub_1D60D65D0);
            swift_deallocClassInstance();
          }

          else
          {
            v123 = MEMORY[0x1E69E7CD0];
          }

          *(v113 + 168) = v123;
          v124 = v165;
          *v165 = v140;
          v124[1] = v113;
          v125 = type metadata accessor for FormatViewBackground(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
        }
      }

      v108 = 0;
      goto LABEL_41;
    }

    v141 = 0;
    v146 = 0;
    v69 = 0;
    v70 = 0;
    goto LABEL_22;
  }

  if (v34 != 6)
  {
LABEL_4:
    v35 = type metadata accessor for FormatViewBackground(0);
    return (*(*(v35 - 8) + 56))(v165, 1, 1, v35);
  }

  v51 = v33 & 0x1FFFFFFFFFFFFFFFLL;
  v52 = *(v51 + 128);
  *&v160[96] = *(v51 + 112);
  *&v160[112] = v52;
  *&v160[128] = *(v51 + 144);
  v160[144] = *(v51 + 160);
  v53 = *(v51 + 64);
  *&v160[32] = *(v51 + 48);
  *&v160[48] = v53;
  v54 = *(v51 + 96);
  *&v160[64] = *(v51 + 80);
  *&v160[80] = v54;
  v55 = *(v51 + 32);
  *v160 = *(v51 + 16);
  *&v160[16] = v55;
  v56 = *v160;
  sub_1D62B4EA4(v160, &v152);

  sub_1D6E3ADA8(v147, v56, v148);
  if (v12)
  {
    sub_1D62B4F00(v160);
  }

  else
  {

    v64 = v148[0];
    v158 = *&v160[104];
    v159[0] = *&v160[120];
    *(v159 + 9) = *&v160[129];
    v154 = *&v160[40];
    v155 = *&v160[56];
    v156 = *&v160[72];
    v157 = *&v160[88];
    v152 = *&v160[8];
    v153 = *&v160[24];
    if (sub_1D60486AC(&v152) == 1)
    {
      v65 = 1;
    }

    else
    {
      v163[5] = v157;
      v163[6] = v158;
      v164[0] = v159[0];
      *(v164 + 9) = *(v159 + 9);
      v163[2] = v154;
      v163[3] = v155;
      v163[4] = v156;
      v163[0] = v152;
      v163[1] = v153;
      sub_1D6E3DA9C(&v160[8], &v150, sub_1D6047E8C);

      sub_1D6E3A4F0(v163, a7);
      v65 = 0;
    }

    sub_1D62B4F00(v160);
    v75 = sub_1D725D4AC();
    (*(*(v75 - 8) + 56))(v32, v65, 1, v75);
    sub_1D688DA08(v32, v28 + *(v25 + 20));
    *v28 = v64;
    v76 = v165;
    sub_1D6E3DA34(v28, v165, type metadata accessor for FormatViewBackground.Mica);
    v77 = type metadata accessor for FormatViewBackground(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
  }
}

uint64_t sub_1D6E3D818@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v13 = (*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D6E3C07C(*(v5 + 16), *(v5 + 24), v5 + v12, *(v5 + v13), *(v5 + v13 + 8), *(v5 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a1, a2, a3, a4, a5);
}

uint64_t sub_1D6E3D928(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D6E3D970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6E3D9D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6E3DA34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E3DA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id CGFloat.number.getter(double a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v3 = v1;

  return [v2 initWithFloat_];
}

id Int.number.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInteger_];
}

double sub_1D6E3DB94@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

double sub_1D6E3DBA8(double *a1, double *a2)
{
  result = *a1 / *a2;
  *a1 = result;
  return result;
}

id sub_1D6E3DBBC()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v3 = v1;

  return [v2 initWithFloat_];
}

unint64_t sub_1D6E3DC08(uint64_t a1)
{
  result = sub_1D6E3DC30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E3DC30()
{
  result = qword_1EDF3BEC0;
  if (!qword_1EDF3BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BEC0);
  }

  return result;
}

void *sub_1D6E3DC84@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    if (*result != 0x8000000000000000 || v3 != -1)
    {
      *a3 = *result / v3;
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

uint64_t *sub_1D6E3DCB4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *result;
    if (v2 != -1 || v3 != 0x8000000000000000)
    {
      *result = v3 / v2;
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

id sub_1D6E3DCE4()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInteger_];
}

void __swiftcall CategoryColorPalette.init(foregroundColor:backgroundColor:selectedForegroundColor:selectedBackgroundColor:pillForegroundColor:pillBackgroundColor:pillSelectedForegroundColor:pillSelectedBackgroundColor:)(NewsFeed::CategoryColorPalette *__return_ptr retstr, UIColor foregroundColor, UIColor backgroundColor, UIColor selectedForegroundColor, UIColor selectedBackgroundColor, UIColor pillForegroundColor, UIColor pillBackgroundColor, UIColor pillSelectedForegroundColor, UIColor pillSelectedBackgroundColor)
{
  retstr->foregroundColor = foregroundColor;
  retstr->backgroundColor = backgroundColor;
  retstr->selectedForegroundColor = selectedForegroundColor;
  retstr->selectedBackgroundColor = selectedBackgroundColor;
  retstr->pillForegroundColor = pillForegroundColor;
  retstr->pillBackgroundColor = pillBackgroundColor;
  retstr->pillSelectedForegroundColor = pillSelectedForegroundColor;
  retstr->pillSelectedBackgroundColor = pillSelectedBackgroundColor;
}

void sub_1D6E3DDBC()
{
  v0 = objc_opt_self();
  v12 = [v0 labelColor];
  v11 = [v0 clearColor];
  v10 = [v0 systemPinkColor];
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = [v0 labelColor];
  v3 = [v0 secondarySystemBackgroundColor];
  v4 = [v0 whiteColor];
  v5 = [v0 blackColor];
  v6 = [v0 ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

  v7 = [v0 blackColor];
  v8 = [v0 whiteColor];
  v9 = [v0 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

  *&xmmword_1EDF0F420 = v12;
  *(&xmmword_1EDF0F420 + 1) = v11;
  qword_1EDF0F430 = v10;
  unk_1EDF0F438 = v1;
  *&xmmword_1EDF0F440 = v2;
  *(&xmmword_1EDF0F440 + 1) = v3;
  qword_1EDF0F450 = v6;
  unk_1EDF0F458 = v9;
}

uint64_t static CategoryColorPalette.default.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDF0F418 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EDF0F430;
  v7[0] = xmmword_1EDF0F420;
  v7[1] = *&qword_1EDF0F430;
  v2 = xmmword_1EDF0F440;
  v3 = *&qword_1EDF0F450;
  v7[2] = xmmword_1EDF0F440;
  v7[3] = *&qword_1EDF0F450;
  *a1 = xmmword_1EDF0F420;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D6E3E010(v7, &v6);
}

uint64_t FormatWeatherConditionCode.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6F64616E726F74;
      break;
    case 2:
      result = 0x6C616369706F7274;
      break;
    case 3:
      result = 0x6E61636972727568;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x737265646E756874;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
    case 0xB:
      result = 0x676E697A65657266;
      break;
    case 0xA:
      result = 0x656C7A7A697264;
      break;
    case 0xC:
      result = 0x737265776F6873;
      break;
    case 0xD:
      result = 1852399986;
      break;
    case 0xE:
      result = 0x72756C46776F6E73;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0x53676E69776F6C62;
      break;
    case 0x11:
      result = 2003791475;
      break;
    case 0x12:
      result = 1818845544;
      break;
    case 0x13:
      result = 0x7465656C73;
      break;
    case 0x14:
      result = 1953723748;
      break;
    case 0x15:
      result = 0x7967676F66;
      break;
    case 0x16:
      result = 1702519144;
      break;
    case 0x17:
      result = 0x796B6F6D73;
      break;
    case 0x18:
      result = 0x7972657473756C62;
      break;
    case 0x19:
      result = 0x79646E6977;
      break;
    case 0x1A:
      result = 1684828003;
      break;
    case 0x1B:
      result = 0x7964756F6C63;
      break;
    case 0x1C:
      v2 = 1953722221;
      goto LABEL_43;
    case 0x1D:
      v2 = 1953653104;
LABEL_43:
      result = v2 | 0x6C43796C00000000;
      break;
    case 0x1E:
      result = 0x7261656C63;
      break;
    case 0x1F:
      result = 0x6C43796C74736F6DLL;
      break;
    case 0x20:
      result = 0xD000000000000010;
      break;
    case 0x21:
      result = 7630696;
      break;
    case 0x22:
      result = 0xD000000000000015;
      break;
    case 0x23:
    case 0x29:
      result = 0xD000000000000016;
      break;
    case 0x24:
      result = 0xD000000000000010;
      break;
    case 0x25:
      result = 0x6961527976616568;
      break;
    case 0x26:
      result = 0xD000000000000014;
      break;
    case 0x27:
      result = 0x6F6E537976616568;
      break;
    case 0x28:
      result = 0x6472617A7A696C62;
      break;
    case 0x2A:
      result = 0x7453676E6F727473;
      break;
    case 0x2B:
      result = 0x7272756C466E7573;
      break;
    case 0x2C:
      result = 0x65776F68536E7573;
      break;
    case 0x2D:
      result = 0x694D7972746E6977;
      break;
    default:
      return result;
  }

  return result;
}

NewsFeed::FormatWeatherConditionCode_optional __swiftcall FormatWeatherConditionCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 28;
  switch(v3)
  {
    case 0:
      goto LABEL_46;
    case 1:
      v5 = 1;
      goto LABEL_46;
    case 2:
      v5 = 2;
      goto LABEL_46;
    case 3:
      v5 = 3;
      goto LABEL_46;
    case 4:
      v5 = 4;
      goto LABEL_46;
    case 5:
      v5 = 5;
      goto LABEL_46;
    case 6:
      v5 = 6;
      goto LABEL_46;
    case 7:
      v5 = 7;
      goto LABEL_46;
    case 8:
      v5 = 8;
      goto LABEL_46;
    case 9:
      v5 = 9;
      goto LABEL_46;
    case 10:
      v5 = 10;
      goto LABEL_46;
    case 11:
      v5 = 11;
      goto LABEL_46;
    case 12:
      v5 = 12;
      goto LABEL_46;
    case 13:
      v5 = 13;
      goto LABEL_46;
    case 14:
      v5 = 14;
      goto LABEL_46;
    case 15:
      v5 = 15;
      goto LABEL_46;
    case 16:
      v5 = 16;
      goto LABEL_46;
    case 17:
      v5 = 17;
      goto LABEL_46;
    case 18:
      v5 = 18;
      goto LABEL_46;
    case 19:
      v5 = 19;
      goto LABEL_46;
    case 20:
      v5 = 20;
      goto LABEL_46;
    case 21:
      v5 = 21;
      goto LABEL_46;
    case 22:
      v5 = 22;
      goto LABEL_46;
    case 23:
      v5 = 23;
      goto LABEL_46;
    case 24:
      v5 = 24;
      goto LABEL_46;
    case 25:
      v5 = 25;
      goto LABEL_46;
    case 26:
      v5 = 26;
      goto LABEL_46;
    case 27:
      v5 = 27;
LABEL_46:
      v6 = v5;
      break;
    case 28:
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    default:
      v6 = 46;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D6E3E6D0()
{
  v0 = FormatWeatherConditionCode.rawValue.getter();
  v2 = v1;
  if (v0 == FormatWeatherConditionCode.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6E3E76C()
{
  sub_1D7264A0C();
  FormatWeatherConditionCode.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E3E7D4()
{
  FormatWeatherConditionCode.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D6E3E838()
{
  sub_1D7264A0C();
  FormatWeatherConditionCode.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E3E8A8@<X0>(uint64_t *a1@<X8>)
{
  result = FormatWeatherConditionCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D6E3E980()
{
  result = qword_1EC896F18;
  if (!qword_1EC896F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896F18);
  }

  return result;
}

unint64_t sub_1D6E3E9D4(uint64_t a1)
{
  *(a1 + 8) = sub_1D6E3EA04();
  result = sub_1D6E3EA58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6E3EA04()
{
  result = qword_1EC896F20;
  if (!qword_1EC896F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896F20);
  }

  return result;
}

unint64_t sub_1D6E3EA58()
{
  result = qword_1EC896F28;
  if (!qword_1EC896F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896F28);
  }

  return result;
}

unint64_t sub_1D6E3EAAC(uint64_t a1)
{
  result = sub_1D6E3EAD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E3EAD4()
{
  result = qword_1EC896F30;
  if (!qword_1EC896F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896F30);
  }

  return result;
}

unint64_t sub_1D6E3EB28(void *a1)
{
  a1[1] = sub_1D6E3EB60();
  a1[2] = sub_1D6E3EBB4();
  result = sub_1D6E3E980();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E3EB60()
{
  result = qword_1EC896F38;
  if (!qword_1EC896F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896F38);
  }

  return result;
}

unint64_t sub_1D6E3EBB4()
{
  result = qword_1EC896F40;
  if (!qword_1EC896F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896F40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatWeatherConditionCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatWeatherConditionCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t GapViewRenderer.render(context:with:in:)(void *a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC8NewsFeed7GapView_activityIndicatorView);
  [v4 setFrame_];
  v5 = a1[10];
  v6 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v5);
  return (*(v6 + 8))(v4, v5, v6);
}

uint64_t sub_1D6E3EE2C(void *a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC8NewsFeed7GapView_activityIndicatorView);
  [v4 setFrame_];
  v5 = a1[10];
  v6 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v5);
  return (*(v6 + 8))(v4, v5, v6);
}

uint64_t sub_1D6E3EEF4@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v23 = a2;
  sub_1D6E42524(0, qword_1EDF103F0, type metadata accessor for FormatJsonKeyValue);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v22 - v5);
  v7 = type metadata accessor for FormatJsonKeyValue();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v24 = v18;
  v25 = a1;
  do
  {
    v26 = byte_1F50F3730[v16 + 32];
    sub_1D6E405C0(&v26, a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1D67D05C8(v6);
    }

    else
    {
      sub_1D6E424C0(v6, v15);
      sub_1D6E424C0(v15, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D698F454(0, v17[2] + 1, 1, v17);
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1D698F454(v19 > 1, v20 + 1, 1, v17);
      }

      v17[2] = v20 + 1;
      sub_1D6E424C0(v11, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20);
      v7 = v24;
      a1 = v25;
    }

    ++v16;
  }

  while (v16 != 23);
  *v23 = v17;
  type metadata accessor for FormatJson();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E3F16C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x4E746361706D6F63;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6D614E70756F7267;
      break;
    case 6:
      v3 = 0x656372756F73;
      goto LABEL_21;
    case 7:
      result = 0x6E6F6E6143434D55;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0x75467374726F7073;
      break;
    case 14:
      result = 0x694E7374726F7073;
      break;
    case 15:
      v3 = 0x7374726F7073;
LABEL_21:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD00000000000001FLL;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0x656C746974627573;
      break;
    case 20:
      result = 0x656E697A6167616DLL;
      break;
    case 21:
      result = 0x65676175676E616CLL;
      break;
    case 22:
      result = 0x6974616D6F747561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6E3F428(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6E3F16C(*a1);
  v5 = v4;
  if (v3 == sub_1D6E3F16C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6E3F4B0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6E3F16C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E3F514()
{
  sub_1D6E3F16C(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6E3F568()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6E3F16C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E3F5C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6E3F16C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatTagBinding.Text.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6E3F6CC()
{
  result = qword_1EC896F48;
  if (!qword_1EC896F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896F48);
  }

  return result;
}

unint64_t sub_1D6E3F720(uint64_t a1)
{
  result = sub_1D66BE3F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E3F748(void *a1)
{
  a1[1] = sub_1D5CA1374();
  a1[2] = sub_1D66F740C();
  result = sub_1D6E3F6CC();
  a1[3] = result;
  return result;
}

void sub_1D6E3F800()
{
  if (!qword_1EC896F58)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC896F58);
    }
  }
}

unint64_t sub_1D6E3F854()
{
  result = qword_1EC896F60;
  if (!qword_1EC896F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC896F60);
  }

  return result;
}

uint64_t sub_1D6E3F8A8@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  switch(*a1)
  {
    case 1:
      LOBYTE(v120) = 1;
      ObjectType = swift_getObjectType();
      v55 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, ObjectType);
      v57 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v57 = v55 & 0xFFFFFFFFFFFFLL;
      }

      if (v57)
      {
        v58 = MEMORY[0x1E69E6158];
      }

      else
      {

        v55 = 0;
        v56 = 0;
        v58 = 0;
        v122 = 0;
      }

      v120 = v55;
      v121 = v56;
      v123 = v58;
      v115 = a3;
      v116 = 1701667150;
      v114 = 0xE400000000000000;
      goto LABEL_134;
    case 2:
      LOBYTE(v120) = 2;
      v37 = swift_getObjectType();
      v38 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v37);
      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v41 = MEMORY[0x1E69E6158];
      }

      else
      {

        v38 = 0;
        v39 = 0;
        v41 = 0;
        v122 = 0;
      }

      v120 = v38;
      v121 = v39;
      v123 = v41;
      v116 = 0x2079616C70736944;
      goto LABEL_111;
    case 3:
      LOBYTE(v120) = 3;
      v47 = swift_getObjectType();
      v48 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v47);
      v50 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v50 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {
        v51 = MEMORY[0x1E69E6158];
      }

      else
      {

        v48 = 0;
        v49 = 0;
        v51 = 0;
        v122 = 0;
      }

      v120 = v48;
      v121 = v49;
      v123 = v51;
      v116 = 0x20746361706D6F43;
LABEL_111:
      v114 = 0xEC000000656D614ELL;
      goto LABEL_133;
    case 4:
      LOBYTE(v120) = 4;
      v26 = swift_getObjectType();
      v27 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v26);
      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v30 = MEMORY[0x1E69E6158];
      }

      else
      {

        v27 = 0;
        v28 = 0;
        v30 = 0;
        v122 = 0;
      }

      v120 = v27;
      v121 = v28;
      v123 = v30;
      v116 = 0xD000000000000014;
      v114 = 0x80000001D73F4A90;
      goto LABEL_133;
    case 5:
      LOBYTE(v120) = 5;
      v69 = swift_getObjectType();
      v70 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v69);
      v72 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v72 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (v72)
      {
        v73 = MEMORY[0x1E69E6158];
      }

      else
      {

        v70 = 0;
        v71 = 0;
        v73 = 0;
        v122 = 0;
      }

      v120 = v70;
      v121 = v71;
      v123 = v73;
      v116 = 0x614E2070756F7247;
      v115 = a3;
      v114 = 0xEA0000000000656DLL;
      goto LABEL_134;
    case 6:
      LOBYTE(v120) = 6;
      v84 = swift_getObjectType();
      v85 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v84);
      v87 = HIBYTE(v86) & 0xF;
      if ((v86 & 0x2000000000000000) == 0)
      {
        v87 = v85 & 0xFFFFFFFFFFFFLL;
      }

      if (v87)
      {
        v88 = MEMORY[0x1E69E6158];
      }

      else
      {

        v85 = 0;
        v86 = 0;
        v88 = 0;
        v122 = 0;
      }

      v120 = v85;
      v121 = v86;
      v123 = v88;
      v117 = 0x656372756F53;
      goto LABEL_126;
    case 7:
      v52 = "taVisualization";
      v53 = 7;
      goto LABEL_61;
    case 8:
      v20 = "Sports Name Abbrevation";
      v31 = 8;
      goto LABEL_78;
    case 9:
      LOBYTE(v120) = 9;
      v32 = swift_getObjectType();
      v33 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v32);
      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v36 = MEMORY[0x1E69E6158];
      }

      else
      {

        v33 = 0;
        v34 = 0;
        v36 = 0;
        v122 = 0;
      }

      v120 = v33;
      v121 = v34;
      v123 = v36;
      v116 = 0xD000000000000017;
      v114 = 0x80000001D73F4A50;
      goto LABEL_133;
    case 0xA:
      LOBYTE(v120) = 10;
      v94 = swift_getObjectType();
      v95 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v94);
      v97 = HIBYTE(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v97 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (v97)
      {
        v98 = MEMORY[0x1E69E6158];
      }

      else
      {

        v95 = 0;
        v96 = 0;
        v98 = 0;
        v122 = 0;
      }

      v120 = v95;
      v121 = v96;
      v123 = v98;
      v116 = 0xD000000000000013;
      v114 = 0x80000001D73F4A30;
      goto LABEL_133;
    case 0xB:
      v20 = "Sports Secondary Short Name";
      LOBYTE(v120) = 11;
      v21 = swift_getObjectType();
      v22 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v21);
      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v25 = MEMORY[0x1E69E6158];
      }

      else
      {

        v22 = 0;
        v23 = 0;
        v25 = 0;
        v122 = 0;
      }

      v120 = v22;
      v121 = v23;
      v113 = 5;
      goto LABEL_100;
    case 0xC:
      v20 = "Sports Full Name";
      v31 = 12;
LABEL_78:
      LOBYTE(v120) = v31;
      v99 = swift_getObjectType();
      v100 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v99);
      v102 = HIBYTE(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v102 = v100 & 0xFFFFFFFFFFFFLL;
      }

      if (v102)
      {
        v25 = MEMORY[0x1E69E6158];
      }

      else
      {

        v100 = 0;
        v101 = 0;
        v25 = 0;
        v122 = 0;
      }

      v120 = v100;
      v121 = v101;
      v113 = 11;
LABEL_100:
      v123 = v25;
      v116 = v113 | 0xD000000000000010;
      v114 = v20 | 0x8000000000000000;
      goto LABEL_133;
    case 0xD:
      v52 = "Sports Type Display Name";
      v53 = 13;
LABEL_61:
      LOBYTE(v120) = v53;
      v79 = swift_getObjectType();
      v80 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v79);
      v82 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v82 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (v82)
      {
        v83 = MEMORY[0x1E69E6158];
      }

      else
      {

        v80 = 0;
        v81 = 0;
        v83 = 0;
        v122 = 0;
      }

      v120 = v80;
      v121 = v81;
      v123 = v83;
      v114 = v52 | 0x8000000000000000;
      v115 = a3;
      v116 = 0xD000000000000010;
      goto LABEL_134;
    case 0xE:
      LOBYTE(v120) = 14;
      v15 = swift_getObjectType();
      v16 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v15);
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = MEMORY[0x1E69E6158];
      }

      else
      {

        v16 = 0;
        v17 = 0;
        v19 = 0;
        v122 = 0;
      }

      v120 = v16;
      v121 = v17;
      v123 = v19;
      v116 = 0x4E207374726F7053;
      v114 = 0xEF656D616E6B6369;
      goto LABEL_133;
    case 0xF:
      LOBYTE(v120) = 15;
      v42 = swift_getObjectType();
      v43 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v42);
      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {
        v46 = MEMORY[0x1E69E6158];
      }

      else
      {

        v43 = 0;
        v44 = 0;
        v46 = 0;
        v122 = 0;
      }

      v120 = v43;
      v121 = v44;
      v123 = v46;
      v117 = 0x7374726F7053;
LABEL_126:
      v116 = v117 & 0xFFFFFFFFFFFFLL | 0x5420000000000000;
      v114 = 0xEB00000000657079;
      goto LABEL_133;
    case 0x10:
      LOBYTE(v120) = 16;
      v10 = swift_getObjectType();
      v11 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v10);
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = MEMORY[0x1E69E6158];
      }

      else
      {

        v11 = 0;
        v12 = 0;
        v14 = 0;
        v122 = 0;
      }

      v120 = v11;
      v121 = v12;
      v123 = v14;
      v116 = 0xD000000000000018;
      v114 = 0x80000001D73F49B0;
      goto LABEL_133;
    case 0x11:
      LOBYTE(v120) = 17;
      v59 = swift_getObjectType();
      v60 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v59);
      v62 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v62 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        v63 = MEMORY[0x1E69E6158];
      }

      else
      {

        v60 = 0;
        v61 = 0;
        v63 = 0;
        v122 = 0;
      }

      v120 = v60;
      v121 = v61;
      v123 = v63;
      v116 = 0xD000000000000023;
      v114 = 0x80000001D73F4980;
      goto LABEL_133;
    case 0x12:
      LOBYTE(v120) = 18;
      v89 = swift_getObjectType();
      v90 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v89);
      v92 = HIBYTE(v91) & 0xF;
      if ((v91 & 0x2000000000000000) == 0)
      {
        v92 = v90 & 0xFFFFFFFFFFFFLL;
      }

      if (v92)
      {
        v93 = MEMORY[0x1E69E6158];
      }

      else
      {

        v90 = 0;
        v91 = 0;
        v93 = 0;
        v122 = 0;
      }

      v120 = v90;
      v121 = v91;
      v123 = v93;
      v116 = 0xD000000000000012;
      v114 = 0x80000001D73F4960;
      goto LABEL_133;
    case 0x13:
      LOBYTE(v120) = 19;
      v108 = swift_getObjectType();
      v109 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v108);
      v111 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v111 = v109 & 0xFFFFFFFFFFFFLL;
      }

      if (v111)
      {
        v112 = MEMORY[0x1E69E6158];
      }

      else
      {

        v109 = 0;
        v110 = 0;
        v112 = 0;
        v122 = 0;
      }

      v120 = v109;
      v121 = v110;
      v123 = v112;
      v116 = 0x656C746974627553;
      goto LABEL_137;
    case 0x14:
      LOBYTE(v120) = 20;
      v64 = swift_getObjectType();
      v65 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v64);
      v67 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v67 = v65 & 0xFFFFFFFFFFFFLL;
      }

      if (v67)
      {
        v68 = MEMORY[0x1E69E6158];
      }

      else
      {

        v65 = 0;
        v66 = 0;
        v68 = 0;
        v122 = 0;
      }

      v120 = v65;
      v121 = v66;
      v123 = v68;
      v116 = 0x656E697A6167614DLL;
      v114 = 0xEE0065726E654720;
      goto LABEL_133;
    case 0x15:
      LOBYTE(v120) = 21;
      v74 = swift_getObjectType();
      v75 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v74);
      v77 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v77 = v75 & 0xFFFFFFFFFFFFLL;
      }

      if (v77)
      {
        v78 = MEMORY[0x1E69E6158];
      }

      else
      {

        v75 = 0;
        v76 = 0;
        v78 = 0;
        v122 = 0;
      }

      v120 = v75;
      v121 = v76;
      v123 = v78;
      v116 = 0x65676175676E614CLL;
LABEL_137:
      v115 = a3;
      v114 = 0xE800000000000000;
      goto LABEL_134;
    case 0x16:
      LOBYTE(v120) = 22;
      v103 = swift_getObjectType();
      v104 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v103);
      v106 = HIBYTE(v105) & 0xF;
      if ((v105 & 0x2000000000000000) == 0)
      {
        v106 = v104 & 0xFFFFFFFFFFFFLL;
      }

      if (v106)
      {
        v107 = MEMORY[0x1E69E6158];
      }

      else
      {

        v104 = 0;
        v105 = 0;
        v107 = 0;
        v122 = 0;
      }

      v120 = v104;
      v121 = v105;
      v123 = v107;
      v116 = 0x6974616D6F747541;
      v114 = 0xEA00000000006E6FLL;
      goto LABEL_133;
    default:
      LOBYTE(v120) = 0;
      v5 = swift_getObjectType();
      v6 = sub_1D6E410E4(a2, sub_1D5EF2760, 0, &v120, v5);
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = MEMORY[0x1E69E6158];
      }

      else
      {

        v6 = 0;
        v7 = 0;
        v9 = 0;
        v122 = 0;
      }

      v120 = v6;
      v121 = v7;
      v123 = v9;
      v116 = 0x696669746E656449;
      v114 = 0xEA00000000007265;
LABEL_133:
      v115 = a3;
LABEL_134:
      sub_1D711B30C(v116, v114, &v120, v115);
      v118 = type metadata accessor for FormatInspectionItem(0);
      return (*(*(v118 - 8) + 56))(a3, 0, 1, v118);
  }
}