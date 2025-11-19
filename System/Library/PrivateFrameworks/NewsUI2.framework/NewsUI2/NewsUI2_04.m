uint64_t sub_21872D6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21872D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for AudioState(0);
  v9 = *(a1 + *(result + 20));
  v10 = *(v9 + 16);
  if (v10)
  {
    v16 = a2;
    v11 = 0;
    v12 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v11 < *(v9 + 16))
    {
      sub_2187365F8(v12 + *(v5 + 72) * v11, v7, type metadata accessor for AudioFeedTrack);
      v13 = *v7;
      if (([*v7 respondsToSelector_] & 1) != 0 && objc_msgSend(v13, sel_role) == 8)
      {
        a2 = v16;
        sub_21872D17C(v7, v16, type metadata accessor for AudioFeedTrack);
        v14 = 0;
        return (*(v5 + 56))(a2, v14, 1, v4);
      }

      ++v11;
      result = sub_2197D95DC(v7, type metadata accessor for AudioFeedTrack);
      if (v10 == v11)
      {
        v14 = 1;
        a2 = v16;
        return (*(v5 + 56))(a2, v14, 1, v4);
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 1;
    return (*(v5 + 56))(a2, v14, 1, v4);
  }

  return result;
}

uint64_t sub_21872D91C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AudioFeedTrack(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  MEMORY[0x28223BE20](TrackData);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AudioState(0);
  sub_2187365F8(a1 + *(v11 + 24), v10, type metadata accessor for AudioState.UpNextTrackData);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_21872D17C(v10, v7, type metadata accessor for AudioFeedTrack);
      sub_21873652C(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
      v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C09BA0;
      result = sub_21872D17C(v7, v14 + v13, type metadata accessor for AudioFeedTrack);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v14 = *v10;
  }

  *a2 = v14;
  return result;
}

uint64_t sub_21872DB04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AudioState(0) + 32));
}

uint64_t sub_21872DB4C(uint64_t a1, uint64_t a2)
{
  sub_2187C84E8(0, &qword_280EE7AA0, type metadata accessor for AudioState, MEMORY[0x277D6CB90]);
  swift_allocObject();
  v4 = sub_219BE2244();
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v10[4] = sub_218AFDE00;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218793E0C;
  v10[3] = &block_descriptor_31;
  v7 = _Block_copy(v10);

  [v5 scheduleLowPriorityBlock_];
  _Block_release(v7);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v9 = result;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21872DCC0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718410(0, &unk_280EE8E80, sub_218731DB4, MEMORY[0x277D2F9C0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsAudioPlaybackQueue();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsAudioListeningProgressProvider();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187182D4();
    swift_allocObject();
    return sub_219BDE194();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21872DDF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740);
  result = sub_219BE1E34();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DC20);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for NewsAudioPlaybackQueue();
      swift_allocObject();
      v4 = sub_21872DF08(v5, v6, v3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
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

void *sub_21872DF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D6CB60];
  sub_21872E0DC(0, &qword_280EE7B38, sub_21872E140, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v3[2] = sub_219BE20D4();
  swift_allocObject();
  v3[3] = sub_219BE20D4();
  v9[0] = 0;
  sub_21872E0DC(0, &unk_280EE7B28, sub_21872E174, v7);
  swift_allocObject();
  v3[4] = sub_219BE20D4();
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v3;
}

void sub_21872E0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_21872E200(void *a1)
{
  v2 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCE8);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DD70);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD18);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v36 = v5;
  v37 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD10);
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v35 = type metadata accessor for OfflineContentManager();
    v9 = objc_allocWithZone(v35);
    v10 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager_downloadedContentIDs;
    v11 = MEMORY[0x277D84FA0];
    v39 = MEMORY[0x277D84FA0];
    sub_218709AFC(0, &qword_280EE7AA8, sub_2186E2394, MEMORY[0x277D6CB78]);
    swift_allocObject();
    *&v9[v10] = sub_219BE2174();
    v12 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__contributors;
    sub_218737ED8();
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x277D84F90];
    *&v9[v12] = v13;
    v14 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager_contributorsReadyGroup;
    *&v9[v14] = dispatch_group_create();
    *&v9[OBJC_IVAR____TtC7NewsUI221OfflineContentManager____lazy_storage___requestProcessingThrottler] = 0;
    v15 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__interestTokensByContentID;
    sub_218737F5C(0, &unk_280E92DE0, qword_280E8FA40, MEMORY[0x277D84F70] + 8);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D84F98];
    *(v16 + 16) = MEMORY[0x277D84F98];
    *&v9[v15] = v16;
    v18 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__storageSizeByContentID;
    sub_218737F5C(0, &qword_280E92DF0, &qword_280E8FA58, MEMORY[0x277D84A28]);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *&v9[v18] = v19;
    v20 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager_downloadMonitors;
    sub_21872E848();
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    sub_219BE1AD4();
    sub_219BE1B04();
    swift_allocObject();
    *(v21 + 24) = sub_219BE1AF4();
    *&v9[v20] = v21;
    v22 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__activeContentIDs;
    sub_218709AFC(0, &qword_280E92DB8, sub_2186E2394, type metadata accessor for MTOnly);
    v23 = swift_allocObject();
    *(v23 + 16) = v11;
    *&v9[v22] = v23;
    v24 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__inFlightContentIDs;
    v25 = swift_allocObject();
    *(v25 + 16) = v11;
    *&v9[v24] = v25;
    v26 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__offlineContentRequests;
    sub_218709AFC(0, &unk_280E92DD0, sub_21872E940, type metadata accessor for MTOnly);
    v27 = swift_allocObject();
    *(v27 + 16) = MEMORY[0x277D84F90];
    *&v9[v26] = v27;
    v28 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager___hasExceededStorageLimits;
    LOBYTE(v39) = 0;
    sub_21870F474(0, &qword_280EE7050, MEMORY[0x277D839B0], MEMORY[0x277D6CF18]);
    swift_allocObject();
    *&v9[v28] = sub_219BE2E64();
    *&v9[OBJC_IVAR____TtC7NewsUI221OfflineContentManager_contentContext] = v37;
    *&v9[OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localArticleCacheLookupService] = v36;
    *&v9[OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localIssueCacheLookupService] = v6;
    *&v9[OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localPuzzleCacheLookupService] = v7;
    *&v9[OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localRecipeCacheLookupService] = v8;
    type metadata accessor for NewsdDownloadServiceProxy();
    v29 = swift_allocObject();
    sub_21870F474(0, qword_280E92E00, &type metadata for NewsdDownloadServiceProxy.ConnectionStatus, type metadata accessor for MTOnly);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29[2] = v30;
    sub_21870F474(0, &unk_280E92DA8, MEMORY[0x277D83B88], type metadata accessor for MTOnly);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v29[3] = v31;
    sub_218709AFC(0, &qword_280E92DC0, sub_21872EB80, type metadata accessor for MTOnly);
    v32 = swift_allocObject();
    v32[3] = 0;
    v32[4] = 0;
    v32[2] = 0;
    v29[4] = v32;
    v33 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__newsdProxy;
    sub_218709AFC(0, &qword_280E92DF8, type metadata accessor for NewsdDownloadServiceProxy, type metadata accessor for MTOnly);
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    *&v9[v33] = v34;
    v38.receiver = v9;
    v38.super_class = v35;
    return objc_msgSendSuper2(&v38, sel_init);
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_21872E810()
{
  v0 = objc_allocWithZone(MEMORY[0x277D31400]);

  return [v0 init];
}

void sub_21872E848()
{
  if (!qword_280EE0060[0])
  {
    type metadata accessor for OfflineDownloadMonitor();
    v0 = type metadata accessor for AtomicDict();
    if (!v1)
    {
      atomic_store(v0, qword_280EE0060);
    }
  }
}

void sub_21872E994(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for OfflineContentRequest.Source(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_21872EA08()
{
  sub_21872E994(319, &unk_280E8F880);
  if (v0 <= 0x3F)
  {
    sub_21872E994(319, &qword_280E8F8B0);
    if (v1 <= 0x3F)
    {
      sub_21872E994(319, &unk_280E8F8A0);
      if (v2 <= 0x3F)
      {
        sub_21872E994(319, &unk_280E8F890);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21872EB04()
{
  v0 = sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21872EBB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21872EBFC()
{
  result = qword_280E91E58;
  if (!qword_280E91E58)
  {
    sub_21873683C(255, &qword_280E91E50, type metadata accessor for SearchFeedPoolService, sub_2186D75DC, MEMORY[0x277D31EB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91E58);
  }

  return result;
}

uint64_t sub_21872EC98()
{
  result = type metadata accessor for SearchResults();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21872ED04()
{
  sub_218713394();
  if (v0 <= 0x3F)
  {
    sub_2189686E0(319, &qword_280E8F380, &qword_280ED01D0, &qword_280ED01E0);
    if (v1 <= 0x3F)
    {
      sub_2189686E0(319, &qword_280E8F370, &qword_280EC30F0, qword_280EC3100);
      if (v2 <= 0x3F)
      {
        sub_2189686E0(319, &qword_280E8F378, &qword_280EC6990, &qword_280EC69A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_21872EE04()
{
  sub_2186F8128();
  if (v0 <= 0x3F)
  {
    sub_218ABDFBC(319, &qword_280E90DF8, sub_2186EB018);
    if (v1 <= 0x3F)
    {
      sub_218ABDFBC(319, &qword_280E90D58, sub_2186EAB88);
      if (v2 <= 0x3F)
      {
        sub_218ABDFBC(319, &qword_280E90D88, sub_2186EB308);
        if (v3 <= 0x3F)
        {
          sub_219BE5BA4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for ChannelsSearchFeedGroupConfigData()
{
  result = qword_280EA3A80;
  if (!qword_280EA3A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21872EF54()
{
  if (!qword_280E923E0)
  {
    type metadata accessor for SportsSearchFeedGroupConfigData();
    sub_218713720(&qword_280EA7C98, type metadata accessor for SportsSearchFeedGroupConfigData);
    sub_218713720(&qword_280EA7CA0, type metadata accessor for SportsSearchFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E923E0);
    }
  }
}

uint64_t type metadata accessor for SearchFeedKnobsConfig()
{
  result = qword_280EC9FE0;
  if (!qword_280EC9FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21872F06C()
{
  result = type metadata accessor for ArticlesSearchFeedGroupKnobs();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ChannelsSearchFeedGroupKnobs();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TopicsSearchFeedGroupKnobs();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for RecipesSearchFeedGroupKnobs();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for SportsSearchFeedGroupKnobs();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_21872F198()
{
  sub_2186FF4C0(319);
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21872F21C()
{
  if (!qword_280E92320)
  {
    type metadata accessor for TagsSearchMoreFeedGroupConfigData();
    sub_21872F334(&qword_280EA1598, type metadata accessor for TagsSearchMoreFeedGroupConfigData);
    sub_21872F334(qword_280EA15A0, type metadata accessor for TagsSearchMoreFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92320);
    }
  }
}

uint64_t type metadata accessor for TagsSearchMoreFeedGroupConfigData()
{
  result = qword_280EA1588;
  if (!qword_280EA1588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21872F334(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21872F37C()
{
  result = qword_280EC5430;
  if (!qword_280EC5430)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EC5430);
  }

  return result;
}

uint64_t type metadata accessor for AudioHistoryFeedConfig()
{
  result = qword_280EC8BE8;
  if (!qword_280EC8BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AudioHistoryFeedGroupConfig()
{
  result = qword_280EB9418;
  if (!qword_280EB9418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AudioHistoryFeedGroupKnobs()
{
  result = qword_280EBC368;
  if (!qword_280EBC368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21872F4C4()
{
  if (!qword_280E91AA8)
  {
    type metadata accessor for AudioHistoryFeedServiceConfig();
    sub_218700478(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig);
    v0 = sub_219BEEA14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91AA8);
    }
  }
}

uint64_t sub_21872F558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21872F5A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21872F5E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21872F630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21872F678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21872F6C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21872F708(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21872F750()
{
  if (!qword_280E90BC8)
  {
    sub_218700C5C();
    sub_2186D5C14(&qword_280E91D38, sub_218700C5C);
    v0 = sub_219BF0D24();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90BC8);
    }
  }
}

void sub_21872F7E4()
{
  type metadata accessor for AudioPlaylistFeedContentConfig();
  if (v0 <= 0x3F)
  {
    sub_2186EE86C();
    if (v1 <= 0x3F)
    {
      sub_2186C61E4();
      if (v2 <= 0x3F)
      {
        sub_219BEEA84();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21872F8B0()
{
  result = type metadata accessor for AudioPlaylistFeedConfig();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AudioPlaylistFeedKnobsConfig();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21872F934()
{
  sub_2186DD2A0(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2186DD2A0(319, &qword_280E8F080, type metadata accessor for AudioPlaylistFeedGroupConfig, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2186DD2A0(319, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21872FA60()
{
  if (!qword_280E91FE0)
  {
    type metadata accessor for ArticleListAudioPlaylistFeedGroupConfigData();
    sub_21872FBA8(&unk_280E94890, type metadata accessor for ArticleListAudioPlaylistFeedGroupConfigData);
    sub_21872FBA8(&qword_280E948A0, type metadata accessor for ArticleListAudioPlaylistFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91FE0);
    }
  }
}

uint64_t sub_21872FB2C()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21872FBA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21872FBF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AudioPlaylistFeedKnobsConfig()
{
  result = qword_280EB54D0;
  if (!qword_280EB54D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21872FC84()
{
  result = type metadata accessor for AudioPlaylistFeedGroupKnobs();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs()
{
  result = qword_280E98670;
  if (!qword_280E98670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21872FD68()
{
  result = qword_280E91E00;
  if (!qword_280E91E00)
  {
    sub_2186DB874(255, &qword_280E91DF0, type metadata accessor for RecipeBoxFeedPoolService, sub_2186D9398, MEMORY[0x277D31EB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91E00);
  }

  return result;
}

uint64_t type metadata accessor for RecipeBoxFeedContentConfig()
{
  result = qword_280EBA940;
  if (!qword_280EBA940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecipeBoxFeedConfig()
{
  result = qword_280ED0978;
  if (!qword_280ED0978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21872FE9C()
{
  sub_2186DDB7C(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2186DDB7C(319, &qword_280E8F0E8, type metadata accessor for RecipeBoxFeedGroupConfig, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2186DDB7C(319, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for RecipeBoxFeedGroupConfig()
{
  result = qword_280EC0958;
  if (!qword_280EC0958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218730014(uint64_t a1)
{
  sub_2187015C4();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t sub_2187300B8()
{
  result = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218730128()
{
  v0 = sub_219BE1ED4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  (*(v1 + 104))(v3, *MEMORY[0x277D6CB30], v0);
  sub_219BE2B64();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_2187302EC()
{
  v0 = sub_219BE1ED4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2186D9594(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6CB30], v0);
  sub_219BE2B64();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_2187304AC()
{
  sub_219BE2044();
  sub_218702710();
  sub_219BE2914();
}

uint64_t sub_21873051C()
{
  sub_219BE2044();
  sub_2186C709C(0, &unk_280E97540);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EBF1F0);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EA0C00);
  sub_219BE2914();

  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_21873068C()
{
  v0 = sub_219BE1ED4();
  v14 = *(v0 - 8);
  v15 = v0;
  MEMORY[0x28223BE20](v0);
  v13 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BE2DF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, qword_280ECB388);
  sub_219BE2914();

  v6 = *MEMORY[0x277D6CF10];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  sub_219BE19F4();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8940);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE65A0);
  sub_219BE2914();

  v7(v5, v6, v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE6520);
  sub_219BE2914();

  v7(v5, v6, v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, qword_280E9DE18);
  sub_219BE2914();

  v7(v5, v6, v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, qword_280E99B90);
  sub_219BE2914();

  v7(v5, v6, v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EA0A38);
  sub_219BE2914();

  v7(v5, v6, v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EBF940);
  sub_219BE2914();

  v7(v5, v6, v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EB9630);
  sub_219BE2914();

  v7(v5, v6, v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280E97530);
  sub_219BE2914();

  v7(v5, v6, v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EA6BB0);
  sub_219BE2914();

  v7(v5, *MEMORY[0x277D6CF00], v2);
  sub_219BE19F4();

  v8(v5, v2);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_219BE27C4();
  v10 = v13;
  v9 = v14;
  v11 = v15;
  (*(v14 + 104))(v13, *MEMORY[0x277D6CB30], v15);
  sub_219BE2B64();
  (*(v9 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_218730FB0()
{
  v0 = sub_219BE1ED4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE2DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EC7BC0);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for MagazineFeedSupplementaryDataProvider();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280E91010);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for MagazineFeedServiceContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  sub_219BE2904();

  (*(v5 + 104))(v7, *MEMORY[0x277D6CF10], v4);
  sub_219BE19F4();

  (*(v5 + 8))(v7, v4);
  sub_219BE2044();
  type metadata accessor for MagazineFeedEmbeddedSupplementaryRenderer();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for MagazineFeedEmbeddedSupplementaryBuilder();
  sub_219BE2904();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2186C709C(0, &qword_280E910D8);
  (*(v1 + 104))(v3, *MEMORY[0x277D6CB30], v0);
  sub_219BE2B74();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_2187314B0()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EAF3B0);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for RecipeCatalogSearchFilterResultsProvider();
  sub_219BE2904();

  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EA5230);
  sub_219BE2914();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_218731750()
{
  sub_219BE2044();
  sub_2186C709C(0, qword_280ED0ED8);
  sub_219BE2914();

  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_218731830()
{
  sub_219BE2044();
  sub_2186C709C(0, qword_280ECD1A0);
  sub_219BE2914();

  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_2187318EC()
{
  v0 = sub_219BE3344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EB7098);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EA1EF8);
  sub_219BE2914();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF70], v0);
  sub_219BE19A4();

  (*(v1 + 8))(v3, v0);
  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_218731AF0()
{
  sub_219BE2044();
  sub_2186C709C(0, qword_280EBCF98);
  sub_219BE2914();

  sub_219BE2054();
  sub_219BE28F4();
}

void sub_218731BD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218731C24()
{
  result = qword_280EC68C0;
  if (!qword_280EC68C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EC68C0);
  }

  return result;
}

void sub_218731C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFB7C(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218731D50()
{
  result = qword_280E8E260;
  if (!qword_280E8E260)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E260);
  }

  return result;
}

uint64_t sub_218731DE8()
{
  sub_2186DF170(0, &unk_280EE3998, &type metadata for PuzzleArchiveFilterSelectionCommandContext, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218731F38(0, &unk_280EE5D60, sub_218731FA0);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280EE3890 = result;
  return result;
}

void sub_218731F38(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_219BE5E64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218731FA0()
{
  result = qword_280E95F40;
  if (!qword_280E95F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95F40);
  }

  return result;
}

uint64_t sub_218731FF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E99080);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &unk_280E8DDD0);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      MEMORY[0x28223BE20](v4);
      v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v7 + 16))(v6);
      v8 = sub_218732174(*v6, v3);
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_218732174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleArchiveFilterOptionsManager();
  v16[3] = v4;
  v16[4] = &off_282A79210;
  v16[0] = a1;
  v5 = type metadata accessor for PuzzleArchiveFilterCommandHandler();
  v6 = objc_allocWithZone(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, v4);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v15[3] = v4;
  v15[4] = &off_282A79210;
  v15[0] = v11;
  sub_218718690(v15, &v6[OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager]);
  *&v6[OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_networkReachability] = a2;
  v14.receiver = v6;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v12;
}

uint64_t sub_2187322CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FFC0);
  result = sub_219BE1E34();
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE5390);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandHandler();
      v4 = swift_allocObject();
      *(v4 + 16) = v7;
      *(v4 + 24) = v3;
      sub_2186CB1F0(&v5, v4 + 32);
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

uint64_t sub_2187323D0()
{
  sub_218732508(0, &qword_280EE3990, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218732508(0, &qword_280EE3940, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280EE38C0 = result;
  return result;
}

void sub_218732508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext()
{
  result = qword_280E93A88;
  if (!qword_280E93A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2187325B4()
{
  result = sub_219BF4F84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218732620(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OpenSportEventCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    sub_219BEADC4();
    sub_219BF2E74();
    sub_2186F1618(qword_280EB36B8, type metadata accessor for OpenSportEventCommandHandler);
    sub_219BE7054();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218732728(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280E901C0);
  result = sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_2186CB1F0(&v10, v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  if ((sub_219BF3284() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioQueueCommandHandler();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_12;
  }

  v4 = result;
  swift_getObjectType();
  *&v10 = v4;
  sub_219BEACD4();
  sub_218932F68(0);
  sub_2186F1618(qword_280EC26F8, type metadata accessor for AudioQueueCommandHandler);
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEABF4();
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEAC44();
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEAC54();
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEACF4();
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEACE4();
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEACA4();
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEABB4();
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEAC14();
  sub_219BE7054();

  *&v10 = v4;
  sub_219BEAC24();
  sub_219BE7054();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaybackCommandHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *&v10 = result;
  v5 = result;
  sub_219BEACB4();
  sub_218739A94(0, &qword_280E90410);
  sub_219BEEF64();
  sub_2186F1618(qword_280EB9248, type metadata accessor for AudioPlaybackCommandHandler);
  sub_219BE7064();

  *&v10 = v5;
  sub_219BEAC94();
  sub_219BE7064();

  *&v10 = v5;
  sub_219BEAD04();
  sub_219BE7064();

  *&v10 = v5;
  sub_219BEAC34();
  sub_219BE7064();

  *&v10 = v5;
  sub_219BEABC4();
  sub_219BE7064();

  *&v10 = v5;
  sub_219BEABD4();
  sub_219BE7064();

  v9 = v5;
  *&v10 = v5;
  sub_219BEAC84();
  sub_219BE7064();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioSeekCommandHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  *&v10 = result;
  sub_219BEACC4();
  sub_218739A94(0, &qword_280E90440);
  sub_2186F1618(qword_280EC5B88, type metadata accessor for AudioSeekCommandHandler);
  sub_219BE7054();

  *&v10 = v6;
  sub_219BEAC74();
  sub_219BE7054();

  *&v10 = v6;
  sub_219BEAC04();
  sub_219BE7054();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioProxyCommandHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  *&v10 = result;
  sub_219BEABE4();
  sub_2186F1618(&unk_280EC27C0, type metadata accessor for AudioProxyCommandHandler);
  sub_219BE7054();

  *&v10 = v7;
  sub_219BEAC64();
  sub_219BE7054();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedHeadlineProgressCommandHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *&v10 = result;
  sub_219BEA9D4();
  sub_219BF0F34();
  sub_219BEEE54();
  sub_2186F1618(&qword_280EA08A8, type metadata accessor for FeedHeadlineProgressCommandHandler);
  sub_219BE7064();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedHeadlinePlaybackCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    *&v10 = result;
    sub_219BEA9C4();
    sub_219BF00C4();
    sub_2186F1618(qword_280EA08B0, type metadata accessor for FeedHeadlinePlaybackCommandHandler);
    sub_219BE7064();

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2187330D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740);
  result = sub_219BE1E34();
  if (!v20)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsAudioPlaybackQueue();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(result + 16);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB640();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0);
  result = sub_219BE1E34();
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC27D0);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E2A8);
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    type metadata accessor for AudioQueueCommandHandler();
    v11 = swift_allocObject();
    v11[2] = v20;
    v11[3] = v3;
    v11[4] = v4;
    v11[5] = v5;
    sub_2186CB1F0(&v18, (v11 + 6));
    v11[11] = v6;
    v11[12] = v7;
    sub_2186CB1F0(&v16, (v11 + 13));
    sub_2186CB1F0(&v14, (v11 + 18));
    v11[23] = v8;
    sub_2186CB1F0(&v12, (v11 + 24));
    v11[29] = v9;
    v11[30] = v10;
    return v11;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_218733504()
{
  sub_218729E44(319, &qword_280E8F360, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AudioFeedTrack(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2187335C8()
{
  if (!qword_280EDC960)
  {
    type metadata accessor for AudioFeedTrack(255);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EDC960);
    }
  }
}

uint64_t sub_218733620@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DEA0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for AudioFeedConfigService();
    v9 = swift_allocObject();
    sub_219BEE324();
    swift_allocObject();
    result = sub_219BEE314();
    v9[2] = result;
    v9[3] = v5;
    v9[4] = v6;
    v9[5] = v7;
    a2[3] = v8;
    a2[4] = &off_282A92D78;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218733780(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v91 = a1;
  v87 = sub_219BE27F4();
  MEMORY[0x28223BE20](v87);
  v88 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D83D88];
  sub_218718850(0, qword_280EBE768, type metadata accessor for ForYouAudioFeedGroupKnobs, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v74 - v5;
  sub_218718850(0, qword_280EBC960, type metadata accessor for UpNextAudioFeedGroupKnobs, v3);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v74 - v7;
  v80 = type metadata accessor for AudioFeedGroupKnobs();
  v85 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718850(0, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs, v3);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v78 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = &v74 - v12;
  v13 = type metadata accessor for AudioFeedKnobsConfig();
  v92 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v86 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718850(0, &qword_280E91B80, MEMORY[0x277D32028], v3);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v74 - v16;
  sub_218718850(0, &qword_280EE9C40, MEMORY[0x277CC9578], v3);
  MEMORY[0x28223BE20](v17 - 8);
  v76 = &v74 - v18;
  v19 = type metadata accessor for AudioFeedConfig();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718850(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration, v3);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v74 - v24;
  sub_218718850(0, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig, v3);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v90 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v74 - v29;
  sub_218718850(0, qword_280EDB3C0, type metadata accessor for AudioFeedConfig, v3);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v74 - v35;
  v82 = type metadata accessor for AudioFeedContentConfig();
  v37 = MEMORY[0x28223BE20](v82);
  v39 = &v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v83 = &v74 - v40;
  v95 = type metadata accessor for AudioFeedConfigService();
  v96 = &off_282A92D78;
  *&v94 = v91;
  (*(v20 + 56))(v36, 1, 1, v19);
  v41 = *(v92 + 7);
  v91 = v30;
  v42 = v30;
  v43 = v13;
  v41(v42, 1, 1, v13);
  v44 = type metadata accessor for LegacyAudioFeedConfiguration();
  (*(*(v44 - 8) + 56))(v25, 1, 1, v44);
  v81 = v36;
  sub_21872A81C(v36, v34, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
  v45 = *(v20 + 48);
  if (v45(v34, 1, v19) == 1)
  {
    v46 = sub_219BDBD34();
    v47 = v76;
    (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
    v48 = sub_219BEE5B4();
    v49 = v77;
    (*(*(v48 - 8) + 56))(v77, 1, 1, v48);
    sub_218734714(v47, 0, v49, v22);
    if (v45(v34, 1, v19) != 1)
    {
      sub_21872C2BC(v34, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    }
  }

  else
  {
    sub_218735490(v34, v22, type metadata accessor for AudioFeedConfig);
  }

  sub_218735490(v22, v39, type metadata accessor for AudioFeedConfig);
  v51 = v90;
  v50 = v91;
  sub_21872A81C(v91, v90, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
  v52 = *(v92 + 6);
  v53 = v43;
  v54 = v52(v51, 1, v43);
  v55 = v84;
  v56 = v85;
  if (v54 == 1)
  {
    v92 = v52;
    v57 = v80;
    (*(v85 + 7))(v84, 1, 1, v80);
    v58 = v78;
    sub_21872A81C(v55, v78, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
    v59 = *(v56 + 6);
    if (v59(v58, 1, v57) == 1)
    {
      AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
      v61 = *(*(AudioFeedGroupKnobs - 8) + 56);
      v85 = v25;
      v62 = v74;
      v61(v74, 1, 1, AudioFeedGroupKnobs);
      v63 = type metadata accessor for ForYouAudioFeedGroupKnobs();
      v64 = v75;
      (*(*(v63 - 8) + 56))(v75, 1, 1, v63);
      v65 = v55;
      v66 = v79;
      v67 = v62;
      v25 = v85;
      sub_21872B268(v67, v64, 0, v79);
      v68 = v65;
      v51 = v90;
      sub_21872C2BC(v68, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      if (v59(v58, 1, v80) != 1)
      {
        sub_21872C2BC(v58, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      }
    }

    else
    {
      sub_21872C2BC(v55, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      v66 = v79;
      sub_218735490(v58, v79, type metadata accessor for AudioFeedGroupKnobs);
    }

    v69 = v86;
    sub_218735490(v66, v86, type metadata accessor for AudioFeedGroupKnobs);
    *(v69 + *(v53 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    sub_21872C2BC(v91, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    sub_21872C2BC(v81, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    if (v92(v51, 1, v53) != 1)
    {
      sub_21872C2BC(v51, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    }
  }

  else
  {
    sub_21872C2BC(v50, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    sub_21872C2BC(v81, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    v69 = v86;
    sub_218735490(v51, v86, type metadata accessor for AudioFeedKnobsConfig);
  }

  v70 = v82;
  sub_218735490(v69, &v39[*(v82 + 20)], type metadata accessor for AudioFeedKnobsConfig);
  sub_218735700(v25, &v39[*(v70 + 24)], qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  sub_218735490(v39, v83, type metadata accessor for AudioFeedContentConfig);
  sub_218718850(0, &unk_280EE7AC8, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D6CB78]);
  swift_allocObject();
  v71 = sub_219BE2174();
  v72 = v89;
  *(v89 + 16) = v71;
  v93 = MEMORY[0x277D84F90];
  sub_2186D5C14(&qword_280EE73D0, MEMORY[0x277D6CD10]);
  sub_218718850(0, &qword_280E8F5E0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
  sub_218735780();
  sub_219BF7164();
  sub_218735808(0, &qword_280EE7BF8, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D6CB58]);
  swift_allocObject();
  *(v72 + 64) = sub_219BE2004();
  sub_2186CB1F0(&v94, v72 + 24);
  return v72;
}

void sub_218734524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E7180(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2187345F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DCF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2186ED99C(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_218734714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_219BF3034();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v128 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = &v84 - v12;
  v104 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v104);
  v103 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA2D8();
  v102 = v14;
  v127 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v101 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroupConfigData = type metadata accessor for UpNextAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](AudioFeedGroupConfigData - 8);
  v100 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868();
  v99 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v98 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ForYouAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v21 - 8);
  v97 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED79C();
  v96 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v95 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8FA8(0);
  MEMORY[0x28223BE20](v26 - 8);
  v106 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BF1934();
  v28 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for AudioFeedGroupConfig();
  v30 = *(v114 - 8);
  v31 = MEMORY[0x28223BE20](v114);
  v119 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v118 = &v84 - v33;
  v86 = a1;
  sub_21872AB74(a1, a4, sub_2186DCF58);
  if (!a2)
  {
    a2 = MEMORY[0x277D84F90];
  }

  v34 = type metadata accessor for AudioFeedConfig();
  *(a4 + *(v34 + 20)) = a2;
  v84 = v34;
  v35 = *(v34 + 28);
  v87 = a4;
  v85 = a3;
  sub_21872AB74(a3, a4 + v35, sub_2186ED99C);
  v112 = *(a2 + 16);
  if (!v112)
  {
    v38 = MEMORY[0x277D84F98];
    goto LABEL_44;
  }

  v110 = a2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v111 = v30;
  v94 = (v127 + 32);
  v93 = (v127 + 8);
  v92 = (v28 + 16);
  v108 = (v28 + 56);
  v91 = (v19 + 32);
  v90 = v19 + 8;
  v107 = (v28 + 32);
  v89 = (v24 + 32);
  v88 = v24 + 8;
  v109 = (v28 + 48);
  v125 = (v9 + 32);
  v120[1] = v9 + 40;
  v105 = (v28 + 8);
  v115 = a2;

  v36 = v115;
  v37 = 0;
  v38 = MEMORY[0x277D84F98];
  v39 = v106;
  while (1)
  {
    if (v37 >= *(v36 + 16))
    {
      goto LABEL_49;
    }

    v40 = v38;
    v41 = *(v111 + 72);
    v117 = v37;
    v42 = v118;
    sub_21872AB74(v110 + v41 * v37, v118, type metadata accessor for AudioFeedGroupConfig);
    sub_21872AB74(v42, v119, type metadata accessor for AudioFeedGroupConfig);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v48 = v116;
        (*v108)(v39, 1, 1, v116);
        sub_2187353C8(v119, type metadata accessor for AudioFeedGroupConfig);
        goto LABEL_17;
      }

      v49 = v101;
      v50 = v102;
      (*v94)(v101, v119, v102);
      v51 = v103;
      sub_219BEDD14();
      (*v93)(v49, v50);
      v48 = v116;
      (*v92)(v39, v51 + *(v104 + 20), v116);
      sub_2187353C8(v51, type metadata accessor for CuratedAudioFeedGroupConfigData);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v44 = v98;
        v45 = v99;
        (*v91)(v98, v119, v99);
        v46 = v100;
        sub_219BEDD14();
        v47 = &v121;
      }

      else
      {
        v44 = v95;
        v45 = v96;
        (*v89)(v95, v119, v96);
        v46 = v97;
        sub_219BEDD14();
        v47 = v120;
      }

      (**(v47 - 32))(v44, v45);
      v48 = v116;
      (*v107)(v39, v46, v116);
    }

    (*v108)(v39, 0, 1, v48);
LABEL_17:
    if ((*v109)(v39, 1, v48) != 1)
    {
      break;
    }

    sub_2187353C8(v118, type metadata accessor for AudioFeedGroupConfig);
    sub_2187353C8(v39, sub_2186D8FA8);
    v38 = v40;
LABEL_6:
    v37 = v117 + 1;
    v36 = v115;
    if (v117 + 1 == v112)
    {

LABEL_44:
      sub_2187353C8(v85, sub_2186ED99C);
      result = sub_2187353C8(v86, sub_2186DCF58);
      *(v87 + *(v84 + 24)) = v38;
      return result;
    }
  }

  (*v107)(v113, v39, v48);
  sub_219BF1724();
  v52 = sub_219BF5AB4();

  if (!(v52 >> 62))
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = v40;
    if (v53)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

  v53 = sub_219BF7214();
  v38 = v40;
  if (!v53)
  {
LABEL_41:

    (*v105)(v113, v116);
    sub_2187353C8(v118, type metadata accessor for AudioFeedGroupConfig);
    v39 = v106;
    goto LABEL_6;
  }

LABEL_20:
  v54 = 0;
  v123 = v52;
  v124 = v52 & 0xC000000000000001;
  v120[0] = v52 & 0xFFFFFFFFFFFFFF8;
  v122 = v53;
  while (2)
  {
    if (v124)
    {
      v55 = MEMORY[0x21CECE0F0](v54, v52);
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_45;
      }

LABEL_29:
      v126 = v56;
      v57 = v9;
      v58 = v38;
      v59 = v55;
      v60 = sub_219BF16A4();
      v62 = v61;
      v63 = v121;
      v127 = v59;
      sub_219BF16C4();
      v64 = *v125;
      v65 = v63;
      v66 = v8;
      (*v125)(v128, v65, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v58;
      v68 = sub_21870F700(v60, v62);
      v70 = v58;
      v71 = v68;
      v72 = v70[2];
      v73 = (v69 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        goto LABEL_46;
      }

      v75 = v69;
      if (v70[3] >= v74)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = v66;
          if ((v69 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_219490800();
          v8 = v66;
          if ((v75 & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_21947E618(v74, isUniquelyReferenced_nonNull_native);
        v76 = sub_21870F700(v60, v62);
        if ((v75 & 1) != (v77 & 1))
        {
          goto LABEL_50;
        }

        v71 = v76;
        v8 = v66;
        if ((v75 & 1) == 0)
        {
LABEL_36:
          v78 = v128;
          v38 = v129;
          v129[(v71 >> 6) + 8] |= 1 << v71;
          v79 = (v38[6] + 16 * v71);
          *v79 = v60;
          v79[1] = v62;
          v9 = v57;
          v64((v38[7] + *(v57 + 72) * v71), v78, v8);

          v80 = v38[2];
          v81 = __OFADD__(v80, 1);
          v82 = v80 + 1;
          if (v81)
          {
            goto LABEL_47;
          }

          v38[2] = v82;
          goto LABEL_22;
        }
      }

      v38 = v129;
      v9 = v57;
      (*(v57 + 40))(v129[7] + *(v57 + 72) * v71, v128, v8);

LABEL_22:
      ++v54;
      v52 = v123;
      if (v126 == v122)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  if (v54 >= *(v120[0] + 16))
  {
    goto LABEL_48;
  }

  v55 = *(v52 + 8 * v54 + 32);

  v56 = v54 + 1;
  if (!__OFADD__(v54, 1))
  {
    goto LABEL_29;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2187353C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218735428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218735490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21873550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E7180(0);
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

uint64_t sub_2187355C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218735644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E7180(0);
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

uint64_t sub_218735700(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218718850(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_218735780()
{
  result = qword_280E8F5D0;
  if (!qword_280E8F5D0)
  {
    sub_2187C84E8(255, &qword_280E8F5E0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F5D0);
  }

  return result;
}

void sub_218735808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21873587C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E6C0);
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for AudioHeroStore();
      v7 = swift_allocObject();
      sub_21872C32C();
      swift_allocObject();
      *(v7 + 64) = sub_219BE2D94();
      result = sub_2186CB1F0(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = v6;
      a2[4] = &off_282A2E6F0;
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

uint64_t sub_2187359CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E2A8);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280E90370);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for AudioPlaylistStore();
      v7 = swift_allocObject();
      sub_21870F290(0, &qword_280EE7B00, MEMORY[0x277D6CB60]);
      swift_allocObject();
      v7[2] = sub_219BE20D4();
      sub_21872C32C();
      swift_allocObject();
      v7[9] = sub_219BE2D94();
      v7[3] = v5;
      sub_218718690(v8, (v7 + 4));
      [v5 addObserver_];
      result = __swift_destroy_boxed_opaque_existential_1(v8);
      a2[3] = v6;
      a2[4] = &off_282A40D18;
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

id sub_218735B50(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_recentlyPlayedUpdatedSignal;
  sub_21872C538();
  swift_allocObject();
  *&v3[v8] = sub_219BE20D4();
  v9 = OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_headlineCache;
  sub_21872C32C();
  swift_allocObject();
  *&v3[v9] = sub_219BE2D94();
  *&v3[OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_readingHistory] = a1;
  sub_218718690(a2, &v3[OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_headlineService]);
  sub_218718690(a3, &v3[OBJC_IVAR____TtC7NewsUI224AudioRecentlyPlayedStore_paidBundleConfigManager]);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 addObserver_];
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t type metadata accessor for AudioAutoClosePlayerHandler()
{
  result = qword_280EB9488;
  if (!qword_280EB9488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218735D08()
{
  sub_2186DDC88(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_218735F00()
{

  return swift_deallocObject();
}

unint64_t sub_218735F3C()
{
  result = qword_280E8E6C0;
  if (!qword_280E8E6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E6C0);
  }

  return result;
}

uint64_t sub_218735FAC(uint64_t a1, uint64_t a2)
{
  sub_2187335C8();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_218736024(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AudioFeedTrack.Configurables(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_219BDD6E4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_218736148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187361B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218736218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218736280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187362E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218736348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187363A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218736408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218736468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2187364C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BE2034();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21873652C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218736590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187365F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218736660()
{
  if (!qword_280E8F8C0)
  {
    sub_2187C84E8(255, &qword_280E8F360, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F8C0);
    }
  }
}

uint64_t sub_218736714()
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

void sub_2187367A8()
{
  if (!qword_280E92680)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186F7D68(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v0 = sub_219BED604();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92680);
    }
  }
}

void sub_21873683C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2187368BC()
{
  sub_218713330(319, &unk_27CC0CB80, type metadata accessor for SearchResultsGroup, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_219BDF034();
    if (v1 <= 0x3F)
    {
      sub_2186E3374();
      if (v2 <= 0x3F)
      {
        sub_218713330(319, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for SearchFeedContentConfig()
{
  result = qword_280EC3830;
  if (!qword_280EC3830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218736A44()
{
  if (!qword_280E92360)
  {
    type metadata accessor for ArticlesSearchFeedGroupConfigData();
    sub_218713450(&qword_280EA3EA0, type metadata accessor for ArticlesSearchFeedGroupConfigData);
    sub_218713450(&qword_280EA3EA8, type metadata accessor for ArticlesSearchFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92360);
    }
  }
}

uint64_t type metadata accessor for ArticlesSearchFeedGroupConfigData()
{
  result = qword_280EA3E90;
  if (!qword_280EA3E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218736B5C()
{
  if (!qword_280E92298)
  {
    type metadata accessor for TopResultSearchFeedGroupConfigData();
    sub_218713450(&qword_280E9E3D0, type metadata accessor for TopResultSearchFeedGroupConfigData);
    sub_218713450(&qword_280E9E3D8, type metadata accessor for TopResultSearchFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92298);
    }
  }
}

uint64_t sub_218736C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ChannelsSearchFeedGroupKnobs()
{
  result = qword_280EB4E28;
  if (!qword_280EB4E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TopicsSearchFeedGroupKnobs()
{
  result = qword_280EB9978;
  if (!qword_280EB9978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218736D08()
{
  if (!qword_280E90B60)
  {
    sub_2186FA878();
    sub_2186E89E4(&unk_280E91CD0, sub_2186FA878);
    v0 = sub_219BF0D24();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90B60);
    }
  }
}

unint64_t sub_218736D9C()
{
  result = qword_280EB3040;
  if (!qword_280EB3040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB3040);
  }

  return result;
}

void sub_218736DF0()
{
  if (!qword_280E91D40)
  {
    type metadata accessor for AudioHistoryFeedGroupEmitterFactory();
    sub_218700628();
    sub_2187004C0(qword_280E9E110, type metadata accessor for AudioHistoryFeedGroupEmitterFactory);
    sub_2187004C0(&unk_280E91F10, sub_218700628);
    v0 = sub_219BEE344();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91D40);
    }
  }
}

void sub_218736EDC()
{
  type metadata accessor for AudioHistoryFeedContentConfig();
  if (v0 <= 0x3F)
  {
    sub_2186EE86C();
    if (v1 <= 0x3F)
    {
      sub_2186C61E4();
      if (v2 <= 0x3F)
      {
        sub_219BEEA84();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData()
{
  result = qword_280EE2F28;
  if (!qword_280EE2F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21873703C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t isUniquelyReferenced_nonNull_native@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v90 = a6;
  v94 = a5;
  v98 = a2;
  v11 = type metadata accessor for AudioFeedTrack(0);
  v100 = *(v11 - 8);
  v12 = v100;
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v99 = (&v82 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v84 = &v82 - v19;
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  MEMORY[0x28223BE20](TrackData);
  *&v92 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187335C8();
  v89 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v97 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v82 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v82 - v27;
  v95 = *(v12 + 56);
  v96 = v12 + 56;
  v95(a7, 1, 1, v11);
  v29 = a1;
  sub_218735FAC(a1, a7);
  v30 = type metadata accessor for AudioState(0);
  *(a7 + v30[5]) = v98;
  v31 = a7 + v30[6];
  v91 = a3;
  sub_218736218(a3, v31, type metadata accessor for AudioState.UpNextTrackData);
  *(a7 + v30[7]) = isUniquelyReferenced_nonNull_native;
  v32 = v94;
  *(a7 + v30[8]) = v94;
  v87 = v30;
  v33 = v30[9];
  v34 = sub_219BDBD34();
  v85 = *(v34 - 8);
  v86 = v34;
  v35 = *(v85 + 16);
  v88 = a7;
  v35(a7 + v33, v90);
  sub_218729E44(0, &unk_280E8BC40, sub_2187335C8, MEMORY[0x277D84560]);
  v36 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v37 = swift_allocObject();
  v89 = v29;
  sub_218736218(v29, v37 + v36, sub_2187335C8);

  sub_218736218(v37 + v36, v28, sub_2187335C8);
  sub_21872D0AC(v28, v26, sub_2187335C8);
  v38 = *(v100 + 48);
  v98 = v11;
  if (v38(v26, 1, v11) == 1)
  {
    sub_218736408(v26, sub_2187335C8);
    v39 = MEMORY[0x277D84F90];
    v40 = v99;
    v41 = v92;
  }

  else
  {
    v32 = v84;
    sub_21872D0AC(v26, v84, type metadata accessor for AudioFeedTrack);
    v39 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_38:
      v39 = sub_2191F79E0(0, v39[2] + 1, 1, v39);
    }

    v43 = v39[2];
    v42 = v39[3];
    v40 = v99;
    v41 = v92;
    if (v43 >= v42 >> 1)
    {
      v39 = sub_2191F79E0(v42 > 1, v43 + 1, 1, v39);
    }

    v39[2] = v43 + 1;
    sub_21872D0AC(v32, v39 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v43, type metadata accessor for AudioFeedTrack);
  }

  swift_setDeallocating();
  sub_218736408(v37 + v36, sub_2187335C8);
  swift_deallocClassInstance();
  sub_218736218(v91, v41, type metadata accessor for AudioState.UpNextTrackData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v45 = MEMORY[0x277D84F90];
    }

    else
    {
      v46 = v83;
      sub_21872D0AC(v41, v83, type metadata accessor for AudioFeedTrack);
      sub_218729E44(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
      v47 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_219C09BA0;
      sub_21872D0AC(v46, v48 + v47, type metadata accessor for AudioFeedTrack);
      v45 = v48;
    }
  }

  else
  {
    v45 = *v41;
  }

  v103 = v39;
  sub_21872D31C(v45);
  sub_21872D31C(isUniquelyReferenced_nonNull_native);
  sub_21872D31C(v94);
  v49 = v103;
  v94 = v103[2];
  if (v94)
  {
    v36 = 0;
    TrackData = v103 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v37 = MEMORY[0x277D84F98];
    v92 = xmmword_219C09BA0;
    while (1)
    {
      if (v36 >= v49[2])
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v32 = *(v100 + 72);
      sub_218736218(TrackData + v32 * v36, v40, type metadata accessor for AudioFeedTrack);
      v50 = *v40;
      v51 = [*v40 identifier];
      v52 = sub_219BF5414();
      v54 = v53;

      if (v37[2])
      {
        v55 = sub_21870F700(v52, v54);
        v57 = v56;

        if (v57)
        {
          v58 = v97;
          sub_218736218(v37[7] + v55 * v32, v97, type metadata accessor for AudioFeedTrack);
          v32 = v98;
          v95(v58, 0, 1, v98);
          sub_218736408(v58, sub_2187335C8);
          sub_2186C66AC();
          v59 = sub_219BF6F74();
          isUniquelyReferenced_nonNull_native = sub_219BF61F4();
          sub_218729E44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
          v60 = swift_allocObject();
          *(v60 + 16) = v92;
          sub_2193ADDE0(&qword_280EDC9E0, type metadata accessor for AudioFeedTrack);
          v61 = sub_219BF7894();
          v63 = v62;
          *(v60 + 56) = MEMORY[0x277D837D0];
          *(v60 + 64) = sub_2186FC3BC();
          *(v60 + 32) = v61;
          *(v60 + 40) = v63;
          v40 = v99;
          sub_219BE5314();

          goto LABEL_16;
        }
      }

      else
      {
      }

      v64 = v97;
      v95(v97, 1, 1, v98);
      sub_218736408(v64, sub_2187335C8);
      v65 = [v50 identifier];
      v39 = sub_219BF5414();
      v67 = v66;

      sub_218736218(v40, v101, type metadata accessor for AudioFeedTrack);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v37;
      v69 = sub_21870F700(v39, v67);
      v70 = v37[2];
      v71 = (v68 & 1) == 0;
      v72 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        goto LABEL_36;
      }

      v73 = v68;
      if (v37[3] >= v72)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v68 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_219491BC0();
          if ((v73 & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_2194808B0(v72, isUniquelyReferenced_nonNull_native);
        v74 = sub_21870F700(v39, v67);
        if ((v73 & 1) != (v75 & 1))
        {
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        v69 = v74;
        if ((v73 & 1) == 0)
        {
LABEL_29:
          v76 = v101;
          v37 = v102;
          v102[(v69 >> 6) + 8] |= 1 << v69;
          v77 = (v37[6] + 16 * v69);
          *v77 = v39;
          v77[1] = v67;
          sub_21872D0AC(v76, v37[7] + v69 * v32, type metadata accessor for AudioFeedTrack);
          v78 = v37[2];
          v79 = __OFADD__(v78, 1);
          v80 = v78 + 1;
          if (v79)
          {
            goto LABEL_37;
          }

          v37[2] = v80;
          goto LABEL_15;
        }
      }

      v37 = v102;
      sub_2193ADD7C(v101, v102[7] + v69 * v32);
LABEL_15:
      v40 = v99;
LABEL_16:
      ++v36;
      sub_218736408(v40, type metadata accessor for AudioFeedTrack);
      if (v94 == v36)
      {
        goto LABEL_34;
      }
    }
  }

  v37 = MEMORY[0x277D84F98];
LABEL_34:

  (*(v85 + 8))(v90, v86);
  sub_218736408(v91, type metadata accessor for AudioState.UpNextTrackData);
  result = sub_218736408(v89, sub_2187335C8);
  *(v88 + v87[10]) = v37;
  return result;
}

size_t sub_218737B64(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2186DD9FC(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_218737D58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AudioState(0) + 28));
}

uint64_t sub_218737DEC(void *a1, uint64_t (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (v5)
  {
    v4 = objc_allocWithZone(a2(0));
    return sub_219BF1B04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218737E84(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for OfflineContentManager();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_218737ED8()
{
  if (!qword_280E92DC8)
  {
    sub_2186EF32C(255, &qword_280E8F0C0, qword_280EBDA80, &protocol descriptor for OfflineContentContributor, MEMORY[0x277D83940]);
    v0 = type metadata accessor for MTOnly();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92DC8);
    }
  }
}

void sub_218737F5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_21871C894(255, a3, a4, MEMORY[0x277D834F8]);
    v5 = type metadata accessor for MTOnly();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_218737FC8()
{
  if (!qword_280E8EC50)
  {
    sub_218738154(255, &qword_280E8EC58, &qword_280E8E400, 0x277D31410, MEMORY[0x277D83940]);
    sub_2186C6148(255, &qword_280E8E528);
    sub_2186D6710(255, &unk_280E8E340);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8EC50);
    }
  }
}

void sub_21873809C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2187380F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218738154(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C6148(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2187381BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C6148(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_218738224(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218738278(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2187382CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218738330(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218738384(void *a1)
{
  v21 = sub_219BDCBD4();
  v18 = *(v21 - 8);
  v19 = v18;
  MEMORY[0x28223BE20](v21);
  v20 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BDCDD4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_219BDD074();
  v15 = *(v4 - 8);
  v16 = v4;
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CEAD38];
  v7 = MEMORY[0x277D84560];
  sub_2198D3A7C(0, &unk_280E8C150, MEMORY[0x277CEAD38], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09EC0;
  sub_219BDCDB4();
  sub_219BDCDC4();
  v25[0] = v8;
  sub_21872EBB4(&qword_280EE8F40, MEMORY[0x277CEAD38]);
  v9 = MEMORY[0x277D83940];
  sub_2198D3A7C(0, &unk_280E8F650, v6, MEMORY[0x277D83940]);
  sub_218709770(&unk_280E8F640, &unk_280E8F650, v6);
  sub_219BF7164();
  v10 = MEMORY[0x277CEAC90];
  sub_2198D3A7C(0, &qword_280E8C170, MEMORY[0x277CEAC90], v7);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C0B8C0;
  sub_219BDCBC4();
  sub_219BDCBA4();
  sub_219BDCBB4();
  v25[0] = v11;
  sub_21872EBB4(&qword_280EE9040, MEMORY[0x277CEAC90]);
  sub_2198D3A7C(0, &unk_280E8F670, v10, v9);
  sub_218709770(&unk_280E8F660, &unk_280E8F670, v10);
  sub_219BF7164();
  sub_219BDCD64();
  swift_allocObject();
  sub_219BDCD54();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE8168);
  result = sub_219BE1E34();
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  v25[3] = sub_219BDCE14();
  v25[4] = MEMORY[0x277CEAD58];
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_219BE0ED4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE8F00);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = v17;
  sub_219BDD064();
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDCB74();
  result = sub_219BE1DE4();
  if (result)
  {
    v14 = sub_219BDCB44();

    (*(v15 + 8))(v13, v16);
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218738950(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  LOBYTE(a3) = a3(v4);

  return a3 & 1;
}

uint64_t sub_21873899C()
{
  v1 = OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useSearchInArticle;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useSearchInArticle);
  if (v2 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9260 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration);
    if ([v3 respondsToSelector_])
    {
      [v3 useSearchInArticle];
    }

    LOBYTE(v2) = sub_219BDC8C4();

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_218738A8C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D050], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9268 = result;
  return result;
}

void sub_218738C38()
{
  if (!qword_280E8B7E0)
  {
    sub_219BF3144();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B7E0);
    }
  }
}

uint64_t sub_218738C90(void *a1)
{
  v2 = sub_219BDD004();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = MEMORY[0x277D83D88];
  sub_2198D3A7C(0, &qword_280EE8F18, MEMORY[0x277CEADF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  sub_2198D3A7C(0, &unk_280EE8F30, MEMORY[0x277CEADD8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  sub_219BDCE74();
  sub_219BDCE64();
  v10 = sub_219BDCF64();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_219BDD034();
  sub_219BE1E34();
  result = (*(*(v11 - 8) + 48))(v6, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_219BDCB74();
    v13 = sub_219BDCD04();
    v14 = sub_219BDCCF4();
    v15[4] = v13;
    v15[5] = MEMORY[0x277CEACE0];
    v15[1] = v14;
    sub_219BDCFF4();
    return sub_219BDCB54();
  }

  return result;
}

uint64_t sub_218738F00(void *a1)
{
  v2 = sub_219BE0524();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDCDF4();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE80E0);
  result = sub_219BE1E34();
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD0C4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D2E5B8], v2);
  v7 = [objc_opt_self() sharedInstance];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8320);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE80A8);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE80F0);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (v10)
  {
    v8 = objc_allocWithZone(sub_219BDF9E4());
    return sub_219BDF9B4();
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_218739344(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740);
  result = sub_219BE1E34();
  v3 = v31;
  if (!v31)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC27D0);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsAudioPlaybackQueue();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v32;
  v28 = result;
  sub_2186F1618(qword_280EE0AF0, type metadata accessor for NewsAudioPlaybackQueue);
  v6 = sub_219BDDB64();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB640();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  v19 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0);
  result = sub_219BE1E34();
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (v23)
  {
    v11 = type metadata accessor for AudioPlaybackCommandHandler();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_commandCenter];
    *&v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_commandCenter + 8] = 0;
    swift_unknownObjectWeakInit();
    v14 = &v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_dataManager];
    *v14 = v3;
    *(v14 + 1) = v17;
    *&v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_playbackConductor] = v4;
    sub_218718690(v29, &v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker]);
    *&v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_playbackQueue] = v5;
    *&v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_resumeSlot] = v9;
    *&v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_bundleSubscriptionManager] = v19;
    *&v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineManager] = v8;
    *&v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineArticleManager] = v18;
    sub_218718690(v26, &v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineAlertControllerFactory]);
    *(v13 + 1) = v10;
    swift_unknownObjectWeakAssign();
    sub_218718690(v22, &v12[OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_sceneProvider]);
    v21.receiver = v12;
    v21.super_class = v11;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v15 = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v16 = objc_msgSendSuper2(&v21, sel_init);
    [v19 addObserver_];
    *(swift_allocObject() + 24) = v10;
    swift_unknownObjectWeakInit();

    sub_219BDE104();
    *(swift_allocObject() + 24) = v10;
    swift_unknownObjectWeakInit();
    sub_219BE20F4();

    __swift_destroy_boxed_opaque_existential_1(v20);
    *(swift_allocObject() + 24) = v10;
    swift_unknownObjectWeakInit();
    sub_219BE20F4();

    __swift_destroy_boxed_opaque_existential_1(v20);
    *(swift_allocObject() + 24) = v10;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    sub_219BE20F4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v29);

    return v16;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_218739A5C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void sub_218739A94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_219BF25B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_218739AE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_218739B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218739B88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218739BD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8BF0);
  result = sub_219BE1E34();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC27D0);
    result = sub_219BE1E34();
    if (v5)
    {
      type metadata accessor for AudioSeekCommandHandler();
      v3 = swift_allocObject();
      sub_2186CB1F0(&v6, v3 + 16);
      sub_2186CB1F0(&v4, v3 + 56);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218739CD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_21870788C(&qword_280EE8CD8, sub_2187182D4);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218739D80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    type metadata accessor for AudioProxyCommandHandler();
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v5;
    result[4] = v6;
    result[5] = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218739EAC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE89D0);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v6[5])
  {
    v4 = v6[6];
    type metadata accessor for FeedHeadlineProgressCommandHandler();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    sub_218718690(v7, v5 + 24);

    sub_219BDE124();
    *(swift_allocObject() + 24) = v4;
    swift_unknownObjectWeakInit();
    sub_219BE2104();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v7);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21873A074(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC27E0);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for FeedHeadlinePlaybackCommandHandler();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_commandCenter + 8] = 0;
    v9 = swift_unknownObjectWeakInit();
    *&v8[OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_playbackConductor] = v3;
    *&v8[OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_readingHistory] = v4;
    *(v9 + 8) = v5;
    swift_unknownObjectWeakAssign();
    sub_218718690(v14, &v8[OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_audioPlaybackContext]);
    *&v8[OBJC_IVAR____TtC7NewsUI234FeedHeadlinePlaybackCommandHandler_navigator] = v6;
    v13.receiver = v8;
    v13.super_class = v7;

    v10 = v4;
    swift_unknownObjectRetain();

    v11 = objc_msgSendSuper2(&v13, sel_init);
    [v10 addObserver_];
    sub_219BDE124();
    *(swift_allocObject() + 24) = v5;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    sub_219BE2104();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21873A374(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedPuzzleProgressCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEAA04();
    sub_219BF0AC4();
    sub_219BEE624();
    sub_2186F1618(&qword_280EA6970, type metadata accessor for FeedPuzzleProgressCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21873A488(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, _BYTE *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280E90100);
    result = sub_219BE1E34();
    if (v10)
    {
      v7 = objc_allocWithZone(a2(0));
      v8 = a3(v11, v12, v9);
      swift_unknownObjectRelease();
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21873A5D4(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7NewsUI232FeedPuzzleProgressCommandHandler_commandCenter + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_218718690(a3, &v3[OBJC_IVAR____TtC7NewsUI232FeedPuzzleProgressCommandHandler_puzzleHistory]);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21873A6FC(qword_280EA6978, v8, type metadata accessor for FeedPuzzleProgressCommandHandler);
  v9 = v7;
  sub_219BF3784();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t sub_21873A6FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21873A744(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedPuzzleRankStateCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEAA14();
    sub_219BF0AC4();
    sub_219BEEAA4();
    sub_2186F1618(&qword_280EA37A8, type metadata accessor for FeedPuzzleRankStateCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21873A858(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, _BYTE *, void *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901E0);
  result = sub_219BE1E34();
  if (v9[3])
  {
    v7 = objc_allocWithZone(a2(0));
    v8 = a3(v12, v13, v10, v9);
    swift_unknownObjectRelease();
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_21873A9F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_commandCenter + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_218718690(a3, &v4[OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleHistory]);
  sub_218718690(a4, &v4[OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleRankProvider]);
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21873AB40(qword_280EA37B0, v10, type metadata accessor for FeedPuzzleRankStateCommandHandler);
  v11 = v9;
  sub_219BF3784();

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v11;
}

uint64_t sub_21873AB40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21873AB88(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedPuzzleRankProgressCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEAA34();
    sub_219BF0AC4();
    sub_219BEF344();
    sub_2186F1618(&qword_280E9B8D8, type metadata accessor for FeedPuzzleRankProgressCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21873ACC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7NewsUI236FeedPuzzleRankProgressCommandHandler_commandCenter + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_218718690(a3, &v4[OBJC_IVAR____TtC7NewsUI236FeedPuzzleRankProgressCommandHandler_puzzleHistory]);
  sub_218718690(a4, &v4[OBJC_IVAR____TtC7NewsUI236FeedPuzzleRankProgressCommandHandler_puzzleRankProvider]);
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21873AE10(qword_280E9B8E0, v10, type metadata accessor for FeedPuzzleRankProgressCommandHandler);
  v11 = v9;
  sub_219BF3784();

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v11;
}

uint64_t sub_21873AE10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21873AE58(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedPuzzleRevealStateCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEAA24();
    sub_219BF0AC4();
    sub_2186F1618(&qword_280E9DA80, type metadata accessor for FeedPuzzleRevealStateCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21873AF90(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7NewsUI235FeedPuzzleRevealStateCommandHandler_commandCenter + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_218718690(a3, &v3[OBJC_IVAR____TtC7NewsUI235FeedPuzzleRevealStateCommandHandler_puzzleHistoryService]);
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21873B088();
  v8 = v7;
  sub_219BF3784();

  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v8;
}

unint64_t sub_21873B088()
{
  result = qword_280E9DA88[0];
  if (!qword_280E9DA88[0])
  {
    type metadata accessor for FeedPuzzleRevealStateCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9DA88);
  }

  return result;
}

uint64_t sub_21873B0DC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedPuzzleProgressStateCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEA9F4();
    sub_219BF0AC4();
    sub_219BEF714();
    sub_2186F1618(&qword_280E998F8, type metadata accessor for FeedPuzzleProgressStateCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21873B21C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7NewsUI237FeedPuzzleProgressStateCommandHandler_commandCenter + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_218718690(a3, &v3[OBJC_IVAR____TtC7NewsUI237FeedPuzzleProgressStateCommandHandler_puzzleHistoryService]);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21873B344(qword_280E99900, v8, type metadata accessor for FeedPuzzleProgressStateCommandHandler);
  v9 = v7;
  sub_219BF3784();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t sub_21873B344(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21873B38C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FeedPuzzleScoreCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEA9E4();
    sub_219BF0AC4();
    sub_219BEDEB4();
    sub_2186F1618(&qword_280EB0AD0, type metadata accessor for FeedPuzzleScoreCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21873B4CC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7NewsUI229FeedPuzzleScoreCommandHandler_commandCenter + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_218718690(a3, &v3[OBJC_IVAR____TtC7NewsUI229FeedPuzzleScoreCommandHandler_puzzleHistory]);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21873B5F4(qword_280EB0AD8, v8, type metadata accessor for FeedPuzzleScoreCommandHandler);
  v9 = v7;
  sub_219BF3784();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t sub_21873B5F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21873B63C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NotificationsStateCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEABA4();
    sub_219BF3934();
    sub_2186F1618(qword_280EA59A8, type metadata accessor for NotificationsStateCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_21873B74C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v3)
  {
    v2 = objc_allocWithZone(type metadata accessor for NotificationsStateCommandHandler());
    return sub_21873B7E8(v3, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_21873B7E8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC7NewsUI232NotificationsStateCommandHandler_commandCenter];
  *&v2[OBJC_IVAR____TtC7NewsUI232NotificationsStateCommandHandler_commandCenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC7NewsUI232NotificationsStateCommandHandler_notificationCenter;
  v7 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v8 = sub_219BF53D4();
  v9 = [v7 initWithBundleIdentifier_];

  *&v2[v6] = v9;
  *(v5 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC7NewsUI232NotificationsStateCommandHandler_notificationCenter];
  v12 = v10;
  [v11 setPrivateDelegate_];

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_21873B914(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FamilyStatusStateCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEAB94();
    sub_219BF3574();
    sub_2186F1618(&qword_280EA94E8, type metadata accessor for FamilyStatusStateCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21873BA24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280E8FEC0);
    result = sub_219BE1E34();
    if (v4)
    {
      v3 = objc_allocWithZone(type metadata accessor for FamilyStatusStateCommandHandler());
      return sub_21873BB28(v6, v7, v4, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21873BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC7NewsUI231FamilyStatusStateCommandHandler_commandCenter + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v10 = &v5[OBJC_IVAR____TtC7NewsUI231FamilyStatusStateCommandHandler_familyStatusManager];
  *v10 = a3;
  *(v10 + 1) = a4;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  swift_unknownObjectRetain();
  v11 = objc_msgSendSuper2(&v15, sel_init);
  swift_getObjectType();
  sub_21873BC58(qword_280EA94F0, v12, type metadata accessor for FamilyStatusStateCommandHandler);
  v13 = v11;
  sub_219BF42F4();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_21873BC58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21873BCA0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NewslettersStateCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    sub_219BEAB84();
    sub_219BF33B4();
    sub_2186F1618(qword_280EAC038, type metadata accessor for NewslettersStateCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21873BDB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8E240);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for NewslettersStateCommandHandler();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR____TtC7NewsUI230NewslettersStateCommandHandler_commandCenter + 8] = 0;
      *(swift_unknownObjectWeakInit() + 8) = v3;
      swift_unknownObjectWeakAssign();
      *&v6[OBJC_IVAR____TtC7NewsUI230NewslettersStateCommandHandler_newsletterManager] = v4;
      v8.receiver = v6;
      v8.super_class = v5;
      swift_unknownObjectRetain();
      v7 = objc_msgSendSuper2(&v8, sel_init);
      [v4 addObserver_];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21873BF1C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RemoveShortcutCommandHandler();
  v2 = sub_219BE1E24();
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    if (qword_280EE37E0 != -1)
    {
      swift_once();
    }

    type metadata accessor for RemoveShortcutCommandRequest();
    sub_2186F1618(&qword_280EB3260, type metadata accessor for RemoveShortcutCommandHandler);
    sub_219BE7054();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21873C048(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECD188);
  result = sub_219BE1E34();
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    MEMORY[0x28223BE20](v5);
    v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v7);
    v9 = sub_21873E91C(*v7, v10, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21873C270@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC240);
  result = sub_219BE1E34();
  if (!v131)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED02F0);
  result = sub_219BE1E34();
  if (!v129)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE9E50);
  result = sub_219BE1E34();
  if (!v127)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90330);
  result = sub_219BE1E34();
  if (!v125)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v122)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6138);
  result = sub_219BE1E34();
  if (!v121[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90590);
  result = sub_219BE1E34();
  if (!v120[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90110);
  result = sub_219BE1E34();
  if (!v119[3])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500);
  result = sub_219BE1E34();
  if (!v118[3])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90028);
  result = sub_219BE1E34();
  if (!v117[3])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990);
  result = sub_219BE1E34();
  if (!v116)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v114)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v87 = result;
  v88 = v123;
  v89 = v122;
  v90 = v5;
  v91 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E000);
  result = sub_219BE1E24();
  v86 = result;
  if (result)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v130, v131);
    v85 = &v72;
    MEMORY[0x28223BE20](v6);
    v8 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v128, v129);
    v84 = &v72;
    MEMORY[0x28223BE20](v10);
    v12 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
    v83 = &v72;
    MEMORY[0x28223BE20](v14);
    v16 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v115, v116);
    v82 = &v72;
    MEMORY[0x28223BE20](v18);
    v20 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
    v81 = &v72;
    MEMORY[0x28223BE20](v22);
    v24 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = *v8;
    v27 = *v12;
    v28 = *v16;
    v29 = *v20;
    v30 = *v24;
    v74 = type metadata accessor for CachedShortcutsManager();
    v112 = &off_282A2FB38;
    v111 = v74;
    v110[0] = v26;
    v73 = type metadata accessor for ShortcutService();
    v109 = &off_282A3DCA0;
    v108 = v73;
    v107[0] = v27;
    v72 = type metadata accessor for HeadlineService();
    v105 = v72;
    v106 = &off_282A7FE28;
    v104[0] = v28;
    v31 = type metadata accessor for IssueModelFactory();
    v102 = v31;
    v103 = &off_282A725A8;
    v101[0] = v29;
    v32 = type metadata accessor for HeadlineModelFactory();
    v99 = v32;
    v100 = &off_282A8B8E8;
    v98[0] = v30;
    v76 = type metadata accessor for ShortcutsService();
    v33 = objc_allocWithZone(v76);
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
    v80 = &v72;
    MEMORY[0x28223BE20](v34);
    v36 = (&v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36);
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v107, v108);
    v79 = &v72;
    MEMORY[0x28223BE20](v38);
    v40 = (&v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40);
    v42 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
    v78 = &v72;
    MEMORY[0x28223BE20](v42);
    v44 = (&v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    v46 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
    v77 = &v72;
    MEMORY[0x28223BE20](v46);
    v48 = (&v72 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v49 + 16))(v48);
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
    v75 = &v72;
    MEMORY[0x28223BE20](v50);
    v52 = (&v72 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    v54 = *v36;
    v55 = *v40;
    v56 = *v44;
    v57 = *v48;
    v58 = *v52;
    v97[3] = v74;
    v97[4] = &off_282A2FB38;
    v97[0] = v54;
    v96[4] = &off_282A3DCA0;
    v96[3] = v73;
    v96[0] = v55;
    v95[3] = v72;
    v95[4] = &off_282A7FE28;
    v95[0] = v56;
    v94[3] = v31;
    v94[4] = &off_282A725A8;
    v94[0] = v57;
    v93[3] = v32;
    v93[4] = &off_282A8B8E8;
    v93[0] = v58;
    v59 = OBJC_IVAR____TtC7NewsUI216ShortcutsService_jsonDecoder;
    sub_219BE1994();
    swift_allocObject();
    *&v33[v59] = sub_219BE1984();
    *&v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_appConfigManager] = v90;
    sub_218718690(v97, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager]);
    sub_218718690(v96, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService]);
    sub_218718690(v95, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_headlineService]);
    sub_218718690(v124, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_resourceService]);
    v60 = &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_tagService];
    v61 = v88;
    *v60 = v89;
    *(v60 + 1) = v61;
    sub_218718690(v121, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_tagSuggestionService]);
    sub_218718690(v120, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_issueService]);
    sub_218718690(v119, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_puzzleAccessProvider]);
    sub_218718690(v118, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_puzzleService]);
    sub_218718690(v117, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_sportsEventController]);
    sub_218718690(v94, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_issueModelFactory]);
    sub_218718690(v93, &v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_headlineModelFactory]);
    v63 = v86;
    v62 = v87;
    *&v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_subscriptionController] = v87;
    *&v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_shortcutCategoryList] = v63;
    *&v33[OBJC_IVAR____TtC7NewsUI216ShortcutsService_observers] = MEMORY[0x277D84F90];
    v92.receiver = v33;
    v64 = v76;
    v92.super_class = v76;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v65 = v62;
    v66 = v63;
    v67 = objc_msgSendSuper2(&v92, sel_init);
    v68 = *&v67[OBJC_IVAR____TtC7NewsUI216ShortcutsService_subscriptionController];
    v69 = v67;
    [v68 addObserver_];
    v70 = __swift_project_boxed_opaque_existential_1(&v69[OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService], *&v69[OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService + 24]);
    sub_21873E668(v69, *v70, &off_282A384F8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v117);
    __swift_destroy_boxed_opaque_existential_1(v118);
    __swift_destroy_boxed_opaque_existential_1(v119);
    __swift_destroy_boxed_opaque_existential_1(v120);
    __swift_destroy_boxed_opaque_existential_1(v121);
    __swift_destroy_boxed_opaque_existential_1(v124);
    __swift_destroy_boxed_opaque_existential_1(v93);
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(v95);
    __swift_destroy_boxed_opaque_existential_1(v96);
    __swift_destroy_boxed_opaque_existential_1(v97);
    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v107);
    __swift_destroy_boxed_opaque_existential_1(v110);
    __swift_destroy_boxed_opaque_existential_1(v113);
    __swift_destroy_boxed_opaque_existential_1(v115);
    __swift_destroy_boxed_opaque_existential_1(v126);
    __swift_destroy_boxed_opaque_existential_1(v128);
    result = __swift_destroy_boxed_opaque_existential_1(v130);
    v71 = v91;
    v91[3] = v64;
    v71[4] = &off_282A38508;
    *v71 = v69;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21873D1D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED02F0);
  result = sub_219BE1E34();
  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v5 = v17;
  if (v17)
  {
    v6 = v18;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v7);
    v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_21873DB90(&v23, *v9, *v13, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = type metadata accessor for CachedShortcutsManager();
    a2[3] = result;
    a2[4] = &off_282A2FB38;
    *a2 = v15;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_21873D4E0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for HeadlineModelFactory();
  swift_allocObject();
  result = sub_21873D538();
  a1[3] = v2;
  a1[4] = &off_282A8B8E8;
  *a1 = result;
  return result;
}

void *sub_21873D538()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  v0[7] = 0;
  swift_unknownObjectWeakInit();
  v0[9] = 0;
  swift_unknownObjectWeakInit();
  v0[11] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[14] = 0;
  swift_unknownObjectWeakInit();
  v0[16] = 0;
  swift_unknownObjectWeakInit();
  v0[18] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_21873D5DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6A0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  v30 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E0A8);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v27 = v6;
  v28 = v8;
  v29 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v11 = v34;
  if (v34)
  {
    v26 = v35;
    v12 = type metadata accessor for ShortcutService();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC7NewsUI215ShortcutService_lockedObservers];
    *v14 = 0;
    *(v14 + 1) = MEMORY[0x277D84F90];
    *&v13[OBJC_IVAR____TtC7NewsUI215ShortcutService_unsafeOrderedShortcuts] = 0;
    v15 = OBJC_IVAR____TtC7NewsUI215ShortcutService_lock;
    v16 = MEMORY[0x277D6CA08];
    sub_218718850(0, &unk_280E8C0E0, MEMORY[0x277D6CA08], MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    sub_219BE1AD4();
    v33 = v17;
    sub_2186D5C14(&qword_280EE7E98, MEMORY[0x277D6CA08]);
    sub_218718850(0, &qword_280E8F620, v16, MEMORY[0x277D83940]);
    sub_21873DB08();
    sub_219BF7164();
    sub_219BE1B04();
    swift_allocObject();
    *&v13[v15] = sub_219BE1AF4();
    *&v13[OBJC_IVAR____TtC7NewsUI215ShortcutService_featureAvailability] = v28;
    v18 = v31;
    *&v13[OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList] = v31;
    *&v13[OBJC_IVAR____TtC7NewsUI215ShortcutService_subscriptionController] = v9;
    *&v13[OBJC_IVAR____TtC7NewsUI215ShortcutService_configurationManager] = v10;
    v19 = &v13[OBJC_IVAR____TtC7NewsUI215ShortcutService_tagService];
    v20 = v26;
    *v19 = v11;
    *(v19 + 1) = v20;
    v32.receiver = v13;
    v32.super_class = v12;
    swift_unknownObjectRetain();
    v21 = v18;
    v22 = v9;
    swift_unknownObjectRetain();
    v23 = objc_msgSendSuper2(&v32, sel_init);
    [v21 addObserver_];
    [v22 addObserver_];

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v24 = v29;
    v29[3] = v12;
    v24[4] = &off_282A3DCA0;
    *v24 = v23;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_21873DA98()
{
  if (MEMORY[0x277D85020])
  {
    sub_218C55B28(0, &qword_27CC0FE08, 255, sub_218C55AF4, MEMORY[0x277D85458]);
  }
}

unint64_t sub_21873DB08()
{
  result = qword_280E8F618;
  if (!qword_280E8F618)
  {
    sub_218718850(255, &qword_280E8F620, MEMORY[0x277D6CA08], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F618);
  }

  return result;
}

void *sub_21873DB90(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for HeadlineModelFactory();
  v27[3] = v10;
  v27[4] = &off_282A8B8E8;
  v27[0] = a2;
  v11 = type metadata accessor for ShortcutService();
  v25 = v11;
  v26 = &off_282A3DCA0;
  v24[0] = a3;
  type metadata accessor for CachedShortcutsManager();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x28223BE20](v17);
  v19 = (v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v12[10] = v10;
  v12[11] = &off_282A8B8E8;
  v12[12] = v22;
  v12[7] = v21;
  v12[15] = v11;
  v12[16] = &off_282A3DCA0;
  sub_2186CB1F0(a1, (v12 + 2));
  v12[17] = a4;
  v12[18] = a5;
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v12;
}

uint64_t sub_21873DDCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v36)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v7 = v33;
  if (!v33)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  v27 = v34;
  v28 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9E400);
  result = sub_219BE1E34();
  if (v32)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v26 = &v26;
    MEMORY[0x28223BE20](v9);
    v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for HeadlineModelFactory();
    v30[3] = v14;
    v30[4] = &off_282A8B8E8;
    v30[0] = v13;
    v15 = type metadata accessor for HeadlineService();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v30, v14);
    MEMORY[0x28223BE20](v17);
    v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v29[3] = v14;
    v29[4] = &off_282A8B8E8;
    v29[0] = v21;
    sub_218718690(v29, (v16 + 2));
    v16[7] = v5;
    v16[8] = v6;
    v22 = objc_allocWithZone(MEMORY[0x277CCABD8]);
    v23 = [v22 init];
    [v23 setQualityOfService_];
    v24 = sub_219BF53D4();
    [v23 setName_];

    __swift_destroy_boxed_opaque_existential_1(v29);
    v16[9] = v23;
    v16[10] = v7;
    v16[11] = v27;
    v16[12] = v8;
    sub_2186CB1F0(&v31, (v16 + 13));
    __swift_destroy_boxed_opaque_existential_1(v30);
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v25 = v28;
    v28[3] = v15;
    v25[4] = &off_282A7FE28;
    *v25 = v16;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21873E248@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    TimeRangeConfigurationManager = type metadata accessor for TopHeadlinesQueryTimeRangeConfigurationManager();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = TimeRangeConfigurationManager;
    a2[4] = &protocol witness table for TopHeadlinesQueryTimeRangeConfigurationManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21873E328@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDE0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873E5D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for IssueModelFactory();
    v10 = swift_allocObject();
    v10[2] = v5;
    result = sub_2186CB1F0(&v15, (v10 + 3));
    v10[8] = v6;
    v10[9] = v7;
    v10[10] = v13;
    v10[11] = v14;
    v10[13] = v11;
    v10[14] = v12;
    v10[12] = v8;
    a2[3] = v9;
    a2[4] = &off_282A725A8;
    *a2 = v10;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_21873E5D4()
{
  result = qword_280E8DE40;
  if (!qword_280E8DE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DE40);
  }

  return result;
}

void sub_21873E668(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2 + OBJC_IVAR____TtC7NewsUI215ShortcutService_lockedObservers;
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC7NewsUI215ShortcutService_lockedObservers));
  v5 = *(v4 + 8);

  os_unfair_lock_unlock(v4);
  v15 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_18:
    v6 = sub_219BF7214();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v13 = a3;
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v7, v5);
          a3 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v10 = v15;
            a3 = v13;
            goto LABEL_20;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          a3 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_15;
          }
        }

        if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v9 = Strong, swift_unknownObjectRelease(), v9 == a1))
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        ++v7;
        if (a3 == v6)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_20:

  os_unfair_lock_lock(v4);

  *(v4 + 8) = v10;
  os_unfair_lock_unlock(v4);
  type metadata accessor for ShortcutServiceObserverProxy();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = a3;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_lock(v4);
  v12 = *(v4 + 8);

  os_unfair_lock_unlock(v4);
  MEMORY[0x21CECC690]();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  os_unfair_lock_lock(v4);

  *(v4 + 8) = v12;

  os_unfair_lock_unlock(v4);
}

id sub_21873E91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ShortcutsService();
  v20[3] = v8;
  v20[4] = &off_282A38508;
  v20[0] = a1;
  v9 = type metadata accessor for RemoveShortcutCommandHandler();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v19[3] = v8;
  v19[4] = &off_282A38508;
  v19[0] = v15;
  sub_218718690(v19, &v10[OBJC_IVAR____TtC7NewsUI228RemoveShortcutCommandHandler_shortcutsService]);
  sub_218718690(a2, &v10[OBJC_IVAR____TtC7NewsUI228RemoveShortcutCommandHandler_offlineProvider]);
  *&v10[OBJC_IVAR____TtC7NewsUI228RemoveShortcutCommandHandler_featureAvailability] = a3;
  *&v10[OBJC_IVAR____TtC7NewsUI228RemoveShortcutCommandHandler_bundleSubscriptionManager] = a4;
  v18.receiver = v10;
  v18.super_class = v9;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

void sub_21873EAAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RemoveShortcutCommandRequest();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21873EB0C()
{
  sub_21873EAAC(0, &unk_280EE39C0, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_21873EAAC(0, &qword_280EE3958, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F62458 = result;
  return result;
}

uint64_t type metadata accessor for RemoveShortcutCommandRequest()
{
  result = qword_280EB3220;
  if (!qword_280EB3220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21873EC90()
{
  result = type metadata accessor for Shortcut();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Shortcut()
{
  result = qword_280E92BF0;
  if (!qword_280E92BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21873ED48()
{
  result = _s8ResolvedVMa();
  if (v1 <= 0x3F)
  {
    result = sub_2186D8870();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s8ResolvedVMa()
{
  result = qword_280EDAAD8;
  if (!qword_280EDAAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21873EE08()
{
  result = type metadata accessor for ShortcutCategory();
  if (v1 <= 0x3F)
  {
    result = _s13ResolvedModelOMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ShortcutCategory()
{
  result = qword_280ED7810;
  if (!qword_280ED7810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21873EEE0()
{
  sub_21873EF74();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ShortcutIcon();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21873EF74()
{
  if (!qword_280EDEA48[0])
  {
    type metadata accessor for ShortcutIcon();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, qword_280EDEA48);
    }
  }
}

uint64_t type metadata accessor for ShortcutIcon()
{
  result = qword_280EDEA78;
  if (!qword_280EDEA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21873F018()
{
  result = type metadata accessor for ShortcutIconURL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ShortcutIconURL()
{
  result = qword_280ED9948;
  if (!qword_280ED9948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21873F0D0()
{
  sub_219BDB954();
  if (v0 <= 0x3F)
  {
    sub_21873F15C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21873F15C()
{
  if (!qword_280ED5240)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280ED5240);
    }
  }
}

uint64_t _s13ResolvedModelOMa()
{
  result = qword_280EDADC8;
  if (!qword_280EDADC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21873F1F8()
{
  result = _s8HeadlineVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s3TagVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s5IssueVMa(319);
      if (v3 <= 0x3F)
      {
        result = _s11SportsEventVMa();
        if (v4 <= 0x3F)
        {
          result = _s6PuzzleVMa(319);
          if (v5 <= 0x3F)
          {
            result = _s10PuzzleFeedVMa(319);
            if (v6 <= 0x3F)
            {
              result = sub_219BDB954();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_21873F2F0()
{
  type metadata accessor for HeadlineModel(319);
  if (v0 <= 0x3F)
  {
    sub_21873F65C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21873F394()
{
  sub_21873F590(319, &qword_280E91C10, MEMORY[0x277D32010]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HeadlineSharedState(319);
    if (v1 <= 0x3F)
    {
      sub_21873F590(319, &unk_280EE34A0, MEMORY[0x277D2D148]);
      if (v2 <= 0x3F)
      {
        sub_219BF0574();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21873F53C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21873F590(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21873F604()
{
  v0 = sub_219BF12B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_21873F690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21873F714()
{
  type metadata accessor for TagModel();
  if (v0 <= 0x3F)
  {
    sub_21873F65C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21873F7DC()
{
  sub_21873F65C(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t _s11SportsEventVMa()
{
  result = qword_280EDAE60;
  if (!qword_280EDAE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21873F8A8()
{
  sub_21873F92C();
  if (v0 <= 0x3F)
  {
    sub_21873F65C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21873F92C()
{
  result = qword_280E8DFF0;
  if (!qword_280E8DFF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DFF0);
  }

  return result;
}

void sub_21873F9B0()
{
  sub_21873FA4C();
  if (v0 <= 0x3F)
  {
    sub_21873FAB0();
    if (v1 <= 0x3F)
    {
      sub_21873F65C(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21873FA4C()
{
  result = qword_280E8E430;
  if (!qword_280E8E430)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E430);
  }

  return result;
}

unint64_t sub_21873FAB0()
{
  result = qword_280E90110;
  if (!qword_280E90110)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E90110);
  }

  return result;
}

void sub_21873FB34()
{
  sub_21873FBB8();
  if (v0 <= 0x3F)
  {
    sub_21873F65C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21873FBB8()
{
  result = qword_280E8E130;
  if (!qword_280E8E130)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E130);
  }

  return result;
}

void sub_21873FC1C(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 supportsMultipleScenes];

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for NewsOpenInNewWindowCommandHandler();
    if (sub_219BE1E24())
    {
      swift_getObjectType();
      sub_219BEAF54();
      sub_219BEAB64();
      sub_219BF2484();
      sub_2186F1618(&unk_280EE0428, type metadata accessor for NewsOpenInNewWindowCommandHandler);
      sub_219BE7054();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21873FD70(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 supportsMultipleScenes];

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for NewsOpenInNewTabCommandHandler();
    if (sub_219BE1E24())
    {
      swift_getObjectType();
      sub_219BEAF54();
      sub_219BEAB34();
      sub_219BF2484();
      sub_2186F1618(qword_280EE0500, type metadata accessor for NewsOpenInNewTabCommandHandler);
      sub_219BE7054();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21873FEC4(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 supportsMultipleScenes];

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for OpenMainWindowCommandHandler();
    if (sub_219BE1E24())
    {
      swift_getObjectType();
      if (qword_280EE3918 != -1)
      {
        swift_once();
      }

      sub_2186F1618(qword_280EB3768, type metadata accessor for OpenMainWindowCommandHandler);
      sub_219BE7054();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_218740028(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DebugMenuCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    if (qword_280EE3838 != -1)
    {
      swift_once();
    }

    sub_2186F1618(qword_280EC5710, type metadata accessor for DebugMenuCommandHandler);
    sub_219BE7054();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21874014C()
{
  type metadata accessor for DebugMenuCommandHandler();

  return swift_allocObject();
}

uint64_t sub_218740180()
{
  sub_218724DE0(0, &unk_280EE3970, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218724DE0(0, &qword_280EE3930, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F62490 = result;
  return result;
}

uint64_t sub_2187402B8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CommandObserver();
  sub_219BE1E24();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChannelUpsellCommandObserver();
  sub_219BE1E24();
}

uint64_t sub_21874034C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v3 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v7 = v24;
  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FED0);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (v19)
  {
    type metadata accessor for CommandObserver();
    v9 = swift_allocObject();
    v9[2] = v26;
    v9[3] = v4;
    v9[4] = v5;
    v9[5] = v6;
    v9[6] = v7;
    v9[7] = v16;
    v9[8] = v8;
    sub_218718690(v20, (v9 + 9));
    sub_218718690(v18, (v9 + 14));
    swift_getObjectType();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    sub_219BEAEE4();
    *(swift_allocObject() + 24) = v4;
    swift_unknownObjectWeakInit();
    sub_2186D6710(0, &qword_280E8E680);
    sub_219BE7014();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAF14();
    sub_219BF3344();
    sub_218740ED4();
    sub_219BE7004();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAF04();
    v10 = swift_allocObject();
    swift_weakInit();
    sub_218718690(v22, v17);
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v8;
    v11[4] = v7;
    v11[5] = v16;
    sub_2186CB1F0(v17, (v11 + 6));
    v11[11] = v5;
    sub_219BF3E64();

    swift_unknownObjectRetain();

    sub_219BE7014();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAD24();
    sub_219BF2B34();

    sub_219BE7004();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAD34();

    sub_219BE7004();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAD94();
    sub_218AD7B00(0);
    sub_218740F28();

    sub_219BE7004();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAD94();

    sub_219BE7004();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAE14();
    v12 = swift_allocObject();
    swift_weakInit();
    sub_218718690(v18, v17);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v5;
    sub_2186CB1F0(v17, v13 + 32);
    sub_219BF3C74();

    sub_219BE7014();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_218740F7C(v3, v4, v8, v20);
    sub_219BEAF54();
    sub_219BEAA84();
    sub_2186D6710(0, &qword_280E8E260);

    sub_219BE7014();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAF44();
    sub_218718690(v18, v17);
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    sub_2186CB1F0(v17, v14 + 24);
    sub_219BE7394();

    sub_219BE7014();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAF24();
    v15 = swift_allocObject();
    *(v15 + 16) = v7;
    *(v15 + 24) = v16;
    sub_2187411B0();
    swift_unknownObjectRetain();
    sub_219BE7004();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAA64();
    sub_218741204();
    sub_219BE7004();

    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_219BEAEA4();
    sub_219BF3F24();

    sub_219BE7014();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218740D84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218740DBC()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_218740E14()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_218740E5C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_218740E9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_218740ED4()
{
  result = qword_280E90290;
  if (!qword_280E90290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90290);
  }

  return result;
}

unint64_t sub_218740F28()
{
  result = qword_280E90450;
  if (!qword_280E90450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90450);
  }

  return result;
}

unint64_t sub_218740F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = MEMORY[0x21CEC1B50]();
  v5 = result;
  if (result >> 62)
  {
    result = sub_219BF7214();
    v6 = result;
    if (result)
    {
LABEL_3:
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        swift_getObjectType();
        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CECE0F0](v7, v5);
          }

          else
          {
          }

          ++v7;
          v8 = swift_allocObject();
          swift_weakInit();
          sub_218718690(a4, v11);
          v9 = swift_allocObject();
          *(v9 + 16) = v8;
          sub_2186CB1F0(v11, v9 + 24);
          sub_219BE7014();

          __swift_destroy_boxed_opaque_existential_1(v11);
        }

        while (v6 != v7);
      }

      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_218741138()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218741170()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_2187411B0()
{
  result = qword_280E902D0;
  if (!qword_280E902D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E902D0);
  }

  return result;
}

unint64_t sub_218741204()
{
  result = qword_280E902F0;
  if (!qword_280E902F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E902F0);
  }

  return result;
}

uint64_t sub_218741258(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v3 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED4520);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340);
  result = sub_219BE1E34();
  if (v21)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v5);
    v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for UpsellManager();
    v19[3] = v10;
    v19[4] = &off_282A95970;
    v19[0] = v9;
    type metadata accessor for ChannelUpsellCommandObserver();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    MEMORY[0x28223BE20](v12);
    v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v18[3] = v10;
    v18[4] = &off_282A95970;
    v18[0] = v16;
    *(v11 + 16) = v3;
    *(v11 + 24) = v4;
    sub_218718690(v20, v11 + 32);
    v17 = *__swift_project_boxed_opaque_existential_1(v18, v10);
    swift_unknownObjectRetain();
    sub_218746C70(v17, v11);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218741570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186D95F8(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v75 - v8;
  v81 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v81);
  v82 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD38);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FDB0);
  result = sub_219BE1E34();
  if (!v93)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_2186CB1F0(&v91, v112);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  v87 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v80 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0);
  result = sub_219BE1E24();
  v79 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E820);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED8A00);
  result = sub_219BE1E34();
  if (!v111)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC2530);
  result = sub_219BE1E34();
  if (!v109)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D95F8(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  v78 = result;
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (!v107[3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v77 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v106[3])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v84 = sub_2186C709C(0, &unk_280EE6340);
  result = sub_219BE1E34();
  if (!v105[3])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v85 = v14;
  v86 = v13;
  v88 = v12;
  v75[0] = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  v76 = result;
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
  v75[5] = v75;
  MEMORY[0x28223BE20](v15);
  v17 = (v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
  v75[4] = v75;
  MEMORY[0x28223BE20](v19);
  v21 = (v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v17;
  v24 = *v21;
  v25 = type metadata accessor for DateProvider();
  v103 = v25;
  v104 = &off_282A89620;
  v102[0] = v23;
  v26 = type metadata accessor for ChannelUpsellTracker();
  v100 = v26;
  v101 = &off_282A63730;
  v99[0] = v24;
  v83 = type metadata accessor for ChannelUpsellHandler();
  v27 = objc_allocWithZone(v83);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
  v75[3] = v75;
  MEMORY[0x28223BE20](v28);
  v30 = (v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v99, v100);
  v75[2] = v75;
  MEMORY[0x28223BE20](v32);
  v34 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v30;
  v37 = *v34;
  v98[3] = v25;
  v98[4] = &off_282A89620;
  v97[4] = &off_282A63730;
  v98[0] = v36;
  v97[3] = v26;
  v97[0] = v37;
  v38 = &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellShareClosure];
  *v38 = 0;
  v38[1] = 0;
  v39 = &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure];
  *v39 = 0;
  v39[1] = 0;
  v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_didLoadTriggerRecord] = 0;
  v40 = &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lastEOAArticleID];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lastAnyChannelEOAArticleID];
  *v41 = 0;
  v41[1] = 0;
  v42 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler__pendingTriggerConditions;
  v43 = MEMORY[0x277D84F90];
  *&v91 = MEMORY[0x277D84F90];
  sub_2187442FC();
  swift_allocObject();
  v44 = v88;
  swift_unknownObjectRetain();
  v45 = v86;
  swift_unknownObjectRetain();
  *&v27[v42] = sub_219BE2E64();
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler____lazy_storage___anyChannelChannelIDs] = 0;
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_configurationManager] = v44;
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_paidAccessChecker] = v87;
  v46 = v79;
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_purchaseController] = v79;
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_pptContext] = v85;
  sub_218718690(v98, &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_dateProvider]);
  sub_218718690(v97, &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_localTracker]);
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_postActionHandlerManager] = v45;
  *&v91 = v43;
  v75[1] = sub_2186D5C5C(&qword_280EE7E70, MEMORY[0x277D6CA70]);
  v47 = MEMORY[0x277D6CA70];
  sub_2186D95F8(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_218744378(&qword_280E8F600, &qword_280E8F610, v47);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v79 = v46;
  swift_unknownObjectRetain();
  sub_219BF7164();
  sub_2186D95F8(0, &unk_280EE7298, sub_2187443DC, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_lazyKeyValueStore] = sub_219BE2D14();
  sub_218718690(v107, &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_sceneProvider]);
  sub_218718690(v106, &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_offlineProvider]);
  sub_218718690(v105, &v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_router]);
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_bundleSubscriptionManager] = v76;
  v48 = type metadata accessor for ChannelUpsellTriggerRecord();
  v49 = v80;
  (*(*(v48 - 8) + 56))(v80, 1, 1, v48);
  sub_218744650();
  v50 = swift_allocObject();
  *(v50 + ((*(*v50 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v51 = v77;
  sub_2187446E8(v49, v77);
  swift_unknownObjectRetain();
  sub_218745EEC(v49, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88], sub_2186D95F8);
  sub_21874655C(v51, v50 + *(*v50 + *MEMORY[0x277D841D0] + 16));
  *&v27[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord] = v50;
  v96.receiver = v27;
  v96.super_class = v83;
  v52 = objc_msgSendSuper2(&v96, sel_init);
  v53 = objc_opt_self();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = sub_219919C70;
  v95 = v54;
  *&v91 = MEMORY[0x277D85DD0];
  *(&v91 + 1) = 1107296256;
  v92 = sub_218793E0C;
  v93 = &block_descriptor_186;
  v55 = _Block_copy(&v91);
  v56 = v52;

  [v53 scheduleLowPriorityBlock_];
  _Block_release(v55);
  swift_unknownObjectRelease();
  v57 = v86;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v97);
  __swift_destroy_boxed_opaque_existential_1(v98);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_project_boxed_opaque_existential_1(v112, v112[3]);
  sub_2186D5C5C(&unk_280ECF178, type metadata accessor for ChannelUpsellHandler);
  v58 = v56;
  sub_219BF4914();

  __swift_destroy_boxed_opaque_existential_1(&v91);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v59 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9F18);
  result = sub_219BE1E34();
  if (!v93)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v111)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (!v109)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v60 = type metadata accessor for SportsUpsellHandler();
  v61 = objc_allocWithZone(v60);
  v62 = &v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = &v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled];
  *v63 = 0;
  *(v63 + 1) = 0;
  *&v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler____lazy_storage___sportsUpsellConfig] = 1;
  *&v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_configurationManager] = v88;
  *&v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_userInfo] = v59;
  sub_218718690(&v91, &v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store]);
  sub_218718690(v110, &v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_tagService]);
  *&v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_postActionHandlerManager] = v57;
  sub_218718690(v108, &v61[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_router]);
  v90.receiver = v61;
  v90.super_class = v60;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v64 = objc_msgSendSuper2(&v90, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE62B0);
  result = sub_219BE1E34();
  if (!v93)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6310);
  result = sub_219BE1E34();
  v65 = v107[0];
  if (!v107[0])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v66 = v107[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6210);
  result = sub_219BE1E34();
  if (!v111)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v109)
  {
    v67 = type metadata accessor for BundleViaOfferUpsellHandler();
    v68 = objc_allocWithZone(v67);
    sub_218718690(&v91, &v68[OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_paidBundleViaOfferHandler]);
    v69 = &v68[OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_appLaunchMethodChecker];
    *v69 = v65;
    *(v69 + 1) = v66;
    sub_218718690(v110, &v68[OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_featureAvailability]);
    sub_218718690(v108, &v68[OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_router]);
    v89.receiver = v68;
    v89.super_class = v67;
    v70 = objc_msgSendSuper2(&v89, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v108);
    __swift_destroy_boxed_opaque_existential_1(v110);
    __swift_destroy_boxed_opaque_existential_1(&v91);
    sub_218746BE0(0, &unk_280E8BBB0, &qword_280ED4528, &protocol descriptor for UpsellHandlerType, MEMORY[0x277D84560]);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_219C0B8C0;
    *(v71 + 56) = v83;
    *(v71 + 64) = &off_282A39850;
    *(v71 + 32) = v58;
    *(v71 + 96) = v60;
    *(v71 + 104) = &off_282A883A8;
    *(v71 + 72) = v64;
    *(v71 + 136) = v67;
    *(v71 + 144) = &off_282A486E0;
    *(v71 + 112) = v70;
    v72 = type metadata accessor for UpsellManager();
    v73 = swift_allocObject();
    *(v73 + 16) = v71;
    v74 = v75[0];
    *(v75[0] + 24) = v72;
    v74[4] = &off_282A95970;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *v74 = v73;
    return __swift_destroy_boxed_opaque_existential_1(v112);
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_218742878()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t type metadata accessor for ChannelUpsellTriggerRecord()
{
  result = qword_280EBBDE0;
  if (!qword_280EBBDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218742900()
{
  sub_218742A78(319, &qword_280E8FAE0, MEMORY[0x277D834F8]);
  if (v0 <= 0x3F)
  {
    sub_218742B58(319, &qword_280E8FC20, MEMORY[0x277CC9578], MEMORY[0x277D834F8]);
    if (v1 <= 0x3F)
    {
      sub_218742B00(319, &qword_280E8FAC8);
      if (v2 <= 0x3F)
      {
        sub_2186E2394();
        if (v3 <= 0x3F)
        {
          sub_2186DD120(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_218742A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_218742B00(255, &qword_280E8FA30);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_218742B00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_219BF52A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_218742B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218742BCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DateProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A89620;
  *a1 = result;
  return result;
}

uint64_t sub_218742C38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ChannelUpsellTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A63730;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218742CFC()
{
  v0 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v0);
  v1 = MEMORY[0x277D6CA70];
  sub_2186D0720(0, &qword_280E8C0D8, MEMORY[0x277D6CA70], MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  sub_219BE1BE4();
  sub_21872CBB8(&qword_280EE7E70, MEMORY[0x277D6CA70]);
  sub_2186D0720(0, &qword_280E8F610, v1, MEMORY[0x277D83940]);
  sub_21872CC48(&qword_280E8F600, &qword_280E8F610, v1);
  sub_219BF7164();
  sub_2186D0720(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218742F28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_218718690(a1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E97540);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA0C00);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EE0960);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SubscriptionsRouter();
    v7 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();

    sub_2186CB1F0(v16, v7 + 16);
    sub_2186CB1F0(&v14, v7 + 64);
    *(v7 + 104) = v11;
    *(v7 + 120) = v12;
    *(v7 + 136) = v13;
    *(v7 + 144) = v8;
    *(v7 + 160) = v9;
    *(v7 + 176) = v10;
    *(v7 + 184) = v5;
    a2[3] = v6;
    result = sub_21871C950(&qword_280ED01B8, type metadata accessor for SubscriptionsRouter);
    a2[4] = result;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218743180@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityInfoDeserializer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v52)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE8E28);
  result = sub_219BE1E34();
  if (!v50)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = result;
  v34 = v6;
  v35 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0);
  result = sub_219BE1DF4();
  if (!v48)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DF4();
  if (!v46)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500);
  result = sub_219BE1E34();
  if (!v44)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v42)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FFC0);
  result = sub_219BE1E34();
  v10 = v39;
  if (!v39)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = result;
  v29 = v9;
  v30 = v8;
  v31 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E95AE8);
  result = sub_219BE1E34();
  if (v38)
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    MEMORY[0x28223BE20](v12);
    v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v17 = type metadata accessor for ContinueReadingDismissalDelayProvider();
    v36[3] = v17;
    v36[4] = &off_282AA12D0;
    v36[0] = v16;
    v18 = type metadata accessor for ContinueReadingEligibilityProcessor();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v36, v17);
    MEMORY[0x28223BE20](v20);
    v22 = (&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;
    v19[43] = v17;
    v19[44] = &off_282AA12D0;
    v19[40] = v24;
    v25 = v34;
    v19[2] = v35;
    v19[3] = v25;
    sub_2186CB1F0(&v51, (v19 + 4));
    sub_2186CB1F0(&v49, (v19 + 9));
    v26 = v30;
    v19[14] = v31;
    v19[15] = v26;
    v19[16] = v29;
    sub_2186CB1F0(&v47, (v19 + 17));
    sub_2186CB1F0(&v45, (v19 + 22));
    sub_2186CB1F0(&v43, (v19 + 27));
    sub_2186CB1F0(&v41, (v19 + 32));
    v27 = v32;
    v19[37] = v10;
    v19[38] = v27;
    v19[39] = v11;
    __swift_destroy_boxed_opaque_existential_1(v36);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v33;
    v33[3] = v18;
    v28[4] = &off_282A470F0;
    *v28 = v19;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

id sub_218743830(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AnalyticsReferralFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EE0368);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for NewsActivityInfoDeserializer();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC7NewsUI228NewsActivityInfoDeserializer_analyticsReferralFactory] = v3;
    *&v7[OBJC_IVAR____TtC7NewsUI228NewsActivityInfoDeserializer_intentDeserializer] = v4;
    *&v7[OBJC_IVAR____TtC7NewsUI228NewsActivityInfoDeserializer_featureAvailability] = v5;
    v8.receiver = v7;
    v8.super_class = v6;
    return objc_msgSendSuper2(&v8, sel_init);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218743974()
{
  type metadata accessor for AnalyticsReferralFactory();

  return swift_allocObject();
}

unint64_t sub_2187439A8@<X0>(uint64_t *a1@<X8>)
{
  static PPT.test.getter(&v6);
  v2 = v6;
  if (v6 == 33)
  {
    v3 = sub_219BEBCA4();
    v4 = MEMORY[0x277D2D140];
    a1[3] = v3;
    a1[4] = v4;
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_219BEBC94();
  }

  else
  {
    a1[3] = &type metadata for PPT.Test;
    result = sub_218743A24();
    a1[4] = result;
    *a1 = v2;
  }

  return result;
}

unint64_t sub_218743A24()
{
  result = qword_27CC20678;
  if (!qword_27CC20678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20678);
  }

  return result;
}

uint64_t sub_218743AD4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_218743B3C()
{
  sub_2186C709C(0, qword_280E97550);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E95AE8);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA9A00);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EB1168);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EA99F0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA6BB8);
  sub_219BE2914();

  type metadata accessor for ContinueReadingViewController();
  sub_219BE2904();
}

uint64_t sub_218743D70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ContinueReadingDismissalDelayProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282AA12D0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218743E50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE3F60);
    result = sub_219BE1E34();
    if (v8)
    {
      v6 = type metadata accessor for ContinueReadingPromptPresenter();
      swift_allocObject();
      v7 = sub_218743F8C(v5, v8, v9);

      result = swift_unknownObjectRelease();
      a2[3] = v6;
      a2[4] = &off_282A4ABE8;
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

void *sub_218743F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187441A0();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_allocObject();
  v7 = sub_219BE20D4();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = v7;
  swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v9);
  swift_getObjectType();
  sub_219BE9B34();
  swift_allocObject();
  swift_weakInit();
  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v9);
  swift_allocObject();
  swift_weakInit();

  sub_219BE6454();

  return v3;
}

uint64_t sub_218744168()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_2187441A0()
{
  if (!qword_280EE7B68)
  {
    sub_2186F8548(255, &unk_280EC8900, &type metadata for ContinueReadingContent, MEMORY[0x277D83D88]);
    v0 = sub_219BE2124();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7B68);
    }
  }
}

uint64_t sub_21874421C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

void sub_2187442AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2187442FC()
{
  if (!qword_280EE7068)
  {
    sub_2187442AC(255, &qword_280E8F100, &type metadata for PendingTriggerCondition, MEMORY[0x277D83940]);
    v0 = sub_219BE2EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7068);
    }
  }
}

uint64_t sub_218744378(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2186D95F8(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2187443DC()
{
  if (!qword_280EE5E60)
  {
    sub_21874446C();
    sub_2187444C0();
    sub_218744514();
    v0 = sub_219BE55F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5E60);
    }
  }
}

unint64_t sub_21874446C()
{
  result = qword_280EB4E58[0];
  if (!qword_280EB4E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB4E58);
  }

  return result;
}

unint64_t sub_2187444C0()
{
  result = qword_280EE9CD0;
  if (!qword_280EE9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9CD0);
  }

  return result;
}

unint64_t sub_218744514()
{
  result = qword_280EE9CE0;
  if (!qword_280EE9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9CE0);
  }

  return result;
}

void *sub_21874457C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 56);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_218744650()
{
  if (!qword_280E8D5A0)
  {
    sub_2186D95F8(255, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_219BF73A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D5A0);
    }
  }
}

uint64_t sub_2187446E8(uint64_t a1, uint64_t a2)
{
  sub_2186D95F8(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218744790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 56);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_218744870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187448D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187449F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218744B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744B70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218744BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744C90(uint64_t a1, unint64_t *a2)
{
  sub_2186DEEA0(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218744CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218744E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218744FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874504C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187450AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874510C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187451CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874522C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187452EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874534C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187453AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874540C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874546C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187454CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874552C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874558C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187455EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187456AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874570C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874576C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187457CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874588C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187458EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187459AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218745A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218745ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218745CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218745DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218745E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218745EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218745FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874606C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187460CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874618C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2187546D8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2187461FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874625C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187462BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874637C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187463DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21874649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2187464FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21874655C(uint64_t a1, uint64_t a2)
{
  sub_2186D95F8(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187465F0@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D95F8(0, &qword_280EE5F00, MEMORY[0x277D85B28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for SportsUpsellStateStore();
  v6 = swift_allocObject();
  v7 = sub_219BE5434();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_218746778();
  swift_allocObject();
  result = sub_219BE2374();
  *(v6 + 16) = result;
  a1[3] = v5;
  a1[4] = &off_282A70FE8;
  *a1 = v6;
  return result;
}

void sub_218746778()
{
  if (!qword_280EE75C8)
  {
    type metadata accessor for SportsUpsellState();
    sub_2186D5C5C(&qword_280ED4F90, type metadata accessor for SportsUpsellState);
    sub_2186D5C5C(qword_280ED4F98, type metadata accessor for SportsUpsellState);
    v0 = sub_219BE2384();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE75C8);
    }
  }
}

uint64_t type metadata accessor for SportsUpsellState()
{
  result = qword_280ED4F78;
  if (!qword_280ED4F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218746890()
{
  result = sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218746930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BDBD34();
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_218746A10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  if (v9)
  {
    v7 = type metadata accessor for PaidBundleViaOfferFeatureAvailability();
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v9;
    v8[5] = v10;
    a2[3] = v7;
    result = sub_21871C950(&unk_280E991F8, type metadata accessor for PaidBundleViaOfferFeatureAvailability);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218746BE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_218746C70(uint64_t a1, uint64_t a2)
{
  v7[3] = type metadata accessor for UpsellManager();
  v7[4] = &off_282A95970;
  v7[0] = a1;
  swift_getObjectType();

  sub_219BEAF14();
  sub_218718690(v7, v6);
  v4 = swift_allocObject();
  sub_2186CB1F0(v6, v4 + 16);
  *(v4 + 56) = a2;
  sub_219BF3344();
  sub_218740ED4();

  sub_219BE7004();

  __swift_destroy_boxed_opaque_existential_1(v6);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_218746D98()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218746DD8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DiscoverChannelTopicCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    if (qword_280EE37F0 != -1)
    {
      swift_once();
    }

    sub_2186F1618(qword_280EA0AE8, type metadata accessor for DiscoverChannelTopicCommandHandler);
    sub_219BE7054();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218746F14()
{
  sub_218724DE0(0, &unk_280EE3970, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218724DE0(0, &qword_280EE3930, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F62460 = result;
  return result;
}

uint64_t sub_21874704C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageChannelNotificationsCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAD64();
    sub_2186D6710(0, &qword_280E8E680);
    sub_2186F1618(&qword_280E96120, type metadata accessor for ManageChannelNotificationsCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21874716C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC1D00);
  result = sub_219BE1E34();
  if (!v17)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA87C0);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (v10)
  {
    type metadata accessor for ManageChannelNotificationsCommandHandler();
    v8 = swift_allocObject();
    v8[4] = v17;
    v8[5] = v3;
    v8[2] = v4;
    v8[3] = v5;
    v8[6] = v6;
    sub_2186CB1F0(&v15, (v8 + 7));
    sub_2186CB1F0(&v13, (v8 + 12));
    v8[17] = v7;
    sub_2186CB1F0(&v11, (v8 + 18));
    sub_2186CB1F0(&v9, (v8 + 23));
    return v8;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2187474A0()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C709C(0, qword_280E94060);
  sub_219BE2914();

  type metadata accessor for FollowingBrowseButtonViewRenderer();
  sub_219BE2904();

  type metadata accessor for FollowingSettingsButtonViewRenderer();
  sub_219BE2904();

  type metadata accessor for FollowingBrowseButtonViewLayoutAttributesFactory();
  sub_219BE2904();

  type metadata accessor for FollowingSettingsButtonViewLayoutAttributesFactory();
  sub_219BE2904();

  type metadata accessor for FollowingEngagementViewLayoutAttributesFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280ECEEC8);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF08], v0);
  sub_219BE19F4();

  (*(v1 + 8))(v3, v0);
  sub_2186C709C(0, qword_280EB09E0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EA94D8);
  sub_219BE2914();

  type metadata accessor for FollowingBrowseButtonViewStyler();
  sub_219BE2904();

  type metadata accessor for FollowingSettingsButtonViewStyler();
  sub_219BE2904();

  type metadata accessor for FollowingModifierFactory();
  sub_219BE2904();

  sub_219BE6DB4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_21874B344();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();

  sub_21874B438();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, qword_280E96400);
  sub_219BE2914();
}

uint64_t type metadata accessor for FollowingViewController()
{
  result = qword_280EC4F88;
  if (!qword_280EC4F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218747AE8()
{
  sub_218747BDC(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_218747C10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218747C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218747CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218747D2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218747D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218747DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218747E58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218747EAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218747F00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218747F64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218747FB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874801C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218748080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187480E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218748148(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21874819C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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